﻿; ========================================================================
;
; Скрипт для AutoHotkey 1.x  ( http://ahkscript.org/ )
; Автор:     Akela1101 <akela1101@gmail.com>
; Версия:    2.0
; Начало:    2014 год
;
; Краткое описание:
;    Данныь фаьл — часть эксперимента по упрошению письменности, проводимого автором на себе.
;    Во избежание непредвиденных последствиь, строго запрешяется навязывание
;    эксперимента людям, которых это не интересует!
;
;    Скрипт переназначает некоторые клавиши русскоь раскладки
;    в соответствии с правилом: ё → ѳ, й → ь, щ → шь.
;    Освободившиеся клавшы используются для ввода символов из англиьскоь раскладки.
;    Для поиска оставлена возможность вводить старые символы.
;
;    Причины (кратко): 
;    *   Упрошение алфавита, удаление диакритических знаков.
;    *   Отсутствие коллизиь при данном сокрашении букв.
;    *   Исправление написания мягкости согласных.
;    *   Научныь интерес.
;
; ========================================================================

; Необходимые моды
#NoEnv
SendMode Input

; Замена строки: сразу, внтури слов, чувствительна к регистру.
#Hotstring * ? C

; Старые символы.
::йй::ё
::ЙЙ::Ё
::Йй::Ё
::ьь::й
::ЬЬ::Й
::Ьь::Й
::ыы::ъ
::ЫЫ::Ъ
::Ыы::Ъ
::шш::щ
::ШШ::Щ
::Шш::Щ
::`;`;::'
::%%::№
::дЗ::дз
::дЖ::дж

; Новые символы.
::ьо::ѳ ; эквивалент клавишэ «й»
::ьО::Ѳ
::Ьо::Ѳ
::ЬО::Ѳ
::дз::z ; японское пасхальное яьцо
::ДЗ::Z
::дж::ѫ ; кореьское пасхальное яьцо
::ДЖ::Ѫ

; Новые назначения клавиш.
::№::`:
::ё::/
::щ::х
::Щ::Х
::х::[
::Х::{{}
::ъ::]
::Ъ::{}}

; Клавишы через скан коды (подходит для любоь раскладки).
+sc007::^  
+sc02B::| 

; Дополнительные фичи.
::бБ::«
::юЮ::»
::ББ::<
::ЮЮ::>
::БЮ::≠
::Ё=::≈
::Б-::←
::Ю-::→
::Л-::↑
::Д-::↓
::уУ::́
::оО::°
::аА::∀
::еЕ::∃
::сС::∑
::=-::—
::+-::±

; Англиьские эквиваленты.
::<>::≠
::~=::≈
::<-::←
::>-::→

; Специальные клавишы (должны быть снизу).
; й :: ѳ
; Й :: Ѳ
; Ё :: ~
;
:b0:й:: 
	Send {BS}
	Send ѳ ; новое ё
Return
:b0:Й:: 
	Send {BS}
	Send Ѳ ; новое Ё
Return
:b0:Ё::
	Send {BS}
	Send ~
Return
