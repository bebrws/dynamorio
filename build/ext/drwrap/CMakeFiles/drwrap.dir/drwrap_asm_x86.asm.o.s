# 1 "../ext/drwrap/drwrap_asm_x86.asm"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 362 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "../ext/drwrap/drwrap_asm_x86.asm" 2





# 31 "../ext/drwrap/drwrap_asm_x86.asm"







# 1 "cmake/cpp2asm_defines.h" 1






# 32 "cmake/cpp2asm_defines.h"













# 63 "cmake/cpp2asm_defines.h"




































# 242 "cmake/cpp2asm_defines.h"


# 275 "cmake/cpp2asm_defines.h"










# 354 "cmake/cpp2asm_defines.h"











# 481 "cmake/cpp2asm_defines.h"




# 566 "cmake/cpp2asm_defines.h"



# 577 "cmake/cpp2asm_defines.h"


# 599 "cmake/cpp2asm_defines.h"


# 640 "cmake/cpp2asm_defines.h"







# 707 "cmake/cpp2asm_defines.h"







# 768 "cmake/cpp2asm_defines.h"



# 788 "cmake/cpp2asm_defines.h"



# 816 "cmake/cpp2asm_defines.h"






# 38 "../ext/drwrap/drwrap_asm_x86.asm" 2

SECTION .text


EXTERN _replace_native_xfer_stack_adjust
EXTERN _replace_native_xfer_app_retaddr
EXTERN _replace_native_xfer_target








        global _replace_native_xfer
_replace_native_xfer:
        
# 67 "../ext/drwrap/drwrap_asm_x86.asm"

        push     0 
        push     rax
        push     rdx
         
 call _replace_native_xfer_stack_adjust 

        mov      ecx, eax
        pop      rdx
        pop      rax
        lea      rsp, [ 8 + rsp ]
        



        mov      qword [-2 * 8 + rsp], 0
        mov      qword [-1 * 8 + rsp], 0

        
        sub      rsp, rcx
        
        push     rax

        push     rax
        push     rdx

        



        push     rbx
        mov      rbx, rsp
        and      rsp, -16 

        
         
 call _replace_native_xfer_app_retaddr 

        mov      qword [3 * 8 + rbx], rax

        
         
 call _replace_native_xfer_target 

        mov      rcx, rax

        mov      rsp, rbx
        pop      rbx

        pop      rdx
        pop      rax
        



        mov      qword [-2 * 8 + rsp], 0
        mov      qword [-1 * 8 + rsp], 0
        jmp      rcx
        
        ret
        









global _replace_native_ret_imms
global _replace_native_ret_imms_end

        global _replace_native_rets
_replace_native_rets:
        ret
_replace_native_ret_imms:
        ret      1 * 8
        ret      2 * 8
        ret      3 * 8
        ret      4 * 8
        ret      5 * 8
        ret      6 * 8
        ret      7 * 8
        ret      8 * 8
        ret      9 * 8
        ret      10 * 8
        ret      11 * 8
        ret      12 * 8
        ret      13 * 8
        ret      14 * 8
        ret      15 * 8
        ret      16 * 8
        ret      17 * 8
        ret      18 * 8
        ret      19 * 8
        ret      20 * 8
        ret      21 * 8
        ret      22 * 8
        ret      23 * 8
        ret      24 * 8
        ret      25 * 8
        ret      26 * 8
        ret      27 * 8
        ret      28 * 8
        ret      29 * 8
        ret      30 * 8
        ret      31 * 8
        ret      32 * 8
        ret      33 * 8
        ret      34 * 8
        ret      35 * 8
        ret      36 * 8
        ret      37 * 8
        ret      38 * 8
        ret      39 * 8
        ret      40 * 8
_replace_native_ret_imms_end:
        nop
        







        global _replace_retaddr_sentinel
_replace_retaddr_sentinel:
        ret
        




