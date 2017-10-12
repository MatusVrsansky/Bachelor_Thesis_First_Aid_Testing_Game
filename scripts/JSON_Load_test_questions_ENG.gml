var theJsonFile = file_text_open_read("test_questions_English.json");

var theData = "";

while (!file_text_eof(theJsonFile))
{
    theData += file_text_read_string(theJsonFile);
    file_text_readln(theJsonFile);
}

file_text_close(theJsonFile);

global.theJsonMap = json_decode(theData);
var theList = ds_map_find_value(global.theJsonMap, "default");
global.totalQuestions_Eng = ds_list_size(theList);      // kolko jeto komplet otazok


global.otazky_classic_eng = ds_grid_create(global.totalQuestions_Eng,6);

for (var i = 0; i < global.totalQuestions_Eng; i++)
{
    var theEntry = ds_list_find_value(theList, i);
    
    //global.Taliansko[# i, ID] = theEntry[? "ID"];
    //global.Taliansko[# i, QUESTION_TYPE] = theEntry[? "QUESTION_TYPE"];
    
    global.otazky_classic_eng[# i, DATA_QUESTION_ENG] = theEntry[? "DATA_QUESTION_ENG"];
    global.otazky_classic_eng[# i, DATA_ANSWER_0_ENG] = theEntry[? "DATA_ANSWER_0_ENG"];
    global.otazky_classic_eng[# i, DATA_ANSWER_1_ENG] = theEntry[? "DATA_ANSWER_1_ENG"];
    global.otazky_classic_eng[# i, DATA_ANSWER_2_ENG] = theEntry[? "DATA_ANSWER_2_ENG"];
    global.otazky_classic_eng[# i, DATA_ANSWER_3_ENG] = theEntry[? "DATA_ANSWER_3_ENG"];
    global.otazky_classic_eng[# i, RIGHT_ANSWER_ENG] = theEntry[? "RIGHT_ANSWER_ENG"];
    //global.Taliansko[# i, DATA_RIGHT] = theEntry[? "DATA_RIGHT"]; 
}

   


//script_execute(generacia);





   


