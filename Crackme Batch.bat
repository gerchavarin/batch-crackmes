@echo off
setlocal enabledelayedexpansion
:_i
set pwd=
set /p pwd=Password:
if not defined pwd goto :_i
set hsh=0
set len=0
:_l
if "!pwd:~%len%,1!"=="" (
if "!hsh!"=="2365736" (
"%comspec%" /d /k echo.Authorized access.
) else echo.Bad password.
goto :_i)
set cnt=0
for %%i in (
0,1,2,3,4,5,6,7,8,9,a,b,c,d,e,f,g,h
i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z
) do (
set /a cnt+=1
if /i "!pwd:~%len%,1!"=="%%i" (
set /a "hsh+=7!len!!cnt!<<len%%7"))
set /a len+=1
goto :_l