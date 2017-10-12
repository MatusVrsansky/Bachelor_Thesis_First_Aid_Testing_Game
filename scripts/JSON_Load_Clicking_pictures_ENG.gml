var theJsonFile = file_text_open_read("questions_klikajuce_obrazky_ENG.json");

var theData = "";

while (!file_text_eof(theJsonFile))
{
    theData += file_text_read_string(theJsonFile);
    file_text_readln(theJsonFile);
}

file_text_close(theJsonFile);

global.theJsonMap = json_decode(theData);
var theList = ds_map_find_value(global.theJsonMap, "default");
global.total_questions_click_eng = ds_list_size(theList);      // kolko jeto komplet otazok



global.Clicking_pictures_eng = ds_grid_create(global.total_questions_click_eng,3);

for (var i = 0; i < global.total_questions_click_eng; i++)
{
    var theEntry = ds_list_find_value(theList, i);
    
    //global.Taliansko[# i, ID] = theEntry[? "ID"];
    //global.Taliansko[# i, QUESTION_TYPE] = theEntry[? "QUESTION_TYPE"];
    
    global.Clicking_pictures_eng[# i, PICTURE_QUESTION_ENG] = theEntry[? "PICTURE_QUESTION_ENG"];
    global.Clicking_pictures_eng[# i, NUMBER_QUESTION_ENG] = theEntry[? "NUMBER_QUESTION_ENG"];
    global.Clicking_pictures_eng[# i, PICTURE_RIGHT_ANSWER_ENG] = theEntry[? "PICTURE_RIGHT_ANSWER_ENG"];
    //global.Taliansko[# i, DATA_RIGHT] = theEntry[? "DATA_RIGHT"]; 
}
