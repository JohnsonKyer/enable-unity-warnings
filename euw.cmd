@echo off
if exist NuGet, NuGet.zip rmdir /s /q NuGet, NuGet.zip
powershell.exe -nologo -noprofile -command "Invoke-WebRequest -OutFile NuGet.zip -Uri https://www.nuget.org/api/v2/package/Microsoft.Unity.Analyzers/"
powershell.exe -nologo -noprofile -command "Expand-Archive -LiteralPath '.\NuGet.zip' -DestinationPath .\NuGet"
(echo {
echo  "RoslynExtensionsOptions": {
echo    "EnableAnalyzersSupport": true,
echo    "LocationPaths": ["./NuGet/analyzers/dotnet/cs"]
echo  }
echo }) > omnisharp.json