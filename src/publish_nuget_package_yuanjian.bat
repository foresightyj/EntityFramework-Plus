set version=%DATE:~3,1%%DATE:~5,2%%DATE:~8,2%%TIME:~0,2%%TIME:~3,2%
set version=%version: =0%
@echo on

echo Building Project ...

rem "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\MSBuild\15.0\Bin\MSBuild.exe" Z.EntityFramework.Plus.EF6\FHT.EntityFramework.Plus.csproj /t:Build /m:4 /p:BuildInParallel=true /p:Configuration=Release
echo "Please use visual studio to build the project and then run this command to pack"

echo Packing %version% ...

nuget pack Z.EntityFramework.Plus.EF6\FHT.EntityFramework.Plus.csproj -IncludeReferencedProjects -Version 1.4.%version% -Verbosity detailed -Prop Configuration=Release

echo Publishing
move "*%version%*" "\\192.168.0.228\huohuoshared\NugetPackages"
echo DONE
@echo off
