

//global.id_otazka = ds_grid_get(global.Taliansko,global.cislo_otazky,0);
global.textik_otazka = ds_grid_get(global.otazky_classic_eng,global.klasicke_otazky_pat_bodov_eng,0);
global.a_odp = ds_grid_get(global.otazky_classic_eng,global.klasicke_otazky_pat_bodov_eng,1);
global.b_odp = ds_grid_get(global.otazky_classic_eng,global.klasicke_otazky_pat_bodov_eng,2);
global.c_odp = ds_grid_get(global.otazky_classic_eng,global.klasicke_otazky_pat_bodov_eng,3);
global.d_odp = ds_grid_get(global.otazky_classic_eng,global.klasicke_otazky_pat_bodov_eng,4);
global.spravna_odpoved = ds_grid_get(global.otazky_classic_eng,global.klasicke_otazky_pat_bodov_eng,5);


global.klasicke_otazky_pat_bodov_eng += 1;


if(global.klasicke_otazky_pat_bodov_eng > 10)
{
    global.klasicke_otazky_pat_bodov_eng = 0;
}

else
{
    // 
}




