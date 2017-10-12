if(global.vygenerovane_cislo == 6)      // znamena, ze hod sa opakuje
{
    global.stlac_button_start = true;  

    with(hod_object)
    {
        sprite_index = default_hod;
    }

    hod_object.visible = true;
                            
    global.zmena_pozicie = false;        // prehodi nas do skriptov s otazkami
    global.pohni_panaka = false;
    global.index = 0;
    global.array_seconds[1] = 0;
    
    start_kocka_button.visible = true;
 //   stop_kocka_button.visible = false;
 
    
}

else
{   
    with(hod_object)
    {
        sprite_index = default_hod;
    }

    hod_object.visible = true;
                            
    global.zmena_pozicie = true;        // prehodi nas do skriptov s otazkami
    global.pohni_panaka = false;
    global.array_Alarms[1] = false;    
    global.array_seconds[1] = 0;
    global.prehladavaj_subory = true;

}

