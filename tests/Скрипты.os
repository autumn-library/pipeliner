#Использовать asserts
#Использовать ".."

#Область cf

&Тест
Процедура СобратьКонфигурациюИзФайлов_ВозвращаетКоманду() Экспорт

	Ожидаем.Что(Скрипты.СобратьКонфигурациюИзФайлов("build/cf", "build/conf.cf"))
		.Равно("vrunner cf compile --ibcmd -s build/cf build/conf.cf");

КонецПроцедуры

&Тест
Процедура СобратьКонфигурациюИзФайлов_БезИбкмд() Экспорт

	Ожидаем.Что(Скрипты.СобратьКонфигурациюИзФайлов("build/cf", "build/conf.cf", Ложь))
		.Равно("vrunner cf compile -s build/cf build/conf.cf");

КонецПроцедуры

&Тест
Процедура РазобратьКонфигурациюВИсходники_ИзФайла() Экспорт

	Ожидаем.Что(Скрипты.РазобратьКонфигурациюВИсходники("build/cf", "build/conf.cf"))
		.Равно("vrunner cf decompile --ibcmd --cf-file build/conf.cf build/cf");

КонецПроцедуры

&Тест
Процедура РазобратьКонфигурациюВИсходники_ИзБазы() Экспорт

	Ожидаем.Что(Скрипты.РазобратьКонфигурациюВИсходники("build/cf", , "/Fbuild/ib"))
		.Равно("vrunner cf decompile --ibcmd --ibconnection /Fbuild/ib build/cf");

КонецПроцедуры

&Тест
Процедура ЗагрузитьКонфигурациюИзФайлов_ВозвращаетКоманду() Экспорт

	Ожидаем.Что(Скрипты.ЗагрузитьКонфигурациюИзФайлов("/Fbuild/ib", "build/src"))
		.Равно("vrunner cf load --ibcmd --ibconnection /Fbuild/ib build/src");

КонецПроцедуры

&Тест
Процедура ВыгрузитьКонфигурациюВФайл_ВозвращаетКоманду() Экспорт

	Ожидаем.Что(Скрипты.ВыгрузитьКонфигурациюВФайл("/Fbuild/ib", "build/conf.cf"))
		.Равно("vrunner cf unload --ibcmd --ibconnection /Fbuild/ib build/conf.cf");

КонецПроцедуры

&Тест
Процедура СоздатьФайлПоставки_ВозвращаетКоманду() Экспорт

	Ожидаем.Что(Скрипты.СоздатьФайлПоставки("/Fbuild/ib", "build/1Cv8-dist.cf"))
		.Равно("vrunner cf make-dist --ibconnection /Fbuild/ib build/1Cv8-dist.cf");

КонецПроцедуры

&Тест
Процедура ОбъединитьКонфигурацию_ВозвращаетКоманду() Экспорт

	Ожидаем.Что(Скрипты.ОбъединитьКонфигурацию("/Fbuild/ib", "vendor/BSP.cf", "merge.xml", Истина))
		.Равно("vrunner cf merge -s vendor/BSP.cf --merge-settings merge.xml --enable-support --ibconnection /Fbuild/ib");

КонецПроцедуры

&Тест
Процедура ОбновитьКонфигурациюНаПоддержке_ВозвращаетКоманду() Экспорт

	Ожидаем.Что(Скрипты.ОбновитьКонфигурациюНаПоддержке("/Fbuild/ib", "updates/1cv8.cfu"))
		.Равно("vrunner cf vendor-update -s updates/1cv8.cfu --ibconnection /Fbuild/ib");

КонецПроцедуры

&Тест
Процедура СравнитьКонфигурацию_ДваФайла() Экспорт

	Ожидаем.Что(Скрипты.СравнитьКонфигурацию("new/App.cf", "old/App.cf"))
		.Равно("vrunner cf compare --second-cf new/App.cf --first-cf old/App.cf");

КонецПроцедуры

&Тест
Процедура КонвертацияЕДТВКонфигуратор_ВозвращаетКоманду() Экспорт

	Ожидаем.Что(Скрипты.КонвертацияЕДТВКонфигуратор("build/edt", "build/cf"))
		.Равно("vrunner cf convert -s build/edt --edt-vmargs=-Xmx8g build/cf");

КонецПроцедуры

#КонецОбласти

#Область cfe

&Тест
Процедура СобратьРасширениеИзФайлов_ВозвращаетКоманду() Экспорт

	Ожидаем.Что(Скрипты.СобратьРасширениеИзФайлов("build/ext/src", "build/ext.cfe", "YAXUNIT"))
		.Равно("vrunner cfe compile --ibcmd -s build/ext/src --extension-name YAXUNIT build/ext.cfe");

КонецПроцедуры

&Тест
Процедура РазобратьРасширениеВИсходники_ВозвращаетКоманду() Экспорт

	Ожидаем.Что(Скрипты.РазобратьРасширениеВИсходники("build/ext.cfe", "YAXUNIT", "build/ext/src"))
		.Равно("vrunner cfe decompile --ibcmd --cfe-file build/ext.cfe --extension-name YAXUNIT build/ext/src");

КонецПроцедуры

&Тест
Процедура ЗагрузитьРасширениеИзФайлов_ВозвращаетКоманду() Экспорт

	Ожидаем.Что(Скрипты.ЗагрузитьРасширениеИзФайлов("/Fbuild/ib", "build/ext/src", "YAXUNIT"))
		.Равно("vrunner cfe load --ibcmd --ibconnection /Fbuild/ib --extension-name YAXUNIT build/ext/src");

КонецПроцедуры

&Тест
Процедура ВыгрузитьРасширениеВФайл_ВозвращаетКоманду() Экспорт

	Ожидаем.Что(Скрипты.ВыгрузитьРасширениеВФайл("/Fbuild/ib", "YAXUNIT", "build/ext.cfe"))
		.Равно("vrunner cfe unload --ibcmd --ibconnection /Fbuild/ib --extension-name YAXUNIT build/ext.cfe");

КонецПроцедуры

&Тест
Процедура СравнитьРасширение_ДваФайла() Экспорт

	Ожидаем.Что(Скрипты.СравнитьРасширение("YAXUNIT", "new/ext.cfe", "old/ext.cfe"))
		.Равно("vrunner cfe compare --extension-name YAXUNIT --second-cfe new/ext.cfe --first-cfe old/ext.cfe");

КонецПроцедуры

&Тест
Процедура КонвертироватьФорматИсходниковРасширения_ВозвращаетКоманду() Экспорт

	Ожидаем.Что(Скрипты.КонвертироватьФорматИсходниковРасширения("build/edt-ext", "build/xml"))
		.Равно("vrunner cfe convert -s build/edt-ext build/xml");

КонецПроцедуры

#КонецОбласти

#Область epf

&Тест
Процедура СобратьВнешниеОбработки_ВозвращаетКоманду() Экспорт

	Ожидаем.Что(Скрипты.СобратьВнешниеОбработки("build/epf/МояОбработка"))
		.Равно("vrunner epf compile --ibcmd build/epf/МояОбработка");

КонецПроцедуры

&Тест
Процедура СобратьВнешниеОбработки_РекурсивноСКаталогом() Экспорт

	Ожидаем.Что(Скрипты.СобратьВнешниеОбработки("build/epf", "build/out", Истина))
		.Равно("vrunner epf compile --ibcmd --recursive --out build/out build/epf");

КонецПроцедуры

&Тест
Процедура РазобратьВнешниеОбработки_ВозвращаетКоманду() Экспорт

	Ожидаем.Что(Скрипты.РазобратьВнешниеОбработки("build/epf/МояОбработка.epf"))
		.Равно("vrunner epf decompile --ibcmd build/epf/МояОбработка.epf");

КонецПроцедуры

&Тест
Процедура КонвертироватьФорматВнешнихОбработок_ВозвращаетКоманду() Экспорт

	Ожидаем.Что(Скрипты.КонвертироватьФорматВнешнихОбработок("build/edt-epf", "build/xml"))
		.Равно("vrunner epf convert -s build/edt-epf build/xml");

КонецПроцедуры

#КонецОбласти

#Область infobase

&Тест
Процедура СозданиеБазы_ВозвращаетКоманду() Экспорт

	Ожидаем.Что(Скрипты.СозданиеБазы("/Fbuild/ib"))
		.Равно("vrunner infobase init --ibcmd --ibconnection /Fbuild/ib");

КонецПроцедуры

&Тест
Процедура СозданиеБазы_СКонфигурациейИРасширениями() Экспорт

	Расширения = Новый Массив();
	Расширения.Добавить("build/МоёРасширение.cfe");
	Расширения.Добавить("src-ext/Интеграция");

	Ожидаем.Что(Скрипты.СозданиеБазы("/Fbuild/ib", "build/src", Расширения, Истина))
		.Равно("vrunner infobase init --ibcmd --ibconnection /Fbuild/ib --src build/src --ext build/МоёРасширение.cfe --ext src-ext/Интеграция --recursive");

КонецПроцедуры

&Тест
Процедура СозданиеБазы_СИсходникамиЕДТ() Экспорт

	Расширения = Новый Массив();
	Расширения.Добавить("build/src-ext/МоёРасширение");

	Ожидаем.Что(Скрипты.СозданиеБазы("/Fbuild/ib", "build/edt-project", Расширения,
			Ложь, Истина, "/tmp/edt-workspace", "edt", "/opt/1c-edt/1cedtcli", "2024.3", 3600, 8))
		.Равно("vrunner infobase init --ibcmd --ibconnection /Fbuild/ib"
			+ " --src build/edt-project --ext build/src-ext/МоёРасширение"
			+ " --edt-workspace /tmp/edt-workspace --src-format edt"
			+ " --edt-path /opt/1c-edt/1cedtcli --edt-version 2024.3"
			+ " --edt-timeout 3600 --edt-vmargs=-Xmx8g");

КонецПроцедуры

&Тест
Процедура ОбновитьКонфигурациюБД_ВозвращаетКоманду() Экспорт

	Ожидаем.Что(Скрипты.ОбновитьКонфигурациюБД("/Fbuild/ib"))
		.Равно("vrunner infobase update --ibcmd --ibconnection /Fbuild/ib");

КонецПроцедуры

&Тест
Процедура ОбновитьКонфигурациюРасширенияБД_ВозвращаетКоманду() Экспорт

	Ожидаем.Что(Скрипты.ОбновитьКонфигурациюРасширенияБД("/Fbuild/ib", "YAXUNIT"))
		.Равно("vrunner infobase update --ibcmd --ibconnection /Fbuild/ib --target YAXUNIT");

КонецПроцедуры

&Тест
Процедура ВыгрузитьБазуВДТ_ВозвращаетКоманду() Экспорт

	Ожидаем.Что(Скрипты.ВыгрузитьБазуВДТ("/Fbuild/ib", "build/backup.dt"))
		.Равно("vrunner infobase dump-dt --ibcmd --ibconnection /Fbuild/ib build/backup.dt");

КонецПроцедуры

&Тест
Процедура ЗагрузитьБазуИзДТ_ВозвращаетКоманду() Экспорт

	Ожидаем.Что(Скрипты.ЗагрузитьБазуИзДТ("/Fbuild/ib", "build/backup.dt"))
		.Равно("vrunner infobase restore-dt --ibcmd --ibconnection /Fbuild/ib build/backup.dt");

КонецПроцедуры

&Тест
Процедура СоздатьПользователя_СРолями() Экспорт

	Роли = Новый Массив();
	Роли.Добавить("ПолныеПрава");
	Роли.Добавить("АдминистраторСистемы");

	Ожидаем.Что(Скрипты.СоздатьПользователя("/Fbuild/ib", "Администратор", Роли))
		.Равно("vrunner infobase create-user --ibconnection /Fbuild/ib --role ПолныеПрава --role АдминистраторСистемы Администратор");

КонецПроцедуры

&Тест
Процедура ЗаблокироватьВнешниеРесурсы_ВозвращаетКоманду() Экспорт

	Ожидаем.Что(Скрипты.ЗаблокироватьВнешниеРесурсы("/Fbuild/ib"))
		.Равно("vrunner infobase lock-resources --deny --ibconnection /Fbuild/ib");

КонецПроцедуры

&Тест
Процедура РазрешитьВнешниеРесурсы_ВозвращаетКоманду() Экспорт

	Ожидаем.Что(Скрипты.РазрешитьВнешниеРесурсы("/Fbuild/ib"))
		.Равно("vrunner infobase lock-resources --allow --ibconnection /Fbuild/ib");

КонецПроцедуры

&Тест
Процедура ВключитьРегламентноеЗадание_ВозвращаетКоманду() Экспорт

	Ожидаем.Что(Скрипты.ВключитьРегламентноеЗадание("/Fbuild/ib", "ИзвлечениеТекста"))
		.Равно("vrunner infobase scheduled-job enable --ibconnection /Fbuild/ib ИзвлечениеТекста");

КонецПроцедуры

&Тест
Процедура ВыключитьРегламентноеЗадание_ВозвращаетКоманду() Экспорт

	Ожидаем.Что(Скрипты.ВыключитьРегламентноеЗадание("/Fbuild/ib", "ИзвлечениеТекста"))
		.Равно("vrunner infobase scheduled-job disable --ibconnection /Fbuild/ib ИзвлечениеТекста");

КонецПроцедуры

&Тест
Процедура СписокРасширений_Подробно() Экспорт

	Ожидаем.Что(Скрипты.СписокРасширений("/Fbuild/ib", Истина))
		.Равно("vrunner infobase extensions list --verbose --ibconnection /Fbuild/ib");

КонецПроцедуры

&Тест
Процедура ПроверитьПрименимостьРасширений_ВозвращаетКоманду() Экспорт

	Ожидаем.Что(Скрипты.ПроверитьПрименимостьРасширений("/Fbuild/ib"))
		.Равно("vrunner infobase extensions check --ibconnection /Fbuild/ib");

КонецПроцедуры

&Тест
Процедура СоздатьРасширение_ВозвращаетКоманду() Экспорт

	Ожидаем.Что(Скрипты.СоздатьРасширение("/Fbuild/ib", "YAXUNIT"))
		.Равно("vrunner infobase extensions create --ibconnection /Fbuild/ib YAXUNIT");

КонецПроцедуры

&Тест
Процедура УдалитьРасширение_ВозвращаетКоманду() Экспорт

	Ожидаем.Что(Скрипты.УдалитьРасширение("/Fbuild/ib", "YAXUNIT"))
		.Равно("vrunner infobase extensions delete --ibconnection /Fbuild/ib YAXUNIT");

КонецПроцедуры

&Тест
Процедура НастройкаФлаговРасширения_ВозвращаетКоманду() Экспорт

	Ожидаем.Что(Скрипты.НастройкаФлаговРасширения("/Fbuild/ib", "YAXUNIT", Ложь, Ложь))
		.Равно("vrunner infobase extensions set-options --ibconnection /Fbuild/ib --safe-mode false --unsafe-action-protection false YAXUNIT");

КонецПроцедуры

#КонецОбласти

#Область run

&Тест
Процедура ЗапуститьКонфигуратор_ВозвращаетКоманду() Экспорт

	Ожидаем.Что(Скрипты.ЗапуститьКонфигуратор("/Fbuild/ib"))
		.Равно("vrunner run designer --ibconnection /Fbuild/ib");

КонецПроцедуры

&Тест
Процедура ОбновитьБазуВРежимеПредприятия_ВозвращаетКоманду() Экспорт

	Ожидаем.Что(Скрипты.ОбновитьБазуВРежимеПредприятия("/Fbuild/ib", "lib/ЗакрытьПредприятие.epf"))
		.Равно("vrunner run enterprise --ibsrv --ibconnection /Fbuild/ib --command ""ЗапуститьОбновлениеИнформационнойБазы;ЗавершитьРаботуСистемы;"" --execute ""lib/ЗакрытьПредприятие.epf""");

КонецПроцедуры

#КонецОбласти

#Область test

&Тест
Процедура ЗапускТестовИксЮнит_ВозвращаетКоманду() Экспорт

	Ожидаем.Что(Скрипты.ЗапускТестовИксЮнит("/Fbuild/ib", "tests", "build/junit.xml", "build/status.txt"))
		.Равно("vrunner test xunit --ibconnection /Fbuild/ib --report-format junit --report-path build/junit.xml --xddExitCodePath build/status.txt tests");

КонецПроцедуры

&Тест
Процедура ЗапускТестовЯксЮнит_ВозвращаетКоманду() Экспорт

	Ожидаем.Что(Скрипты.ЗапускТестовЯксЮнит("/Fbuild/ib", "yaxunit.json"))
		.Равно("vrunner test yaxunit --ibsrv --ibconnection /Fbuild/ib --yaxunit-config yaxunit.json");

КонецПроцедуры

&Тест
Процедура ЗапускТестовВА_ВозвращаетКоманду() Экспорт

	Ожидаем.Что(Скрипты.ЗапускТестовВА("/Fbuild/ib", "VAParams.json", "lib/bddRunner.epf", "proj/my"))
		.Равно("vrunner test vanessa --ibsrv --ibconnection /Fbuild/ib --vanessasettings VAParams.json --bddrunner-path lib/bddRunner.epf --workspace proj/my");

КонецПроцедуры

#КонецОбласти

#Область validate

&Тест
Процедура ПроверкаСинтаксиса_ВозвращаетКоманду() Экспорт

	Режимы = Новый Массив();
	Режимы.Добавить("ThinClient");
	Режимы.Добавить("Server");

	Цели = Новый Массив();
	Цели.Добавить("main");

	Ожидаем.Что(Скрипты.ПроверкаСинтаксиса("/Fbuild/ib", Режимы, Цели, "build/syntax.xml", "exceptions.txt", Истина))
		.Равно("vrunner validate syntax-check --ibconnection /Fbuild/ib --mode ThinClient --mode Server --target main --report-format junit --report-path build/syntax.xml --exception-file exceptions.txt --groupbymetadata");

КонецПроцедуры

&Тест
Процедура ВалидацияЕДТ_ВозвращаетКоманду() Экспорт

	Ожидаем.Что(Скрипты.ВалидацияЕДТ("build/edt", "build/edt.xml"))
		.Равно("vrunner validate edt --src build/edt --report-format junit --report-path build/edt.xml");

КонецПроцедуры

#КонецОбласти
