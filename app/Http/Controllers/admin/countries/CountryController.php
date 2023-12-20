<?php

namespace App\Http\Controllers\admin\countries;

use App\Http\Controllers\Controller;
use App\Http\Requests\admin\countries\CreateCountryRequest;
use App\Http\Requests\admin\countries\UpdateCountryRequest;
use App\Models\Country;
use Illuminate\Contracts\Session\Session;
use Illuminate\Http\Request;

class CountryController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    { // countries view
        $countries =
        Country::orderByDesc('created_at')->paginate(10);
        $count = ($countries->currentPage() - 1) * $countries->perPage();
        return view('admin.countries.index', compact('countries','count'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.countries.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(CreateCountryRequest $request)
    {
        Country::create([
            'country' => $request->country,
            'status' => $request->status
        ]);
        $msg = "Country Added Successfully";

        //return redirect('admin/countries')->with('success', $msg);
        return redirect('admin/countries')->with('success', $msg);
    }



    /**
     * Display the specified resource.
     */
    public function show(Country $country)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Request $request, Country $country)
    {
        return view('admin.countries.edit', compact('country'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateCountryRequest $request, Country $country)
    {
        $country->update([
            'country' => $request->country,
            'status' => $request->status
        ]);
        $msg = "Country Updated Successfully";

        return redirect('admin/countries')->with('info', $msg);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Country $country,)
    {

        $country->destroy($country->id);
        $msg = "Country Deleted Successfully";

        return redirect('admin/countries')->with('error', $msg);
    }
}
