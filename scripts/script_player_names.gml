var count = 0;

/*
var saveFile = file_text_open_read("name_players.sav");

if(!(file_text_eof(saveFile)))
{
    if(is_string("|"))
    {
        count += 1;
    }
}

file_text_close(saveFile);
*/

var saveFile = file_text_open_write("name_players.sav");



var instanceMap = ds_map_create();


ds_map_add(instanceMap, "name_player", global.input_string);        // zapise sa meno hraca po restarte hry, aby nam ostalo v pamati


// convert ds_map to JSON
var JsonInstance = json_encode(instanceMap);

if(file_text_eoln(saveFile))
{
file_text_close(saveFile);
var saveFile = file_text_open_write("name_players.sav");
// write that JSON to file
file_text_write_string(saveFile, JsonInstance);

// Separate each saw with a special character

file_text_write_string(saveFile, "|");
}


// close file
file_text_close(saveFile);
