call winget install Microsoft.VisualStudioCode --scope=machine --override "/SILENT /mergetasks=""quicklaunchicon,addcontextmenufiles,addcontextmenufolder,associatewithfiles,addtopath,!runcode"""
call winget install --scope=machine -e --id Git.Git
call winget install --scope=machine -e --id GitHub.cli
call winget install --scope=machine -e --id RubyInstallerTeam.Ruby.3.0
@REM call winget install --scope=machine -e --id Casey.Just

@REM call code --install-extension skellock.just
@REM @echo on

@cd app
call bundle install
@echo on
@cd ../

@REM gem install ocra
