#include "types.h"
#include "user.h"
#include "virt2real.h"

int stdout = 1;
int stderr = 2;

int
main(int argc, char *argv[])
{
  struct virtend ve;

  if (virt2real(&ve)) {
    printf(stderr, "Erro na chamada de sistema\n");
    exit();
  }

  printf(stdout, "%d\n", ve.what);

  exit();
}