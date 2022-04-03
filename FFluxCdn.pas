{************************************************************ Version Original V0.03 build 1                           ** Decompiled by HOUIDEF AEK v 12:20 mercredi, août 29, 2018** The disassembly process : 80%                            *************************************************************}
unit FFluxCdn;

interface

uses
  SysUtils, Classes,dialogs;

type
  TFluxCdn = class(TFileStream)
    function ReadFromFile():string;//(?:TFluxCdn; ?:PShortString);
    procedure WriteInFile(buffer : String;c:boolean);//(?:TFluxCdn; ?:ShortString);
  end;

implementation

//004B696C
function TFluxCdn.ReadFromFile():string;//(?:TFluxCdn; ?:PShortString);
var
  count : byte;
begin
  Read(count,1);
 SetLength(result,count);
 Read(result[1],count);
 {if(count > 0 ) then
 begin

 end;  }
{*
 004B696C    push        ebp
 004B696D    mov         ebp,esp
 004B696F    add         esp,0FFFFFDF0
 004B6975    push        ebx
 004B6976    push        esi
 004B6977    push        edi
 004B6978    xor         ecx,ecx
 004B697A    mov         dword ptr [ebp-208],ecx
 004B6980    mov         dword ptr [ebp-20C],ecx
 004B6986    mov         esi,edx
 004B6988    mov         ebx,eax
 004B698A    xor         eax,eax
 004B698C    push        ebp
 004B698D    push        4B6A6F
 004B6992    push        dword ptr fs:[eax]
 004B6995    mov         dword ptr fs:[eax],esp
 004B6998    lea         edx,[ebp-2]
 004B699B    mov         ecx,1
 004B69A0    mov         eax,ebx
 004B69A2    mov         edi,dword ptr [eax]
 004B69A4    call        dword ptr [edi+4]
 004B69A7    xor         ecx,ecx
 004B69A9    mov         cl,byte ptr [ebp-2]
 004B69AC    lea         edx,[ebp-201]
 004B69B2    mov         eax,ebx
 004B69B4    mov         ebx,dword ptr [eax]
 004B69B6    call        dword ptr [ebx+4]
 004B69B9    mov         byte ptr [ebp-102],0
 004B69C0    mov         bl,byte ptr [ebp-2]
 004B69C3    test        bl,bl
>004B69C5    jbe         004B6A44
 004B69C7    mov         byte ptr [ebp-1],1
 004B69CB    lea         eax,[ebp-208]
 004B69D1    lea         edx,[ebp-102]
 004B69D7    call        @LStrFromString
 004B69DC    lea         eax,[ebp-208]
 004B69E2    push        eax
 004B69E3    lea         eax,[ebp-210]
 004B69E9    xor         edx,edx
 004B69EB    mov         dl,byte ptr [ebp-1]
 004B69EE    dec         edx
 004B69EF    cmp         edx,0FE
>004B69F5    jbe         004B69FC
 004B69F7    call        @BoundErr
 004B69FC    inc         edx
 004B69FD    mov         dl,byte ptr [ebp+edx-202]
 004B6A04    mov         byte ptr [eax+1],dl
 004B6A07    mov         byte ptr [eax],1
 004B6A0A    lea         edx,[ebp-210]
 004B6A10    lea         eax,[ebp-20C]
 004B6A16    call        @LStrFromString
 004B6A1B    mov         edx,dword ptr [ebp-20C]
 004B6A21    pop         eax
 004B6A22    call        @LStrCat
 004B6A27    mov         edx,dword ptr [ebp-208]
 004B6A2D    lea         eax,[ebp-102]
 004B6A33    mov         ecx,0FF
 004B6A38    call        @LStrToString
 004B6A3D    inc         byte ptr [ebp-1]
 004B6A40    dec         bl
>004B6A42    jne         004B69CB
 004B6A44    mov         eax,esi
 004B6A46    lea         edx,[ebp-102]
 004B6A4C    call        @PStrCpy
 004B6A51    xor         eax,eax
 004B6A53    pop         edx
 004B6A54    pop         ecx
 004B6A55    pop         ecx
 004B6A56    mov         dword ptr fs:[eax],edx
 004B6A59    push        4B6A76
 004B6A5E    lea         eax,[ebp-20C]
 004B6A64    mov         edx,2
 004B6A69    call        @LStrArrayClr
 004B6A6E    ret
>004B6A6F    jmp         @HandleFinally
>004B6A74    jmp         004B6A5E
 004B6A76    pop         edi
 004B6A77    pop         esi
 004B6A78    pop         ebx
 004B6A79    mov         esp,ebp
 004B6A7B    pop         ebp
 004B6A7C    ret
*}
end;

//004B6A80
procedure TFluxCdn.WriteInFile(buffer : String;c:boolean);
var
  count:Byte;
begin//004B6A80
  count:=Length(buffer);  if(C)then 
	WriteBuffer(count,1);
  WriteBuffer(buffer[1],count);

end;

end.