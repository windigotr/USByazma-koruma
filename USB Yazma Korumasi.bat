@ECHO OFF
ECHO Lutfen Renk Secimi Yapiniz:
ECHO.
ECHO 	0 = Kirmizi				8 = Gri
ECHO 	1 = Mavi				9 = Parlak Mavi
ECHO 	2 = Yesil		       		A = Parlak Yesil
ECHO 	3 = Deniz Mavisi			B = Parlak Deniz Mavisi
ECHO 	4 = Kahverengi				C = Parlak Kirmizi
ECHO 	5 = Mor					D = Parlak Mor
ECHO 	6 = Sari				E = Parlak Sari
ECHO 	7 = Beyaz				F = Parlak Beyaz
ECHO.

set /p renk=Renk Secimi Yapiniz:
COLOR %renk%
cls
:start
ECHO.
ECHO Tum Windows Isletim Sistemleri icin USB Yazma Korumasi
ECHO.
ECHO.
ECHO Asagida USB Portlarinin Yazma yetenegini seciniz.
ECHO Secim yaptiktan sonra taktiginiz harici disklerinizde seciminiz aktif olacaktir
ECHO Uygulamayi yonetici olarak calistirdiginizdan emin olunuz.
ECHO ------------------------------------------------------------------------------
ECHO Sorulariniz icin kt@tr.net adresinden bana e-posta gonderebilirsiniz.
ECHO ______________________________________________________________________________
ECHO.
ECHO 1. AKTIF yazma korumasi ile usb disklere veri yazamazsiniz.
ECHO.
ECHO 2. PASIF yazma korumasi ile usb disklere veri yazabilirsiniz.
ECHO.
ECHO 3. CIKIS yaptiginizda en son yaptiginiz ayar devam edecektir.
ECHO.
set /p choice=Secim Yapiniz: 
rem if not '%choice%'=='' set choice=%choice:~0;1%
if '%choice%'=='1' goto on
if '%choice%'=='2' goto off
if '%choice%'=='3' goto exit
if not '%choice%'=='' ECHO "%choice%" yanlis bir secim, lutfen tekrar deneyiniz.
ECHO.
goto start
:on
If exist "%Temp%\~import.reg" (
 Attrib -R -S -H "%Temp%\~import.reg"
 del /F /Q "%Temp%\~import.reg"
 If exist "%Temp%\~import.reg" (
  Echo Could not delete file "%Temp%\~import.reg"
  Pause
 )
)
> "%Temp%\~import.reg" ECHO Windows Registry Editor Version 5.00
>> "%Temp%\~import.reg" ECHO.
>> "%Temp%\~import.reg" ECHO [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\StorageDevicePolicies]
>> "%Temp%\~import.reg" ECHO "WriteProtect"=dword:00000001
REGEDIT /S "%Temp%\~import.reg"
DEL "%Temp%\~import.reg"
cls
ECHO AKTIF yazma korumasi ile usb disklere veri yazamazsiniz.
ECHO Ust Menuye donmek icin bir tusa basiniz.
ECHO.
PAUSE
cls
ECHO.
ECHO AKTIF yazma korumasi ile usb disklere veri yazamazsiniz.
ECHO Ust Menuye donmek icin bir tusa basiniz.
ECHO.
goto start
:off
If exist "%Temp%\~import.reg" (
 Attrib -R -S -H "%Temp%\~import.reg"
 del /F /Q "%Temp%\~import.reg"
 If exist "%Temp%\~import.reg" (
  Echo Could not delete file "%Temp%\~import.reg"
  Pause
 )
)
> "%Temp%\~import.reg" ECHO Windows Registry Editor Version 5.00
>> "%Temp%\~import.reg" ECHO.
>> "%Temp%\~import.reg" ECHO [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\StorageDevicePolicies]
>> "%Temp%\~import.reg" ECHO "WriteProtect"=-
REGEDIT /S "%Temp%\~import.reg"
DEL "%Temp%\~import.reg"
cls
ECHO PASIF yazma korumasi ile usb disklere veri yazabilirsiniz.
ECHO Ust Menuye donmek icin bir tusa basiniz.
ECHO.
PAUSE
cls
ECHO.
ECHO PASIF yazma korumasi ile usb disklere veri yazabilirsiniz.
ECHO Ust Menuye donmek icin bir tusa basiniz.
ECHO.
goto start
:exit
cls
exit