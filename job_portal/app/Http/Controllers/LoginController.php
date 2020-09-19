<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Company;
use App\Models\Employee;

class LoginController extends Controller
{
    public function verify(Request $request){

        if($request->type == "company"){

            $company= Company::where('company_email', $request->email)
                    ->where('company_password',$request->password)
                    ->first();
            if($company){
                return response()->json($company);
            }else{
                return response("Invalid username or password",400);
            }
          

        }else{
            $emp= Employee::where('employee_email', $request->email)
            ->where('employee_password',$request->password)
            ->first();
    if($emp){
        return response()->json($emp);
    }else{
        return response("Invalid username or password",400);
    }

        }
    }
}
