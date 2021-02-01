_list=scr_directory_list()
size=ds_list_size(_list)
//show_debug_message("QUANTITY OF FOLDERS aka SIZE:")
//show_debug_message(size)
count=0
posy=1
posx=1
count2=0
audiopath=0
imagepath=0
namepath=0
str=0
strlen=0
while count<size
{
count2=0
//show_debug_message(ds_list_find_value(_list, count))
_directory = ds_list_find_value(_list, count)+"\"
_list2=script_execute(scr_readonly_list,_directory)
audiopath=""
imagepath=""
namepath=""
size3=ds_list_size(_list2)
while count2<size3
{
str=ds_list_find_value(_list2, count2)
strlen=string_length(str);
//show_debug_message("STR")
//show_debug_message(str)
//show_debug_message("STRLEN")
//show_debug_message(strlen)

/*show_debug_message string_char_at(str, strlen)
show_debug_message string_char_at(str, strlen-1)
show_debug_message string_char_at(str, strlen-2)
show_debug_message string_char_at(str, strlen-1)
*/

if string_char_at(str, strlen)== "g" and string_char_at(str, strlen-1)=="g"and string_char_at(str, strlen-2)=="o"and string_char_at(str, strlen-3)=="."
{
audiopath=str
show_debug_message("audio path get")
//show_debug_message(audiopath)
}
else if string_char_at(str, strlen)== "g" and string_char_at(str, strlen-1)=="n"and string_char_at(str, strlen-2)=="p"and string_char_at(str, strlen-3)=="."
{
imagepath=str
show_debug_message("image path get")
//show_debug_message(imagepath)
}
else if string_char_at(str, strlen)== "t" and string_char_at(str, strlen-1)=="x"and string_char_at(str, strlen-2)=="t"and string_char_at(str, strlen-3)=="."
{
namepath=str
show_debug_message("name path get")
//show_debug_message(namepath)
}
count2++;
}
show_debug_message("DONE!")

global.audiopath=audiopath
global.imagepath=imagepath
global.namepath=namepath
//show_debug_message(namepath)
//show_debug_message(imagepath)
//show_debug_message(audiopath)
//put the positioning code here



inst=instance_create(64*(posx),64*(posy),obj_playbutton)
posx++;
if posx==16
{
posx=1
posy++
}

if namepath==""
{
//show_debug_message("1")
with (inst)
{
audio=global.audiopath
image=global.imagepath
name="\nameless."
}
}
else
{
//show_debug_message("2")
with (inst)
{
audio=global.audiopath
image=global.imagepath
name=global.namepath
}
}



/*show_debug_message("COUNT++")
show_debug_message(count)
show_debug_message("SIZE")
show_debug_message(size)*/
count++
}
