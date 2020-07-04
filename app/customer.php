<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class customer extends Model
{

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */

    protected $table = 'customers';

    public $primarykey = 'id';
     
    protected $fillable = [
        'name', 'email', 'password', 'alamat','point'
    ];
}
