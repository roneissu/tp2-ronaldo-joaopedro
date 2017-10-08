#include "types.h"
#include "user.h"
#include "virt2real.h"

int stdout = 1;
int stderr = 2;

int
main(int argc, char *argv[])
{
  struct ends v2r;

  if (virt2real(&v2r)) {
    printf(stderr, "Erro na chamada de sistema\n");
    exit();
  }

  printf(stdout, "%s\n", v2r.endreal);

  exit();
}