@REM use @echo( for newline
@REM info: https://www.dostips.com/forum/viewtopic.php?p=4554#p4554

@echo(
@echo ==== INSTALL DEV TOOLS ====
call winget install Microsoft.VisualStudioCode --scope=machine --override "/SILENT /mergetasks=""quicklaunchicon,addcontextmenufiles,addcontextmenufolder,associatewithfiles,addtopath,!runcode"""
call winget install --scope=machine -e --id Git.Git
call winget install --scope=machine -e --id GitHub.cli
call winget install --scope=machine -e --id RubyInstallerTeam.RubyWithDevKit.3.2

call gh repo clone https://github.com/bot15498/renchon_lang.git
@echo on
@cd renchon_lang
call git pull
@echo on
call bundle install
@cd ../
@echo on
