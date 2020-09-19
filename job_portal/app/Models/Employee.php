<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Employee extends Model
{
    use HasFactory;
    protected  $table= "employees";
    protected $primaryKey = 'employee_id';

    protected $fillable=['employee_first_name','employee_last_name','employee_email','employee_password','image_path','resume_path','employee_skills'];

    public function applied_jobs()
    {
        return $this->hasMany('App\Models\Applied_job','employee_id');
    }

}
