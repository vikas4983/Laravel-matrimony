<?php

namespace Database\Seeders;

use App\Models\MotherOccupation;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class MotherOccupationSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $mothers = ['Housewife', 'Business', 'Service-Private', 'Service-Govt.', 'Army/Armed Force', 'Civil Services', 'Retired', 'Not Employee', 'Expire'];
        foreach ($mothers as $mother)
            MotherOccupation::insert([
                'mother_occupation' => $mother

            ]);
    }
}
