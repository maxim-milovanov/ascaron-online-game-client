-----------------------------------------------------------------------
-- Settings
-----------------------------------------------------------------------
frmSettings = UI_CreateForm("frmSettings", FALSE, 700, 500, 0, 0, TRUE, FALSE)
UI_ShowForm(frmSettings, FALSE )
UI_AddFormToTemplete(frmSettings, FORM_MAIN)
UI_FormSetIsEscClose(frmSettings, TRUE)
UI_SetIsDrag(frmSettings, FALSE)
UI_SetFormStyle(frmSettings, FORM_ALLCENTER)
UI_FormSetHotKey(frmSettings, ALT_KEY, HOTKEY_Y)

setBackground(frmSettings, true, 700, 500, 255)

labFormname = UI_CreateCompent(frmSettings, LABELEX_TYPE, "labFormname", 566, 14, 0, 20)
UI_SetCaption(labFormname, "SETTINGS")
UI_SetTextColor(labFormname, COLOR_WHITE)
UI_SetLabelExFont(labFormname, EXO_Regular_S14, FALSE, COLOR_BLACK)
UI_SetCaptionIsCenter(labFormname, TRUE)

------
-- Backgrounds
------
setBackground2(frmSettings, 290, 86, 255, 30, 50)
setBackground2(frmSettings, 290, 80, 255, 30, 141)
setBackground2(frmSettings, 290, 80, 255, 30, 226)

------
-- Full screen
------
labFullScreen = UI_CreateCompent(frmSettings, LABELEX_TYPE, "labFullScreen", 120, 12, 62, 50 + 8)
UI_SetCaption(labFullScreen, "Full Screen" )
UI_SetTextColor(labFullScreen, argbColor("c2c2c1"))
UI_SetLabelExFont(labFullScreen, EXO_Regular_S12, FALSE, COLOR_BLACK)

labFullScreenDescription = UI_CreateCompent(frmSettings, LABELEX_TYPE, "labFullScreenDescription", 120, 12, 62, 50 + 22)
UI_SetCaption(labFullScreenDescription, "*description" )
UI_SetTextColor(labFullScreenDescription, argbColor("6f6f6f"))
UI_SetLabelExFont(labFullScreenDescription, EXO_Regular_S10, FALSE, COLOR_BLACK)

checkFullScreen = UI_CreateCompent(frmSettings, CHECK_TYPE, "checkFullScreen", 31, 20, 268, 50 + 10)
UI_LoadImage(checkFullScreen, "./texture/ascaron_ui/asc-part-01.png", UNCHECKED, 31, 20, 758, 229)
UI_LoadImage(checkFullScreen, "./texture/ascaron_ui/asc-part-01.png", CHECKED, 31, 20, 758, 249)

------
-- Resolution
------
labResolution = UI_CreateCompent(frmSettings, LABELEX_TYPE, "labResolution", 120, 12, 62, 101 - 2)
UI_SetCaption(labResolution, "Resolution" )
UI_SetTextColor(labResolution, argbColor("c2c2c1"))
UI_SetLabelExFont(labResolution, EXO_Regular_S12, FALSE, COLOR_BLACK)

labResolutionDescription = UI_CreateCompent(frmSettings, LABELEX_TYPE, "labResolutionDescription", 120, 12, 62, 101 + 12)
UI_SetCaption(labResolutionDescription, "*description" )
UI_SetTextColor(labResolutionDescription, argbColor("6f6f6f"))
UI_SetLabelExFont(labResolutionDescription, EXO_Regular_S10, FALSE, COLOR_BLACK)

image = UI_CreateCompent(frmSettings, IMAGE_TYPE, "image", 54, 10, 182, 101)
UI_LoadImage(image, "./texture/ascaron_ui/asc-part-01.png", NORMAL, 54, 10, 824, 1216)

proResolutionX = UI_CreateCompent(frmSettings, PROGRESS_TYPE, "proResolutionX", 54, 10, 182, 101)
UI_LoadScaleImage(proResolutionX, "./texture/ascaron_ui/asc-part-01.png", PROGRESS_PROGRESS, 54, 10, 824, 1226, 1.0, 1.0 )
UI_SetProgressActiveMouse( proResolutionX, 1 )

image = UI_CreateCompent(frmSettings, IMAGE_TYPE, "image", 54, 10, 248, 101)
UI_LoadImage(image, "./texture/ascaron_ui/asc-part-01.png", NORMAL, 54, 10, 824, 1216)

proResolutionY = UI_CreateCompent(frmSettings, PROGRESS_TYPE, "proResolutionY", 54, 10, 248, 101)
UI_LoadScaleImage(proResolutionY, "./texture/ascaron_ui/asc-part-01.png", PROGRESS_PROGRESS, 54, 10, 824, 1226, 1.0, 1.0 )
UI_SetProgressActiveMouse( proResolutionY, 1 )

------
-- Music
------
labMusic = UI_CreateCompent(frmSettings, LABELEX_TYPE, "labMusic", 120, 12, 62, 141 + 8)
UI_SetCaption(labMusic, "Music" )
UI_SetTextColor(labMusic, argbColor("c2c2c1"))
UI_SetLabelExFont(labMusic, EXO_Regular_S12, FALSE, COLOR_BLACK)

labMusicDescription = UI_CreateCompent(frmSettings, LABELEX_TYPE, "labMusicDescription", 120, 12, 62, 141 + 22)
UI_SetCaption(labMusicDescription, "*description" )
UI_SetTextColor(labMusicDescription, argbColor("6f6f6f"))
UI_SetLabelExFont(labMusicDescription, EXO_Regular_S10, FALSE, COLOR_BLACK)

image = UI_CreateCompent(frmSettings, IMAGE_TYPE, "image", 118, 10, 182, 151)
UI_LoadImage(image, "./texture/ascaron_ui/asc-part-01.png", NORMAL, 118, 10, 596, 958)

proMusic = UI_CreateCompent(frmSettings, PROGRESS_TYPE, "proMusic", 118, 10, 182, 151)
UI_LoadScaleImage(proMusic, "./texture/ascaron_ui/asc-part-01.png", PROGRESS_PROGRESS, 118, 10, 596, 968, 1.0, 1.0 )
UI_SetProgressActiveMouse( proMusic, 1 )

------
-- Sound Effect
------
labSound = UI_CreateCompent(frmSettings, LABELEX_TYPE, "labSound", 120, 12, 62, 176 + 8)
UI_SetCaption(labSound, "Sound Effect" )
UI_SetTextColor(labSound, argbColor("c2c2c1"))
UI_SetLabelExFont(labSound, EXO_Regular_S12, FALSE, COLOR_BLACK)

labSoundDescription = UI_CreateCompent(frmSettings, LABELEX_TYPE, "labSoundDescription", 120, 12, 62, 176 + 22)
UI_SetCaption(labSoundDescription, "*description" )
UI_SetTextColor(labSoundDescription, argbColor("6f6f6f"))
UI_SetLabelExFont(labSoundDescription, EXO_Regular_S10, FALSE, COLOR_BLACK)

image = UI_CreateCompent(frmSettings, IMAGE_TYPE, "image", 118, 10, 182, 176 + 10)
UI_LoadImage(image, "./texture/ascaron_ui/asc-part-01.png", NORMAL, 118, 10, 596, 958)

proSound = UI_CreateCompent(frmSettings, PROGRESS_TYPE, "proSound", 118, 10, 182, 176 + 10)
UI_LoadScaleImage(proSound, "./texture/ascaron_ui/asc-part-01.png", PROGRESS_PROGRESS, 118, 10, 596, 968, 1.0, 1.0 )
UI_SetProgressActiveMouse( proSound, 1 )

------
-- Camera mode
------
labMusic = UI_CreateCompent(frmSettings, LABELEX_TYPE, "labMusic", 120, 12, 62, 226 + 8)
UI_SetCaption(labMusic, "Camera mode" )
UI_SetTextColor(labMusic, argbColor("c2c2c1"))
UI_SetLabelExFont(labMusic, EXO_Regular_S12, FALSE, COLOR_BLACK)

labMusicDescription = UI_CreateCompent(frmSettings, LABELEX_TYPE, "labMusicDescription", 120, 12, 62, 226 + 22)
UI_SetCaption(labMusicDescription, "*description" )
UI_SetTextColor(labMusicDescription, argbColor("6f6f6f"))
UI_SetLabelExFont(labMusicDescription, EXO_Regular_S10, FALSE, COLOR_BLACK)

checkCameraMode = UI_CreateCompent(frmSettings, CHECK_TYPE, "checkCameraMode", 31, 20, 268, 229 + 8)
UI_LoadImage(checkCameraMode, "./texture/ascaron_ui/asc-part-01.png", UNCHECKED, 31, 20, 758, 229)
UI_LoadImage(checkCameraMode, "./texture/ascaron_ui/asc-part-01.png", CHECKED, 31, 20, 758, 249)

------
-- Zoom
------
labZoom = UI_CreateCompent(frmSettings, LABELEX_TYPE, "labZoom", 120, 12, 62, 262 + 8)
UI_SetCaption(labZoom, "Sound effect" )
UI_SetTextColor(labZoom, argbColor("c2c2c1"))
UI_SetLabelExFont(labZoom, EXO_Regular_S12, FALSE, COLOR_BLACK)

labZoomDescription = UI_CreateCompent(frmSettings, LABELEX_TYPE, "labZoomDescription", 120, 12, 62, 262 + 22)
UI_SetCaption(labZoomDescription, "*description" )
UI_SetTextColor(labZoomDescription, argbColor("6f6f6f"))
UI_SetLabelExFont(labZoomDescription, EXO_Regular_S10, FALSE, COLOR_BLACK)

image = UI_CreateCompent(frmSettings, IMAGE_TYPE, "image", 118, 10, 182, 262 + 10)
UI_LoadImage(image, "./texture/ascaron_ui/asc-part-01.png", NORMAL, 118, 10, 596, 958)

proZoom = UI_CreateCompent(frmSettings, PROGRESS_TYPE, "proZoom", 118, 10, 182, 262 + 10)
UI_LoadScaleImage(proZoom, "./texture/ascaron_ui/asc-part-01.png", PROGRESS_PROGRESS, 118, 10, 596, 968, 1.0, 1.0 )
UI_SetProgressActiveMouse( proZoom, 1 )