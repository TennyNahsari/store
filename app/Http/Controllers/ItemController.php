<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Item;

class ItemController extends Controller
{
   /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $items = Item::all();
        //$items = Item::where('name','Keyboard')->get();

        //$items = DB::select('select * from items');

        return view('item')->with('items', $items);

    }

    public function tambah(Request $request)
    {
        $item = new Item;
        $item->name = $request->input('nama');
        $item->harga = $request->input('harga');
        $item->point = $request->input('point');
        $item->save();

        return response()->json(['success' => 'Data Added successfully.']);

    }

    public function edit(Request $request)
    {
        $id = $request->input('iditem');

        $item = Item::find($id);
        $item->name = $request->input('namab');
        $item->harga = $request->input('hargab');
        $item->point = $request->input('pointb');
        $item->save();

        return response()->json(['success' => 'Data Edited successfully.']);

    }

    
    public function hapus(Request $request)
    {
        $id = $request->input('iditem');

        $item = Item::find($id);
        $item->delete();

        return response()->json(['success' => 'Data Deleted successfully.']);

    }



}
