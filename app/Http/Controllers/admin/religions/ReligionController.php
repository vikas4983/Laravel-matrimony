<?php

namespace App\Http\Controllers\admin\religions;

use App\Http\Controllers\Controller;
use App\Models\Religion;
use Illuminate\Http\Request;

class ReligionController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $religions =
        Religion::orderByDesc('created_at')->paginate(10);
        $count = ($religions->currentPage() - 1) * $religions->perPage();
        return view('admin.religions.index', compact('religions','count'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.religions.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        Religion::create([
            'religion' => $request->religion,
            'status' => $request->status
        ]);
        $msg = "Religion Added Successfully";

        return redirect('admin/religions')->with('success', $msg);
    }

    /**
     * Display the specified resource.
     */
    public function show(Religion $religion)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Religion $religion)
    {
        return view('admin.religions.edit', compact('religion'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Religion $religion)
    {
        $religion->update([
            'religion' => $request->religion,
            'status' => $request->status
        ]);
        $msg = "Religion Updated Successfully";

        return redirect()->back()->with('info', $msg);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Religion $religion)
    {
        $religion->destroy($religion->id);
        $msg = "Religion Deleted Successfully";

        return redirect('admin/religions')->with('error', $msg);
    }
}
