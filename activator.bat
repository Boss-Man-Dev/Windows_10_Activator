@ECHO off
cls

:: DEFINE the following variables where applicable to your install
    SET slmgrPath="C:\Windows\System32"
	:: _______________________________________________________________

:start
ECHO USE AT YOUR OWN RISK
ECHO.
ECHO I Am NoT RESPONSIBLE FOR ANY DAMAGES
ECHO.
set /P c=Would you like to Begin [Y/N]?
CLS
if /I "%c%" EQU "Y" goto :start 2
if /I "%c%" EQU "N" goto :start

:start 2
ECHO TASK WILL AUTOMATICALLY PROCESS
ECHO.
set /P c=Are You SURE [Y/N]?
CLS
if /I "%c%" EQU "Y" goto :start 3
if /I "%c%" EQU "N" goto :start

:start 3
ECHO.
ECHO 1. Home/Core
ECHO 2. Home/Core (Country Specific) 
ECHO 3. Home/Core (Single Language)  
ECHO 4. Home/Core N  
ECHO 5. Professional
ECHO 6. Professional N 
ECHO 7. Enterprise
ECHO 8. Enterprise N 
ECHO 9. Education
ECHO 10. Education N 
ECHO 11. Enterprise 2015 LTSB  
ECHO 12. Enterprise 2015 LTSB N 
ECHO 13. Enterprise 2016 LTSB 
ECHO 14. Enterprise 2016 LTSB N  
ECHO 15. End
set choice=
set /p choice=Select Your Operating System to Continue.
CLS
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto Home/Core
if '%choice%'=='2' goto Home/Core (Country Specific) 
if '%choice%'=='3' goto Home/Core (Single Language)  
if '%choice%'=='4' goto Home/Core N 
if '%choice%'=='5' goto Professional
if '%choice%'=='6' goto Professional N 
if '%choice%'=='7' goto Enterprise
if '%choice%'=='8' goto Enterprise N 
if '%choice%'=='9' goto Education
if '%choice%'=='10' goto Education N 
if '%choice%'=='11' goto Enterprise 2015 LTSB  
if '%choice%'=='12' goto Enterprise 2015 LTSB N 
if '%choice%'=='13' goto Enterprise 2016 LTSB 
if '%choice%'=='14' goto Enterprise 2016 LTSB N  
if '%choice%'=='15' goto End
ECHO "%choice%" is not valid, try again
ECHO.
goto start
:Home/Core
cd "%slmgrPath%"
cscript slmgr.vbs /ipk TX9XD-98N7V-6WMQ6-BX7FG-H8Q99
goto :2nd step

:Home/Core (Country Specific)
cd "%slmgrPath%"
cscript slmgr.vbs /ipk PVMJN-6DFY6-9CCP6-7BKTT-D3WVR
goto :2nd step

:Home/Core (Single Language)
cd "%slmgrPath%"
cscript slmgr.vbs /ipk 7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH
goto :2nd step

:Home/Core N 
cd "%slmgrPath%"
cscript slmgr.vbs /ipk 3KHY7-WNT83-DGQKR-F7HPR-844BM
goto :2nd step

:Professional
cd "%slmgrPath%"
cscript slmgr.vbs /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
goto :2nd step

:Professional N 
cd "%slmgrPath%"
cscript slmgr.vbs /ipk MH37W-N47XK-V7XM9-C7227-GCQG9
goto :2nd step

:Enterprise
cd "%slmgrPath%"
cscript slmgr.vbs /ipk NPPR9-FWDCX-D2C8J-H872K-2YT43
goto :2nd step

:Enterprise N
cd "%slmgrPath%"
cscript slmgr.vbs /ipk DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4
goto :2nd step

:Education
cd "%slmgrPath%"
cscript slmgr.vbs /ipk NW6C2-QMPVW-D7KKK-3GKT6-VCFB2
goto :2nd step


:Education N
cd "%slmgrPath%"  
cscript slmgr.vbs /ipk 2WH4N-8QGBV-H22JP-CT43Q-MDWWJ
goto :2nd step

:Enterprise 2015 LTSB
cd "%slmgrPath%"  
cscript slmgr.vbs /ipk WNMTR-4C88C-JK8YV-HQ7T2-76DF9
goto :2nd step

:Enterprise 2015 LTSB N
cd "%slmgrPath%"
cscript slmgr.vbs /ipk 2F77B-TNFGY-69QQF-B8YKP-D69TJ
goto :2nd step


:Enterprise 2016 LTSB
cd "%slmgrPath%" 
cscript slmgr.vbs /ipk DCPHK-NFMTC-H88MJ-PFHPY-QJ4BJ
goto :2nd step


:Enterprise 2016 LTSB N
cd "%slmgrPath%"
cscript slmgr.vbs /ipk QFFDN-GRT3P-VKWWX-X7T3R-8B639
goto :2nd step


:2nd step
cd "%slmgrPath%"
cscript slmgr.vbs /skms kms.lotro.cc
CLS
goto :Final Step

:Final Step
cd "%slmgrPath%"
cscript slmgr.vbs /ato
goto end

:end
ECHO THANKS FOR USING A 
ECHO Boss_Man PRODUCT
ECHO.
set /P c=Would You Like to quit[Y/N]?
CLS
if /I "%c%" EQU "Y" goto :Exit
if /I "%c%" EQU "N" goto :start

:Exit
EXIT