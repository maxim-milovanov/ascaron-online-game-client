-----------------------------------------------------------------------
-- Store
-----------------------------------------------------------------------
frmStore = UI_CreateForm("frmStore", FALSE, 760, 632, 300, 100, TRUE, FALSE)
UI_ShowForm(frmStore, FALSE )
UI_AddFormToTemplete(frmStore, FORM_MAIN)
UI_FormSetIsEscClose(frmStore, TRUE)
UI_SetIsDrag(frmStore, FALSE)
UI_SetFormStyle(frmStore, FORM_ALLCENTER)
UI_FormSetHotKey(frmStore, ALT_KEY, HOTKEY_F)
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
	btnPayment = CreateButton(2, frmStore, "btnPayment", "PAYMENT", EXO_Regular_S14, 106, 42, 491, 502)
	UI_AddCompent(pgCrystal, btnPayment)
	UI_AddCompent(pgReputation, btnPayment)
	UI_AddCompent(pgWardrobe, btnPayment)
	UI_AddCompent(pgGacha, btnPayment)

	-- Купить товар
	btnBuy = CreateButton(2, frmStore, "btnBuy", "BUY", EXO_Regular_S14, 93, 42, 605, 502)
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
	UI_AddCompent(pgWardrobe, image)
	UI_AddCompent(pgGacha, image)
	
	-- Шкала купленных кристаллов
	proCrystal = UI_CreateCompent(frmStore, PROGRESS_TYPE, "proCrystal", 74, 13, 32, 507)
	UI_LoadScaleImage( proCrystal, "./texture/ascaron_ui/asc-part-01.png", PROGRESS_PROGRESS, 74, 13, 324, 348, 1.0, 1.0 )
	UI_SetHint( proCrystal, "Level up" )
	UI_SetProgressHintStyle( proCrystal, PROGRESS_HINT_NUM )
	UI_AddCompent(pgCrystal, proCrystal)
	UI_AddCompent(pgReputation, proCrystal)
	UI_AddCompent(pgWardrobe, proCrystal)
	UI_AddCompent(pgGacha, proCrystal)

	-- Сумма купленных кристаллов
	labCrystal = UI_CreateCompent( frmStore, LABELEX_TYPE, "labCrystal", 74, 10, 32, 508)
	UI_SetCaption( labCrystal, "99999")
	UI_SetTextColor( labCrystal, argbColor("ffffff"))
	UI_SetLabelExFont( labCrystal, EXO_Regular_S10, FALSE, COLOR_WHITE )
	UI_SetCaptionIsCenter(labCrystal, TRUE)
	UI_AddCompent(pgCrystal, labCrystal)
	UI_AddCompent(pgReputation, labCrystal)
	UI_AddCompent(pgWardrobe, labCrystal)
	UI_AddCompent(pgGacha, labCrystal)

	-- Иконка кристалла
	image = UI_CreateCompent(frmStore, IMAGE_TYPE, "image", 24, 24, 0, 502)
	UI_LoadImage(image, "./texture/ascaron_ui/asc-part-01.png", NORMAL, 24, 24, 271, 329)
	UI_AddCompent(pgCrystal, image)
	UI_AddCompent(pgReputation, image)
	UI_AddCompent(pgWardrobe, image)
	UI_AddCompent(pgGacha, image)

	-- 
	labPremium = UI_CreateCompent(frmStore, LABELEX_TYPE, "labPremium", 80, 13, 29, 531)
	UI_SetCaption(labPremium, "Premium")
	UI_SetTextColor(labPremium, argbColor("a2a1a2"))
	UI_SetLabelExFont(labPremium, EXO_Regular_S13, FALSE, COLOR_BLACK)
	UI_SetCaptionIsCenter(labPremium, TRUE)
	UI_AddCompent(pgCrystal, labPremium)
	UI_AddCompent(pgReputation, labPremium)
	UI_AddCompent(pgWardrobe, labPremium)
	UI_AddCompent(pgGacha, labPremium)

	-- Уровень премиума
	labPremiumLv = UI_CreateCompent(frmStore, LABELEX_TYPE, "labPremiumLv", 35, 13, -5, 531)
	UI_SetCaption(labPremiumLv, "Lv1")
	UI_SetTextColor(labPremiumLv, argbColor("a2a1a2"))
	UI_SetLabelExFont(labPremiumLv, EXO_Regular_S13, FALSE, COLOR_BLACK)
	UI_SetCaptionIsCenter(labPremiumLv, TRUE)
	UI_AddCompent(pgCrystal, labPremiumLv)
	UI_AddCompent(pgReputation, labPremiumLv)
	UI_AddCompent(pgWardrobe, labPremiumLv)
	UI_AddCompent(pgGacha, labPremiumLv)

------
-- Состояние репутации
------
	-- Подложка под шкалу кристаллов
	image = UI_CreateCompent(frmStore, IMAGE_TYPE, "image", 80, 19, 29 + 134, 504)
	UI_LoadImage(image, "./texture/ascaron_ui/asc-part-01.png", NORMAL, 80, 19, 324, 329)
	UI_AddCompent(pgCrystal, image)
	UI_AddCompent(pgReputation, image)
	UI_AddCompent(pgWardrobe, image)

	-- Шкала купленных кристаллов
	proReputation = UI_CreateCompent(frmStore, PROGRESS_TYPE, "proReputation", 74, 13, 166, 507)
	UI_LoadScaleImage( proReputation, "./texture/ascaron_ui/asc-part-01.png", PROGRESS_PROGRESS, 74, 13, 324, 361, 1.0, 1.0 )
	UI_SetHint( proReputation, "Level up" )
	UI_SetProgressHintStyle( proReputation, PROGRESS_HINT_NUM )
	UI_AddCompent(pgCrystal, proReputation)
	UI_AddCompent(pgReputation, proReputation)
	UI_AddCompent(pgWardrobe, proReputation)

	-- Сумма купленных кристаллов
	labReputation = UI_CreateCompent( frmStore, LABELEX_TYPE, "labReputation", 74, 10, 32 + 134, 508)
	UI_SetCaption( labReputation, "99999")
	UI_SetTextColor( labReputation, argbColor("ffffff"))
	UI_SetLabelExFont( labReputation, EXO_Regular_S10, FALSE, COLOR_WHITE )
	UI_SetCaptionIsCenter(labReputation, TRUE)
	UI_AddCompent(pgCrystal, labReputation)
	UI_AddCompent(pgReputation, labReputation)
	UI_AddCompent(pgWardrobe, labReputation)

	-- Иконка кристалла
	image = UI_CreateCompent(frmStore, IMAGE_TYPE, "image", 24, 24, 0 + 134, 502)
	UI_LoadImage(image, "./texture/ascaron_ui/asc-part-01.png", NORMAL, 22, 22, 298, 329)
	UI_AddCompent(pgCrystal, image)
	UI_AddCompent(pgReputation, image)
	UI_AddCompent(pgWardrobe, image)

	-- 
	labFame = UI_CreateCompent(frmStore, LABELEX_TYPE, "labFame", 80, 13, 29 + 134, 531)
	UI_SetCaption(labFame, "Reputation")
	UI_SetTextColor(labFame, argbColor("a2a1a2"))
	UI_SetLabelExFont(labFame, EXO_Regular_S13, FALSE, COLOR_BLACK)
	UI_SetCaptionIsCenter(labFame, TRUE)
	UI_AddCompent(pgCrystal, labFame)
	UI_AddCompent(pgReputation, labFame)
	UI_AddCompent(pgWardrobe, labFame)

	-- Уровень премиума
	labFameLv = UI_CreateCompent(frmStore, LABELEX_TYPE, "labFameLv", 35, 13, -5  + 134, 531)
	UI_SetCaption(labFameLv, "Lv1")
	UI_SetTextColor(labFameLv, argbColor("a2a1a2"))
	UI_SetLabelExFont(labFameLv, EXO_Regular_S13, FALSE, COLOR_BLACK)
	UI_SetCaptionIsCenter(labFameLv, TRUE)
	UI_AddCompent(pgCrystal, labFameLv)
	UI_AddCompent(pgReputation, labFameLv)
	UI_AddCompent(pgWardrobe, labFameLv)

------
-- Состояние Gacha-coin
------
	-- Подложка под шкалу
	image = UI_CreateCompent(frmStore, IMAGE_TYPE, "image", 80, 19, 29 + 134, 504)
	UI_LoadImage(image, "./texture/ascaron_ui/asc-part-01.png", NORMAL, 80, 19, 324, 329)
	UI_AddCompent(pgGacha, image)

	-- Шкала
	proGachaCoin = UI_CreateCompent(frmStore, PROGRESS_TYPE, "proGachaCoin", 74, 13, 166, 507)
	UI_LoadScaleImage(proGachaCoin, "./texture/ascaron_ui/asc-part-01.png", PROGRESS_PROGRESS, 74, 13, 497, 359, 1.0, 1.0 )
	UI_SetHint(proGachaCoin, "Level up" )
	UI_SetProgressHintStyle(proGachaCoin, PROGRESS_HINT_NUM )
	UI_AddCompent(pgGacha, proGachaCoin)

	-- 
	labGachaCoin = UI_CreateCompent( frmStore, LABELEX_TYPE, "labGachaCoin", 74, 10, 32 + 134, 508)
	UI_SetCaption(labGachaCoin, "99999")
	UI_SetTextColor(labGachaCoin, argbColor("ffffff"))
	UI_SetLabelExFont(labGachaCoin, EXO_Regular_S10, FALSE, COLOR_WHITE )
	UI_SetCaptionIsCenter(labGachaCoin, TRUE)
	UI_AddCompent(pgGacha, labGachaCoin)

	-- Иконка GC
	image = UI_CreateCompent(frmStore, IMAGE_TYPE, "image", 24, 24, 0 + 134, 502)
	UI_LoadImage(image, "./texture/ascaron_ui/asc-part-01.png", NORMAL, 24, 24, 271, 355)
	UI_AddCompent(pgGacha, image)
	
	-- 
	labGacha = UI_CreateCompent(frmStore, LABELEX_TYPE, "labGacha", 80, 13, 29 + 134, 531)
	UI_SetCaption(labGacha, "Gacha Coin")
	UI_SetTextColor(labGacha, argbColor("a2a1a2"))
	UI_SetLabelExFont(labGacha, EXO_Regular_S13, FALSE, COLOR_BLACK)
	UI_SetCaptionIsCenter(labGacha, TRUE)
	UI_AddCompent(pgGacha, labGacha)

	-- Уровень GC
	labGachaLv = UI_CreateCompent(frmStore, LABELEX_TYPE, "labGachaLv", 35, 13, -5  + 134, 531)
	UI_SetCaption(labGachaLv, "GC")
	UI_SetTextColor(labGachaLv, argbColor("a2a1a2"))
	UI_SetLabelExFont(labGachaLv, EXO_Regular_S13, FALSE, COLOR_BLACK)
	UI_SetCaptionIsCenter(labGachaLv, TRUE)
	UI_AddCompent(pgGacha, labGachaLv)
	
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
	listMenu = UI_CreateListView( frmStore, "listMenu", 154, 370, -7, 40, 2, eNoTitle)
	UI_ListViewSetTitle(listMenu, 0, 150, "", 0, 0, 0, 0)
	UI_ListSetItemMargin(listMenu, 15, 15 )						-- Перемещение текста внутри строки
	UI_SetListRowHeight(listMenu, 44 )							-- Отступ строк между собой
	UI_SetListIsMouseFollow(listMenu, FALSE)
	UI_LoadListItemImage(listMenu, "./texture/ascaron_ui/asc-part-01.png", 154, 44, 550, 1171, 144, 44)
	UI_ListLoadSelectImage(listMenu, "./texture/ascaron_ui/asc-part-01.png", 154, 44, 710, 1171)
	UI_SetIsShow(listMenu, FALSE)
	UI_AddCompent(pgCrystal, listMenu)
	UI_AddCompent(pgReputation, listMenu)
	
	-- 
	btnHelpStoreC = UI_CreateCompent(frmStore, BUTTON_TYPE, "btnHelpStoreC", 50, 16, 0, 410)
	UI_LoadButtonImage(btnHelpStoreC, "./texture/ascaron_ui/asc-part-02.png", 50, 16, 0, 398, FALSE)
	UI_AddCompent(pgCrystal, btnHelpStoreC)
	
	-- 
	btnHelpStoreP = UI_CreateCompent(frmStore, BUTTON_TYPE, "btnHelpStoreP", 50, 16, 0, 410)
	UI_LoadButtonImage(btnHelpStoreP, "./texture/ascaron_ui/asc-part-02.png", 50, 16, 50, 398, FALSE)
	UI_AddCompent(pgReputation, btnHelpStoreP)
	
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
frmStoreBox = UI_CreateForm( "frmStoreBox",  FALSE, 440, 260, 0, 0, FALSE, FALSE )
UI_ShowForm( frmStoreBox, FALSE )
UI_AddFormToTemplete( frmStoreBox, FORM_DIALOG )
UI_SetIsDrag( frmStoreBox, TRUE )
UI_SetFormStyle( frmStoreBox, FORM_NONE )

setBackground(frmStoreBox, true, 440, 260, 255)
setBackground(frmStoreBox, true, 440, 200, 255)

labName = UI_CreateCompent( frmStoreBox, LABELEX_TYPE, "labName", 440, 16, 0, 20)
UI_SetCaption( labName, "0" )
UI_SetTextColor( labName, argbColor("d0d0d1"))
UI_SetLabelExFont( labName, EXO_Regular_S16, FALSE, COLOR_BLACK )
UI_SetCaptionIsCenter(labName, TRUE)

-- -20 +12
CreateImageGrid(frmStoreBox, 6, 1, 10, 54, 54, "./texture/ascaron_ui/asc-part-01.png", 55, 55, 52, 49, 255, 30, 62)
Items = UI_CreateCompent(frmStoreBox, GOODS_GRID_TYPE, "Items", 400, 100, 30 + 11 , 62 + 11) 
UI_SetGridSpace(Items, 32, 9)
UI_SetGridContent(Items, 1, 6)
UI_SetGridUnitSize(Items, 32, 32)
UI_SetMargin(Items, 0, 0, 0, 0)

labPrice = UI_CreateCompent(frmStoreBox, LABELEX_TYPE, "labPrice", 87, 11, 160, 146)
UI_SetCaption( labPrice, "0" )
UI_SetTextColor( labPrice, argbColor("c0c0c0") )
UI_SetEditCursorColor( labPrice, COLOR_WHITE )
UI_SetLabelExFont( labPrice, EXO_Regular_S20, FALSE, COLOR_WHITE )

image = UI_CreateCompent(frmStoreBox, IMAGE_TYPE, "image", 120, 42, 30, 137)
UI_LoadImage(image, "./texture/ascaron_ui/asc-part-02.png", NORMAL, 120, 42, 395, 1058)

edtNumber = UI_CreateCompent(frmStoreBox, EDIT_TYPE, "edtNumber", 420, 20, 45, 146)
UI_SetTextColor( edtNumber, argbColor("c0c0c0") )
UI_SetEditMaxNum( edtNumber, 3 )
UI_SetEditCursorColor( edtNumber, argbColor("c0c0c0") )
UI_SetEditFont( edtNumber, EXO_Regular_S20 )
UI_SetEditClue(edtNumber, "Quantity", argbColor("908a92"))

-- botton "ok"
btnYes = CreateButton(12, frmStoreBox, "btnYes", "ACCEPT", EXO_Regular_S20, 380, 42, 30, 199)
UI_SetButtonModalResult( btnYes, BUTTON_YES )
UI_SetEditEnterButton( edtNumber, btnYes )

------
-- Страница Wardrobe
------
d3dSkin = UI_CreateCompent(frmStore, UI3D_COMPENT, "d3dSkin", 100, 100, 450, 250)
UI_AddCompent(pgWardrobe, d3dSkin)

btnWCat1 = UI_CreateCompent(frmStore, CHECK_TYPE, "btnWCat1", 95, 34, 0, 41)
UI_LoadImage(btnWCat1, "./texture/ascaron_ui/asc-part-01.png", UNCHECKED, 95, 34, 688, 518)
UI_LoadImage(btnWCat1, "./texture/ascaron_ui/asc-part-01.png", CHECKED, 95, 34, 783, 518)
UI_AddCompent(pgWardrobe, btnWCat1)

labWCat1 = UI_CreateCompent(frmStore, LABELEX_TYPE, "labWCat1", 95, 34, 0, 50)
UI_SetCaption(labWCat1, "Mounts" )
UI_SetTextColor(labWCat1, argbColor("ababac"))
UI_SetLabelExFont(labWCat1, EXO_Regular_S12, FALSE, COLOR_BLACK)
UI_SetCaptionIsCenter(labWCat1, TRUE)
UI_AddCompent(pgWardrobe, labWCat1)

btnWCat2 = UI_CreateCompent(frmStore, CHECK_TYPE, "btnWCat2", 95, 34, 105, 41)
UI_LoadImage(btnWCat2, "./texture/ascaron_ui/asc-part-01.png", UNCHECKED, 95, 34, 688, 518)
UI_LoadImage(btnWCat2, "./texture/ascaron_ui/asc-part-01.png", CHECKED, 95, 34, 783, 518)
UI_AddCompent(pgWardrobe, btnWCat2)

labWCat2 = UI_CreateCompent(frmStore, LABELEX_TYPE, "labWCat2", 95, 34, 105, 50)
UI_SetCaption(labWCat2, "Costume" )
UI_SetTextColor(labWCat2, argbColor("ababac"))
UI_SetLabelExFont(labWCat2, EXO_Regular_S12, FALSE, COLOR_BLACK)
UI_SetCaptionIsCenter(labWCat2, TRUE)
UI_AddCompent(pgWardrobe, labWCat2)

btnWCat3 = UI_CreateCompent(frmStore, CHECK_TYPE, "btnWCat3", 95, 34, 210, 41)
UI_LoadImage(btnWCat3, "./texture/ascaron_ui/asc-part-01.png", UNCHECKED, 95, 34, 688, 518)
UI_LoadImage(btnWCat3, "./texture/ascaron_ui/asc-part-01.png", CHECKED, 95, 34, 783, 518)
UI_AddCompent(pgWardrobe, btnWCat3)

labWCat3 = UI_CreateCompent(frmStore, LABELEX_TYPE, "labWCat3", 95, 34, 210, 50)
UI_SetCaption(labWCat3, "Weapon" )
UI_SetTextColor(labWCat3, argbColor("ababac"))
UI_SetLabelExFont(labWCat3, EXO_Regular_S12, FALSE, COLOR_BLACK)
UI_SetCaptionIsCenter(labWCat3, TRUE)
UI_AddCompent(pgWardrobe, labWCat3)

btnWCat4 = UI_CreateCompent(frmStore, CHECK_TYPE, "btnWCat4", 95, 34, 315, 41)
UI_LoadImage(btnWCat4, "./texture/ascaron_ui/asc-part-01.png", UNCHECKED, 95, 34, 688, 518)
UI_LoadImage(btnWCat4, "./texture/ascaron_ui/asc-part-01.png", CHECKED, 95, 34, 783, 518)
UI_AddCompent(pgWardrobe, btnWCat4)

labWCat4 = UI_CreateCompent(frmStore, LABELEX_TYPE, "labWCat4", 95, 34, 315, 50)
UI_SetCaption(labWCat4, "Hand pet" )
UI_SetTextColor(labWCat4, argbColor("ababac"))
UI_SetLabelExFont(labWCat4, EXO_Regular_S12, FALSE, COLOR_BLACK)
UI_SetCaptionIsCenter(labWCat4, TRUE)
UI_AddCompent(pgWardrobe, labWCat4)

btnWCat5 = UI_CreateCompent(frmStore, CHECK_TYPE, "btnWCat5", 95, 34, 420, 41)
UI_LoadImage(btnWCat5, "./texture/ascaron_ui/asc-part-01.png", UNCHECKED, 95, 34, 688, 518)
UI_LoadImage(btnWCat5, "./texture/ascaron_ui/asc-part-01.png", CHECKED, 95, 34, 783, 518)
UI_AddCompent(pgWardrobe, btnWCat5)

labWCat5 = UI_CreateCompent(frmStore, LABELEX_TYPE, "labWCat5", 95, 34, 420, 50)
UI_SetCaption(labWCat5, "Fairy" )
UI_SetTextColor(labWCat5, argbColor("ababac"))
UI_SetLabelExFont(labWCat5, EXO_Regular_S12, FALSE, COLOR_BLACK)
UI_SetCaptionIsCenter(labWCat5, TRUE)
UI_AddCompent(pgWardrobe, labWCat5)

btnWCat6 = UI_CreateCompent(frmStore, CHECK_TYPE, "btnWCat6", 95, 34, 525, 41)
UI_LoadImage(btnWCat6, "./texture/ascaron_ui/asc-part-01.png", UNCHECKED, 95, 34, 688, 518)
UI_LoadImage(btnWCat6, "./texture/ascaron_ui/asc-part-01.png", CHECKED, 95, 34, 783, 518)
UI_AddCompent(pgWardrobe, btnWCat6)

labWCat6 = UI_CreateCompent(frmStore, LABELEX_TYPE, "labWCat6", 95, 34, 525, 50)
UI_SetCaption(labWCat6, "Wings" )
UI_SetTextColor(labWCat6, argbColor("ababac"))
UI_SetLabelExFont(labWCat6, EXO_Regular_S12, FALSE, COLOR_BLACK)
UI_SetCaptionIsCenter(labWCat6, TRUE)
UI_AddCompent(pgWardrobe, labWCat6)

-- 
btnHelpStoreW = UI_CreateCompent(frmStore, BUTTON_TYPE, "btnHelpStoreW", 50, 16, 630, 48)
UI_LoadButtonImage(btnHelpStoreW, "./texture/ascaron_ui/asc-part-02.png", 50, 16, 100, 398, FALSE)
UI_AddCompent(pgWardrobe, btnHelpStoreW)

------
-- Меню гардероба
------
	wardrobeRecord = UI_CreateListView( frmStore, "wardrobeRecord", 270, 380, -7, 120, 4, eNoTitle)
	UI_ListViewSetTitle(wardrobeRecord, 0, 42, "", 0, 0, 0, 0)
	UI_ListViewSetTitle(wardrobeRecord, 1, 130, "", 0, 0, 0, 0)
	UI_ListViewSetTitle(wardrobeRecord, 2, 50, "", 0, 0, 0, 0)
	UI_ListViewSetTitle(wardrobeRecord, 3, 12, "", 0, 0, 0, 0)
	UI_ListSetItemMargin(wardrobeRecord, 10, 8 )						-- Перемещение текста внутри строки
	UI_SetListRowHeight(wardrobeRecord, 46 )							-- Отступ строк между собой
	UI_SetListIsMouseFollow(wardrobeRecord, FALSE)
	UI_ListLoadSelectImage(wardrobeRecord, "./texture/ascaron_ui/asc-part-01.png", 270, 46, 0, 1170)
	UI_LoadListItemImage(wardrobeRecord, "./texture/ascaron_ui/asc-part-01.png", 270, 46, 270, 1170, 258, 46)
	--UI_SetImageAlpha(wardrobeRecord, 134)
	--UI_SetListFontColor(listItems, COLOR_BLACK, COLOR_RED )
	UI_SetIsShow(wardrobeRecord, FALSE)
	setScroll(wardrobeRecord)
	UI_AddCompent(pgWardrobe, wardrobeRecord)
	
------
-- Выбор купленных предметов
------
	checkAvailable = UI_CreateCompent(frmStore, CHECK_TYPE, "checkAvailable", 15, 15, 180, 92)
	UI_LoadImage(checkAvailable, "./texture/ascaron_ui/asc-part-01.png", UNCHECKED, 15, 15, 576, 358)
	UI_LoadImage(checkAvailable, "./texture/ascaron_ui/asc-part-01.png", CHECKED, 15, 15, 593, 358)
	UI_AddCompent(pgWardrobe, checkAvailable)

	labAvailable = UI_CreateCompent(frmStore, LABELEX_TYPE, "labAvailable", 75, 11, 200, 92)
	UI_SetCaption(labAvailable, "Available" )
	UI_SetTextColor(labAvailable, argbColor("ffffff"))
	UI_SetLabelExFont(labAvailable, EXO_Regular_S12, FALSE, COLOR_BLACK )
	UI_AddCompent(pgWardrobe, labAvailable)
	
------
-- Выбор типа записи
------
	image = UI_CreateCompent(frmStore, IMAGE_TYPE, "image", 15, 15, 5, 92)
	UI_LoadImage(image, "./texture/ascaron_ui/asc-part-01.png", NORMAL, 15, 15, 610, 358)
	UI_AddCompent(pgWardrobe, image)

	recordType  = UI_CreateCompent(frmStore, COMBO_TYPE, "recordType", 160, 20, 20 + 30, 90 + 70)
	UI_ComboSetStyle(recordType, TRUE)
	UI_ComboSetTextColor(recordType, COLOR_WHITE)

	lstType = UI_GetList(recordType)
	UI_SetListFontColor( lstType, COLOR_WHITE, COLOR_WHITE )
	UI_SetSize( lstType, 160, 100 )
	UI_SetMargin( lstType, 16,6,16,0 )
	UI_SetListRowHeight( lstType, 18 )
	UI_LoadImage( lstType, "./texture/ascaron_ui/asc-part-01.png", COMPENT_BACK, 5, 5, 18, 18)
	UI_AddListText( lstType, "All" )
	UI_AddListText( lstType, "Level 1-30" )
	UI_AddListText( lstType, "Level 31-60" )
	UI_AddListText( lstType, "Level 61+" )
	UI_AddListText( lstType, "Event" )
	UI_SetListIsMouseFollow( lstType, TRUE)
	UI_ComboSetTextColor(lstType, COLOR_WHITE )
	setScroll(lstType)
	--UI_AddCompent(pgWardrobe, recordType)
	
------
-- Слоты под эквип в разделе Wardrobe->Costume
------
	sltImgHead = UI_CreateCompent(frmStore, IMAGE_TYPE, "sltImgHead", 38, 38, 400, 450)
	UI_LoadImage(sltImgHead, "./texture/ascaron_ui/asc-part-01.png", NORMAL, 55, 55, 52, 49)
	sltHead = UI_CreateCompent(frmStore, COMMAND_ONE_TYPE, "sltHead", 32, 32, 403, 453)
	UI_AddCompent(pgWardrobe, sltImgHead)
	UI_AddCompent(pgWardrobe, sltHead)
	
	sltImgBody = UI_CreateCompent(frmStore, IMAGE_TYPE, "sltImgBody", 38, 38, 450, 450)
	UI_LoadImage(sltImgBody, "./texture/ascaron_ui/asc-part-01.png", NORMAL, 55, 55, 52, 49)
	sltBody = UI_CreateCompent(frmStore, COMMAND_ONE_TYPE, "sltBody", 32, 32, 453, 453)
	UI_AddCompent(pgWardrobe, sltImgBody)
	UI_AddCompent(pgWardrobe, sltBody)
	
	sltImgGlove = UI_CreateCompent(frmStore, IMAGE_TYPE, "sltImgGlove", 38, 38, 500, 450)
	UI_LoadImage(sltImgGlove, "./texture/ascaron_ui/asc-part-01.png", NORMAL, 55, 55, 52, 49)
	sltGlove = UI_CreateCompent(frmStore, COMMAND_ONE_TYPE, "sltGlove", 32, 32, 503, 453)
	UI_AddCompent(pgWardrobe, sltImgGlove)
	UI_AddCompent(pgWardrobe, sltGlove)
	
	sltImgShoes = UI_CreateCompent(frmStore, IMAGE_TYPE, "sltImgShoes", 38, 38, 550, 450)
	UI_LoadImage(sltImgShoes, "./texture/ascaron_ui/asc-part-01.png", NORMAL, 55, 55, 52, 49)
	sltShoes = UI_CreateCompent(frmStore, COMMAND_ONE_TYPE, "sltShoes", 32, 32, 553, 453)
	UI_AddCompent(pgWardrobe, sltImgShoes)
	UI_AddCompent(pgWardrobe, sltShoes)

------
-- Кнопки управления гардеробом
------
	btnReset = UI_CreateCompent(frmStore, BUTTON_TYPE, "btnReset", 130, 42, 292, 502)
	UI_LoadButtonImage(btnReset, "./texture/ascaron_ui/asc-part-01.png", 130, 42, 755, 1002, FALSE)
	UI_AddCompent(pgWardrobe, btnReset)
	
	checkPlay = UI_CreateCompent(frmStore, CHECK_TYPE, "checkPlay", 42, 42, 435, 502)
	UI_LoadImage(checkPlay, "./texture/ascaron_ui/asc-part-01.png", UNCHECKED, 42, 42, 497, 958)
	UI_LoadImage(checkPlay, "./texture/ascaron_ui/asc-part-01.png", CHECKED, 42, 42, 541, 958)
	UI_AddCompent(pgWardrobe, checkPlay)
	
	btnBuyCostume = CreateButton(2, frmStore, "btnBuyCostume", "BUY", EXO_Regular_S14, 93, 42, 605, 502)
	UI_AddCompent(pgWardrobe, btnBuyCostume)
	
	btnUseCostume = CreateButton(2, frmStore, "btnUseCostume", "USE", EXO_Regular_S14, 93, 42, 605, 502)
	UI_AddCompent(pgWardrobe, btnUseCostume)
	
------------
-- Страница Gacha
------------
	
	d3dBox = UI_CreateCompent(frmStore, UI3D_COMPENT, "d3dBox", 100, 100, 450, 100)
	UI_AddCompent(pgGacha, d3dBox)
	
	-- 
	btnHelpStoreG = UI_CreateCompent(frmStore, BUTTON_TYPE, "btnHelpStoreG", 50, 17, 630, 48)
	UI_LoadButtonImage(btnHelpStoreG, "./texture/ascaron_ui/asc-part-02.png", 50, 17, 150, 398, FALSE)
	UI_AddCompent(pgGacha, btnHelpStoreG)

	image = UI_CreateCompent(frmStore, IMAGE_TYPE, "image", 304, 229, 0, 50)
	UI_LoadImage(image, "./texture/ascaron_ui/asc-part-02.png", NORMAL, 304, 229, 618, 232)
	UI_AddCompent(pgGacha, image)
	
	lab = UI_CreateCompent(frmStore, LABELEX_TYPE, "lab", 75, 11, 22, 60)
	UI_SetCaption(lab, "Equipment" )
	UI_SetTextColor(lab, argbColor("ffffff"))
	UI_SetLabelExFont(lab, EXO_Regular_S14, FALSE, COLOR_BLACK )
	UI_AddCompent(pgGacha, lab)
	
	lab = UI_CreateCompent(frmStore, LABELEX_TYPE, "lab", 75, 11, 167, 64)
	UI_SetCaption(lab, "Price" )
	UI_SetTextColor(lab, argbColor("b9b9ba"))
	UI_SetLabelExFont(lab, EXO_Regular_S12, FALSE, COLOR_BLACK )
	UI_AddCompent(pgGacha, lab)
	
	lab = UI_CreateCompent(frmStore, LABELEX_TYPE, "lab", 75, 11, 223, 64)
	UI_SetCaption(lab, "Items" )
	UI_SetTextColor(lab, argbColor("b9b9ba"))
	UI_SetLabelExFont(lab, EXO_Regular_S12, FALSE, COLOR_BLACK )
	UI_AddCompent(pgGacha, lab)
	
	-- Equipment
	gachaEquipmentList = UI_CreateListView( frmStore, "gachaEquipmentList", 270, 195, 15, 80, 4, eNoTitle)
	UI_ListViewSetTitle(gachaEquipmentList, 0, 42, "", 0, 0, 0, 0)
	UI_ListViewSetTitle(gachaEquipmentList, 1, 100, "", 0, 0, 0, 0)
	UI_ListViewSetTitle(gachaEquipmentList, 2, 50, "", 0, 0, 0, 0)
	UI_ListViewSetTitle(gachaEquipmentList, 3, 12, "", 0, 0, 0, 0)
	UI_ListSetItemMargin(gachaEquipmentList, 10, 8 )						-- Перемещение текста внутри строки
	UI_SetListRowHeight(gachaEquipmentList, 46 )							-- Отступ строк между собой
	UI_SetListIsMouseFollow(gachaEquipmentList, FALSE)
	UI_ListLoadSelectImage(gachaEquipmentList, "./texture/ascaron_ui/asc-part-01.png", 270, 46, 0, 1170)
	UI_LoadListItemImage(gachaEquipmentList, "./texture/ascaron_ui/asc-part-01.png", 270, 46, 270, 1170, 258, 46)
	UI_SetIsShow(gachaEquipmentList, FALSE)
	setScroll(gachaEquipmentList)
	UI_AddCompent(pgGacha, gachaEquipmentList)

	-- Weapon
	image = UI_CreateCompent(frmStore, IMAGE_TYPE, "image", 304, 184, 0, 50 + 229 + 15)
	UI_LoadImage(image, "./texture/ascaron_ui/asc-part-02.png", NORMAL, 304, 184, 301, 232)
	UI_AddCompent(pgGacha, image)
	
	lab = UI_CreateCompent(frmStore, LABELEX_TYPE, "lab", 75, 11, 22, 60 + 229 + 15)
	UI_SetCaption(lab, "Weapon" )
	UI_SetTextColor(lab, argbColor("ffffff"))
	UI_SetLabelExFont(lab, EXO_Regular_S14, FALSE, COLOR_BLACK )
	UI_AddCompent(pgGacha, lab)
	
	lab = UI_CreateCompent(frmStore, LABELEX_TYPE, "lab", 75, 11, 167, 64 + 229 + 15)
	UI_SetCaption(lab, "Price" )
	UI_SetTextColor(lab, argbColor("b9b9ba"))
	UI_SetLabelExFont(lab, EXO_Regular_S12, FALSE, COLOR_BLACK )
	UI_AddCompent(pgGacha, lab)
	
	lab = UI_CreateCompent(frmStore, LABELEX_TYPE, "lab", 75, 11, 223, 64 + 229 + 15)
	UI_SetCaption(lab, "Items" )
	UI_SetTextColor(lab, argbColor("b9b9ba"))
	UI_SetLabelExFont(lab, EXO_Regular_S12, FALSE, COLOR_BLACK )
	UI_AddCompent(pgGacha, lab)
	
	-- Equipment
	gachaWeaponList = UI_CreateListView(frmStore, "gachaWeaponList", 270, 150, 15, 80 + 229 + 15, 4, eNoTitle)
	UI_ListViewSetTitle(gachaWeaponList, 0, 42, "", 0, 0, 0, 0)
	UI_ListViewSetTitle(gachaWeaponList, 1, 100, "", 0, 0, 0, 0)
	UI_ListViewSetTitle(gachaWeaponList, 2, 50, "", 0, 0, 0, 0)
	UI_ListViewSetTitle(gachaWeaponList, 3, 12, "", 0, 0, 0, 0)
	UI_ListSetItemMargin(gachaWeaponList, 10, 8 )						-- Перемещение текста внутри строки
	UI_SetListRowHeight(gachaWeaponList, 46 )							-- Отступ строк между собой
	UI_SetListIsMouseFollow(gachaWeaponList, FALSE)
	UI_ListLoadSelectImage(gachaWeaponList, "./texture/ascaron_ui/asc-part-01.png", 270, 46, 0, 1170)
	UI_LoadListItemImage(gachaWeaponList, "./texture/ascaron_ui/asc-part-01.png", 270, 46, 270, 1170, 258, 46)
	UI_SetIsShow(gachaWeaponList, FALSE)
	setScroll(gachaWeaponList)
	UI_AddCompent(pgGacha, gachaWeaponList)
	
	image = UI_CreateCompent(frmStore, IMAGE_TYPE, "image", 376, 160, 324, 50 + 229 + 15)
	UI_LoadImage(image, "./texture/ascaron_ui/asc-part-02.png", NORMAL, 376, 160, 229, 426)
	UI_AddCompent(pgGacha, image)
	
	grdItems = UI_CreateCompent(frmStore, GOODS_GRID_TYPE, "grdItems", 400, 150, 350, 307) 
	UI_SetGridSpace(grdItems, 10, 10)
	UI_SetGridContent(grdItems, 3, 7)
	UI_SetGridUnitSize(grdItems, 38, 38 )
	UI_AddCompent(pgGacha, grdItems)
	
	-- 
	image = UI_CreateCompent(frmStore, IMAGE_TYPE, "image", 300, 19, 324, 459)
	UI_LoadImage(image, "./texture/ascaron_ui/asc-part-01.png", NORMAL, 300, 19, 0, 1216)
	UI_AddCompent(pgGacha, image)
	
	-- 
	proItems = UI_CreateCompent(frmStore, PROGRESS_TYPE, "proItems", 294, 13, 327, 462)
	UI_LoadScaleImage(proItems, "./texture/ascaron_ui/asc-part-01.png", PROGRESS_PROGRESS, 294, 13, 0, 1235, 1.0, 1.0 )
	UI_AddCompent(pgGacha, proItems)
	
	btnUse = CreateButton(3, frmStore, "btnUse", "USE", EXO_Regular_S10, 70, 17, 629, 460)
	UI_AddCompent(pgGacha, btnUse)
	
	labItems = UI_CreateCompent(frmStore, LABELEX_TYPE, "labItems", 294, 13, 327, 463)
	UI_SetCaption(labItems, "0/0" )
	UI_SetTextColor(labItems, argbColor("000000"))
	UI_SetLabelExFont(labItems, EXO_Regular_S10, FALSE, argbColor("ffca61"))
	UI_SetCaptionIsCenter(labItems, TRUE)
	UI_AddCompent(pgGacha, labItems)
	
	imgCircleColor = UI_CreateCompent(frmStore, IMAGE_TYPE, "imgCircleColor", 18, 18, 324, 50)
	UI_LoadImage(imgCircleColor, "./texture/ascaron_ui/asc-part-01.png", NORMAL, 18, 18, 666, 332)
	UI_SetIsShow(imgCircleColor, FALSE)
	UI_AddCompent(pgGacha, imgCircleColor)
	
	labNicknameColor = UI_CreateCompent(frmStore, LABELEX_TYPE, "labNicknameColor", 100, 18, 347, 48)
	UI_SetCaption(labNicknameColor, "Nickname" )
	UI_SetTextColor(labNicknameColor, argbColor("ffffff"))
	UI_SetLabelExFont(labNicknameColor, EXO_Regular_S18, FALSE, COLOR_BLACK )
	UI_SetIsShow(labNicknameColor, FALSE)
	UI_AddCompent(pgGacha, labNicknameColor)
	
	btnShowArcana = CreateButton(3, frmStore, "btnShowArcana", "SHOW", EXO_Regular_S10, 70, 17, 629, 270)
	UI_SetIsShow(btnShowArcana, FALSE)
	imgShowArcana = UI_CreateCompent(frmStore, IMAGE_TYPE, "imgShowArcana", 13, 13, 629 + 3, 270 + 2)
	UI_LoadImage(imgShowArcana, "./texture/ascaron_ui/asc-part-01.png", NORMAL, 14, 14, 667, 353)
	UI_AddCompent(pgGacha, btnShowArcana)
	UI_AddCompent(pgGacha, imgShowArcana)
	
	btnUseBox = CreateButton(2, frmStore, "btnUseBox", "USE", EXO_Regular_S12, 93, 42, 605, 502)
	UI_AddCompent(pgGacha, btnUseBox)
	image = UI_CreateCompent(frmStore, IMAGE_TYPE, "image", 20, 20, 610, 513)
	UI_LoadImage(image, "./texture/ascaron_ui/asc-part-01.png", NORMAL, 23, 22, 665, 231)
	UI_AddCompent(pgGacha, image)
	
	btnUseBoxGC = CreateButton(2, frmStore, "btnUseBoxGC", "USE", EXO_Regular_S12, 93, 42, 390, 502)
	UI_AddCompent(pgGacha, btnUseBoxGC)
	image = UI_CreateCompent(frmStore, IMAGE_TYPE, "image", 20, 20, 395, 513)
	UI_LoadImage(image, "./texture/ascaron_ui/asc-part-01.png", NORMAL, 25, 24, 692, 230)
	UI_AddCompent(pgGacha, image)
	
------
-- Страница демонстрации костюма
------
frmGacha = UI_CreateForm( "frmGacha", FALSE, 713, 713, 0, 0, TRUE, FALSE)
UI_ShowForm(frmGacha, FALSE)
UI_AddFormToTemplete(frmGacha, FORM_DIALOG)
UI_SetIsDrag(frmGacha, FALSE)
UI_SetFormStyle(frmGacha, FORM_NONE)

imgEffect = UI_CreateCompent(frmGacha, IMAGE_TYPE, "imgEffect", 713, 713, 0, 0)
UI_LoadImage(imgEffect, "./texture/ascaron_ui/gacha-light.png", NORMAL, 713, 713, 0, 0)

imgBackground = UI_CreateCompent(frmGacha, IMAGE_TYPE, "imgBackground", 455, 455, 129, 129)
UI_LoadImage(imgBackground, "./texture/ascaron_ui/asc-part-02.png", NORMAL, 455, 455, 0, 597)

labCommon = UI_CreateCompent(frmGacha, LABELEX_TYPE, "labCommon", 713, 20, 0, 202)
UI_SetCaption(labCommon, "REWARD" )
UI_SetTextColor(labCommon, argbColor("ffffff"))
UI_SetLabelExFont(labCommon, EXO_Regular_S16, FALSE, COLOR_BLACK )
UI_SetCaptionIsCenter(labCommon, TRUE)

d3dcostume = UI_CreateCompent(frmGacha, UI3D_COMPENT, "d3dcostume", 100, 100, 325, 300)

labAddWardrobe = UI_CreateCompent(frmGacha, LABELEX_TYPE, "labAddWardrobe", 713, 20, 0, 487)
UI_SetCaption(labAddWardrobe, "ADDED TO WARDROBE" )
UI_SetTextColor(labAddWardrobe, argbColor("FFCA61"))
UI_SetLabelExFont(labAddWardrobe, EXO_Regular_S16, FALSE, COLOR_BLACK )
UI_SetIsShow(labAddWardrobe, FALSE)
UI_SetCaptionIsCenter(labAddWardrobe, TRUE)

labDuplicate = UI_CreateCompent(frmGacha, LABELEX_TYPE, "labDuplicate", 713, 20, 255 + 13, 487)
UI_SetCaption(labDuplicate, "DUPLICATE" )
UI_SetTextColor(labDuplicate, argbColor("ffffff"))
UI_SetLabelExFont(labDuplicate, EXO_Regular_S16, FALSE, COLOR_BLACK )
UI_SetIsShow(labDuplicate, FALSE)

labGCoin = UI_CreateCompent(frmGacha, LABELEX_TYPE, "labGCoin", 713, 20, 355 + 13, 487)
UI_SetCaption(labGCoin, "+300" )
UI_SetTextColor(labGCoin, argbColor("FFCA61"))
UI_SetLabelExFont(labGCoin, EXO_Regular_S16, FALSE, COLOR_BLACK )
UI_SetIsShow(labGCoin, FALSE)

imgGCoin = UI_CreateCompent(frmGacha, IMAGE_TYPE, "imgGCoin", 25, 25, 409 + 13, 483)
UI_LoadImage(imgGCoin, "./texture/ascaron_ui/asc-part-01.png", NORMAL, 25, 25, 228, 237)
UI_SetIsShow(imgGCoin, FALSE)

btnClose = UI_CreateCompent(frmGacha, BUTTON_TYPE, "btnClose", 713, 713, 0, 0)
UI_LoadButtonImage(btnClose, "", 1, 1, 54, 0, TRUE)
UI_SetButtonModalResult(btnClose, BUTTON_CLOSE)