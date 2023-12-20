<?php

use App\Http\Controllers\api\UserController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });
Route::get('/get', function () {
    return "hello world";
});
Route::post('/post', function () {
    return response("hello post");
});
Route::post('/postjson', function () {
    return response()->json("hello post");
});
Route::delete('/delete/{id}', function ($id) {
    return response()->json($id, 200);
});
Route::put('/put/{id}', function ($id) {
    return response($id . " " . "Post Updated");
});
Route::put('/putjson/{id}', function ($id) {
    return response()->json($id . " " . "Post Updated");
});
Route::get('test', function () {
    return success("working");
});
Route::post('user/store', [UserController::class, 'store']);
Route::get('user/get', [UserController::class, 'index']);
Route::delete('user/delete/{id}', [UserController::class, 'destroy']);
Route::put('user/update/{id}', [UserController::class, 'update']);
Route::patch('user/updatepassword/{id}', [UserController::class, 'updatepassword']);
