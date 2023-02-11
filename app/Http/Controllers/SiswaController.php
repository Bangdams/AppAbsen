<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Siswa;

class SiswaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('pages.siswa.index', [
            'siswa' => Siswa::All(),
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view("pages.siswa.create");
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
       // dd($request->addMoreInput[]['nama']);


       // Ini Contoh Store Multiple Input
       // foreach ($request->addMoreInput as $key => $value) {
       //      // dump($value);

       //      $data = [ 
       //          'name' => $value['name'],
       //          'alamat' => $value['alamat'],
       //          'jk' => $value['jk'],
       //          'kelas' => $value['kelas'],
       //      ];

       //      dd($data);
       
       //      Siswa::create($data);
       // };

        Siswa::create([
            'name' => $request->name,
            'alamat' => $request->alamat,
            'jk' => $request->jk,
            'kelas' => $request->kelas,
        ]);

       return redirect('siswa');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        dd("Cek Show");
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
