<?php

use Illuminate\Http\Request;
// use Illuminate\Routing\Route;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });
// Route::post('/register','api\AuthController@register');
// Route::post('/login','api\AuthController@login');
// $router->group(['middleware' => 'auth:api'], function () use ($router) {
//     Route::get('/logout', 'api\AuthController@logout');
// });

    Route::prefix('user')->namespace('api')->group(function () {
        Route::post('/login','AuthController@login');
        Route::post('/register','AuthController@register');
        Route::post('/forgot/password','ForgotPasswordController@sendResetLinkEmail'); //form-data: email
        Route::post('/password/reset','ResetPasswordController@reset'); //form-data: email token password password_confirmation
        Route::get('/email/resend','VerificationController@resend')->name('verification.resend');
        Route::get('/email/verify/{id}/{hash}','VerificationController@verify')->name('verification.verify');
    });
    Route::prefix('user')->middleware(['auth:api'])->namespace('api')->group(function () {
        Route::get('/me', 'AuthController@me');
        Route::get('/logout', 'AuthController@logout');

        Route::apiResource('/tasks', 'TaskController');
    });

    