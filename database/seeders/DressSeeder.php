<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DressSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $dresses = [
            'Trendy-in line with the latest fashion',
            'Classic Western-typically western formal wear',
            'Designer-only leading brands will do',
            'Casual-usually in jeans and T-shirts'
        ];
        foreach($dresses as $dresse)

    DB::table('dresses')->insert([
        'dress' => $dresse,
       
    ]);
    }
}
