#include <stdio.h>
#include <string.h>

#define MAX_DATA 100

int main(int argc, char *argv[])
{
    char term[2] = "X";

    char trees[10][10];
    int count = 0;
    char tree[10] = "";

    while (strcmp(tree, term) == -1)
    {
        int found = strcmp(tree, term);
        printf("Found: %d\n", found);
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