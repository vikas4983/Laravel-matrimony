<?php

namespace Database\Seeders;

use App\Models\Sport;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class SportSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $sports = [
            "Cricket",
            "Jogging/Walking",
            "Cycling",
            "Swimming Water sports",
            "Martial Arts",
            "Yoga/Meditation",
            "Hockey",
            "Football",
            "Volleyball",
            "CarromBilliards/Snooker/Pool",
            "Golf",
            "Weight training",
            "Chess",
            "Card games",
            "Bowling",
            "Scrabble",
            "Aerobics",
            "Basketball",
            "Table-tennis",
            "Rugby",
            "Adventure sports",
            "Badminton",
            "Tennis",
            "Squash",
            "Baseball",
        ];
        foreach ($sports as $sport)

            Sport::insert([
                'sport' => $sport,


            ]);
    }
}
