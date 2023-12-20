<?php

namespace Database\Seeders;

use App\Models\Manglik;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class ManglikSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $mangliks = ["Don't Know", 'Manglik', 'Non Manglik', 'Angshik(Partial manglik)'];
        foreach ($mangliks as $manglik)

            Manglik::insert([
                'manglik' => $manglik,
                'status' => 1

            ]);
    }
}
