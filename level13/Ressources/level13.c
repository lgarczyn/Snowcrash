// --------------------- Global Variables ---------------------

bool g1 = false; // df

// ------------------------ Functions -------------------------

// Address range: 0x8048474 - 0x804858c
int32_t ft_des(char * str) {
    int32_t result = (int32_t)strdup(str); // 0x8048481
    int32_t v1 = 0;
    char * v2 = NULL;
    // branch -> 0x804855b
    while (true) {
        int32_t v3 = result; // 0x8048571
        int32_t v4 = -1; // 0x8048571
        // branch -> bb
        while (true) {
            // bb
            if (v4 != 0) {
                int32_t v5 = (g1 ? -1 : 1) + v3; // 0x8048571
                int32_t v6 = v4 - 1; // 0x8048571
                if (*(char *)v3 == 0) {
                    // break -> bb36
                    break;
                }
                v3 = v5;
                v4 = v6;
                // continue -> bb
                continue;
            }
            uint32_t v7 = (int32_t)v2; // 0x804857a
            if (-2 <= v7) {
                // 0x8048583
                return result;
            }
            int32_t v8 = v1 != 6 ? v1 : 0;
            char * v9 = (char *)(v8 + (int32_t)"0123456"); // 0x8048548
            if (v7 % 2 == 0) {
                char * v10 = (char *)(v7 + result); // 0x804851a
                if (*v9 != 0) {
                    char v11 = *v10 - 1; // 0x804851d
                    char v12 = v11 != 31 ? v11 : 126;
                    *v10 = v12;
                    int32_t v13 = 1; // 0x804853c
                    // branch -> 0x8048512
                    while ((int32_t)*v9 > v13) {
                        // 0x8048512
                        v11 = v12 - 1;
                        v12 = v11 != 31 ? v11 : 126;
                        *v10 = v12;
                        v13++;
                        // continue -> 0x8048512
                    }
                    // 0x8048553
                    v1 = v8 + 1;
                    v2 = (char *)(v7 + 1);
                    // branch -> 0x804855b
                    break;
                }
              lab_0x8048553:
                // 0x8048553
                v1 = v8 + 1;
                v2 = (char *)(v7 + 1);
                // branch -> 0x804855b
                break;
            } else {
                // 0x80484ea
                if (*v9 == 0) {
                    goto lab_0x8048553;
                }
                char * v14 = (char *)(v7 + result); // 0x80484c4
                char v15 = *v14 + 1; // 0x80484c7
                char v16 = v15 != 127 ? v15 : 32;
                *v14 = v16;
                int32_t v17 = 1; // 0x80484e6
                // branch -> 0x80484bc
                while ((int32_t)*v9 > v17) {
                    // 0x80484bc
                    v15 = v16 + 1;
                    v16 = v15 != 127 ? v15 : 32;
                    *v14 = v16;
                    v17++;
                    // continue -> 0x80484bc
                }
                // 0x8048553
                v1 = v8 + 1;
                v2 = (char *)(v7 + 1);
                // branch -> 0x804855b
                break;
            }
        }
    }
}

// Address range: 0x804858c - 0x80485ea
int main(int argc, char ** argv) {
    // 0x804858c
    if (getuid() == 0x1092) {
        // 0x80485cb
        return printf("your token is %s\n", (char *)ft_des("boe]!ai0FB@.:|L6l@A?>qJ}I"));
    }
    // 0x80485a1
    printf("UID %d started us but we we expect %d\n", getuid(), 0x1092);
    exit(1);
    // UNREACHABLE
}

// --------------- Dynamically Linked Functions ---------------

// void exit(int status);
// __uid_t getuid(void);
// int printf(const char * restrict format, ...);
// char * strdup(const char * s);

// --------------------- Meta-Information ---------------------

// Detected compiler/packer: gcc (4.5.x)
// Detected functions: 2
// Decompilation date: 2019-04-03 18:59:16