# 1 "../core/arch/x86/memfuncs.asm"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 362 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "../core/arch/x86/memfuncs.asm" 2






# 32 "../core/arch/x86/memfuncs.asm"







# 57 "../core/arch/x86/memfuncs.asm"



# 1 "../core/arch/x86/../asm_defines.asm" 1






# 32 "../core/arch/x86/../asm_defines.asm"











# 1 "./configure.h" 1






# 32 "./configure.h"



























































































# 131 "./configure.h"










# 244 "./configure.h"





















# 283 "./configure.h"







# 298 "./configure.h"







  



  





















   




  







# 43 "../core/arch/x86/../asm_defines.asm" 2


# 63 "../core/arch/x86/../asm_defines.asm"




































# 242 "../core/arch/x86/../asm_defines.asm"


# 275 "../core/arch/x86/../asm_defines.asm"










# 354 "../core/arch/x86/../asm_defines.asm"











# 481 "../core/arch/x86/../asm_defines.asm"




# 566 "../core/arch/x86/../asm_defines.asm"



# 577 "../core/arch/x86/../asm_defines.asm"


# 599 "../core/arch/x86/../asm_defines.asm"


# 640 "../core/arch/x86/../asm_defines.asm"







# 707 "../core/arch/x86/../asm_defines.asm"







# 768 "../core/arch/x86/../asm_defines.asm"



# 788 "../core/arch/x86/../asm_defines.asm"



# 816 "../core/arch/x86/../asm_defines.asm"






# 60 "../core/arch/x86/memfuncs.asm" 2
# 1 "../core/arch/x86/x86_asm_defines.asm" 1






# 32 "../core/arch/x86/x86_asm_defines.asm"

















# 64 "../core/arch/x86/x86_asm_defines.asm"













# 125 "../core/arch/x86/x86_asm_defines.asm"





















# 184 "../core/arch/x86/x86_asm_defines.asm"


# 196 "../core/arch/x86/x86_asm_defines.asm"


# 219 "../core/arch/x86/x86_asm_defines.asm"



# 61 "../core/arch/x86/memfuncs.asm" 2
SECTION .text





# 78 "../core/arch/x86/memfuncs.asm"




        global _memcpy
        



        
_memcpy:
                   
        mov    rax, rdi         
        
        mov rcx,  rsi 
 and rcx, (8 - 1) 
 jz memcpy_aligned 
 neg rcx 
 add rcx, 8 
 cmp rdx, rcx 
 cmovb rcx, rdx 
 sub rdx, rcx 
_memcpy_pre: 
 rep  movsb 
memcpy_aligned: 
 
 mov rcx, rdx 
 shr rcx, 3 
_memcpy_mid: 
 rep  movsq 
 
 mov rcx, rdx 
 and rcx, (8 - 1) 
_memcpy_post: 
 rep  movsb
        
        ret                             
        



        global _memset
        
        
_memset:
                   
        push    rdi                 
        test    esi, esi                
        jnz     make_val_word_size
        xor     eax, eax
do_memset:
        
        mov rcx,  rdi 
 and rcx, (8 - 1) 
 jz memset_aligned 
 neg rcx 
 add rcx, 8 
 cmp rdx, rcx 
 cmovb rcx, rdx 
 sub rdx, rcx 
_memset_pre: 
 rep  stosb 
memset_aligned: 
 
 mov rcx, rdx 
 shr rcx, 3 
_memset_mid: 
 rep  stosq 
 
 mov rcx, rdx 
 and rcx, (8 - 1) 
_memset_post: 
 rep  stosb
        pop     rax                 
        
        ret

        
make_val_word_size:
        and     esi, 0xff

        mov     rax, 0x0101010101010101



        
        imul    rax, rsi
        jmp     do_memset
        



# 145 "../core/arch/x86/memfuncs.asm"






