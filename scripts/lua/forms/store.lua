-----------------------------------------------------------------------
-- Store
-----------------------------------------------------------------------
frmStore = UI_CreateForm( "frmStore", FALSE, 760, 632, 300, 100, TRUE, FALSE )
UI_ShowForm( frmStore, FALSE )
UI_AddFormToTemplete( frmStore, FORM_MAIN )
UI_FormSetIsEscClose( frmStore, FALSE )
UI_SetIsDrag( frmStore,FALSE)
UI_SetFormStyle( frmStore, 1)
setBackground(frmStore, true, 760, 632, 255)

labFormname = UI_CreateCompent(frmStore, LABELEX_TYPE, "labFormname", 760, 14, 0, 20)
UI_SetCaption(labFormname, "STORE")
UI_SetTextColor(labFormname, COLOR_WHITE)
UI_SetLabelExFont(labFormname, EXO_Regular_S14, FALSE, COLOR_BLACK)
UI_SetCaptionIsCenter(labFormname, TRUE)

------
-- Создание страниц Store
------
pageStore = UI_CreateCompent(frmStore, PAGE_TYPE, "pageStore", 540, 400, 30, 70)
UI_SetPageButton(pageStore, PAGE_BUTTON_CUSTOM, 48, 16 )

-- Подложка под кнопки (линия)
image = UI_CreateCompent(frmStore, IMAGE_TYPE, "image", 701, 2, 30, 101)
UI_LoadImage(image, "./texture/ascaron_ui/asc-part-01.png", NORMAL, 550, 2, 0, 381)

-- Кнопка магазина кристаллов
pgCrystal = UI_CreatePageItem(pageStore)
crystalItem = UI_GetPageItemObj(pgCrystal, PAGE_ITEM_TITLE)
UI_LoadImage(crystalItem, "./texture/ascaron_ui/asc-part-01.png", PAGE_ITEM_TITLE_NORMAL, 175, 31, 0, 1101)
UI_LoadImage(crystalItem, "./texture/ascaron_ui/asc-part-01.png", PAGE_ITEM_TITLE_ACTIVE, 175, 31, 175, 1101)
UI_SetPos(crystalItem, 0, 0)
UI_SetSize(crystalItem, 175, 31)

-- Кнопка магазина репутации
pgReputation = UI_CreatePageItem(pageStore)
reputationItem = UI_GetPageItemObj(pgReputation, PAGE_ITEM_TITLE)
UI_LoadImage(reputationItem, "./texture/ascaron_ui/asc-part-01.png", PAGE_ITEM_TITLE_NORMAL, 175, 31, 350, 1101)
UI_LoadImage(reputationItem, "./texture/ascaron_ui/asc-part-01.png", PAGE_ITEM_TITLE_ACTIVE, 175, 31, 525, 1101)
UI_SetPos(reputationItem, 175, 0)
UI_SetSize(reputationItem, 175, 31)

-- Кнопка магазина гардероба
pgWardrobe = UI_CreatePageItem(pageStore)
wardrobeItem = UI_GetPageItemObj(pgWardrobe, PAGE_ITEM_TITLE)
UI_LoadImage(wardrobeItem, "./texture/ascaron_ui/asc-part-01.png", PAGE_ITEM_TITLE_NORMAL, 175, 31, 0, 1132)
UI_LoadImage(wardrobeItem, "./texture/ascaron_ui/asc-part-01.png", PAGE_ITEM_TITLE_ACTIVE, 175, 31, 175, 1132)
UI_SetPos(wardrobeItem, 350, 0)
UI_SetSize(wardrobeItem, 175, 31)

-- Кнопка гачи
pgGacha = UI_CreatePageItem(pageStore)
GachaItem = UI_GetPageItemObj(pgGacha, PAGE_ITEM_TITLE)
UI_LoadImage(GachaItem, "./texture/ascaron_ui/asc-part-01.png", PAGE_ITEM_TITLE_NORMAL, 175, 31, 350, 1132)
UI_LoadImage(GachaItem, "./texture/ascaron_ui/asc-part-01.png", PAGE_ITEM_TITLE_ACTIVE, 175, 31, 525, 1132)
UI_SetPos(GachaItem, 525, 0)
UI_SetSize(GachaItem, 175, 31)

------
-- Спец. кнопки
------
	-- Пополнить счет
	btnPayment = CreateButton(0, frmStore, "btnPayment", "PAYMENT", EXO_Regular_S20, 142, 42, 453, 500)
	UI_AddCompent(pgCrystal, btnPayment)
	UI_AddCompent(pgReputation, btnPayment)

	-- Купить товар
	btnBuy = CreateButton(0, frmStore, "btnBuy", "BUY", EXO_Regular_S20, 95, 42, 605, 500)
	UI_AddCompent(pgCrystal, btnBuy)
	UI_AddCompent(pgReputation, btnBuy)

------
-- Состояние кристаллов
------
	-- Подложка под шкалу кристаллов
	image = UI_CreateCompent(frmStore, IMAGE_TYPE, "image", 80, 19, 29, 504)
	UI_LoadImage(image, "./texture/ascaron_ui/asc-part-01.png", NORMAL, 80, 19, 324, 329)
	UI_AddCompent(pgCrystal, image)
	UI_AddCompent(pgReputation, image)

	-- Шкала купленных кристаллов
	proCrystal = UI_CreateCompent(frmStore, PROGRESS_TYPE, "proCrystal", 74, 13, 32, 507)
	UI_LoadScaleImage( proCrystal, "./texture/ascaron_ui/asc-part-01.png", PROGRESS_PROGRESS, 74, 13, 324, 348, 1.0, 1.0 )
	UI_SetHint( proCrystal, "Level up" )
	UI_SetProgressHintStyle( proCrystal, PROGRESS_HINT_NUM )
	UI_AddCompent(pgCrystal, proCrystal)
	UI_AddCompent(pgReputation, proCrystal)

	-- Сумма купленных кристаллов
	labCrystal = UI_CreateCompent( frmStore, LABELEX_TYPE, "labCrystal", 74, 10, 32, 508)
	UI_SetCaption( labCrystal, "99999")
	UI_SetTextColor( labCrystal, argbColor("ffffff"))
	UI_SetLabelExFont( labCrystal, EXO_Regular_S10, FALSE, COLOR_WHITE )
	UI_SetCaptionIsCenter(labCrystal, TRUE)
	UI_AddCompent(pgCrystal, labCrystal)
	UI_AddCompent(pgReputation, labCrystal)

	-- Иконка кристалла
	image = UI_CreateCompent(frmStore, IMAGE_TYPE, "image", 24, 24, 0, 502)
	UI_LoadImage(image, "./texture/ascaron_ui/asc-part-01.png", NORMAL, 24, 24, 271, 329)
	UI_AddCompent(pgCrystal, image)
	UI_AddCompent(pgReputation, image)

	-- 
	labPremium = UI_CreateCompent(frmStore, LABELEX_TYPE, "labPremium", 80, 13, 29, 531)
	UI_SetCaption(labPremium, "Premium")
	UI_SetTextColor(labPremium, argbColor("a2a1a2"))
	UI_SetLabelExFont(labPremium, EXO_Regular_S13, FALSE, COLOR_BLACK)
	UI_SetCaptionIsCenter(labPremium, TRUE)
	UI_AddCompent(pgCrystal, labPremium)
	UI_AddCompent(pgReputation, labPremium)

	-- Уровень премиума
	labPremiumLv = UI_CreateCompent(frmStore, LABELEX_TYPE, "labPremiumLv", 35, 13, -5, 531)
	UI_SetCaption(labPremiumLv, "Lv1")
	UI_SetTextColor(labPremiumLv, argbColor("a2a1a2"))
	UI_SetLabelExFont(labPremiumLv, EXO_Regular_S13, FALSE, COLOR_BLACK)
	UI_SetCaptionIsCenter(labPremiumLv, TRUE)
	UI_AddCompent(pgCrystal, labPremiumLv)
	UI_AddCompent(pgReputation, labPremiumLv)

------
-- Состояние репутации
------
	-- Подложка под шкалу кристаллов
	image = UI_CreateCompent(frmStore, IMAGE_TYPE, "image", 80, 19, 29 + 134, 504)
	UI_LoadImage(image, "./texture/ascaron_ui/asc-part-01.png", NORMAL, 80, 19, 324, 329)
	UI_AddCompent(pgCrystal, image)
	UI_AddCompent(pgReputation, image)

	-- Шкала купленных кристаллов
	proReputation = UI_CreateCompent(frmStore, PROGRESS_TYPE, "proReputation", 74, 13, 32 + 134, 507)
	UI_LoadScaleImage( proReputation, "./texture/ascaron_ui/asc-part-01.png", PROGRESS_PROGRESS, 74, 13, 324, 361, 1.0, 1.0 )
	UI_SetHint( proReputation, "Level up" )
	UI_SetProgressHintStyle( proReputation, PROGRESS_HINT_NUM )
	UI_AddCompent(pgCrystal, proReputation)
	UI_AddCompent(pgReputation, proReputation)

	-- Сумма купленных кристаллов
	labReputation = UI_CreateCompent( frmStore, LABELEX_TYPE, "labReputation", 74, 10, 32 + 134, 508)
	UI_SetCaption( labReputation, "99999")
	UI_SetTextColor( labReputation, argbColor("ffffff"))
	UI_SetLabelExFont( labReputation, EXO_Regular_S10, FALSE, COLOR_WHITE )
	UI_SetCaptionIsCenter(labReputation, TRUE)
	UI_AddCompent(pgCrystal, labReputation)
	UI_AddCompent(pgReputation, labReputation)

	-- Иконка кристалла
	image = UI_CreateCompent(frmStore, IMAGE_TYPE, "image", 24, 24, 0 + 134, 502)
	UI_LoadImage(image, "./texture/ascaron_ui/asc-part-01.png", NORMAL, 22, 22, 298, 329)
	UI_AddCompent(pgCrystal, image)
	UI_AddCompent(pgReputation, image)

	-- 
	labFame = UI_CreateCompent(frmStore, LABELEX_TYPE, "labFame", 80, 13, 29 + 134, 531)
	UI_SetCaption(labFame, "Reputation")
	UI_SetTextColor(labFame, argbColor("a2a1a2"))
	UI_SetLabelExFont(labFame, EXO_Regular_S13, FALSE, COLOR_BLACK)
	UI_SetCaptionIsCenter(labFame, TRUE)
	UI_AddCompent(pgCrystal, labFame)
	UI_AddCompent(pgReputation, labFame)

	-- Уровень премиума
	labFameLv = UI_CreateCompent(frmStore, LABELEX_TYPE, "labFameLv", 35, 13, -5  + 134, 531)
	UI_SetCaption(labFameLv, "Lv1")
	UI_SetTextColor(labFameLv, argbColor("a2a1a2"))
	UI_SetLabelExFont(labFameLv, EXO_Regular_S13, FALSE, COLOR_BLACK)
	UI_SetCaptionIsCenter(labFameLv, TRUE)
	UI_AddCompent(pgCrystal, labFameLv)
	UI_AddCompent(pgReputation, labFameLv)

------
-- Переключатель страниц
------
	btnLeftPage = UI_CreateCompent( frmStore, BUTTON_TYPE, "btnLeftPage", 20, 20, 299, 507)
	UI_LoadButtonImage(btnLeftPage, "./texture/ascaron_ui/asc-part-01.png", 20, 20, 410, 349, TRUE)
	UI_SetIsShow(btnLeftPage, FALSE)
	UI_AddCompent(pgCrystal, btnLeftPage)
	UI_AddCompent(pgReputation, btnLeftPage)
	
	labListPage = UI_CreateCompent( frmStore, LABELEX_TYPE, "labListPage", 51, 14, 324, 509)
	UI_SetCaption(labListPage, "0\0")
	UI_SetTextColor(labListPage, argbColor("a2a1a2"))
	UI_SetLabelExFont(labListPage, EXO_Regular_S14, FALSE, COLOR_WHITE )
	UI_SetCaptionIsCenter(labListPage, TRUE)
	UI_SetIsShow(labListPage, FALSE)
	UI_AddCompent(pgCrystal, labListPage)
	UI_AddCompent(pgReputation, labListPage)
	
	btnRightPage = UI_CreateCompent(frmStore, BUTTON_TYPE, "btnRightPage", 20, 20, 380, 507)
	UI_LoadButtonImage(btnRightPage, "./texture/ascaron_ui/asc-part-01.png", 20, 20, 409, 329, TRUE)
	UI_SetIsShow(btnRightPage, FALSE)
	UI_AddCompent(pgCrystal, btnRightPage)
	UI_AddCompent(pgReputation, btnRightPage)
	
------
-- Меню магазина кристаллов\репутации
------
listMenu = UI_CreateListView( frmStore, "listMenu", 150, 350, 0, 40, 2, 50)
UI_ListViewSetTitle(listMenu, 0, 150, "", 0, 0, 0, 0)
UI_ListSetItemMargin(listMenu, 15, 15 )						-- Перемещение текста внутри строки
UI_SetListRowHeight(listMenu, 40 )							-- Отступ строк между собой
UI_SetListIsMouseFollow(listMenu, FALSE)
UI_ListLoadSelectImage(listMenu, "./texture/ascaron_ui/asc-part-01.png", 420, 55, 364, 272)
--UI_SetImageAlpha(listMenu, 134)
--UI_SetListFontColor(listItems, COLOR_BLACK, COLOR_RED )
UI_SetIsShow(listMenu, FALSE)
UI_AddCompent(pgCrystal, listMenu)
UI_AddCompent(pgReputation, listMenu)

------
-- Формирование пакетов в магазине (кристаллы\репутация)
------
	local btnHover = {}
	local imgHover = {}
	local cmdStore = {}
	local labName = {}
	local labPrice = {}
	local imgPrice1 = {}
	local imgPrice2 = {}
	local imgTime = {}
	local labLeftTime = {}
	local imgQty = {}
	local labLeft = {}
	local labLeftNum = {}
	local imgEdtQty = {}
	local labAmount = {}
	local btnAmountUp = {}
	local btnAmountDown = {}

	local posx = 35
	local posy = 70
	for i = 0, 4, 1 do
		local card_posx = 160
		local card_posy = 53 + (i * 82)
		
		-- Hover \ click effect
		btnHover[i] = UI_CreateCompent(frmStore, BUTTON_TYPE, "btnHover_"..i, 540, 72, card_posx, card_posy)
		UI_LoadButtonImage( btnHover[i], "./texture/ascaron_ui/asc-part-02.png", 540, 72, 288, 0, FALSE)
		UI_SetIsShow(btnHover[i], FALSE)
		UI_AddCompent(pgCrystal, btnHover[i])
		UI_AddCompent(pgReputation, btnHover[i])
		
		-- Нажатый пакет (подсветка)
		imgHover[i] = UI_CreateCompent( frmStore, IMAGE_TYPE, "imgHover_"..i, 540, 72, card_posx, card_posy)
		UI_LoadImage(imgHover[i], "./texture/ascaron_ui/asc-part-02.png", NORMAL, 540, 72, 288, 72)
		--UI_SetAlpha(imgHover[i], 200)
		UI_SetIsShow(imgHover[i], FALSE)
		UI_AddCompent(pgCrystal, imgHover[i])
		UI_AddCompent(pgReputation, imgHover[i])
		
		-- Package icon
		cmdStore[i] = UI_CreateCompent( frmStore, COMMAND_ONE_TYPE, "cmdStore_"..i, 32, 32, card_posx + 10, card_posy + 20)	
		UI_AddCompent(pgCrystal, cmdStore[i])
		UI_AddCompent(pgReputation, cmdStore[i])
		
		-- Название пакета
		labName[i] = UI_CreateCompent( frmStore, LABELEX_TYPE, "labName_"..i, 10, 150, card_posx + 44 + 8, card_posy + 17 )
		UI_SetCaption(labName[i], "Item"..i)
		UI_SetTextColor(labName[i], argbColor("ffffff"))
		UI_SetLabelExFont(labName[i], EXO_Regular_S15, FALSE, COLOR_WHITE )
		UI_SetIsShow(labName[i],FALSE)
		UI_AddCompent(pgCrystal, labName[i])
		UI_AddCompent(pgReputation, labName[i])
		
		-- Цена пакета
		labPrice[i] = UI_CreateCompent( frmStore, LABELEX_TYPE, "labPrice_"..i, 53, 12, card_posx + 440, card_posy + 13)
		UI_SetCaption(labPrice[i], "1000")
		UI_SetTextColor(labPrice[i], argbColor("ffffff"))
		UI_SetLabelExFont(labPrice[i], EXO_Regular_S14, FALSE, COLOR_WHITE )
		UI_SetIsShow(labPrice[i], FALSE)
		UI_SetCaptionIsCenter(labPrice[i], TRUE)
		UI_AddCompent(pgCrystal, labPrice[i])
		UI_AddCompent(pgReputation, labPrice[i])
		
		-- Иконка валюты кристаллов
		imgPrice1[i] = UI_CreateCompent( frmStore, IMAGE_TYPE, "imgPrice1_"..i, 24, 24, card_posx + 506, card_posy + 10)
		UI_LoadImage(imgPrice1[i], "./texture/ascaron_ui/asc-part-01.png", NORMAL, 24, 24, 271, 329)
		--UI_SetAlpha(imgPrice1[i], 200)
		UI_SetIsShow(imgPrice1[i], FALSE)
		UI_AddCompent(pgCrystal, imgPrice1[i])
		UI_AddCompent(pgReputation, imgPrice1[i])
		
		-- Иконка валюты кристаллов
		imgPrice2[i] = UI_CreateCompent( frmStore, IMAGE_TYPE, "imgPrice2_"..i, 24, 24, card_posx + 506, card_posy + 10)
		UI_LoadImage(imgPrice2[i], "./texture/ascaron_ui/asc-part-01.png", NORMAL, 22, 22, 298, 329)
		--UI_SetAlpha(imgPrice2[i], 200)
		UI_SetIsShow(imgPrice2[i], FALSE)
		UI_AddCompent(pgCrystal, imgPrice2[i])
		UI_AddCompent(pgReputation, imgPrice2[i])
		
		imgTime[i] = UI_CreateCompent( frmStore, IMAGE_TYPE, "imgTime_"..i, 18, 18, card_posx + 44 + 8, card_posy + 44)
		UI_LoadImage( imgTime[i], "./texture/ascaron_ui/asc-part-01.png", NORMAL, 18, 18, 494, 332)
		UI_SetAlpha(imgTime[i], 200)
		UI_SetIsShow(imgTime[i], FALSE)
		UI_AddCompent(pgCrystal, imgTime[i])
		UI_AddCompent(pgReputation, imgTime[i])
		
		labLeftTime[i] = UI_CreateCompent( frmStore, LABELEX_TYPE, "labLeftTime_"..i, 10, 150, card_posx + 67 + 8, card_posy + 45)
		UI_SetCaption( labLeftTime[i], "Remaining time"..i)
		UI_SetTextColor( labLeftTime[i], argbColor("929292") )
		UI_SetLabelExFont( labLeftTime[i], EXO_Regular_S14, FALSE, COLOR_WHITE )
		UI_SetIsShow(labLeftTime[i],FALSE)
		UI_AddCompent(pgCrystal, labLeftTime[i])
		UI_AddCompent(pgReputation, labLeftTime[i])
		
		imgQty[i] = UI_CreateCompent( frmStore, IMAGE_TYPE, "imgQty_"..i, 18, 18, card_posx + 343, card_posy + 44)
		UI_LoadImage( imgQty[i], "./texture/ascaron_ui/asc-part-01.png", NORMAL, 18, 18, 516, 331)
		UI_SetAlpha(imgQty[i], 200)
		UI_SetIsShow(imgQty[i], FALSE)
		UI_AddCompent(pgCrystal, imgQty[i])
		UI_AddCompent(pgReputation, imgQty[i])
		
		labLeft[i] = UI_CreateCompent( frmStore, LABELEX_TYPE, "labLeft_"..i, 10, 150, card_posx + 364, card_posy + 45)
		UI_SetCaption( labLeft[i], "Qty available: ")
		UI_SetTextColor( labLeft[i], argbColor("929292") )
		UI_SetLabelExFont( labLeft[i], EXO_Regular_S14, FALSE, COLOR_WHITE )		
		UI_SetIsShow(labLeft[i],FALSE)
		UI_AddCompent(pgCrystal, labLeft[i])
		UI_AddCompent(pgReputation, labLeft[i])
		
		labLeftNum[i] = UI_CreateCompent( frmStore, LABELEX_TYPE, "labLeftNum_"..i, 10, 150, card_posx + 467, card_posy + 45)
		UI_SetCaption( labLeftNum[i], "Remaining amount"..i)
		UI_SetTextColor( labLeftNum[i], argbColor("929292") )
		UI_SetLabelExFont( labLeftNum[i], EXO_Regular_S14, FALSE, COLOR_WHITE )		
		UI_SetIsShow(labLeftNum[i],FALSE)
		UI_AddCompent(pgCrystal, labLeftNum[i])
		UI_AddCompent(pgReputation, labLeftNum[i])
	end


-----------------------------------------------------------------------
-- Диалоговое окно при покупке пакета
-----------------------------------------------------------------------	
frmStoreBox = UI_CreateForm( "frmStoreBox",  FALSE, 480, 375, 0, 0, FALSE, FALSE )
UI_ShowForm( frmStoreBox, FALSE )
UI_AddFormToTemplete( frmStoreBox, FORM_DIALOG )
UI_SetIsDrag( frmStoreBox, TRUE )
UI_SetFormStyle( frmStoreBox, FORM_NONE )

setBackground(frmStoreBox, true, 480, 375, 255)

labName = UI_CreateCompent( frmStoreBox, LABELEX_TYPE, "labName", 480, 275, 0, 20)
UI_SetCaption( labName, "0" )
UI_SetTextColor( labName, argbColor("d0d0d1"))
UI_SetLabelExFont( labName, EXO_Regular_S16, FALSE, COLOR_BLACK )
UI_SetCaptionIsCenter(labName, TRUE)

CreateImageGrid(frmStoreBox, 6, 1, 30, 38, 38, "./texture/ascaron_ui/asc-part-01.png", 55, 55, 52, 49, 255, 50, 50)
Items = UI_CreateCompent(frmStoreBox, GOODS_GRID_TYPE, "Items", 230, 360, 53, 53) 
UI_SetGridSpace(Items, 36, 9)
UI_SetGridContent(Items, 1, 6)
UI_SetGridUnitSize(Items, 32, 32)
UI_SetMargin(Items, 0, 0, 0, 0)

labPrice = UI_CreateCompent( frmStoreBox, LABELEX_TYPE, "labPrice", 87, 11, 250, 235 )
UI_SetCaption( labPrice, "0" )
UI_SetTextColor( labPrice, argbColor("c0c0c0") )
UI_SetEditCursorColor( labPrice, COLOR_WHITE )
UI_SetLabelExFont( labPrice, EXO_Regular_S20, FALSE, COLOR_WHITE )

image = UI_CreateCompent(frmStoreBox, IMAGE_TYPE,"image", 200, 55, 30, 220)
UI_LoadImage( image, "./texture/ascaron_ui/asc-part-01.png", NORMAL, 420, 60, 420, 747)

edtNumber = UI_CreateCompent( frmStoreBox, EDIT_TYPE, "edtNumber", 420, 20, 50, 235 )
UI_SetTextColor( edtNumber, argbColor("c0c0c0") )
UI_SetEditMaxNum( edtNumber, 3 )
UI_SetEditCursorColor( edtNumber, argbColor("c0c0c0") )
UI_SetEditFont( edtNumber, EXO_Regular_S20 )
UI_SetEditClue(edtNumber, "Quantity", argbColor("908a92"))

-- botton "ok"
btnYes = CreateButton(0, frmStoreBox, "btnYes", "ACCEPT", EXO_Regular_S20, 420, 60, 30, 285)
UI_SetButtonModalResult( btnYes, BUTTON_YES )
UI_FormSetEnterButton( frmSelect, btnYes )