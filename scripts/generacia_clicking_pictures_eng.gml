



//global.id_otazka = ds_grid_get(global.Taliansko,global.cislo_otazky,0);
global.textik_otazka = ds_grid_get(global.Clicking_pictures_eng,global.klikajuce_obrazky_eng,0);
global.number_question = ds_grid_get(global.Clicking_pictures_eng,global.klikajuce_obrazky_eng,1);
global.spravna_odpoved = ds_grid_get(global.Clicking_pictures_eng,global.klikajuce_obrazky_eng,2);

show_debug_message("Cislo otazky : "+string(global.number_question));


global.klikajuce_obrazky_eng += 1;


if(global.klikajuce_obrazky_eng > 9)
{
    global.klikajuce_obrazky_eng = 0;
}

else
{
   // global.klikajuce_obrazky_eng += 1;  
}

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
    
   // default : show_message("Zly generator!!!"); break;
}



