<?php

namespace Database\Seeders;

use App\Models\ProfileFor;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class ProfileForSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $profiles = ["Self", "Son", "Daughter", "Sister", "Brother", "Relative/Friend"];
        foreach ($profiles as $profile)

            ProfileFor::insert([
                'profile_for' => $profile,


            ]);
    }
}
