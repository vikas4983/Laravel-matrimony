<?php

namespace App\Providers;

use App\Models\Admin;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\View;
use Illuminate\Support\ServiceProvider;
use Illuminate\Pagination\Paginator;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        Paginator::useBootstrap(); // Use Bootstrap for Laravel pagination
        View::composer('layouts.auth', function ($view) {
            if (Auth::guard('admin')->check()) {
                // $adminId = Auth::guard('admin')->user()->id;
                // $adminName = Auth::guard('admin')->user()->id;
                // $admin = Admin::find($adminId);
                // $view->with('adminId', $adminId);
                // $view->with('adminName', $adminName);
                $view->with('admin', Auth::guard('admin')->user());
                
            }
        });
        
    }
}
