<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Divisi extends Model
{
    use HasFactory;
    protected $table = 'siswa';
    protected $guarded = [
        'id',
    ];
    
    public $timestamps = false;
}
