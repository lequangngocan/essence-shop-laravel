<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class News extends Model
{
    protected $table = ['news'];
    protected $fillable=[
        'title',
        'content',
        'image',
        'news_category_id'
    ];
    public function newscategory()
    {
        return $this->belongsTo('App\NewsCategory','news_category_id','id');
    }
}