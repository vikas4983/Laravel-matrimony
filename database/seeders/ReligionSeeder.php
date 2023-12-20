<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ReligionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $religions = [
            'Hindu','Jain','Muslim','Sikh','Christian','Buddhist','Parsi','Bahai','Jewish'               
        ];
        foreach ($religions as $religion) {
            DB::table('religions')->insert([
            'religion' => $religion,
            ]);
            }
    }
}
