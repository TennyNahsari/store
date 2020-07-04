<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;

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
        $users = User::all();
        return view('home')->with('users', $users);
    }

    public function tambah(Request $request)
    {
        $user = new User;
        $user->name = $request->input('nama');
        $user->email = $request->input('email');
        $user->password = $request->input('pwd');
        $user->alamat = $request->input('alamat');
        $user->point = $request->input('point');;
        $user->save();

        $date = date('YmdHi');

        return response()->json(['success' => $date]);

    }

    public function edit(Request $request)
    {
        $id = $request->input('idmember');

        $user = User::find($id);
        $user->name = $request->input('nama');
        $user->email = $request->input('email');
        $user->password = $request->input('pwd');
        $user->alamat = $request->input('alamat');
        $user->point = $request->input('point');;
        $user->save();

        return response()->json(['success' => 'Data Edited successfully.']);

    }

    
    public function hapus(Request $request)
    {
        $id = $request->input('idmember');

        $user = User::find($id);
        $user->delete();

        return response()->json(['success' => 'Data Deleted successfully.']);

    }

}
