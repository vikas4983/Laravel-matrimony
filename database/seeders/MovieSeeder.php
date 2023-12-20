<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class MovieSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $movies = [
            'Classics',
            'Web-series',
            'Romantic',
            'Comedy',
             'Horror',
             'Sci-Fi & Fantasy',
             'Action/Suspense',
             'Non-commercial/Art',
             'World cinema',
             'Documentaries',
             'Drama',
             'Epics Short films'
        ];
        foreach($movies as $movie)

        DB::table('movies')->insert([
            'movie' => $movie,
           
        ]);
    }
}
