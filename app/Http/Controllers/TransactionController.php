<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Transaction;
use App\basket;
use App\Item;

class TransactionController extends Controller
{
    public function index()
    {
        $transactions = Transaction::all();
        $baskets = basket::all();

        return view('transaction')->with('transactions', $transactions)->with('baskets', $baskets);
    }

    public function tambah(Request $request)
    {
        $date = date('YmdHi');

        $transactions = new Transaction;
        $transactions->idtransaction = (String) $date ;
        $transactions->customer = $request->input('idmember');
        $transactions->totalharga = 0;
        $transactions->status = "Belum Lunas";
      
        $transactions->save();

        return response()->json(['success' => 'Data Added successfully.']);

    }

    public function tambahitem(Request $request)
    {
        //$id = $request->input('iditem');
        $item = Item::find(1);

        $basket = new basket;
        $basket->transaksi = $request->input('idtransaksi');
        $basket->customer = $request->input('idmember');
        $basket->item = $request->input('iditem');
        $basket->jumlah = $request->input('jumlah');
        $basket->totalharga = $item->harga;
      
        $basket->save();

        return response()->json(['success' => 'Data Added successfully.']);
    }


}
