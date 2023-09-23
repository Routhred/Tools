set source=d:\TELECHARGEMENTS
for /f "delims=|" %%a in ('dir /b %source%') do (
	if "%%~xa" NEQ "" (
		if not exist "%source%\%%~xa" mkdir "%source%\%%~xa"
			move "%source%\%%a" "%source%\%%~xa\"
	)
)