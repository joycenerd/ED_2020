#include <sys/syscall.h> 
#include <linux/unistd.h>
#define __NR_mysyscall (__NR_SYSCALL_BASE+397) 
#define mysyscall(a,b) syscall(__NR_mysyscall,(a),(b))


int main(){ 
    mysyscall(14,"system_call_lab"); 
    return 0;
}
