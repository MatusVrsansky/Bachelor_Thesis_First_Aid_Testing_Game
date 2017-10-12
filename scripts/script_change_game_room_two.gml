if(global.pozicia_panaka < 26)
{
    global.aktualna_hracia_miestnost = test_room_2;
    global.actual_game_object = game_character_object;
    room_goto(global.aktualna_hracia_miestnost);
}

else if(global.pozicia_panaka > 55)
{
    global.aktualna_hracia_miestnost = hracia_miestnost_3;
    global.actual_game_object = game_character_object_three;
    room_goto(global.aktualna_hracia_miestnost);
}
