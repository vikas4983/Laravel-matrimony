<?php

namespace Database\Seeders;

use App\Models\HoroscopeMatch;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class HoroscopeMatchSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $horoscopes =
            ['Must', 'Not Necessary'];
        foreach ($horoscopes as $horoscope)

            HoroscopeMatch::insert([
                'horoscope_matche' => $horoscope,


            ]);
    }
}
