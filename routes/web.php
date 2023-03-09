<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CustomAuthController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\SearchHistoryController;

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


Route::get('dashboard', [CustomAuthController::class, 'dashboard']);
Route::get('product_searching', [ProductController::class, 'index'])->name('product_searching');
Route::get('login', [CustomAuthController::class, 'index'])->name('login');
Route::post('custom-login', [CustomAuthController::class, 'customLogin'])->name('login.custom');
Route::get('registration', [CustomAuthController::class, 'registration'])->name('register-user');
Route::post('custom-registration', [CustomAuthController::class, 'customRegistration'])->name('register.custom');
Route::get('signout', [CustomAuthController::class, 'signOut'])->name('signout');


Route::post('ajaxdata_postdata', [SearchHistoryController::class, 'storesearchdata'])->name('ajaxdata_postdata');
Route::get('searchhistory', [SearchHistoryController::class, 'searchhistory'])->name('searchhistory');
Route::get('getDataByKey/{id}', [SearchHistoryController::class, 'getDataByKey'])->name('getDataByKey');
Route::get('fetchDataByUserId/{id}', [SearchHistoryController::class, 'fetchDataByUserId'])->name('fetchDataByUserId');

Route::get('dataCount', [SearchHistoryController::class, 'dataCount'])->name('dataCount');
Route::post('getDataCount', [SearchHistoryController::class, 'getDataCount'])->name('getDataCount');
