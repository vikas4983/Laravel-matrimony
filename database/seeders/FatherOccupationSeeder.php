<?php

namespace Database\Seeders;

use App\Models\FatherOccupation;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class FatherOccupationSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $fathers = ['Business', 'Service-Private', 'Service-Govt.', 'Army/Armed Force', 'Civil Services', 'Retired', 'Not Employee', 'Expire'];
        foreach ($fathers as $father)
            FatherOccupation::insert([
                'father_occupation' => $father

            ]);
    }
}
