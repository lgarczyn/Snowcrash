#include <stdio.h>

int main(int argc, char **argv) {
    if (argc <= 1)
        return (1);
    int i = 0;
    while (argv[1][i]) {
        argv[1][i] -= i;
        i++;
    }
    printf("%s\n", argv[1]);
    return (0);
}