#include "types.h"
#include "defs.h"
#include "param.h"
#include "memlayout.h"
#include "mmu.h"
#include "proc.h"
#include "x86.h"
#include "syscall.h"

int
num_pages(void){

struct proc *curproc = myproc();
uint size = curproc->sz;
// xv6 page size is 4096 bytes
int pages = size/4096;
return pages;

}
