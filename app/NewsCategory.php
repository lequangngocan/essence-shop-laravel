<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class NewsCategory extends Model
{
    protected $table = ['news_category'];
    protected $fillable=[
        'category_name'
    ];
    public function getTotalProductsAttribute()
    {
        return $this->hasMany('App\News','news_category_id','id')->where('news_category_id',$this->id)->count();    
    }

    public function news()
    {
        return $this->hasMany('App\News','news_category_id','id');
    }
}