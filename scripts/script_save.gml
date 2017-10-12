// delete file if exists

nazov_suboru = global.input_string;


if (file_exists(nazov_suboru+".sav"))
{
    file_delete(nazov_suboru+".sav");
}

// open file
var saveFile = file_text_open_write(nazov_suboru+".sav");

// get player
var instance = instance_find(game_character_object,0);


// create a ds map
var instanceMap = ds_map_create();
ds_map_add(instanceMap, "x", instance.x);
ds_map_add(instanceMap, "y", instance.x);
ds_map_add(instanceMap, "actual_position", global.pozicia_panaka);
ds_map_add(instanceMap, "total_position", global.nova_pozicia_celkova);
ds_map_add(instanceMap, "name_player", global.input_string);
ds_map_add(instanceMap, "time_minisecond", global.sekunda_mensia);
ds_map_add(instanceMap, "time_second", global.sekunda);
ds_map_add(instanceMap, "time_minuta", global.minuta);
ds_map_add(instanceMap, "index_timer", global.index);
ds_map_add(instanceMap, "move_character", global.pohni_panaka);
ds_map_add(instanceMap, "time_after_motion", global.cas_po_presune);
ds_map_add(instanceMap, "type_character_player", global.zvoleny_panak);
ds_map_add(instanceMap, "total_points", score);


// convert ds map to JSON
var JsonInstance = json_encode(instanceMap);

// write that JSON to file
file_text_write_string(saveFile,JsonInstance);

// separate data
//file_text_write_string(saveFile, "|");

// close file
file_text_close(saveFile);
