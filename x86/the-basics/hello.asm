section .text       ; Start the .text section, which contains executable code
  global _start     ; Declare _start as the entry point for the program
  _start:           ; Label for the entry point of the program
    mov rax, 1      ; System call number 1 (write)
    mov rdi, 1      ; File descriptor 1 (STDOUT_FILENO)
    mov rsi, msg    ; Pointer to the message string
    mov rdx, msglen ; Length of the message string

    syscall         ; Invoke the write system call to print the message

    mov rax, 60     ; System call number 60 (exit)
    mov rdi, 0      ; Exit status code 0 (EXIT_SUCCESS)

    syscall         ; Invoke the exit system call to terminate the program

section .bss        ; Start the Block Starting Symbol section, which holds variables with the state
  ; variables

section .rodata     ; Start the .rodata section, which contains read-only data - constants
  msg: db "Hello, world!", 10 ; Define the message string with a newline character
  msglen: equ $-msg         ; Calculate the length of the message
