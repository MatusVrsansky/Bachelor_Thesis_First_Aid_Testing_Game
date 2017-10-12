
//global.id_otazka = ds_grid_get(global.Taliansko,global.cislo_otazky,0);
global.textik_otazka = ds_grid_get(global.test_fourPoints_svk,global.klasicke_otazky_pat_bodov_svk,0);
global.a_odp = ds_grid_get(global.test_fourPoints_svk,global.klasicke_otazky_pat_bodov_svk,1);
global.b_odp = ds_grid_get(global.test_fourPoints_svk,global.klasicke_otazky_pat_bodov_svk,2);
global.c_odp = ds_grid_get(global.test_fourPoints_svk,global.klasicke_otazky_pat_bodov_svk,3);
global.spravna_odpoved = ds_grid_get(global.test_fourPoints_svk,global.klasicke_otazky_pat_bodov_svk,4);


global.klasicke_otazky_pat_bodov_svk += 1;


if(global.klasicke_otazky_pat_bodov_svk > 19)
{
    global.klasicke_otazky_pat_bodov_svk = 0;
}

else
{
    //
}

