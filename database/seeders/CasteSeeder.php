<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class CasteSeeder extends Seeder

  {   /**
     *un the database seeds.
     */
    public function run(): void

     {
// //         $c11 = [
           
// //             'Ad Dharmi','Adi Andhra','Adi Dravida','Adi-karnataka' ,'Agarwal'                     
// //              ,'Agnikula Kshatriya',
// //              'Agri','Ahir Shimpi','Ahom','Ambalavasi','Arekatica','Arora','Arunthathiyar','Arya Vysya'
// //              ,'Ayyaraka','Badaga','Bagdi','Baidya','Baishnab','Baishya','Bajantri','Balija'
// //              ,'Banayat Oriya','Banik','Baniya','Baniya - Bania','Baniya - Kumuti','Banjara','Barai'
// //              ,'Bari','Baria','Barujibi','Besta','Bhandari','Bhatia','Bhatraju','Bhavasar Kshatriya','Bhoi'
// //              ,'Bhovi','Bhoyar','Billava','Bishnoi/Vishnoi','Bondili','Boyer'
// //              ,'Brahmbatt','Brahmin','Brahmin - Anavil','Brahmin - Audichya','Brahmin - Barendra'
// //              ,'Brahmin - Bhatt'
// //              ,'Brahmin - Bhumihar'
// //              ,'Brahmin - Daivadnya'
// //              ,'Brahmin - Danua'
// //              ,'Brahmin - Deshastha'
// //              ,'Brahmin - Dhiman'
// //              ,'Brahmin - Dravida'
// //              ,'Brahmin - Embrandiri'
// //              ,'Brahmin - Garhwali'
// //              ,'Brahmin - Gaur'
// //              ,'Brahmin - Goswami'
// //              ,'Brahmin - Gujar Gaur'
// //              ,'Brahmin - Gurukkal'
// //              ,'Brahmin - Halua'
// //              ,'Brahmin - Havyaka'
// //              ,'Brahmin - Hoysala'
// //              ,'Brahmin - Iyengar'
// //              ,'Brahmin - Iyer'
// //              ,'Brahmin - Jangid'
// //              ,'Brahmin - Jhadua'
// //              ,'Brahmin - Jyotish'
// //              ,'Brahmin - Kanyakubj'
// //              ,'Brahmin - Karhade'
// //              ,'Brahmin - Khandelwal'
// //              ,'Brahmin - Kokanastha'
// //              ,'Brahmin - Kota'
// //              ,'Brahmin - Kulin'
// //              ,'Brahmin - Kumoani'
// //              , 'Brahmin - Madhwa'
// //              ,'Brahmin - Maithil'
             
// //              , 'Brahmin - Modh'
             
// //              , 'Brahmin - Mohyal'
             
// //              , 'Brahmin - Nagar'
             
// //               ,'Brahmin - Namboodiri'
             
// //               ,'Brahmin - Narmadiya'
             
// //              , 'Brahmin - Niyogi'
             
// //               ,'Brahmin - Paliwal'
             
// //              , 'Brahmin - Panda'
             
// //               ,'Brahmin - Pandit'
             
// //               ,'Brahmin - Pareek'
             
// //               ,'Brahmin - Pushkarna'
             
// //               ,'Brahmin -arhi'
             
// //               ,'Brahmin -igvedi'
             
// //              , 'Brahmin -udraj'
             
// //               ,'Brahmin - Sakaldwipi'
             
// //               ,'Brahmin - Sanadya'
             
// //               ,'Brahmin - Sanketi'
             
// //               ,'Brahmin - Saraswat'
             
// //               ,'Brahmin - Saryuparin'
             
// //               ,'Brahmin - Shivhalli'
             
             
// // ,'Brahmin - Shrimali'
             
             
// // ,'Brahmin - Sikhwal'
             
             
// // ,'Brahmin - Smartha'
             
             
// // ,'Brahmin - Sri Vishnava'
             
             
// // ,'Brahmin - Stanika'
             
             
// // ,'Brahmin - Tyagi'
             
             
// // ,'Brahmin - Vaidiki'
             
             
// // ,'Brahmin - Vaikhanasa'
             
             
// // ,'Brahmin - Velanadu'
             
             
// // ,'Brahmin - Vyas'
             
             
// // ,'Brajastha Maithil',
             
             
// // 'Brajastha Maithil',
             
             
// // 'Bunt (Shetty)',
             
             
             
             
// // 'Chalawadi and Holeya',
             
             
// // 'Chambhar',
             
             
// // 'Chandravanshi Kahar',
             
             
// // 'Chasa',
             
             
// // 'Chattada Sri Vaishnava',
             
             
// // 'Chaudary',
             
             
// // 'Chaurasia',
             
             
// // 'Chennadasar',
             
             
// // 'Chettiar',
             
             
// // 'Chhetri',
             
             
// // 'Chippolu (Mera)',
             
             
// // 'Coorgi',
             
             
// // 'Devadiga',
             
             
// // 'Devandra Kula Vellalar',
             
             
// // 'Devang Koshthi',
             
             
// // 'Devanga',
             
             
// // 'Devrukhe Brahmin',
             
             
// // 'Dhangar',
             
             
// // 'Dheevara',
             
             
// // 'Dhiman',
             
             
// // 'Dhoba',
             
             
// // 'Dhobi',
             
             
// // 'Dhor / Kakkayya',
             
             
// // 'Dommala',
             
             
// // 'Dumal',
             
             
// // 'Dusadh (Paswan)',
             
             
// // 'Ediga',
             
             
// // 'Ezhava',
             
             
// // 'Ezhuthachan',
             
             
// // 'Gabit',
             
             
// // 'Ganda',
             
             
// // 'Gandla',
             
             
// // 'Ganiga',
             
             
// // 'Garhwali',
             
             
// // 'Gatti',
             
             
// // 'Gavara',
             
             
// // 'Gawali',
             
             
// // 'Ghisadi',
             
             
// // 'Ghumar',
             
             
// // 'Goala',
             
             
// // 'Goan',
             
             
// // 'Gomantak',
             
             
// // 'Gondhali',
             
             
// // 'Goud',
             
             
// // 'Gounder',
             
             
// // 'Gowda',
             
             
// // 'Gramani',
             
             
// // 'Gudia',
             
             
// // 'Gujjar',
             
             
// // 'Gupta',
             
             
// // 'Guptan',
             
             
// // 'Gurav',
             
             
// // 'Gurjar',
             
             
// // 'Halba Koshti',
             
             
// // 'Helava',
             
             
// // 'Hugar (Jeer)',
             
             
// // 'Intercaste',
             
             
// // 'Irani',
             
             
// // 'Jaalari',
             
             
// // 'Jaiswal',
             
             
// // 'Jandra',
             
             
// // 'Jangam',
             
             
// // 'Jangra - Brahmin',
             
             
// // 'Jat',
             
             
// // 'Jatav',
             
             
// // 'Jetty/Malla',
             
             
// // 'Jogi (Nath)',
             
             
// // 'Kachara',
             
             
// // 'Kadava Patel',
             
             
// // 'Kahar',
             
             
// // 'Kaibarta',
             
             
// // 'Kalal',
             
             
// // 'Kalanji',
             
             
// // 'Kalar',
             
             
// // 'Kalinga',
             
             
// // 'Kalinga Vysya',
             
             
// // 'Kalita',
             
             
// // 'Kalwar',
             
             
// // 'Kamboj',
             
             
// // 'Kamma',
             
             
// // 'Kansari',
             
             
// // 'Kapu',
             
             
// // 'Karana',
             
             
// // 'Karmakar',
             
             
// // 'Karuneegar',
             
             
// // 'Kasar',
             
             
// // 'Kashyap',
             
             
// // 'Katiya',
             
             
// // 'Kavuthiyya/Ezhavathy',
             
             
// // 'Kayastha',
             
             
// // 'Khandayat',
             
             
// // 'Khandelwal',
             
             
// // 'Kharwa',
             
             
// // 'Kharwar',
             
             
// // 'Khatri',
             
             
// // 'Kirar',
             
             
// // 'Kokanastha Maratha',
             
             
// // 'Koli',
             
             
// // 'Koli Mahadev',
             
             
// // 'Koli Patel',
             
             
// // 'Kongu Vellala Gounder',
             
             
// // 'Konkani',
             
             
// // 'Korama',
             
             
// // 'Kori',
             
             
// // 'Kosthi',
             
             
// // 'Krishnavaka',
             
             
// // 'Kshatriya',
             
             
// // 'Kudumbi',
             
             
// // 'Kulal',
             
             
// // 'Kulalar',
             
             
// // 'Kulita',
             
             
// // 'Kumawat',
             
             
// // 'Kumbhakar',
             
             
// // 'Kumbhar',
             
             
// // 'Kumhar',
             
             
// // 'Kummari',
             
             
// // 'Kunbi',
             
             
// // 'Kuravan',
             
             
// // 'Kurmi',
             
             
// // 'Kurmi Kshatriya',
             
             
// // 'Kuruba',
             
             
// // 'Kuruhina Shetty',
             
             
// // 'Kurumbar',
             
             
// // 'Kushwaha (Koiri)',
             
             
// // 'Kutchi',
             
             
// // 'Lambadi',
             
             
// // 'Leva patel',
             
             
// // 'Leva patil',
             
             
// // 'Lingayath',
             
             
// // 'Lodhiajput',
             
             
// // 'Lohana',
             
             
// // 'Lohar',
             
             
// // 'Loniya',
             
             
// // 'Lubana',
             
             
// // 'Madiga',
             
             
// // 'Mahajan',
             
             
// // 'Mahar',
             
             
// // 'Mahendra',
             
             
// // 'Maheshwari',
             
             
// // 'Mahishya',
             
             
// // 'Majabi',
             
             
// // 'Mala',
             
             
// // 'Mali',
             
             
// // 'Malla',
             
             
// // 'Malviya Brahmin',
             
             
// // 'Mangalorean',
             
             
// // 'Manipuri',
             
             
// // 'Mapila',
             
             
// // 'Maratha',
             
             
// // 'Maruthuvar',
             
             
// // 'Matang',
             
             
// // 'Mathur',
             
             
// // 'Maurya / Shakya',
             
             
// // 'Meena',
             
             
// // 'Meenavar',
             
             
// // 'Mehra',
             
             
// // 'Meru Darji',
             
             
// // 'Mochi',
             
             
// // 'Modak',
             
             
// // 'Mogaveera',
             
             
// // 'Mudaliyar',
             
             
// // 'Mudiraj',
             
             
// // 'Mukkulathor',
             
             
// // 'Munnuru Kapu',
             
             
// // 'Muthuraja',
             
             
// // 'Naagavamsam',
             
             
// // 'Nadar',
             
             
// // 'Nagaralu',
             
             
// // 'Nai',
             
             
// // 'Naicker',
             
             
// // 'Naidu',
             
             
// // 'Naik',
             
             
// // 'Nair',
             
             
// // 'Nambiar',
             
             
// // 'Namosudra',
             
             
// // 'Napit',
             
             
// // 'Nayaka',
             
             
// // 'Neeli',
             
             
// // 'Nepali',
             
             
// // 'Nhavi',
             
             
// // 'Oswal',
            
             
// // 'Otari',
             
             
// // 'Padmasali',
             
             
// // 'Pal',
             
             
// // 'Panchal',
             
             
// // 'Pandaram',
             
             
// // 'Panicker',
             
             
// // 'Parkava Kulam',
             
             
// // 'Parsi',
             
             
// // 'Partraj',
             
             
// // 'Pasi',
             
             
// // 'Patel',
             
             
// // 'Pathare Prabhu',
             
             
// // 'Patnaick',
             
             
// // 'Patra',
             
             
// // 'Perika',
             
             
// // 'Pillai',
             
             
// // 'Poosala',
             
             
// // 'Porwal',
             
             
// // 'Prajapati',
             
             
// // 'Raigar',
             
             
// // 'Rajaka',
             
             
// // 'Rajastani',
             
             
// // 'Rajbhar',
             
             
// // 'Rajbonshi',
             
             
// // 'Rajpurohit',
             
             
// // 'Rajput',
             
             
// // 'Ramanandi',
             
             
// // 'Ramdasia',
             
             
// // 'Ramgariah',
             
             
// // 'Ramoshi',
             
             
// // 'Ravidasia',
             
             
// // 'Rawat',
             
             
// // 'Reddy',
             
             
// // 'Relli',
             
             
// // 'Ror',
             
             
// // 'SC',
             
                             
             
// // 'ST',
             
             
// // 'Sadgope',
             
             
// // 'Saha',
             
             
// // 'Sahu',
             
             
// // 'Saini',
             
             
// // 'Saliya',
             
             
// // 'Sathwara',
             
             
// // 'Savji',
             
             
// // 'Senai Thalaivar',
             
             
// // 'Senguntha Mudaliyar',
             
             
// // 'Settibalija',
             
             
// // 'Shimpi',
             
             
// // 'Sindhi',
             
             
// // 'Sindhi-Amil',
             
             
// // 'Sindhi-Baibhand',
             
             
// // 'Sindhi-Bhanusali',
             
             
// // 'Sindhi-Bhatia',
             
             
// // 'Sindhi-Chhapru',
             
             
// // 'Sindhi-Dadu',
             
             
// // 'Sindhi-Hyderabadi',
             
             
// // 'Sindhi-Larai',
             
             
// // 'Sindhi-Larkana',
             
             
// // 'Sindhi-Lohana',
             
             
// // 'Sindhi-Rohiri',
             
             
// // 'Sindhi-Sahiti',
             
             
// // 'Sindhi-Sakkhar',
             
             
// // 'Sindhi-Sehwani',
             
             
// // 'Sindhi-Shikarpuri',
             
             
// // 'Sindhi-Thatai',
             
             
// // 'Sonar',
             
             
// // 'Soni',
             
             
// // 'Sourashtra',
             
             
// // 'Sozhiya Vellalar',
             
             
// // 'Srisayana',
             
             
// // 'Sugali (Naika)',
             
             
// // 'Sunari',
             
             
// // 'Sundhi',
             
             
// // 'Surya Balija',
             
             
// // 'Suthar',
             
             
// // 'Swakula Sali',
             
// // 'Tamboli',
             
             
// // 'Tanti',
             
             
// // 'Tantubai',
             
             
// // 'Telaga',
             
             
// // 'Teli',
             
             
// // 'Thakkar',
             
             
// // 'Thakore',
             
             
// // 'Thakur',
             
             
// // 'Thigala',
             
             
// // 'Thiyya',
             
             
// // 'Tili',
             
             
// // 'Togata',
             
             
// // 'Tonk Kshatriya',
             
             
// // 'Turupu Kapu',
             
             
// // 'Uppara',
             
             
// // 'Urali Gounder',
             
             
// // 'Urs',
             
             
// // 'Vada Balija',
             
             
// // 'Vaddera',
             
             
// // 'Vaish',
             
             
// // 'Vaishnav',
             
             
// // 'Vaishnava',
             
             
// // 'Vaishya',
             
             
// // 'Vaishya Vani',
             
             
// // 'Valluvan',
             
             
// // 'Valmiki',
             
             
// // 'Vania',
             
             
// // 'Vanika Vyshya',
             
             
// // 'Vaniya',
             
             
// // 'Vanjara',
             
             
// // 'Vanjari',
             
             
// // 'Vankar',
             
             
// // 'Vannar',
             
             
// // 'Vannia Kula Kshatriyar',
             
             
// // 'Variar',
             
             
// // 'Varshney',
             
             
// // 'Veera Saivam',
             
             
// // 'Velaan',
             
             
// // 'Velama',
             
             
// // 'Vellalar',
             
             
// // 'Veluthedathu Nair',
             
             
// // 'Vettuva Gounder',
             
             
// // 'Vilakkithala Nair',
             
             
// // 'Viswabrahmin',
             
             
// // 'Viswakarma',
             
             
// // 'Vokkaliga',
             
             
// // 'Vysya',
             
             
// // 'Yadav',
             
             
// // 'Yellapu',
             
             
// // 'Others',
             
              

// //           ];





// $c22 =[
  
    
    
           
//             'Shia - Isma ilis (Seveners)'
        
         
//            , 'Shia - Ithna Asharis (Twelvers)'
        
         
//            , 'Shia - Zaidis (Fivers)'
        
         
//           ,  'Shia - Ansari'
        
         
//            , 'Shia - Arain'
        
         
//           ,  'Shia - Awan'
        
         
//            , 'Shia - Bohra'
        
         
//            , 'Shia - Dakhini'
        
         
//           ,  'Shia - Dudekula'
        
//          ,
//             'Shia - Hanafi'
        
//          ,
//             'Shia - Jat'
        
//          ,
//             'Shia - Khoja'
        
//          ,
//             'Shia - Labbay'
        
//          ,
//             'Shia - Malik'
        
//          ,
//             'Shia - Mappila'
        
//          ,
//             'Shia - Marakayar'
        
//          ,
//             'Shia - Memon'
        
//          ,
//             'Shia - Mughal'
        
//          ,
//             'Shia - Pathan'
        
//          ,
//             'Shia - Qureshi'
        
//          ,
//             'Shia - Rajput'
        
//          ,
//             'Shia - Rowther'
        
//          ,
//             'Shia - Shafi'
        
//          ,
//             'Shia - Sheikh'
        
//          ,
//             'Shia - Siddiqui'
        
//          ,
//             'Shia - Syed'
        
//          ,
//             'Shia - UnSpecified'
        
         
//           ,  'Shia - Others'
//           ,
//           'Sunni Hanabali'
//           ,
          
               
//                'Sunni Hanafi'
//           ,
          
               
//                'Sunni Maliki'
//           ,
          
               
//                'Sunni Shafii'
//           ,
          
               
//                'Sunni - Ansari'
//           ,
          
               
//                'Sunni - Arain'
//           ,
          
               
//                'Sunni - Awan'
//           ,
          
               
//                'Sunni - Bohra'
//           ,
          
               
//                'Sunni - Dakhini'
//           ,
          
               
//                'Sunni - Dudekula'
//           ,
          
               
//                'Sunni - Hanafi'
//           ,
          
               
//                'Sunni - Jat'
//           ,
          
               
//                'Sunni - Khoja'
//           ,
          
               
//                'Sunni - Labbay'
//           ,
          
               
//                'Sunni - Malik'
//           ,
          
               
//                'Sunni - Mappila'
//           ,
          
               
//                'Sunni - Marakayar'
//           ,
          
               
//                'Sunni - Memon'
//           ,
          
               
//                'Sunni - Mughal'
//           ,
          
               
//                'Sunni - Pathan'
//           ,
          
               
//                'Sunni - Qureshi'
//           ,
          
               
//                'Sunni - Rajput'
//           ,
          
               
//                'Sunni - Rowther'
//           ,
          
               
//                'Sunni - Shafi'
//           ,
          
               
//                'Sunni - Sheikh'
//           ,
          
               
//                'Sunni - Siddiqui'
//           ,
          
               
//                'Sunni - Syed'
//           ,
          
               
//                'Sunni - UnSpecified'
//           ,
         
               
//                'Sunni - Others'
// ];
    
  
//   $jains = [
     
          
//                     'jain',
                   
//                     'Digambar',
                   
//                     'Digambar - Agarwal'
//                   ,
                  
                       
//                       'Digambar - Bania'
//                   ,
                  
                       
//                       'Digambar - Intercaste'
//                   ,
                  
                       
//                       'Digambar - Jaiswal'
//                   ,
                  
                       
//                       'Digambar - Khandelwal'
//                   ,
                  
                       
//                       'Digambar - Kutchi'
//                   ,
                  
                       
//                       'Digambar - No Bar'
//                   ,
                  
                       
//                       'Digambar - Oswal'
//                   ,
                  
                       
//                       'Digambar - Porwal'
//                   ,
                  
                       
//                       'Digambar - Unspecified'
//                   ,
                  
                       
//                       'Digambar - Vaishya'
//                   ,
                  
                       
//                       'Digambar - KVO'
//                   ,
                  
                       
//                       'Digambar - Others'
//                     ,
                    
//                       'Shwetamber',
                   
//                       'Shwetamber - Agarwal'
//                       ,
                      
                           
//                           'Shwetamber - Bania'
//                       ,
                      
                           
//                           'Shwetamber - Intercaste'
//                       ,
                      
                           
//                           'Shwetamber - Jaiswal'
//                       ,
                      
                           
//                           'Shwetamber - Khandelwal'
//                       ,
                      
                           
//                           'Shwetamber - Kutchi'
//                       ,
                      
                           
//                           'Shwetamber - No Bar'
//                       ,
                      
                           
//                           'Shwetamber - Oswal'
//                       ,
                      
                           
//                           'Shwetamber - Porwal'
//                       ,
                      
                           
//                           'Shwetamber - Unspecified'
//                       ,
                      
                           
//                           'Shwetamber - Vaishya'
//                       ,
                      
                           
//                           'Shwetamber - KVO'
//                       ,
                      
                           
//                           'Shwetamber - Others',
//                           'Jain- Others'
                        
             
                  
                       
                      
              
//   ];
     
          
                   
                
     //   $parsi = [
         
                   
                       
     //                   'Parsi'
                  

                   
     //   ];
                   
//     $sikh = [


     
              
                  
//                    "Sikh - Ahluwalia"
//               ,
              
//                                      "Sikh - Arora"
//               ,
              
//                                      "Sikh - Bhatia"
//               ,
              
//                                      "Sikh - Ghumar"
//               ,
              
//                                      "Sikh - Intercaste"
//               ,
              
//                                      "Sikh - Jat"
//               ,
              
//                                      "Sikh - Kamboj"
//               ,
              
//                                      "Sikh - Khatri"
//               ,
              
//                                      "Sikh - Kshatriya"
//               ,
              
                  
//                    "Sikh - Lubana"
//               ,
              
                  
//                    "Sikh - Majabi"
//               ,
              
                  
//                    "Sikh - Nai"
//               ,
              
                  
//                    "Sikh - No Bar"
//               ,
              
                  
//                    "Sikh - Rajput"
//               ,
              
                  
//                    "Sikh - Ramdasia"
//               ,
              
                  
//                    "Sikh - Ramgharia"
//               ,
              
                  
//                    "Sikh - Saini"
//               ,
              
                  
//                    "Sikh - Ravidasia"
//               ,
              
                  
//                    "Sikh - Bhatra"
//               ,
              
                  
//                    "Sikh - Tonk Kshatriya"
//               ,
              
                  
//                    "Sikh - Unspecified"
//               ,
              
                  
//                    "Others"
              
//     ];
      

// $Christian = [


     
              
                  
//                    "Adventist"
//               ,
              
//                                      "Anglican / Episcopal"
//               ,
              
//                                      "Apostolic"
//               ,
              
//                                      "Assyrian"
//               ,
              
//                                      "Assembly of God (AG)"
//               ,
              
//                                      "Baptist"
//               ,
              
//                                      "Calvinist"
//               ,
              
//                                      "Christian - Born Again"
//               ,
              
//                                      "Christian - Bretheren"
//               ,
              
                  
//                    "Christian - Church of South India"
//               ,
              
                  
//                    "Christian - Evangelist"
//               ,
              
                  
//                    "Christian - Jacobite"
//               ,
              
                  
//                    "Christian - Knanaya"
//               ,
              
                  
//                    "Christian - Knanaya Catholic"
//               ,
              
                  
//                    "Christian - Knanaya Jacobite"
//               ,
              
                  
//                    "Christian - Latin Catholic"
//               ,
              
                  
//                    "Christian - Malankara"
//               ,
              
                  
//                    "Christian - Marthoma"
//               ,
              
                  
//                    "Christian - Pentacost"
//               ,
              
                  
//                    "Christian - Roman Catholic"
//               ,
              
                  
//                    "Christian - Syrian Catholic"
//               ,
              
                  
//                    "Christian - Syrian Jacobite"
//               ,
              
                  
//                    "Christian - Syrian Orthodox"
//               ,
              
                  
//                    "Christian - Syro Malabar"
//               ,
              
                  
//                    "Christian - Unspecified"
//               ,
              
                  
//                    "Church of God"
//               ,
              
                  
//                    "Church of Christ"
//               ,
              
                  
//                    "Church of North India"
//               ,
              
                  
//                    "Congregational"
//               ,
              
                  
//                    "East Indian Catholic"
//               ,
              
                  
//                    "Jehovah's Witnesses"
//               ,
              
                  
//                    "Latter day saints"
//               ,
              
                  
//                    "Lutheran"
//               ,
              
                  
//                    "Melkite"
//               ,
              
                  
//                    "Malabar Independent Syrian Church"
//               ,
              
                  
//                    "Mennonite"
//               ,
              
                  
//                    "Methodist"
//               ,
              
                  
//                    "Moravian"
//               ,
              
                  
//                    "Protestant"
//               ,
              
                  
//                    "Presbyterian"
//               ,
              
                  
//                    "Seventh-day Adventist"
//               ,
              
                  
//                    "Reformed Baptist"
//               ,
              
                  
//                    "Reformed Presbyterian"
//               ,
              
                  
//                    "Knanaya"
//               ,
              
                  
//                    "Knanaya Catholic"
//               ,
              
                  
//                    "Knanaya Jacobite"
//               ,
              
                  
//                    "St. Thomas Evangelical"
//               ,
              
                  
//                    "Syrian Jacobite"
//               ,
              
                  
//                    "Syrian Orthodox"
//               ,
              
                  
//                    "Others"
              
// ];
      
               
   
// $Buddhist = [

//      'Buddhist'
// ];





          $j = 6;
        
          
          foreach ($Buddhist as $jain) {
            DB::table('castes')->insert([
              'caste' => $jain,
              'religion_id' => $j
              ]);
            
    
          } 
          
    }
    }
  
   