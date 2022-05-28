#include <stdio.h>
#include <stdlib.h>

int main(){
	printf("Enter number: ");
	int num;
	scanf("%d", &num);
	if (num<0) exit(0);
	else if (num==0) exit(1);
	else if (num>0) exit(2);
	return 0;
}