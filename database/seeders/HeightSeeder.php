<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class HeightSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $heights = [
            '3ft.5in-105cm', 
            '3ft.6in-107cm', 
            '3ft.7in-110cm', 
            '3ft.8in-112cm', 
            '3ft.9in-114cm', 
            '3ft.10in-117c', 
            '3ft.11in-119c', 
            '4ft-122cm"4ft', 
            '4ft.1in-124cm', 
            '4ft.2in-127cm', 
            '4ft.3in-129cm', 
            '4ft.4in-132cm', 
            '4ft.5in-134cm', 
            '4ft.6in-137cm', 
            '4ft.7in-139cm', 
            '4ft.8in-142cm', 
            '4ft.9in-144cm', 
            '4ft.10in-147c', 
            '4ft.11in-149c', 
            '5ft-151cm"5ft', 
            '5ft.1in-154cm', 
            '5ft.2in-157cm', 
            '5ft.3in-160cm', 
            '5ft.4in-162cm', 
            '5ft.5in-165cm', 
            '5ft.6in-167cm', 
            '5ft.7in-170cm', 
            '5ft.8in-172cm', 
            '5ft 9in-175cm', 
            '5ft.10in-177c', 
            '5ft.11in-180c', 
            '6ft-182cm"6ft', 
            '6ft.1in-185cm', 
            '6ft.1in-185cm', 
            '6ft.2in-187cm', 
            '6ft.3in-190cm', 
            '6ft.4in-193cm', 
            '6ft.5in-196cm', 
            '6ft.6in-198cm', 
            '6ft.7in-200cm', 
            '6ft.8in-203cm', 
            '6ft.9in-206cm', 
            '6ft.10in-208c', 
            '6ft.11in-211c', 
];

foreach ($heights as $height) {
DB::table('heights')->insert([
'height' => $height,
]);
}
    }
}
