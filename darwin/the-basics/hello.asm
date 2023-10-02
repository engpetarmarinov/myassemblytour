.global _main         // Provide program starting address to linker
.align 2

_main: mov X0, #1     // 1 = StdOut
        adr X1, helloworld // string to print
        mov X2, #13     // length of our string
        mov X16, #4     // OS write system call
        svc 0     // Call OS to output the string

        mov     X0, #0      // Use 0 return code
        mov     X16, #1     // Service command code 1 terminates this program
        svc     0           // Call OS to terminate the program

helloworld:      .ascii  "Hello World!\n"