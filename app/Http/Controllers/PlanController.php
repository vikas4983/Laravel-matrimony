<?php

namespace App\Http\Controllers;

use App\Models\Plan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class PlanController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $plans = Plan::orderByDesc('created_at')->paginate(10);
        $count = ($plans->currentPage() - 1) * $plans->perPage();
        return view('admin.plans.index', compact('plans', 'count'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.plans.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //return $request->all();
        $price = $request->price;
        $offer = $request->offer;
        $percentage = (float)$price * (float)$offer / 100;
        $offer_price = (float)$price - (float)$percentage;
        $per_month = (float)$offer_price / 30;
        $saving = (float)$price - (float)$offer_price;


        Plan::create([
            'name' => $request->name,
            'duration' => $request->duration,
            'price' => $request->price,
            'offer' => $request->offer,
            'offer_price' => floor($offer_price),
            'per_month' => floor($per_month),
            'saving' => floor($saving),
            'allow_contact' => $request->allow_contact,
            'chat' => $request->chat,
            'video_call' => $request->video_call,
            'message' => $request->message,
            'status' => $request->status

        ]);

        $msg = "Plan  Added Successfully!";
        return redirect('admin/plans')->with('success', $msg);
    }

    /**
     * Display the specified resource.
     */
    public function show()
    {
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Plan $plan)
    {
        return view('admin.plans.edit', compact('plan'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Plan $plan)
    {
        //return $request->all();
        $price = $request->price;
        $offer = $request->offer;
        $percentage = (float)$price * (float)$offer / 100;
        $offer_price = (float)$price - (float)$percentage;
        $per_month = (float)$offer_price / 30;
        $saving = (float)$price - (float)$offer_price;

        $plan->update([
            'name' => $request->name,
            'duration' => $request->duration,
            'price' => $request->price,
            'offer' => floor($request->offer),
            'offer_price' => floor($offer_price),
            'per_month' => floor($per_month),
            'saving' => floor($saving),
            'allow_contact' => $request->allow_contact,
            'chat' => $request->chat,
            'video_call' => $request->video_call,
            'message' => $request->message,
            'status' => $request->status
        ]);
        $msg = "Plan Updated Successfully!";

        return redirect('admin/plans')->with('info', $msg);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Plan $plan)
    {
        $plan->destroy($plan->id);
        $msg = "Plan Deleted Successfully";

        return redirect('admin/plans')->with('error', $msg);
    }
    public function plan()
    {
        // dd($_REQUEST);
        $plans = Plan::all();
        // check admin is login

        if (Auth::guard('admin')->check()) {
            $admin = Auth::guard('admin')->id();
            // dd("AP 01", $admin);
        } elseif (!Auth::guard('admin')->check()) {
            $msg = " Dear User Login First";
            return redirect()->back()->with('error', $msg);
        }

        return view('admin.plans.plan', compact('plans', 'admin'));
    }
}
