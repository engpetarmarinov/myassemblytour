.section .text
  .global _start
  _start:
      mov x8, #64           // System call number 64 (write)
      mov x0, #1            // File descriptor 1 (STDOUT_FILENO)
      ldr x1, =msg          // Pointer to the message string
      ldr x2, =msglen       // Length of the message string

      svc 0                 // Invoke the write system call to print the message

      mov x8, #93           // System call number 93 (exit)
      mov x0, #0            // Exit status code 0 (EXIT_SUCCESS)

      svc 0                 // Invoke the exit system call to terminate the program

.section .bss
    // Variables go here

.section .rodata
  msg:    .asciz "Hello, world!\n"   // Define the message string with a newline character
  msglen = . - msg                   // Calculate the length of the message
