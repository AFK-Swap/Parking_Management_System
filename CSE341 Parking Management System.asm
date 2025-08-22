.MODEL SMALL
 
.STACK 100H

.DATA  

vehicle db ?
park_hour db ?
charge db ? 
total dw ?


cycle_count db 0
bike_count db 0
cars_count db 0
micro_count db 0
minibus_count db 0 

cycle_info db 13, 10, "Parked Cycle: ", 9, "$"
bike_info db "Parked Bike:  ", 9, "$"
car_info db "Parked Car: ", 9, "$"
micro_info db "Parked Micro: ", 9, "$"
minibus_info db "Parked Minibus: ", "$"

discount_applied_10 db 13, 10, "10% discount applied.", 13, 10, "$"
discount_applied_20 db 13, 10, "20% discount applied.", 13, 10, "$"



 
coupon DW ?
temp2 DB ?
temp dw ?          ; Temporary storage for division
divisor dw 1000    ; Start with 1000 for 4 digits
leading_zero db 0  ; Flag for leading zeros (0=suppress, 1=show)
msg db 'Total: $'    

discounted_price dw 0
discount dw 0
parking db 32, "parked a Vehicle for $" 
parking_2 db 32, "hours and his bill is $"
no_discount db 13, 10, "No discount, proceeding with regular charges.", 13, 10, "$"


welcome db "?-------------------------------------------------------------?", 13, 10
        db "¦                                                             ¦", 13, 10 
        db "¦                                                             ¦", 13, 10
        db "¦                       WELCOME TO OUR                        ¦", 13, 10
        db "¦                                                             ¦", 13, 10
        db "¦                  Parking Management System                  ¦", 13, 10
        db "¦                                                             ¦", 13, 10
        db "¦                                                             ¦", 13, 10
        db "¦                                                             ¦", 13, 10
        db "?-------------------------------------------------------------?", 13, 10
        db "                   [ PRESS ENTER TO START ]                    ", 13, 10, "$"  
        
        
vehicle_list db 13,10, "?-------------------------------------------------------------?", 13, 10
             db "¦                       VEHICLE LIST                          ¦", 13, 10
             db "?-------------------------------------------------------------?", 13, 10
             db "¦   Vehicle Type                     |   Price per Hour (Tk)  ¦", 13, 10
             db "?-------------------------------------------------------------?", 13, 10
             db "¦   1. Cycle                         |              20        ¦", 13, 10
             db "¦   2. Bike                          |              50        ¦", 13, 10
             db "¦   3. Car                           |             120        ¦", 13, 10
             db "¦   4. Micro                         |             180        ¦", 13, 10
             db "¦   5. Minibus                       |             220        ¦", 13, 10
             db "?-------------------------------------------------------------?", 13, 10
             db "                   [ PRESS ENTER TO CONTINUE ]                ", 13, 10, "$" 
             
menu db "?-------------------------------------------------------------?", 13, 10
     db "¦                                                             ¦", 13, 10
     db "¦                      1. Park a Vehicle                      ¦", 13, 10
     db "¦                      2. Show Record                         ¦", 13, 10
     db "¦                      3. Delete Record                       ¦", 13, 10
     db "¦                      4. Exit                                ¦", 13, 10 
     db "¦                                                             ¦", 13, 10
     db "?-------------------------------------------------------------?", 13, 10
     db "                       Select an option: $"

             

vehicle_name db "               Which vehicle do you want to park?           ", 13, 10, 9, 9, 9, 32, 32, "$" 
cycle db ". Cycle", 13, 10, "$"
bike db ". Bike", 13, 10, "$"
car db ". Car", 13, 10, "$"
micro db ". Micro", 13, 10, "$"
minibus db ". Minibus", 13, 10, "$" 

parking_hours db "?-------------------------------------------------------------?", 13, 10
              db "¦                                                             ¦", 13, 10
              db "¦               HOW MANY HOURS DO YOU WANT TO PARK?           ¦", 13, 10
              db "¦                                                             ¦", 13, 10
              db "?-------------------------------------------------------------?", 13, 10
              db "               ( Maximum parking limit: 24 hours )            ", 13, 10
              db "                     Enter number of hours: ", "$"    

invalid_prompt  db 13, 10, 9, 32, 32, 32, 32, 32, "Please press Enter to continue further", 13, 10
                db 9, 32, 32, 32, 32, 32, "--------------------------------------", 13, 10, "$" 
                
invalid_prompt_2  db 13, 10, 9, 9, 32, 32, "Not a Valid Input, Try Again", 13, 10
                db 9, 9, 32, 32,          "----------------------------", 13, 10, 9, 9, 9, 32, 32, "$" 
                
owner_name db "        Owner's Name (press Enter when done):  $"

new_line db 13,10,"$"

name_buf db 50 dup('$')

discount_menu db "?-------------------------------------------------------------?", 13, 10
              db "¦                                                             ¦", 13, 10
              db "¦                Do you have any discount coupon?             ¦", 13, 10
              db "¦                                                             ¦", 13, 10
              db "¦                      1. Yes                                 ¦", 13, 10
              db "¦                      2. No                                  ¦", 13, 10
              db "¦                                                             ¦", 13, 10
              db "?-------------------------------------------------------------?", 13, 10
              db "                       Select an option: $"          
             
                    
                    
coupon_code db "?-------------------------------------------------------------?", 13, 10
            db "¦                                                             ¦", 13, 10
            db "¦                    Enter 4-Digit Coupon Code:               ¦", 13, 10
            db "¦                                                             ¦", 13, 10
            db "?-------------------------------------------------------------?", 13, 10
            db "                        Code: $"
                                                                       
vehicle_list_del db 13, 10, "?-------------------------------------------------------------?", 13, 10
             db "¦                                                             ¦", 13, 10
             db "¦                          1. Cycle                           ¦", 13, 10
             db "¦                          2. Bike                            ¦", 13, 10
             db "¦                          3. Car                             ¦", 13, 10
             db "¦                          4. Micro                           ¦", 13, 10
             db "¦                          5. Minibus                         ¦", 13, 10
             db "¦                                                             ¦", 13, 10
             db "?-------------------------------------------------------------?", 13, 10
             db "              Select a vehicle to delete its record: $"   
             
delete_success db "?-------------------------------------------------------------?", 13, 10
               db "¦                                                             ¦", 13, 10
               db "¦                Vehicle record deleted successfully.         ¦", 13, 10
               db "¦                                                             ¦", 13, 10
               db "?-------------------------------------------------------------?", 13, 10, "$" 
               
nothing db 13, 10, "Nothing to Delete, Value is already 0", 13, 10, "$"

frame1 db "   O/  ", 13, 10
       db "  /|   ", 13, 10
       db "  / \  ", 13, 10
       db " Thank you for using!", 13, 10, "$"

frame2 db "   O   ", 13, 10
       db "  /|\\  ", 13, 10
       db "  / \  ", 13, 10
       db " Hope you liked it!", 13, 10, "$"

frame3 db "  \\O   ", 13, 10
       db "    |\\ ", 13, 10
       db "   / \  ", 13, 10
       db " See you around!", 13, 10, "$"

frame4 db "   O/  ", 13, 10
       db "  /|   ", 13, 10
       db "  / \  ", 13, 10
       db "  B y e   B y e !", 13, 10, "$"

frame5 db "   O   ", 13, 10
       db "  \|/  ", 13, 10
       db "  / \  ", 13, 10
       db "    Bye Bye!", 13, 10, "$"



clear_screen db 24 dup(13, 10), "$"


.CODE
MAIN PROC

;iniitialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here

start:
lea dx, welcome
call print 

call press_enter

menu_show:
lea dx, menu
call print

selector:
mov ah,1
int 21h 
sub al,30h
cmp al,1
je park  
cmp al, 2
je show_records
cmp al,3
je clear_records
cmp al,1
jl wrong_input_3
cmp al,4
jg wrong_input_3
cmp al,4
je exit




park:
lea dx, vehicle_list
call print
            
call press_enter 

lea dx, vehicle_name
call print

car_input:
mov ah,1
int 21h
sub al,30h
cmp al,5 
jg wrong_input_2 
cmp al,1
jl wrong_input_2
cmp al,2
je bike_
cmp al,3
je car_
cmp al,4
je micro_
cmp al,5
je minibus_
call print_cycle
jmp calculation
bike_:
    call print_bike
    jmp calculation
car_:
    call print_car 
    jmp calculation
micro_: 
    call print_micro
    jmp calculation
minibus_:
    call print_minibus
    jmp calculation



calculation:
lea dx, parking_hours
call print

call hour_input

lea dx, new_line
call print

lea dx, owner_name
call print


mov cx, 0
mov si, offset name_buf 

character_input:
    mov ah, 01h
    int 21h
    
    cmp al, 13
    je end_input
    
    mov [si], al
    inc si
    inc cx
    
    cmp cx, 49
    je end_input
    
    jmp character_input
    
end_input:
    mov byte ptr [si], '$'
    
    mov dx, offset new_line
    mov ah, 09h
    int 21h 
    
mov al, charge
mul park_hour 
mov total, ax

lea dx, discount_menu
call print

dis:
mov ah, 1
int 21h
sub al,30h
cmp  al,2
je normal
cmp al,1
jl wrong_input_4
cmp al,2
jg wrong_input_4

lea dx, new_line
call print 

lea dx, coupon_code
call print

; Initialize coupon to 0
MOV coupon, 0
    
    ; Read 4 digits
MOV CX, 4      ; Counter for 4 digits
    
INPUT_LOOP2:
    ; Read a character
    MOV AH, 1
    INT 21H
    
    ; Convert ASCII to number (subtract '0')
    SUB AL, 30H
    MOV temp2, AL
    
    ; Multiply previous number by 10
    MOV AX, coupon
    MOV BX, 10
    MUL BX
    
    ; Add new digit
    XOR BH, BH
    MOV BL, temp2
    ADD AX, BX
    
    ; Store result back in coupon
    MOV coupon, AX
    
    LOOP INPUT_LOOP2

CMP coupon, 1234
JE discount_10
CMP coupon, 2579
JE discount_20
JMP normal

discount_10:

    lea dx, discount_applied_10
    call print
      
    lea dx, new_line
    call print
    
    lea dx,name_buf
    call print
    lea dx, parking
    call print 
    
    call print_hour 
    
    lea dx, parking_2
    call print
    mov ax, total
    mov cx, 10               ; Set discount percentage (10%)
    mul cx                   ; AX = price * 10
    mov cx, 100
    div cx                   ; AX = (price * 10) / 100
    mov discount, ax
    mov ax, total
    sub ax, discount
    mov total, ax
    
    call total_output
    
    lea dx, new_line
    call print
    
    jmp menu_show
    
discount_20:  

    lea dx, discount_applied_20
    call print
      
    lea dx, new_line
    call print
    
    lea dx,name_buf
    call print
    lea dx, parking
    call print 
    
    call print_hour 
    
    lea dx, parking_2
    call print
    mov ax, total
    mov cx, 20               ; Set discount percentage (10%)
    mul cx                   ; AX = price * 10
    mov cx, 100
    div cx                   ; AX = (price * 10) / 100
    mov discount, ax
    mov ax, total
    sub ax, discount
    mov total, ax
    
    call total_output
    
    lea dx, new_line
    call print
    
    jmp menu_show



normal:
lea dx, no_discount
call print
  
lea dx, new_line
call print

lea dx,name_buf
call print
lea dx, parking
call print 

call print_hour 

lea dx, parking_2
call print

call total_output

lea dx, new_line
call print

jmp menu_show







jmp exit

print_car:  
    mov vehicle,3
    mov charge, 120 
    inc cars_count
    lea dx,car
    mov ah,9
    int 21h
    ret

print_bike: 
    mov vehicle,2  
    mov charge, 50
    inc bike_count
    lea dx,bike
    mov ah,9
    int 21h
    ret

print_cycle: 
    mov vehicle,1
    mov charge, 20
    inc cycle_count
    lea dx,cycle
    mov ah,9
    int 21h
    ret

print_micro:
    mov vehicle,4
    mov charge, 180
    inc micro_count
    lea dx,micro
    mov ah,9
    int 21h
    ret

print_minibus: 
    mov vehicle,5
    mov charge, 220
    inc minibus_count
    lea dx,minibus
    mov ah,9
    int 21h
    ret
    
press_enter:
    mov ah,1
    int 21h 
    cmp al,0Dh
    jne wrong_input
    ret   

print:
    mov ah,9
    int 21h   
    ret

wrong_input:
    lea dx, invalid_prompt
    mov ah, 9
    int 21h
    jmp press_enter
    
wrong_input_2:
    lea dx, invalid_prompt_2
    mov ah, 9
    int 21h
    jmp car_input 
    
wrong_input_3:
    lea dx, invalid_prompt_2
    mov ah, 9
    int 21h
    lea dx, new_line
    call print 
    jmp selector 
    
wrong_input_4:
    lea dx, invalid_prompt_2
    mov ah, 9
    int 21h
    lea dx, new_line
    call print 
    jmp dis  
    
wrong_input_5:
    lea dx, invalid_prompt_2
    mov ah, 9
    int 21h
    lea dx, new_line
    call print 
    jmp inp
    
    
hour_input:    
    mov ah,1
    int 21h  
    sub al,30h
    mov cx,10
    mul cx
    mov dx,ax
    mov ah,1
    int 21h
    sub al,30h
    mov ah,0
    add dx,ax 
    mov park_hour, dl
    ret

    
total_output:
    mov ax, total
    mov temp, ax       
    

    cmp ax, 1000
    jl three_digits
    
    four_digits:
        ; Print message
        mov ah, 09h
        lea dx, msg
        int 21h
        
        ; Get number into AX
        mov ax, total
        
        ; First digit (thousands)
        mov dx, 0       
        mov bx, 1000    
        div bx          
        mov cx, dx      
        add al, 30h     
        mov dl, al      
        mov ah, 02h    
        int 21h         
        
        ; Second digit (hundreds)
        mov ax, cx     
        mov dx, 0      
        mov bx, 100     
        div bx         
        mov cx, dx      
        add al, 30h     
        mov dl, al    
        mov ah, 02h
        int 21h
        
        ; Third digit (tens)
        mov ax, cx     
        mov dx, 0
        mov bx, 10     
        div bx
        mov cx, dx     
        add al, 30h     
        mov dl, al
        mov ah, 02h
        int 21h
        
        ; Fourth digit (ones)
        mov ax, cx    
        add al, 30h     
        mov dl, al
        mov ah, 02h
        int 21h
    
    
        jmp exit_prog
    
    three_digits:
        ; Check if number is less than 100 (2 digits or less)
        cmp ax, 100
        jl two_digits
        
        ; Print message
        mov ah, 09h
        lea dx, msg
        int 21h
        
        ; Get number into AX
        mov ax, total
        
        ; First digit(hundreds) 
        mov dx, 0       
        mov bx, 100    
        div bx          
        mov cx, dx      
        add al, 30h     
        mov dl, al      
        mov ah, 02h    
        int 21h         
        
        ; Second digit (tens)
        mov ax, cx     
        mov dx, 0      
        mov bx, 10     
        div bx         
        mov cx, dx      
        add al, 30h     
        mov dl, al    
        mov ah, 02h
        int 21h
        
        ; Fourth digit (ones)
        mov ax, cx    
        add al, 30h     
        mov dl, al
        mov ah, 02h
        int 21h
        
    
        jmp exit_prog
        
    two_digits:
        ; Print message
        mov ah, 09h
        lea dx, msg
        int 21h
        
        ; Get number into AX
        mov ax, total
        
        ; First digit (tens)
        mov dx, 0       
        mov bx, 10    
        div bx          
        mov cx, dx      
        add al, 30h     
        mov dl, al      
        mov ah, 02h    
        int 21h         
        
        ; 2nd digit (ones)
        mov ax, cx    
        add al, 30h     
        mov dl, al
        mov ah, 02h
        int 21h
     exit_prog:   
     ret 

print_hour:

    ; Get number into AX
    mov ax,0
    mov al, park_hour

    ; First digit (tens)
    mov dx, 0
    mov bx, 10
    div bx
    mov cx, dx
    add al, 30h
    mov dl, al
    mov ah, 02h
    int 21h

    ; 2nd digit (ones)
    mov ax, cx
    add al, 30h
    mov dl, al
    mov ah, 02h
    int 21h  
    
    ret 
    
show_records: 
    lea dx, cycle_info
    call print 
    mov dl, cycle_count
    add dl, 30h
    mov ah,2
    int 21h
    lea  dx, new_line
    call print 
    
    lea dx, bike_info
    call print 
    mov dl, bike_count
    add dl, 30h
    mov ah,2
    int 21h
    lea  dx, new_line
    call print
    
    lea dx, car_info
    call print 
    mov dl, cars_count
    add dl, 30h
    mov ah,2
    int 21h
    lea  dx, new_line
    call print
    
    lea dx, micro_info
    call print 
    mov dl, micro_count
    add dl, 30h
    mov ah,2
    int 21h 
    lea  dx, new_line
    call print
    
    lea dx, minibus_info
    call print 
    mov dl, minibus_count
    add dl, 30h
    mov ah,2
    int 21h
    lea  dx, new_line
    call print 
    
    jmp menu_show
    
clear_records:
    lea dx, vehicle_list_del
    call print
    inp:    
    mov ah,1
    int 21h
    sub al,30h
    cmp al,1
    jl wrong_input_5
    cmp al,5
    jg wrong_input_5
    cmp al,1
    je cycle__ 
    cmp al,2
    je bike__
    cmp al,3
    je car__
    cmp al,4
    je micro__
    cmp al,5
    je minibus__
    
    cycle__:
         cmp cycle_count,0
         je zero_value
         dec cycle_count
         jmp show_records
         
    bike__:
         cmp bike_count,0
         je zero_value
         dec bike_count
         jmp show_records
         
    car__:
         cmp cars_count,0
         je zero_value
         dec cars_count
         jmp show_records
         
    micro__:
         cmp micro_count,0
         je zero_value
         dec micro_count
         jmp show_records
         
    minibus__:
         cmp minibus_count,0
         je zero_value
         dec minibus_count
         jmp show_records
     
    
zero_value:
    lea dx, nothing
    call print
    jmp menu_show
    
 
exit:



bye:
    mov ah, 09h
    lea dx, clear_screen
    int 21h

    lea dx, frame1
    int 21h

    call delay

    mov ah, 09h
    lea dx, clear_screen
    int 21h

    lea dx, frame2
    int 21h

    call delay 
    
    mov ah, 09h
    lea dx, clear_screen
    int 21h

    lea dx, frame3
    int 21h

    call delay

    mov ah, 09h
    lea dx, clear_screen
    int 21h

    lea dx, frame4
    int 21h 
    
    call delay
    
    jmp end

delay:
    mov cx, 160h
delay_loop:
    loop delay_loop
    ret
       
       
end:
;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN

    
    
   
                         
