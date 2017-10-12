if(file_exists("save_player_name_after_room_restart().sav"))
{
    var loadFile = file_text_open_read("save_player_name_after_room_restart().sav");
    var playerJson = file_text_read_string(loadFile);
    
    var playerMap = json_decode(playerJson);


    // extract values
    
    global.input_string = ds_map_find_value(playerMap, "name_player");          // nacita sa ulozene meno hraca po restartovani hry
    global.zvoleny_panak = ds_map_find_value(playerMap, "index_player");
    global.jazyk = ds_map_find_value(playerMap, "game_language");
    
    
    
    file_text_close(loadFile);
}

else
{
    // subor sa nenacita
}
