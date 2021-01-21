<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CompanyCode extends Model
{
    protected $fillable = ['name', 'code_1', 'code_2', 'code_3', 'code_4', 'code_5', 'code_6', 'code_7', 'created_at', 'updated_at', 'deleted_at'];
}
