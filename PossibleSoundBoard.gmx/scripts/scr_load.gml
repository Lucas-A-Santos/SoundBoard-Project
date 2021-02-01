if file_exists("Save.sav")
{
    ini_open("Save.sav")
    show_debug_message(ini_read_string("Save1","testa","no"))
    ini_close()
}
