set windows-shell := ["cmd.exe", "/c"]
br := if os_family() == "windows" {"echo("} else {"echo $'\n'"}

_default:
    @just --list

build:
    cd renchon_lang && ocra renchon --dll ruby_builtin_dlls/libssl-1_1-x64.dll --dll ruby_builtin_dlls\libssp-0.dll --dll ruby_builtin_dlls/zlib1.dll --dll ruby_builtin_dlls/libgmp-10.dll --add-all-core --gemfile Gemfile --gem-full --no-dep-run --output ../app/uwu-dic.exe
