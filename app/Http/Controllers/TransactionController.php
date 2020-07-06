<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Transaction;
use App\basket;
use App\Item;
use App\customer;

class TransactionController extends Controller
{
    public function index()
    {
        $transactions = Transaction::where('status','Belum Lunas')->get();
        $baskets = basket::all();
        $transactionslunas = Transaction::where('status','Lunas')->get();

        return view('transaction')->with('transactions', $transactions)->with('baskets', $baskets)->with('transactionslunas', $transactionslunas);
    }

    public function lunas()
    {
        $transactions = Transaction::where('status','Lunas')->get();

        return view('lunas')->with('transactions', $transactions);
    }


    public function tambah(Request $request)
    {
        $date = date('YmdHi');

        $transactions = new Transaction;
        $transactions->id = (String) $date ;
        $transactions->customer = $request->input('idmember');
        $transactions->totalharga = 0;
        $transactions->status = "Belum Lunas";
      
        $transactions->save();

        return response()->json(['success' => 'Data Added successfully.']);

    }

    public function tambahitem(Request $request)
    {
        $id = $request->input('iditem');
        $item = Item::find($id);
        $idtransaksi = $request->input('idtransaksi');

        $basket = new basket;
        $basket->transaksi = $request->input('idtransaksi');
        $basket->item = $request->input('iditem');
        $basket->jumlah = $request->input('jumlah');
        $basket->totalharga = ($item->harga) * ($request->input('jumlah'));
      
        $basket->save();

        $baskets = basket::where('transaksi', $idtransaksi)->get();

        //return $this->index();
        return view('itemtransaction')->with('idtransaksi', $idtransaksi)->with('baskets',$baskets);

    }

    public function tambahdataitem($idtransaksi)
    {
        $baskets = basket::where('transaksi', $idtransaksi)->get();

        return view('itemtransaction')->with('idtransaksi', $idtransaksi)->with('baskets',$baskets);

    }

    public function hapusdataitem($idbasket)
    {
        $basket = basket::find($idbasket);
        $idtransaksi = $basket->transaksi;
        $basket->delete();

        $baskets = basket::where('transaksi', $idtransaksi)->get();

        return view('itemtransaction')->with('idtransaksi', $idtransaksi)->with('baskets',$baskets);

    }

    public function finishtransaksi($idtransaksi)
    {
        $baskets = basket::where('transaksi',$idtransaksi)->get();
        $totalharga = 0;

        foreach ($baskets as $basket) {
            $totalharga = $totalharga + ($basket->totalharga);
        }

        $transaction = Transaction::find($idtransaksi);
    
        $transaction->totalharga = $totalharga;
        $transaction->status = "Lunas";

        $idmember = $transaction->customer;

        $transaction->save();

        $customer = customer::find($idmember);
        $customer->point = $customer->point + 5;
        $customer->save();

        return $this->lunas();

    }


}
