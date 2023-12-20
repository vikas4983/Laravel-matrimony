<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class InterestSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $interests= [

            'Listening to music',
            'Movies Travel Sightseeing',
            'Sports-Outdoor',
            'Video/Computer games',
            'Writing',
            'Reading/Book clubs',
            'Learning new languages',
            'Theatre',
            'Watching television',
            'Sports-Indoor',
            'Trekking/Adventure' 
        ];
        foreach($interests as $interest)

    DB::table('interests')->insert([
        'interest' => $interest,
       
    ]);
    }
}
