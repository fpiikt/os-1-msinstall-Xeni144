:: архиватор 7-zip (каталог для установки - по умолчанию)
msiexec /i 7z1604.msi /passive /norestart /le "7zip-log.txt" TARGETDIR="C:\Program Files\7-Zip"

:: графический редактор Paint.Net
"paint.net.4.0.21.install.exe" /auto DESKTOPSHORTCUT=1 TARGETDIR="C:\Program Files\Graphics\Paint"

:: векторный графический редактор Inkscape
msiexec /i inkscape-0.92.2-x64.msi /qr /norestart /lw "inkscape-log.txt" TARGETDIR="C:\Program Files\Graphics\Inkscape"

:: офисный редактор LibreOffice (последней версии на сайте и русскоязычное языковое расширение для него)
msiexec /i LibreOffice_6.4.2_Win_x64.msi /passive /norestart /lw "libreoffice-install-log.txt"
msiexec /i LibreOffice_6.4.2_Win_x64_helppack_ru.msi /forcerestart

:: текстовый редактор Notepad++
"npp.7.8.5.Installer.x64.exe" /auto