if (file_exists("Save.sav")) file_delete("Save.sav")
ini_open("Save.sav")
ini_write_string("Save1","testa","testa")
ini_close()

