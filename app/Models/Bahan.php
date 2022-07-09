<?php

namespace App\Models;

use CodeIgniter\Model;

class Bahan extends Model
{
    protected $table                = 'bahanbahan';
    protected $primaryKey           = 'id';
    protected $useAutoIncrement     = true;
    protected $allowedFields        = ['nama', 'jumlah', 'harga', 'penyuplai'];
}
