@echo off
cd..

for /R _repo %%f in (*.zip) do del /q "%%~ff"
cd _tools
C:\Python27\python.exe generate_repo.py
cd..
echo C | xcopy "_repo\digipro.repository\digipro.repository-1.0.*.zip" "C:\Dad\digipro\digipro.repository.zip" /cherkyi