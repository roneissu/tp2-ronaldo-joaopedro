#include "types.h"
#include "x86.h"
#include "defs.h"
#include "date.h"
#include "param.h"
#include "memlayout.h"
#include "mmu.h"
#include "proc.h"
#include "virt2real.h"
#include "num_pages.h"
#include "forkcow.h"

int
sys_fork(void)
{
  return fork();
}

int
sys_exit(void)
{
  exit();
  return 0;  // not reached
}

int
sys_wait(void)
{
  return wait();
}

int
sys_kill(void)
{
  int pid;

  if(argint(0, &pid) < 0)
    return -1;
  return kill(pid);
}

int
sys_getpid(void)
{
  return myproc()->pid;
}

int
sys_sbrk(void)
{
  int addr;
  int n;

  if(argint(0, &n) < 0)
    return -1;
  addr = myproc()->sz;
  if(growproc(n) < 0)
    return -1;
  return addr;
}

int
sys_sleep(void)
{
  int n;
  uint ticks0;

  if(argint(0, &n) < 0)
    return -1;
  acquire(&tickslock);
  ticks0 = ticks;
  while(ticks - ticks0 < n){
    if(myproc()->killed){
      release(&tickslock);
      return -1;
    }
    sleep(&ticks, &tickslock);
  }
  release(&tickslock);
  return 0;
}

// return how many clock tick interrupts have occurred
// since start.
int
sys_uptime(void)
{
  uint xticks;

  acquire(&tickslock);
  xticks = ticks;
  release(&tickslock);
  return xticks;
}

int
sys_date(void)
{
  struct rtcdate *ptr;
  argptr(0, (void*)(&ptr), sizeof(struct rtcdate*));
  // seu código aqui
  cmostime(ptr);
  return 0;
}

int 
sys_virt2real(void)
{
  struct proc *curproc = myproc();
  argptr(0, &addreal, sizeof(char*));
  *addreal = *addvirt - (int)(curproc->pgdir);
  return (uint)addreal;
}

int
sys_num_pages(void)
{
  struct proc *curproc = myproc();
  uint size = curproc->sz;
  // xv6 page size is 4096 bytes
  pages = size/4096;
  return pages;
}

int
sys_forkcow(void)
{
  pid = forkcow();
  return pid;
}
