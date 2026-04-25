function updateSettings(){
	ini_open("preferences.ini");
	ini_write_real("Audio", "Music Volume", oMusicManager.musicVolume);
	ini_write_real("Audio", "SFX Volume", oMusicManager.sfxVolume);
	ini_write_real("Graphics", "Fullscreen", oEverythingManager.fullscreen);
	ini_close();
}

function loadSettings() {
	if (file_exists("preferences.ini")) {
		ini_open("preferences.ini");
		oMusicManager.musicVolume = ini_read_real("Audio", "Music Volume", 3)
		oMusicManager.sfxVolume = ini_read_real("Audio", "SFX Volume", 3);
		oEverythingManager.fullscreen = ini_read_real("Graphics", "Fullscreen", oEverythingManager.fullscreen);
		ini_close();
	}
}