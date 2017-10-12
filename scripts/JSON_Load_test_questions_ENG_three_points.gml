var theJsonFile = file_text_open_read("questions_classic_three_points_English.json");

var theData = "";

while (!file_text_eof(theJsonFile))
{
    theData += file_text_read_string(theJsonFile);
    file_text_readln(theJsonFile);
}

file_text_close(theJsonFile);

global.theJsonMap = json_decode(theData);
var theList = ds_map_find_value(global.theJsonMap, "default");
global.test_Questions_threePoints_eng = ds_list_size(theList);      // kolko jeto komplet otazok


global.test_threePoints_eng = ds_grid_create(global.test_Questions_threePoints_eng,4);

for (var i = 0; i < global.test_Questions_threePoints_eng; i++)
{
    var theEntry = ds_list_find_value(theList, i);
    
    //global.Taliansko[# i, ID] = theEntry[? "ID"];
    //global.Taliansko[# i, QUESTION_TYPE] = theEntry[? "QUESTION_TYPE"];
    
    global.test_threePoints_eng[# i, DATA_QUESTION_THREE_POINTS_ENG] = theEntry[? "DATA_QUESTION_THREE_POINTS_ENG"];
    global.test_threePoints_eng[# i, DATA_ANSWER_0_THREE_POINTS_ENG] = theEntry[? "DATA_ANSWER_0_THREE_POINTS_ENG"];
    global.test_threePoints_eng[# i, DATA_ANSWER_1_THREE_POINTS_ENG] = theEntry[? "DATA_ANSWER_1_THREE_POINTS_ENG"];
    global.test_threePoints_eng[# i, RIGHT_ANSWER_THREE_POINTS_ENG] = theEntry[? "RIGHT_ANSWER_THREE_POINTS_ENG"];
    //global.Taliansko[# i, DATA_RIGHT] = theEntry[? "DATA_RIGHT"]; 
}





   


