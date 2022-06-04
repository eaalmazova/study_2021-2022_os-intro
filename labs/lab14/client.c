/*
 * client.c - реализация клиента
 *
 * чтобы запустить пример, необходимо:
 * 1. запустить программу server на одной консоли;
 * 2. запустить программу client на другой коноли.
 */
 
#include "common.h"

#define MESSAGE "Hello Server!!!\n"

int main(){
	int writefd; /* дескриптор для записи в FIFO */
	int msglen;
	
	/* баннер */
	printf("FIFO Client...\n");

	/* цикл передачи сообщений */
	
	for (int i=0; i<3; i++) {
		  /* получим доступ к FIFO */
		  if((writefd = open(FIFO_NAME, O_WRONLY)) <0){
		    fprintf(stderr, "%s: Невозможно открыть FIFO (%s)\n", __FILE__, strerror(errno));
		    exit(-1);
		  }

		  /* получим текущее время */
		  long int timer=time(0);
		  char* timeprint=ctime(&timer);
		
		  /* передадим сообщение серверу */
		  msglen = strlen(timeprint);
		  if(write(writefd, timeprint, msglen) != msglen) {
		    fprintf(stderr, "%s: Ошибка записи в FIFO (%s)\n");
		    exit(-2);
		  }

		  /* приостановка работы */

		  sleep(5);
	}
	
	/* закроем  доступ к FIFO */
	close(writefd); 
	
	exit(0);
}

