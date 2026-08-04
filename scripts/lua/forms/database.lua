-----------------------------------------------------------------------
-- Database
-----------------------------------------------------------------------
frmDatabase = UI_CreateForm("frmDatabase", FALSE, 313, 460, 0, 0, TRUE, FALSE)
UI_ShowForm(frmDatabase, FALSE )
UI_AddFormToTemplete(frmDatabase, FORM_MAIN)
UI_FormSetIsEscClose(frmDatabase, TRUE)
UI_SetIsDrag(frmDatabase, FALSE)
UI_FormSetHotKey(frmDatabase, ALT_KEY, HOTKEY_I)
UI_SetFormStyleEx(frmDatabase, FORM_LEFTTOP, 20, 100)

setBackground(frmDatabase, true, 313, 460, 255)

labFormname = UI_CreateCompent(frmDatabase, LABELEX_TYPE, "labFormname", 313, 14, 0, 20)
UI_SetCaption(labFormname, "DATABASE")
UI_SetTextColor(labFormname, COLOR_WHITE)
UI_SetLabelExFont(labFormname, EXO_Regular_S14, FALSE, COLOR_BLACK)
UI_SetCaptionIsCenter(labFormname, TRUE)

btnLootFilter = UI_CreateCompent(frmDatabase, BUTTON_TYPE, "btnLootFilter", 14, 14, 255, 20)
UI_LoadButtonImage(btnLootFilter, "./texture/ascaron_ui/asc-part-04.png", 14, 14, 120, 0, FALSE)
UI_SetHint(btnLootFilter, "Loot filter settings")

------
-- Создание страниц Store
------
pageDatabase = UI_CreateCompent(frmDatabase, PAGE_TYPE, "pageDatabase", 540, 400 - 86, 30, 50)
UI_SetPageButton(pageDatabase, PAGE_BUTTON_CUSTOM, 48, 16 )

-- Подложка под кнопки (линия)
image = UI_CreateCompent(frmDatabase, IMAGE_TYPE, "image", 253, 2, 30, 81)
UI_LoadImage(image, "./texture/ascaron_ui/asc-part-01.png", NORMAL, 253, 2, 0, 381)

-- Кнопка предметов
pgItems = UI_CreatePageItem(pageDatabase)
itemItems = UI_GetPageItemObj(pgItems, PAGE_ITEM_TITLE)
UI_SetPageItemCaption(pgItems, "ITEMS", EXO_Regular_S14, argbColor("808080"), argbColor("ffca61"), 0, 8, TRUE)
--UI_LoadImage(itemItems, "./texture/ascaron_ui/asc-part-04.png", PAGE_ITEM_TITLE_NORMAL, 123, 31, 0, 412)
UI_LoadImage(itemItems, "./texture/ascaron_ui/asc-part-04.png", PAGE_ITEM_TITLE_ACTIVE, 123, 31, 175, 271)
UI_SetPos(itemItems, 0, 0)
UI_SetSize(itemItems, 123, 31)

-- Кнопка монстров
pgMonsters = UI_CreatePageItem(pageDatabase)
monsterItems = UI_GetPageItemObj(pgMonsters, PAGE_ITEM_TITLE)
UI_SetPageItemCaption(pgMonsters, "MONSTERS", EXO_Regular_S14, argbColor("808080"), argbColor("ffca61"), 0, 8, TRUE)
--UI_LoadImage(monsterItems, "./texture/ascaron_ui/asc-part-04.png", PAGE_ITEM_TITLE_NORMAL, 123, 31, 0, 412)
UI_LoadImage(monsterItems, "./texture/ascaron_ui/asc-part-04.png", PAGE_ITEM_TITLE_ACTIVE, 123, 31, 175, 271)
UI_SetPos(monsterItems, 123, 0)
UI_SetSize(monsterItems, 123, 31)

------
-- Поиск
------
imgSearch = UI_CreateCompent(frmDatabase, IMAGE_TYPE, "imgSearch", 17, 17, 0, 52)
UI_LoadImage(imgSearch, "./texture/ascaron_ui/icon/search.png", NORMAL, 32, 32, 0, 0)
UI_AddCompent(pgItems, imgSearch)
UI_AddCompent(pgMonsters, imgSearch)

imgInput = UI_CreateCompent(frmDatabase, IMAGE_TYPE, "imgInput", 120, 30, 27, 45)
UI_LoadImage(imgInput, "./texture/ascaron_ui/asc-part-01.png", NORMAL, 270, 46, 0, 1170)
UI_AddCompent(pgItems, imgInput)
UI_AddCompent(pgMonsters, imgInput)

editSearch = UI_CreateCompent(frmDatabase, EDIT_TYPE, "editSearch", 110, 20, 32, 52)
UI_SetTextColor(editSearch, argbColor("c0c0c0") )
UI_SetEditMaxNum(editSearch, 12 )
UI_SetEditMaxNumVisible(editSearch, 12 )
UI_SetEditCursorColor(editSearch, argbColor("c0c0c0") )
UI_SetEditFont(editSearch, EXO_Regular_S13 )
UI_SetEditClue(editSearch, "Search...", argbColor("908a92"))
UI_AddCompent(pgItems, editSearch)
UI_AddCompent(pgMonsters, editSearch)

imgInput = UI_CreateCompent(frmDatabase, IMAGE_TYPE, "imgInput", 35, 30, 155, 45)
UI_LoadImage(imgInput, "./texture/ascaron_ui/asc-part-01.png", NORMAL, 270, 46, 0, 1170)
UI_AddCompent(pgItems, imgInput)
UI_AddCompent(pgMonsters, imgInput)

labEdtLv = UI_CreateCompent(frmDatabase, LABELEX_TYPE, "labEdtLv", 5, 14, 195, 52)
UI_SetCaption(labEdtLv, "<>")
UI_SetTextColor(labEdtLv, argbColor("908a92"))
UI_SetLabelExFont(labEdtLv, EXO_Regular_S12, FALSE, COLOR_BLACK)
UI_AddCompent(pgItems, labEdtLv)
UI_AddCompent(pgMonsters, labEdtLv)

imgInput = UI_CreateCompent(frmDatabase, IMAGE_TYPE, "imgInput", 40, 30, 215, 45)
UI_LoadImage(imgInput, "./texture/ascaron_ui/asc-part-01.png", NORMAL, 270, 46, 0, 1170)
UI_AddCompent(pgItems, imgInput)
UI_AddCompent(pgMonsters, imgInput)

editLvMin = UI_CreateCompent(frmDatabase, EDIT_TYPE, "editLvMin", 20, 15, 160, 52)
UI_SetTextColor(editLvMin, argbColor("c0c0c0") )
UI_SetEditMaxNum(editLvMin, 3 )
UI_SetEditMaxNumVisible(editLvMin, 3)
UI_SetEditCursorColor(editLvMin, argbColor("c0c0c0") )
UI_SetEditFont(editLvMin, EXO_Regular_S12 )
UI_SetEditClue(editLvMin, "Lv0", argbColor("908a92"))
UI_AddCompent(pgItems, editLvMin)
UI_AddCompent(pgMonsters, editLvMin)

editLvMax = UI_CreateCompent(frmDatabase, EDIT_TYPE, "editLvMax", 25, 15, 220, 52)
UI_SetTextColor(editLvMax, argbColor("c0c0c0") )
UI_SetEditMaxNum(editLvMax, 3 )
UI_SetEditMaxNumVisible(editLvMax, 3)
UI_SetEditCursorColor(editLvMax, argbColor("c0c0c0") )
UI_SetEditFont(editLvMax, EXO_Regular_S12 )
UI_SetEditClue(editLvMax, "Lv99", argbColor("908a92"))
UI_AddCompent(pgItems, editLvMax)
UI_AddCompent(pgMonsters, editLvMax)


local posx = 40
local posy = 70
imgRecordTypes = UI_CreateCompent(frmDatabase, IMAGE_TYPE, "imgRecordTypes", 15, 15, 5, 85)
UI_LoadImage(imgRecordTypes, "./texture/ascaron_ui/asc-part-01.png", NORMAL, 15, 15, 610, 358)
UI_AddCompent(pgItems, imgRecordTypes)
UI_AddCompent(pgMonsters, imgRecordTypes)

recordJobs  = UI_CreateCompent(frmDatabase, COMBO_TYPE, "recordJobs", 145, 20, posx + 15, posy + 62)
UI_ComboSetStyle(recordJobs, TRUE)
UI_ComboSetTextColor(recordJobs, COLOR_WHITE)

lstJobs = UI_GetList(recordJobs)
UI_SetListFontColor(lstJobs, COLOR_WHITE, COLOR_WHITE )
UI_SetSize(lstJobs, 110, 140)
UI_SetMargin(lstJobs, 16, 6, 16, 0)
UI_SetListRowHeight(lstJobs, 18 )
UI_LoadImage(lstJobs, "./texture/ascaron_ui/asc-part-01.png", COMPENT_BACK, 5, 5, 18, 18)
UI_AddListText(lstJobs, "All jobs")
UI_AddListText(lstJobs, "Champion")
UI_AddListText(lstJobs, "Crusader")
UI_AddListText(lstJobs, "Sharpshooter")
UI_AddListText(lstJobs, "Cleric")
UI_AddListText(lstJobs, "Seal Master")
UI_AddListText(lstJobs, "Voyager")
UI_SetListIsMouseFollow(lstJobs, TRUE)
UI_ComboSetTextColor(lstJobs, COLOR_WHITE )
setScroll(lstJobs)

recordChaMaps  = UI_CreateCompent(frmDatabase, COMBO_TYPE, "recordChaMaps", 220, 20, posx + 15, posy + 62)
UI_ComboSetStyle(recordChaMaps, TRUE)
UI_ComboSetTextColor(recordChaMaps, COLOR_WHITE)

lstChaMaps = UI_GetList(recordChaMaps)
UI_SetListFontColor(lstChaMaps, COLOR_WHITE, COLOR_WHITE )
UI_SetSize(lstChaMaps, 110, 100 )
UI_SetMargin(lstChaMaps, 16,6,16,0 )
UI_SetListRowHeight(lstChaMaps, 18 )
UI_LoadImage(lstChaMaps, "./texture/ascaron_ui/asc-part-01.png", COMPENT_BACK, 5, 5, 18, 18)
UI_AddListText(lstChaMaps, "All maps")
UI_SetListIsMouseFollow(lstChaMaps, TRUE)
UI_ComboSetTextColor(lstChaMaps, COLOR_WHITE )
setScroll(lstChaMaps)

posx = 185
imgRecordJobs = UI_CreateCompent(frmDatabase, IMAGE_TYPE, "imgRecordJobs", 15, 15, 155, 85)
UI_LoadImage(imgRecordJobs, "./texture/ascaron_ui/asc-part-01.png", NORMAL, 15, 15, 610, 358)
UI_AddCompent(pgItems, imgRecordJobs)

recordTypes  = UI_CreateCompent(frmDatabase, COMBO_TYPE, "recordTypes", 130, 20, posx + 15, posy + 62)
UI_ComboSetStyle(recordTypes, TRUE)
UI_ComboSetTextColor(recordTypes, COLOR_WHITE)

lstTypes = UI_GetList(recordTypes)
UI_SetListFontColor(lstTypes, COLOR_WHITE, COLOR_WHITE )
UI_SetSize(lstTypes, 110, 100 )
UI_SetMargin(lstTypes, 16,6,16,0 )
UI_SetListRowHeight(lstTypes, 18 )
UI_LoadImage(lstTypes, "./texture/ascaron_ui/asc-part-01.png", COMPENT_BACK, 5, 5, 18, 18)
UI_AddListText(lstTypes, "All types")
UI_AddListText(lstTypes, "sword")
UI_AddListText(lstTypes, "posoh")
UI_AddListText(lstTypes, "arkebys")
UI_AddListText(lstTypes, "shit")
UI_SetListIsMouseFollow(lstTypes, TRUE)
UI_ComboSetTextColor(lstTypes, COLOR_WHITE )
setScroll(lstTypes)

------
-- Результат поиска
------
searchResult = UI_CreateListView( frmDatabase, "searchResult", 270, 288, -7, 105, 3, eNoTitle)
UI_ListViewSetTitle(searchResult, 0, 42, "", 0, 0, 0, 0)
UI_ListViewSetTitle(searchResult, 1, 180, "", 0, 0, 0, 0)
UI_ListViewSetTitle(searchResult, 2, 20, "", 0, 0, 0, 0)
UI_ListSetItemMargin(searchResult, 10, 8 )						-- Перемещение текста внутри строки
UI_SetListRowHeight(searchResult, 46 )							-- Отступ строк между собой
UI_SetListIsMouseFollow(searchResult, FALSE)
UI_ListLoadSelectImage(searchResult, "./texture/ascaron_ui/asc-part-01.png", 270, 46, 0, 1170)
UI_LoadListItemImage(searchResult, "./texture/ascaron_ui/asc-part-01.png", 270, 46, 270, 1170, 258, 46)
--UI_SetImageAlpha(searchResult, 134)
--UI_SetListFontColor(listItems, COLOR_BLACK, COLOR_RED )
UI_SetIsShow(searchResult, FALSE)
setScroll(searchResult)
UI_AddCompent(pgItems, searchResult)
UI_AddCompent(pgMonsters, searchResult)

-----------------------------------------------------------------------
-- ItemInfo
-----------------------------------------------------------------------
frmItemInfo = UI_CreateForm("frmItemInfo", FALSE, 600, 369, 0, 0, TRUE, FALSE)
UI_ShowForm(frmItemInfo, FALSE )
UI_FormSetIsEscClose(frmItemInfo, TRUE)
UI_SetIsDrag(frmItemInfo, TRUE)

setBackground(frmItemInfo, true, 600, 369, 255)

labItemName = UI_CreateCompent(frmItemInfo, LABELEX_TYPE, "labItemName", 313, 14, 85, 25)
UI_SetCaption(labItemName, "ITEM NAME")
UI_SetTextColor(labItemName, COLOR_WHITE)
UI_SetLabelExFont(labItemName, EXO_Regular_S14, FALSE, COLOR_BLACK)

labContainer1 = UI_CreateCompent(frmItemInfo, LABELEX_TYPE, "labContainer1", 313, 14, 85, 50)
UI_SetCaption(labContainer1, "ITEM NAME")
UI_SetTextColor(labContainer1, COLOR_WHITE)
UI_SetLabelExFont(labContainer1, EXO_Regular_S14, FALSE, COLOR_BLACK)

imgItem = UI_CreateCompent(frmItemInfo, IMAGE_TYPE, "imgItem", 55, 55, 20, 20)
UI_LoadImage(imgItem, "./texture/ascaron_ui/asc-part-01.png", NORMAL, 55, 55, 52, 49)

cmdItem = UI_CreateCompent(frmItemInfo, COMMAND_ONE_TYPE, "cmdItem", 32, 32, 32, 32)
UI_SetHint(cmdItem, "Item")

checkLootFilter = UI_CreateCompent(frmItemInfo, CHECK_TYPE, "checkLootFilter", 31, 20, 600 - 85, 20 - 3)
UI_LoadImage(checkLootFilter, "./texture/ascaron_ui/asc-part-01.png", UNCHECKED, 31, 20, 758, 229)
UI_LoadImage(checkLootFilter, "./texture/ascaron_ui/asc-part-01.png", CHECKED, 31, 20, 758, 249)
UI_SetHint(checkLootFilter, "Loot-filter (on/off)" )

------
-- Создание страниц
------
pageItemInfo = UI_CreateCompent(frmItemInfo, PAGE_TYPE, "pageItemInfo", 540, 400, 20, 85)
UI_SetPageButton(pageItemInfo, PAGE_BUTTON_CUSTOM, 48, 16 )

-- Дроп-лист
pageDropInfo = UI_CreatePageItem(pageItemInfo)
itemDropInfo = UI_GetPageItemObj(pageDropInfo, PAGE_ITEM_TITLE)
UI_SetPageItemCaption(pageDropInfo, "Dropped", EXO_Regular_S14, argbColor("808080"), argbColor("ffca61"), 0, 14, TRUE)
UI_LoadImage(itemDropInfo, "./texture/ascaron_ui/asc-part-01.png", PAGE_ITEM_TITLE_NORMAL, 154, 44, 550, 1171)
UI_LoadImage(itemDropInfo, "./texture/ascaron_ui/asc-part-01.png", PAGE_ITEM_TITLE_ACTIVE, 154, 44, 710, 1171)
UI_SetPos(itemDropInfo, 0, 0)
UI_SetSize(itemDropInfo, 154, 44)

-- С каких предметов можно достать
pageDropItemEffect = UI_CreatePageItem(pageItemInfo)
itemDropItemEffect = UI_GetPageItemObj(pageDropItemEffect, PAGE_ITEM_TITLE)
UI_SetPageItemCaption(pageDropItemEffect, "Contains", EXO_Regular_S14, argbColor("808080"), argbColor("ffca61"), 0, 14, TRUE)
UI_LoadImage(itemDropItemEffect, "./texture/ascaron_ui/asc-part-01.png", PAGE_ITEM_TITLE_NORMAL, 154, 44, 550, 1171)
UI_LoadImage(itemDropItemEffect, "./texture/ascaron_ui/asc-part-01.png", PAGE_ITEM_TITLE_ACTIVE, 154, 44, 710, 1171)
UI_SetPos(itemDropItemEffect, 0, 44)
UI_SetSize(itemDropItemEffect, 154, 44)

-- Что можно получить используя этот предмет
pageItemDrop = UI_CreatePageItem(pageItemInfo)
itemItemDrop = UI_GetPageItemObj(pageItemDrop, PAGE_ITEM_TITLE)
UI_SetPageItemCaption(pageItemDrop, "Obtained From", EXO_Regular_S14, argbColor("808080"), argbColor("ffca61"), 0, 14, TRUE)
UI_LoadImage(itemItemDrop, "./texture/ascaron_ui/asc-part-01.png", PAGE_ITEM_TITLE_NORMAL, 154, 44, 550, 1171)
UI_LoadImage(itemItemDrop, "./texture/ascaron_ui/asc-part-01.png", PAGE_ITEM_TITLE_ACTIVE, 154, 44, 710, 1171)
UI_SetPos(itemItemDrop, 0, 88)
UI_SetSize(itemItemDrop, 154, 44)

-- У каких NPC можно купить
pageNPCBuy = UI_CreatePageItem(pageItemInfo)
itemNPCBuy = UI_GetPageItemObj(pageNPCBuy, PAGE_ITEM_TITLE)
UI_SetPageItemCaption(pageNPCBuy, "NPC Shops", EXO_Regular_S14, argbColor("808080"), argbColor("ffca61"), 0, 14, TRUE)
UI_LoadImage(itemNPCBuy, "./texture/ascaron_ui/asc-part-01.png", PAGE_ITEM_TITLE_NORMAL, 154, 44, 550, 1171)
UI_LoadImage(itemNPCBuy, "./texture/ascaron_ui/asc-part-01.png", PAGE_ITEM_TITLE_ACTIVE, 154, 44, 710, 1171)
UI_SetPos(itemNPCBuy, 0, 132)
UI_SetSize(itemNPCBuy, 154, 44)

------
-- Таблица с данными о предмете (дроп, где продается, что достается и так далее)
------
listItemInfo = UI_CreateListView(frmItemInfo, "listItemInfo", 395, 240, 165, 0, 4, eNoTitle)
UI_ListViewSetTitle(listItemInfo, 0, 42, "", 0, 0, 0, 0)
UI_ListViewSetTitle(listItemInfo, 1, 220, "", 0, 0, 0, 0)
UI_ListViewSetTitle(listItemInfo, 2, 50, "", 0, 0, 0, 0)
UI_ListViewSetTitle(listItemInfo, 3, 12, "", 0, 0, 0, 0)
UI_ListSetItemMargin(listItemInfo, 10, 8 )						-- Перемещение текста внутри строки
UI_SetListRowHeight(listItemInfo, 46 )							-- Отступ строк между собой
UI_SetListIsMouseFollow(listItemInfo, FALSE)
UI_ListLoadSelectImage(listItemInfo, "./texture/ascaron_ui/asc-part-01.png", 270, 46, 0, 1170)
UI_LoadListItemImage(listItemInfo, "./texture/ascaron_ui/asc-part-01.png", 270, 46, 270, 1170, 382, 46)
UI_SetIsShow(listItemInfo, FALSE)
setScroll(listItemInfo)
UI_AddCompent(pageDropInfo, listItemInfo)
UI_AddCompent(pageDropItemEffect, listItemInfo)
UI_AddCompent(pageItemDrop, listItemInfo)
UI_AddCompent(pageNPCBuy, listItemInfo)

-----------------------------------------------------------------------
-- CharacterInfo
-----------------------------------------------------------------------
frmCharacterInfo = UI_CreateForm("frmCharacterInfo", FALSE, 570, 400, 0, 0, TRUE, FALSE)
UI_ShowForm(frmCharacterInfo, FALSE )
UI_FormSetIsEscClose(frmCharacterInfo, TRUE)
UI_SetIsDrag(frmCharacterInfo, TRUE)

setBackground(frmCharacterInfo, true, 570, 400, 255)

labMonsterName = UI_CreateCompent(frmCharacterInfo, LABELEX_TYPE, "labMonsterName", 570, 14, 0, 25)
UI_SetCaption(labMonsterName, "CHARACTER NAME")
UI_SetTextColor(labMonsterName, COLOR_WHITE)
UI_SetLabelExFont(labMonsterName, EXO_Regular_S14, FALSE, COLOR_BLACK)
UI_SetCaptionIsCenter(labMonsterName, TRUE)

-- 3D модель
d3dSkin = UI_CreateCompent(frmCharacterInfo, UI3D_COMPENT, "d3dSkin", 200, 200, 30, 160)

LabCap = UI_CreateCompent(frmCharacterInfo, LABELEX_TYPE, "LabCap", 320, 14, 250, 75)
UI_SetCaption(LabCap, "ATTRIBUTES")
UI_SetTextColor(LabCap, COLOR_WHITE)
UI_SetLabelExFont(LabCap, EXO_Regular_S13, FALSE, COLOR_BLACK)

-- Подложка под кнопки (линия)
image = UI_CreateCompent(frmCharacterInfo, IMAGE_TYPE, "image", 290, 2, 250, 95)
UI_LoadImage(image, "./texture/ascaron_ui/asc-part-01.png", NORMAL, 253, 2, 0, 381)

-- Таблица с данными о монстре (его хар-ки)
listCharacterInfo = UI_CreateListView(frmCharacterInfo, "listCharacterInfo", 300, 130, 250, 100, 2, eNoTitle)
UI_ListViewSetTitle(listCharacterInfo, 0, 200, "", 0, 0, 0, 0)
UI_ListViewSetTitle(listCharacterInfo, 1, 30, "", 0, 0, 0, 0)
UI_SetListRowHeight(listCharacterInfo, 20)
UI_SetListIsMouseFollow(listCharacterInfo, FALSE)
UI_SetIsShow(listCharacterInfo, FALSE)
setScroll(listCharacterInfo)

LabCap = UI_CreateCompent(frmCharacterInfo, LABELEX_TYPE, "LabCap", 320, 14, 250, 235)
UI_SetCaption(LabCap, "LOCATION")
UI_SetTextColor(LabCap, COLOR_WHITE)
UI_SetLabelExFont(LabCap, EXO_Regular_S13, FALSE, COLOR_BLACK)

-- Подложка под кнопки (линия)
image = UI_CreateCompent(frmCharacterInfo, IMAGE_TYPE, "image", 290, 2, 250, 255)
UI_LoadImage(image, "./texture/ascaron_ui/asc-part-01.png", NORMAL, 253, 2, 0, 381)

-- Таблица с данными о монстре (его хар-ки)
listCharacterInfoPos = UI_CreateListView(frmCharacterInfo, "listCharacterInfoPos", 300, 75, 250, 260, 4, eNoTitle)
UI_ListViewSetTitle(listCharacterInfoPos, 0, 25, "", 0, 0, 0, 0)
UI_ListViewSetTitle(listCharacterInfoPos, 1, 135, "", 0, 0, 0, 0)
UI_ListViewSetTitle(listCharacterInfoPos, 2, 70, "", 0, 0, 0, 0)
UI_ListViewSetTitle(listCharacterInfoPos, 3, 30, "", 0, 0, 0, 0)
UI_SetListRowHeight(listCharacterInfoPos, 20)
UI_SetListIsMouseFollow(listCharacterInfoPos, FALSE)
UI_SetIsShow(listCharacterInfoPos, FALSE)
setScroll(listCharacterInfoPos)

local posx, posy = 100 - 33, 335
image = UI_CreateCompent(frmCharacterInfo, IMAGE_TYPE, "image", 445, 48, posx - 4, posy - 4)
UI_LoadImage(image, "./texture/ascaron_ui/asc-part-04.png", NORMAL, 445, 48, 0, 364)

labDropInfo = UI_CreateCompent(frmCharacterInfo, LABELEX_TYPE, "labDropInfo", 320, 14, posx, posy - 30)
UI_SetCaption(labDropInfo, "DROPPED ITEMS")
UI_SetTextColor(labDropInfo, COLOR_WHITE)
UI_SetLabelExFont(labDropInfo, EXO_Regular_S13, FALSE, COLOR_BLACK)

-- Подложка под кнопки (линия)
image = UI_CreateCompent(frmCharacterInfo, IMAGE_TYPE, "image", 120, 2, posx, posy - 10)
UI_LoadImage(image, "./texture/ascaron_ui/asc-part-01.png", NORMAL, 253, 2, 0, 381)

grdCharacterInfo = UI_CreateCompent(frmCharacterInfo, GOODS_GRID_TYPE, "grdCharacterInfo", 440, 80, posx, posy) 
UI_SetGridSpace(grdCharacterInfo, 10, 10)
UI_SetGridContent(grdCharacterInfo, 1, 10)
UI_SetGridUnitSize(grdCharacterInfo, 34, 34)

grdCharacterInfoMouseRight = UI_CreateCompent(frmCharacterInfo, MENU_TYPE, "grdCharacterInfoMouseRight", 150, 100, 0, 0)
UI_MenuLoadImage(grdCharacterInfoMouseRight, TRUE, FALSE, "./texture/ascaron_ui/asc-part-01.png", 1, 1, 18, 18, "./texture/ascaron_ui/asc-part-01.png", 1, 1)
UI_SetMargin(grdCharacterInfoMouseRight, 10, 10, 10, 10)
UI_MenuLoadFont(grdCharacterInfoMouseRight, EXO_Regular_S14, argbColor("FFD166"), argbColor("ffffff"), argbColor("737374"))

UI_MenuAddText(grdCharacterInfoMouseRight, "Add lootfilter")
UI_MenuAddText(grdCharacterInfoMouseRight, "Remove lootfilter")

-----------------------------------------------------------------------
-- Loot filter settings
-----------------------------------------------------------------------
frmLootFilter = UI_CreateForm("frmLootFilter", FALSE, 650, 560, 0, 0, TRUE, FALSE)
UI_ShowForm(frmLootFilter, FALSE )
UI_FormSetIsEscClose(frmLootFilter, TRUE)
UI_SetIsDrag(frmLootFilter, TRUE)

setBackground(frmLootFilter, true, 650, 560, 255)

labFormname = UI_CreateCompent(frmLootFilter, LABELEX_TYPE, "labFormname", 650, 14, 0, 25)
UI_SetCaption(labFormname, "LOOT FILTER SETTINGS")
UI_SetTextColor(labFormname, COLOR_WHITE)
UI_SetLabelExFont(labFormname, EXO_Regular_S14, FALSE, COLOR_BLACK)
UI_SetCaptionIsCenter(labFormname, TRUE)

-- Выбранные предметы
image = UI_CreateCompent(frmLootFilter, IMAGE_TYPE, "image", 20, 20, 30, 55)
UI_LoadImage(image, "./texture/ascaron_ui/icon/listui.png", NORMAL, 20, 20, 0, 0)

labCap010 = UI_CreateCompent(frmLootFilter, LABELEX_TYPE, "labCap010", 10, 14, 60, 58)
UI_SetCaption(labCap010, "ВЫБРАННЫЕ ПРЕДМЕТЫ")
UI_SetTextColor(labCap010, argbColor("c2c2c1"))
UI_SetLabelExFont(labCap010, EXO_Regular_S12, FALSE, COLOR_BLACK)

setBackground2(frmLootFilter, 290, 130, 255, 30, 82)

labCap011 = UI_CreateCompent(frmLootFilter, LABELEX_TYPE, "labCap011", 10, 14, 40, 92)
UI_SetCaption(labCap011, "Позволяет настроить индивидуальный\nсписок предметов для автоподбора.\n\nЧтобы добавить предмет:\n1. Выберите нужного монстра\n2. Обратите внимание на дроп-лист\n3. ПКМ по нужному предмету\n4. Выберите пункт \"Включить подбор\"")
UI_SetTextColor(labCap011, argbColor("b8b8b8"))
UI_SetLabelExFont(labCap011, EXO_Regular_S12, FALSE, COLOR_BLACK)

-- Базовый фильтр
image = UI_CreateCompent(frmLootFilter, IMAGE_TYPE, "image", 20, 20, 340, 55)
UI_LoadImage(image, "./texture/ascaron_ui/icon/funnel.png", NORMAL, 20, 20, 0, 0)

labCap020 = UI_CreateCompent(frmLootFilter, LABELEX_TYPE, "labCap020", 10, 14, 370, 58)
UI_SetCaption(labCap020, "БАЗОВЫЙ ФИЛЬТР")
UI_SetTextColor(labCap020, argbColor("c2c2c1"))
UI_SetLabelExFont(labCap020, EXO_Regular_S12, FALSE, COLOR_BLACK)

setBackground2(frmLootFilter, 290, 130, 255, 340, 82)

labCap021 = UI_CreateCompent(frmLootFilter, LABELEX_TYPE, "labCap021", 10, 14, 350, 92)
UI_SetCaption(labCap021, "Рекомендуемый режим для большинства игроков. \n\nПитомец автоматически подбирает \nценные, важные и расходуемые предметы, \nпри этом игнорирует обычные предметы, \nкоторые практически нигде не используются. \nЭто позволяет не засорять инвентарь \nи экономить время.")
UI_SetTextColor(labCap021, argbColor("b8b8b8"))
UI_SetLabelExFont(labCap021, EXO_Regular_S12, FALSE, COLOR_BLACK)

-- Все предметы с монстров
image = UI_CreateCompent(frmLootFilter, IMAGE_TYPE, "image", 20, 20, 30, 225)
UI_LoadImage(image, "./texture/ascaron_ui/icon/box.png", NORMAL, 20, 20, 0, 0)

labCap030 = UI_CreateCompent(frmLootFilter, LABELEX_TYPE, "labCap030", 10, 14, 60, 228)
UI_SetCaption(labCap030, "ВСЕ ПРЕДМЕТЫ С МОНСТРОВ")
UI_SetTextColor(labCap030, argbColor("c2c2c1"))
UI_SetLabelExFont(labCap030, EXO_Regular_S12, FALSE, COLOR_BLACK)

setBackground2(frmLootFilter, 600, 50, 255, 30, 252)

labCap031 = UI_CreateCompent(frmLootFilter, LABELEX_TYPE, "labCap031", 10, 14, 40, 262)
UI_SetCaption(labCap031, "При включении этого режима питомец будет подбирать абсолютно все предметы, \nвыпадающие со всех монстров, без каких-либо ограничений.")
UI_SetTextColor(labCap031, argbColor("b8b8b8"))
UI_SetLabelExFont(labCap031, EXO_Regular_S12, FALSE, COLOR_BLACK)

-- Базовый фильтр + выбранные предметы
image = UI_CreateCompent(frmLootFilter, IMAGE_TYPE, "image", 20, 20, 30, 315)
UI_LoadImage(image, "./texture/ascaron_ui/icon/funnelfill.png", NORMAL, 20, 20, 0, 0)

labCap040 = UI_CreateCompent(frmLootFilter, LABELEX_TYPE, "labCap040", 10, 14, 60, 318)
UI_SetCaption(labCap040, "РАСШИРЕННЫЙ ФИЛЬТР")
UI_SetTextColor(labCap040, argbColor("c2c2c1"))
UI_SetLabelExFont(labCap040, EXO_Regular_S12, FALSE, COLOR_BLACK)

setBackground2(frmLootFilter, 600, 90, 255, 30, 342)

labCap041 = UI_CreateCompent(frmLootFilter, LABELEX_TYPE, "labCap041", 10, 14, 40, 352)
UI_SetCaption(labCap041, "Работает так же, как и <Базовый фильтр>, но дополнительно позволяет указать \nсобственный список предметов для подбора. \n\nВсе предметы которые вы добавите через Базу данных, будут подбираться питомцем \nвместе со стандартным списком важных предметов.")
UI_SetTextColor(labCap041, argbColor("b8b8b8"))
UI_SetLabelExFont(labCap041, EXO_Regular_S12, FALSE, COLOR_BLACK)

-- Меню тумблеров
local left_block_x = 30
local left_block_y = 470

labCap050 = UI_CreateCompent(frmLootFilter, LABELEX_TYPE, "labCap050", 650, 14, 0, 445)
UI_SetCaption(labCap050, "НАСТРОЙКИ ПИТОМЦА ПОМОШНИКА")
UI_SetTextColor(labCap050, argbColor("c2c2c1"))
UI_SetLabelExFont(labCap050, EXO_Regular_S12, FALSE, COLOR_BLACK)
UI_SetCaptionIsCenter(labCap050, TRUE)

setBackground2(frmLootFilter, 290, 70, 255, 30, 470)

image = UI_CreateCompent(frmLootFilter, IMAGE_TYPE, "image", 20, 20, left_block_x + 10, left_block_y + 10)
UI_LoadImage(image, "./texture/ascaron_ui/icon/listui.png", NORMAL, 20, 20, 0, 0)

labCap051 = UI_CreateCompent(frmLootFilter, LABELEX_TYPE, "labCap051", 120, 12, left_block_x + 40, left_block_y + 12)
UI_SetCaption(labCap051, "Подбирать выбранные")
UI_SetTextColor(labCap051, argbColor("c2c2c1"))
UI_SetLabelExFont(labCap051, EXO_Regular_S13, FALSE, COLOR_BLACK)

checkFilter01 = UI_CreateCompent(frmLootFilter, CHECK_TYPE, "checkFilter01", 31, 20, left_block_x + 249, left_block_y + 10)
UI_LoadImage(checkFilter01, "./texture/ascaron_ui/asc-part-01.png", UNCHECKED, 31, 20, 758, 229)
UI_LoadImage(checkFilter01, "./texture/ascaron_ui/asc-part-01.png", CHECKED, 31, 20, 758, 249)

left_block_y = left_block_y + 20 + 10

image = UI_CreateCompent(frmLootFilter, IMAGE_TYPE, "image", 20, 20, left_block_x + 10, left_block_y + 10)
UI_LoadImage(image, "./texture/ascaron_ui/icon/funnel.png", NORMAL, 20, 20, 0, 0)

labCap052 = UI_CreateCompent(frmLootFilter, LABELEX_TYPE, "labCap052", 120, 12, left_block_x + 40, left_block_y + 12)
UI_SetCaption(labCap052, "Базовый фильтр")
UI_SetTextColor(labCap052, argbColor("c2c2c1"))
UI_SetLabelExFont(labCap052, EXO_Regular_S13, FALSE, COLOR_BLACK)

checkFilter02 = UI_CreateCompent(frmLootFilter, CHECK_TYPE, "checkFilter02", 31, 20, left_block_x + 249, left_block_y + 10)
UI_LoadImage(checkFilter02, "./texture/ascaron_ui/asc-part-01.png", UNCHECKED, 31, 20, 758, 229)
UI_LoadImage(checkFilter02, "./texture/ascaron_ui/asc-part-01.png", CHECKED, 31, 20, 758, 249)

---------------

left_block_x = left_block_x + 290 + 20
left_block_y = left_block_y - 30
setBackground2(frmLootFilter, 290, 70, 255, 30 + 290 + 20, 470)

image = UI_CreateCompent(frmLootFilter, IMAGE_TYPE, "image", 20, 20, left_block_x + 10, left_block_y + 10)
UI_LoadImage(image, "./texture/ascaron_ui/icon/box.png", NORMAL, 20, 20, 0, 0)

labCap053 = UI_CreateCompent(frmLootFilter, LABELEX_TYPE, "labCap053", 120, 12, left_block_x + 40, left_block_y + 12)
UI_SetCaption(labCap053, "Подбирать всё")
UI_SetTextColor(labCap053, argbColor("c2c2c1"))
UI_SetLabelExFont(labCap053, EXO_Regular_S13, FALSE, COLOR_BLACK)

checkFilter03 = UI_CreateCompent(frmLootFilter, CHECK_TYPE, "checkFilter03", 31, 20, left_block_x + 249, left_block_y + 10)
UI_LoadImage(checkFilter03, "./texture/ascaron_ui/asc-part-01.png", UNCHECKED, 31, 20, 758, 229)
UI_LoadImage(checkFilter03, "./texture/ascaron_ui/asc-part-01.png", CHECKED, 31, 20, 758, 249)

left_block_y = left_block_y + 20 + 10
image = UI_CreateCompent(frmLootFilter, IMAGE_TYPE, "image", 20, 20, left_block_x + 10, left_block_y + 10)
UI_LoadImage(image, "./texture/ascaron_ui/icon/funnelfill.png", NORMAL, 20, 20, 0, 0)

labCap054 = UI_CreateCompent(frmLootFilter, LABELEX_TYPE, "labCap054", 120, 12, left_block_x + 40, left_block_y + 12)
UI_SetCaption(labCap054, "Расширенный фильтр")
UI_SetTextColor(labCap054, argbColor("c2c2c1"))
UI_SetLabelExFont(labCap054, EXO_Regular_S13, FALSE, COLOR_BLACK)

checkFilter04 = UI_CreateCompent(frmLootFilter, CHECK_TYPE, "checkFilter04", 31, 20, left_block_x + 249, left_block_y + 10)
UI_LoadImage(checkFilter04, "./texture/ascaron_ui/asc-part-01.png", UNCHECKED, 31, 20, 758, 229)
UI_LoadImage(checkFilter04, "./texture/ascaron_ui/asc-part-01.png", CHECKED, 31, 20, 758, 249)