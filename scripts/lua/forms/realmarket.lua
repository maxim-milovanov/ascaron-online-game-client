-----------------------------------------------------------------------
-- Real Market
-----------------------------------------------------------------------
frmRealMarket = UI_CreateForm("frmRealMarket", FALSE, 760, 632, 300, 100, TRUE, FALSE)
UI_ShowForm(frmRealMarket, FALSE )
UI_AddFormToTemplete(frmRealMarket, FORM_MAIN)
UI_FormSetIsEscClose(frmRealMarket, TRUE)
UI_SetIsDrag(frmRealMarket, FALSE)
UI_SetFormStyle(frmRealMarket, FORM_ALLCENTER)
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
UI_SetPageItemCaption(pgLots, "ITEMS", EXO_Regular_S14, argbColor("808080"), argbColor("ffca61"), 0, 8, TRUE)
--UI_LoadImage(LotsItem, "./texture/ascaron_ui/asc-part-04.png", PAGE_ITEM_TITLE_NORMAL, 175, 31, 0, 240)
UI_LoadImage(LotsItem, "./texture/ascaron_ui/asc-part-04.png", PAGE_ITEM_TITLE_ACTIVE, 175, 31, 0, 271)
UI_SetPos(LotsItem, 0, 0)
UI_SetSize(LotsItem, 175, 31)

-- История
pgHistory = UI_CreatePageItem(pageMarket)
HistoryItem = UI_GetPageItemObj(pgHistory, PAGE_ITEM_TITLE)
UI_SetPageItemCaption(pgHistory, "HISTORY", EXO_Regular_S14, argbColor("808080"), argbColor("ffca61"), 0, 8, TRUE)
--UI_LoadImage(HistoryItem, "./texture/ascaron_ui/asc-part-04.png", PAGE_ITEM_TITLE_NORMAL, 175, 31, 175, 240)
UI_LoadImage(HistoryItem, "./texture/ascaron_ui/asc-part-04.png", PAGE_ITEM_TITLE_ACTIVE, 175, 31, 0, 271)
UI_SetPos(HistoryItem, 175, 0)
UI_SetSize(HistoryItem, 175, 31)

-- Установить предмет на продажу
pgAddLot = UI_CreatePageItem(pageMarket)
AddLotItem = UI_GetPageItemObj(pgAddLot, PAGE_ITEM_TITLE)
UI_SetPageItemCaption(pgAddLot, "ADD LOT", EXO_Regular_S14, argbColor("808080"), argbColor("ffca61"), 0, 8, TRUE)
--UI_LoadImage(AddLotItem, "./texture/ascaron_ui/asc-part-04.png", PAGE_ITEM_TITLE_NORMAL, 175, 31, 0, 302)
UI_LoadImage(AddLotItem, "./texture/ascaron_ui/asc-part-04.png", PAGE_ITEM_TITLE_ACTIVE, 175, 31, 0, 271)
UI_SetPos(AddLotItem, 350, 0)
UI_SetSize(AddLotItem, 175, 31)

-- Заявка на вывод средств
pgCashOut = UI_CreatePageItem(pageMarket)
CashOutItem = UI_GetPageItemObj(pgCashOut, PAGE_ITEM_TITLE)
UI_SetPageItemCaption(pgCashOut, "CASH OUT", EXO_Regular_S14, argbColor("808080"), argbColor("ffca61"), 0, 8, TRUE)
--UI_LoadImage(CashOutItem, "./texture/ascaron_ui/asc-part-04.png", PAGE_ITEM_TITLE_NORMAL, 175, 31, 175, 302)
UI_LoadImage(CashOutItem, "./texture/ascaron_ui/asc-part-04.png", PAGE_ITEM_TITLE_ACTIVE, 175, 31, 0, 271)
UI_SetPos(CashOutItem, 350 + 175, 0)
UI_SetSize(CashOutItem, 175, 31)

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
UI_AddCompent(pgHistory, image)
UI_AddCompent(pgAddLot, image)
UI_AddCompent(pgCashOut, image)

-- Сумма купленных кристаллов
labDollars = UI_CreateCompent( frmRealMarket, LABELEX_TYPE, "labDollars", 74, 10, 32, 508)
UI_SetCaption( labDollars, "99999")
UI_SetTextColor( labDollars, argbColor("ffffff"))
UI_SetLabelExFont( labDollars, EXO_Regular_S10, FALSE, COLOR_WHITE )
UI_SetCaptionIsCenter(labDollars, TRUE)
UI_AddCompent(pgLots, labDollars)
UI_AddCompent(pgHistory, labDollars)
UI_AddCompent(pgAddLot, labDollars)
UI_AddCompent(pgCashOut, labDollars)

-- Иконка долллара
image = UI_CreateCompent(frmRealMarket, IMAGE_TYPE, "image", 14, 24, 0, 502)
UI_LoadImage(image, "./texture/ascaron_ui/icon/dollar.png", NORMAL, 14, 24, 0, 0)
UI_AddCompent(pgLots, image)
UI_AddCompent(pgHistory, image)
UI_AddCompent(pgAddLot, image)
UI_AddCompent(pgCashOut, image)

-- 
labBallance = UI_CreateCompent(frmRealMarket, LABELEX_TYPE, "labBallance", 80, 13, 29, 531)
UI_SetCaption(labBallance, "Balance (Dollar USA)")
UI_SetTextColor(labBallance, argbColor("a2a1a2"))
UI_SetLabelExFont(labBallance, EXO_Regular_S13, FALSE, COLOR_BLACK)
UI_SetCaptionIsCenter(labBallance, TRUE)
UI_AddCompent(pgLots, labBallance)
UI_AddCompent(pgHistory, labBallance)
UI_AddCompent(pgAddLot, labBallance)
UI_AddCompent(pgCashOut, labBallance)

------
-- Переключатель страниц
------
btnLeftPage = UI_CreateCompent( frmRealMarket, BUTTON_TYPE, "btnLeftPage", 20, 20, 299, 507)
UI_LoadButtonImage(btnLeftPage, "./texture/ascaron_ui/asc-part-01.png", 20, 20, 410, 349, TRUE)
UI_SetIsShow(btnLeftPage, FALSE)
UI_AddCompent(pgLots, btnLeftPage)
UI_AddCompent(pgHistory, btnLeftPage)

labListPage = UI_CreateCompent( frmRealMarket, LABELEX_TYPE, "labListPage", 51, 14, 324, 509)
UI_SetCaption(labListPage, "0\0")
UI_SetTextColor(labListPage, argbColor("a2a1a2"))
UI_SetLabelExFont(labListPage, EXO_Regular_S14, FALSE, COLOR_WHITE )
UI_SetCaptionIsCenter(labListPage, TRUE)
UI_SetIsShow(labListPage, FALSE)
UI_AddCompent(pgLots, labListPage)
UI_AddCompent(pgHistory, labListPage)

btnRightPage = UI_CreateCompent(frmRealMarket, BUTTON_TYPE, "btnRightPage", 20, 20, 380, 507)
UI_LoadButtonImage(btnRightPage, "./texture/ascaron_ui/asc-part-01.png", 20, 20, 409, 329, TRUE)
UI_SetIsShow(btnRightPage, FALSE)
UI_AddCompent(pgLots, btnRightPage)
UI_AddCompent(pgHistory, btnRightPage)
	
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
UI_AddCompent(pgHistory, listMenu)

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
local labLeftNum = {}
local imgEdtQty = {}
local labAmount = {}
local btnAmountUp = {}
local btnAmountDown = {}

local LabNone = {}

for i = 0, 4, 1 do
	local card_posx = 160
	local card_posy = 50 + (i * 82)
	
	-- Hover \ click effect
	btnHover[i] = UI_CreateCompent(frmRealMarket, BUTTON_TYPE, "btnHover_"..i, 540, 72, card_posx, card_posy)
	UI_LoadButtonImage( btnHover[i], "./texture/ascaron_ui/asc-part-02.png", 540, 72, 288, 0, FALSE)
	UI_SetIsShow(btnHover[i], FALSE)
	UI_AddCompent(pgLots, btnHover[i])
	UI_AddCompent(pgHistory, btnHover[i])
	
	-- Нажатый пакет (подсветка)
	imgHover[i] = UI_CreateCompent( frmRealMarket, IMAGE_TYPE, "imgHover_"..i, 540, 72, card_posx, card_posy)
	UI_LoadImage(imgHover[i], "./texture/ascaron_ui/asc-part-02.png", NORMAL, 540, 72, 288, 72)
	--UI_SetAlpha(imgHover[i], 200)
	UI_SetIsShow(imgHover[i], FALSE)
	UI_AddCompent(pgLots, imgHover[i])
	UI_AddCompent(pgHistory, imgHover[i])
	
	-- Package icon
	cmdStore[i] = UI_CreateCompent( frmRealMarket, COMMAND_ONE_TYPE, "cmdStore_"..i, 32, 32, card_posx + 10, card_posy + 20)	
	UI_AddCompent(pgLots, cmdStore[i])
	UI_AddCompent(pgHistory, cmdStore[i])
	
	-- Название пакета
	labName[i] = UI_CreateCompent( frmRealMarket, LABELEX_TYPE, "labName_"..i, 10, 150, card_posx + 44 + 8, card_posy + 17 )
	UI_SetCaption(labName[i], "Item"..i)
	UI_SetTextColor(labName[i], argbColor("ffffff"))
	UI_SetLabelExFont(labName[i], EXO_Regular_S15, FALSE, COLOR_WHITE )
	UI_SetIsShow(labName[i],FALSE)
	UI_AddCompent(pgLots, labName[i])
	UI_AddCompent(pgHistory, labName[i])
	
	-- Плашка на  случай отствутсивя предметов
	LabNone[i] = UI_CreateCompent( frmRealMarket, LABELEX_TYPE, "LabNone_"..i, 540, 72, card_posx, card_posy + 23 )
	UI_SetCaption(LabNone[i], "Item "..i)
	UI_SetTextColor(LabNone[i], argbColor("ffffff"))
	UI_SetLabelExFont(LabNone[i], EXO_Regular_S16, FALSE, COLOR_WHITE )
	UI_SetCaptionIsCenter(LabNone[i], TRUE)
	UI_SetIsShow(LabNone[i],FALSE)
	UI_AddCompent(pgLots, LabNone[i])
	UI_AddCompent(pgHistory, LabNone[i])
	
	-- Цена пакета
	labPrice[i] = UI_CreateCompent( frmRealMarket, LABELEX_TYPE, "labPrice_"..i, 53, 12, card_posx + 440, card_posy + 13)
	UI_SetCaption(labPrice[i], "1000")
	UI_SetTextColor(labPrice[i], argbColor("ffffff"))
	UI_SetLabelExFont(labPrice[i], EXO_Regular_S14, FALSE, COLOR_WHITE )
	UI_SetIsShow(labPrice[i], FALSE)
	UI_SetCaptionIsCenter(labPrice[i], TRUE)
	UI_AddCompent(pgLots, labPrice[i])
	UI_AddCompent(pgHistory, labPrice[i])
	
	-- Иконка валюты кристаллов
	imgPrice[i] = UI_CreateCompent( frmRealMarket, IMAGE_TYPE, "imgPrice_"..i, 14, 22, card_posx + 506, card_posy + 10)
	UI_LoadImage(imgPrice[i], "./texture/ascaron_ui/icon/dollar.png", NORMAL, 14, 24, 0, 0)
	--UI_SetAlpha(imgPrice[i], 200)
	UI_SetIsShow(imgPrice[i], FALSE)
	UI_AddCompent(pgLots, imgPrice[i])
	UI_AddCompent(pgHistory, imgPrice[i])
	
	-- Иконка доступного лота
	imgAvailable[i] = UI_CreateCompent( frmRealMarket, IMAGE_TYPE, "imgAvailable_"..i, 14, 22, card_posx + 506, card_posy + 10)
	UI_LoadImage(imgAvailable[i], "./texture/ascaron_ui/icon/dollargreen.png", NORMAL, 14, 24, 0, 0)
	--UI_SetAlpha(imgAvailable[i], 200)
	UI_SetIsShow(imgAvailable[i], FALSE)
	UI_AddCompent(pgLots, imgAvailable[i])
	UI_AddCompent(pgHistory, imgAvailable[i])
	
	imgTime[i] = UI_CreateCompent( frmRealMarket, IMAGE_TYPE, "imgTime_"..i, 18, 18, card_posx + 44 + 8, card_posy + 44)
	UI_LoadImage( imgTime[i], "./texture/ascaron_ui/asc-part-01.png", NORMAL, 18, 18, 494, 332)
	UI_SetAlpha(imgTime[i], 200)
	UI_SetIsShow(imgTime[i], FALSE)
	UI_AddCompent(pgLots, imgTime[i])
	UI_AddCompent(pgHistory, imgTime[i])
	
	labLeftTime[i] = UI_CreateCompent( frmRealMarket, LABELEX_TYPE, "labLeftTime_"..i, 10, 150, card_posx + 67 + 8, card_posy + 45)
	UI_SetCaption( labLeftTime[i], "Remaining time"..i)
	UI_SetTextColor( labLeftTime[i], argbColor("929292") )
	UI_SetLabelExFont( labLeftTime[i], EXO_Regular_S14, FALSE, COLOR_WHITE )
	UI_SetIsShow(labLeftTime[i],FALSE)
	UI_AddCompent(pgLots, labLeftTime[i])
	UI_AddCompent(pgHistory, labLeftTime[i])
	
	imgQty[i] = UI_CreateCompent( frmRealMarket, IMAGE_TYPE, "imgQty_"..i, 18, 18, card_posx + 343, card_posy + 44)
	UI_LoadImage( imgQty[i], "./texture/ascaron_ui/asc-part-01.png", NORMAL, 18, 18, 516, 331)
	UI_SetAlpha(imgQty[i], 200)
	UI_SetIsShow(imgQty[i], FALSE)
	UI_AddCompent(pgLots, imgQty[i])
	UI_AddCompent(pgHistory, imgQty[i])
	
	labLeftNum[i] = UI_CreateCompent( frmRealMarket, LABELEX_TYPE, "labLeftNum_"..i, 10, 150, card_posx + 364, card_posy + 45)
	UI_SetCaption( labLeftNum[i], "Remaining amount"..i)
	UI_SetTextColor( labLeftNum[i], argbColor("929292") )
	UI_SetLabelExFont( labLeftNum[i], EXO_Regular_S14, FALSE, COLOR_WHITE )		
	UI_SetIsShow(labLeftNum[i],FALSE)
	UI_AddCompent(pgLots, labLeftNum[i])
	UI_AddCompent(pgHistory, labLeftNum[i])
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

-- Координаты положения слота под предмет
local cmdItem_posx, cmdItem_posy = 0, 50

-- Подложка под предмет
imgItem = UI_CreateCompent(frmRealMarket, IMAGE_TYPE, "imgItem", 80, 80, cmdItem_posx, cmdItem_posy)
UI_LoadImage(imgItem, "./texture/ascaron_ui/asc-part-04.png", NORMAL, 80, 80, 134, 0)
UI_AddCompent(pgAddLot, imgItem)

imgLabel01 = UI_CreateCompent(frmRealMarket, IMAGE_TYPE, "imgLabel01", 230, 80, cmdItem_posx + 100, cmdItem_posy)
UI_LoadImage(imgLabel01, "./texture/ascaron_ui/asc-part-04.png", NORMAL, 230, 80, 214, 0)
UI_AddCompent(pgAddLot, imgLabel01)

labLabel01 = UI_CreateCompent(frmRealMarket, LABELEX_TYPE, "labLabel01", 300, 14, cmdItem_posx + 110, cmdItem_posy + 12)
UI_SetCaption(labLabel01, "Переместите предмет \nв соседнюю ячейку")
UI_SetTextColor(labLabel01, argbColor("d7d5da"))
UI_SetLabelExFont(labLabel01, EXO_Regular_S14, FALSE, COLOR_BLACK)
-- UI_SetCaptionIsCenter(labLabel01, TRUE)
UI_AddCompent(pgAddLot, labLabel01)

labLabel02 = UI_CreateCompent(frmRealMarket, LABELEX_TYPE, "labLabel02", 300, 14, cmdItem_posx + 110, cmdItem_posy + 50)
UI_SetCaption(labLabel02, "Выберите предмет для продажи")
UI_SetTextColor(labLabel02, argbColor("77767a"))
UI_SetLabelExFont(labLabel02, EXO_Regular_S11, FALSE, COLOR_BLACK)
UI_AddCompent(pgAddLot, labLabel02)

-- Форма предмета
cmdItem = UI_CreateCompent(frmRealMarket, COMMAND_ONE_TYPE, "cmdItem", 80, 80, cmdItem_posx, cmdItem_posy)
UI_SetHint(cmdItem, "Move item here")
UI_AddCompent(pgAddLot, cmdItem)

-- Купить товар
btnSetLot = CreateButton(2, frmRealMarket, "btnSetLot", "SET LOT", EXO_Regular_S14, 93, 42, 605, 502)
UI_AddCompent(pgAddLot, btnSetLot)

imgLabel03 = UI_CreateCompent(frmRealMarket, IMAGE_TYPE, "imgLabel03", 350, 80, cmdItem_posx + 350, cmdItem_posy)
UI_LoadImage(imgLabel03, "./texture/ascaron_ui/asc-part-04.png", NORMAL, 350, 80, 134, 80)
UI_AddCompent(pgAddLot, imgLabel03)

labLabel03 = UI_CreateCompent(frmRealMarket, LABELEX_TYPE, "labLabel03", 300, 14, cmdItem_posx + 402, cmdItem_posy + 12)
UI_SetCaption(labLabel03, "СТОИМОСТЬ (ЗА ВЕСЬ ЛОТ)")
UI_SetTextColor(labLabel03, argbColor("d7d5da"))
UI_SetLabelExFont(labLabel03, EXO_Regular_S14, FALSE, COLOR_BLACK)
-- UI_SetCaptionIsCenter(labLabel03, TRUE)
UI_AddCompent(pgAddLot, labLabel03)

-- Стоимость лота
editPrice = UI_CreateCompent(frmRealMarket, EDIT_TYPE, "editPrice", 232, 32, cmdItem_posx + 412, cmdItem_posy + 45)
UI_SetTextColor(editPrice, argbColor("c0c0c0"))
UI_SetEditMaxNum(editPrice, 10)
UI_SetEditMaxNumVisible(editPrice, 10)
UI_SetEditCursorColor(editPrice, argbColor("c0c0c0"))
UI_SetEditFont(editPrice, EXO_Regular_S15 )
UI_SetEditClue(editPrice, "1.00 USD - 500.00 USD", argbColor("4d4d4d"))
UI_AddCompent(pgAddLot, editPrice)

imgAlert = UI_CreateCompent(frmRealMarket, IMAGE_TYPE, "imgAlert", 30, 30, cmdItem_posx + 20, cmdItem_posy + 100)
UI_LoadImage(imgAlert, "./texture/ascaron_ui/icon/alert.png", NORMAL, 30, 30, 0, 0)
UI_AddCompent(pgAddLot, imgAlert)

labAlert = UI_CreateCompent(frmRealMarket, LABELEX_TYPE, "labAlert", 300, 14, cmdItem_posx + 70, cmdItem_posy + 105)
UI_SetCaption(labAlert, "Публикуя лот, вы автоматически принимаете правила Игровой биржи")
UI_SetTextColor(labAlert, argbColor("FFCA61"))
UI_SetLabelExFont(labAlert, EXO_Regular_S15, FALSE, COLOR_BLACK)
UI_AddCompent(pgAddLot, labAlert)

labRules = UI_CreateCompent(frmRealMarket, LABELEX_TYPE, "labRules", 300, 14, cmdItem_posx + 20, cmdItem_posy + 105 + 40)
UI_SetCaption(labRules, "1. Вывод денежных средств доступен только при балансе от 100 USD. \n\n2. Общая комиссия Игровой биржи (комиссия сервиса, налоги,\n ввод и вывод средств) состовляет 25% от суммы продажи.\n\n3. Администрация не несет ответственности за ошибки, \nдопущенные при указании стоимости лота. Перед публикацией внимательно проверьте цену и предмет.\n\n4. Стоимость указывается за весь лот, вклюачя его колличество, а не за одну единицу предмета.\n\n5. Минимальная стоимость одного лота - 1.00 USD, максимальная - 500.00 USD.\n\n6. Стоимость публикации одного лота состовляет 5 кристаллов. \n\n7. Продажа игровых предметов в не Игровой биржи строго запрещена. За любые сделки, совершенные в обход биржи, применяется полная и бессрочная блокировка аккаунтов как продавца, так и покупателя.\n\n8. Отмена сделки. После покупки лота другим игроком отмена сделки, возврат средств или предмета невозможны.\n\n9. Возврат комиссии. Комиссия за публикацию лота не возвращается, даже если лот был снят с продажи или не был продан в течении 72 часов.")
UI_SetTextColor(labRules, argbColor("d7d5da"))
UI_SetLabelExFont(labRules, EXO_Regular_S12, FALSE, COLOR_BLACK)
UI_AddCompent(pgAddLot, labRules)

-----------------------------------------------------------------------
-- Страница вывода средств
-----------------------------------------------------------------------

labBankTitle = UI_CreateCompent(frmRealMarket, LABELEX_TYPE, "labBankTitle", 300, 14, 0, 50)
UI_SetCaption(labBankTitle, "1. ВЫБЕРИТЕ МЕТОД ВЫВОДА")
UI_SetTextColor(labBankTitle, argbColor("d7d5da"))
UI_SetLabelExFont(labBankTitle, EXO_Regular_S16, FALSE, COLOR_BLACK)
UI_AddCompent(pgCashOut, labBankTitle)

imgLabel01 = UI_CreateCompent(frmRealMarket, IMAGE_TYPE, "imgLabel01", 340, 80, 0, 80)
UI_LoadImage(imgLabel01, "./texture/ascaron_ui/asc-part-05.png", NORMAL, 340, 80, 0, 0)
UI_AddCompent(pgCashOut, imgLabel01)

imgBank = UI_CreateCompent(frmRealMarket, IMAGE_TYPE, "imgBank", 40, 40, 20, 100)
UI_LoadImage(imgBank, "./texture/ascaron_ui/icon/bank.png", NORMAL, 40, 40, 0, 0)
UI_AddCompent(pgCashOut, imgBank)

labBank = UI_CreateCompent(frmRealMarket, LABELEX_TYPE, "labBank", 300, 14, 80, 100)
UI_SetCaption(labBank, "Банковский перевод Россия")
UI_SetTextColor(labBank, argbColor("d7d5da"))
UI_SetLabelExFont(labBank, EXO_Regular_S14, FALSE, COLOR_BLACK)
UI_AddCompent(pgCashOut, labBank)

labBankD = UI_CreateCompent(frmRealMarket, LABELEX_TYPE, "labBankD", 300, 14, 80, 125)
UI_SetCaption(labBankD, "SPB (Россия) | Курс 1 USD = 75 RUB")
UI_SetTextColor(labBankD, argbColor("77767a"))
UI_SetLabelExFont(labBankD, EXO_Regular_S11, FALSE, COLOR_BLACK)
UI_AddCompent(pgCashOut, labBankD)

checkSpb = UI_CreateCompent(frmRealMarket, CHECK_TYPE, "checkSpb", 25, 25, 340 - 20 - 25, 107)
UI_LoadImage(checkSpb, "./texture/ascaron_ui/asc-part-04.png", UNCHECKED, 40, 40, 0, 302)
UI_LoadImage(checkSpb, "./texture/ascaron_ui/asc-part-04.png", CHECKED, 40, 40, 40, 302)
UI_AddCompent(pgCashOut, checkSpb)

imgLabel01 = UI_CreateCompent(frmRealMarket, IMAGE_TYPE, "imgLabel01", 340, 80, 360, 80)
UI_LoadImage(imgLabel01, "./texture/ascaron_ui/asc-part-05.png", NORMAL, 340, 80, 0, 0)
UI_AddCompent(pgCashOut, imgLabel01)

imgUsdt = UI_CreateCompent(frmRealMarket, IMAGE_TYPE, "imgUsdt", 40, 40, 380, 100)
UI_LoadImage(imgUsdt, "./texture/ascaron_ui/icon/usdt.png", NORMAL, 40, 40, 0, 0)
UI_AddCompent(pgCashOut, imgUsdt)

labUsdt = UI_CreateCompent(frmRealMarket, LABELEX_TYPE, "labUsdt", 300, 14, 440, 100)
UI_SetCaption(labUsdt, "Криптовалюта")
UI_SetTextColor(labUsdt, argbColor("d7d5da"))
UI_SetLabelExFont(labUsdt, EXO_Regular_S14, FALSE, COLOR_BLACK)
UI_AddCompent(pgCashOut, labUsdt)

labUsdtD = UI_CreateCompent(frmRealMarket, LABELEX_TYPE, "labUsdtD", 300, 14, 440, 125)
UI_SetCaption(labUsdtD, "TRC-20 (USDT)")
UI_SetTextColor(labUsdtD, argbColor("77767a"))
UI_SetLabelExFont(labUsdtD, EXO_Regular_S11, FALSE, COLOR_BLACK)
UI_AddCompent(pgCashOut, labUsdtD)

checkUsdt = UI_CreateCompent(frmRealMarket, CHECK_TYPE, "checkUsdt", 25, 25, 340 + 20 + 340 - 20 - 25, 107)
UI_LoadImage(checkUsdt, "./texture/ascaron_ui/asc-part-04.png", UNCHECKED, 40, 40, 0, 302)
UI_LoadImage(checkUsdt, "./texture/ascaron_ui/asc-part-04.png", CHECKED, 40, 40, 40, 302)
UI_AddCompent(pgCashOut, checkUsdt)

labPDetailsTitle = UI_CreateCompent(frmRealMarket, LABELEX_TYPE, "labPDetailsTitle", 300, 14, 0, 180)
UI_SetCaption(labPDetailsTitle, "2. УКАЖИТЕ РЕКВИЗИТЫ")
UI_SetTextColor(labPDetailsTitle, argbColor("d7d5da"))
UI_SetLabelExFont(labPDetailsTitle, EXO_Regular_S16, FALSE, COLOR_BLACK)
UI_AddCompent(pgCashOut, labPDetailsTitle)

imgPDetails = UI_CreateCompent(frmRealMarket, IMAGE_TYPE, "imgPDetails", 340, 55, 0, 210)
UI_LoadImage(imgPDetails, "./texture/ascaron_ui/asc-part-01.png", NORMAL, 420, 60, 420, 747)
UI_AddCompent(pgCashOut, imgPDetails)

editPDetails = UI_CreateCompent( frmRealMarket, EDIT_TYPE, "editPDetails", 340, 20, 20, 230)
UI_SetTextColor(editPDetails, argbColor("c0c0c0") )
UI_SetEditMaxNum(editPDetails, 40 )
UI_SetEditMaxNumVisible(editPDetails, 40)
UI_SetEditCursorColor(editPDetails, argbColor("c0c0c0") )
UI_SetEditFont(editPDetails, EXO_Regular_S12 )
UI_SetEditClue(editPDetails, "Укажите номер телефона и банк получателя", argbColor("908a92"))
UI_AddCompent(pgCashOut, editPDetails)

imgUsdtDetails = UI_CreateCompent(frmRealMarket, IMAGE_TYPE, "imgUsdtDetails", 340, 55, 360, 210)
UI_LoadImage(imgUsdtDetails, "./texture/ascaron_ui/asc-part-01.png", NORMAL, 420, 60, 420, 747)
UI_AddCompent(pgCashOut, imgUsdtDetails)

editUsdtDetails = UI_CreateCompent( frmRealMarket, EDIT_TYPE, "editUsdtDetails", 340, 20, 380, 230)
UI_SetTextColor(editUsdtDetails, argbColor("c0c0c0") )
UI_SetEditMaxNum(editUsdtDetails, 40 )
UI_SetEditMaxNumVisible(editUsdtDetails, 40)
UI_SetEditCursorColor(editUsdtDetails, argbColor("c0c0c0") )
UI_SetEditFont(editUsdtDetails, EXO_Regular_S12 )
UI_SetEditClue(editUsdtDetails, "Укажите адрес кошелька (USDT TRC-20)", argbColor("908a92"))
UI_AddCompent(pgCashOut, editUsdtDetails)

labCashAmountTitle = UI_CreateCompent(frmRealMarket, LABELEX_TYPE, "labCashAmountTitle", 300, 14, 0, 285)
UI_SetCaption(labCashAmountTitle, "3. СУММА ВЫВОДА (USD)")
UI_SetTextColor(labCashAmountTitle, argbColor("d7d5da"))
UI_SetLabelExFont(labCashAmountTitle, EXO_Regular_S16, FALSE, COLOR_BLACK)
UI_AddCompent(pgCashOut, labCashAmountTitle)

imgCurrency = UI_CreateCompent(frmRealMarket, IMAGE_TYPE, "imgCurrency", 340, 55, 0, 315)
UI_LoadImage(imgCurrency, "./texture/ascaron_ui/asc-part-01.png", NORMAL, 420, 60, 420, 747)
UI_AddCompent(pgCashOut, imgCurrency)

editCurrency = UI_CreateCompent(frmRealMarket, EDIT_TYPE, "editCurrency", 340, 20, 20, 335)
UI_SetTextColor(editCurrency, argbColor("c0c0c0"))
UI_SetEditMaxNum(editCurrency, 40 )
UI_SetEditMaxNumVisible(editCurrency, 40)
UI_SetEditCursorColor(editCurrency, argbColor("c0c0c0"))
UI_SetEditFont(editCurrency, EXO_Regular_S12 )
UI_SetEditClue(editCurrency, "100.00 USD", argbColor("908a92"))
UI_AddCompent(pgCashOut, editCurrency)

imgCurrency = UI_CreateCompent(frmRealMarket, IMAGE_TYPE, "imgCurrency", 340, 55, 360, 315)
UI_LoadImage(imgCurrency, "./texture/ascaron_ui/asc-part-01.png", NORMAL, 420, 60, 420, 747)
UI_AddCompent(pgCashOut, imgCurrency)

imgCurrency = UI_CreateCompent(frmRealMarket, IMAGE_TYPE, "imgCurrency", 30, 30, 380, 327)
UI_LoadImage(imgCurrency, "./texture/ascaron_ui/icon/alert.png", NORMAL, 30, 30, 0, 0)
UI_AddCompent(pgCashOut, imgCurrency)

labInform01 = UI_CreateCompent(frmRealMarket, LABELEX_TYPE, "labInform01", 300, 14, 420, 325)
UI_SetCaption(labInform01, "Минимальная сумма вывода - 100 USD")
UI_SetTextColor(labInform01, argbColor("FFCA61"))
UI_SetLabelExFont(labInform01, EXO_Regular_S12, FALSE, COLOR_BLACK)
UI_AddCompent(pgCashOut, labInform01)

labInform02 = UI_CreateCompent(frmRealMarket, LABELEX_TYPE, "labInform02", 300, 14, 420, 345)
UI_SetCaption(labInform02, "Комиссия за вывод не взымается")
UI_SetTextColor(labInform02, argbColor("77767a"))
UI_SetLabelExFont(labInform02, EXO_Regular_S12, FALSE, COLOR_BLACK)
UI_AddCompent(pgCashOut, labInform02)

imgLabel01 = UI_CreateCompent(frmRealMarket, IMAGE_TYPE, "imgLabel01", 700, 91, 0, 390)
UI_LoadImage(imgLabel01, "./texture/ascaron_ui/asc-part-05.png", NORMAL, 700, 91, 0, 80)
UI_AddCompent(pgCashOut, imgLabel01)

imgSheild = UI_CreateCompent(frmRealMarket, IMAGE_TYPE, "imgSheild", 40, 40, 20, 410)
UI_LoadImage(imgSheild, "./texture/ascaron_ui/icon/shieldcheck.png", NORMAL, 40, 40, 0, 0)
UI_AddCompent(pgCashOut, imgSheild)

labInform03 = UI_CreateCompent(frmRealMarket, LABELEX_TYPE, "labInform03", 300, 14, 20 + 40 + 20, 410 - 12)
UI_SetCaption(labInform03, "4. ОТПРАВЛЯЯ ЗАЯВКУ НА ВЫВОД, ВЫ СОГЛАШАЕТЕСЬ:")
UI_SetTextColor(labInform03, argbColor("d7d5da"))
UI_SetLabelExFont(labInform03, EXO_Regular_S16, FALSE, COLOR_BLACK)
UI_AddCompent(pgCashOut, labInform03)

labInform04 = UI_CreateCompent(frmRealMarket, LABELEX_TYPE, "labInform04", 300, 14, 20 + 40 + 20, 410 + 10)
UI_SetCaption(labInform04, "1. Деньги будут отправлены выбранным методом на указанные реквизиты\n2. Администрация не несет ответственности за ошибук в реквизитах получателя.\n3. Средства зачисляются в течении 48 часов.\n4. Администрация вправе запросить дополнительную информацию для варификации заявки.")
UI_SetTextColor(labInform04, argbColor("77767a"))
UI_SetLabelExFont(labInform04, EXO_Regular_S12, FALSE, COLOR_BLACK)
UI_AddCompent(pgCashOut, labInform04)

btnSend = CreateButton(13, frmRealMarket, "btnSend", "Send", EXO_Regular_S14, 130, 42, 570, 500)
UI_AddCompent(pgCashOut, btnSend)