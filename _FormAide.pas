//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _FormAide;

interface

uses
Forms, Windows,  SysUtils, Classes, Buttons, ExtCtrls, StdCtrls;

type
  TFormAide = class(TForm)
  published
    SpeedButtonFermer:TSpeedButton;//f2D0
    Bevel1:TBevel;//f2D4
    LabelAide:TLabel;//f2D8
    procedure SpeedButtonFermerClick(Sender:TObject);//00536EE4
    //constructor Create(?:?; ?:?; ?:?);//00536DD4
  end;

implementation

{$R *.DFM}

//00536DD4
{*constructor TFormAide.Create(?:?; ?:?; ?:?);
begin
 00536DD4    push        ebp
 00536DD5    mov         ebp,esp
 00536DD7    add         esp,0FFFFFFF8
 00536DDA    push        ebx
 00536DDB    push        esi
 00536DDC    push        edi
 00536DDD    xor         ebx,ebx
 00536DDF    mov         dword ptr [ebp-8],ebx
 00536DE2    test        dl,dl
>00536DE4    je          00536DEE
 00536DE6    add         esp,0FFFFFFF0
 00536DE9    call        @ClassCreate
 00536DEE    mov         edi,ecx
 00536DF0    mov         byte ptr [ebp-1],dl
 00536DF3    mov         ebx,eax
 00536DF5    mov         esi,dword ptr [ebp+8]
 00536DF8    mov         eax,dword ptr [ebp+10]
 00536DFB    call        @LStrAddRef
 00536E00    mov         eax,dword ptr [ebp+0C]
 00536E03    call        @LStrAddRef
 00536E08    xor         eax,eax
 00536E0A    push        ebp
 00536E0B    push        536EAF
 00536E10    push        dword ptr fs:[eax]
 00536E13    mov         dword ptr fs:[eax],esp
 00536E16    mov         ecx,edi
 00536E18    xor         edx,edx
 00536E1A    mov         eax,ebx
 00536E1C    call        TCustomForm.Create
 00536E21    lea         eax,[ebp-8]
 00536E24    mov         ecx,dword ptr [ebp+10]
 00536E27    mov         edx,536EE0;' '
 00536E2C    call        @LStrCat3
 00536E31    mov         edx,dword ptr [ebp-8]
 00536E34    mov         eax,ebx
 00536E36    call        TControl.SetText
 00536E3B    mov         edx,dword ptr [ebp+0C]
 00536E3E    mov         eax,dword ptr [ebx+2D8]
 00536E44    call        TControl.SetText
 00536E49    mov         edx,esi
 00536E4B    mov         eax,dword ptr [ebx+2D8]
 00536E51    call        TControl.SetHeight
 00536E56    mov         edx,esi
 00536E58    add         edx,53
>00536E5B    jno         00536E62
 00536E5D    call        @IntOver
 00536E62    mov         eax,ebx
 00536E64    call        TControl.SetHeight
 00536E69    mov         eax,dword ptr [ebx+2D0]
 00536E6F    mov         edx,dword ptr [eax+3C]
 00536E72    add         edx,esi
>00536E74    jno         00536E7B
 00536E76    call        @IntOver
 00536E7B    call        TControl.SetTop
 00536E80    mov         edx,0E2FFFF
 00536E85    mov         eax,ebx
 00536E87    call        TControl.SetColor
 00536E8C    xor         eax,eax
 00536E8E    pop         edx
 00536E8F    pop         ecx
 00536E90    pop         ecx
 00536E91    mov         dword ptr fs:[eax],edx
 00536E94    push        536EB6
 00536E99    lea         eax,[ebp-8]
 00536E9C    call        @LStrClr
 00536EA1    lea         eax,[ebp+0C]
 00536EA4    mov         edx,2
 00536EA9    call        @LStrArrayClr
 00536EAE    ret
>00536EAF    jmp         @HandleFinally
>00536EB4    jmp         00536E99
 00536EB6    mov         eax,ebx
 00536EB8    cmp         byte ptr [ebp-1],0
>00536EBC    je          00536ECD
 00536EBE    call        @AfterConstruction
 00536EC3    pop         dword ptr fs:[0]
 00536ECA    add         esp,0C
 00536ECD    mov         eax,ebx
 00536ECF    pop         edi
 00536ED0    pop         esi
 00536ED1    pop         ebx
 00536ED2    pop         ecx
 00536ED3    pop         ecx
 00536ED4    pop         ebp
 00536ED5    ret         0C
end;*}

//00536EE4
procedure TFormAide.SpeedButtonFermerClick(Sender:TObject);
begin
{*
 00536EE4    call        TCustomForm.Close
 00536EE9    ret
*}
end;

end.