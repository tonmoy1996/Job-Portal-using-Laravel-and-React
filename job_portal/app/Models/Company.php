<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Company extends Model
{
    use HasFactory;
    public $primaryKey = 'company_id';
    protected $table="companies";
    protected $fillable=['company_first_name','company_last_name','company_business_name','company_email','company_password'];

    public function job_registers()
    {
        return $this->hasMany('App\Models\Job_register','company_id');
    }
    
}
