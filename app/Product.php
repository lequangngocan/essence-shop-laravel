<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $table = 'product';
    protected $fillable=[
        'product_name',
        'product_image_1',
        'product_image_2',
        'price',
        'sale_price',
        'amount',
        'review',
        'detail',
        'views',
        'categoryID'
    ];

    public function category()
    {
        return $this->belongsTo('App\Category','categoryID','id');
    }
}