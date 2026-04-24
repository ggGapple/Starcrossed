function updateSettings(){
	ini_open("preferences.ini");
	ini_write_real("Audio", "Music Muted", oMusicManager.muted);
	ini_close();
}