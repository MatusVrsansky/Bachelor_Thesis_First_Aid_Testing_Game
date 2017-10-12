if(file_exists("save_player_name_after_room_restart().sav"))
{
    file_delete("save_player_name_after_room_restart().sav");     // mozeme ho vymazat kedze ho budeme prepisovat 
}

var saveFile = file_text_open_write("save_player_name_after_room_restart().sav");

var instanceMap = ds_map_create();


ds_map_add(instanceMap, "name_player", global.input_string);        // zapise sa meno hraca po restarte hry, aby nam ostalo v pamati
ds_map_add(instanceMap, "index_player", global.zvoleny_panak);
ds_map_add(instanceMap, "game_language", global.jazyk);

// convert ds_map to JSON
var JsonInstance = json_encode(instanceMap);

// write that JSON to file
file_text_write_string(saveFile, JsonInstance);

// close file
file_text_close(saveFile);
