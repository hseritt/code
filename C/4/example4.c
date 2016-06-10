#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_DATA 100

void show_usage(char option[])
{
    printf("Unknown option '%s'. Acceptable: list or line.\n", option);
    exit(0);
}

int main(int argc, char *argv[])
{
    /* How to use show_usage().
    char option[5] = "line";
    printf("option is set to: %s\n", option);
    show_usage(option);
    */

    const char LINE[5] = "line";
    const char LIST[5] = "list";

    char option[5] = "list";

    if (argv[1])
    {
        strncpy(option, argv[1], 5);
    }

    int is_valid = 0;

    if (strcmp(option, LINE) == 0)
    {
        is_valid = 1;
    }
    else if (strcmp(option, LIST) == 0)
    {
        is_valid = 1;
    }

    if (!is_valid)
    {
        show_usage(option);
    }

    char term[2] = "X";

    printf("Enter a list of types of trees. One tree per prompt. Enter %s to quit.\n", term);
    printf("=========================================================================\n");


    char trees[10][10];
    int count = 0;
    char tree[10] = "";

    while (strcmp(tree, term) == -1)
    {
        int found = strcmp(trees[count], term);
        printf("%d\n", found);
        printf("%s\n", term);
        printf("%d\n", count);

        printf("Enter: ");
        fgets(tree, MAX_DATA - 1, stdin);
        strncpy(trees[count], tree, 10);
        count++;
    }

    printf("%d trees were collected.\n", count);
    int i;

    for (i=0; i <10; i++)
    {
        printf("tree: %s\n", trees[i]);
    }


    return 0;
}