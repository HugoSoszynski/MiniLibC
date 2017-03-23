#include <stdio.h>
#include <string.h>

int main(int ac, char **av)
{
  printf("strlen(av[0]) : %d\n", strlen(av[0]));

  printf("---------------------------------------\n");
  printf("strcmp(av[0], \"./a.our\") : %d\n", strcmp(av[0], "BITE"));
  printf("strcmp(av[0], \"./a.out\") : %d\n", strcmp(av[0], "./a.out"));

  printf("---------------------------------------\n");
  printf("strncmp(av[0], \"BITE\", 4) : %d\n", strncmp(av[0], "BITE", 4));
  printf("strncmp(av[0], \"./aBITE\", 3) : %d\n", strncmp(av[0], "./aBITE", 3));

  printf("---------------------------------------\n");
  printf("strcasecmp(av[0], \"./a.out\") : %d\n", strcasecmp(av[0], "./a.out"));
  printf("strcasecmp(av[0], \"./A.OUT\") : %d\n", strcasecmp(av[0], "./A.OUT"));
  printf("strcasecmp(\"./A.OUT\", av[0]) : %d\n", strcasecmp("./A.OUT", av[0]));
  printf("strcasecmp(av[0], \"./ç`TE\") : %d\n", strcasecmp(av[0], "./ç`TE"));
  printf("strcasecmp(av[0], \"BITE\") : %d\n", strcasecmp(av[0], "BITE"));
  printf("strcasecmp(av[0], \"bite\") : %d\n", strcasecmp(av[0], "bite"));

  printf("---------------------------------------\n");
  printf("strstr(\"./a.out\", av[0]) : %s\n", strstr("./a.out", av[0]));
  printf("strstr(\"./a.outtoto\", av[0]) : %s\n", strstr("./a.outtoto", av[0]));
  printf("strstr(\"toto./a.out\", av[0]) : %s\n", strstr("toto./a.out", av[0]));
  printf("strstr(\"toto./a.outtoto\", av[0]) : %s\n", strstr("toto./a.outtoto", av[0]));
  printf("strstr(\"totototototototo\", av[0]) : %s\n", strstr("totototototototo", av[0]));

  printf("---------------------------------------\n");
  printf("strpbrk(av[0], \"yolo\") : %s\n", strpbrk(av[0], "yolo"));
  printf("strpbrk(av[0], \"yolo.\") : %s\n", strpbrk(av[0], "yolo."));
  printf("strpbrk(av[0], \"yili\") : %s\n", strpbrk(av[0], "yili"));

  printf("---------------------------------------\n");
  printf("strchr(av[0], '/') : %s\n", strchr(av[0], '/'));
  printf("strchr(av[0], '\\0') : %s\n", strchr(av[0], '\0'));
  printf("strchr(av[0], 'y') : %s\n", strchr(av[0], 'y'));

  printf("---------------------------------------\n");
  printf("strcspn(av[0], \"toto\") : %d\n", strcspn(av[0], "toto"));
  printf("strcspn(av[0], \"o\") : %d\n", strcspn(av[0], "o"));
  printf("strcspn(av[0], \"pipi\") : %d\n", strcspn(av[0], "pipi"));
  printf("strcspn(av[0], \"\") : %d\n", strcspn(av[0], ""));

  return 0;
}
