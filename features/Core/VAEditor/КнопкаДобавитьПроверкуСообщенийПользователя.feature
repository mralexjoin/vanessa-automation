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


Функциональность: Кнопка добавить проверку сообщений пользователя

    Как разработчик
    Я хочу чтобы в редакторе была возможность получить шаги, которые проверяют сообщения пользователя 
    Чтобы я мог быстро получить шаги, проверяющие шаги пользователя.




Сценарий: Кнопка добавить проверку сообщений пользователя
	Дано Я закрыл все окна клиентского приложения
	И я закрываю сеанс TESTCLIENT
	Когда я запускаю служебный сеанс TestClient с ключом TestManager в той же базе
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой 'VAEditor'

	* Загрузка служебной фичи	
		И я нажимаю на кнопку с именем 'ФормаПерейтиВVanessaEditor'
		И я перехожу к закладке с именем "ГруппаСлужебная"
		Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "VAEditor/VanessaEditor15"
		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient

	* Выполним служебную фичу, чтобы открылся клиент тестирования
		И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient

	* Установка нужной строки текущей
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'VanessaTabs.current.editor.setPosition(27, 1, \"\");'
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		И пауза 1
		И я перехожу к закладке с именем "ГруппаЗапускТестов"

	* Получение состояние всей формы клиента тестирования
		И я нажимаю на кнопку с именем 'VanessaEditorКонтекстноеМенюДобавитьПроверкуСообщенийПользователя'

	* Проверка результата
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'Сообщить(СокрЛП(VanessaTabs.current.editor.getLineContent(27)))'
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		И пауза 1
		Тогда в логе сообщений TestClient есть строки:
			|'Тогда в логе сообщений TestClient есть строки:'|

	* Закрытие клиента тестирования
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ЗакрытьПодключенныйTestClient/ЗакрытьПодключенныйTestClient"
		
		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
		И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient





Сценарий: Активизация основного клиента
	И я закрываю TestClient "TM"
	И в таблице клиентов тестирования я активизирую строку 'Этот клиент'