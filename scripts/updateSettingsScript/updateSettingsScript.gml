function updateSettings(){
	ini_open("preferences.ini");
	ini_write_real("Audio", "Music Volume", oMusicManager.musicVolume);
	ini_write_real("Audio", "SFX Volume", oMusicManager.sfxVolume);
	ini_write_real("Graphics", "Fullscreen", oEverythingManager.fullscreen);
	ini_write_real("Gameplay", "Tutorial", oEverythingManager.doTutorial);
	ini_write_real("UI","Run Count", oEverythingManager.runCount);
	ini_write_real("UI","Show Tips", oEverythingManager.showTips);
	ini_close();
}

function loadSettings() {
	if (file_exists("preferences.ini")) {
		ini_open("preferences.ini");
		oMusicManager.musicVolume = ini_read_real("Audio", "Music Volume", 3)
		oMusicManager.sfxVolume = ini_read_real("Audio", "SFX Volume", 3);
		oEverythingManager.fullscreen = ini_read_real("Graphics", "Fullscreen", false);
		oEverythingManager.doTutorial = ini_read_real("Gameplay", "Tutorial", false);
		oEverythingManager.runCount = ini_read_real("UI", "Run Count", 0);
		oEverythingManager.showTips = ini_read_real("UI", "Show Tips", true);
		ini_close();
	}
}