set source=d:\TELECHARGEMENTS
for /f "delims=|" %%a in ('dir /b %source%') do (
	echo "%%a"
	if "%%~xa" NEQ "" (
		if not exist "%source%\%%~xa" mkdir "%source%\%%~xa"
			move "%source%\%%a" "%source%\%%~xa\"
	)
	if "%%~xa" EQU "" (
		if not exist "%source%\.dir" mkdir "%source%\.dir"
			move "%source%\%%a" "%source%\.dir\"
	)
)