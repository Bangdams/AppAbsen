<?php

use Illuminate\Support\Facades\Route;
use SimpleSoftwareIO\QrCode\Facades\QrCode;
use App\Http\Controllers\SiswaController;
use App\Http\Controllers\DivisiController;
use App\Http\Controllers\AbsenController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
Route::get('/', function () {
    return view('welcome');
});
*/

Route::get('/', function(){
    return view('pages.main.index');
});

Route::resources([
    'siswa' => SiswaController::class,
    'divisi'=> DivisiController::class,
    'absen' => AbsenController::class,
]);
