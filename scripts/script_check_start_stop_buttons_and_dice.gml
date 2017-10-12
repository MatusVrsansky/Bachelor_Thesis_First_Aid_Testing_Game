
if(global.pohni_panaka == true)
{
    global.zmena_pozicie = false;
    global.stlac_button_stop = false;  // toto by som presunol do STEPU na pohyb panaka
   global.stlac_button_start = false;  // toto by som presunol do STEPU na pohyb panaka


   with(hod_object)
    {
        sprite_index = global.array_dices[global.vygenerovane_cislo];       // vykresli sa kocka od 1 - 6
        
       //if(global.nova_pozicia_celkova <6)
      // {
            hod_object.x = hod_object.x + 60;       // dal som o 20 viacej na hod_object.x
            hod_object.y = hod_object.y + 24;
            image_xscale = 0.34;
            image_yscale = 0.30;                                                // nove pozicie objektu aby sa vykreslil na spravne miesto
      // }
    }
}
      
