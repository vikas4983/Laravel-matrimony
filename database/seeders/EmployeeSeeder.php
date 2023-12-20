<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class EmployeeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $employees = [

            "Private Sector"
                ,
             
                "Government/Public Sector"
            ,
             
                "Civil Services"
            ,
             
                "Defense"
            ,
             
                "Business/ Self Employed"
            ,
             
                "Not Working"
    ];
    foreach($employees as $employee){

        DB::table('employees')->insert([
            'employee' => $employee,
           
        ]);
    }



    }
}
