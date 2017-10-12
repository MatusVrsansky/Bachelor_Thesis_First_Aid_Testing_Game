if(file_exists("save_language.sav"))
{
    var loadFile = file_text_open_read("save_language.sav");
    var playerJson = file_text_read_string(loadFile);
    
    var playerMap = json_decode(playerJson);


    // extract values
    
    global.jazyk = ds_map_find_value(playerMap, "game_language");          // nacita sa ulozene meno hraca po restartovani hry

    file_text_close(loadFile);
}

else
{
    // subor sa nenacita
}
