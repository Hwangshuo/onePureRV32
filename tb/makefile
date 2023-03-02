gcc=riscv-none-elf-gcc -march=rv32i --entry=main -nostdlib 
all:
	 $(gcc) -E test.c -o test.i
	 $(gcc) -S test.c -o test.s
	 $(gcc) -C test.c -o test.o
	 $(gcc) test.c -o test	
	 riscv-none-elf-objcopy -I elf32-bigriscv test.o -O verilog  program_to_CPU
clean:
	rm test  test.i test.s test.o program_to_CPU
	
