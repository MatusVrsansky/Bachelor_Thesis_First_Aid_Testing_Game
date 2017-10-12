var i;
var j;
            ini_open("scores.ini")
            for (i = 0; i<10; i++)
            {
                //fill the global scores array with values from the ini file. If no values are present, then fill with name = unknown and score = 0
                global.score_array[i, 0] = ini_read_string(string(i), "Name", "unknown");
                global.score_array[i, 1] = ini_read_real(string(i), "Score", 0);
            }
            ini_close();
            
            //search for first spot where player's score is greater
            for (i = 0; i<10; i++)
            {
                //if the player's score is greater than the spot in question
                if (score > global.score_array[i, 1])
                {
                    //starting at the last element of the array, set each element to the one before it.
                    for (j = 9; j>i; j--)
                    {
                        global.score_array[j, 0] = global.score_array[j-1, 0];
                        global.score_array[j, 1] = global.score_array[j-1, 1];
                    }
                    
                    //now set the space to that of this player
                    global.score_array[i, 0] = global.input_string;
                    global.score_array[i, 1] = score;
                    break;
                }
            }
            
            //now update ini with this new array
            ini_open("scores.ini")
            for (i = 0; i<10; i++)
            {
                ini_write_string(string(i), "Name", global.score_array[i, 0]);
                ini_write_real(string(i), "Score", global.score_array[i, 1]);
            }
            ini_close();//don't forget to close
            
            //go to the room where the high scores table is shown
          
        //  room_goto(score_room);
            
            

