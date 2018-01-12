#include <stdio.h>

int main(void) 
{ 
	printf("Beginning of the simulation!\n"); 

	int before = 0;
	int after = 0;

	asm (	"mv a1, a2",
			"add a1,a1,a2"
						: "=r" (after) 
						: "r" (before));	

	printf("End of the simulation!\n");
	return 0; 
}
