prva_kamera = 0;
posun = 0;
dalsi = 0;
posledna_kamera = 0;

if(global.pozicia_panaka >= 6 && prva_kamera == 0 && global.pozicia_panaka < 7 || global.pozicia_panaka > 25 && global.pozicia_panaka <= 32 && prva_kamera == 0 ||
global.pozicia_panaka > 55 && global.pozicia_panaka <= 63 && prva_kamera == 0 )
{
    global.index_kamera = 0;
    
    view_visible[0] = true;
    view_visible[1] = true;
    view_visible[2] = false;
    view_visible[4] = false;
    
    view_visible[3] = false;
    view_visible[5] = false;
    
    view_visible[6] = false;
    view_visible[7] = false;
    
    prva_kamera = 1;
     posun = 1;
     dalsi = 0;
     posledna_kamera = 0;
    
}



else if(global.pozicia_panaka >= 7 && posun == 0 && global.pozicia_panaka <= 12 || global.pozicia_panaka >= 33 && global.pozicia_panaka <= 38 && posun == 0 ||
global.pozicia_panaka >= 63 && global.pozicia_panaka <= 68 && posun == 0)
    {
        global.index_kamera = 2;
    
    
        view_visible[0] = false;
        view_visible[1] = false;
    
        view_visible[2] = true;
        view_visible[4] = true;
    
        view_visible[3] = false;
        view_visible[5] = false;
    
        view_visible[6] = false;
        view_visible[7] = false;    
   
        script_execute(script_move_panel_objects);    
        
        prva_kamera = 0;
        posun = 1;
        dalsi = 0;
        posledna_kamera = 0;
    }

        else if(global.pozicia_panaka >= 13 && dalsi == 0 && global.pozicia_panaka <= 18 || global.pozicia_panaka >= 39 && global.pozicia_panaka <= 47 && dalsi == 0)
        {
    
            global.index_kamera = 3;
    
            view_visible[0] = false;
            view_visible[1] = false;
            view_visible[2] = false;
            view_visible[4] = false;
    
            view_visible[3] = true;
            view_visible[5] = true;
            script_execute(script_move_panel_objects);  
   
            prva_kamera = 0;
            dalsi = 1;
            posun = 0;
            posledna_kamera = 0;

        }

        else if(global.pozicia_panaka >= 19 && posledna_kamera == 0 && global.pozicia_panaka <= 25 || global.pozicia_panaka >= 48 && global.pozicia_panaka <= 55 && posledna_kamera == 0)
        {
            global.index_kamera = 7;        // vyuzivame potom aby sme vedeli zarovnat objekty na stred miestnosti !!!

            view_visible[0] = false;
            view_visible[1] = false;
            view_visible[2] = false;
            view_visible[4] = false;
    
            view_visible[3] = false;
            view_visible[5] = false;
    
            view_visible[6] = true;
            view_visible[7] = true;
    
            script_execute(script_move_panel_objects);  
    
            prva_kamera = 0;    
            dalsi = 0;
            posun = 0;
            posledna_kamera = 1;

        }




























