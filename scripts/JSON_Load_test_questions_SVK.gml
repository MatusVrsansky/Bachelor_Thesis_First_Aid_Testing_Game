var theJsonFile = file_text_open_read("test_questions_Slovak.json");

var theData = "";

while (!file_text_eof(theJsonFile))
{
    theData += file_text_read_string(theJsonFile);
    file_text_readln(theJsonFile);
}

file_text_close(theJsonFile);

global.theJsonMap = json_decode(theData);
var theList = ds_map_find_value(global.theJsonMap, "default");
global.totalQuestions = ds_list_size(theList);      // kolko jeto komplet otazok



global.Taliansko = ds_grid_create(global.totalQuestions,6);

for (var i = 0; i < global.totalQuestions; i++)
{
    var theEntry = ds_list_find_value(theList, i);
    
    //global.Taliansko[# i, ID] = theEntry[? "ID"];
    //global.Taliansko[# i, QUESTION_TYPE] = theEntry[? "QUESTION_TYPE"];
    
    global.Taliansko[# i, DATA_QUESTION] = theEntry[? "DATA_QUESTION"];
    global.Taliansko[# i, DATA_ANSWER_0] = theEntry[? "DATA_ANSWER_0"];
    global.Taliansko[# i, DATA_ANSWER_1] = theEntry[? "DATA_ANSWER_1"];
    global.Taliansko[# i, DATA_ANSWER_2] = theEntry[? "DATA_ANSWER_2"];
    global.Taliansko[# i, DATA_ANSWER_3] = theEntry[? "DATA_ANSWER_3"];
    global.Taliansko[# i, RIGHT_ANSWER] = theEntry[? "RIGHT_ANSWER"];
    //global.Taliansko[# i, DATA_RIGHT] = theEntry[? "DATA_RIGHT"]; 
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





   


