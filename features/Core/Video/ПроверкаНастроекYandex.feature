﻿# language: ru
# encoding: utf-8
#parent uf:
@UF6_текстовые_и_видео_инструкции
#parent ua:
@UA40_проверять_формирование_видеоинструкций

@tree
@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnUFSovm82Builds
@IgnoreOn836
@IgnoreOn837
@IgnoreOn838
@IgnoreOn839
@IgnoreOnWeb
@Video


Функционал: Проверка работы настроек для генерации голоса Yandex


Сценарий: Проверка работы настроек для генерации голоса Yandex
	Дано Я открываю VanessaAutomation в режиме TestClient
	
	И я перехожу к закладке с именем "СтраницаАвтоИнструкции"
	И я разворачиваю группу с именем "ГруппаРаботаСВидео"
	И я устанавливаю флаг с именем 'СоздаватьИнструкциюВидео'
	И я перехожу к закладке с именем "СтраницаАудио"
	И я устанавливаю флаг с именем 'ЗаписьВидеоДелатьНаложениеTTS'
	И я разворачиваю группу с именем "ГруппаАудио"
	И я меняю значение переключателя с именем 'ЗаписьВидеоТипОзвучкиTTS' на 'Yandex SpeechKit'
	И пауза 1
	
	И в поле с именем 'ЗаписьВидеоYandexTTSСкорость' я ввожу текст '0,5'
	И я перехожу к следующему реквизиту
	И элемент формы с именем "ЗаписьВидеоYandexTTSСкорость" стал равен шаблону "0*5"	
	
	И в поле с именем "ЗаписьВидеоYandexTTSСкорость" я увеличиваю значение
	И в поле с именем "ЗаписьВидеоYandexTTSСкорость" я увеличиваю значение
	И в поле с именем "ЗаписьВидеоYandexTTSСкорость" я увеличиваю значение
	И элемент формы с именем "ЗаписьВидеоYandexTTSСкорость" стал равен шаблону "0*8"	
	
	И в поле с именем "ЗаписьВидеоYandexTTSСкорость" я уменьшаю значение
	И элемент формы с именем "ЗаписьВидеоYandexTTSСкорость" стал равен шаблону "0*7"	
	
	