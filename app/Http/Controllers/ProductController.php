<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
use DB;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return DB::table('product')
            ->join('category','product.categoryID','=','category.id')
            ->select('product.*', 'category.category_name')
            ->orderBy('created_at','desc')
            ->get();
    }

    public function getLimit($limit)
    {
        return DB::table('product')->limit($limit)->get();
    }
    public function getRelative($categoryID)
    {
        return DB::table('product')->where('categoryID',$categoryID)->get();
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        $data = $request->all();
        DB::table('product')->insert($data);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return DB::table('product')->where('id',$id)->get();
    }

    public function list_productscate($id)
    {
        $list_products = DB::table('category')
        ->leftjoin('product', 'category.id', '=', 'product.categoryID')
        ->where('categoryID','=',$id)
        ->get();
        return $list_products;
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request, $id)
    {
        $data = $request->all();
        DB::table('product')->where('id', $id)->update($data);
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

    public function search(Request $request){
        $search = $request->search;
        return DB::table('product')->where('product_name', 'like', '%'.$search.'%')->get();
    }
    
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        DB::table('product')->delete($id);
    }
}