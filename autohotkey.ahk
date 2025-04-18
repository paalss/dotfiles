; limit hotkeys to console windows (Windows subsystem for linux / Ubuntu)
; use Window Spy to find class names & other info about windows: https://amourspirit.github.io/AutoHotkey-Snippit/WindowSpy.html

; keyboard-shortcuts/remappings for windows users:
; ! Alt
; <^>! AltGr
; ^ ctrl
; + Shift

!Esc::ExitApp

; -------------- OPEN WEBSITE -------------

+F1::Run "https://mail.google.com/mail/u/0/#inbox"
+F2::Run "https://nettserier.no/laddersdiversedilldall/"

; ---------- "TEXT" ----------

::ftw::Free the whales ; ved å skrive ftw og mellomrom/tab, blir autocorrect til Free the whales.

; ::log::console.log(){left 1}
; ::group::console.group(){left 1}
; ::groupend::console.groupEnd(){left 1}
; ::error::console.error(){left 1}
; ::warn::console.warn(){left 1}

^+8::SendText "{" ; Ctrl Shift 8
^+9::SendText "}" ; Ctrl Shift 9

!2::Send "@"
!3::Send "~ "
!4::Send "$"
!5::Send "%"
!|::SendText "``"

<^>!-::Send "–" ; print en-dash

; create some hotkeys/keymaps/keybindings/shortcuts ONLY for terminal applications.
; - ConsoleWindowClass = Windows 10 WSL terminal (I think)
; - CASCADIA_HOSTING_WINDOW_CLASS = Windows 11 Terminal
#HotIf WinActive("ahk_class ConsoleWindowClass") || WinActive("ahk_class CASCADIA_HOSTING_WINDOW_CLASS")

; ---------- "REMAP" ----------

; move line

; (see remap.lua)

; duplicate line

!+k::Send "{Esc}yyP"
!+j::Send "{Esc}yyp"


; ---------- "Terminal tmux behavior" ----------

^ø::Send "{Ctrl down}m{Ctrl up}" ; (tmux.lua uses this button)


; ----------- "Tabline / buffer management" --------------

; ^Tab::Send "{Ctrl down}6{Ctrl up}" 

; ------- "BARBAR" --------

; navigate buffers

; ^PgUp::Send "{Esc}:BufferPrevious{Enter}"
; ^F11::Send "{Esc}:BufferPrevious{Enter}"
; ^PgDn::Send "{Esc}:BufferNext{Enter}"
; ^F12::Send "{Esc}:BufferNext{Enter}"
; ^Tab::Send "{Esc}:b{#}{Enter}" ; to previous buffer

; move buffers

; +^PgUp::Send "{Esc}:BufferMoveNext{Enter}"
; +^F11::Send "{Esc}:BufferMoveNext{Enter}"
; +^PgDn::Send "{Esc}:BufferMovePrevious{Enter}"
; +^F12::Send "{Esc}:BufferMovePrevious{Enter}"


; ------ "HARPOON" ---------

^PgUp::Send "{Esc}{Alt down},{Alt up}"
^F11::Send "{Esc}{Alt down},{Alt up}"
^PgDn::Send "{Esc}{Alt down}.{Alt up}"
^F12::Send "{Esc}{Alt down}.{Alt up}"

; other

; ^+t:: Send "{Esc}:BufferRestore{Enter}"
; ^w:: Send "{Esc}:BufferClose{Enter}"

#HotIf

#HotIf WinActive("ahk_class SunAwtFrame")


#HotIf


#HotIf WinActive("ahk_class MozillaWindowClass")

; ^F11::Send ^{PgUp}
; ^F12::Send ^{PgDn}

#HotIf


#HotIf WinActive("ahk_class Chrome_WidgetWin_1")

; In Chrome/Edge extension "Quickkey", you can go to previous tab by hitting ALT z
^Tab::Send "{Alt down}z{Alt up}"

#HotIf
