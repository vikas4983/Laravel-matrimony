<?php

namespace App\Http\Controllers;

use App\Models\Payment;
use App\Models\PayUMoney;
use App\Models\Plan;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class PayUMoneyController extends Controller
{
    public function payUMoneyView(Request $request)
    {
        // return $request->all();
        $plan_id = $request->plan_id;
        $plan_name = $request->plan_name;
        $admin_id = $request->admin_id;
        $duration = $request->duration;
        $offer_price = $request->offer_price;
        $offer = $request->offer;
        $saving = $request->saving;
        $allow_contact = $request->allow_contact;
        $message = $request->message;
        $chat = $request->chat;
        $video_call = $request->video_call;


        $MERCHANT_KEY = "fB7m8s"; // TEST MERCHANT KEY
        $SALT = "eRis5Chv"; // TEST SALT

        $PAYU_BASE_URL = "https://test.payu.in";

        //$PAYU_BASE_URL = "https://secure.payu.in"; // PRODUCATION
        $name = 'Haresh Chauhan';
        $successURL = route(
            'pay.u.response',
            [
                'plan_id' => $plan_id,
                'plan_name' => $plan_name,
                'admin_id' => $admin_id,
                'duration' => $duration,
                'offer_price' => $offer_price,
                'offer' => $offer,
                'saving' => $saving,
                'allow_contact' => $allow_contact,
                'message' => $message,
                'chat' => $chat,
                'video_call' => $video_call,
            ]
        );
        $failURL = route('pay.u.cancel');
        $email = 'example@gmail.com';
        $amount = $offer_price;

        $action = '';
        $txnid = substr(hash('sha256', mt_rand() . microtime()), 0, 20);
        $posted = array();
        $posted = array(
            'key' => $MERCHANT_KEY,
            'txnid' => $txnid,
            'amount' => $amount,
            'firstname' => $name,
            'email' => $email,
            'productinfo' => 'Webappfix',
            'surl' => $successURL,
            'furl' => $failURL,
            'service_provider' => null,
        );

        if (empty($posted['txnid'])) {
            $txnid = substr(hash('sha256', mt_rand() . microtime()), 0, 20);
        } else {
            $txnid = $posted['txnid'];
        }

        $hash = '';
        $hashSequence = "key|txnid|amount|productinfo|firstname|email|udf1|udf2|udf3|udf4|udf5|udf6|udf7|udf8|udf9|udf10";

        if (empty($posted['hash']) && sizeof($posted) > 0) {
            $hashVarsSeq = explode('|', $hashSequence);
            $hash_string = '';
            foreach ($hashVarsSeq as $hash_var) {
                $hash_string .= isset($posted[$hash_var]) ? $posted[$hash_var] : '';
                $hash_string .= '|';
            }
            $hash_string .= $SALT;

            $hash = strtolower(hash('sha512', $hash_string));
            $action = $PAYU_BASE_URL . '/_payment';
        } elseif (!empty($posted['hash'])) {
            $hash = $posted['hash'];
            $action = $PAYU_BASE_URL . '/_payment';
        }

        return view('payumoney/pay-u', compact('action', 'hash', 'MERCHANT_KEY', 'txnid', 'successURL', 'failURL', 'name', 'email', 'amount'));
    }

    public function payUResponse(Request $request)
    {
        try {
            // Extracting data from the request
            $plan_id = $request->query('plan_id');
            $plan_name = $request->query('plan_name');
            $admin_id = $request->query('admin_id');
            $duration = $request->query('duration');
            $amount = $request->query('offer_price');
            $offer = $request->query('offer');
            $saving = $request->query('saving');
            $allow_contact = $request->query('allow_contact');
            $message = $request->query('message');
            $chat = $request->query('chat');
            $video_call = $request->query('video_call');

            // Response variables
            $status = $request->status;
            $email = $request->email;
            $phone = $request->phone;
            $mode = $request->mode;
            $txnid = $request->txnid;
            $total = $request->net_amount_debit;
            $productinfo = $request->productinfo;
            $hash = $request->hash;
            $payuMoneyId = $request->payuMoneyId;

            if ($status == 'success') {

                // For expiry date
                $plan = Plan::findOrFail($plan_id);
                $currentDate = Carbon::now();
                $expiryDate = $currentDate->addDays($plan->duration);
                $formattedDate = $expiryDate->format('d-m-Y H:i:s');

                // Get the latest payment
                $previouse_plan = Payment::latest('created_at')->first();

                if ($previouse_plan) {
                    $contact = $previouse_plan->allow_contact;
                } else {
                    $contact = 0;
                }

                // New payment Create
                DB::beginTransaction();

                $pp = Payment::create([
                    'admin_id' => $admin_id,
                    'plan_id' => $plan_id,
                    'total' => floor($total),
                    'amount' => floor($amount),
                    'offer' => floor($offer),
                    'saving' => floor($saving),
                    'plan_name' => $plan_name,
                    'duration' => $duration,
                    'allow_contact' => $contact + $allow_contact,
                    'message' => $message,
                    'chat' => $chat,
                    'video_call' => $video_call,
                    'expiry_date' => $formattedDate,
                ]);

                $py = PayUMoney::create([
                    'admin_id' => $admin_id,
                    'plan_id' => $plan_id,
                    'email' => $email,
                    'phone' => $phone,
                    'total' => floor($total),
                    'amount' => floor($amount),
                    'status' => $status,
                    'mode' => $mode,
                    'txnid' => $txnid,
                    'hash' => $hash,
                    'productinfo' => $productinfo,
                    'payuMoneyId' => $payuMoneyId,
                ]);

                DB::commit();

                $msg = "You have successfully upgraded a plan!";
                //$url = route('plann');
                //return redirect()->route("plann")->with('success', $msg);
                return redirect('error')->with('success', $msg);
            } else {
                // For expiry date
                $plan = Plan::findOrFail($plan_id);
                $currentDate = Carbon::now();
                $expiryDate = $currentDate->addDays($plan->duration);
                $formattedDate = $expiryDate->format('d-m-Y H:i:s');

                // Taken plan First Time
                DB::beginTransaction();

                Payment::create([
                    'admin_id' => $admin_id,
                    'plan_id' => $plan_id,
                    'total' => floor($total),
                    'amount' => floor($amount),
                    'offer' => floor($offer),
                    'saving' => floor($saving),
                    'plan_name' => $plan_name,
                    'duration' => $duration,
                    'allow_contact' => $allow_contact,
                    'message' => $message,
                    'chat' => $chat,
                    'video_call' => $video_call,
                    'expiry_date' => $formattedDate,
                ]);

                PayUMoney::create([
                    'admin_id' => $admin_id,
                    'plan_id' => $plan_id,
                    'email' => $email,
                    'phone' => $phone,
                    'total' => floor($total),
                    'amount' => floor($amount),
                    'status' => $status,
                    'mode' => $mode,
                    'txnid' => $txnid,
                    'hash' => $hash,
                    'productinfo' => $productinfo,
                    'payuMoneyId' => $payuMoneyId,
                ]);

                DB::commit();

                $msg = "You have successfully bought a plan!";
                // $url = route('admin.plans.plan');
                // return redirect()->route('admin.plans.plan')->with('success', $msg);
                return redirect()->back()->with('success', $msg);
            }
        } catch (\Exception $ex) {
            DB::rollBack();
            // dd($ex->getMessage());
            $msg = "An error occurred while processing your request.";
            // $url = route('admin.plans.plan');
            abort(404);
        }
    }
    public function payUCancel(Request $request)
    {
        dd($request->all());
    }
}
