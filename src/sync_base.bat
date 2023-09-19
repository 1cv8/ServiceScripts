@echo off

git config --global http.sslVerify false
git config --global http.postBuffer 1048576000
git config --global core.autocrlf true
::git config --global core.safecrlf true
::fatal: LF would be replaced by CRLF in src/cf/AccountingRegisters/МСФО/Ext/Help/ru.html
git config --global core.safecrlf warn
git config --global core.quotePath false

git config --global user.name "Romanov"
git config --global user.email "s.romanov@lancetpharm.ru"

::Set GITSYNC_IB_CONNECTION="/S cld-inf-app01d\uh_test_git"
::Set GITSYNC_IB_USR=git
::Set GITSYNC_IB_PASSWORD=123456

set GITSYNC_V8VERSION=8.3.19.1522
::Set GITSYNC_V8_PATH="C:\Program Files\1cv8\8.3.19.1522\bin\1cv8.exe"

::Set GITSYNC_VERBOSE=true

Set GITSYNC_SRCDIR=%CD%\src\cf
Set GITSYNC_WORKDIR="%CD%"

gitsync sync --storage-user git --storage-pwd 123456 --limit 10 "E:\hrans\UH" "%CD%"
::gitsync init --storage-user git --storage-pwd 123456 "E:\hrans\UH" "C:\prj\uh-dev\src\cf"

git push
