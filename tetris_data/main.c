#include "main.h"

int main(int argc, char *argv[])
{
    (void)argc;
    (void)argv;
    int i;
    int j;
    char grid[WIDTH][LENGTH];

    i = 0;
    while(i < WIDTH)
    {
        j = 0;
        while(j < LENGTH)
        {
            grid[i][j] = '#';
            j++;
        }
        i++;
    }

    i = 0;
    while(i < WIDTH)
    {
        j = 0;
        while(j < LENGTH)
        {
            printf("%c", grid[i][j]);
            j++;
        }
        i++;
        printf("\n");
    }
    return (0);
}