#include "types.h"
#include "user.h"
#include "virt2real.h"

int stdout = 1;
int stderr = 2;

char* 
func(char* va)
{

  printf(stdout, "%d\n", virt2real(va));

  return addreal;
}

int
main(int argc, char *argv[])
{
  if(argc <= 1){
    printf(stdout, "Indique o endereço virtual\n");
    exit();
  }

  func(argv[1]);
  
  exit();
}