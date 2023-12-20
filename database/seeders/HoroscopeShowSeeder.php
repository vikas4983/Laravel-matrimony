<?php

namespace Database\Seeders;

use App\Models\HoroscopeShow;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class HoroscopeShowSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $shows = ["Show to all",  "Hide from all", "Show only request accepted"];
        foreach ($shows as $show)

            HoroscopeShow::insert([
                'horoscope_show' => $show,

            ]);
    }
}
