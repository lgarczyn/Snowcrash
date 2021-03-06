//
// This file was generated by the Retargetable Decompiler
// Website: https://retdec.com
// Copyright (c) 2019 Retargetable Decompiler <info@retdec.com>
//

#include <arpa/inet.h>
#include <errno.h>
#include <fcntl.h>
#include <netinet/in.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/socket.h>
#include <unistd.h>

// ------------------------ Structures ------------------------

struct _IO_FILE {
    int32_t e0;
};

struct sockaddr {
    int32_t e0;
    char e1[14];
};

// --------------------- Global Variables ---------------------

int32_t g1 = 0;

// ------------------------ Functions -------------------------

int main(int argc, char ** argv) {
    char buffer[4096]; // bp-4132
    int32_t v1 = (int32_t)argv;
    int32_t v2 = *(int32_t *)20;
    if (argc <= 2) {
        int32_t v3 = *(int32_t *)argv;
        printf("%s file host\n\tsends file to host if you have access to it\n", (char *)v3);
        exit(1);
    }
    char * path = (char *)*(int32_t *)(v1 + 4);
    char * cp = (char *)*(int32_t *)(v1 + 8);
    int32_t chars_printed;
    int32_t result;
    int32_t * v4;
    if (access(path, R_OK) != 0) {
        chars_printed = printf("You don't have access to %s\n", path);
        if (v2 != *(int32_t *)20) {
            __stack_chk_fail();
            result = (int32_t)&v4;
        } else {
            result = chars_printed;
        }
        return result;
    }
    printf("Connecting to %s:6969 .. ", cp);
    fflush((struct _IO_FILE *)g1);
    int32_t sock_fd = socket(AF_INET, SOCK_STREAM, IPPROTO_IP);
    int32_t sin = 2; // bp-36
    inet_addr(cp);
    htons(0x1b39);
    if (connect(sock_fd, (struct sockaddr *)&sin, 16) == -1) {
        printf("Unable to connect to host %s\n", cp);
        exit(1);
    }
    if (write(sock_fd, (int32_t *)".*( )*.\n", 8) == -1) {
        printf("Unable to write banner to host %s\n", cp);
        exit(1);
    }
    printf("Connected!\nSending file .. ");
    fflush((struct _IO_FILE *)g1);
    int32_t fd = open(path, O_RDONLY);
    if (fd == -1) {
        puts("Damn. Unable to open file");
        exit(1);
    }
    int32_t nbyte = read(fd, (int32_t *)&buffer, 0x1000);
    if (nbyte == -1) {
        int32_t err_num = *__errno_location();
        printf("Unable to read from file: %s\n", strerror(err_num));
        exit(1);
    }
    write(sock_fd, (int32_t *)&buffer, nbyte);
    chars_printed = puts("wrote file!");
    if (v2 != *(int32_t *)20) {
        __stack_chk_fail();
        result = (int32_t)&v4;
    } else {
        result = chars_printed;
    }
    return result;
}