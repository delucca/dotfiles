#NoEnv                      ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn                     ; Enable warnings to assist with detecting common errors.
#SingleInstance FORCE       ; Skip invocation dialog box and silently replace previously executing instance of this script.
SendMode Input              ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Capslock & w::SendInput {Up}
Capslock & s::SendInput {Down}
Capslock & a::SendInput {Left}
Capslock & d::SendInput {Right}

; Capslock & k::SendInput {Up}
; Capslock & j::SendInput {Down}
; Capslock & h::SendInput {Left}
; Capslock & l::SendInput {Right}
