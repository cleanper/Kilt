@echo off
setlocal

:: 设置仓库URL和分支
set REPO_URL=https://github.com/cleanper/Kilt.git
set BRANCH=version/1.20.1

:: 提示用户输入提交描述
set /p COMMIT_MSG=请输入提交描述:

:: 执行Git操作
git init
git add .
git commit -m "%COMMIT_MSG%"
git remote add origin %REPO_URL% 2>nul
git push -f origin %BRANCH%

endlocal