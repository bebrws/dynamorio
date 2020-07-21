# 1 "../core/drlibc/drlibc_xarch.asm"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 362 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "../core/drlibc/drlibc_xarch.asm" 2





# 31 "../core/drlibc/drlibc_xarch.asm"







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






# 38 "../core/drlibc/drlibc_xarch.asm" 2
SECTION .text






EXTERN _d_r_internal_error




        global _unexpected_return
_unexpected_return:
         
 mov rdx,  0x0 
 mov rsi,  0x0 
 mov rdi,  0x0 
 call _d_r_internal_error 

        
        


        jmp  _unexpected_return
        




