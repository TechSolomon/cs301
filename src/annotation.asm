                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             int __regparm3 main(int argc, char * * argv)
             int               EAX:4          <RETURN>
             int               EAX:4          argc
             char * *          EDX:4          argv
             undefined4        Stack[-0x1c]:4 local_1c                                XREF[1]:     08048b16(R)  
                             gcc2_compiled.                                  XREF[3]:     Entry Point(*),
                             main                                                         entry:080488f7(*), 0804b4a0(*)  
        080489b0 55              PUSH       EBP ; Initial push to begin compiled main function.
        080489b1 89 e5           MOV        EBP,ESP ; Moves the stack pointer into the preserved register (32 bit-int).
        080489b3 83 ec 14        SUB        ESP,0x14 ; Subtracts the number of bytes (0x14 == 20) from the stack pointer.
        080489b6 53              PUSH       EBX ; Pushes the preserved register onto the stack.
        080489b7 8b 45 08        MOV        argc,dword ptr [EBP + Stack[0x4]]; Moves the offset EBP + Stack[0x4] -> register.
        080489ba 8b 5d 0c        MOV        EBX,dword ptr [EBP + Stack[0x8]] ; Moves the offset EBP + Stack[0x8] -> EBX.
        080489bd 83 f8 01        CMP        argc,0x1 ; Compares the value in the register (argc) to 0x1.
        080489c0 75 0e           JNZ        LAB_080489d0 ; Jump to LAB_080489d0 if argc != 0x1.
        080489c2 a1 48 b6        MOV        argc,[stdin] ; Moves the address of stdin into the register.
                 04 08
        080489c7 a3 64 b6        MOV        [infile],argc ; Move the register's value into the address of infile.
                 04 08
        080489cc eb 62           JMP        LAB_08048a30 ; Jump to LAB_08048a30.
        080489ce 89              ??         89h ; Unknown instruction.
        080489cf f6              ??         F6h ; Unknown instruction.
                             LAB_080489d0                                    XREF[1]:     080489c0(j)  
        080489d0 83 f8 02        CMP        argc,0x2 ; Compare the value in the register (argc) to 0x2.
        080489d3 75 3b           JNZ        LAB_08048a10 ; Jump to LAB_08048a10 if argc != 0x2.
        080489d5 83 c4 f8        ADD        ESP,-0x8 ; Add the number of bytes (-0x8 == -8) to the stack pointer.
        080489d8 68 20 96        PUSH       DAT_08049620 ; Push the address of DAT_08049620 onto the stack.
                 04 08
        080489dd 8b 43 04        MOV        argc,dword ptr [EBX + 0x4] ; Moves register value (EBX) + 0x4 -> register (argc).
        080489e0 50              PUSH       argc ; Push the register onto the stack.
        080489e1 e8 9a fe        CALL       fopen ; Call fopen {FILE * fopen(char * __filename}.
                 ff ff
        080489e6 a3 64 b6        MOV        [infile],argc ; Move the register's value into the address of infile.
                 04 08
        080489eb 83 c4 10        ADD        ESP,0x10 ; Add the number of bytes (0x10 == 16) to the stack pointer.
        080489ee 85 c0           TEST       argc,argc ; Test the value in the register (argc) against itself.
        080489f0 75 3e           JNZ        LAB_08048a30 ; Jump to LAB_08048a30 if argc != 0.
        080489f2 83 c4 fc        ADD        ESP,-0x4 ; Add the number of bytes (-0x4 == -4) to the stack pointer.
        080489f5 8b 43 04        MOV        argc,dword ptr [EBX + 0x4] ; Move the value in EBX + 0x4 -> register (argc).
        080489f8 50              PUSH       argc ; Push the register onto the stack.
        080489f9 8b 03           MOV        argc,dword ptr [EBX] ; Add a given number of bytes to the stack pointer. 
        080489fb 50              PUSH       argc ; Push the value in the register (argc) onto the stack.
        080489fc 68 22 96        PUSH       s_%s:_Error:_Couldn't_open_%s_08049622 ; Push the string onto the stack.
                 04 08
        08048a01 e8 0a fe        CALL       printf ; Call the printf function.
                 ff ff
        08048a06 83 c4 f4        ADD        ESP,-0xc ; Add a given number of bytes to the stack pointer.
        08048a09 6a 08           PUSH       0x8 ; Push the value 0x8 onto the stack.
        08048a0b e8 40 fe        CALL       exit ; Call void exit(int __status).
                 ff ff
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_08048a10                                    XREF[1]:     080489d3(j)  
        08048a10 83 c4 f8        ADD        ESP,-0x8 ; Add the number of bytes (-0x8 == -8) to the stack pointer.
        08048a13 8b 03           MOV        argc,dword ptr [EBX] ; Mov the value in EBX -> register (argc).
        08048a15 50              PUSH       argc ; Push the register onto the stack.
        08048a16 68 3f 96        PUSH       s_Usage:_%s_[<input_file>]_0804963f ; Push the string onto the stack.
                 04 08
        08048a1b e8 f0 fd        CALL       printf ; Call printf(char * __format, ...).
                 ff ff
        08048a20 83 c4 f4        ADD        ESP,-0xc ; Add a given number of bytes to the stack pointer.
        08048a23 6a 08           PUSH       0x8 ; Push the value 0x8 onto the stack.
        08048a25 e8 26 fe        CALL       exit ; Call void exit(int __status).
                 ff ff
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
        08048a2a 8d              ??         8Dh ; Unknown instruction.
        08048a2b b6              ??         B6h ; Unknown instruction.
        08048a2c 00              ??         00h ; Unknown instruction.
        08048a2d 00              ??         00h ; Unknown instruction.
        08048a2e 00              ??         00h ; Unknown instruction.
        08048a2f 00              ??         00h ; Unknown instruction.
                             LAB_08048a30                                    XREF[2]:     080489cc(j), 080489f0(j)  
        08048a30 e8 2b 07        CALL       initialize_bomb ; Call initialize_bomb (undefined).
                 00 00
        08048a35 83 c4 f4        ADD        ESP,-0xc ; Add a given number of bytes to the stack pointer.
        08048a38 68 60 96        PUSH       s_Welcome_to_my_fiendish_little_bo_08049660 ; Push the string onto the stack.
        08048a3d e8 ce fd        CALL       printf ; Call printf(char * __format, ...).
                 ff ff
        08048a42 83 c4 f4        ADD        ESP,-0xc ; Add a given number of bytes to the stack pointer.
        08048a45 68 a0 96        PUSH       s_which_to_blow_yourself_up._Have_a_080496a0 ; Push the string onto the stack.
                 04 08
        08048a4a e8 c1 fd        CALL       printf ; Call int printf(char * __format, ...).
                 ff ff
        08048a4f 83 c4 20        ADD        ESP,0x20 ; Add the number of bytes (0x20 == 32) to the stack pointer.
        08048a52 e8 a5 07        CALL       read_line ; Call read_line (undefined).
                 00 00
        08048a57 83 c4 f4        ADD        ESP,-0xc ; Add a given number of bytes to the stack pointer.
        08048a5a 50              PUSH       argc ; Push the register onto the stack.
        08048a5b e8 c0 00        CALL       phase_1 ; Call phase_1 (undefined).
                 00 00
        08048a60 e8 c7 0a        CALL       phase_defused ; Call phase_defused (undefined).
                 00 00
        08048a65 83 c4 f4        ADD        ESP,-0xc ; Add a given number of bytes to the stack pointer.
        08048a68 68 e0 96        PUSH       s_Phase_1_defused._How_about_the_n_080496e0 ; Push the string onto the stack.
                 04 08
        08048a6d e8 9e fd        CALL       printf ; Call int printf(char * __format, ...).
                 ff ff
        08048a72 83 c4 20        ADD        ESP,0x20 ; Adds to the stack pointer (0x20 = 32).
        08048a75 e8 82 07        CALL       read_line ; Call the function read_line(). {undefined read_line()}
                 00 00
        08048a7a 83 c4 f4        ADD        ESP,-0xc ; Add a given number of bytes to the stack pointer.
        08048a7d 50              PUSH       argc ; Push the register onto the stack.
        08048a7e e8 c5 00        CALL       phase_2 ; Call phase_2 (undefined).
                 00 00
        08048a83 e8 a4 0a        CALL       phase_defused ; Call the function phase_defused(). {undefined phase_defused()}
                 00 00
        08048a88 83 c4 f4        ADD        ESP,-0xc ; Add a given number of bytes to the stack pointer.
        08048a8b 68 20 97        PUSH       s_That's_number_2._Keep_going!_08049720 ; Push the string onto the stack.
                 04 08
        08048a90 e8 7b fd        CALL       printf ; Call int printf(char * __format, ...).
                 ff ff
        08048a95 83 c4 20        ADD        ESP,0x20 ; Add the number of bytes (0x20 = 32) to the stack pointer.
        08048a98 e8 5f 07        CALL       read_line ; Call the function read_line(). {undefined read_line()}
                 00 00
        08048a9d 83 c4 f4        ADD        ESP,-0xc ; Add a given number of bytes to the stack pointer.
        08048aa0 50              PUSH       argc ; Push the register onto the stack.
        08048aa1 e8 f2 00        CALL       phase_3 ; Call phase_3 (undefined).
                 00 00
        08048aa6 e8 81 0a        CALL       phase_defused ; Call the function phase_defused(). {undefined phase_defused()}
                 00 00
        08048aab 83 c4 f4        ADD        ESP,-0xc ; Add a given number of bytes to the stack pointer.
        08048aae 68 3f 97        PUSH       s_Halfway_there!_0804973f ; Push the string onto the stack.
                 04 08
        08048ab3 e8 58 fd        CALL       printf ; Call int printf(char * __format, ...).
                 ff ff
        08048ab8 83 c4 20        ADD        ESP,0x20 ; Add the number of bytes (0x20 = 32) to the stack pointer.
        08048abb e8 3c 07        CALL       read_line ; Call the function read_line(). {undefined read_line()}
                 00 00
        08048ac0 83 c4 f4        ADD        ESP,-0xc ; Add a given number of bytes to the stack pointer.
        08048ac3 50              PUSH       argc ; Push the register onto the stack.
        08048ac4 e8 17 02        CALL       phase_4 ; Call phase_4 (undefined).
                 00 00
        08048ac9 e8 5e 0a        CALL       phase_defused ; Call the function phase_defused(). {undefined phase_defused()}
                 00 00
        08048ace 83 c4 f4        ADD        ESP,-0xc ; Add a given number of bytes to the stack pointer.
        08048ad1 68 60 97        PUSH       s_So_you_got_that_one._Try_this_on_08049760 ; Push the string onto the stack.
                 04 08
        08048ad6 e8 35 fd        CALL       printf ; Call the function printf(). {int printf(char * __format, ...)}
                 ff ff
        08048adb 83 c4 20        ADD        ESP,0x20 ; Add the number of bytes (0x20 = 32) to the stack pointer.
        08048ade e8 19 07        CALL       read_line ; Call the function read_line(). {undefined read_line()}
                 00 00
        08048ae3 83 c4 f4        ADD        ESP,-0xc ; Add a given number of bytes to the stack pointer.
        08048ae6 50              PUSH       argc ; Push the register onto the stack.
        08048ae7 e8 40 02        CALL       phase_5 ; Call phase_5 (undefined).
                 00 00
        08048aec e8 3b 0a        CALL       phase_defused ; Call the function phase_defused(). {undefined phase_defused()}
                 00 00
        08048af1 83 c4 f4        ADD        ESP,-0xc ; Add a given number of bytes to the stack pointer.
        08048af4 68 a0 97        PUSH       s_Good_work!_On_to_the_next..._080497a0 ; Push the string onto the stack.
                 04 08
        08048af9 e8 12 fd        CALL       printf ; Call the function printf(). {int printf(char * __format, ...)}
                 ff ff
        08048afe 83 c4 20        ADD        ESP,0x20 ; Add to the stack pointer (0x20 = 32).
        08048b01 e8 f6 06        CALL       read_line ; Call the function read_line(). {undefined read_line()}
                 00 00
        08048b06 83 c4 f4        ADD        ESP,-0xc ; Add a given number of bytes to the stack pointer.
        08048b09 50              PUSH       argc ; Push the register onto the stack.
        08048b0a e8 89 02        CALL       phase_6 ; Call phase_6 (undefined).
                 00 00
        08048b0f e8 18 0a        CALL       phase_defused ; Call the function phase_defused(). {undefined phase_defused()}
                 00 00
        08048b14 31 c0           XOR        argc,argc ; XOR the register with itself.
        08048b16 8b 5d e8        MOV        EBX,dword ptr [EBP + local_1c] ; Move the local offset to the register EBX.
        08048b19 89 ec           MOV        ESP,EBP ; Move the frame pointer to the stack pointer.
        08048b1b 5d              POP        EBP ; Final pop before return statement below.
        08048b1c c3              RET        ; Return from the function.
        08048b1d 90              ??         90h ; Unknown instruction.
        08048b1e 90              ??         90h ; Unknown instruction.
        08048b1f 90              ??         90h ; Unknown instruction.
