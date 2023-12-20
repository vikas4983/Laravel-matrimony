<?php

namespace App\Http\Controllers;

use App\Models\Admin;
use App\Models\Caste;
use App\Models\City;
use App\Models\Country;
use App\Models\Education;
use App\Models\Employee;
use App\Models\Income;
use App\Models\Occupation;
use App\Models\Plan;
use App\Models\Religion;
use App\Models\State;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class DashboardController extends Controller
{
    public function dashboard()

    {
        // Check login
        //     $adminAuthenticated = Auth::guard('admin')->check();
        //     $sessionData = session()->all();
        //    dd($adminAuthenticated, $sessionData);
        $admins =  Admin::count();
        $countries =  Country::count();
        $states =  State::count();
        $cities =  City::count();
        $religions =  Religion::count();
        $castes =  Caste::count();
        $educations =  Education::count();
        $employees =  Employee::count();
        $occupations =  Occupation::count();
        $incomes =  Income::count();
        $plans =  Plan::count();
        return view('admin.admin_deshboard', compact('countries', 'states', 'cities', 'religions', 'castes', 'educations', 'employees', 'occupations', 'incomes', 'admins', 'plans'));
    }
}
