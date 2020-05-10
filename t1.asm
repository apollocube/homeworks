;针对 AL 寄存器中的编码， 统计其中数据位为 0 的数据位个数，将
;统计结果保存在 BL 寄存器中。 
datA segment
anumber db 0ffh  ;此处修改anumber测试值。ff测试bl为0
datA ends

codE segment
assume cs:codE,ds:datA
herewego:
mov ax,datA
mov ds,ax

mov cx,8    ;8 loops
mov al,anumber
mov bl,0    ;initialize bl as 0
mov ah,1    ;initialize ah as 0
no1:
mov bh,ah   ;copy ah
test ah,al  ;test
jz no3      ;if 0
no2:
mov ah,bh
shl ah,1    ;ah*2
loop no1
mov ah,4ch
int 21h

no3:
inc bl      ;bl cout
jmp no2
codE ends
end herewego
