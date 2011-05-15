@ECHO OFF
SET iisExpressPath="%PROGRAMFILES(x86)%\IIS Express\iisexpress.exe"

IF EXIST %iisExpressPath% (GOTO startiis) ELSE (GOTO error)

:startiis
echo Running %iisExpressPath% /path:%CD%\src /port:80
%iisExpressPath% /path:%CD%\src /port:80
GOTO quit

:error
echo Could not find IIS Express in %iisExpressPath%.
GOTO quit

:quit
SET foo="Press a key to continue..."