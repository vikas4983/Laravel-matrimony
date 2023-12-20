<?php

namespace App\Http\Controllers\admin\incomes;

use App\Http\Controllers\Controller;
use App\Http\Requests\admin\incomes\CreateIncomeRequest;
use App\Http\Requests\admin\incomes\UpdateIncomeRequest;
use App\Models\Income;
use Illuminate\Http\Request;

class IncomeController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $incomes = Income::orderByDesc('created_at')->paginate(10);
        $count = ($incomes->currentPage() - 1) * $incomes->perPage();
        return view('admin.incomes.index', compact('incomes', 'count'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.incomes.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(CreateIncomeRequest $request)
    {
        Income::create([
            'income' => $request->income,
            'status' => $request->status
        ]);
        $msg = "Income  Added Successfully";

        return redirect('admin/incomes')->with('success', $msg);
    }

    /**
     * Display the specified resource.
     */
    public function show(Income $income)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Income $income)
    {
        return view('admin.incomes.edit', compact('income'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateIncomeRequest $request, Income $income)
    {
        $income->update([
            'income' => $request->income,
            'status' => $request->status
        ]);
        $msg = "Income Updated Successfully";

        //return redirect('admin/incomes')->with('info', $msg);
        return redirect('error');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Income $income)
    {
        $income->destroy($income->id);
        $msg = "Income Deleted Successfully";

        return redirect('admin/incomes')->with('error', $msg);
    }
}
