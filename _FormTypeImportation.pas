{***************************************
* Version Original V0.01
* Decompiled by HOUIDEF AEK v.05.02.2018
***************************************}
unit _FormTypeImportation;

interface

uses
Forms, Windows,  SysUtils, Classes, ExtCtrls, Buttons, CheckLst, StdCtrls;

type
  TFormTypeImportation = class(TForm)
  published
    RadioGroup1:TRadioGroup;//f2D0
    SpeedButtonImporter:TSpeedButton;//f2D4
    CheckListBox1:TCheckListBox;//f2D8
    SpeedButton3:TSpeedButton;//f2DC
    SpeedButton4:TSpeedButton;//f2E0
    Label1:TLabel;//f2E4
    SpeedButtonFermer:TSpeedButton;//f2E8
    Label2:TLabel;//f2EC
	f2F0 : TStringList;
	f2F4 : TStringList;
	f2F8 : TStringList;
    procedure SpeedButtonFermerClick(Sender:TObject);//00512D98
    procedure CheckListBox1ClickCheck;//00512DA4
    procedure FormKeyPress(Sender:TObject; var Key:Char);//00512E70
    procedure SpeedButtonImporterClick(Sender:TObject);//00512C5C
    procedure SpeedButton3Click(Sender:TObject);//00512C68
    procedure SpeedButton4Click(Sender:TObject);//00512D28
    constructor Create(Owner:TComponent; S1:TStringList; S2:TStringList; S3:TStringList;a:ShortString);//00512A58
  end;
  var
   FormTypeImportation{gvar_00617DAC} : TFormTypeImportation;
implementation

{$R *.DFM}

//00512A58
constructor TFormTypeImportation.Create(Owner:TComponent; S1:TStringList; S2:TStringList; S3:TStringList; a:ShortString);
var
 I:integer;
begin//0
  //00512A58
    //00512A95
    inherited Create(Owner);
    f2F0 := S1;
    f2F4 := S2;
    f2F8 := S3;
    Caption := Caption + '"' + a + '"';
      for I := 1 to f2F0.count do//00512AFB
      begin//3
        //00512B03
        CheckListBox1.Items.Add(f2F0[I - 1]);
        CheckListBox1.Checked[I - 1] := True;
      end;//3
    
    Label1.Caption := IntToStr(CheckListBox1.Items.Count) + ' élève(s) dans cette classe';
    Label2.Caption := IntToStr(CheckListBox1.Items.Count) + ' sélectionné(s)';
	//00512BC5
 
end;//0

//00512C5C
procedure TFormTypeImportation.SpeedButtonImporterClick(Sender:TObject);
begin
 ModalResult := 1;
end;

//00512C68
procedure TFormTypeImportation.SpeedButton3Click(Sender:TObject);
begin
{*
 00512C68    push        ebp
 00512C69    mov         ebp,esp
 00512C6B    push        0
 00512C6D    push        ebx
 00512C6E    push        esi
 00512C6F    push        edi
 00512C70    mov         esi,eax
 00512C72    xor         eax,eax
 00512C74    push        ebp
 00512C75    push        512D03
 00512C7A    push        dword ptr fs:[eax]
 00512C7D    mov         dword ptr fs:[eax],esp
 00512C80    mov         eax,dword ptr [esi+2D8];TFormTypeImportation.CheckListBox1:TCheckListBox
 00512C86    mov         eax,dword ptr [eax+1F0];TCheckListBox.FItems:TStrings
 00512C8C    mov         edx,dword ptr [eax]
 00512C8E    call        dword ptr [edx+14];TStrings.GetCount
 00512C91    mov         ebx,eax
 00512C93    test        ebx,ebx
>00512C95    jle         00512CB9
 00512C97    mov         edi,1
 00512C9C    mov         edx,edi
 00512C9E    sub         edx,1
>00512CA1    jno         00512CA8
 00512CA3    call        @IntOver
 00512CA8    mov         cl,1
 00512CAA    mov         eax,dword ptr [esi+2D8];TFormTypeImportation.CheckListBox1:TCheckListBox
 00512CB0    call        TCheckListBox.SetChecked
 00512CB5    inc         edi
 00512CB6    dec         ebx
>00512CB7    jne         00512C9C
 00512CB9    mov         eax,dword ptr [esi+2D8];TFormTypeImportation.CheckListBox1:TCheckListBox
 00512CBF    mov         eax,dword ptr [eax+1F0];TCheckListBox.FItems:TStrings
 00512CC5    mov         edx,dword ptr [eax]
 00512CC7    call        dword ptr [edx+14];TStrings.GetCount
 00512CCA    lea         edx,[ebp-4]
 00512CCD    call        IntToStr
 00512CD2    lea         eax,[ebp-4]
 00512CD5    mov         edx,512D18;' sélectionné(s)'
 00512CDA    call        @LStrCat
 00512CDF    mov         edx,dword ptr [ebp-4]
 00512CE2    mov         eax,dword ptr [esi+2EC];TFormTypeImportation.Label2:TLabel
 00512CE8    call        TControl.SetText
 00512CED    xor         eax,eax
 00512CEF    pop         edx
 00512CF0    pop         ecx
 00512CF1    pop         ecx
 00512CF2    mov         dword ptr fs:[eax],edx
 00512CF5    push        512D0A
 00512CFA    lea         eax,[ebp-4]
 00512CFD    call        @LStrClr
 00512D02    ret
>00512D03    jmp         @HandleFinally
>00512D08    jmp         00512CFA
 00512D0A    pop         edi
 00512D0B    pop         esi
 00512D0C    pop         ebx
 00512D0D    pop         ecx
 00512D0E    pop         ebp
 00512D0F    ret
*}
end;

//00512D28
procedure TFormTypeImportation.SpeedButton4Click(Sender:TObject);
begin
{*
 00512D28    push        ebx
 00512D29    push        esi
 00512D2A    push        edi
 00512D2B    mov         edi,eax
 00512D2D    mov         eax,dword ptr [edi+2D8];TFormTypeImportation.CheckListBox1:TCheckListBox
 00512D33    mov         eax,dword ptr [eax+1F0];TCheckListBox.FItems:TStrings
 00512D39    mov         edx,dword ptr [eax]
 00512D3B    call        dword ptr [edx+14];TStrings.GetCount
 00512D3E    mov         ebx,eax
 00512D40    test        ebx,ebx
>00512D42    jle         00512D66
 00512D44    mov         esi,1
 00512D49    mov         edx,esi
 00512D4B    sub         edx,1
>00512D4E    jno         00512D55
 00512D50    call        @IntOver
 00512D55    mov         eax,dword ptr [edi+2D8];TFormTypeImportation.CheckListBox1:TCheckListBox
 00512D5B    xor         ecx,ecx
 00512D5D    call        TCheckListBox.SetChecked
 00512D62    inc         esi
 00512D63    dec         ebx
>00512D64    jne         00512D49
 00512D66    mov         eax,dword ptr [edi+2EC];TFormTypeImportation.Label2:TLabel
 00512D6C    mov         edx,512D84;' 0 sélectionné(s)'
 00512D71    call        TControl.SetText
 00512D76    pop         edi
 00512D77    pop         esi
 00512D78    pop         ebx
 00512D79    ret
*}
end;

//00512D98
procedure TFormTypeImportation.SpeedButtonFermerClick(Sender:TObject);
begin
  ModalResult := 2;
end;

//00512DA4
procedure TFormTypeImportation.CheckListBox1ClickCheck;
begin
{*
 00512DA4    push        ebp
 00512DA5    mov         ebp,esp
 00512DA7    add         esp,0FFFFFFF8
 00512DAA    push        ebx
 00512DAB    push        esi
 00512DAC    push        edi
 00512DAD    xor         ecx,ecx
 00512DAF    mov         dword ptr [ebp-8],ecx
 00512DB2    mov         edi,eax
 00512DB4    xor         eax,eax
 00512DB6    push        ebp
 00512DB7    push        512E47
 00512DBC    push        dword ptr fs:[eax]
 00512DBF    mov         dword ptr fs:[eax],esp
 00512DC2    xor         eax,eax
 00512DC4    mov         dword ptr [ebp-4],eax
 00512DC7    mov         eax,dword ptr [edi+2D8];TFormTypeImportation.CheckListBox1:TCheckListBox
 00512DCD    mov         eax,dword ptr [eax+1F0];TCheckListBox.FItems:TStrings
 00512DD3    mov         edx,dword ptr [eax]
 00512DD5    call        dword ptr [edx+14];TStrings.GetCount
 00512DD8    mov         ebx,eax
 00512DDA    sub         ebx,1
>00512DDD    jno         00512DE4
 00512DDF    call        @IntOver
 00512DE4    test        ebx,ebx
>00512DE6    jl          00512E0B
 00512DE8    inc         ebx
 00512DE9    xor         esi,esi
 00512DEB    mov         eax,dword ptr [edi+2D8];TFormTypeImportation.CheckListBox1:TCheckListBox
 00512DF1    mov         edx,esi
 00512DF3    call        TCheckListBox.GetChecked
 00512DF8    test        al,al
>00512DFA    je          00512E07
 00512DFC    add         dword ptr [ebp-4],1
>00512E00    jno         00512E07
 00512E02    call        @IntOver
 00512E07    inc         esi
 00512E08    dec         ebx
>00512E09    jne         00512DEB
 00512E0B    lea         edx,[ebp-8]
 00512E0E    mov         eax,dword ptr [ebp-4]
 00512E11    call        IntToStr
 00512E16    lea         eax,[ebp-8]
 00512E19    mov         edx,512E60;' sélectionné(s)'
 00512E1E    call        @LStrCat
 00512E23    mov         edx,dword ptr [ebp-8]
 00512E26    mov         eax,dword ptr [edi+2EC];TFormTypeImportation.Label2:TLabel
 00512E2C    call        TControl.SetText
 00512E31    xor         eax,eax
 00512E33    pop         edx
 00512E34    pop         ecx
 00512E35    pop         ecx
 00512E36    mov         dword ptr fs:[eax],edx
 00512E39    push        512E4E
 00512E3E    lea         eax,[ebp-8]
 00512E41    call        @LStrClr
 00512E46    ret
>00512E47    jmp         @HandleFinally
>00512E4C    jmp         00512E3E
 00512E4E    pop         edi
 00512E4F    pop         esi
 00512E50    pop         ebx
 00512E51    pop         ecx
 00512E52    pop         ecx
 00512E53    pop         ebp
 00512E54    ret
*}
end;

//00512E70
procedure TFormTypeImportation.FormKeyPress(Sender:TObject; var Key:Char);
begin
  if (Key = chr($0D)) then
    ModalResult := 1
  else
  if (Key = chr($1B)) then 
  ModalResult := 2;
end;

end.