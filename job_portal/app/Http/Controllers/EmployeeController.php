<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Employee;
class EmployeeController extends Controller
{
    public function create(Request $request){
        $employee= Employee::create([
            'employee_first_name' => $request->first_name,
            'employee_last_name' => $request->last_name,
            'employee_email'=> $request->email,
            'employee_password'=>$request->password,
            'image_path'=> is_null($request->image)? '': $request->image,
            'resume_path'=> is_null($request->resume)? '': $request->resume,
            'employee_skills'=>is_null($request->skill)? '': $request->skill 
        ]);
        $employee->save();
        return response()->json($employee);

    }
    public function update(Request $request, $id){
        $image = $request->file('image');
        $image_new = rand() . '.' . $image->getClientOriginalExtension();
        $image->move(public_path('images'), $image_new);
        //resume upload
        $resume = $request->file('resume');
        $resume_new = rand() . '.' . $resume->getClientOriginalExtension();
        $resume->move(public_path('resumes'), $resume_new);

  
        $emp= Employee::where('employee_id',$id)->first();

        $emp->image_path = $image_new;
        $emp->resume_path= $resume_new;
        $emp->employee_skills= $request->skill;
        $emp->Save();
        return response()->json($emp);

    }
    public function get($id){
        $emp= Employee::where('employee_id',$id)->first();
        return response()->json($emp);

    }
}
