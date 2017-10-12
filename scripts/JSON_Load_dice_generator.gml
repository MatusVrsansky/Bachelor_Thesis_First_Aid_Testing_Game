var theJsonFile = file_text_open_read("dice_generator.json");

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



global.Taliansko = ds_grid_create(global.totalQuestions,1);

for (var i = 0; i < global.totalQuestions; i++)
{
    var theEntry = ds_list_find_value(theList, i);
    
    global.Taliansko[# i, NUMBER] = theEntry[? "NUMBER"];
    //global.Taliansko[# i, DATA_RIGHT] = theEntry[? "DATA_RIGHT"]; 
}

    




   


