#include <stdio.h>
#include <string.h>

int main(int ac, char **av)
{
  printf("strlen(av[0]) : %d\n", strlen(av[0]));
  printf("strcmp(av[0], \"BITE\") : %d\n", strcmp(av[0], "BITE"));
  printf("strcmp(av[0], \"./a.out\") : %d\n", strcmp(av[0], "./a.out"));
  printf("strncmp(av[0], \"BITE\", 4) : %d\n", strncmp(av[0], "BITE", 4));
  printf("strncmp(av[0], \"./aBITE\", 3) : %d\n", strncmp(av[0], "./aBITE", 3));
  return 0;
}
