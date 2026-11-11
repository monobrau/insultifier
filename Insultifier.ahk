#Requires AutoHotkey v2.0
#SingleInstance Force

; =============================================================================
; Insultifier
; =============================================================================
; Hotstring: :mary
; Replaces that trigger with a random vulgar insult of two, three, or four words.
;
;   My god, Bill S is a :mary
;   My god, Bill S is a twat sandwich
;
; Run this file on its own, or #Include it from another v2 script (work_ahk).
; Do not do both at once or the hotstring will fire twice.
; =============================================================================

#Include lib\lexicon.ahk
#Include lib\generate.ahk

; The backtick escapes the colon so the abbreviation is the five characters :mary.
; The * option fires as soon as the y is typed, same as the work_ahk hotstrings.
:*:`:mary::
{
    SendText(Insultifier.Generate())
}

StartInsultifier()

StartInsultifier() {
    ; Included into another script: register the hotstring and leave their tray alone.
    if (A_LineFile != A_ScriptFullPath)
        return

    A_IconTip := "Insultifier  |  :mary"
    TrayTip("Type :mary and it is replaced with an insult.", "Insultifier")
    SetTimer(() => TrayTip(), -2500)
}
