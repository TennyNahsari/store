<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Transaction extends Model
{
    protected $table = 'transactions';

    public $primarykey = 'id';
     
    protected $fillable = [
        'id', 'customer', 'totalharga' ,'status'
    ];
    
}
