﻿#language: ru

@tree

Функционал: Создание 10 элементов справочника Номенклатура

Как Тестировщик я хочу
создать 10 элементов справочника при помощи цикла 
чтобы проверить создание элементов   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Создание 10 элементов справочника Номенклатура
    И В командном интерфейсе я выбираю 'Справочники' 'Номенклатура'
    Тогда открылось окно 'Номенклатура'
    И Я запоминаю значение выражения '1' в переменную "Шаг"
    И я делаю 10 раз
        И Я запоминаю значение выражения '$Шаг$ + 1' в переменную "Шаг"
        И Я запоминаю значение выражения '"Продукция" + $Шаг$' в переменную "ПродукцияЗавода"
	    И я проверяю или создаю для справочника "Items" объекты:
		    | 'Ref'                                                               | 'DeletionMark' | 'Code' | 'ItemType'                                                          | 'Unit'                                                          | 'MainPricture' | 'Vendor' | 'ItemID' | 'PackageUnit' | 'Description_en'    | 'Description_hash' | 'Description_ru' | 'Description_tr' | 'Height' | 'Length' | 'Volume' | 'Weight' | 'Width' |
		    | '{"e1cib/data/Catalog.Items?ref=" + StrReplace(New UUID, "-", "")}' | 'False'        |        | 'e1cib/data/Catalog.ItemTypes?ref=b762b13668d0905011eb76684b9f6878' | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' |                |          | '58791'  | ''            | '$ПродукцияЗавода$' | ''                 | ''               | ''               |          |          |          |          |         |
    И я закрываю все окна клиентского приложения
    
           