<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class basket extends Model
{
      /**
     * The attributes that are mass assignable.
     *
     * @var array
     */

    protected $table = 'baskets';

    public $primarykey = 'id';
     
    protected $fillable = [
        'transaksi', 'customer', 'item', 'jumlah', 'totalharga'
    ];
}
