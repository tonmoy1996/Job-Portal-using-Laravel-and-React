<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Applied_job extends Model
{
    use HasFactory;
    protected $table="applied_jobs";
    protected $fillable=['employee_id','dates','register_id'];

  
    public function employee()
    {
        return $this->belongsTo('App\Models\Employee','employee_id');
    }
    public function job_register()
    {
        return $this->belongsTo('App\Models\Job_register','register_id');
    }
}

