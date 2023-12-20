<?php

namespace App\Http\Controllers\admin\countries;

use App\Http\Controllers\Controller;
use App\Http\Requests\admin\countries\CreateStateRequest;
use App\Http\Requests\admin\countries\UpdateStateRequest;
use App\Models\Country;
use App\Models\State;
use Illuminate\Http\Request;

class StateController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $states =
        State::orderByDesc('created_at')->paginate(10);
        $count = ($states->currentPage() - 1) * $states->perPage();
        return view('admin.countries.states.index', compact('states','count'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $countries =  Country::all();
        return view('admin.countries.states.create', compact('countries'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(CreateStateRequest $request)
    {
        State::create([
            'country_id' => $request->country_id,
            'state' => $request->state,
            'status' => $request->status

        ]);
        $msg = "State Added Successfully";
        return redirect('admin/states')->with('success', $msg);
    }

    /**
     * Display the specified resource.
     */
    public function show(State $state)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(State $state)
    {
        $countries = Country::all();
        return view('admin.countries.states.edit', compact('state', 'countries'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateStateRequest $request, State $state)
    {
        // return $request->all();
        $state =  State::with('country')->find($state->id);
        $state->update([
            'country_id' => $request->country_id,
            'state' => $request->state,
            'status' => $request->status
        ]);
        $msg = "State Updated Successfully";
        return redirect('admin/states')->with('info', $msg);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(State $state)
    {
        $state->destroy($state->id);
        $msg = "State Deleted Successfully";
        return redirect('admin/states')->with('error', $msg);
    }
}
