<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Transaction extends Model
{
    protected $table = 'transactions';

    public $primarykey = 'idtransaction';
     
    protected $fillable = [
        'idtransaction', 'customer', 'totalharga' ,'status'
    ];
    
}
