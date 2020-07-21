# 1 "../core/drlibc/drlibc_x86.asm"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 362 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "../core/drlibc/drlibc_x86.asm" 2






# 32 "../core/drlibc/drlibc_x86.asm"












# 1 "../core/drlibc/../arch/asm_defines.asm" 1






# 32 "../core/drlibc/../arch/asm_defines.asm"











# 1 "./configure.h" 1






# 32 "./configure.h"



























































































# 131 "./configure.h"










# 244 "./configure.h"





















# 283 "./configure.h"







# 298 "./configure.h"







  



  





















   




  







# 43 "../core/drlibc/../arch/asm_defines.asm" 2


# 63 "../core/drlibc/../arch/asm_defines.asm"




































# 242 "../core/drlibc/../arch/asm_defines.asm"


# 275 "../core/drlibc/../arch/asm_defines.asm"










# 354 "../core/drlibc/../arch/asm_defines.asm"











# 481 "../core/drlibc/../arch/asm_defines.asm"




# 566 "../core/drlibc/../arch/asm_defines.asm"



# 577 "../core/drlibc/../arch/asm_defines.asm"


# 599 "../core/drlibc/../arch/asm_defines.asm"


# 640 "../core/drlibc/../arch/asm_defines.asm"







# 707 "../core/drlibc/../arch/asm_defines.asm"







# 768 "../core/drlibc/../arch/asm_defines.asm"



# 788 "../core/drlibc/../arch/asm_defines.asm"



# 816 "../core/drlibc/../arch/asm_defines.asm"






# 44 "../core/drlibc/drlibc_x86.asm" 2
# 1 "../core/drlibc/../arch/x86/x86_asm_defines.asm" 1






# 32 "../core/drlibc/../arch/x86/x86_asm_defines.asm"

















# 64 "../core/drlibc/../arch/x86/x86_asm_defines.asm"













# 125 "../core/drlibc/../arch/x86/x86_asm_defines.asm"





















# 184 "../core/drlibc/../arch/x86/x86_asm_defines.asm"


# 196 "../core/drlibc/../arch/x86/x86_asm_defines.asm"


# 219 "../core/drlibc/../arch/x86/x86_asm_defines.asm"



# 45 "../core/drlibc/drlibc_x86.asm" 2

# 1 "../core/unix/include/syscall_mach.h" 1





# 31 "../core/unix/include/syscall_mach.h"













# 93 "../core/unix/include/syscall_mach.h"


# 47 "../core/drlibc/drlibc_x86.asm" 2

SECTION .text

EXTERN _unexpected_return










        global _dynamorio_syscall
_dynamorio_syscall:
        
        push     rbx 

        
        mov      rbx, rsi 
        mov      rax, rdi 

        
        or       rax, 0x2000000

        cmp      rbx, 0
        je       syscall_ready
        mov      rdi, rdx
        cmp      rbx, 1
        je       syscall_ready
        mov      rsi, rcx
        cmp      rbx, 2
        je       syscall_ready
        mov      rdx, r8
        cmp      rbx, 3
        je       syscall_ready
        mov      rcx, r9
        cmp      rbx, 4
        je       syscall_ready
        mov      r8, [2*8 + rsp] 
        cmp      rbx, 5
        je       syscall_ready
        mov      r9, [3*8 + rsp] 
syscall_ready:
        mov      r10, rcx
        syscall

# 184 "../core/drlibc/drlibc_x86.asm"
        pop      rbx
        
        

        
        jae      syscall_success
        neg      eax
syscall_success:

        ret
        






        global _dynamorio_mach_dep_syscall
_dynamorio_mach_dep_syscall:
        
        push     rbx

        
        mov      rbx, rsi 
        mov      rax, rdi 
        cmp      rbx, 0
        je       mach_dep_syscall_ready
        mov      rdi, rdx
        cmp      rbx, 1
        je       mach_dep_syscall_ready
        mov      rsi, rcx
        cmp      rbx, 2
        je       mach_dep_syscall_ready
        mov      rdx, r8
        cmp      rbx, 3
        je       mach_dep_syscall_ready
        mov      rcx, r9
mach_dep_syscall_ready:
        syscall

# 262 "../core/drlibc/drlibc_x86.asm"
        pop      rbx
        
        
        
        jae      mach_dep_syscall_success
        neg      eax
mach_dep_syscall_success:
        ret
        







        global _dynamorio_mach_syscall
_dynamorio_mach_syscall:
        
        push     rbx

        
        mov      rbx, rsi 
        mov      rax, rdi 
        or       eax, 0x1000000
        cmp      rbx, 0
        je       dynamorio_mach_syscall_ready
        mov      rdi, rdx
        cmp      rbx, 1
        je       dynamorio_mach_syscall_ready
        mov      rsi, rcx
        cmp      rbx, 2
        je       dynamorio_mach_syscall_ready
        mov      rdx, r8
        cmp      rbx, 3
        je       dynamorio_mach_syscall_ready
        mov      rcx, r9
dynamorio_mach_syscall_ready:
        syscall

# 351 "../core/drlibc/drlibc_x86.asm"
        pop      rbx
        



        ret
        








        global _dr_fpu_exception_init
_dr_fpu_exception_init:
        fninit
        push     0x1f80
        ldmxcsr  dword [rsp]
        pop      rax
        ret
        






        global _get_mmx_val
_get_mmx_val:
        mov      rax, rdi
        mov      rcx, rsi
        
        cmp      ecx, 0
        je       get_mmx_0
        cmp      ecx, 1
        je       get_mmx_1
        cmp      ecx, 2
        je       get_mmx_2
        cmp      ecx, 3
        je       get_mmx_3
        cmp      ecx, 4
        je       get_mmx_4
        cmp      ecx, 5
        je       get_mmx_5
        cmp      ecx, 6
        je       get_mmx_6
        movq     qword [rax], mm7
        jmp get_mmx_done
get_mmx_6:
        movq     qword [rax], mm6
        jmp get_mmx_done
get_mmx_5:
        movq     qword [rax], mm5
        jmp get_mmx_done
get_mmx_4:
        movq     qword [rax], mm4
        jmp get_mmx_done
get_mmx_3:
        movq     qword [rax], mm3
        jmp get_mmx_done
get_mmx_2:
        movq     qword [rax], mm2
        jmp get_mmx_done
get_mmx_1:
        movq     qword [rax], mm1
        jmp get_mmx_done
get_mmx_0:
        movq     qword [rax], mm0
get_mmx_done:
        add      rsp, 0 
        ret
        



# 449 "../core/drlibc/drlibc_x86.asm"




# 572 "../core/drlibc/drlibc_x86.asm"







# 723 "../core/drlibc/drlibc_x86.asm"



