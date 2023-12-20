<?php

namespace Database\Seeders;

use App\Models\Rashi;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class RashiSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $rashis =
            ["Don't Know", "Aries", "Taurus", "Gemini", "Cancer", "Leo", "Virgo", "Libra", "Scorpio", "Sagittarius", "Capricorn", "Aquarius", "Pisces"];
        foreach ($rashis as $rashi)

            Rashi::insert([
                'rashi' => $rashi,


            ]);
    }
}
