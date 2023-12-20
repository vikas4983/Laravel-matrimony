<?php

namespace Database\Seeders;

use App\Models\MotherTongue;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class MotherTongueSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $mothertongues = [
            "Hindi-Delhi",

            "Hindi-MP/CG",

            "Hindi-UP/UK",

            "Punjabi",

            "Hindi-Bihar/Jharkhand",

            "Hindi-Rajasthan",

            "Haryanvi",

            "Himachali",

            "Kashmiri",

            "Sindhi",

            "Urdu",

            "Marathi",

            "Gujarati",

            "Kutchi",

            "Konkani",

            "Sindhi",

            "South",

            "Tamil",

            "Telugu",

            "Kannada",

            "Malayalam",

            "Tulu",

            "Urdu",

            "Bengali",

            "Oriya",

            "Assamese",

            "Sikkim/Nepali",

            "Others",

            "English"
        ];


        foreach ($mothertongues as $mothertongue) {
            MotherTongue::insert([
                'mother_tongue' => $mothertongue,
                'status' => 1
            ]);
        }
    }
}
