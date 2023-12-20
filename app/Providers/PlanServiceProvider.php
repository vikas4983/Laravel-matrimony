<?php

namespace App\Providers;

use App\Models\Payment;
use Faker\Provider\ar_EG\Payment as Ar_EGPayment;
use Illuminate\Support\Facades\View;
use Illuminate\Support\ServiceProvider;

class PlanServiceProvider extends ServiceProvider
{
    /**
     * Register services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap services.
     */
    public function boot(): void
    {
        View::composer('layouts.auth', function ($view) {
            // Retrieve and pass the active plan to admin views
            $activePlan =
            Payment::latest('created_at', 'desc')->first();
            $view->with('activePlan', $activePlan);
        });
    }
}
