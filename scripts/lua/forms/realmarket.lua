-----------------------------------------------------------------------
-- Real Market
-----------------------------------------------------------------------
frmRealMarket = UI_CreateForm("frmRealMarket", FALSE, 760, 632, 300, 100, TRUE, FALSE)
UI_ShowForm(frmRealMarket, FALSE )
UI_AddFormToTemplete(frmRealMarket, FORM_MAIN)
UI_FormSetIsEscClose(frmRealMarket, TRUE)
UI_SetIsDrag(frmRealMarket, FALSE)
UI_SetFormStyle(frmRealMarket, FORM_ALLCENTER)
UI_FormSetHotKey(frmRealMarket, ALT_KEY, HOTKEY_G)
setBackground(frmRealMarket, true, 760, 632, 255)

labFormname = UI_CreateCompent(frmRealMarket, LABELEX_TYPE, "labFormname", 760, 14, 0, 20)
UI_SetCaption(labFormname, "REAL MARKET")
UI_SetTextColor(labFormname, COLOR_WHITE)
UI_SetLabelExFont(labFormname, EXO_Regular_S14, FALSE, COLOR_BLACK)
UI_SetCaptionIsCenter(labFormname, TRUE)

------
-- Создание страниц Store
------
pageMarket = UI_CreateCompent(frmRealMarket, PAGE_TYPE, "pageMarket", 540, 400, 30, 70)
UI_SetPageButton(pageMarket, PAGE_BUTTON_CUSTOM, 48, 16 )

-- Подложка под кнопки (линия)
image = UI_CreateCompent(frmRealMarket, IMAGE_TYPE, "image", 701, 2, 30, 101)
UI_LoadImage(image, "./texture/ascaron_ui/asc-part-01.png", NORMAL, 550, 2, 0, 381)

-- Кнопка маркета со списком предметов в торговле
pgLots = UI_CreatePageItem(pageMarket)
LotsItem = UI_GetPageItemObj(pgLots, PAGE_ITEM_TITLE)
UI_LoadImage(LotsItem, "./texture/ascaron_ui/asc-part-01.png", PAGE_ITEM_TITLE_NORMAL, 175, 31, 0, 1101)
UI_LoadImage(LotsItem, "./texture/ascaron_ui/asc-part-01.png", PAGE_ITEM_TITLE_ACTIVE, 175, 31, 175, 1101)
UI_SetPos(LotsItem, 0, 0)
UI_SetSize(LotsItem, 175, 31)

-- Установить предмет на продажу
pgAddLot = UI_CreatePageItem(pageMarket)
AddLotItem = UI_GetPageItemObj(pgAddLot, PAGE_ITEM_TITLE)
UI_LoadImage(AddLotItem, "./texture/ascaron_ui/asc-part-01.png", PAGE_ITEM_TITLE_NORMAL, 175, 31, 350, 1101)
UI_LoadImage(AddLotItem, "./texture/ascaron_ui/asc-part-01.png", PAGE_ITEM_TITLE_ACTIVE, 175, 31, 525, 1101)
UI_SetPos(AddLotItem, 175, 0)
UI_SetSize(AddLotItem, 175, 31)

------
-- Спец. кнопки
------
-- Обналичить средства
btnTake = CreateButton(16, frmRealMarket, "btnTake", "TAKE", EXO_Regular_S14, 93, 42, 605, 502)
UI_AddCompent(pgLots, btnTake)

-- Купить товар
btnBuy = CreateButton(2, frmRealMarket, "btnBuy", "BUY", EXO_Regular_S14, 93, 42, 605, 502)
UI_AddCompent(pgLots, btnBuy)

------
-- Состояние кристаллов
------
-- Подложка под шкалу кристаллов
image = UI_CreateCompent(frmRealMarket, IMAGE_TYPE, "image", 80, 19, 29, 504)
UI_LoadImage(image, "./texture/ascaron_ui/asc-part-01.png", NORMAL, 80, 19, 324, 329)
UI_AddCompent(pgLots, image)

-- Шкала купленных кристаллов
proCrystal = UI_CreateCompent(frmRealMarket, PROGRESS_TYPE, "proCrystal", 74, 13, 32, 507)
UI_LoadScaleImage(proCrystal, "./texture/ascaron_ui/asc-part-01.png", PROGRESS_PROGRESS, 74, 13, 324, 348, 1.0, 1.0)
UI_SetHint(proCrystal, "Level up")
UI_SetProgressHintStyle(proCrystal, PROGRESS_HINT_NUM )
UI_AddCompent(pgLots, proCrystal)

-- Сумма купленных кристаллов
labCrystal = UI_CreateCompent( frmRealMarket, LABELEX_TYPE, "labCrystal", 74, 10, 32, 508)
UI_SetCaption( labCrystal, "99999")
UI_SetTextColor( labCrystal, argbColor("ffffff"))
UI_SetLabelExFont( labCrystal, EXO_Regular_S10, FALSE, COLOR_WHITE )
UI_SetCaptionIsCenter(labCrystal, TRUE)
UI_AddCompent(pgLots, labCrystal)

-- Иконка кристалла
image = UI_CreateCompent(frmRealMarket, IMAGE_TYPE, "image", 24, 24, 0, 502)
UI_LoadImage(image, "./texture/ascaron_ui/asc-part-01.png", NORMAL, 24, 24, 271, 329)
UI_AddCompent(pgLots, image)

-- 
labPremium = UI_CreateCompent(frmRealMarket, LABELEX_TYPE, "labPremium", 80, 13, 29, 531)
UI_SetCaption(labPremium, "Premium")
UI_SetTextColor(labPremium, argbColor("a2a1a2"))
UI_SetLabelExFont(labPremium, EXO_Regular_S13, FALSE, COLOR_BLACK)
UI_SetCaptionIsCenter(labPremium, TRUE)
UI_AddCompent(pgLots, labPremium)

-- Уровень премиума
labPremiumLv = UI_CreateCompent(frmRealMarket, LABELEX_TYPE, "labPremiumLv", 35, 13, -5, 531)
UI_SetCaption(labPremiumLv, "Lv1")
UI_SetTextColor(labPremiumLv, argbColor("a2a1a2"))
UI_SetLabelExFont(labPremiumLv, EXO_Regular_S13, FALSE, COLOR_BLACK)
UI_SetCaptionIsCenter(labPremiumLv, TRUE)
UI_AddCompent(pgLots, labPremiumLv)

------
-- Переключатель страниц
------
btnLeftPage = UI_CreateCompent( frmRealMarket, BUTTON_TYPE, "btnLeftPage", 20, 20, 299, 507)
UI_LoadButtonImage(btnLeftPage, "./texture/ascaron_ui/asc-part-01.png", 20, 20, 410, 349, TRUE)
UI_SetIsShow(btnLeftPage, FALSE)
UI_AddCompent(pgLots, btnLeftPage)

labListPage = UI_CreateCompent( frmRealMarket, LABELEX_TYPE, "labListPage", 51, 14, 324, 509)
UI_SetCaption(labListPage, "0\0")
UI_SetTextColor(labListPage, argbColor("a2a1a2"))
UI_SetLabelExFont(labListPage, EXO_Regular_S14, FALSE, COLOR_WHITE )
UI_SetCaptionIsCenter(labListPage, TRUE)
UI_SetIsShow(labListPage, FALSE)
UI_AddCompent(pgLots, labListPage)

btnRightPage = UI_CreateCompent(frmRealMarket, BUTTON_TYPE, "btnRightPage", 20, 20, 380, 507)
UI_LoadButtonImage(btnRightPage, "./texture/ascaron_ui/asc-part-01.png", 20, 20, 409, 329, TRUE)
UI_SetIsShow(btnRightPage, FALSE)
UI_AddCompent(pgLots, btnRightPage)
	
------
-- Меню магазина
------
listMenu = UI_CreateListView( frmRealMarket, "listMenu", 154, 370, -7, 40, 2, eNoTitle)
UI_ListViewSetTitle(listMenu, 0, 150, "", 0, 0, 0, 0)
UI_ListSetItemMargin(listMenu, 15, 15 )						-- Перемещение текста внутри строки
UI_SetListRowHeight(listMenu, 44 )							-- Отступ строк между собой
UI_SetListIsMouseFollow(listMenu, FALSE)
UI_LoadListItemImage(listMenu, "./texture/ascaron_ui/asc-part-01.png", 154, 44, 550, 1171, 144, 44)
UI_ListLoadSelectImage(listMenu, "./texture/ascaron_ui/asc-part-01.png", 154, 44, 710, 1171)
UI_SetIsShow(listMenu, FALSE)
UI_AddCompent(pgLots, listMenu)

-- Кнопка помощи (руководство по магазину)
-- btnHelpStore = UI_CreateCompent(frmRealMarket, BUTTON_TYPE, "btnHelpStore", 50, 16, 20, 410)
-- UI_LoadButtonImage(btnHelpStore, "./texture/ascaron_ui/asc-part-02.png", 50, 16, 50, 398, FALSE)

------
-- Формирование пакетов в магазине (кристаллы\репутация)
------
local btnHover = {}
local imgHover = {}
local cmdStore = {}
local labName = {}
local labPrice = {}
local imgPrice = {}
local imgAvailable = {}
local imgTime = {}
local labLeftTime = {}
local imgQty = {}
local labLeft = {}
local labLeftNum = {}
local imgEdtQty = {}
local labAmount = {}
local btnAmountUp = {}
local btnAmountDown = {}

for i = 0, 4, 1 do
	local card_posx = 160
	local card_posy = 50 + (i * 82)
	
	-- Hover \ click effect
	btnHover[i] = UI_CreateCompent(frmRealMarket, BUTTON_TYPE, "btnHover_"..i, 540, 72, card_posx, card_posy)
	UI_LoadButtonImage( btnHover[i], "./texture/ascaron_ui/asc-part-02.png", 540, 72, 288, 0, FALSE)
	UI_SetIsShow(btnHover[i], FALSE)
	UI_AddCompent(pgLots, btnHover[i])
	
	-- Нажатый пакет (подсветка)
	imgHover[i] = UI_CreateCompent( frmRealMarket, IMAGE_TYPE, "imgHover_"..i, 540, 72, card_posx, card_posy)
	UI_LoadImage(imgHover[i], "./texture/ascaron_ui/asc-part-02.png", NORMAL, 540, 72, 288, 72)
	--UI_SetAlpha(imgHover[i], 200)
	UI_SetIsShow(imgHover[i], FALSE)
	UI_AddCompent(pgLots, imgHover[i])
	
	-- Package icon
	cmdStore[i] = UI_CreateCompent( frmRealMarket, COMMAND_ONE_TYPE, "cmdStore_"..i, 32, 32, card_posx + 10, card_posy + 20)	
	UI_AddCompent(pgLots, cmdStore[i])
	
	-- Название пакета
	labName[i] = UI_CreateCompent( frmRealMarket, LABELEX_TYPE, "labName_"..i, 10, 150, card_posx + 44 + 8, card_posy + 17 )
	UI_SetCaption(labName[i], "Item"..i)
	UI_SetTextColor(labName[i], argbColor("ffffff"))
	UI_SetLabelExFont(labName[i], EXO_Regular_S15, FALSE, COLOR_WHITE )
	UI_SetIsShow(labName[i],FALSE)
	UI_AddCompent(pgLots, labName[i])
	
	-- Цена пакета
	labPrice[i] = UI_CreateCompent( frmRealMarket, LABELEX_TYPE, "labPrice_"..i, 53, 12, card_posx + 440, card_posy + 13)
	UI_SetCaption(labPrice[i], "1000")
	UI_SetTextColor(labPrice[i], argbColor("ffffff"))
	UI_SetLabelExFont(labPrice[i], EXO_Regular_S14, FALSE, COLOR_WHITE )
	UI_SetIsShow(labPrice[i], FALSE)
	UI_SetCaptionIsCenter(labPrice[i], TRUE)
	UI_AddCompent(pgLots, labPrice[i])
	
	-- Иконка валюты кристаллов
	imgPrice[i] = UI_CreateCompent( frmRealMarket, IMAGE_TYPE, "imgPrice_"..i, 14, 22, card_posx + 506, card_posy + 10)
	UI_LoadImage(imgPrice[i], "./texture/ascaron_ui/icon/dollar.png", NORMAL, 14, 24, 0, 0)
	--UI_SetAlpha(imgPrice[i], 200)
	UI_SetIsShow(imgPrice[i], FALSE)
	UI_AddCompent(pgLots, imgPrice[i])
	
	-- Иконка доступного лота
	imgAvailable[i] = UI_CreateCompent( frmRealMarket, IMAGE_TYPE, "imgAvailable_"..i, 14, 22, card_posx + 506, card_posy + 10)
	UI_LoadImage(imgAvailable[i], "./texture/ascaron_ui/icon/dollargreen.png", NORMAL, 14, 24, 0, 0)
	--UI_SetAlpha(imgAvailable[i], 200)
	UI_SetIsShow(imgAvailable[i], FALSE)
	UI_AddCompent(pgLots, imgAvailable[i])
	
	imgTime[i] = UI_CreateCompent( frmRealMarket, IMAGE_TYPE, "imgTime_"..i, 18, 18, card_posx + 44 + 8, card_posy + 44)
	UI_LoadImage( imgTime[i], "./texture/ascaron_ui/asc-part-01.png", NORMAL, 18, 18, 494, 332)
	UI_SetAlpha(imgTime[i], 200)
	UI_SetIsShow(imgTime[i], FALSE)
	UI_AddCompent(pgLots, imgTime[i])
	
	labLeftTime[i] = UI_CreateCompent( frmRealMarket, LABELEX_TYPE, "labLeftTime_"..i, 10, 150, card_posx + 67 + 8, card_posy + 45)
	UI_SetCaption( labLeftTime[i], "Remaining time"..i)
	UI_SetTextColor( labLeftTime[i], argbColor("929292") )
	UI_SetLabelExFont( labLeftTime[i], EXO_Regular_S14, FALSE, COLOR_WHITE )
	UI_SetIsShow(labLeftTime[i],FALSE)
	UI_AddCompent(pgLots, labLeftTime[i])
	
	imgQty[i] = UI_CreateCompent( frmRealMarket, IMAGE_TYPE, "imgQty_"..i, 18, 18, card_posx + 343, card_posy + 44)
	UI_LoadImage( imgQty[i], "./texture/ascaron_ui/asc-part-01.png", NORMAL, 18, 18, 516, 331)
	UI_SetAlpha(imgQty[i], 200)
	UI_SetIsShow(imgQty[i], FALSE)
	UI_AddCompent(pgLots, imgQty[i])
	
	labLeft[i] = UI_CreateCompent( frmRealMarket, LABELEX_TYPE, "labLeft_"..i, 10, 150, card_posx + 364, card_posy + 45)
	UI_SetCaption( labLeft[i], "Qty available: ")
	UI_SetTextColor( labLeft[i], argbColor("929292") )
	UI_SetLabelExFont( labLeft[i], EXO_Regular_S14, FALSE, COLOR_WHITE )		
	UI_SetIsShow(labLeft[i],FALSE)
	UI_AddCompent(pgLots, labLeft[i])
	
	labLeftNum[i] = UI_CreateCompent( frmRealMarket, LABELEX_TYPE, "labLeftNum_"..i, 10, 150, card_posx + 467, card_posy + 45)
	UI_SetCaption( labLeftNum[i], "Remaining amount"..i)
	UI_SetTextColor( labLeftNum[i], argbColor("929292") )
	UI_SetLabelExFont( labLeftNum[i], EXO_Regular_S14, FALSE, COLOR_WHITE )		
	UI_SetIsShow(labLeftNum[i],FALSE)
	UI_AddCompent(pgLots, labLeftNum[i])
end

-----------------------------------------------------------------------
-- Real Market (add item)
-----------------------------------------------------------------------
frmRealMarketAdd = UI_CreateForm("frmRealMarketAdd", FALSE, 300, 400, 300, 100, TRUE, FALSE)
UI_ShowForm(frmRealMarketAdd, FALSE)
UI_AddFormToTemplete(frmRealMarketAdd, FORM_MAIN)
UI_FormSetIsEscClose(frmRealMarketAdd, TRUE)
UI_SetIsDrag(frmRealMarketAdd, FALSE)
UI_SetFormStyle(frmRealMarketAdd, FORM_ALLCENTER)
setBackground(frmRealMarketAdd, true, 300, 400, 255)

labFormname = UI_CreateCompent(frmRealMarketAdd, LABELEX_TYPE, "labFormname", 300, 14, 0, 20)
UI_SetCaption(labFormname, "PLACE AN AD FOR SALE")
UI_SetTextColor(labFormname, COLOR_WHITE)
UI_SetLabelExFont(labFormname, EXO_Regular_S14, FALSE, COLOR_BLACK)
UI_SetCaptionIsCenter(labFormname, TRUE)

-----------------------------------------------------------------------
-- Страница добавления предмета
-----------------------------------------------------------------------

labSetLot = UI_CreateCompent(frmRealMarket, LABELEX_TYPE, "labSetLot", 74, 10, 20, 50)
UI_SetCaption(labSetLot, "Добавить лот на биржу")
UI_SetTextColor(labSetLot, argbColor("ffffff"))
UI_SetLabelExFont(labSetLot, EXO_Regular_S20, FALSE, COLOR_WHITE )
--UI_SetCaptionIsCenter(labSetLot, TRUE)
UI_AddCompent(pgAddLot, labSetLot)

-- Координаты положения формы ввода стоимости
local price_posx, price_posy = 0, 90

-- Подложка под стоимость
image = UI_CreateCompent(frmDoublePwd, IMAGE_TYPE,"image", 420, 55, price_posx, price_posy)
UI_LoadImage( image, "./texture/ascaron_ui/asc-part-01.png", NORMAL, 420, 60, 420, 747)
UI_AddCompent(pgAddLot, image)

-- Стоимость лота
editPrice = UI_CreateCompent(frmRealMarket, EDIT_TYPE, "editPrice", 420, 20, price_posx + 20, price_posy + 14)
UI_SetTextColor(editPrice, argbColor("c0c0c0"))
UI_SetEditMaxNum(editPrice, 25)
UI_SetEditMaxNumVisible(editPrice, 25)
UI_SetEditCursorColor(editPrice, argbColor("c0c0c0"))
UI_SetEditFont(editPrice, EXO_Regular_S20 )
UI_SetEditClue(editPrice, "Input price", argbColor("908a92"))
UI_AddCompent(pgAddLot, editPrice)

-- Координаты положения слота под предмет
local cmdItem_posx, cmdItem_posy = 0, 150

-- Подложка под предмет
imgItem = UI_CreateCompent(frmRealMarket, IMAGE_TYPE, "imgItem", 55, 55, cmdItem_posx, cmdItem_posy)
UI_LoadImage(imgItem, "./texture/ascaron_ui/asc-part-01.png", NORMAL, 55, 55, 52, 49)
UI_AddCompent(pgAddLot, imgItem)

-- Форма предмета
cmdItem = UI_CreateCompent(frmRealMarket, COMMAND_ONE_TYPE, "cmdItem", 32, 32, cmdItem_posx + 12, cmdItem_posy + 12)
UI_SetHint(cmdItem, "Item")
UI_AddCompent(pgAddLot, cmdItem)

-- Купить товар
btnSetLot = CreateButton(2, frmRealMarket, "btnSetLot", "SET LOT", EXO_Regular_S14, 93, 42, 605, 502)
UI_AddCompent(pgAddLot, btnSetLot)