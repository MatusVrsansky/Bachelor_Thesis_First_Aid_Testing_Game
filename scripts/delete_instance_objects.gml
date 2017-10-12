

cislo = global.pozicia_panaka - 1;

for(var i = 0; i<=cislo ; i++)
{
show_debug_message("Cislo z ktoreho sa odstrani instancia : "+string(cislo));
with(global.array_points[i])
{
    if(instance_exists(object296))
    {
        instance_destroy();
    }


}
}

    


/*
//delete all existing doors
tR = instance_number(obj_door)
show_debug_message(string(tR)+' doors to destroy');
dC = 0

//for (i = 0; i < tR; i += 1)
//{
    with (instance_find(obj_door,i))
    {
        instance_destroy();
        show_debug_message('Destroying door at '+string(x)+','+string(y))
        other.dC += 1
    }
//}
show_debug_message(string(dC)+' doors actually destroyed.');
*/
