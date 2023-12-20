<?php

namespace Database\Seeders;

use App\Models\Education;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class EducationSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $educations = [

            "B.E/B.Tech",
            "B.Pharma",
            "M.E/M.Tech",
            "M.Pharma",
            "M.S. (Engineering)",
            "B.Arch",
            "M.Arch",
            "B.Des",
            "M.Des",
            "MCA",
            "BCA",
            "B.IT",
            "B.Com",
            "CA",
            "CS",
            "ICWA",
            "M.Com",
            "CFA",
            "MBA/PGDM",
            "BBA",
            "BHM",
            "MBBS",
            "M.D.",
            "BAMS",
            "BHMS",
            "BDS",
            "M.S. (Medicine)",
            "MVSc.",
            "BVSc.",
            "MDS",
            "BPT",
            "MPT",
            "DM",
            "MCh",
            "L.L.B",
            "L.L.M",
            "B.A",
            "B.Sc",
            "M.A",
            "M.Sc",
            "B.Ed",
            "M.Ed",
            "MSW",
            "BFA",
            "MFA",
            "BJMC",
            "MJMC",
            "PhD",
            "M.Phil",
            "Diploma",
            "High School",
            "Trade School",
            "Other"
        ];

        foreach ($educations as $education) {

            DB::table('education')->insert([
                'education' => $education,
                'status' => 1,

            ]);
        }
    }
}
