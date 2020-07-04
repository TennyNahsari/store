<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::post('/home/tambah', 'HomeController@tambah');
Route::post('/home/edit', 'HomeController@edit');
Route::post('/home/hapus', 'HomeController@hapus');


Auth::routes();

Route::get('/item', 'ItemController@index')->name('item');
Route::post('/item/tambah', 'ItemController@tambah');
Route::post('/item/edit', 'ItemController@edit');
Route::post('/item/hapus', 'ItemController@hapus');

Route::get('/lihatmember/{id}/{password}', 'MemberController@index');

Route::get('/transaksi', 'TransactionController@index')->name('transaction');
Route::post('/transaksi/tambah', 'TransactionController@tambah');

Route::post('/transaksi/tambahitem', 'TransactionController@tambahitem');



