-----------------------------------------------------------------------
-- Database
-----------------------------------------------------------------------
frmDatabase = UI_CreateForm("frmDatabase", FALSE, 313, 550, 0, 0, TRUE, FALSE)
UI_ShowForm(frmDatabase, FALSE )
UI_AddFormToTemplete(frmDatabase, FORM_MAIN)
UI_FormSetIsEscClose(frmDatabase, TRUE)
UI_SetIsDrag(frmDatabase, FALSE)
UI_FormSetHotKey(frmDatabase, ALT_KEY, HOTKEY_I)
UI_SetFormStyleEx(frmDatabase, FORM_LEFTTOP, 20, 100)

setBackground(frmDatabase, true, 313, 473, 255)

labFormname = UI_CreateCompent(frmDatabase, LABELEX_TYPE, "labFormname", 313, 14, 0, 20)
UI_SetCaption(labFormname, "DATABASE")
UI_SetTextColor(labFormname, COLOR_WHITE)
UI_SetLabelExFont(labFormname, EXO_Regular_S14, FALSE, COLOR_BLACK)
UI_SetCaptionIsCenter(labFormname, TRUE)

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
UI_LoadImage(itemItems, "./texture/ascaron_ui/asc-part-01.png", PAGE_ITEM_TITLE_NORMAL, 175, 31, 0, 1101)
UI_LoadImage(itemItems, "./texture/ascaron_ui/asc-part-01.png", PAGE_ITEM_TITLE_ACTIVE, 175, 31, 175, 1101)
UI_SetPos(itemItems, 0, 0)
UI_SetSize(itemItems, 123, 31)

-- Кнопка монстров
pgMonsters = UI_CreatePageItem(pageDatabase)
monsterItems = UI_GetPageItemObj(pgMonsters, PAGE_ITEM_TITLE)
UI_LoadImage(monsterItems, "./texture/ascaron_ui/asc-part-01.png", PAGE_ITEM_TITLE_NORMAL, 175, 31, 350, 1101)
UI_LoadImage(monsterItems, "./texture/ascaron_ui/asc-part-01.png", PAGE_ITEM_TITLE_ACTIVE, 175, 31, 525, 1101)
UI_SetPos(monsterItems, 123, 0)
UI_SetSize(monsterItems, 71, 31)

-- Кнопка NPC
pgNpc = UI_CreatePageItem(pageDatabase)
npcItem = UI_GetPageItemObj(pgNpc, PAGE_ITEM_TITLE)
UI_LoadImage(npcItem, "./texture/ascaron_ui/asc-part-01.png", PAGE_ITEM_TITLE_NORMAL, 175, 31, 0, 1132)
UI_LoadImage(npcItem, "./texture/ascaron_ui/asc-part-01.png", PAGE_ITEM_TITLE_ACTIVE, 175, 31, 175, 1132)
UI_SetPos(npcItem, 123 + 71, 0)
UI_SetSize(npcItem, 59, 31)

------
-- Поиск
------
imgInput = UI_CreateCompent(frmDatabase, IMAGE_TYPE, "imgInput", 194, 50, 0, 43)
UI_LoadImage(imgInput, "./texture/ascaron_ui/asc-part-03.png", NORMAL, 194, 50, 673, 0)
UI_AddCompent(pgItems, imgInput)
UI_AddCompent(pgMonsters, imgInput)
UI_AddCompent(pgNpc, imgInput)

imgInput = UI_CreateCompent(frmDatabase, IMAGE_TYPE, "imgInput", 55, 25, 194 + 5, 43)
UI_LoadImage(imgInput, "./texture/ascaron_ui/asc-part-03.png", NORMAL, 55, 25, 642, 56)
UI_AddCompent(pgItems, imgInput)
UI_AddCompent(pgMonsters, imgInput)
UI_AddCompent(pgNpc, imgInput)

editSearch = UI_CreateCompent(frmDatabase, EDIT_TYPE, "editSearch", 230, 20, 10, 58 )
UI_SetTextColor(editSearch, argbColor("c0c0c0") )
UI_SetEditMaxNum(editSearch, 15 )
UI_SetEditMaxNumVisible(editSearch, 15 )
UI_SetEditCursorColor(editSearch, argbColor("c0c0c0") )
UI_SetEditFont(editSearch, EXO_Regular_S16 )
UI_SetEditClue(editSearch, "Search...", argbColor("908a92"))
UI_AddCompent(pgItems, editSearch)
UI_AddCompent(pgMonsters, editSearch)
UI_AddCompent(pgNpc, editSearch)

local posx = 30
local posy = 90
image = UI_CreateCompent(frmDatabase, IMAGE_TYPE, "image", 15, 15, posx, posy + 65)
UI_LoadImage(image, "./texture/ascaron_ui/asc-part-01.png", NORMAL, 15, 15, 610, 358)

recordRace  = UI_CreateCompent(frmDatabase, COMBO_TYPE, "recordRace", 80, 20, posx + 15, posy + 62)
UI_ComboSetStyle(recordRace, TRUE)
UI_ComboSetTextColor(recordRace, COLOR_WHITE)

lstJobs = UI_GetList(recordRace)
UI_SetListFontColor(lstJobs, COLOR_WHITE, COLOR_WHITE )
UI_SetSize(lstJobs, 80, 100 )
UI_SetMargin(lstJobs, 16,6,16,0 )
UI_SetListRowHeight(lstJobs, 18 )
UI_LoadImage(lstJobs, "./texture/ascaron_ui/asc-part-01.png", COMPENT_BACK, 5, 5, 18, 18)
UI_AddListText(lstJobs, "All race")
UI_AddListText(lstJobs, "Lance")
UI_AddListText(lstJobs, "Carsise")
UI_AddListText(lstJobs, "Phyllis")
UI_AddListText(lstJobs, "Ami")
UI_SetListIsMouseFollow(lstJobs, TRUE)
UI_ComboSetTextColor(lstJobs, COLOR_WHITE )
setScroll(lstJobs)

local posx = 110
image = UI_CreateCompent(frmDatabase, IMAGE_TYPE, "image", 15, 15, posx, posy + 65)
UI_LoadImage(image, "./texture/ascaron_ui/asc-part-01.png", NORMAL, 15, 15, 610, 358)

recordTypes  = UI_CreateCompent(frmDatabase, COMBO_TYPE, "recordTypes", 110, 20, posx + 15, posy + 62)
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

local posx = 200
image = UI_CreateCompent(frmDatabase, IMAGE_TYPE, "image", 15, 15, posx, posy + 65)
UI_LoadImage(image, "./texture/ascaron_ui/asc-part-01.png", NORMAL, 15, 15, 610, 358)

recordJobs  = UI_CreateCompent(frmDatabase, COMBO_TYPE, "recordJobs", 110, 20, posx + 15, posy + 62)
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

------
-- Результат поиска
------
searchResult = UI_CreateListView( frmDatabase, "searchResult", 270, 288, -7, 150 - 25, 2, eNoTitle)
UI_ListViewSetTitle(searchResult, 0, 42, "", 0, 0, 0, 0)
UI_ListViewSetTitle(searchResult, 1, 130, "", 0, 0, 0, 0)
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
UI_AddCompent(pgNpc, searchResult)

-----------------------------------------------------------------------
-- ItemInfo
-----------------------------------------------------------------------
frmItemInfo = UI_CreateForm("frmItemInfo", FALSE, 600, 369, 0, 0, TRUE, FALSE)
UI_ShowForm(frmItemInfo, FALSE )
UI_FormSetIsEscClose(frmItemInfo, TRUE)
UI_SetIsDrag(frmItemInfo, FALSE)

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
UI_LoadImage(itemDropInfo, "./texture/ascaron_ui/asc-part-01.png", PAGE_ITEM_TITLE_NORMAL, 154, 44, 550, 1171)
UI_LoadImage(itemDropInfo, "./texture/ascaron_ui/asc-part-01.png", PAGE_ITEM_TITLE_ACTIVE, 154, 44, 710, 1171)
UI_SetPos(itemDropInfo, 0, 0)
UI_SetSize(itemDropInfo, 154, 44)

-- С каких предметов можно достать
pageDropItemEffect = UI_CreatePageItem(pageItemInfo)
itemDropItemEffect = UI_GetPageItemObj(pageDropItemEffect, PAGE_ITEM_TITLE)
UI_LoadImage(itemDropItemEffect, "./texture/ascaron_ui/asc-part-01.png", PAGE_ITEM_TITLE_NORMAL, 154, 44, 550, 1171)
UI_LoadImage(itemDropItemEffect, "./texture/ascaron_ui/asc-part-01.png", PAGE_ITEM_TITLE_ACTIVE, 154, 44, 710, 1171)
UI_SetPos(itemDropItemEffect, 0, 44)
UI_SetSize(itemDropItemEffect, 154, 44)

-- Что можно получить используя этот предмет
pageItemDrop = UI_CreatePageItem(pageItemInfo)
itemItemDrop = UI_GetPageItemObj(pageItemDrop, PAGE_ITEM_TITLE)
UI_LoadImage(itemItemDrop, "./texture/ascaron_ui/asc-part-01.png", PAGE_ITEM_TITLE_NORMAL, 154, 44, 550, 1171)
UI_LoadImage(itemItemDrop, "./texture/ascaron_ui/asc-part-01.png", PAGE_ITEM_TITLE_ACTIVE, 154, 44, 710, 1171)
UI_SetPos(itemItemDrop, 0, 88)
UI_SetSize(itemItemDrop, 154, 44)

-- У каких NPC можно купить
pageNPCBuy = UI_CreatePageItem(pageItemInfo)
itemNPCBuy = UI_GetPageItemObj(pageNPCBuy, PAGE_ITEM_TITLE)
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
UI_AddCompent(pageNPCBuy, listItemInfo)
