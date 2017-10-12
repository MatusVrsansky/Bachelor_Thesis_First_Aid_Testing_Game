 

if(global.jazyk == "svk")
{

 //   if(global.theJsonFile == "questions_klikajuce_obrazky.json")
  //  {
        show_debug_message("clickinh_pictures" +string(global.Clicking_pictures_svk));
        show_debug_message("cislo otazky" +string(global.klikajuce_obrazky_subor_jedna_svk));
        global.textik_otazka = ds_grid_get(global.Clicking_pictures_svk,global.klikajuce_obrazky_subor_jedna_svk,0);
        global.number_question = ds_grid_get(global.Clicking_pictures_svk,global.klikajuce_obrazky_subor_jedna_svk,1);
        global.spravna_odpoved = ds_grid_get(global.Clicking_pictures_svk,global.klikajuce_obrazky_subor_jedna_svk,2);


        
global.klikajuce_obrazky_subor_jedna_svk += 1;
        
        if(global.klikajuce_obrazky_subor_jedna_svk > 9)
        {
            global.klikajuce_obrazky_subor_jedna_svk = 0;
           // global.cislo_otazky = global.klikajuce_obrazky_subor_jedna;
        }
        
        else
        {
           // global.cislo_otazky = global.klikajuce_obrazky_subor_jedna;
        }           
      
  //  }
    
  /*
    else
    {
        global.textik_otazka = ds_grid_get(global.Clicking_pictures_svk,global.klikajuce_obrazky_subor_dva_svk,0);
        global.number_question = ds_grid_get(global.Clicking_pictures_svk,global.klikajuce_obrazky_subor_dva_svk,1);
        global.spravna_odpoved = ds_grid_get(global.Clicking_pictures_svk,global.klikajuce_obrazky_subor_dva_svk,2);       
        
        global.klikajuce_obrazky_subor_dva_svk += 1;
        
        if(global.klikajuce_obrazky_subor_dva_svk > 3)
        {
            global.klikajuce_obrazky_subor_dva_svk = 1;
        //    global.cislo_otazky = global.klikajuce_obrazky_subor_dva_svk;
        }
        
          //  global.cislo_otazky = global.klikajuce_obrazky_subor_dva_svk;
    }
    */


//global.id_otazka = ds_grid_get(global.Taliansko,global.cislo_otazky,0);



switch(global.number_question)
{
    case 1 :
    case 2 : 
    case 4 : 
    case 6 : 
    case 7 : 
    case 8 :
    case 9 : 
    case 10 : room_goto(clicking_room); break;
    
    case 3 : 
    case 5 : room_goto(clicking_room_2); break;
    
    //default : show_message("Zly generator!!!"); break;
}
     


}

else
{
    script_execute(generacia_clicking_pictures_eng);
}

//show_debug_message("cislo otazky: "+string(global.number_question));


/*
if(global.jazyk == "svk")
{
randomize();
global.cislo_otazky = floor(random(global.total_questions_click_svk));
randomize();

//global.id_otazka = ds_grid_get(global.Taliansko,global.cislo_otazky,0);
global.textik_otazka = ds_grid_get(global.Clicking_pictures_svk,global.cislo_otazky,0);
global.number_question = ds_grid_get(global.Clicking_pictures_svk,global.cislo_otazky,1);
global.spravna_odpoved = ds_grid_get(global.Clicking_pictures_svk,global.cislo_otazky,2);


switch(global.number_question)
{
    case 1 :
    case 2 : 
    case 4 : 
    case 6 : 
    case 7 : 
    case 8 :
    case 9 : 
    case 10 : room_goto(clicking_room); break;
    
    case 3 : 
    case 5 : room_goto(clicking_room_2); break;
    
    default : show_message("Zly generator!!!"); break;
}



}

else
{
    script_execute(generacia_clicking_pictures_eng);
}
*/

