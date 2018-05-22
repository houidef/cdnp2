{***************************************
* Version Original V0.01
* Decompiled by HOUIDEF AEK v.05.02.2018
***************************************}
unit _FormMarqueCdn;

interface

uses
Forms, Windows,  SysUtils, Classes;

type
  TFormMarqueCdn = class(TForm)
    //constructor Create(s:String);//0060D834
  end;
  
var
  FormMarqueCdn:TFormMarqueCdn;
implementation

{$R *.DFM}

//0060D834
//constructor TFormMarqueCdn.Create(s:String);
//begin
{*
 0060D834    push        ebp
 0060D835    mov         ebp,esp
 0060D837    push        ebx
 0060D838    push        esi
 0060D839    push        edi
 0060D83A    test        dl,dl
>0060D83C    je          0060D846
 0060D83E    add         esp,0FFFFFFF0
 0060D841    call        @ClassCreate
 0060D846    mov         esi,ecx
 0060D848    mov         ebx,edx
 0060D84A    mov         edi,eax
 0060D84C    mov         eax,dword ptr [ebp+8]
 0060D84F    call        @LStrAddRef
 0060D854    xor         eax,eax
 0060D856    push        ebp
 0060D857    push        60D88D
 0060D85C    push        dword ptr fs:[eax]
 0060D85F    mov         dword ptr fs:[eax],esp
 0060D862    mov         ecx,esi
 0060D864    xor         edx,edx
 0060D866    mov         eax,edi
 0060D868    call        TCustomForm.Create
 0060D86D    mov         edx,dword ptr [ebp+8]
 0060D870    mov         eax,edi
 0060D872    call        TControl.SetText
 0060D877    xor         eax,eax
 0060D879    pop         edx
 0060D87A    pop         ecx
 0060D87B    pop         ecx
 0060D87C    mov         dword ptr fs:[eax],edx
 0060D87F    push        60D894
 0060D884    lea         eax,[ebp+8]
 0060D887    call        @LStrClr
 0060D88C    ret
>0060D88D    jmp         @HandleFinally
>0060D892    jmp         0060D884
 0060D894    mov         eax,edi
 0060D896    test        bl,bl
>0060D898    je          0060D8A9
 0060D89A    call        @AfterConstruction
 0060D89F    pop         dword ptr fs:[0]
 0060D8A6    add         esp,0C
 0060D8A9    mov         eax,edi
 0060D8AB    pop         edi
 0060D8AC    pop         esi
 0060D8AD    pop         ebx
 0060D8AE    pop         ebp
 0060D8AF    ret         4
*}
//end;

end.