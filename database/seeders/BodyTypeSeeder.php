<?php

namespace Database\Seeders;

use App\Models\BodyType;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class BodyTypeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $bodys = ['Slim', 'Average', 'Athletic', 'Heavy'];
        foreach ($bodys as $body)

            BodyType::insert([
                'body_type' => $body

            ]);
    }
}
