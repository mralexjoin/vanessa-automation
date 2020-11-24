﻿# language: ru


@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnUFSovm82Builds
@IgnoreOnWeb

@IgnoreOn836
@IgnoreOn837
@IgnoreOn838
@IgnoreOn839
@IgnoreOn8310
@IgnoreOn8311
@IgnoreOn8312
@IgnoreOn8313
@IgnoreOn8314
@IgnoreOn8315
@IgnoreOn8316

@ServerCodeCoverage


Функциональность: Проверка вставок подсценариев

    Как разработчик
    Я хочу чтобы в редакторе можно видеть шаги подсценариев
    Чтобы я мог быстро и легко отлаживать сценарий

Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой 'VAEditor'


Сценарий: Переход к следующей ошибке в редакторе

	* Загрузка служебной фичи
		И я нажимаю на кнопку с именем 'ФормаПерейтиВVanessaEditor'

		И я нажимаю на кнопку с именем 'VanessaEditorПоказыватьСтрокиПодсценариев'


		И я перехожу к закладке с именем "ГруппаСлужебная"
		Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "VAEditor/VanessaEditor05"
		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient

	* Проверка, что виджет появился
		И я очищаю окно сообщений пользователю
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 
			|'ДанныеВкладкиРедатора = ДанныеВкладкиРедатора();'|
			|'ДанныеВиджетов = ДанныеВкладкиРедатора.ДанныеВиджетов;'|
			|'Для Каждого Элем Из ДанныеВиджетов Цикл'|
			|'   Сообщить(Элем.Ключ);'|
			|'КонецЦикла;'|
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		И пауза 1
		Тогда в логе сообщений TestClient есть строки:
			|'c1'|

	* Уберём отображение строк подсценариев
		И я перехожу к закладке с именем "ГруппаЗапускТестов"
		И я нажимаю на кнопку с именем 'VanessaEditorПоказыватьСтрокиПодсценариев'
		И Пауза 1

	* Установка флага модифицированности	
		И я очищаю окно сообщений пользователю
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 
			|'БылиИзмененияДанныхVanessaEditor = Истина;'|
			|'Модифицированность = Истина;'|
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		И Пауза 1

	* Покажем строк подсценариев
		И я перехожу к закладке с именем "ГруппаЗапускТестов"
		И я нажимаю на кнопку с именем 'VanessaEditorПоказыватьСтрокиПодсценариев'
		И Пауза 1

	* Проверка, что нет ошибки
		Тогда не появилось окно предупреждения системы

	* Очистим данные виджетов
		И я очищаю окно сообщений пользователю
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 
			|'ДанныеВкладкиРедатора = ДанныеВкладкиРедатора();'|
			|'ДанныеВиджетов = ДанныеВкладкиРедатора.ДанныеВиджетов;'|
			|'ДанныеВиджетов.Очистить();'|
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		И пауза 1

	* Нажмём на кнопку сохранения
		И я перехожу к закладке с именем "ГруппаЗапускТестов"
		И я нажимаю на кнопку с именем 'ПанельVanessaEditorСохранитьФайл'
		И Пауза 3

	* Проверим, что есть виджеты
		И я очищаю окно сообщений пользователю
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 
			|'ДанныеВкладкиРедатора = ДанныеВкладкиРедатора();'|
			|'ДанныеВиджетов = ДанныеВкладкиРедатора.ДанныеВиджетов;'|
			|'Сообщить(ДанныеВиджетов.Количество());'|
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		И Пауза 1
		Тогда в логе сообщений TestClient есть строки:
			|'1'|

	* Закрытие клиента тестирования
		И я закрыл все окна клиентского приложения
		И я закрываю сеанс TESTCLIENT

