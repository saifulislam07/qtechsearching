<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\SearchHistory;
use App\Models\User;
use Dotenv\Validator;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class SearchHistoryController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
    }

    public function searchhistory(Request $request)
    {


        $countKeywords = SearchHistory::orderBy('total', 'desc')
            ->selectRaw('keywords, count(*) as total')
            ->groupBy('keywords')
            ->where('user_id', Auth::user()->id) //must add this line
            ->pluck('total', 'keywords')->all();


        $allUsers = DB::table('search_histories')
            ->select('search_histories.user_id', 'users.name')
            ->join('users', 'users.id', '=', 'search_histories.user_id')
            ->whereRaw('users.id = search_histories.user_id')
            ->groupBy('user_id')
            ->get();
        // dd($allUsers);
        $searchHistoryData = SearchHistory::orderBy('id', 'desc')
            ->where('user_id', Auth::user()->id)
            ->get();

        return view('search.searchhistory', get_defined_vars());
    }

    public function storesearchdata(Request $request)
    {

        $datakey = $request->name;
        $this->validate($request, [
            'name' => 'required',
        ]);

        $searchdata = new SearchHistory();
        $searchdata->keywords = $request->name;
        $searchdata->user_id = Auth::user()->id;
        $searchdata->save();

        $allPreductsByKey = Product::where('name', 'like', '%' . $datakey . '%')->get();
        if ($allPreductsByKey) {
            return view('search.productshorting', get_defined_vars());
        }
        return;
    }
    /**
     * Show the form for creating a new resource.
     */


    public function getProductList($keys)
    {
        return $allPreductsByKey = Product::where('name', 'like', '%' . $keys . '%')->get();
    }

    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(SearchHistory $searchHistory)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(SearchHistory $searchHistory)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, SearchHistory $searchHistory)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(SearchHistory $searchHistory)
    {
        //
    }
}
