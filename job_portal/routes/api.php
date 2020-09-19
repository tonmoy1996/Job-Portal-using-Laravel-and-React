<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\http\Controllers\CompanyController;
use App\http\Controllers\Job_registerController;
use App\http\Controllers\EmployeeController;
use App\http\Controllers\ApplyController;
use App\http\Controllers\LoginController;
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

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
Route::post('company_create', [CompanyController::class,'create']);
Route::get('company_all', [CompanyController::class,'index']);
Route::get('com_profile/{id}', [CompanyController::class,'profile']);
Route::get('posted/{id}',[CompanyController::class,'posted_job']);
//job register
Route::post('job_register',[Job_registerController::class,'create']);
Route::get('all_jobs',[Job_registerController::class,'getAll']);
//employee

Route::post('emp_create',[EmployeeController::class,'create']);
Route::post('emp_update/{id}',[EmployeeController::class,'update']);
Route::get('get_emp/{id}',[EmployeeController::class,'get']);
//applied jobe
Route::post('apply_job',[ApplyController::class,'create']);



Route::get('can/{id}',[CompanyController::class,'apply_candidate']);


//login

Route::post('login',[LoginController::class ,'verify']);