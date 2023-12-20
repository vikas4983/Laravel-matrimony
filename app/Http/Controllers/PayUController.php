<?php

namespace App\Http\Controllers;

use App\Models\Plan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class PayUController extends Controller
{
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
