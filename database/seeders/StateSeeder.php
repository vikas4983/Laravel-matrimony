<?php
namespace Database\Seeders;
use App\Models\State;
use Illuminate\Database\Seeder;


class StateSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $states = [
         'Andaman and Nicobar Islands',
         'Andhra Pradesh',
         'Arunachal Pradesh',
         'Assam',
         'Bihar',
         'Chandigarh',
         'Chhattisgarh',
         'Dadra and Nagar Haveli and Daman and Diu',
         'Delhi',
             'Goa',
             'Gujarat',
             'Haryana',
             'Himachal Pradesh',
             'Jharkhand',
             'Karnataka',
             'Kerala',
             'Lakshadweep',
             'Madhya Pradesh',
             'Maharashtra',
             'Manipur',
             'Meghalaya',
             'Mizoram',
             'Nagaland',
             'Odisha',
             'Puducherry',
             'Punjab',
             'Rajasthan',
             'Sikkim',
             'Tamil Nadu',
             'Telangana',
             'Tripura',
             'Uttar Pradesh',
             'Uttarakhand',
             'West Bengal',
        ];
        $country = 1;
        foreach ($states as $state) {
            State::insert([
             'state' =>$state,
             'country_id' => $country
            ]);
        }
        
         
           
             
            
        
    }
}
