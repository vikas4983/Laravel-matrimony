<?php

namespace Database\Seeders;

use App\Models\Complextion;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use SebastianBergmann\Complexity\Complexity;

class ComplextionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $complextions = ['Very fair', 'Fair', 'Wheatish', 'Wheatish-Brown', 'Dark'];
        foreach ($complextions as $complextion)

            Complextion::insert([
                'complextion' => $complextion

            ]);
    }
}
