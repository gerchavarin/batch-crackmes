@echo off
title[crackme 0.1]
:.
more/c<nul
set/p"\=Password>
set/a.=\
set..=0x1
:..
set ".=%.:~1%
if defined . (
set/a..+=1
goto:..)
for /f "tokens=01" %%· in ('set/a\/..+..*\') do (
for /f "tokens=01" %%. in ('set/a"0xa<<0xc>>01"') do @if not %%· neq %%. (
echo+Password correcta.
echo+crackme 0.1 by Germaniac
pause>nul
exit)
)
set\=<nul
goto:.