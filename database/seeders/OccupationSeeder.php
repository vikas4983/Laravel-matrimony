<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class OccupationSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // $privates =[


        //         "Admin Professional",
        //          "Clerk",
        //          "Operator\/Technician",
        //          "Secretary\/Front Office",
        //          "Actor\/Model",
        //          "Advertising Professional",
        //          "Film\/ Entertainment Professional",
        //          "Journalist",
        //          "Media Professional",
        //          "PR Professional",
        //          "Agriculture Professional",
        //          "Farming",
        //          "Airline Professional",
        //          "Flight Attendant",
        //          "Pilot",
        //          "Architect",
        //         "BPO\/ITes Professional",
        //          "Customer Service",
        //         "Accounting Professional",
        //          "Auditor",
        //          "Banking Professional",
        //          "Chartered accountant",
        //          "Finance Professional",
        //          "Analyst",
        //          "Consultant",
        //          "Corporate Communication",
        //          "Corporate Planning",
        //          "HR Professional",
        //          "Marketing Professional",
        //          "Operations Management",
        //          "Product manager",
        //          "Program Manager",
        //          "Project Manager - Non IT",
        //          "Sales Professional",
        //         "Sr. Manager/ Manager",
        //         "Subject Matter Expert",
        //          "Dentist",
        //          "Doctor",
        //          "Surgeon",
        //         "Education Professional",
        //          "Educational Institution Owner",
        //          "Librarian",
        //          "Professor/Lecturer",
        //          "Research Assistant",
        //          "Teacher",
        //         "Electronics Engineer",
        //          "Hardware/Telecom Engineer",
        //          "Non IT Engineer",
        //          "Quality Assurance Engineer",
        //         "Hotels/Hospitality Professional",
        //          "Lawyer & Legal Professional",
        //           "Mariner",
        //          "Merchant Naval Officer",
        //         "Medical\/ Healthcare Professional",
        //          "Nurse",
        //          "Paramedic",
        //          "Pharmacist",
        //          "Physiotherapist",
        //          "Psychologist",
        //          "Veterinary doctor",
        //            "Research Professional",
        //          "Science Professional",
        //          "Scientist",
        //           "Animator",
        //          "Cyber/Network Security",
        //          "Project Lead - IT",
        //          "Project Manager - IT",
        //          "Quality Assurance Engineer - IT",
        //          "Software Professional",
        //          "UI/UX designer",
        //          "Web/Graphic Designer",
        //         "CxO/ Chairman/ President/ Director",
        //          "VP/ AV/ GM/ DGM",
        //           "Agent",
        //          "Artist",
        //          "Beautician",
        //          "Broker",
        //          "Fashion Designer",
        //          "Fitness Professional",
        //          "Interior Designer",
        //          "Security Professional",
        //          "Singer",
        //          "Social Services/ NGO/ Volunteer",
        //              "Sportsperson",
        //              "Travel Professional",
        //              "Writer",
        //              "Others",




        // ];





        // $governments = [
        //     "Administra",
        //     "Admin Professional",               "Clerk",                "Operator\/Technician",                 "Secretary\/Front Office",            "Advertising, Media & Entertain",
        //     "Advertising Professional",
        //     "Film/ Entertainment Professional",
        //     "Media Professional",                   "PR Professional",            "Agricult",

        //     "Agriculture Professional",                   "Farming",            "Airline & Avia",

        //     "Airline Professional",                   "Flight Attendant",                   "Pilot",            "Architec",

        //     "Architect",
        //     "BPO & Customer Service",

        //     "BPO\/ITes Professional",                   "Customer Service",            "Banking & Fin ",

        //     "Accounting Professional",                  "Auditor",
        //     "Banking Professional",                  "Chartered accountant",
        //     "Finance Professional",            "Corporate Management Professio ",

        //     "Analyst",                   "Consultant",                   "Corporate Communication",                   "Corporate Planning",                   "HR Professional",                   "Marketing Professional",                   "Operations Management",                   "Product manager",                   "Program Manager",                   "Project Manager - Non IT",                      "Sales Professional",

        //     "Sr. Manager\/ Manager",

        //     "Subject Matter Expert",
        //     "Doctor",

        //     "Dentist",                  "Doctor",
        //     "Surgeon",            "Education & Trai",

        //     "Education Professional",                   "Educational Institution Owner",                   "Librarian",                   "Professor\/Lecturer",                   "Research Assistant",                   "Teacher",            "Enginee ",

        //     "Electronics Engineer",                   "Hardware\/Telecom Engineer",                   "Non \u2013 IT Engineer",                   "Quality Assurance Engineer",            "Hospita ",

        //     "Hotels/Hospitality Professional",            "Law Enforce ",

        //     "Law Enforcement Officer",                   "Police",

        //     "Lawyer & Legal Professional",            "Merchant ",

        //     "Mariner",                   "Merchant Naval Officer",            "Other Medical & Health ",

        //     "Medical/ Healthcare Professional",                   "Nurse",                   "Paramedic",                       "Pharmacist",                   "Physiotherapist",                   "Psychologist",                       "Veterinary doctor",            "Science & Rese ",

        //     "Research Professional",                   "Science Professional",                   "Scientist",            "Software ",

        //     "Animator",                   "Cyber\/Network Security",                       "Project Lead - IT",                   "Project Manager - IT",                   "Quality Assurance Engineer - IT",                   "Software Professional",                   "UI\/UX designer",                   "Web\/Graphic Designer",            "Top Manage ",

        //     "CxO/ Chairman/ President/ Director",                   "VP/ AVP/ GM/ DGM",

        //     "Agent",                   "Artist",
        //     "Broker",                   "Fitness Professional",                   "Interior Designer",                       "Politician",                   "Security Professional",                   "Social Services\/ NGO\/ Volunteer",                   "Others"
        // ];




        // $defences = [


            
                            
        //                      "Admin Professional"
        //                     ,
                            
        //                          "Clerk"
        //                     ,
                            
        //                        "Operator\/Technician"
                            
        //                 ,
        //                 "Airline & Aviation",
                            
        //                          "Airline Professional"
        //                     ,
                            
        //                        "Pilot"
                            
        //                 ,
        //                 "Armed Forces",
                            
        //                          "Air Force"
        //                     ,
                            
        //                          "Army"
        //                     ,
                            
        //                          "Defence Services"
        //                     ,
                            
        //                        "Navy"
                            
        //                 ,
        //                 "Doctor",
                            
        //                          "Dentist"
        //                     ,
                            
        //                          "Doctor"
        //                     ,
                            
        //                        "Surgeon"
                            
        //                 ,
        //                 "Education & Training",
                            
        //                          "Education Professional"
        //                     ,
                            
        //                          "Educational Institution Owner"
        //                     ,
                            
        //                          "Librarian"
        //                     ,
                            
        //                          "Professor\/Lecturer"
        //                     ,
                            
        //                          "Research Assistant"
        //                     ,
                            
        //                        "Teacher"
                            
        //                 ,
        //                 "Engineering",
                            
        //                          "Electronics Engineer"
        //                     ,
                            
        //                          "Hardware\/Telecom Engineer"
        //                     ,
                            
        //                          "Non \u2013 IT Engineer"
        //                     ,
                            
        //                        "Quality Assurance Engineer"
                            
        //                 ,
                      
                            
        //                          "Law Enforcement Officer"
        //                     ,
                            
        //                        "Police",
                            
                       
                            
        //                        "Lawyer & Legal Professional"
                            
        //                 ,
        //                 "Merchant Navy",
                            
        //                          "Mariner"
        //                     ,
                            
        //                        "Merchant Naval Officer"
                            
        //                 ,
        //                 "Other Medical & Healthcare",
                            
        //                          "Medical\/ Healthcare Professional"
        //                     ,
                            
        //                          "Nurse"
        //                     ,
                            
        //                          "Paramedic"
        //                     ,
                            
        //                         "Pharmacist"
        //                     ,
                            
        //                          "Physiotherapist"
        //                     ,
                            
        //                          "Psychologist"
        //                     ,
                            
        //                        "Veterinary doctor"
                            
        //                 ,
        //                 "Science & Research",
                            
        //                          "Research Professional"
        //                     ,
                            
        //                          "Science Professional"
        //                     ,
                            
        //                        "Scientist"
                            
        //                 ,
                        
                            
        //                          "Cyber\/Network Security"
        //                     ,
                            
        //                          "Quality Assurance Engineer - IT"
        //                     ,
                            
        //                        "Software Professional"
                          
                        
                    
        // ];



        // $businesses = [
        //     "Actor\/Model"
        //     ,
     
        //  "Advertising Professional"
        //     ,
     
        //      "Film/ Entertainment Professional"
        //     ,
     
        //      "Media Professional"
            
        // ,
     
     
        //      "Agriculture Professional"
        //     ,
     
        //      "Farming"
            
        // ,
    
     
        //  "Architect"
            
        // ,
   
     
        //      "Chartered accountant"
            
        // ,
    
     
        //      "Subject Matter Expert"
            
        // ,

     
        //      "Dentist"
        //     ,
     
        //      "Doctor"
        //     ,
     
        //      "Surgeon"
            
        // ,
      
     
        //      "Education Professional"
        //     ,
     
        //      "Educational Institution Owner"
        //     ,
     
        //      "Librarian"
        //     ,
     
        //      "Professor\/Lecturer"
        //     ,
     
        //      "Research Assistant"
        //     ,
     
        //      "Teacher"
            
        // ,
        
     
        //      "Hotels/Hospitality Professional"
            
        // ,
         
     
        //      "Lawyer & Legal Professional"
            
        // ,
      
     
        //      "Medical/ Healthcare Professional"
        //     ,
     
        //      "Nurse"
        //     ,
     
        //      "Paramedic"
        //     ,
     
        //          "Pharmacist"
        //     ,
     
        //      "Physiotherapist"
        //     ,
     
        //      "Psychologist"
        //     ,
     
        //          "Veterinary doctor"
            
        // ,
     
     
        //      "Research Professional"
        //     ,
     
        //      "Science Professional"
        //     ,
     
        //      "Scientist"
            
        // ,
      
     
        //          "Animator"
            
        // ,
  
     
        //      "CxO/ Chairman/ President/ Director"
        //     ,
     
        //      "VP/ AVP/ GM/ DGM"
            
        // ,

     
        //  "Agent"
        //     ,
     
        //          "Artist"
        //     ,
     
        //      "Beautician"
        //     ,
     
        //          "Broker"
        //     ,
     
        //          "Business Owner/ Entrepreneur"
        //     ,
     
        //      "Businessperson"
        //     ,
     
        //      "Fashion Designer"
        //     ,
     
        //      "Fitness Professional"
        //     ,
     
        //      "Interior Designer"
        //     ,
     
        //          "Singer"
        //     ,
         
        //      "Social Services/ NGO/ Volunteer"
        //     ,
         
        //      "Sportsperson"
        //     ,
         
        //          "Travel Professional"
        //     ,
         
        //          "Writer"
        //     ,
         
        //      "Others"




        // ];


        // $notworlings =[
        //     "Looking for job"
        // ,
       
        //      "Not working"
        // ,
        
        //      "Retired"
        // ,
     
        //    "Student"
        

        // ];


        // foreach ($notworlings as $notworling) {

        //     DB::table('occupations')->insert([
        //         'occupation' => $notworling,
        //         'employee_id' => 6
        //  ]);
      
        
        // }}}
