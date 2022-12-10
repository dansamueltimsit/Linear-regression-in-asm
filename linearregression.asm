;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;We here implement a linear regression function
;using asm x86
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;We start with some useful procedures
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;First a linear function taking as parameters a, b and x and returning ax+b

procedure_linear:
  mov dword ptr [rsp+18h], r8d
  mov dword ptr [rsp+10h], edx
  mov dword ptr [rsp+8], ecx
  push rbp
  push rdi
  mov eax, dword ptr [a]
  imul eax, dword ptr [x]
  add eax, dword ptr [b]
  ret
  
  
