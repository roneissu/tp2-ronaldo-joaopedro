#include "types.h"
#include "user.h"
#include "num_pages.h"

int stdout = 1;
int stderr = 2;

int
func_aux(void){

  printf(stdout, "%d\n", num_pages());

  return pages;

}

int
main(int argc, char *argv[])
{

  func_aux();
  
  exit();
}
