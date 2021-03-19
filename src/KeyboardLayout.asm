

; Special key symbols
; a = Up arrow
; b = Down arrow
; c = Left arrow
; d = Right arrow
; e = Large enter
; f = Small enter
; g = Escape
; h = Clear
; i = Delete (backspace)
; j = Tab
; k = Caps Lock
; l = Shift
; m = Control
; o = Copy

KEY_COUNT EQU 80
KEYB_X EQU 3
KEYB_Y EQU 35
KEYB_ROW_SPACING EQU 16
KEYB_ROW_1 EQU KEYB_Y
KEYB_ROW_2 EQU KEYB_ROW_1 + KEYB_ROW_SPACING
KEYB_ROW_3 EQU KEYB_ROW_2 + KEYB_ROW_SPACING
KEYB_ROW_4 EQU KEYB_ROW_3 + KEYB_ROW_SPACING
KEYB_ROW_5 EQU KEYB_ROW_4 + KEYB_ROW_SPACING

KEYB_COL_SPACING EQU 4
KEYB_ESC_X EQU KEYB_X + 2
KEYB_Q_X EQU KEYB_ESC_X + KEYB_COL_SPACING + 2
KEYB_A_X EQU KEYB_Q_X + 1
KEYB_Z_X EQU KEYB_A_X + 2

KEYB_NUMPAD_X EQU KEYB_ESC_X+KEYB_COL_SPACING*15


JOY_X EQU 26
JOY_Y EQU 130
KEYB_TABLE_ROW_SIZE EQU KeyboardLocationSecondRow - KeyboardLocations

KeyboardLocations:
	;; Column, row, char
	;; 0
	defb	KEYB_NUMPAD_X+KEYB_COL_SPACING*1,	KEYB_ROW_4,	'a' ; # Key number 00 : ↑
KeyboardLocationSecondRow:
	defb	KEYB_NUMPAD_X+KEYB_COL_SPACING*2,	KEYB_ROW_5,	'd' ; # Key number 01 : →
	defb	KEYB_NUMPAD_X+KEYB_COL_SPACING*1,	KEYB_ROW_5,	'b' ; # Key number 02 : ↓
	defb	KEYB_NUMPAD_X+KEYB_COL_SPACING*2,	KEYB_ROW_1,	'9' ; # Key number 03 : f9
	defb	KEYB_NUMPAD_X+KEYB_COL_SPACING*2,	KEYB_ROW_2,	'6' ; # Key number 04 : f6
	defb	KEYB_NUMPAD_X+KEYB_COL_SPACING*2,	KEYB_ROW_3,	'3' ; # Key number 05 : f3
	defb	52+KEYB_X,				KEYB_ROW_5,	SPECIALKEY_ENTER ; # Key number 06 : ENTER
	defb	KEYB_NUMPAD_X+KEYB_COL_SPACING*2,	KEYB_ROW_4,	'.' ; # Key number 07 : .

	;; 1
	defb	KEYB_NUMPAD_X,				KEYB_ROW_5,	'c' ; # Key number 08 : ←
	defb	KEYB_Z_X,				KEYB_ROW_5,	SPECIALKEY_COPY ; # Key number 09 : COPY
	defb	KEYB_NUMPAD_X,				KEYB_ROW_1,	'7' ; # Key number 10 : f7
	defb	KEYB_NUMPAD_X+KEYB_COL_SPACING*1,	KEYB_ROW_1,	'8' ; # Key number 11 : f8
	defb	KEYB_NUMPAD_X+KEYB_COL_SPACING*1,	KEYB_ROW_2,	'5' ; # Key number 12 : f5
	defb	KEYB_NUMPAD_X,				KEYB_ROW_3,	'1' ; # Key number 13 : f1
	defb	KEYB_NUMPAD_X+KEYB_COL_SPACING*1,	KEYB_ROW_3,	'2' ; # Key number 14 : f2
	defb	KEYB_NUMPAD_X,				KEYB_ROW_4,	'0' ; # Key number 15 : f0

	;; 20
	defb	KEYB_ESC_X+KEYB_COL_SPACING*13,		KEYB_ROW_1,	'h' ; # Key number 16 : CLR
	defb	KEYB_Q_X+KEYB_COL_SPACING*11,		KEYB_ROW_2,	'[' ; # Key number 17 : {[
	defb	56+KEYB_X,				KEYB_ROW_2,	'e' ; # Key number 18 : RETURN
	defb	KEYB_A_X+KEYB_COL_SPACING*11,		KEYB_ROW_3,	']' ; # Key number 19 : }]
	defb	62+KEYB_X,				KEYB_ROW_2,	'4' ; # Key number 20 : f4
	defb	2+KEYB_X,				KEYB_ROW_4,	SPECIALKEY_SHIFTL ; # Key number 21 : SHIFT
	defb	KEYB_Z_X+KEYB_COL_SPACING*10,		KEYB_ROW_4,	'\' ; # Key number 22 : `\		
	defb	2+KEYB_X,				KEYB_ROW_5,	SPECIALKEY_CONTROL ; # Key number 23 : CONTROL

	;; 3
	defb	KEYB_ESC_X+KEYB_COL_SPACING*12,	KEYB_ROW_1,	'^' ; # Key number 24 : £^
	defb	KEYB_ESC_X+KEYB_COL_SPACING*11,	KEYB_ROW_1,	'-' ; # Key number 25 : =-
	defb	KEYB_Q_X+KEYB_COL_SPACING*10,	KEYB_ROW_2,	'@' ; # Key number 26 : ¦@
	defb	KEYB_Q_X+KEYB_COL_SPACING*9,	KEYB_ROW_2,	'P' ; # Key number 27 : P
	defb	KEYB_A_X+KEYB_COL_SPACING*10,	KEYB_ROW_3,	'+' ; # Key number 28 : +;
	defb	KEYB_A_X+KEYB_COL_SPACING*9,	KEYB_ROW_3,	'*' ; # Key number 29 : *:
	defb	KEYB_Z_X+KEYB_COL_SPACING*9,	KEYB_ROW_4,	'/' ; # Key number 30 : ?/
	defb	KEYB_Z_X+KEYB_COL_SPACING*8,	KEYB_ROW_4,	'.' ; # Key number 31 : >.

	;; 4
	defb	KEYB_ESC_X+KEYB_COL_SPACING*10,	KEYB_ROW_1,	'0' ; # Key number 32 : _0
	defb	KEYB_ESC_X+KEYB_COL_SPACING*9,	KEYB_ROW_1,	'9' ; # Key number 33 : )9
	defb	KEYB_Q_X+KEYB_COL_SPACING*8,	KEYB_ROW_2,	'O' ; # Key number 34 : O
	defb	KEYB_Q_X+KEYB_COL_SPACING*7,	KEYB_ROW_2,	'I' ; # Key number 35 : I
	defb	KEYB_A_X+KEYB_COL_SPACING*8,	KEYB_ROW_3,	'L' ; # Key number 36 : L
	defb	KEYB_A_X+KEYB_COL_SPACING*7,	KEYB_ROW_3,	'K' ; # Key number 37 : K
	defb	KEYB_Z_X+KEYB_COL_SPACING*6,	KEYB_ROW_4,	'M' ; # Key number 38 : M
	defb	KEYB_Z_X+KEYB_COL_SPACING*7,	KEYB_ROW_4,	',' ; # Key number 39 : <,

	;; 5
	defb	KEYB_ESC_X+KEYB_COL_SPACING*8,	KEYB_ROW_1,	'8' ; # Key number 40 : (8
	defb	KEYB_ESC_X+KEYB_COL_SPACING*7,	KEYB_ROW_1,	'7' ; # Key number 41 : '7
	defb	KEYB_Q_X+KEYB_COL_SPACING*6,	KEYB_ROW_2,	'U' ; # Key number 42 : U
	defb	KEYB_Q_X+KEYB_COL_SPACING*5,	KEYB_ROW_2,	'Y' ; # Key number 43 : Y
	defb	KEYB_A_X+KEYB_COL_SPACING*5,	KEYB_ROW_3,	'H' ; # Key number 44 : H
	defb	KEYB_A_X+KEYB_COL_SPACING*6,	KEYB_ROW_3,	'J' ; # Key number 45 : J
	defb	KEYB_Z_X+KEYB_COL_SPACING*5,	KEYB_ROW_4,	'N' ; # Key number 46 : N
	defb	20+KEYB_X,			KEYB_ROW_5,	SPECIALKEY_SPACE ; # Key number 47 : SPACE

	;; 6
	defb	KEYB_ESC_X+KEYB_COL_SPACING*6,	KEYB_ROW_1,	'6' ; # Key number 48 : &6
	defb	KEYB_ESC_X+KEYB_COL_SPACING*5,	KEYB_ROW_1,	'5' ; # Key number 49 : %5
	defb	KEYB_Q_X+KEYB_COL_SPACING*3,	KEYB_ROW_2,	'R' ; # Key number 50 : R
	defb	KEYB_Q_X+KEYB_COL_SPACING*4,	KEYB_ROW_2,	'T' ; # Key number 51 : T
	defb	KEYB_A_X+KEYB_COL_SPACING*4,	KEYB_ROW_3,	'G' ; # Key number 52 : G
	defb	KEYB_A_X+KEYB_COL_SPACING*3,	KEYB_ROW_3,	'F' ; # Key number 53 : F
	defb	KEYB_Z_X+KEYB_COL_SPACING*4,	KEYB_ROW_4,	'B' ; # Key number 54 : B
	defb	KEYB_Z_X+KEYB_COL_SPACING*3,	KEYB_ROW_4,	'V' ; # Key number 55 : V

	;; 7
	defb	KEYB_ESC_X+KEYB_COL_SPACING*4,	KEYB_ROW_1,	'4' ; # Key number 56 : $4
	defb	KEYB_ESC_X+KEYB_COL_SPACING*3,	KEYB_ROW_1,	'3' ; # Key number 57 : #3
	defb	KEYB_Q_X+KEYB_COL_SPACING*2,	KEYB_ROW_2,	'E' ; # Key number 58 : E
	defb	KEYB_Q_X+KEYB_COL_SPACING*1,	KEYB_ROW_2,	'W' ; # Key number 59 : W
	defb	KEYB_A_X+KEYB_COL_SPACING*1,	KEYB_ROW_3,	'S' ; # Key number 60 : S
	defb	KEYB_A_X+KEYB_COL_SPACING*2,	KEYB_ROW_3,	'D' ; # Key number 61 : D
	defb	KEYB_Z_X+KEYB_COL_SPACING*2,	KEYB_ROW_4,	'C' ; # Key number 62 : C
	defb	KEYB_Z_X+KEYB_COL_SPACING*1,	KEYB_ROW_4,	'X' ; # Key number 63 : X

	;; 8
	defb	KEYB_ESC_X+KEYB_COL_SPACING*1,	KEYB_ROW_1,	'1' ; # Key number 64 : !1
	defb	KEYB_ESC_X+KEYB_COL_SPACING*2,	KEYB_ROW_1,	'2' ; # Key number 65 : "2
	defb	KEYB_ESC_X,			KEYB_ROW_1,	'g' ; # Key number 66 : ESC
	defb	KEYB_Q_X,			KEYB_ROW_2,	'Q' ; # Key number 67 : Q
	defb	2+KEYB_X,			KEYB_ROW_2,	SPECIALKEY_TAB ; # Key number 68 : TAB
	defb	KEYB_A_X,			KEYB_ROW_3,	'A' ; # Key number 69 : A
	defb	2+KEYB_X,			KEYB_ROW_3,	SPECIALKEY_CAPS ; # Key number 70 : CAPSLOCK
	defb	KEYB_Z_X,			KEYB_ROW_4,	'Z' ; # Key number 71 : Z

	;; 9
	defb	04+JOY_X,			00+JOY_Y,	'a' ; # Key number 72 : Joystick Up
	defb	04+JOY_X,			30+JOY_Y,	'b' ; # Key number 73 : Joystick Down
	defb	00+JOY_X,			15+JOY_Y,	'c' ; # Key number 74 : Joystick Left
	defb	08+JOY_X,			15+JOY_Y,	'd' ; # Key number 75 : Joystick Right
	defb	14+JOY_X,			15+JOY_Y,	'1' ; # Key number 76 : Joystick Fire 1
	defb	18+JOY_X,			15+JOY_Y,	'2' ; # Key number 77 : Joystick Fire 2
	defb	22+JOY_X,			15+JOY_Y,	'3' ; # Key number 78 : Joystick Fire 3
	defb	KEYB_ESC_X+KEYB_COL_SPACING*14,	KEYB_ROW_1,	'i' ; # Key number 79 : DEL

RIGHTSHIFT_X EQU KEYB_Z_X+KEYB_COL_SPACING*11
/*
E 1 2 3 4 5 6 7 8 9 0 - ^ C D
T Q W E R T Y U I O P @ [
C  A S D F G H J K L ; : ] RET
SH  Z X C V B N M , . / \   SH
CTL CP      SPACE        ENTER
*/


TxtKeySpace: 	db '       SPACE        ',0
TxtKeyShiftL: 	db 'SHFT',0
TxtKeyShiftR: 	db 'SHF',0
TxtKeyControl: 	db 'CTRL ',0
TxtKeyCopy: 	db 'COPY',0
TxtKeyCaps: 	db 'CAP',0
TxtKeyTab: 	db '->',0
TxtKeyEnter: 	db 'ENTER',0
TxtReturn: 	db ' e',0


SPECIALKEY_SPACE 	EQU 0 + #80
SPECIALKEY_CONTROL 	EQU 1 + #80
SPECIALKEY_COPY		EQU 2 + #80
SPECIALKEY_CAPS		EQU 3 + #80
SPECIALKEY_TAB		EQU 4 + #80
SPECIALKEY_ENTER	EQU 5 + #80
SPECIALKEY_SHIFTL	EQU 6 + #80
SPECIALKEY_SHIFTR	EQU 7 + #80

SpecialKeysTable:
	db 127				; SPACE
	dw TxtKeySpace
	db 35				; CONTROL
	dw TxtKeyControl
	db 35				; COPY
	dw TxtKeyCopy
	db 27				; CAPS LOCK
	dw TxtKeyCaps
	db 23				; TAB
	dw TxtKeyTab
	db 39				; ENTER
	dw TxtKeyEnter
	db 35				; LEFT SHIFT
	dw TxtKeyShiftL
	db 27				; RIGHT SHIFT
	dw TxtKeyShiftR

