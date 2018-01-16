#include <stdio.h>

int addition(int b)
{
	int a;
	/*asm (	"addi $1,$1,25;"
			: "=&r" (a) 
			: "r" (b));*/ 
	return b;
}

int main(void) 
{ 
	printf("Beginning of the simulation!\n"); 

	int before = 10;
	int after = 0;
	int function = 0;

	function = addition(before);
	printf("Integer : %d\n", function);

	printf("End of the simulation!\n");
	return 0; 
}
