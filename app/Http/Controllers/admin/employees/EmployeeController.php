<?php

namespace App\Http\Controllers\admin\employees;

use App\Http\Controllers\Controller;
use App\Http\Requests\admin\employees\CreateEmployeeRequest;
use App\Models\Employee;
use Illuminate\Http\Request;

class EmployeeController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $employees =
        Employee::orderByDesc('created_at')->paginate(10);
        $count = ($employees->currentPage() - 1) * $employees->perPage();
        return view('admin.employees.index', compact('employees','count'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.employees.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(CreateEmployeeRequest $request)
    {
        Employee::create([
            'employee' => $request->employee,
            'status' => $request->status
        ]);
        $msg = "Employee Type Added Successfully";

        return redirect('admin/employees')->with('success', $msg);
    }

    public function show(Employee $employee)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Employee $employee)
    {
        return view('admin.employees.edit', compact('employee'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Employee $employee)
    {
        $employee->update([
            'employee' => $request->employee,
            'status' => $request->status
        ]);
        $msg = "Employee Type Updated Successfully";

        return redirect('admin/employees')->with('info', $msg);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Employee $employee)
    {
        $employee->destroy($employee->id);
        $msg = "Employee Type Deleted Successfully";

        return redirect('admin/employees')->with('error', $msg);
    }
}
