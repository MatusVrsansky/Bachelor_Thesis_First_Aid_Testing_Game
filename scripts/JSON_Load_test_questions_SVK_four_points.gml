var theJsonFile = file_text_open_read("questions_classic_four_points.json");

var theData = "";

while (!file_text_eof(theJsonFile))
{
    theData += file_text_read_string(theJsonFile);
    file_text_readln(theJsonFile);
}

file_text_close(theJsonFile);

global.theJsonMap = json_decode(theData);
var theList = ds_map_find_value(global.theJsonMap, "default");
global.test_Questions_fourPoints_svk = ds_list_size(theList);      // kolko jeto komplet otazok


global.test_fourPoints_svk = ds_grid_create(global.test_Questions_fourPoints_svk,5);

for (var i = 0; i < global.test_Questions_fourPoints_svk; i++)
{
    var theEntry = ds_list_find_value(theList, i);
    
    //global.Taliansko[# i, ID] = theEntry[? "ID"];
    //global.Taliansko[# i, QUESTION_TYPE] = theEntry[? "QUESTION_TYPE"];
    
    global.test_fourPoints_svk[# i, DATA_QUESTION_FOUR_POINTS_SVK] = theEntry[? "DATA_QUESTION_FOUR_POINTS_SVK"];
    global.test_fourPoints_svk[# i, DATA_ANSWER_0_FOUR_POINTS_SVK] = theEntry[? "DATA_ANSWER_0_FOUR_POINTS_SVK"];
    global.test_fourPoints_svk[# i, DATA_ANSWER_1_FOUR_POINTS_SVK] = theEntry[? "DATA_ANSWER_1_FOUR_POINTS_SVK"];
    global.test_fourPoints_svk[# i, DATA_ANSWER_2_FOUR_POINTS_SVK] = theEntry[? "DATA_ANSWER_2_FOUR_POINTS_SVK"];
    global.test_fourPoints_svk[# i, RIGHT_ANSWER_FOUR_POINTS_SVK] = theEntry[? "RIGHT_ANSWER_FOUR_POINTS_SVK"];
}

    /*
    show_debug_message("JSON DATA ID 0,0: "+string(ds_grid_get(global.Taliansko,0,0)));
    show_debug_message("JSON DATA ID 0,1: "+string(ds_grid_get(global.Taliansko,0,1)));
    show_debug_message("JSON DATA ID 0,2: "+string(ds_grid_get(global.Taliansko,0,2)));
    show_debug_message("JSON DATA ID 0,3: "+string(ds_grid_get(global.Taliansko,0,3)));
    //show_debug_message("JSON DATA ID 0,4: "+string(ds_grid_get(global.Taliansko,0,4)));
    //show_debug_message("JSON DATA ID 0,5: "+string(ds_grid_get(global.Taliansko,0,5))); 
    //show_debug_message("JSON DATA ID 0,6: "+string(ds_grid_get(global.Taliansko,0,6))); 
    show_debug_message("JSON DATA ID 1,0: "+string(ds_grid_get(global.Taliansko,1,0)));
    show_debug_message("JSON DATA ID 1,1: "+string(ds_grid_get(global.Taliansko,1,1)));
    show_debug_message("JSON DATA ID 1,2: "+string(ds_grid_get(global.Taliansko,1,2)));
    show_debug_message("JSON DATA ID 1,3: "+string(ds_grid_get(global.Taliansko,1,3)));
    //show_debug_message("JSON DATA ID 1,4: "+string(ds_grid_get(global.Taliansko,1,4)));
    //show_debug_message("JSON DATA ID 1,5: "+string(ds_grid_get(global.Taliansko,1,5))); 
    //show_debug_message("JSON DATA ID 1,6: "+string(ds_grid_get(global.Taliansko,1,6))); 
    show_debug_message("JSON DATA ID 2,0: "+string(ds_grid_get(global.Taliansko,2,0)));
    show_debug_message("JSON DATA ID 2,1: "+string(ds_grid_get(global.Taliansko,2,1)));
    show_debug_message("JSON DATA ID 2,2: "+string(ds_grid_get(global.Taliansko,2,2)));
    show_debug_message("JSON DATA ID 2,3: "+string(ds_grid_get(global.Taliansko,2,3)));
    //show_debug_message("JSON DATA ID 2,4: "+string(ds_grid_get(global.Taliansko,2,4)));
    //show_debug_message("JSON DATA ID 2,5: "+string(ds_grid_get(global.Taliansko,2,5))); 
    //show_debug_message("JSON DATA ID 2,6: "+string(ds_grid_get(global.Taliansko,2,6))); 
    */


//script_execute(generacia);





   


