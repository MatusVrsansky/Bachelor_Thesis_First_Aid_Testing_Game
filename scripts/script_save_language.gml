if(file_exists("save_language.sav"))
{
    file_delete("save_language.sav");     // mozeme ho vymazat kedze ho budeme prepisovat 
}

var saveFile = file_text_open_write("save_language.sav");

var instanceMap = ds_map_create();


ds_map_add(instanceMap, "game_language", global.jazyk);        // zapise sa meno hraca po restarte hry, aby nam ostalo v pamati


// convert ds_map to JSON
var JsonInstance = json_encode(instanceMap);

// write that JSON to file
file_text_write_string(saveFile, JsonInstance);

// close file
file_text_close(saveFile);
