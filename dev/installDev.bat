call winget install Microsoft.VisualStudioCode --scope=machine --override "/SILENT /mergetasks=""quicklaunchicon,addcontextmenufiles,addcontextmenufolder,associatewithfiles,addtopath,!runcode"""
call winget install --scope=machine -e --id Git.Git
call winget install --scope=machine -e --id GitHub.cli
call winget install --scope=machine -e --id RubyInstallerTeam.Ruby.3.0
call winget install --scope=machine -e --id Casey.Just

call code --install-extension skellock.just
@echo on

call gh repo clone https://github.com/bot15498/renchon_lang.git
@echo on
@cd renchon_lang
call git pull
@echo on
call bundle install
@cd ../
@echo on

gem install ocra
