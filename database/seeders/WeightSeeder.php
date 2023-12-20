<?php

namespace Database\Seeders;

use App\Models\Weight;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class WeightSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $weights = [
            "30 kg", "31 kg", "32 kg", "33 kg", "34 kg", "35 kg", "36 kg", "37 kg", "38 kg", "39 kg",
            "40 kg", "41 kg", "42 kg", "43 kg", "44 kg", "45 kg", "46 kg", "47 kg", "48 kg", "49 kg",
            "50 kg", "51 kg", "52 kg", "53 kg", "54 kg", "55 kg", "56 kg", "57 kg", "58 kg", "59 kg",
            "60 kg", "61 kg", "62 kg", "63 kg", "64 kg", "65 kg", "66 kg", "67 kg", "68 kg", "69 kg",
            "70 kg", "71 kg", "72 kg", "73 kg", "74 kg", "75 kg", "76 kg", "77 kg", "78 kg", "79 kg",
            "80 kg", "81 kg", "82 kg", "83 kg", "84 kg", "85 kg", "86 kg", "87 kg", "88 kg", "89 kg",
            "90 kg", "91 kg", "92 kg", "93 kg", "94 kg", "95 kg", "96 kg", "97 kg", "98 kg", "99 kg",
            "100 kg", "101 kg", "102 kg", "103 kg", "104 kg", "105 kg", "106 kg", "107 kg", "108 kg", "109 kg",
            "110 kg", "111 kg", "112 kg", "113 kg", "114 kg", "115 kg", "116 kg", "117 kg", "118 kg", "119 kg",
            "120 kg", "121 kg", "122 kg", "123 kg", "124 kg", "125 kg", "126 kg", "127 kg", "128 kg", "129 kg",
            "130 kg", "131 kg", "132 kg", "133 kg", "134 kg", "135 kg", "136 kg", "137 kg", "138 kg", "139 kg",
            "140 kg", "141 kg", "142 kg", "143 kg", "144 kg", "145 kg", "146 kg", "147 kg", "148 kg", "149 kg",
            "150 kg", "151 kg", "152 kg", "153 kg", "154 kg", "155 kg", "156 kg", "157 kg", "158 kg", "159 kg",
            "160 kg", "161 kg", "162 kg", "163 kg", "164 kg", "165 kg", "166 kg", "167 kg", "168 kg", "169 kg",
            "170 kg", "171 kg", "172 kg", "173 kg", "174 kg", "175 kg", "176 kg", "177 kg", "178 kg", "179 kg",
            "180 kg"
        ];
        foreach ($weights as $weight)

            Weight::insert([
                'weight' => $weight

            ]);
    }
}
