#include "types.h"
#include "user.h"
#include "forkcow.h"

int stdout = 1;
int stderr = 2;

int
func_aux_2(void){

  printf(stdout, "%d\n", forkcow());

  return pid;

}

int
main(int argc, char *argv[])
{

  func_aux_2();
  
  exit();
}
