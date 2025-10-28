function settingProgressbar(form, label, posx, posy)
	image = UI_CreateCompent(form, IMAGE_TYPE, "image", 118, 10, posx, posy)
	UI_LoadImage(image, "./texture/ascaron_ui/asc-part-01.png", NORMAL, 118, 10, 596, 958)
	
	label = UI_CreateCompent(form, PROGRESS_TYPE, label, 118, 10, posx, posy)
	UI_LoadScaleImage(label, "./texture/ascaron_ui/asc-part-01.png", PROGRESS_PROGRESS, 118, 10, 596, 968, 1.0, 1.0 )
	UI_SetProgressActiveMouse(label, 1)
	
	return label
end

-----------------------------------------------------------------------
-- Settings
-----------------------------------------------------------------------
frmSettings = UI_CreateForm("frmSettings", FALSE, 650, 553 + 30, 0, 0, TRUE, FALSE)
UI_ShowForm(frmSettings, FALSE )
UI_AddFormToTemplete(frmSettings, FORM_MAIN)
UI_FormSetIsEscClose(frmSettings, TRUE)
UI_SetIsDrag(frmSettings, FALSE)
UI_SetFormStyle(frmSettings, FORM_ALLCENTER)
UI_FormSetHotKey(frmSettings, ALT_KEY, HOTKEY_O)

setBackground(frmSettings, true, 650, 553 + 30, 255)

labFormname = UI_CreateCompent(frmSettings, LABELEX_TYPE, "labFormname", 650, 14, 0, 20)
UI_SetCaption(labFormname, "SETTINGS")
UI_SetTextColor(labFormname, COLOR_WHITE)
UI_SetLabelExFont(labFormname, EXO_Regular_S14, FALSE, COLOR_BLACK)
UI_SetCaptionIsCenter(labFormname, TRUE)

------
-- Backgrounds
------
local left_block_x = 30
local left_block_y = 50

setBackground2(frmSettings, 290, 90, 255, left_block_x, left_block_y)

------
-- Full screen
------
image = UI_CreateCompent(frmSettings, IMAGE_TYPE, "image", 20, 20, left_block_x + 10, left_block_y + 10)
UI_LoadImage(image, "./texture/ascaron_ui/icon/display.png", NORMAL, 20, 20, 0, 0)

labFullScreen = UI_CreateCompent(frmSettings, LABELEX_TYPE, "labFullScreen", 120, 12, left_block_x + 40, left_block_y + 10)
UI_SetCaption(labFullScreen, "Full Screen" )
UI_SetTextColor(labFullScreen, argbColor("c2c2c1"))
UI_SetLabelExFont(labFullScreen, EXO_Regular_S13, FALSE, COLOR_BLACK)

labFullScreenDescription = UI_CreateCompent(frmSettings, LABELEX_TYPE, "labFullScreenDescription", 120, 12, left_block_x + 40, left_block_y + 10 + 20)
UI_SetCaption(labFullScreenDescription, "*description" )
UI_SetTextColor(labFullScreenDescription, argbColor("6f6f6f"))
UI_SetLabelExFont(labFullScreenDescription, EXO_Regular_S10, FALSE, COLOR_BLACK)

checkFullScreen = UI_CreateCompent(frmSettings, CHECK_TYPE, "checkFullScreen", 31, 20, left_block_x + 249, left_block_y + 10)
UI_LoadImage(checkFullScreen, "./texture/ascaron_ui/asc-part-01.png", UNCHECKED, 31, 20, 758, 229)
UI_LoadImage(checkFullScreen, "./texture/ascaron_ui/asc-part-01.png", CHECKED, 31, 20, 758, 249)

left_block_y = left_block_y + 30

------
-- Resolution
------
left_block_y = left_block_y + 10

image = UI_CreateCompent(frmSettings, IMAGE_TYPE, "image", 20, 20, left_block_x + 10, left_block_y + 10)
UI_LoadImage(image, "./texture/ascaron_ui/icon/aspect-ratio.png", NORMAL, 20, 20, 0, 0)

labResolution = UI_CreateCompent(frmSettings, LABELEX_TYPE, "labResolution", 120, 12, left_block_x + 40, left_block_y + 10)
UI_SetCaption(labResolution, "Resolution" )
UI_SetTextColor(labResolution, argbColor("c2c2c1"))
UI_SetLabelExFont(labResolution, EXO_Regular_S13, FALSE, COLOR_BLACK)

labResolutionDescription = UI_CreateCompent(frmSettings, LABELEX_TYPE, "labResolutionDescription", 120, 12, left_block_x + 40, left_block_y + 10 + 20)
UI_SetCaption(labResolutionDescription, "*description" )
UI_SetTextColor(labResolutionDescription, argbColor("6f6f6f"))
UI_SetLabelExFont(labResolutionDescription, EXO_Regular_S10, FALSE, COLOR_BLACK)

cboResolution  = UI_CreateCompent(frmSettings, COMBO_TYPE, "cboResolution", 98, 20, left_block_x + 210, left_block_y + 10)
UI_ComboSetStyle(cboResolution, TRUE)
UI_ComboSetTextColor(cboResolution, COLOR_WHITE)

lstResolution = UI_GetList(cboResolution)
UI_SetListFontColor(lstResolution, COLOR_WHITE, COLOR_WHITE)
UI_SetSize( lstResolution, 81, 175 )
UI_SetMargin( lstResolution, 16,6,16,0 )
UI_SetListRowHeight( lstResolution, 18 )
UI_LoadImage( lstResolution, "./texture/ascaron_ui/asc-part-01.png", COMPENT_BACK, 5, 5, 18, 18)
UI_AddListText( lstResolution, "1024x768" )
UI_SetListIsMouseFollow( lstResolution, TRUE)
UI_ComboSetTextColor( lstResolution, COLOR_WHITE )
setScroll(lstResolution)
left_block_y = left_block_y + 60 

------
-- Camera mode
------
setBackground2(frmSettings, 290, 90 + 40, 255, left_block_x, left_block_y)

image = UI_CreateCompent(frmSettings, IMAGE_TYPE, "image", 20, 20, left_block_x + 10, left_block_y + 10)
UI_LoadImage(image, "./texture/ascaron_ui/icon/camera-reels.png", NORMAL, 20, 20, 0, 0)

labCameraMode = UI_CreateCompent(frmSettings, LABELEX_TYPE, "labCameraMode", 120, 12, left_block_x + 40, left_block_y + 10)
UI_SetCaption(labCameraMode, "Camera mode" )
UI_SetTextColor(labCameraMode, argbColor("c2c2c1"))
UI_SetLabelExFont(labCameraMode, EXO_Regular_S13, FALSE, COLOR_BLACK)

labCameraModeDescription = UI_CreateCompent(frmSettings, LABELEX_TYPE, "labCameraModeDescription", 120, 12, left_block_x + 40, left_block_y + 10 + 20)
UI_SetCaption(labCameraModeDescription, "*description" )
UI_SetTextColor(labCameraModeDescription, argbColor("6f6f6f"))
UI_SetLabelExFont(labCameraModeDescription, EXO_Regular_S10, FALSE, COLOR_BLACK)

checkCameraMode = UI_CreateCompent(frmSettings, CHECK_TYPE, "checkCameraMode", 31, 20, left_block_x + 249, left_block_y + 10)
UI_LoadImage(checkCameraMode, "./texture/ascaron_ui/asc-part-01.png", UNCHECKED, 31, 20, 758, 229)
UI_LoadImage(checkCameraMode, "./texture/ascaron_ui/asc-part-01.png", CHECKED, 31, 20, 758, 249)

left_block_y = left_block_y + 30

------
-- Zoom
------
left_block_y = left_block_y + 10

image = UI_CreateCompent(frmSettings, IMAGE_TYPE, "image", 20, 20, left_block_x + 10, left_block_y + 10)
UI_LoadImage(image, "./texture/ascaron_ui/icon/zoom-in.png", NORMAL, 20, 20, 0, 0)

labZoom = UI_CreateCompent(frmSettings, LABELEX_TYPE, "labZoom", 120, 12, left_block_x + 40, left_block_y + 10)
UI_SetCaption(labZoom, "Zoom" )
UI_SetTextColor(labZoom, argbColor("c2c2c1"))
UI_SetLabelExFont(labZoom, EXO_Regular_S13, FALSE, COLOR_BLACK)

labZoomDescription = UI_CreateCompent(frmSettings, LABELEX_TYPE, "labZoomDescription", 120, 12, left_block_x + 40, left_block_y + 10 + 20)
UI_SetCaption(labZoomDescription, "*description" )
UI_SetTextColor(labZoomDescription, argbColor("6f6f6f"))
UI_SetLabelExFont(labZoomDescription, EXO_Regular_S10, FALSE, COLOR_BLACK)

settingProgressbar(frmSettings, "proZoom", left_block_x + 162, left_block_y + 13)

left_block_y = left_block_y + 30 

------
-- Panel effects
------
left_block_y = left_block_y + 10

image = UI_CreateCompent(frmSettings, IMAGE_TYPE, "image", 20, 20, left_block_x + 10, left_block_y + 10)
UI_LoadImage(image, "./texture/ascaron_ui/icon/stars.png", NORMAL, 20, 20, 0, 0)

labPanelEffects = UI_CreateCompent(frmSettings, LABELEX_TYPE, "labPanelEffects", 120, 12, left_block_x + 40, left_block_y + 10)
UI_SetCaption(labPanelEffects, "Panel effects" )
UI_SetTextColor(labPanelEffects, argbColor("c2c2c1"))
UI_SetLabelExFont(labPanelEffects, EXO_Regular_S13, FALSE, COLOR_BLACK)

labPanelEffectsDescription = UI_CreateCompent(frmSettings, LABELEX_TYPE, "labPanelEffectsDescription", 120, 12, left_block_x + 40, left_block_y + 10 + 20)
UI_SetCaption(labPanelEffectsDescription, "*description" )
UI_SetTextColor(labPanelEffectsDescription, argbColor("6f6f6f"))
UI_SetLabelExFont(labPanelEffectsDescription, EXO_Regular_S10, FALSE, COLOR_BLACK)

checkPanelEffects = UI_CreateCompent(frmSettings, CHECK_TYPE, "checkPanelEffects", 31, 20, left_block_x + 249, left_block_y + 10)
UI_LoadImage(checkPanelEffects, "./texture/ascaron_ui/asc-part-01.png", UNCHECKED, 31, 20, 758, 229)
UI_LoadImage(checkPanelEffects, "./texture/ascaron_ui/asc-part-01.png", CHECKED, 31, 20, 758, 249)

------
-- Второй блок настроек
------
left_block_x = left_block_x + 300
left_block_y = 50

------
-- Music
------
setBackground2(frmSettings, 290, 90, 255, left_block_x, left_block_y)

image = UI_CreateCompent(frmSettings, IMAGE_TYPE, "image", 20, 20, left_block_x + 10, left_block_y + 10)
UI_LoadImage(image, "./texture/ascaron_ui/icon/music-note-list.png", NORMAL, 20, 20, 0, 0)

labMusic = UI_CreateCompent(frmSettings, LABELEX_TYPE, "labMusic", 120, 12, left_block_x + 40, left_block_y + 10)
UI_SetCaption(labMusic, "Music" )
UI_SetTextColor(labMusic, argbColor("c2c2c1"))
UI_SetLabelExFont(labMusic, EXO_Regular_S13, FALSE, COLOR_BLACK)

labMusicDescription = UI_CreateCompent(frmSettings, LABELEX_TYPE, "labMusicDescription", 120, 12, left_block_x + 40, left_block_y + 10 + 20)
UI_SetCaption(labMusicDescription, "*description" )
UI_SetTextColor(labMusicDescription, argbColor("6f6f6f"))
UI_SetLabelExFont(labMusicDescription, EXO_Regular_S10, FALSE, COLOR_BLACK)

settingProgressbar(frmSettings, "proMusic", left_block_x + 162, left_block_y + 13)

left_block_y = left_block_y + 30

------
-- Sound Effect
------
left_block_y = left_block_y + 10

image = UI_CreateCompent(frmSettings, IMAGE_TYPE, "image", 20, 20, left_block_x + 10, left_block_y + 10)
UI_LoadImage(image, "./texture/ascaron_ui/icon/soundwave.png", NORMAL, 20, 20, 0, 0)

labSound = UI_CreateCompent(frmSettings, LABELEX_TYPE, "labSound", 120, 12, left_block_x + 40, left_block_y + 10)
UI_SetCaption(labSound, "Sound Effect" )
UI_SetTextColor(labSound, argbColor("c2c2c1"))
UI_SetLabelExFont(labSound, EXO_Regular_S13, FALSE, COLOR_BLACK)

labSoundDescription = UI_CreateCompent(frmSettings, LABELEX_TYPE, "labSoundDescription", 120, 12, left_block_x + 40, left_block_y + 10 + 20)
UI_SetCaption(labSoundDescription, "*description" )
UI_SetTextColor(labSoundDescription, argbColor("6f6f6f"))
UI_SetLabelExFont(labSoundDescription, EXO_Regular_S10, FALSE, COLOR_BLACK)

settingProgressbar(frmSettings, "proSound", left_block_x + 162, left_block_y + 13)

left_block_y = left_block_y + 60 

------
-- Movement
------
setBackground2(frmSettings, 290, 90 + 40, 255, left_block_x, left_block_y)

image = UI_CreateCompent(frmSettings, IMAGE_TYPE, "image", 20, 20, left_block_x + 10, left_block_y + 10)
UI_LoadImage(image, "./texture/ascaron_ui/icon/person-walking.png", NORMAL, 20, 20, 0, 0)

labMovement = UI_CreateCompent(frmSettings, LABELEX_TYPE, "labMovement", 120, 12, left_block_x + 40, left_block_y + 10)
UI_SetCaption(labMovement, "Movement" )
UI_SetTextColor(labMovement, argbColor("c2c2c1"))
UI_SetLabelExFont(labMovement, EXO_Regular_S13, FALSE, COLOR_BLACK)

labMovementDescription = UI_CreateCompent(frmSettings, LABELEX_TYPE, "labMovementDescription", 120, 12, left_block_x + 40, left_block_y + 10 + 20)
UI_SetCaption(labMovementDescription, "*description" )
UI_SetTextColor(labMovementDescription, argbColor("6f6f6f"))
UI_SetLabelExFont(labMovementDescription, EXO_Regular_S10, FALSE, COLOR_BLACK)

checkMovement = UI_CreateCompent(frmSettings, CHECK_TYPE, "checkMovement", 31, 20, left_block_x + 249, left_block_y + 10)
UI_LoadImage(checkMovement, "./texture/ascaron_ui/asc-part-01.png", UNCHECKED, 31, 20, 758, 229)
UI_LoadImage(checkMovement, "./texture/ascaron_ui/asc-part-01.png", CHECKED, 31, 20, 758, 249)

left_block_y = left_block_y + 30

------
-- Animation speed
------
left_block_y = left_block_y + 10

image = UI_CreateCompent(frmSettings, IMAGE_TYPE, "image", 20, 20, left_block_x + 10, left_block_y + 10)
UI_LoadImage(image, "./texture/ascaron_ui/icon/person-arms-up.png", NORMAL, 20, 20, 0, 0)

labAnimationSpeed = UI_CreateCompent(frmSettings, LABELEX_TYPE, "labAnimationSpeed", 120, 12, left_block_x + 40, left_block_y + 10)
UI_SetCaption(labAnimationSpeed, "Animation speed" )
UI_SetTextColor(labAnimationSpeed, argbColor("c2c2c1"))
UI_SetLabelExFont(labAnimationSpeed, EXO_Regular_S13, FALSE, COLOR_BLACK)

labAnimationSpeedDescription = UI_CreateCompent(frmSettings, LABELEX_TYPE, "labAnimationSpeedDescription", 120, 12, left_block_x + 40, left_block_y + 10 + 20)
UI_SetCaption(labAnimationSpeedDescription, "*description" )
UI_SetTextColor(labAnimationSpeedDescription, argbColor("6f6f6f"))
UI_SetLabelExFont(labAnimationSpeedDescription, EXO_Regular_S10, FALSE, COLOR_BLACK)

settingProgressbar(frmSettings, "proAnimationSpeed", left_block_x + 162, left_block_y + 13)

left_block_y = left_block_y + 30

------
-- Magic autoattack
------
left_block_y = left_block_y + 10

image = UI_CreateCompent(frmSettings, IMAGE_TYPE, "image", 20, 20, left_block_x + 10, left_block_y + 10)
UI_LoadImage(image, "./texture/ascaron_ui/icon/magic.png", NORMAL, 20, 20, 0, 0)

labMagicAttack = UI_CreateCompent(frmSettings, LABELEX_TYPE, "labMagicAttack", 120, 12, left_block_x + 40, left_block_y + 10)
UI_SetCaption(labMagicAttack, "Magic autoattack" )
UI_SetTextColor(labMagicAttack, argbColor("c2c2c1"))
UI_SetLabelExFont(labMagicAttack, EXO_Regular_S13, FALSE, COLOR_BLACK)

labMagicAttackDescription = UI_CreateCompent(frmSettings, LABELEX_TYPE, "labMagicAttackDescription", 120, 12, left_block_x + 40, left_block_y + 10 + 20)
UI_SetCaption(labMagicAttackDescription, "*description" )
UI_SetTextColor(labMagicAttackDescription, argbColor("6f6f6f"))
UI_SetLabelExFont(labMagicAttackDescription, EXO_Regular_S10, FALSE, COLOR_BLACK)

checkMagicAttack = UI_CreateCompent(frmSettings, CHECK_TYPE, "checkMagicAttack", 31, 20, left_block_x + 249, left_block_y + 10)
UI_LoadImage(checkMagicAttack, "./texture/ascaron_ui/asc-part-01.png", UNCHECKED, 31, 20, 758, 229)
UI_LoadImage(checkMagicAttack, "./texture/ascaron_ui/asc-part-01.png", CHECKED, 31, 20, 758, 249)

left_block_x = 30
left_block_y = left_block_y + 70

------
-- Header 2block
------
labFormname = UI_CreateCompent(frmSettings, LABELEX_TYPE, "labFormname", 650, 14, 0, left_block_y)
UI_SetCaption(labFormname, "HIDE OR SHOW OBJECTS")
UI_SetTextColor(labFormname, COLOR_WHITE)
UI_SetLabelExFont(labFormname, EXO_Regular_S14, FALSE, COLOR_BLACK)
UI_SetCaptionIsCenter(labFormname, TRUE)

left_block_y = left_block_y + 30
setBackground2(frmSettings, 290+ 10 + 290, 90 + 40 + 30, 255, left_block_x, left_block_y)

------
-- Players name show
------
labPlayersName = UI_CreateCompent(frmSettings, LABELEX_TYPE, "labPlayersName", 120, 12, left_block_x + 10, left_block_y + 10)
UI_SetCaption(labPlayersName, "Players name" )
UI_SetTextColor(labPlayersName, argbColor("c2c2c1"))
UI_SetLabelExFont(labPlayersName, EXO_Regular_S13, FALSE, COLOR_BLACK)

checkPlayersName = UI_CreateCompent(frmSettings, CHECK_TYPE, "checkPlayersName", 31, 20, left_block_x + 249, left_block_y + 10)
UI_LoadImage(checkPlayersName, "./texture/ascaron_ui/asc-part-01.png", UNCHECKED, 31, 20, 758, 229)
UI_LoadImage(checkPlayersName, "./texture/ascaron_ui/asc-part-01.png", CHECKED, 31, 20, 758, 249)

left_block_y = left_block_y + 30

------
-- Monsters name show
------
labMonstersName = UI_CreateCompent(frmSettings, LABELEX_TYPE, "labMonstersName", 120, 12, left_block_x + 10, left_block_y + 10)
UI_SetCaption(labMonstersName, "Monsters name" )
UI_SetTextColor(labMonstersName, argbColor("c2c2c1"))
UI_SetLabelExFont(labMonstersName, EXO_Regular_S13, FALSE, COLOR_BLACK)

checkMonstersName = UI_CreateCompent(frmSettings, CHECK_TYPE, "checkMonstersName", 31, 20, left_block_x + 249, left_block_y + 10)
UI_LoadImage(checkMonstersName, "./texture/ascaron_ui/asc-part-01.png", UNCHECKED, 31, 20, 758, 229)
UI_LoadImage(checkMonstersName, "./texture/ascaron_ui/asc-part-01.png", CHECKED, 31, 20, 758, 249)

left_block_y = left_block_y + 30

------
-- Items name show
------
labItemsName = UI_CreateCompent(frmSettings, LABELEX_TYPE, "labItemsName", 120, 12, left_block_x + 10, left_block_y + 10)
UI_SetCaption(labItemsName, "Items name name" )
UI_SetTextColor(labItemsName, argbColor("c2c2c1"))
UI_SetLabelExFont(labItemsName, EXO_Regular_S13, FALSE, COLOR_BLACK)

checkItemsName = UI_CreateCompent(frmSettings, CHECK_TYPE, "checkItemsName", 31, 20, left_block_x + 249, left_block_y + 10)
UI_LoadImage(checkItemsName, "./texture/ascaron_ui/asc-part-01.png", UNCHECKED, 31, 20, 758, 229)
UI_LoadImage(checkItemsName, "./texture/ascaron_ui/asc-part-01.png", CHECKED, 31, 20, 758, 249)

left_block_y = left_block_y + 30

------
-- YellowKitbag
------
labYellowBag = UI_CreateCompent(frmSettings, LABELEX_TYPE, "labYellowBag", 120, 12, left_block_x + 10, left_block_y + 10)
UI_SetCaption(labYellowBag, "Yellow bag" )
UI_SetTextColor(labYellowBag, argbColor("c2c2c1"))
UI_SetLabelExFont(labYellowBag, EXO_Regular_S13, FALSE, COLOR_BLACK)

checkYellowBag = UI_CreateCompent(frmSettings, CHECK_TYPE, "checkYellowBag", 31, 20, left_block_x + 249, left_block_y + 10)
UI_LoadImage(checkYellowBag, "./texture/ascaron_ui/asc-part-01.png", UNCHECKED, 31, 20, 758, 229)
UI_LoadImage(checkYellowBag, "./texture/ascaron_ui/asc-part-01.png", CHECKED, 31, 20, 758, 249)

left_block_y = left_block_y + 30

------
-- Circle
------
labCircle = UI_CreateCompent(frmSettings, LABELEX_TYPE, "labCircle", 120, 12, left_block_x + 10, left_block_y + 10)
UI_SetCaption(labCircle, "Circle" )
UI_SetTextColor(labCircle, argbColor("c2c2c1"))
UI_SetLabelExFont(labCircle, EXO_Regular_S13, FALSE, COLOR_BLACK)

checkCircle = UI_CreateCompent(frmSettings, CHECK_TYPE, "checkCircle", 31, 20, left_block_x + 249, left_block_y + 10)
UI_LoadImage(checkCircle, "./texture/ascaron_ui/asc-part-01.png", UNCHECKED, 31, 20, 758, 229)
UI_LoadImage(checkCircle, "./texture/ascaron_ui/asc-part-01.png", CHECKED, 31, 20, 758, 249)

------
-- Второй блок (справа)
------
left_block_x = 30
left_block_x = left_block_x + 300
left_block_y = 330

------
-- Weapon glow
------
labWeaponGlow = UI_CreateCompent(frmSettings, LABELEX_TYPE, "labWeaponGlow", 120, 12, left_block_x + 10, left_block_y + 10)
UI_SetCaption(labWeaponGlow, "Weapon glow" )
UI_SetTextColor(labWeaponGlow, argbColor("c2c2c1"))
UI_SetLabelExFont(labWeaponGlow, EXO_Regular_S13, FALSE, COLOR_BLACK)

checkWeaponGlow = UI_CreateCompent(frmSettings, CHECK_TYPE, "checkWeaponGlow", 31, 20, left_block_x + 249, left_block_y + 10)
UI_LoadImage(checkWeaponGlow, "./texture/ascaron_ui/asc-part-01.png", UNCHECKED, 31, 20, 758, 229)
UI_LoadImage(checkWeaponGlow, "./texture/ascaron_ui/asc-part-01.png", CHECKED, 31, 20, 758, 249)

left_block_y = left_block_y + 30

------
-- Apparels
------
labApparels = UI_CreateCompent(frmSettings, LABELEX_TYPE, "labApparels", 120, 12, left_block_x + 10, left_block_y + 10)
UI_SetCaption(labApparels, "Apparels" )
UI_SetTextColor(labApparels, argbColor("c2c2c1"))
UI_SetLabelExFont(labApparels, EXO_Regular_S13, FALSE, COLOR_BLACK)

checkApparels = UI_CreateCompent(frmSettings, CHECK_TYPE, "checkApparels", 31, 20, left_block_x + 249, left_block_y + 10)
UI_LoadImage(checkApparels, "./texture/ascaron_ui/asc-part-01.png", UNCHECKED, 31, 20, 758, 229)
UI_LoadImage(checkApparels, "./texture/ascaron_ui/asc-part-01.png", CHECKED, 31, 20, 758, 249)

left_block_y = left_block_y + 30

------
-- Mounts
------
labMounts = UI_CreateCompent(frmSettings, LABELEX_TYPE, "labMounts", 120, 12, left_block_x + 10, left_block_y + 10)
UI_SetCaption(labMounts, "Mounts" )
UI_SetTextColor(labMounts, argbColor("c2c2c1"))
UI_SetLabelExFont(labMounts, EXO_Regular_S13, FALSE, COLOR_BLACK)

checkMounts = UI_CreateCompent(frmSettings, CHECK_TYPE, "checkMounts", 31, 20, left_block_x + 249, left_block_y + 10)
UI_LoadImage(checkMounts, "./texture/ascaron_ui/asc-part-01.png", UNCHECKED, 31, 20, 758, 229)
UI_LoadImage(checkMounts, "./texture/ascaron_ui/asc-part-01.png", CHECKED, 31, 20, 758, 249)

left_block_y = left_block_y + 30

------
-- Fairy
------
labFairy = UI_CreateCompent(frmSettings, LABELEX_TYPE, "labFairy", 120, 12, left_block_x + 10, left_block_y + 10)
UI_SetCaption(labFairy, "Fairy" )
UI_SetTextColor(labFairy, argbColor("c2c2c1"))
UI_SetLabelExFont(labFairy, EXO_Regular_S13, FALSE, COLOR_BLACK)

checkFairy = UI_CreateCompent(frmSettings, CHECK_TYPE, "checkFairy", 31, 20, left_block_x + 249, left_block_y + 10)
UI_LoadImage(checkFairy, "./texture/ascaron_ui/asc-part-01.png", UNCHECKED, 31, 20, 758, 229)
UI_LoadImage(checkFairy, "./texture/ascaron_ui/asc-part-01.png", CHECKED, 31, 20, 758, 249)

left_block_y = left_block_y + 30

------
-- Wings
------
labWings = UI_CreateCompent(frmSettings, LABELEX_TYPE, "labWings", 120, 12, left_block_x + 10, left_block_y + 10)
UI_SetCaption(labWings, "Wings" )
UI_SetTextColor(labWings, argbColor("c2c2c1"))
UI_SetLabelExFont(labWings, EXO_Regular_S13, FALSE, COLOR_BLACK)

checkWings = UI_CreateCompent(frmSettings, CHECK_TYPE, "checkWings", 31, 20, left_block_x + 249, left_block_y + 10)
UI_LoadImage(checkWings, "./texture/ascaron_ui/asc-part-01.png", UNCHECKED, 31, 20, 758, 229)
UI_LoadImage(checkWings, "./texture/ascaron_ui/asc-part-01.png", CHECKED, 31, 20, 758, 249)

left_block_y = left_block_y + 60

------
-- Кнопки
------

-- Выход из игры
btnExitGame = CreateButton(16, frmSettings, "btnExitGame", "EXIT", EXO_Regular_S13, 70, 42, 30, left_block_y)

-- Выход с аккаунта
btnRelogin = CreateButton(8, frmSettings, "btnRelogin", "LOGOUT", EXO_Regular_S13, 74, 42, 110, left_block_y)

-- Switch char
btnSwitchChar = CreateButton(6, frmSettings, "btnSwitchChar", "SWITCH CHAR", EXO_Regular_S13, 130, 42, 194, left_block_y)

-- offline mode
btnOfflineMode = CreateButton(6, frmSettings, "btnOfflineMode", "OFFLINE MODE", EXO_Regular_S13, 130, 42, 334, left_block_y)

-- APPLY
btnApply = CreateButton(13, frmSettings, "btnApply", "APPLY", EXO_Regular_S13, 130, 42, 490, left_block_y)
