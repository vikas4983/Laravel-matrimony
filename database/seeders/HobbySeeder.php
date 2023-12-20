<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class HobbySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $hobbies = [
            'Ham radio',
            'Collecting Stamps', 
            'Collecting Coins',
            'Collecting antiques',
            'Cooking',
            'Film-making',
            'Gardening/Landscaping',
            'Art/Handicraft',
             'Painting',
             'Photography',
             'Model building', 
             'Bird watching',
             'Fishing',
             'Taking care of pets',
             'Playing musical instruments',
             'Singing',
             'Dancing',
             'Acting',
             'Astrology/Palmistry/Numerology',
             'Graphology Solving Crosswords', 
             'Puzzles'
        ];
        foreach($hobbies as $hobby)

        DB::table('hobbies')->insert([
            'hobby' => $hobby,
           
        ]);

    }
}
