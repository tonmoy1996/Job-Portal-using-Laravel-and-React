<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Job_register extends Model
{
    use HasFactory;

    protected $table="job_registers";
    public $primaryKey = 'register_id';

    protected $fillable=['job_title','job_description','salary','location','country','company_id'];
    public function company()
    {
        return $this->belongsTo('App\Models\Company','company_id');
    }

    
    public function applied_jobs()
    {
        return $this->hasMany('App\Models\Applied_job','register_id');
    }
}
