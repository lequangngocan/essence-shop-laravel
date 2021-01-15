<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $table = ['category'];
    protected $fillable = [
        'category_name',
        'category_image',
        'describe'
    ];

    public function getTotalProductsAttribute()
    {
        return $this->hasMany('App\Product','categoryID','id')->where('categoryID',$this->id)->count();    
    }

    public function product()
    {
        return $this->hasMany('App\Product','categoryID','id');
    }
}