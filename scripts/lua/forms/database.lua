-----------------------------------------------------------------------
-- Database
-----------------------------------------------------------------------
frmDatabase = UI_CreateForm("frmDatabase", FALSE, 313, 550, 0, 0, TRUE, FALSE)
UI_ShowForm(frmDatabase, FALSE )
UI_AddFormToTemplete(frmDatabase, FORM_MAIN)
UI_FormSetIsEscClose(frmDatabase, TRUE)
UI_SetIsDrag(frmDatabase, FALSE)
--UI_FormSetHotKey(frmDatabase, ALT_KEY, HOTKEY_G)
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

btnSearch = CreateButton(0, frmDatabase, "btnSearch", "", EXO_Regular_S20, 55, 20, 199, 71)
UI_SetEditEnterButton(editSearch, btnSearch)
UI_AddCompent(pgItems, btnSearch)
UI_AddCompent(pgMonsters, btnSearch)
UI_AddCompent(pgNpc, btnSearch)

local posx = 30
local posy = 90
image = UI_CreateCompent(frmDatabase, IMAGE_TYPE, "image", 15, 15, posx, posy + 65)
UI_LoadImage(image, "./texture/ascaron_ui/asc-part-01.png", NORMAL, 15, 15, 610, 358)

recordJobs  = UI_CreateCompent(frmDatabase, COMBO_TYPE, "recordJobs", 80, 20, posx + 15, posy + 62)
UI_ComboSetStyle(recordJobs, TRUE)
UI_ComboSetTextColor(recordJobs, COLOR_WHITE)

lstJobs = UI_GetList(recordJobs)
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
UI_SetSize(lstJobs, 110, 100 )
UI_SetMargin(lstJobs, 16,6,16,0 )
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