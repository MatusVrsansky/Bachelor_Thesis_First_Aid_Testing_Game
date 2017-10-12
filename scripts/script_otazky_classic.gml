
global.zmena_pozicie = false;           // premenna sa defaultne, aby nas neustale nepreplo do skriptu


/////////////////////////////////////////////////// ----------------- efektivnejsie (da sa nahradit pole ktore prejdeme cez cyklus)-----------------

if(global.aktualna_hracia_miestnost == test_room_2)
{
    

    size_of_list_x_positions = ds_list_size(global.myList_x_positions_classic_room_one);
    
    for(var i = 0; i < size_of_list_x_positions; i++)
    {
        pozicia_x = ds_list_find_value(global.myList_x_positions_classic_room_one,i);       // fill index with x position
        
        size_of_list_y_positions = ds_list_size(global.myList_x_positions_classic_room_one)
        
        for(var j = 0; j < size_of_list_y_positions; j++)
        {
        pozicia_y = ds_list_find_value(global.myList_y_positions_classic_room_one,j);       // fill index with y position
            
        //show_debug_message("Pozicia x"+string(pozicia_x));
       //  show_debug_message("Pozicia y"+string(pozicia_y));
        
            if(game_character_object.x == pozicia_x && (game_character_object.y == pozicia_y))
            {
                global.next_room = instruction_1;  
                room_goto(set_number_points_room); 
            }
        }
    }

    // probably takes all points from first game room, Personally it is better  to use Litsts before duplication of CONDITIONS 
}


else if(global.aktualna_hracia_miestnost == hracia_miestnost_2)
{

    size_of_list_x_positions = ds_list_size(global.myList_x_positions_classic_room_two);
    
    for(var i = 0; i < size_of_list_x_positions; i++)
    {
        pozicia_x = ds_list_find_value(global.myList_x_positions_classic_room_two,i);       // fill index with x position
        pozicia_y = ds_list_find_value(global.myList_y_positions_classic_room_two,i);       // fill index with y position
            
        //show_debug_message("Pozicia x"+string(pozicia_x));
       //  show_debug_message("Pozicia y"+string(pozicia_y));
        
        if(game_character_object_two.x == pozicia_x && game_character_object_two.y == pozicia_y)
        {
            global.next_room = instruction_1;  
            room_goto(set_number_points_room); 
        }
    }
}


else if(global.aktualna_hracia_miestnost == hracia_miestnost_3)
{
    size_of_list_x_positions = ds_list_size(global.myList_x_positions_classic_room_three);
    
    for(var i = 0; i < size_of_list_x_positions; i++)
    {
        pozicia_x = ds_list_find_value(global.myList_x_positions_classic_room_three,i);       // fill index with x position
        pozicia_y = ds_list_find_value(global.myList_y_positions_classic_room_three,i);       // fill index with y position
            
        //show_debug_message("Pozicia x"+string(pozicia_x));
       //  show_debug_message("Pozicia y"+string(pozicia_y));
        
        if(game_character_object_three.x == pozicia_x && game_character_object_three.y == pozicia_y)
        {
            global.next_room = instruction_1;  
            room_goto(set_number_points_room); 
        }
    }
    
}




// dalsia moznost je nahradit copy and paste polom ktore znazornuje klasicke otazky... 


