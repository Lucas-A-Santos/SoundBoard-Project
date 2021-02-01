//directory_list(directory)
var _directory = argument0;
var _list      = ds_list_create();
var _finished  = false
var _firstFile = file_find_first(_directory+"*", fa_readonly);

if string_length(_firstFile)==0{
return _list}


if file_exists(_directory+_firstFile){
    ds_list_add(_list,_directory+_firstFile);
}
while(!_finished){
    var _file = file_find_next();
    
    //show_debug_message("FILE NAME:")
    //show_debug_message(_file)
    //show_debug_message("FILE LENGHT:")
    //show_debug_message(string_length(_file))
        
    if string_length(_file)==0{
        _finished = true;
        break;
    }else{
        var _fullPath = _directory+_file
        if file_exists(_fullPath){
            //show_debug_message("FULL PATH:")
            //show_debug_message(_fullPath)
            ds_list_add(_list,_fullPath);
        }
    }
}
file_find_close()
//show_debug_message("WAY AFTER FIRST FILE CHECK")
size2=ds_list_size(_list)
//show_debug_message("QUANTITY OF FILES:")
//show_debug_message(size2)
return _list;
