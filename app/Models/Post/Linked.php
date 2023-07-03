<?php

namespace App\Models\Post;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Linked extends Model
{
    use HasFactory;

    protected $table = 'linkeds';
    protected $fillable = [
        'name',
        'slug',
        'image',
        'url',
    ];
}
