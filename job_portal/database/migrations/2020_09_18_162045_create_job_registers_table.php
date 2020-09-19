<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateJobRegistersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('job_registers', function (Blueprint $table) {
            $table->increments('register_id');
            $table->string('job_title',200);
            $table->string('job_description',200);
            $table->double('salary');
            $table->string('location',100);
            $table->string('country',50);
            $table->integer('company_id')->unsigned();
            $table->foreign('company_id')->references('company_id')->on('companies')
            ->onDelete('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('job_registers');
    }
}
