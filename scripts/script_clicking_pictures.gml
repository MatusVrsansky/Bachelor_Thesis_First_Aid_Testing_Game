global.zmena_pozicie = false;           // premenna sa defaultne, aby nas neustale nepreplo do skriptu


//script_execute(generacia_clicking_pictures);                    // nacita sa skript na generaciu otazky a miestnosti kde sa pojde...


if(global.aktualna_hracia_miestnost == test_room_2)
{
    size_of_list_x_positions = ds_list_size(global.myList_x_positions_clicking_room_one);
    
    for(var i = 0; i < size_of_list_x_positions; i++)
    {
        pozicia_x = ds_list_find_value(global.myList_x_positions_clicking_room_one,i);
        
        size_of_list_y_positions = ds_list_size(global.myList_y_positions_clicking_room_one);
        
        for(j = 0; j < size_of_list_y_positions;j++)
        {
        pozicia_y = ds_list_find_value(global.myList_y_positions_clicking_room_one,j);
        
        //show_debug_message("Pozicia x"+string(pozicia_x));
      //  show_debug_message("Pozicia y"+string(pozicia_y));
        
        if(game_character_object.x == pozicia_x && game_character_object.y == pozicia_y)
        {
            script_execute(JSON_Load_Clicking_pictures);
            script_execute(generacia_clicking_pictures);
        }
        }
    }

}





else if(global.aktualna_hracia_miestnost == hracia_miestnost_2)
{
    size_of_list_x_positions = ds_list_size(global.myList_x_positions_clicking_room_two);
    
    for(var i = 0; i < size_of_list_x_positions; i++)
    {
        pozicia_x = ds_list_find_value(global.myList_x_positions_clicking_room_two,i);
        pozicia_y = ds_list_find_value(global.myList_y_positions_clicking_room_two,i);
        
        //show_debug_message("Pozicia x"+string(pozicia_x));
      //  show_debug_message("Pozicia y"+string(pozicia_y));
        
        if(game_character_object_two.x == pozicia_x && game_character_object_two.y == pozicia_y)
        {
            script_execute(JSON_Load_Clicking_pictures);
            script_execute(generacia_clicking_pictures);
        }
    }
} 

else if(global.aktualna_hracia_miestnost == hracia_miestnost_3)
{
    size_of_list_x_positions = ds_list_size(global.myList_x_positions_clicking_room_three);
    
    for(var i = 0; i < size_of_list_x_positions; i++)
    {
        pozicia_x = ds_list_find_value(global.myList_x_positions_clicking_room_three,i);
        pozicia_y = ds_list_find_value(global.myList_y_positions_clicking_room_three,i);
        
        //show_debug_message("Pozicia x"+string(pozicia_x));
      //  show_debug_message("Pozicia y"+string(pozicia_y));
        
        if(game_character_object_three.x == pozicia_x && game_character_object_three.y == pozicia_y)
        {
             script_execute(JSON_Load_Clicking_pictures);
            script_execute(generacia_clicking_pictures);
        }
    } 
}






















