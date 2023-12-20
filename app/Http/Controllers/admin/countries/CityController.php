<?php

namespace App\Http\Controllers\admin\countries;

use App\Http\Controllers\Controller;
use App\Http\Requests\admin\countries\CreateCityRequest;
use App\Http\Requests\admin\countries\UpdateCityRequest;
use App\Models\City;
use App\Models\State;
use Illuminate\Http\Request;

class CityController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $cities =
        City::orderByDesc('created_at')->paginate(10);
        $count = ($cities->currentPage() - 1) * $cities->perPage();
        return view('admin.countries.states.cities.index', compact('cities','count'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $states =  State::all();
        return view('admin.countries.states.cities.create', compact('states'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(CreateCityRequest $request)
    {

        City::create([
            'state_id' => $request->state_id,
            'city' => $request->city,
            'status' => $request->status

        ]);
        $msg = "City Added Successfully";
        return redirect('admin/cities')->with('success', $msg);
    }

    /**
     * Display the specified resource.
     */
    public function show(City $city)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(City $city)
    {
        $states = State::all();
        return view('admin.countries.states.cities.edit', compact('city', 'states'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateCityRequest $request, City $city)
    {
        $city =  City::with('State')->find($city->id);
        $city->update([
            'state_id' => $request->state_id,
            'city' => $request->city,
            'status' => $request->status
        ]);
        $msg = "City Updated Successfully";
        return redirect('admin/cities')->with('info', $msg);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(City $city)
    {
        $city->destroy($city->id);
        $msg = "City Deleted Successfully";
        return redirect('admin/cities')->with('error', $msg);
    }
}
