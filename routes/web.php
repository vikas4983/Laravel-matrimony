<?php

use App\Http\Controllers\admin\countries\CityController;
use App\Http\Controllers\admin\countries\CountryController;
use App\Http\Controllers\admin\countries\StateController;
use App\Http\Controllers\admin\educations\EducationController;
use App\Http\Controllers\admin\educations\OccupationController;
use App\Http\Controllers\admin\employees\EmployeeController;
use App\Http\Controllers\admin\incomes\IncomeController;
use App\Http\Controllers\admin\profiles\MaritalStatusController;
use App\Http\Controllers\admin\religions\CasteController;
use App\Http\Controllers\admin\religions\ReligionController;
use App\Http\Controllers\admin_auth\AdminController;
use App\Http\Controllers\Auth\Admin\AdminAuthController;
use App\Http\Controllers\Auth\Admin\AdminLoginController;
use App\Http\Controllers\Auth\Admin\LogoutController;
use App\Http\Controllers\Auth\LogoutController as AuthLogoutController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\ErrorController;
use App\Http\Controllers\FeatureController;
use App\Http\Controllers\PaymentController;
use App\Http\Controllers\PayUController;
use App\Http\Controllers\PayUMoneyController;
use App\Http\Controllers\PlanController;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/


Route::get('/', function () {
    return view('welcome');
});
Auth::routes();

// Error 
Route::get('error', [ErrorController::class,'error']);
// Admin  Auth
Route::get('admin_create', [AdminController::class, 'create']);
Route::get('admin_login', [AdminController::class, 'login'])->middleware('admin.guest');
Route::post('login_validate', [AdminController::class, 'login_validate']);
Route::post('admin_logout', [AdminController::class, 'admin_logout']);
Route::resource('admin_auth', AdminController::class);
Route::get('admin_delete/{id}', [AdminController::class, 'admin_delete']);
// plan
Route::get('admin/plans/plan', [PayUController::class, 'plan'])->name('plann');
Route::get('admin_image/{id}', [AdminController::class, 'admin_image'])->middleware('admin.auth');
Route::get('admin_image_delete/{id}', [AdminController::class, 'admin_image_delete'])->middleware('admin.auth');
Route::get('admin/admin_deshboard', [DashboardController::class, 'dashboard'])->middleware(['admin.auth', 'preventBackHistory']);
// payment
Route::get('pay-u-money-view', [PayUMoneyController::class, 'payUMoneyView']);
Route::post('pay-u-response', [PayUMoneyController::class, 'payUResponse'])->name('pay.u.response');
Route::post('pay-u-cancel', [PayUMoneyController::class, 'payUCancel'])->name('pay.u.cancel');

// Admin
Route::prefix('admin')->middleware('admin.auth')->group(function () {
    // Admin 
    Route::post('change_password', [AdminController::class, 'change_password']);
    // Crud
    Route::resource('countries', CountryController::class);
    Route::resource('states', StateController::class);
    Route::resource('cities', CityController::class);
    Route::resource('religions', ReligionController::class);
    Route::resource('castes', CasteController::class);
    Route::resource('employees', EmployeeController::class);
    Route::resource('educations', EducationController::class);
    Route::resource('occupations', OccupationController::class);
    Route::resource('incomes', IncomeController::class);
    Route::resource('plans', PlanController::class);
});







// Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

// foreach($cities as $city)
//     City::insert([
//         'city' => $city,
//         'state_id' =>7
//     ]);
// foreach($educations as $education)

//     DB::table('educations')->insert([
//         'education' => $education,
//     ]);
// Route::middleware([
//     'auth:sanctum',
//     config('jetstream.auth_session'),
//     'verified',
// ])->group(function () {
// Route::get('/dashboard', function () {
//     return view('dashboard');
// })->name('dashboard');
// });


// payment

//Route::resource('payments', PaymentController::class)->middleware('admin.auth');
//Route::post('payment/{token}', [PaymentController::class, 'payment'])->middleware('admin.auth');


// Route::get('admin/user_deshboard', [DashboardController::class, 'dashboard'])->middleware(['admin.auth', 'preventBackHistory']);
// Apply Middleware