@echo off

start rails server

ping 127.0.0.1 -n 10 > nul

start firefox.exe http://localhost:32515

exit