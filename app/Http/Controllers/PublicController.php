<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\Image;
use App\Review;
use Auth;
use App\Models\Category;

class PublicController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $product= Product::paginate(24);
        $category = Category::all();
        $filter_category = $request->get('filter_category');
        if($filter_category){
            $product = Product::with('category')->whereHas('category', function($a) use ($filter_category){
                $a->where('category_id', $filter_category);
            })->paginate(10);
        }
        $sorting = $request->get('sorting');
        if($sorting == "best_seller"){
            $product=Product::withCount('review')->orderBy("review_count","desc")
            ->paginate(10);
        }elseif($sorting =="terbaik"){
            $product=Product::orderBy("sold","desc")
            ->paginate(10);
        }elseif($sorting =="termurah"){
            $product=Product::orderBy('price','asc')
            ->paginate(10);
        }elseif($sorting =="termahal"){
            $product=Product::orderBy('price','desc')
            ->paginate(10);
        }elseif($sorting =="most_viewed"){
            $product=Product::orderBy('looks','desc')
            ->paginate(10);
        }elseif($sorting=="terbaru"){
            $product=Product::orderBy('created_at','desc')
            ->paginate(10);
        }
        if($request->ajax()){
            return view('public', compact('category','product'))->renderSections()['content'];    
        }else{
           return view('public',compact('category','product'));
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate(request(), [
            'rating' => 'required',
            'description' => 'required|max:255',
        ]);
        $review = new Review();
        $review->user_id = Auth::user()->id;
        $review->description = $request->input('description');
        $review->rating = $request->input('rating');
        $review->save();
        $id = $request->get('idproduct');
        $review->product()->attach($id);
        return Response::json($review);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
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
