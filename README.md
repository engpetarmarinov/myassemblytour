Assembly playground inspired by myassemblytour

### Requirements:
* Linux x86_64
* nasm/as
* ld

### Run it on Linux x86_64
```sh
make FILE=x86/the-basics/hello.asm FORMAT=elf64 run
```

### Run on Docker
```sh
docker build -t myassemblytour.x86 -f ./myassemblytour.x86.Dockerfile .
docker run --rm -it -v "$(pwd):/tmp" myassemblytour.x86 sh -c "cd /tmp && sh"
```
or
```sh
docker build -t myassemblytour.arm64 -f ./myassemblytour.arm64.Dockerfile .
docker run --rm -it -v "$(pwd):/tmp" myassemblytour.arm64 sh -c "cd /tmp && sh"
```
then
```sh
as -o bin/out.o arm64/the-basics/hello.asm
ld -o bin/out bin/out.o
./bin/out
```
### Run on darwin with arm64
```sh
make FILE=darwin/the-basics/hello.asm run-as
```
