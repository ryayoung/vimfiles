" Author: Ryan Young
" Last modified: 11-04-21


let g:current_accent = ""
au VimEnter * let g:current_accent = join(split(system('Get-ItemPropertyValue "Registry::HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Accent" -Name AccentColorMenu'), '[^0-9]\+'), "")
    \ | let g:current_accent_hex = printf('%x', 4281282610)

" Dark decimal code: 4281282610
" Command to get value: Get-ItemPropertyValue 'Registry::HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Accent' -Name AccentColorMenu
"

fun! ChangeAccent(color="none")

    if a:color == "light"
        let l:accent = "0xffbce5f2" "Light
    elseif a:color == "dark"
        let l:accent = "0xff2f3032" "Dark
    elseif strftime('%H') > 18 || strftime('%H') < 5
        let l:accent = "0xff2f3032" "Dark
        "let l:accent = "0xffbce5f2" "Light
        "let l:afterglow = "0xc4282828"
        "let l:inactive = "0xc4282828"
    else
        let l:accent = "0xffbce5f2" "Light
        "let l:inactive = "0xc4282828"
        "let l:afterglow = "0xc42e5bc"
    endif
    
    "Change accent color
    execute 'silent ! reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Accent" /v "AccentColorMenu" /t REG_DWORD /d ' . l:accent .' /f'
    "execute 'silent ! reg add "HKCU\SOFTWARE\Microsoft\Windows\DWM" /v "AccentColor" /t REG_DWORD /d ' . l:accent .' /f'
    "execute 'silent ! reg add "HKCU\SOFTWARE\Microsoft\Windows\DWM" /v "AccentColorInactive" /t REG_DWORD /d ' . l:inactive .' /f'

    "execute 'silent ! reg add "HKCU\SOFTWARE\Microsoft\Windows\DWM" /v "ColorizationAfterglow" /t REG_DWORD /d ' . l:afterglow .' /f'
    "execute 'silent ! reg add "HKCU\SOFTWARE\Microsoft\Windows\DWM" /v "ColorizationColor" /t REG_DWORD /d ' . l:afterglow .' /f'
endfun

"let current_accent = join(split(system('Get-ItemPropertyValue "Registry::HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Accent" -Name AccentColorMenu'), '[^0-9]\+'), "")
if strftime('%H') > 17 || strftime('%H') < 6
    if g:current_accent != 4281282610
        call ChangeAccent("dark")
    endif
elseif g:current_accent != 429056971
    call ChangeAccent("dark")
endif

