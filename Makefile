SHELL = /bin/sh
TARGET = tweet
CC = gcc
CFLAGS = -g -std=c99 -Wall -Wextra
LFLAGS = -lcurl -lcrypto -lm
OBJECTS = src/tweet.c src/http_methods.c src/oauth.c src/hash.c src/keys.c src/response.c
PREFIXDIR = $(DESTDIR)/usr
BINDIR = $(PREFIXDIR)/bin

$(TARGET): $(OBJECTS)
	$(CC) $(CFLAGS) $(OBJECTS) $(LFLAGS) -o $(TARGET) 

install:
	install $(TARGET) $(BINDIR)
	
clean:
	rm *.o
	rm *.gch