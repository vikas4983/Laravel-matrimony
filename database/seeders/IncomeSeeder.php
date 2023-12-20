<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class IncomeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $incomes =[



             "No Income",
                
            "Rs. 0 - 1 Lakh",
                
            "Rs. 1 - 2 Lakh",
                
            "Rs. 2 - 3 Lakh",
                
            "Rs. 3 - 4 Lakh",
                
            "Rs. 4 - 5 Lakh",
                
            "Rs. 5 - 7.5 Lakh",
                
            "Rs. 7.5 - 10 Lakh",
                
            "Rs. 10 - 15 Lakh",
                
            "Rs. 15 - 20 Lakh",
                
            "Rs. 20 - 25 Lakh",
                
            "Rs. 25 - 35 Lakh",
                
            "Rs. 35 - 50 Lakh",
                
            "Rs. 50 - 70 Lakh",
                
            "Rs. 70 Lakh - 1 crore",
                
            "Rs. 1 crore & above"
        
    
        ];

        foreach($incomes as $income)

    DB::table('incomes')->insert([
        'income' => $income,
       
    ]);
    
}}