<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Company;
use App\Models\Job_register;
use Illuminate\Support\Facades\DB;
use App\Models\Employee;
use App\Models\Applied_job;


class CompanyController extends Controller
{
    public function create(Request $request){
        $company= Company::create([
            'company_first_name' => $request->first_name,
            'company_last_name' => $request->last_name,
            'company_business_name'=> $request->business_name,
            'company_email'=> $request->email,
            'company_password'=>$request->password
        ]);
        $company->save();
        return response()->json($company);

    }
    public function index(){
        $companies= Company::all();
        return response()->json($companies);
    }
    public function profile($id){
        $company= Company::where('company_id', $id)->first();
        return response()->json($company);
    }
    public function posted_job($id){    
        $posted= Job_register::where('company_id',$id)->get();

       
        return response()->json($posted);
    }

    public function apply_candidate($id){
      $names= DB::table('employees')->select('employees.employee_first_name','employees.employee_last_name','employees.employee_email','employees.resume_path')->join('applied_jobs','applied_jobs.employee_id','=','employees.employee_id')->where(['applied_jobs.register_id'=> $id])->get();
      return response()->json($names);
    }
}
