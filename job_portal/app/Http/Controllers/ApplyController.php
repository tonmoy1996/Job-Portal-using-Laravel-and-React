<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Applied_job;

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
}
