<?php

namespace Database\Seeders;

use App\Models\LanguageSpeak;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class LanguageSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $speaklanguages = [
            'Arabic', 'Assamese', 'Bengali', 'English', 'French', 'German', 'Gujarati',
            'Hebrew', 'Hindi', 'Italian', 'Japanese', 'Kannada', 'Kashmiri', 'Konkani',
            'Kutchi', 'Malayalam', 'Mandarin', 'Marathi', 'Marwadi', 'Oriya', 'Persian', 'Portuguese',
            'Punjabi', 'Pushto', 'Sindhi', 'Spanish', 'Tamil', 'Telugu', 'Tulu', 'Urdu',

        ];

        foreach ($speaklanguages as $speaklanguage)

            LanguageSpeak::insert([
                'language_speak' => $speaklanguage,

            ]);
    }
}
