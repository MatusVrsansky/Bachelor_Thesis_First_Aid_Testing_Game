zhodli_sa_subory = false;

if (file_exists("count_saves.sav"))         //  na nacitanie poctu ulozenych hier
{
    var loadFile = file_text_open_read("count_saves.sav");
    var playerJson = file_text_read_string(loadFile);
    
    var playerMap = json_decode(playerJson);
    
    
    global.pocet_ulozeni = ds_map_find_value(playerMap, "count");
    
    file_text_close(loadFile);      // close File
}


 

// chyba ti este file na ulozenie poctu ulozeni do count_saves 


global.pocet_ulozeni += 1;          // znamena ze ak by sa nacitala 0, bude prve ulozenie, nacita sa dvojka bude druhe ulozenie ...

if(global.pocet_ulozeni <= 10)      // sem sa nam ulozi pocet ulozeni
{
    if (file_exists("count_saves.sav"))
    {
        file_delete("count_saves.sav");
    }

    // open file
    var saveFile = file_text_open_write("count_saves.sav");
    
    // create a ds map
    var instanceMap = ds_map_create();
    
    ds_map_add(instanceMap, "count", global.pocet_ulozeni);
    
    
     // convert ds map to JSON
    var JsonInstance = json_encode(instanceMap);

    // write that JSON to file
    file_text_write_string(saveFile,JsonInstance);

    // separate data
    //file_text_write_string(saveFile, "|");

    // close file
    file_text_close(saveFile);
}

else    // pouzije sa cyklus na vymazanie vsertkycyh suborov 
{  
    for(var i=1;i<=10;i++)
    {
        file_delete(string(i)+".sav");
    }
    
    global.pocet_ulozeni = 1;
    
    if (file_exists("count_saves.sav"))         //  na nacitanie poctu ulozenych hier
    {
        var loadFile = file_text_open_read("count_saves.sav");
        var playerJson = file_text_read_string(loadFile);
        
        var playerMap = json_decode(playerJson);
        
        
        global.pocet_ulozeni = ds_map_find_value(playerMap, "count");
        
        file_text_close(loadFile);      // close File
    }
}




// tu sa prebehnu vsetky subory ktore existuju, aby sa pod jednym menom nevytvorilo viacej ulozenych suborov
for(i = 1; i <= 10; i++)
{
    if (file_exists(string(i)+".sav"))
    {
        var loadFile = file_text_open_read((string(i)+".sav"));
        var playerJson = file_text_read_string(loadFile);
    
        var playerMap = json_decode(playerJson);
    
    
        over_meno = ds_map_find_value(playerMap, "name_player");
        
        file_text_close(loadFile);      // close File
        
        if(global.input_string == over_meno)
        {
            zhodli_sa_subory = true;
             file_delete(string(i)+".sav");
             var saveFile = file_text_open_write(string(i)+".sav");

    // get player
            if(room = test_room_2)
            {
                var instance = instance_find(game_character_object,0);
            }
    
            else if(room == hracia_miestnost_2)
            {
                var instance = instance_find(game_character_object_two,0);
            }
    
            else
            {
                var instance = instance_find(game_character_object_three,0);
            }
            
            var time_save = string(current_day) + "/" + string (current_month) + "/" + string(current_year) + 
            " "+string(current_hour) + ":" + string(current_minute) + "." + string(current_second);
    
            // create a ds map
            var instanceMap = ds_map_create();
            ds_map_add(instanceMap, "x", instance.x);
            ds_map_add(instanceMap, "y", instance.x);
            ds_map_add(instanceMap, "actual_game_character", instance);
            ds_map_add(instanceMap, "actual_room", room);
            ds_map_add(instanceMap, "actual_position", global.pozicia_panaka);
            ds_map_add(instanceMap, "total_position", global.nova_pozicia_celkova);
            ds_map_add(instanceMap, "name_player", over_meno);
            ds_map_add(instanceMap, "time_second", global.sekunda);
            ds_map_add(instanceMap, "time_minuta", global.minuta);
            ds_map_add(instanceMap, "index_timer", global.index);
            ds_map_add(instanceMap, "move_character", global.pohni_panaka);
            ds_map_add(instanceMap, "time_after_motion", global.cas_po_presune);
            ds_map_add(instanceMap, "type_character_player", global.zvoleny_panak);
            ds_map_add(instanceMap, "total_points", score);
            ds_map_add(instanceMap, "day_and_time", time_save);
            ds_map_add(instanceMap, "actual_game_room", global.aktualna_hracia_miestnost);
            ds_map_add(instanceMap, "count_right_answers", global.spravne_odpovede);
            ds_map_add(instanceMap, "count_wrong_answers", global.nespravne_odpovede);
            ds_map_add(instanceMap, "actual_game_language", global.jazyk);
            ds_map_add(instanceMap, "index_of_camera", global.index_kamera);
            
            
            ds_map_add(instanceMap, "generated_dice_number", global.vygenerovane_cislo);
            ds_map_add(instanceMap, "button_start", global.stlac_button_start);
            ds_map_add(instanceMap, "button_stop", global.stlac_button_stop);
            ds_map_add(instanceMap, "use_effects", global.used_effects);
    
            
            ds_map_add(instanceMap, "cislo_otazky_klikajuce_obrazky_subor_jedna_svk",  global.klikajuce_obrazky_subor_jedna_svk);
            ds_map_add(instanceMap, "cislo_otazky_klikajuce_obrazky_eng", global.klikajuce_obrazky_eng);
            ds_map_add(instanceMap, "cislo_otazky_pat_bodov_svk", global.klasicke_otazky_pat_bodov_svk);
            ds_map_add(instanceMap, "cislo_otazky_pat_bodov_eng", global.klasicke_otazky_pat_bodov_eng);
            
             
            
            
            // convert ds map to JSON
            var JsonInstance = json_encode(instanceMap);
        
            // write that JSON to file
            file_text_write_string(saveFile,JsonInstance);
        
            // separate data
            //file_text_write_string(saveFile, "|");
        
            // close file
            file_text_close(saveFile);
        }
    }   
    
  
    

}

if(zhodli_sa_subory == false)
{
 var saveFile = file_text_open_write(string(global.pocet_ulozeni)+".sav");

    // get player
            if(room = test_room_2)
            {
                var instance = instance_find(game_character_object,0);
            }
    
            else if(room == hracia_miestnost_2)
            {
                var instance = instance_find(game_character_object_two,0);
            }
    
            else
            {
                var instance = instance_find(game_character_object_three,0);
            }
            
            var time_save = string(current_day) + "/" + string (current_month) + "/" + string(current_year) + 
            " "+string(current_hour) + ":" + string(current_minute) + "." + string(current_second);
    
            // create a ds map
            var instanceMap = ds_map_create();
            ds_map_add(instanceMap, "x", instance.x);
            ds_map_add(instanceMap, "y", instance.x);
            ds_map_add(instanceMap, "actual_game_character", instance);
            ds_map_add(instanceMap, "actual_room", room);
            ds_map_add(instanceMap, "actual_position", global.pozicia_panaka);
            ds_map_add(instanceMap, "total_position", global.nova_pozicia_celkova);
            ds_map_add(instanceMap, "name_player", global.input_string);
            ds_map_add(instanceMap, "time_second", global.sekunda);
            ds_map_add(instanceMap, "time_minuta", global.minuta);
            ds_map_add(instanceMap, "index_timer", global.index);
            ds_map_add(instanceMap, "move_character", global.pohni_panaka);
            ds_map_add(instanceMap, "time_after_motion", global.cas_po_presune);
            ds_map_add(instanceMap, "type_character_player", global.zvoleny_panak);
            ds_map_add(instanceMap, "total_points", score);
            ds_map_add(instanceMap, "day_and_time", time_save);
            ds_map_add(instanceMap, "actual_game_room", global.aktualna_hracia_miestnost);
            ds_map_add(instanceMap, "count_right_answers", global.spravne_odpovede);
            ds_map_add(instanceMap, "count_wrong_answers", global.nespravne_odpovede);
            ds_map_add(instanceMap, "actual_game_language", global.jazyk);
            
            ds_map_add(instanceMap, "generated_dice_number", global.vygenerovane_cislo);
            ds_map_add(instanceMap, "button_start", global.stlac_button_start);
            ds_map_add(instanceMap, "button_stop", global.stlac_button_stop);
            ds_map_add(instanceMap, "use_effects", global.used_effects);
            
            ds_map_add(instanceMap, "cislo_otazky_klikajuce_obrazky_subor_jedna_svk",  global.klikajuce_obrazky_subor_jedna_svk);
            ds_map_add(instanceMap, "cislo_otazky_klikajuce_obrazky_eng", global.klikajuce_obrazky_eng);
            ds_map_add(instanceMap, "cislo_otazky_pat_bodov_svk", global.klasicke_otazky_pat_bodov_svk);
            ds_map_add(instanceMap, "cislo_otazky_pat_bodov_eng", global.klasicke_otazky_pat_bodov_eng);
    

            // convert ds map to JSON
            var JsonInstance = json_encode(instanceMap);
        
            // write that JSON to file
            file_text_write_string(saveFile,JsonInstance);
        
            // separate data
            //file_text_write_string(saveFile, "|");
        
            // close file
            file_text_close(saveFile);
}       








