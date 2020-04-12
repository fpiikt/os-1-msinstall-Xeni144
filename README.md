# os-1-msinstall
## Отчет задание 1. Создание скрипта для автоматизации установки под Windows

### Установка архиватора 7-zip:
`msiexec /i 7z1604.msi /passive /norestart /le "7zip-log.txt" TARGETDIR="C:\Program Files\7-Zip"`

 - `/passive` — автоматический режим - только указатель хода выполнения,
 - `/norestart` — без перезагрузки,
 - `/le "7zip-log.txt"` — вести журнал установки с отображением все сообщений об ошибках в файл 7zip-log.txt,
 - `TARGETDIR="C:\Program Files\7-Zip` — каталог для установки указать явно "C:\Program Files\7-Zip",
  
### Установка графического редактора Paint.Net:
`"paint.net.4.0.21.install.exe" /auto DESKTOPSHORTCUT=1 TARGETDIR="C:\Program Files\Graphics\Paint"`

 - `/auto`— полностью автоматическая установка (в том числе и согласие с лицензией),
 - `DESKTOPSHORTCUT=1`— на рабочий стол вывести ярлык для запуска приложения,
 - `TARGETDIR="C:\Program Files\Graphics\Paint"`— каталог для установки — "C:\Program Files\Graphics\Paint",
  
### Установка векторного графического редактора Inkscape:
`msiexec /i inkscape-0.92.2-x64.msi /qr /norestart /lw "inkscape-log.txt" TARGETDIR="C:\Program Files\Graphics\Inkscape"`

 - `/qr` — установка с сокращенным интерфейсом,
 - `/norestart` — без перезапуска,
 - `/lw "inkscape-log.txt"` — вести журнал установки с отображением всех сообщений об устранимых ошибках в файл inkscape-log.txt,
 - `TARGETDIR="C:\Program Files\Graphics\Inkscape"` — каталог для установки указать явно "C:\Program Files\Graphics\Inkscape",
 
### Установка офисного редактора LibreOffice (последней версии на сайте и русскоязычное языковое расширение для него):
`msiexec /i LibreOffice_6.4.2_Win_x64.msi /passive /norestart /lw "libreoffice-install-log.txt"
 msiexec /i LibreOffice_6.4.2_Win_x64_helppack_ru.msi /forcerestart`
  
 - `/passive` — автоматический режим (только указатель хода выполнения),
 - `/norestart` — без перезагрузки после установки LibreOffice, 
 - `/forcerestart` — но с перезагрузкой после установки языкового расширения,
 - `/lw "libreoffice-install-log.txt` — журнал установки с отображением все сообщений об ошибках в файл libreoffice-install-log.txt,
  
### Установка текстового редактора Notepad++:
`"npp.7.8.5.Installer.x64.exe" /auto`

 - `/auto`— полностью автоматическая установка,
   

### Установка ПО для запуска программ на Java:
#### jre8_autoinstall.bat
`jre-8u241-windows-x64.exe INSTALLCFG=%cd%\jre8-config.txt /L %cd%\jre-log.txt`

#### jre8-config.txt
`INSTALL_SILENT =Enable
 INSTALLDIR=C:\Java\JRE
 WEB_ANALYTICS=Disable
 WEB_JAVA=Enable`
 
 - `INSTALL_SILENT =Enable` — автономный режим установки (без задания вопросов пользователю);
 - `/L %cd%\jre-log.txt`— создание лог-файла с результатами установки (имя лог-файла в текущей директории: jre-log.txt);
 - `INSTALLDIR=C:\Java\JRE` — каталог для установки java: "C:\Java\JRE";
 - `WEB_ANALYTICS=Disable`— отключить отправку веб-аналитики на сервера Oracle;
 - `WEB_JAVA=Enable` — разрешить запуск веб-приложений Java в браузере
