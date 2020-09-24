<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Applied_job;
use App\Models\Employee;
use App\Models\Job_Register;

class ApplyController extends Controller
{
    public function create(Request $request){
        
        $job= Applied_job::create([
            'employee_id' => $request->employee_id,
            'register_id' => $request->register_id,
            'dates' => $request->date,
        ]);
        $job->save();
        return response()->json($job);
    }

    public function getEmployee(){
        // $data= Applied_job::find(22)->employee()->first();
        // return response()->json($data);

        $data= Job_Register::find(7)->Applied_jobs()->get();
        $newdata=array();
        foreach($data as $item){
           $newdata[] = Applied_job::find($item ->id)->employee()->first();
        
        }
        return response()->json($newdata);
        // dd($newdata);
        // return view('emp');
    }
}
