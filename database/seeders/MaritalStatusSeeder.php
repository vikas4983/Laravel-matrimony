<?php

namespace Database\Seeders;

use App\Models\MaritalStatus;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class MaritalStatusSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $marital_statuses = ['Never Married', 'Awaiting Divorce', 'Divorced', 'Widowed', 'Annulled'];

        foreach ($marital_statuses as $marital_status) {
            MaritalStatus::insert([
                'marital_status' => $marital_status,

            ]);
        }
    }
}
