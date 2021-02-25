#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


; Telegram Emojis V1.2
; By Arian Navabi (Amoo Arian)

#IfWinActive ahk_exe Telegram.exe

f1::
Send,:joy:
return

+f1::
Send, :joy:‌ ‌
Send,‌{Enter}
return

^+f1::
Send,:joy::joy::joy::joy:
return

;-------------------------

f2::
Send,:|
return

+f2::
Send,:|‌ ‌
Send,‌{Enter}
return

+^f2::
Send,:|:|:|:|
return

;-------------------------

f3::
Send,:sob:
return

+f3::
Send,:sob:‌ ‌
Send,‌{Enter}
return

^+f3::
Send,:sob::sob::sob::sob:
return

;-------------------------

f4::
Send,<3
return

+f4::
Send,<3‌ ‌
Send,‌{Enter}
return

^+f4::
Send,<3<3<3<3
return

;-------------------------

f5::
Send,:kissing_heart:
return

+f5::
Send,:kissing_heart:‌ ‌
Send,‌{Enter}
return

^+f5::
Send,:kissing_heart::kissing_heart::kissing_heart::kissing_heart:
return

;-------------------------

f6::
Send,:flushed:
return

+f6::
Send,:flushed:‌ ‌
Send,‌{Enter}
return

+^f6::
Send,:flushed::flushed::flushed::flushed:
return
;-------------------------

f7::
Send,:like:
return

+f7::
Send,:like:‌ ‌
Send,‌{Enter}
return

^+f7::
Send,:like::like::like::like:
return

;-------------------------

f8::
Send,:clap:
return

+f8::
Send,:clap:‌ ‌
Send,‌{Enter}
return

^+f8::
Send,:clap::clap::clap::clap:
return

;-------------------------

f9::
Send,:pray:
return

+f9::
Send,:pray:‌ ‌
Send,‌{Enter}
return

^+f9::
Send,:pray::pray::pray::pray:
return

;-------------------------

f10::
Send,:hmm:
return

+f10::
Send,:hmm:‌ ‌
Send,‌{Enter}
return

^+f10::
Send,:hmm::hmm::hmm::hmm:
return

;-------------------------

f11::
Send,:smile:
return

+f11::
Send,:smile:
Send,‌{Enter}
return

^+f11::
Send,:smile::smile::smile::smile:
return

;-------------------------

f12::
Send,‌{Enter}
return

#IfWinActive