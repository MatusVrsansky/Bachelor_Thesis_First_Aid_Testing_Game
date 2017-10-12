// rata medzery v zadavani mena

global.medzera = 0;

// premenmna ktora bude sluzit na to, aby sa nam nevymazalo meno, ked budeme chciet sa vratit do hrania
global.stlacil_ok = false;

// staticka kocka ktora bude ukazovat hodnoty 1 az 6
global.static_dice_visible = false;

//f sdfd sf
global.theJesonMap = 0;


// premenna na efekty v hre

global.used_effects = true;


// uklada miestnost, ktora bola predchadzajuca
global.previous_room = room0;


// premenna ktora otvori subor v loade, bud subor s nazvom 1,2,3..
global.file_name = 0;

// aktualny panak

global.actual_game_object = game_character_object;



// zobrazuje aktualnu miestnost, v ktorej sa bude hrat

global.aktualna_hracia_miestnost = test_room_2;

global.zmena_miestnosti = false;

// v tomto bloku sa vsetko rozhoduje, co kde sa bude vykonavat



// DOlezitaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa premenna
global.prehladavaj_subory = false;


// na nacitanie bitmaps

global.theJsonMap = "";


// nastavi sa celkovy pocet bodov na zaciatku

score = 0;

global.spravne_odpovede = 0;
global.nespravne_odpovede = 0;

// premenna na zaklade ktorej sa nam vykresli bud anglicky alebo slovensky jazyk
//global.jazyk = "svk";


// premenna na zaklade ktorej mame ist do miestnosti kam chceme

global.next_room = room0;       // na zaciatku bude reprezentovat uvodnu miestnost



// na high score
global.meno_hraca = "";


// zadanie mena
global.input_string = "";
global.blank_string = "";
global.twenty_characters_string = "12345678901234567890";

// timer v hlavnej miestnosti
global.minuta = 2;
global.sekunda = 60;
global.sekunda_mensia = 10;

// na posunutie kamery
global.posun_kameru = false;

// nastavenie kamery po zmene miestnosti
global.came_view_xview = 1283;

// index kamery, ktora sa pouziva
global.index_kamera = 0;

// premenna na priratavanie bodov
global.pocet_bodov = 0;
global.body_celkovy_pocet = 0;

// pauza
global.paused = false;


// save
global.saved = false;
global.pocet_ulozeni = 0;

/*
// na posun kamery
global.posun_kamera_bod_16 = false;
global.posun_kamera_bod_17 = false;
global.posun_kamera_bod_18 = false;
*/
// na vykreslenie pismen A,B,C,D k buttonom

global.a = "a";
global.b = "b";
global.c = "c";
global.d = "d";



////////////////////////////////////////////////////////////////// nova verzia hry

// ulozenie vygenerovaneho cisla

global.vygenerovane_cislo = 0;


// zabrani stlaceniu buttona kym sa nepresunie panacik

global.stlac_button_hod = true;
global.stlac_button_start = true;
global.stlac_button_stop = false;


// pole kociek 1 - 6 

global.array_dices[1] = dice_1;             // vynimocne davam pole od indexu dva, aby som to rychlo dokazal pochopit
global.array_dices[2] = dice_2; 
global.array_dices[3] = dice_3;
global.array_dices[4] = dice_4;
global.array_dices[5] = dice_5;
global.array_dices[6] = dice_6;




// pozicia panaka, zacina sa na nule

global.pozicia_panaka = 0;
global.nova_pozicia_celkova = 0;
global.pohni_panaka = false;
global.cas_po_presune = 0;
global.index = 0;





// pole bodov kde sa moze dostat panak



global.array_points[0] = bod_0;
global.array_points[1] = bod_1;
global.array_points[2] = bod_2;
global.array_points[3] = bod_3;
global.array_points[4] = bod_4;
global.array_points[5] = bod_5;



global.array_points[6] = bod_6;
global.array_points[7] = bod_7;
global.array_points[8] = bod_8;
global.array_points[9] = bod_9;
global.array_points[10] = bod_10;
global.array_points[11] = bod_11;
global.array_points[12] = bod_12;
global.array_points[13] = bod_13;
global.array_points[14] = bod_14;
global.array_points[15] = bod_15;
global.array_points[16] = bod_16;
global.array_points[17] = bod_17;
global.array_points[18] = bod_18;
global.array_points[19] = bod_19;
global.array_points[20] = bod_20;
global.array_points[21] = bod_21;
global.array_points[22] = bod_22;
global.array_points[23] = bod_23;
global.array_points[24] = bod_24;
global.array_points[25] = bod_25;
global.array_points[26] = bod_26;
global.array_points[27] = bod_27;
global.array_points[28] = bod_28;
global.array_points[29] = bod_29;
global.array_points[30] = bod_30;
global.array_points[31] = bod_31;
global.array_points[32] = bod_32;
global.array_points[33] = bod_33;
global.array_points[34] = bod_34;
global.array_points[35] = bod_35;
global.array_points[36] = bod_36;
global.array_points[37] = bod_37;
global.array_points[38] = bod_38;
global.array_points[39] = bod_39;
global.array_points[40] = bod_40;
global.array_points[41] = bod_41;
global.array_points[42] = bod_42;
global.array_points[43] = bod_43;
global.array_points[44] = bod_44;
global.array_points[45] = bod_45;
global.array_points[46] = bod_46;
global.array_points[47] = bod_47;
global.array_points[48] = bod_48;
global.array_points[49] = bod_49;
global.array_points[50] = bod_50;
global.array_points[51] = bod_51;
global.array_points[52] = bod_52;
global.array_points[53] = bod_53;
global.array_points[54] = bod_54;
global.array_points[55] = bod_55;
global.array_points[56] = bod_56;
global.array_points[57] = bod_57;
global.array_points[58] = bod_58;
global.array_points[59] = bod_59;
global.array_points[60] = bod_60;
global.array_points[61] = bod_61;
global.array_points[62] = bod_62;
global.array_points[63] = bod_63;
global.array_points[64] = bod_64;
global.array_points[65] = bod_65;
global.array_points[66] = bod_66;
global.array_points[67] = bod_67;
global.array_points[68] = bod_68;
global.array_points[69] = bod_69;
global.array_points[70] = bod_70;

// ked ideme do miestnosti Question room, aby panacik bol na mieste kde ma byt
//global.pozicia_panacik_v_pozadi = 0;


// aby sa vykreslili objekty ked zodpovedame na otazku
global.zobraz_test_objects = false;




//  generuje sa cislo otazky ktore sa zobrazi

global.generovane_cislo_otazka = 0;


// zobrazi sa otazka

global.zobraz_otazku = false;


// ulozi sa zvoleny panacik ako objekt s ktorym budeme hrat

global.zvoleny_panak = 0;       // ak bude 1, vyberie sa prvy panak v poradi , atd


// ulozenie pozicie panaka, ked opustime miestnost

//global.pozicia_x = 0;
//global.pozicia_y = 0;




global.docasna_pozicia = 0;

global.zmen_miestnost = true;


global.pomocna = 0;


// aby sme sa mohli vratit do hracej miesnosti
//global.pohni_panaka = false;







// // premenne na generovanie otazok z JSON file

global.cislo_otazky = 0;




// na JSON file na klasicke otazky
global.textik_otazka = "";
global.a_odp = "";
global.b_odp = "";
global.c_odp = "";
global.d_odp = "";


// na JSON file na klikajuce obrazky

//global.miestnost_otazka = 0;                // na zaklade neho pojdeme bud do clicking_room1, clicling_room2 .. atd
global.picture_otazka = "";


global.result_answer = "";
global.number_question = 0;




// zmena pozicie po odpovedi na klikajuce obrazky
global.zmen_poziciu = false;





// na generovanie otazok aby sa ani neopakovali


global.klikajuce_obrazky_subor_jedna_svk = 0;

global.klikajuce_obrazky_subor_dva_svk = 0;

global.klikajuce_obrazky_eng = 0;

global.klasicke_otazky_pat_bodov_svk = 0;

global.klasicke_otazky_pat_bodov_eng = 0;

global.klasicke_otazky_styri_body_svk = 0;

global.klasicke_otazky_styri_body_eng = 0;

global.klasicke_otazky_tri_body_svk = 0;

global.klasicke_otazky_tri_body_eng = 0;



// aby sa vedelo, ci sa vygeneroval klikajuci subor na svk otazky 1 alebo 2
global.theJsonFile = "";


// ked sme odpovedali na klasicku otazku

global.odpovedal_na_otazku = false;

global.odpoved_po_otazke = "";

global.spravna_odpoved = 0;

global.spravna_odpoved_otazka = "";

// ak sa dostane na kamene s klasickymi otazkami, generovanie kocky sa zastavi
//global.collision_question_stone = false;



// na Alarmy

global.array_Alarms[0] = false;
global.array_Alarms[1] = false;
global.array_Alarms[2] = false;
global.array_Alarms[3] = false;
global.array_Alarms[4] = false;
global.array_Alarms[5] = false;


global.array_seconds[0] = 0;
global.array_seconds[1] = 0;
global.array_seconds[2] = 0;
global.array_seconds[3] = 0;
global.array_seconds[4] = 0;
global.array_seconds[5] = 0;

// ked sa pozicia zmeni, aby nas Skript zistil ci mame prejst do inej miestnosti alebo nie
global.zmena_pozicie = false;
global.povodna_pozicia = 0;





















ini_open("scores.ini");

for(i = 0; i < 10; i++)
{
    switch(global.jazyk)
    {
        case "svk" :    global.score_array[i,0] = "neuložený"; break;    
        default :       global.score_array[i,0] = "unknown";   break;            
    }
    
    global.score_array[i,1] = 0;
    
}



//ini_open("loads.ini");


var default_time = "1/1201720:00:00";
for(i = 0; i < 12; i++)
{
    switch(global.jazyk)
    {
       case "svk" : global.load_table_array[i,0] = "neuložený"; break;
       default    : global.load_table_array[i,0] = "unknown"; break;
    }
    
    //global.load_table_array[i,0] = "unknown";
    global.load_table_array[i,1] = default_time;

}


for(i = 0; i < 10; i++)
{
    switch(global.jazyk)
    {
       case "svk" : global.array_load[i,0] = "neuložený"; break;
       default    : global.array_load[i,0] = "unknown"; break;
    }
    
    global.array_load[i,1] = 0;
}
