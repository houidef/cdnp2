//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _FormConfirmerImpression;

interface

uses
Forms, Windows,  SysUtils, Classes, StdCtrls, ComCtrls, Buttons, ExtCtrls;

type
  TFormConfirmerImpression = class(TForm)
  published
    GroupBox1:TGroupBox;//f2D0
    RadioButton1:TRadioButton;//f2D4
    RadioButton2:TRadioButton;//f2D8
    Edit1:TEdit;//f2DC
    UpDown1:TUpDown;//f2E0
    Label1:TLabel;//f2E4
    Edit2:TEdit;//f2E8
    UpDown2:TUpDown;//f2EC
    Label2:TLabel;//f2F0
    Edit3:TEdit;//f2F4
    UpDown3:TUpDown;//f2F8
    SpeedButton5:TSpeedButton;//f2FC
    RadioGroupParite:TRadioGroup;//f300
    CheckBoxOrdreInverse:TCheckBox;//f304
    SpeedButton1:TSpeedButton;//f308
    procedure UpDown3Click(Sender:TObject; Button: TUDBtnType);//005211BC
    procedure UpDown2Click(Sender:TObject; Button: TUDBtnType);//005210A4
    procedure SpeedButton5Click(Sender:TObject);//0052128C
    procedure SpeedButton1Click(Sender:TObject);//005212B8
    procedure FormKeyPress(Sender:TObject; var Key:Char);//00521298
    procedure FormHide(Sender:TObject);//00520E3C
    procedure FormShow(Sender:TObject);//00520CDC
    procedure RadioButton1Click(Sender:TObject);//00520F0C
    procedure UpDown1Click(Sender:TObject; Button: TUDBtnType);//00520F8C
    procedure RadioButton2Click(Sender:TObject);//00520F50
  public
    f30C:dword;//f30C
    f310:dword;//f310
    f314:Integer;//f314
    f318:Integer;//f318
    f31C:Integer;//f31C
  end;
  var
    FormConfirmerImpression:TFormConfirmerImpression;
implementation

{$R *.DFM}

//00520CDC
procedure TFormConfirmerImpression.FormShow(Sender:TObject);
begin
{*
 00520CDC    push        ebp
 00520CDD    mov         ebp,esp
 00520CDF    push        0
 00520CE1    push        ebx
 00520CE2    mov         ebx,eax
 00520CE4    xor         eax,eax
 00520CE6    push        ebp
 00520CE7    push        520E25
 00520CEC    push        dword ptr fs:[eax]
 00520CEF    mov         dword ptr fs:[eax],esp
 00520CF2    mov         edx,dword ptr [ebx+30C];TFormConfirmerImpression.?f30C:dword
 00520CF8    add         edx,8000
 00520CFE    cmp         edx,0FFFF
>00520D04    jbe         00520D0B
 00520D06    call        @BoundErr
 00520D0B    add         edx,0FFFF8000
 00520D11    mov         eax,dword ptr [ebx+2E0];TFormConfirmerImpression.UpDown1:TUpDown
 00520D17    call        TCustomUpDown.SetMin
 00520D1C    mov         edx,dword ptr [ebx+310];TFormConfirmerImpression.?f310:dword
 00520D22    add         edx,8000
 00520D28    cmp         edx,0FFFF
>00520D2E    jbe         00520D35
 00520D30    call        @BoundErr
 00520D35    add         edx,0FFFF8000
 00520D3B    mov         eax,dword ptr [ebx+2E0];TFormConfirmerImpression.UpDown1:TUpDown
 00520D41    call        TCustomUpDown.SetMax
 00520D46    mov         dx,1
 00520D4A    mov         eax,dword ptr [ebx+2E0];TFormConfirmerImpression.UpDown1:TUpDown
 00520D50    call        TCustomUpDown.SetPosition
 00520D55    mov         edx,520E38;'1'
 00520D5A    mov         eax,dword ptr [ebx+2DC];TFormConfirmerImpression.Edit1:TEdit
 00520D60    call        TControl.SetText
 00520D65    mov         edx,dword ptr [ebx+30C];TFormConfirmerImpression.?f30C:dword
 00520D6B    add         edx,8000
 00520D71    cmp         edx,0FFFF
>00520D77    jbe         00520D7E
 00520D79    call        @BoundErr
 00520D7E    add         edx,0FFFF8000
 00520D84    mov         eax,dword ptr [ebx+2EC];TFormConfirmerImpression.UpDown2:TUpDown
 00520D8A    call        TCustomUpDown.SetMin
 00520D8F    mov         edx,dword ptr [ebx+310];TFormConfirmerImpression.?f310:dword
 00520D95    add         edx,8000
 00520D9B    cmp         edx,0FFFF
>00520DA1    jbe         00520DA8
 00520DA3    call        @BoundErr
 00520DA8    add         edx,0FFFF8000
 00520DAE    mov         eax,dword ptr [ebx+2EC];TFormConfirmerImpression.UpDown2:TUpDown
 00520DB4    call        TCustomUpDown.SetMax
 00520DB9    mov         edx,dword ptr [ebx+310];TFormConfirmerImpression.?f310:dword
 00520DBF    add         edx,8000
 00520DC5    cmp         edx,0FFFF
>00520DCB    jbe         00520DD2
 00520DCD    call        @BoundErr
 00520DD2    add         edx,0FFFF8000
 00520DD8    mov         eax,dword ptr [ebx+2EC];TFormConfirmerImpression.UpDown2:TUpDown
 00520DDE    call        TCustomUpDown.SetPosition
 00520DE3    lea         edx,[ebp-4]
 00520DE6    mov         eax,dword ptr [ebx+310];TFormConfirmerImpression.?f310:dword
 00520DEC    call        IntToStr
 00520DF1    mov         edx,dword ptr [ebp-4]
 00520DF4    mov         eax,dword ptr [ebx+2E8];TFormConfirmerImpression.Edit2:TEdit
 00520DFA    call        TControl.SetText
 00520DFF    mov         edx,520E38;'1'
 00520E04    mov         eax,dword ptr [ebx+2F4];TFormConfirmerImpression.Edit3:TEdit
 00520E0A    call        TControl.SetText
 00520E0F    xor         eax,eax
 00520E11    pop         edx
 00520E12    pop         ecx
 00520E13    pop         ecx
 00520E14    mov         dword ptr fs:[eax],edx
 00520E17    push        520E2C
 00520E1C    lea         eax,[ebp-4]
 00520E1F    call        @LStrClr
 00520E24    ret
>00520E25    jmp         @HandleFinally
>00520E2A    jmp         00520E1C
 00520E2C    pop         ebx
 00520E2D    pop         ecx
 00520E2E    pop         ebp
 00520E2F    ret
*}
end;

//00520E3C
procedure TFormConfirmerImpression.FormHide(Sender:TObject);
begin
{*
 00520E3C    push        ebp
 00520E3D    mov         ebp,esp
 00520E3F    push        0
 00520E41    push        0
 00520E43    push        0
 00520E45    push        ebx
 00520E46    mov         ebx,eax
 00520E48    xor         eax,eax
 00520E4A    push        ebp
 00520E4B    push        520EFF
 00520E50    push        dword ptr fs:[eax]
 00520E53    mov         dword ptr fs:[eax],esp
 00520E56    mov         eax,dword ptr [ebx+2D4];TFormConfirmerImpression.RadioButton1:TRadioButton
 00520E5C    mov         edx,dword ptr [eax]
 00520E5E    call        dword ptr [edx+0B4];TRadioButton.GetChecked
 00520E64    test        al,al
>00520E66    je          00520E7E
 00520E68    mov         dword ptr [ebx+314],1;TFormConfirmerImpression.?f314:Integer
 00520E72    mov         eax,dword ptr [ebx+310];TFormConfirmerImpression.?f310:dword
 00520E78    mov         dword ptr [ebx+318],eax;TFormConfirmerImpression.?f318:Integer
 00520E7E    mov         eax,dword ptr [ebx+2D8];TFormConfirmerImpression.RadioButton2:TRadioButton
 00520E84    mov         edx,dword ptr [eax]
 00520E86    call        dword ptr [edx+0B4];TRadioButton.GetChecked
 00520E8C    test        al,al
>00520E8E    je          00520EC8
 00520E90    lea         edx,[ebp-4]
 00520E93    mov         eax,dword ptr [ebx+2DC];TFormConfirmerImpression.Edit1:TEdit
 00520E99    call        TControl.GetText
 00520E9E    mov         eax,dword ptr [ebp-4]
 00520EA1    call        StrToInt
 00520EA6    mov         dword ptr [ebx+314],eax;TFormConfirmerImpression.?f314:Integer
 00520EAC    lea         edx,[ebp-8]
 00520EAF    mov         eax,dword ptr [ebx+2E8];TFormConfirmerImpression.Edit2:TEdit
 00520EB5    call        TControl.GetText
 00520EBA    mov         eax,dword ptr [ebp-8]
 00520EBD    call        StrToInt
 00520EC2    mov         dword ptr [ebx+318],eax;TFormConfirmerImpression.?f318:Integer
 00520EC8    lea         edx,[ebp-0C]
 00520ECB    mov         eax,dword ptr [ebx+2F4];TFormConfirmerImpression.Edit3:TEdit
 00520ED1    call        TControl.GetText
 00520ED6    mov         eax,dword ptr [ebp-0C]
 00520ED9    call        StrToInt
 00520EDE    mov         dword ptr [ebx+31C],eax;TFormConfirmerImpression.?f31C:Integer
 00520EE4    xor         eax,eax
 00520EE6    pop         edx
 00520EE7    pop         ecx
 00520EE8    pop         ecx
 00520EE9    mov         dword ptr fs:[eax],edx
 00520EEC    push        520F06
 00520EF1    lea         eax,[ebp-0C]
 00520EF4    mov         edx,3
 00520EF9    call        @LStrArrayClr
 00520EFE    ret
>00520EFF    jmp         @HandleFinally
>00520F04    jmp         00520EF1
 00520F06    pop         ebx
 00520F07    mov         esp,ebp
 00520F09    pop         ebp
 00520F0A    ret
*}
end;

//00520F0C
procedure TFormConfirmerImpression.RadioButton1Click(Sender:TObject);
begin
{*
 00520F0C    push        ebx
 00520F0D    mov         ebx,eax
 00520F0F    mov         eax,dword ptr [ebx+2D4];TFormConfirmerImpression.RadioButton1:TRadioButton
 00520F15    mov         edx,dword ptr [eax]
 00520F17    call        dword ptr [edx+0B4];TRadioButton.GetChecked
 00520F1D    mov         edx,eax
 00520F1F    xor         dl,1
 00520F22    mov         eax,dword ptr [ebx+2E0];TFormConfirmerImpression.UpDown1:TUpDown
 00520F28    mov         ecx,dword ptr [eax]
 00520F2A    call        dword ptr [ecx+5C];TControl.SetEnabled
 00520F2D    mov         eax,dword ptr [ebx+2D4];TFormConfirmerImpression.RadioButton1:TRadioButton
 00520F33    mov         edx,dword ptr [eax]
 00520F35    call        dword ptr [edx+0B4];TRadioButton.GetChecked
 00520F3B    mov         edx,eax
 00520F3D    xor         dl,1
 00520F40    mov         eax,dword ptr [ebx+2EC];TFormConfirmerImpression.UpDown2:TUpDown
 00520F46    mov         ecx,dword ptr [eax]
 00520F48    call        dword ptr [ecx+5C];TControl.SetEnabled
 00520F4B    pop         ebx
 00520F4C    ret
*}
end;

//00520F50
procedure TFormConfirmerImpression.RadioButton2Click(Sender:TObject);
begin
{*
 00520F50    push        ebx
 00520F51    mov         ebx,eax
 00520F53    mov         eax,dword ptr [ebx+2D8];TFormConfirmerImpression.RadioButton2:TRadioButton
 00520F59    mov         edx,dword ptr [eax]
 00520F5B    call        dword ptr [edx+0B4];TRadioButton.GetChecked
 00520F61    mov         edx,eax
 00520F63    mov         eax,dword ptr [ebx+2E0];TFormConfirmerImpression.UpDown1:TUpDown
 00520F69    mov         ecx,dword ptr [eax]
 00520F6B    call        dword ptr [ecx+5C];TControl.SetEnabled
 00520F6E    mov         eax,dword ptr [ebx+2D8];TFormConfirmerImpression.RadioButton2:TRadioButton
 00520F74    mov         edx,dword ptr [eax]
 00520F76    call        dword ptr [edx+0B4];TRadioButton.GetChecked
 00520F7C    mov         edx,eax
 00520F7E    mov         eax,dword ptr [ebx+2EC];TFormConfirmerImpression.UpDown2:TUpDown
 00520F84    mov         ecx,dword ptr [eax]
 00520F86    call        dword ptr [ecx+5C];TControl.SetEnabled
 00520F89    pop         ebx
 00520F8A    ret
*}
end;

//00520F8C
procedure TFormConfirmerImpression.UpDown1Click(Sender:TObject; Button: TUDBtnType);
begin
{ 00520F8C    push        ebp
 00520F8D    mov         ebp,esp
 00520F8F    push        0
 00520F91    push        0
 00520F93    push        0
 00520F95    push        0
 00520F97    push        0
 00520F99    push        0
 00520F9B    push        ebx
 00520F9C    push        esi
 00520F9D    push        edi
 00520F9E    mov         ebx,ecx
 00520FA0    mov         esi,eax
 00520FA2    xor         eax,eax
 00520FA4    push        ebp
 00520FA5    push        521093
 00520FAA    push        dword ptr fs:[eax]
 00520FAD    mov         dword ptr fs:[eax],esp
 00520FB0    test        bl,bl
>00520FB2    jne         00521006
 00520FB4    lea         edx,[ebp-4]
 00520FB7    mov         eax,dword ptr [esi+2DC];TFormConfirmerImpression.Edit1:TEdit
 00520FBD    call        TControl.GetText
 00520FC2    mov         eax,dword ptr [ebp-4]
 00520FC5    call        StrToInt
 00520FCA    cmp         eax,dword ptr [esi+310];TFormConfirmerImpression.?f310:dword
>00520FD0    jge         00521006
 00520FD2    lea         edx,[ebp-0C]
 00520FD5    mov         edi,dword ptr [esi+2DC];TFormConfirmerImpression.Edit1:TEdit
 00520FDB    mov         eax,edi
 00520FDD    call        TControl.GetText
 00520FE2    mov         eax,dword ptr [ebp-0C]
 00520FE5    call        StrToInt
 00520FEA    add         eax,1
>00520FED    jno         00520FF4
 00520FEF    call        @IntOver
 00520FF4    lea         edx,[ebp-8]
 00520FF7    call        IntToStr
 00520FFC    mov         edx,dword ptr [ebp-8]
 00520FFF    mov         eax,edi
 00521001    call        TControl.SetText
 00521006    cmp         bl,1
>00521009    jne         00521058
 0052100B    lea         edx,[ebp-10]
 0052100E    mov         eax,dword ptr [esi+2DC];TFormConfirmerImpression.Edit1:TEdit
 00521014    call        TControl.GetText
 00521019    mov         eax,dword ptr [ebp-10]
 0052101C    call        StrToInt
 00521021    dec         eax
>00521022    jle         00521058
 00521024    lea         edx,[ebp-18]
 00521027    mov         ebx,dword ptr [esi+2DC];TFormConfirmerImpression.Edit1:TEdit
 0052102D    mov         eax,ebx
 0052102F    call        TControl.GetText
 00521034    mov         eax,dword ptr [ebp-18]
 00521037    call        StrToInt
 0052103C    sub         eax,1
>0052103F    jno         00521046
 00521041    call        @IntOver
 00521046    lea         edx,[ebp-14]
 00521049    call        IntToStr
 0052104E    mov         edx,dword ptr [ebp-14]
 00521051    mov         eax,ebx
 00521053    call        TControl.SetText
 00521058    xor         eax,eax
 0052105A    pop         edx
 0052105B    pop         ecx
 0052105C    pop         ecx
 0052105D    mov         dword ptr fs:[eax],edx
 00521060    push        52109A
 00521065    lea         eax,[ebp-18]
 00521068    call        @LStrClr
 0052106D    lea         eax,[ebp-14]
 00521070    call        @LStrClr
 00521075    lea         eax,[ebp-10]
 00521078    mov         edx,2
 0052107D    call        @LStrArrayClr
 00521082    lea         eax,[ebp-8]
 00521085    call        @LStrClr
 0052108A    lea         eax,[ebp-4]
 0052108D    call        @LStrClr
 00521092    ret
>00521093    jmp         @HandleFinally
>00521098    jmp         00521065
 0052109A    pop         edi
 0052109B    pop         esi
 0052109C    pop         ebx
 0052109D    mov         esp,ebp
 0052109F    pop         ebp
 005210A0    ret*}
end;

//005210A4
procedure TFormConfirmerImpression.UpDown2Click(Sender:TObject; Button: TUDBtnType);
begin
{* 005210A4    push        ebp
 005210A5    mov         ebp,esp
 005210A7    push        0
 005210A9    push        0
 005210AB    push        0
 005210AD    push        0
 005210AF    push        0
 005210B1    push        0
 005210B3    push        ebx
 005210B4    push        esi
 005210B5    push        edi
 005210B6    mov         ebx,ecx
 005210B8    mov         esi,eax
 005210BA    xor         eax,eax
 005210BC    push        ebp
 005210BD    push        5211AB
 005210C2    push        dword ptr fs:[eax]
 005210C5    mov         dword ptr fs:[eax],esp
 005210C8    test        bl,bl
>005210CA    jne         0052111E
 005210CC    lea         edx,[ebp-4]
 005210CF    mov         eax,dword ptr [esi+2E8];TFormConfirmerImpression.Edit2:TEdit
 005210D5    call        TControl.GetText
 005210DA    mov         eax,dword ptr [ebp-4]
 005210DD    call        StrToInt
 005210E2    cmp         eax,dword ptr [esi+310];TFormConfirmerImpression.?f310:dword
>005210E8    jge         0052111E
 005210EA    lea         edx,[ebp-0C]
 005210ED    mov         edi,dword ptr [esi+2E8];TFormConfirmerImpression.Edit2:TEdit
 005210F3    mov         eax,edi
 005210F5    call        TControl.GetText
 005210FA    mov         eax,dword ptr [ebp-0C]
 005210FD    call        StrToInt
 00521102    add         eax,1
>00521105    jno         0052110C
 00521107    call        @IntOver
 0052110C    lea         edx,[ebp-8]
 0052110F    call        IntToStr
 00521114    mov         edx,dword ptr [ebp-8]
 00521117    mov         eax,edi
 00521119    call        TControl.SetText
 0052111E    cmp         bl,1
>00521121    jne         00521170
 00521123    lea         edx,[ebp-10]
 00521126    mov         eax,dword ptr [esi+2E8];TFormConfirmerImpression.Edit2:TEdit
 0052112C    call        TControl.GetText
 00521131    mov         eax,dword ptr [ebp-10]
 00521134    call        StrToInt
 00521139    dec         eax
>0052113A    jle         00521170
 0052113C    lea         edx,[ebp-18]
 0052113F    mov         ebx,dword ptr [esi+2E8];TFormConfirmerImpression.Edit2:TEdit
 00521145    mov         eax,ebx
 00521147    call        TControl.GetText
 0052114C    mov         eax,dword ptr [ebp-18]
 0052114F    call        StrToInt
 00521154    sub         eax,1
>00521157    jno         0052115E
 00521159    call        @IntOver
 0052115E    lea         edx,[ebp-14]
 00521161    call        IntToStr
 00521166    mov         edx,dword ptr [ebp-14]
 00521169    mov         eax,ebx
 0052116B    call        TControl.SetText
 00521170    xor         eax,eax
 00521172    pop         edx
 00521173    pop         ecx
 00521174    pop         ecx
 00521175    mov         dword ptr fs:[eax],edx
 00521178    push        5211B2
 0052117D    lea         eax,[ebp-18]
 00521180    call        @LStrClr
 00521185    lea         eax,[ebp-14]
 00521188    call        @LStrClr
 0052118D    lea         eax,[ebp-10]
 00521190    mov         edx,2
 00521195    call        @LStrArrayClr
 0052119A    lea         eax,[ebp-8]
 0052119D    call        @LStrClr
 005211A2    lea         eax,[ebp-4]
 005211A5    call        @LStrClr
 005211AA    ret
>005211AB    jmp         @HandleFinally
>005211B0    jmp         0052117D
 005211B2    pop         edi
 005211B3    pop         esi
 005211B4    pop         ebx
 005211B5    mov         esp,ebp
 005211B7    pop         ebp
 005211B8    ret*}
end;

//005211BC
procedure TFormConfirmerImpression.UpDown3Click(Sender:TObject; Button: TUDBtnType);
begin
{* 005211BC    push        ebp
 005211BD    mov         ebp,esp
 005211BF    push        0
 005211C1    push        0
 005211C3    push        0
 005211C5    push        0
 005211C7    push        ebx
 005211C8    push        esi
 005211C9    push        edi
 005211CA    mov         ebx,ecx
 005211CC    mov         esi,eax
 005211CE    xor         eax,eax
 005211D0    push        ebp
 005211D1    push        52127B
 005211D6    push        dword ptr fs:[eax]
 005211D9    mov         dword ptr fs:[eax],esp
 005211DC    test        bl,bl
>005211DE    jne         00521214
 005211E0    lea         edx,[ebp-8]
 005211E3    mov         edi,dword ptr [esi+2F4];TFormConfirmerImpression.Edit3:TEdit
 005211E9    mov         eax,edi
 005211EB    call        TControl.GetText
 005211F0    mov         eax,dword ptr [ebp-8]
 005211F3    call        StrToInt
 005211F8    add         eax,1
>005211FB    jno         00521202
 005211FD    call        @IntOver
 00521202    lea         edx,[ebp-4]
 00521205    call        IntToStr
 0052120A    mov         edx,dword ptr [ebp-4]
 0052120D    mov         eax,edi
 0052120F    call        TControl.SetText
 00521214    cmp         bl,1
>00521217    jne         0052124D
 00521219    lea         edx,[ebp-10]
 0052121C    mov         ebx,dword ptr [esi+2F4];TFormConfirmerImpression.Edit3:TEdit
 00521222    mov         eax,ebx
 00521224    call        TControl.GetText
 00521229    mov         eax,dword ptr [ebp-10]
 0052122C    call        StrToInt
 00521231    sub         eax,1
>00521234    jno         0052123B
 00521236    call        @IntOver
 0052123B    lea         edx,[ebp-0C]
 0052123E    call        IntToStr
 00521243    mov         edx,dword ptr [ebp-0C]
 00521246    mov         eax,ebx
 00521248    call        TControl.SetText
 0052124D    xor         eax,eax
 0052124F    pop         edx
 00521250    pop         ecx
 00521251    pop         ecx
 00521252    mov         dword ptr fs:[eax],edx
 00521255    push        521282
 0052125A    lea         eax,[ebp-10]
 0052125D    call        @LStrClr
 00521262    lea         eax,[ebp-0C]
 00521265    call        @LStrClr
 0052126A    lea         eax,[ebp-8]
 0052126D    call        @LStrClr
 00521272    lea         eax,[ebp-4]
 00521275    call        @LStrClr
 0052127A    ret
>0052127B    jmp         @HandleFinally
>00521280    jmp         0052125A
 00521282    pop         edi
 00521283    pop         esi
 00521284    pop         ebx
 00521285    mov         esp,ebp
 00521287    pop         ebp
 00521288    ret*}
end;

//0052128C
procedure TFormConfirmerImpression.SpeedButton5Click(Sender:TObject);
begin
  ModalResult:= 1;
end;

//00521298
procedure TFormConfirmerImpression.FormKeyPress(Sender:TObject; var Key:Char);
begin
  if (Key = char($0D)) then//00541FB5
    ModalResult := 1
  else
  if (Key = char($1B)) then 
   ModalResult := 2;
end;

//005212B8
procedure TFormConfirmerImpression.SpeedButton1Click(Sender:TObject);
begin
  ModalResult := 2;
end;

end.