<?php

namespace App\Controllers;

use App\Models\Bahan;

class BahanController extends BaseController
{
    protected $bahan;

    function __construct()
    {
        $this->bahan = new Bahan();
    }

    public function index()
    {

        $data['bahanbahan'] = $this->bahan->findAll();

        return view('bahanbahan/index', $data);
    }

    public function create()
    {
        $isi = [
            'nama' => $this->request->getPost('nama'),
            'jumlah' => $this->request->getPost('jumlah'),
            'harga' => $this->request->getPost('harga'),
            'penyuplai' => $this->request->getPost('penyuplai'),
        ];
        $this->bahan->insert($isi);

        return redirect('bahan')->with('success', 'Data Added Successfully');
    }

    public function edit($id)
    {

        $this->bahan->update($id, [
            'nama' => $this->request->getPost('nama'),
            'jumlah' => $this->request->getPost('jumlah'),
            'harga' => $this->request->getPost('harga'),
            'penyuplai' => $this->request->getPost('penyuplai'),
        ]);

        return redirect('bahan')->with('success', 'Data Updated Successfully');
    }

    public function delete($id)
    {
        $this->bahan->delete($id);

        return redirect('bahan')->with('success', 'Data Deleted Successfully');
    }
}
