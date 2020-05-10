;实现（（ BX） *3+15） / 4 的功能
datA segment
anumber dw 1
datA ends

codE segment
assume cs:codE,ds:datA
herewego:
mov ax,datA
mov ds,ax

mov bx,anumber
add bx,bx
add bx,bx
add bx,0fh
shr bx,1
shr bx,1

mov ah,4ch
int 21h
codE ends
end herewego