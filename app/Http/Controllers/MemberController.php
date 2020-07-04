<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\customer;
use App\Item;

class MemberController extends Controller
{
    public function index($id,$password)
    {
        $user = customer::find($id);
        $items = Item::all();

        if(($user->password) == ($password)){

            return view('hadiah')->with('user',$user)->with('items',$items);

        }
     

    }
}
