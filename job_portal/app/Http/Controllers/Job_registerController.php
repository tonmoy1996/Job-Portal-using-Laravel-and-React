<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Job_register;

class Job_registerController extends Controller
{
    public function create(Request $request){
        $register= Job_register::create([
            'job_title' => $request->title,
            'job_description' => $request->des,
            'salary'=> $request->salary,
            'location'=> $request->location,
            'country'=> $request->country,
            'company_id'=> $request->company_id
        ]);
        $register->save();
        return response()->json($register);

    }
    public function getAll(){
        $jobs= Job_register::all();
        return response()->json($jobs);
    }
}
