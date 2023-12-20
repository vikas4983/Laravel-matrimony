<?php

namespace App\Http\Controllers\admin\educations;

use App\Http\Controllers\Controller;
use App\Http\Requests\admin\educations\CreateOccupationRequest;
use App\Http\Requests\admin\educations\UpdateOccupationRequest;
use App\Models\Employee;
use App\Models\Occupation;
use Illuminate\Http\Request;

class OccupationController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $occupations = Occupation::orderByDesc('created_at')->paginate(10);
        $count = ($occupations->currentPage() - 1) * $occupations->perPage();
        return view('admin.employees.occupations.index', compact('occupations', 'count'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $employees =  Employee::all();
        return view('admin.employees.occupations.create', compact('employees'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(CreateOccupationRequest $request)
    {
        Occupation::create([
            'employee_id' => $request->employee_id,
            'occupation' => $request->occupation,
            'status' => $request->status

        ]);
        $msg = "Occupation Added Successfully";
        return redirect('admin/occupations')->with('success', $msg);
    }

    /**
     * Display the specified resource.
     */
    public function show(Occupation $occupation)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Occupation $occupation)
    {
        $employees = Employee::all();
        return view('admin.employees.occupations.edit', compact('occupation', 'employees'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateOccupationRequest $request, Occupation $occupation)
    {

        $occupation->update([
            'employee_id' => $request->employee_id,
            'occupation' => $request->occupation,
            'status' => $request->status
        ]);
        $msg = "Occupation Updated Successfully";
        return redirect('admin/occupations')->with('info', $msg);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Occupation $occupation)
    {
        $occupation->destroy($occupation->id);
        $msg = "Occupation Deleted Successfully";
        return redirect('admin/occupations')->with('error', $msg);
    }
}
