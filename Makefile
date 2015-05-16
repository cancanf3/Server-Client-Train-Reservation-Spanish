CC 		= gcc
CFLAGS 	= -Wall -g 

default:				server

server:					multiconnect_server.c db_handler.o
						${CC} ${CFLAGS} -w  -o server multiconnect_server.c db_handler.o

db_handler.o: 			db_handler.c
						${CC} ${CFLAGS} -c db_handler.c 


clean:
	$(RM) server *.o *~