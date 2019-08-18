#include<stdio.h>

int main(int argc, char const *argv[])
{
    // printf("123");
    char *string = "abcd";
    printf("%c",*(++string));
    return 0;
}
