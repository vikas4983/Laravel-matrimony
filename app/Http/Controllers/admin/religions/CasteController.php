<?php

namespace App\Http\Controllers\admin\religions;

use App\Http\Controllers\Controller;
use App\Http\Requests\admin\religions\CreateCasteRequest;
use App\Http\Requests\admin\religions\UpdateCasteRequest;
use App\Models\Caste;
use App\Models\Religion;
use Illuminate\Http\Request;

class CasteController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $castes = Caste::orderByDesc('created_at')->paginate(10);
        $count = ($castes->currentPage() - 1) * $castes->perPage();
        return view('admin.religions.castes.index', compact('castes', 'count'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $religions =  Religion::all();
        return view('admin.religions.castes.create', compact('religions'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(CreateCasteRequest $request)
    {
        Caste::create([
            'religion_id' => $request->religion_id,
            'caste' => $request->caste,
            'status' => $request->status

        ]);
        $msg = "Caste Added Successfully";
        return redirect('admin/castes')->with('success', $msg);
    }

    /**
     * Display the specified resource.
     */
    public function show(Caste $caste)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Caste $caste)
    {
        $religions = Religion::all();
        return view('admin.religions.castes.edit', compact('caste', 'religions'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateCasteRequest $request, Caste $caste)
    {
        //$state =  State::with('country')->find($state->id);
        $caste->update([
            'religion_id' => $request->religion_id,
            'caste' => $request->caste,
            'status' => $request->status
        ]);
        $msg = "Caste Updated Successfully";
        return redirect('admin/castes')->with('info', $msg);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Caste $caste)
    {
        $caste->destroy($caste->id);
        $msg = "Caste Deleted Successfully";
        return redirect('admin/castes')->with('error', $msg);
    }
}
