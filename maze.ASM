.model small
.stack 100h

.data
		; 0 - path
		; 1 - wall
		; 2 - target
		
		; size   : 20 col * 12 row  
		; actual : 320 * 192  (each block size 16*16px)
		
    ; Level 1 map
    MAZE1 DB 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
          DB 1,0,1,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1
          DB 1,0,0,0,1,1,0,1,0,1,1,1,1,1,1,1,1,1,1,1
          DB 1,0,1,0,1,1,0,0,0,1,1,1,1,1,1,1,1,1,1,1
          DB 1,0,1,0,0,0,1,0,0,1,1,1,1,1,1,1,1,1,1,1
          DB 1,0,1,1,1,0,1,0,1,1,1,1,1,1,1,1,1,1,1,1
          DB 1,0,0,0,1,0,0,0,2,1,1,1,1,1,1,1,1,1,1,1
          DB 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
          DB 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
          DB 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
          DB 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
          DB 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1

    ; Level 2 map
    MAZE2 DB 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
          DB 1,0,1,0,0,0,1,1,1,0,0,0,1,1,1,1,1,1,1,1
          DB 1,0,0,0,1,0,0,0,1,0,1,0,1,1,1,1,1,1,1,1
          DB 1,0,1,0,1,1,1,0,0,0,1,0,1,1,1,1,1,1,1,1
          DB 1,0,1,0,0,0,1,0,1,1,1,0,1,1,1,1,1,1,1,1
          DB 1,0,1,1,1,1,1,0,1,0,0,0,1,1,1,1,1,1,1,1
          DB 1,0,0,0,0,0,1,0,1,0,1,1,1,1,1,1,1,1,1,1
          DB 1,1,1,1,1,0,0,0,1,0,2,1,1,1,1,1,1,1,1,1
          DB 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
          DB 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
          DB 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
          DB 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1

    ; Level 3 map
    MAZE3    DB 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
			 DB 1,1,1,0,0,0,1,1,1,0,0,1,2,1,1,1,1,1,1,1
			 DB 1,0,0,0,1,0,0,0,1,0,1,1,0,1,1,1,1,1,1,1
			 DB 1,0,1,0,1,0,1,0,1,0,1,1,0,1,1,1,1,1,1,1
			 DB 1,0,1,0,0,0,1,0,0,0,1,0,0,1,1,1,1,1,1,1
			 DB 1,0,1,1,1,1,1,1,1,0,1,0,1,1,1,1,1,1,1,1
			 DB 1,0,0,0,0,0,1,0,0,0,1,0,0,1,1,1,1,1,1,1
			 DB 1,1,1,1,1,0,0,0,1,1,1,1,0,1,1,1,1,1,1,1
			 DB 1,0,0,0,0,0,1,0,0,0,0,0,0,1,1,1,1,1,1,1
			 DB 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
			 DB 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
			 DB 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1

    ; Level 4 map
    MAZE4 DB 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
          DB 1,0,1,1,0,0,0,1,1,1,0,0,0,1,0,0,1,1,1,1
          DB 1,0,0,0,0,1,0,0,0,0,0,1,0,0,0,1,1,1,1,1
          DB 1,1,1,0,1,1,0,1,1,1,0,1,0,1,0,1,1,1,1,1
          DB 1,0,0,0,0,0,0,1,0,0,0,1,0,1,0,0,1,1,1,1
          DB 1,0,1,1,1,1,0,1,0,1,1,1,0,1,1,0,1,1,1,1
          DB 1,0,0,0,0,1,0,0,0,0,0,0,0,0,1,0,1,1,1,1
          DB 1,1,1,1,0,1,0,1,1,0,1,1,0,0,1,0,1,1,1,1
          DB 1,0,0,0,0,0,0,1,0,0,0,0,0,1,0,2,1,1,1,1
          DB 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
          DB 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
          DB 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1

    ; Level 5 map
    MAZE5 DB 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
          DB 1,0,1,0,0,0,1,0,0,0,1,0,0,1,0,0,0,0,0,1
          DB 1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,1,1,1,0,1
          DB 1,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,0,0,1
          DB 1,0,0,0,0,1,0,0,0,1,0,0,0,1,1,0,0,1,0,1
          DB 1,0,1,1,1,1,1,1,0,1,1,1,0,1,1,0,1,0,1,1
          DB 1,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,1,0,0,1
          DB 1,1,1,0,1,0,1,1,1,1,0,1,1,1,0,1,1,1,0,1
          DB 1,0,0,0,1,0,1,0,1,0,0,1,0,0,0,1,0,0,0,1
          DB 1,0,1,1,1,0,1,0,1,1,1,1,0,1,0,1,0,1,1,1
          DB 1,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,2,1
          DB 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1

    ; Map pointer array
    MAZE_TABLE DW OFFSET MAZE1, OFFSET MAZE2, OFFSET MAZE3, OFFSET MAZE4, OFFSET MAZE5
    
    ; Map name strings
    NAME1 DB "MAP 1: BEGINNER", "$"
    NAME2 DB "MAP 2: TWISTED", "$"
    NAME3 DB "MAP 3: LABYRINTH", "$"
    NAME4 DB "MAP 4: COMPLEX", "$"
    NAME5 DB "MAP 5: MASTER", "$"

    ; Map name pointer table
    MAZE_NAME_TABLE DW OFFSET NAME1, OFFSET NAME2, OFFSET NAME3, OFFSET NAME4, OFFSET NAME5

    CURRENT_LEVEL DW 0     ; Current level index

    PLAYER_X 	DW 1   
    PLAYER_Y 	DW 1   
    CURRENT_PAGE 	DW 0500H  ; Current page state
    MENU_SEL 	DW 0          ; Menu selection
    WIN_SEL     DW 0          ; Win menu selection

    ; Text messages
    MSG_TITLE  	DB "=== PIXEL MAZE GAME ===$", 0DH, 0AH
    
	MSG_START1 	DB " > START GAME  $"
    MSG_START2 	DB "   START GAME  $"
    
	MSG_EXIT1  	DB " > EXIT        $"
    MSG_EXIT2  	DB "   EXIT        $"
    
	MSG_WIN    	DB "CONGRATULATIONS! YOU WIN!$"
	
	MSG_NEXT1	DB " > NEXT GAME  $"
	MSG_NEXT2	DB "   NEXT GAME  $"
	
	MSG_RESTART1 DB " > PLAY AGAIN  $"
    MSG_RESTART2 DB "   PLAY AGAIN  $"
	
	NL 			DB 0AH,0DH,"$"

    ; Timer variables
    START_MIN   DB 0
    START_SEC   DB 0
    ELAPSED_SEC DW 0
    TIME_MSG    DB "TIME: 000 SECONDS$"

.code
START:
    MOV AX, @DATA
    MOV DS, AX

    ; Set text mode
    MOV AX, 0003H
    INT 10H

MAIN_LOOP:
    MOV AX, CURRENT_PAGE
    CMP AX, 0500H
    JE HANDLE_MENU_PAGE
    CMP AX, 0501H
    JE HANDLE_GAME_PAGE
    CMP AX, 0502H
    JE HANDLE_WIN_PAGE
    JMP MAIN_LOOP

HANDLE_MENU_PAGE:
    CALL SHOW_MENU_PAGE
    JMP MAIN_LOOP

HANDLE_GAME_PAGE:
    CALL SHOW_GAME_PAGE
    JMP MAIN_LOOP

HANDLE_WIN_PAGE:
    CALL SHOW_WIN_PAGE
    JMP MAIN_LOOP


; ==========================================
; Main menu logic procedure
; ==========================================
SHOW_MENU_PAGE PROC
    CALL DRAW_TEXT_MENU
    
    MOV AH, 00H
    INT 16H

    CMP AH, 48H     ; Up arrow key
    JE MENU_UP_ACT
    CMP AH, 50H     ; Down arrow key
    JE MENU_DOWN_ACT
    CMP AL, 0DH     ; Enter key
    JE MENU_ENTER_ACT
    CMP AL, 1BH     ; ESC key
    JE MENU_EXIT_GAME
    RET

MENU_EXIT_GAME:
	JMP EXIT_GAME

MENU_UP_ACT:
    MOV MENU_SEL, 0
    RET
MENU_DOWN_ACT:
    MOV MENU_SEL, 1
    RET
MENU_ENTER_ACT:
    CMP MENU_SEL, 0
    JE START_GAME_ACT
    JMP EXIT_GAME

START_GAME_ACT:
    MOV CURRENT_LEVEL, 0
    CALL INIT_TIMER         ; Start timing the game
    MOV AX, 0013H
    INT 10H
    MOV CURRENT_PAGE, 0501H
    RET
SHOW_MENU_PAGE ENDP


; ==========================================
; Game play loop procedure
; ==========================================
SHOW_GAME_PAGE PROC
    CALL DRAW_MAZE
    CALL DRAW_PLAYER
    CALL DRAW_LEVEL_INDICATOR

    MOV AH, 00H
    INT 16H

    CMP AH, 48H     ; Up arrow key
    JE MOVE_UP_ACT
    CMP AH, 50H     ; Down arrow key
    JE MOVE_DOWN_ACT
    CMP AH, 4BH     ; Left arrow key
    JE MOVE_LEFT_ACT
    CMP AH, 4DH     ; Right arrow key
    JE MOVE_RIGHT_ACT
    CMP AL, 1BH     ; ESC key
    JE GO_BACK_MENU_ACT
    RET

GO_BACK_MENU_ACT:
    MOV AX, 0003H
    INT 10H
    MOV CURRENT_PAGE, 0500H
    RET

MOVE_UP_ACT:
    DEC PLAYER_Y
    CALL CHECK_COLLISION
    JC UNDO_UP_ACT
    RET
UNDO_UP_ACT:
    INC PLAYER_Y
    RET

MOVE_DOWN_ACT:
    INC PLAYER_Y
    CALL CHECK_COLLISION
    JC UNDO_DOWN_ACT
    RET
UNDO_DOWN_ACT:
    DEC PLAYER_Y
    RET

MOVE_LEFT_ACT:
    DEC PLAYER_X
    CALL CHECK_COLLISION
    JC UNDO_LEFT_ACT
    RET
UNDO_LEFT_ACT:
    INC PLAYER_X
    RET

MOVE_RIGHT_ACT:
    INC PLAYER_X
    CALL CHECK_COLLISION
    JC UNDO_RIGHT_ACT
    RET
UNDO_RIGHT_ACT:
    DEC PLAYER_X
    RET
SHOW_GAME_PAGE ENDP


; ==========================================
; Win screen procedure
; ==========================================
SHOW_WIN_PAGE PROC
    PUSH AX
    PUSH BX
    PUSH CX
    PUSH DX
    PUSH SI
    PUSH DI
    PUSH BP
    
    MOV AH, 05H
    MOV AL, 01H     ; Select second screen page
    INT 10H
    
    MOV AH, 00H
    MOV AL, 03H     ; Set 80x25 text mode
    INT 10H

    POP BP
    POP DI
    POP SI
    POP DX
    POP CX
    POP BX
    POP AX

    ; Clear screen with green background
    MOV AX, 0600H
    MOV BH, 2FH     
    XOR CX, CX
    MOV DX, 184FH
    INT 10H

    ; Hide cursor
    MOV AH, 01H
    MOV BH, 00H
    MOV CH, 20H
    MOV CL, 00H
    INT 10H

    ; Print win title
    MOV AH, 02H
    MOV BH, 00H
    MOV DH, 7
    MOV DL, 27
    INT 10H

    MOV DX, OFFSET MSG_WIN
    MOV AH, 09H
    INT 21H

    ; Print map name
    MOV AH, 02H
    MOV BH, 00H
    MOV DH, 9
    MOV DL, 33
    INT 10H

    CALL GET_CURRENT_NAME_PTR
    MOV DX, AX
    MOV AH, 09H
    INT 21H

    ; Print time taken message
    MOV AH, 02H
    MOV BH, 00H
    MOV DH, 11
    MOV DL, 31
    INT 10H

    MOV DX, OFFSET TIME_MSG
    MOV AH, 09H
    INT 21H

    ; Print option 1 (Next level or Play again)
    MOV AH, 02H
    MOV BH, 00H
    MOV DH, 13
    MOV DL, 33
    INT 10H
    
    MOV AX, CURRENT_LEVEL
    CMP AX, 4       ; Check if last level
    JE PRINT_RESTART_OPT
    
    CMP WIN_SEL, 0
    JE WIN_PRT_N1
    MOV DX, OFFSET MSG_NEXT2
    JMP WIN_DO_N1
WIN_PRT_N1:
    MOV DX, OFFSET MSG_NEXT1
    JMP WIN_DO_N1

PRINT_RESTART_OPT:
    CMP WIN_SEL, 0
    JE WIN_PRT_R1
    MOV DX, OFFSET MSG_RESTART2
    JMP WIN_DO_N1
WIN_PRT_R1:
    MOV DX, OFFSET MSG_RESTART1

WIN_DO_N1:
    MOV AH, 09H
    INT 21H

    ; Print exit option
    MOV AH, 02H
    MOV BH, 00H
    MOV DH, 15
    MOV DL, 33
    INT 10H
    
    CMP WIN_SEL, 1
    JE WIN_PRT_E1
    MOV DX, OFFSET MSG_EXIT2
    JMP WIN_DO_E1
WIN_PRT_E1:
    MOV DX, OFFSET MSG_EXIT1
WIN_DO_E1:
    MOV AH, 09H
    INT 21H

    ; Wait for user key input
    MOV AH, 00H
    INT 16H

    CMP AH, 48H     ; Up arrow key
    JE WIN_UP_ACT
    CMP AH, 50H     ; Down arrow key
    JE WIN_DOWN_ACT
    CMP AL, 0DH     ; Enter key
    JE WIN_ENTER_ACT
    CMP AL, 1BH     ; ESC key
    JE EXIT_GAME_JMP
    RET

EXIT_GAME_JMP:
	JMP EXIT_GAME

WIN_UP_ACT:
    MOV WIN_SEL, 0
    RET
WIN_DOWN_ACT:
    MOV WIN_SEL, 1
    RET
WIN_ENTER_ACT:
    CMP WIN_SEL, 0
    JE NEXT_GAME_ACT
    JMP EXIT_GAME

NEXT_GAME_ACT:
    INC CURRENT_LEVEL
    CMP CURRENT_LEVEL, 5
    JL CONT_NEXT_ACT
    MOV CURRENT_LEVEL, 0
CONT_NEXT_ACT:
    MOV PLAYER_X, 1
    MOV PLAYER_Y, 1
    CALL INIT_TIMER         ; Reset timer for next level
    MOV AX, 0013H
    INT 10H
    MOV CURRENT_PAGE, 0501H
    RET
SHOW_WIN_PAGE ENDP


; ==========================================
; Helper Procedures
; ==========================================

GET_CURRENT_MAZE_PTR PROC
    MOV AX, CURRENT_LEVEL
    SHL AX, 1
    MOV BX, AX
    MOV SI, OFFSET MAZE_TABLE
    ADD SI, BX
    MOV AX, [SI]
    RET
GET_CURRENT_MAZE_PTR ENDP

GET_CURRENT_NAME_PTR PROC
    MOV AX, CURRENT_LEVEL
    SHL AX, 1
    MOV BX, AX
    MOV SI, OFFSET MAZE_NAME_TABLE
    ADD SI, BX
    MOV AX, [SI]
    RET
GET_CURRENT_NAME_PTR ENDP

CHECK_COLLISION PROC
    MOV AX, PLAYER_Y
    MOV BX, 20
    MUL BX
    ADD AX, PLAYER_X
    
    PUSH AX
    CALL GET_CURRENT_MAZE_PTR
    MOV SI, AX
    POP AX
    
    ADD SI, AX
    MOV AL, [SI]
    CMP AL, 1
    JE COLLISION_YES
    CMP AL, 2
    JE COLLISION_WIN_ACT
    CLC
    RET
COLLISION_YES:
    STC
    RET
COLLISION_WIN_ACT:
    CALL CALC_TIMER         ; Calculate time when winning
    MOV CURRENT_PAGE, 0502H
    RET
CHECK_COLLISION ENDP

DRAW_TEXT_MENU PROC
    MOV AX, 0600H
    MOV BH, 1FH
    XOR CX, CX
    MOV DX, 184FH
    INT 10H

    MOV AH, 02H
    MOV BH, 00H
    MOV DH, 8
    MOV DL, 27
    INT 10H

    MOV DX, OFFSET MSG_TITLE
    MOV AH, 09H
    INT 21H
	
	MOV AH, 01H
    MOV BH, 00H
    MOV CH, 20H
    MOV CL, 00H
    INT 10H

    MOV AH, 02H
    MOV DH, 11
    MOV DL, 32
    INT 10H
    CMP MENU_SEL, 0
    JE MENU_P1
    MOV DX, OFFSET MSG_START2
    JMP MENU_DP1
MENU_P1:
    MOV DX, OFFSET MSG_START1
MENU_DP1:
    MOV AH, 09H
    INT 21H

    MOV AH, 02H
    MOV DH, 13
    MOV DL, 32
    INT 10H
    CMP MENU_SEL, 1
    JE MENU_P2
    MOV DX, OFFSET MSG_EXIT2
    JMP MENU_DP2
MENU_P2:
    MOV DX, OFFSET MSG_EXIT1
MENU_DP2:
    MOV AH, 09H
    INT 21H
    RET
DRAW_TEXT_MENU ENDP

DRAW_LEVEL_INDICATOR PROC
    MOV AX, 0A000H
    MOV ES, AX
    
    MOV CX, 5
    MOV DI, 320 * 2 + 140

    MOV DX, CURRENT_LEVEL
    INC DX

IND_LOOP:
    PUSH CX
    PUSH DI
    PUSH DX

    MOV DX, 6
IND_H:
    PUSH CX
    MOV CX, 6
    MOV AL, 15
IND_W:
    STOSB
    LOOP IND_W
    SUB DI, 6
    ADD DI, 320
    POP CX
    DEC DX
    JNZ IND_H

    POP DX
    POP DI
    POP CX
    
    ADD DI, 10
    DEC DX
    JNZ IND_LOOP
    RET
DRAW_LEVEL_INDICATOR ENDP

DRAW_MAZE PROC
    MOV AX, 0A000H
    MOV ES, AX
    MOV DI, 320 * 8

    CALL GET_CURRENT_MAZE_PTR
    MOV SI, AX

    MOV CX, 12
R_LOOP:
    PUSH CX
    MOV CX, 20
C_LOOP:
    PUSH CX
    LODSB
    
    MOV BL, AL
    CMP BL, 1
    JE M_WALL
    CMP BL, 2
    JE M_GOAL
    MOV AL, 0
    JMP M_DRAW
M_WALL:
    MOV AL, 1
    JMP M_DRAW
M_GOAL:
    MOV AL, 2

M_DRAW:
    PUSH DI
    MOV DX, 16
MH_LOOP:
    PUSH CX
    MOV CX, 16
MW_LOOP:
    STOSB
    LOOP MW_LOOP
    SUB DI, 16
    ADD DI, 320
    POP CX
    DEC DX
    JNZ MH_LOOP
    POP DI
    
    ADD DI, 16
    POP CX
    LOOP C_LOOP

    ADD DI, 320 * 15
    POP CX
    LOOP R_LOOP
    RET
DRAW_MAZE ENDP

DRAW_PLAYER PROC
    MOV AX, PLAYER_Y
    MOV BX, 320 * 16
    MUL BX
    MOV DI, AX
    MOV AX, PLAYER_X
	MOV CL, 4
    SHL AX, CL
    ADD DI, AX
    ADD DI, 320 * 8

    MOV AX, 0A000H
    MOV ES, AX

    MOV DX, 16
P_H:
    PUSH CX
    MOV CX, 16
P_W:
    MOV AL, 4
    STOSB
    LOOP P_W
    SUB DI, 16
    ADD DI, 320
    POP CX
    DEC DX
    JNZ P_H
    RET
DRAW_PLAYER ENDP


; ==========================================
; Timer procedures
; ==========================================
INIT_TIMER PROC
    PUSH AX
    PUSH CX
    PUSH DX
    
    MOV AH, 2CH
    INT 21H         ; Get system time (CL = minute, DH = second)
    MOV START_MIN, CL
    MOV START_SEC, DH
    
    POP DX
    POP CX
    POP AX
    RET
INIT_TIMER ENDP

CALC_TIMER PROC
    PUSH AX
    PUSH BX
    PUSH CX
    PUSH DX
    PUSH SI
    
    MOV AH, 2CH
    INT 21H         ; Get end time
    
    ; Calculate start total seconds
    XOR AX, AX
    MOV AL, START_MIN
    MOV BL, 60
    MUL BL          
    XOR BH, BH
    MOV BL, START_SEC
    ADD AX, BX      
    PUSH AX         
    
    ; Calculate end total seconds
    XOR AX, AX
    MOV AL, CL
    MOV BL, 60
    MUL BL          
    XOR BH, BH
    MOV BL, DH
    ADD AX, BX      
    
    POP BX          
    SUB AX, BX      ; Subtract start time from end time
    JNS SAVE_ELAPSED
    XOR AX, AX      
SAVE_ELAPSED:
    MOV ELAPSED_SEC, AX
    
    ; Convert seconds number to string characters
    MOV AX, ELAPSED_SEC
    CMP AX, 999
    JLE TIME_OK
    MOV AX, 999     ; Limit max display to 999 seconds
TIME_OK:
    MOV CX, 10
    
    ; Extract units digit
    XOR DX, DX
    DIV CX
    ADD DL, 30H
    MOV [TIME_MSG + 8], DL
    
    ; Extract tens digit
    XOR DX, DX
    DIV CX
    ADD DL, 30H
    MOV [TIME_MSG + 7], DL
    
    ; Extract hundreds digit
    XOR DX, DX
    DIV CX
    ADD DL, 30H
    MOV [TIME_MSG + 6], DL
    
    POP SI
    POP DX
    POP CX
    POP BX
    POP AX
    RET
CALC_TIMER ENDP


EXIT_GAME PROC
    MOV AX, 0003H
    INT 10H

    MOV AX, 4C00H
    INT 21H
EXIT_GAME ENDP

END START
