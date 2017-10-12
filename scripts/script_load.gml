if (file_exists(string(global.file_name)+".sav"))
{
    //show_debug_message("sfdsfsdfsdfsd");
    var loadFile = file_text_open_read(string(global.file_name)+".sav");
    var playerJson = file_text_read_string(loadFile);
    
    var playerMap = json_decode(playerJson);
    
    // extract values
    //game_character_object.x = ds_map_find_value(playerMap, "x");
    //game_character_object.y = ds_map_find_value(playerMap, "y");
    global.pozicia_panaka = ds_map_find_value(playerMap, "actual_position");
    global.nova_pozicia_celkova = ds_map_find_value(playerMap, "total_position");
    global.input_string = ds_map_find_value(playerMap, "name_player");
    global.sekunda_mensia = ds_map_find_value(playerMap, "time_minisecond");
    global.sekunda = ds_map_find_value(playerMap, "time_second");
    global.minuta = ds_map_find_value(playerMap, "time_minuta");
    global.index = ds_map_find_value(playerMap, "index_timer");
    global.pohni_panaka = ds_map_find_value(playerMap, "move_character");
    global.cas_po_presune = ds_map_find_value(playerMap, "time_after_motion");
    global.zvoleny_panak = ds_map_find_value(playerMap, "type_character_player");
    score = ds_map_find_value(playerMap, "total_points");
    global.aktualna_hracia_miestnost = ds_map_find_value(playerMap, "actual_game_room");
    global.actual_game_object = ds_map_find_value(playerMap, "actual_game_character");
    global.spravne_odpovede = ds_map_find_value(playerMap, "count_right_answers");
    global.nespravne_odpovede = ds_map_find_value(playerMap, "count_wrong_answers");
    global.jazyk = ds_map_find_value(playerMap, "actual_game_language");
    global.index_kamera = ds_map_find_value(playerMap, "index_of_camera");
    
    global.vygenerovane_cislo = ds_map_find_value(playerMap, "generated_dice_number");
    global.stlac_button_start = ds_map_find_value(playerMap, "button_start");
    global.stlac_button_stop = ds_map_find_value(playerMap, "button_stop");
    global.used_effects = ds_map_find_value(playerMap, "use_effects");
    
    global.klikajuce_obrazky_subor_jedna_svk = ds_map_find_value(playerMap, "cislo_otazky_klikajuce_obrazky_subor_jedna_svk");
    global.klikajuce_obrazky_subor_dva_svk = ds_map_find_value(playerMap, "cislo_otazky_klikajuce_obrazky_subor_jedna_eng");
    global.klikajuce_obrazky_eng = ds_map_find_value(playerMap, "cislo_otazky_klikajuce_obrazky_eng");
    global.klasicke_otazky_pat_bodov_svk = ds_map_find_value(playerMap, "cislo_otazky_pat_bodov_svk");
    global.klasicke_otazky_pat_bodov_eng = ds_map_find_value(playerMap, "cislo_otazky_pat_bodov_eng");
    global.klasicke_otazky_styri_body_svk = ds_map_find_value(playerMap, "cislo_otazky_styri_body_svk");
    global.klasicke_otazky_styri_body_eng = ds_map_find_value(playerMap, "cislo_otazky_styri_body_eng");
    global.klasicke_otazky_tri_body_svk = ds_map_find_value(playerMap, "cislo_otazky_tri_body_svk");
    global.klasicke_otakzy_tri_body_eng = ds_map_find_value(playerMap, "cislo_otazky_tri_body_eng");
    
    
    
    if(global.pozicia_panaka <26)
    {
        game_character_object.x = ds_map_find_value(playerMap, "x");
        game_character_object.y = ds_map_find_value(playerMap, "y");
    }
    
    else if(global.pozicia_panaka > 25 && global.pozicia_panaka < 56)
    {
       game_character_object_two.x = ds_map_find_value(playerMap, "x");
       game_character_object_two.y = ds_map_find_value(playerMap, "y");
    }
    
    else
    {
       game_character_object_three.x = ds_map_find_value(playerMap, "x");
       game_character_object_three.y = ds_map_find_value(playerMap, "y");
    }
    
    file_text_close(loadFile);      // close File
    
    room_goto(global.aktualna_hracia_miestnost);
}
