<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\customer;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth',['except' => 'hadiah']);
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $customers = customer::all();
        return view('home')->with('customers', $customers);
    }

    public function tambah(Request $request)
    {
        $customers = new customer;
        $customers->name = $request->input('nama');
        $customers->email = $request->input('email');
        $customers->password = $request->input('pwd');
        $customers->alamat = $request->input('alamat');
        $customers->point = $request->input('point');
        $customers->save();

        //$date = date('YmdHi');

        return response()->json(['success' => 'Data Added successfully.']);

    }

    public function edit(Request $request)
    {
        $id = $request->input('idmember');

        $customers = customer::find($id);
        $customers->name = $request->input('nama');
        $customers->email = $request->input('email');
        $customers->password = $request->input('pwd');
        $customers->alamat = $request->input('alamat');
        $customers->point = $request->input('point');;
        $customers->save();

        return response()->json(['success' => 'Data Edited successfully.']);

    }

    
    public function hapus(Request $request)
    {
        $id = $request->input('idmember');

        $customers = customer::find($id);
        $customers->delete();

        return response()->json(['success' => 'Data Deleted successfully.']);

    }

}
