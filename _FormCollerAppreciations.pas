//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _FormCollerAppreciations;

interface

uses
Forms, Windows,  SysUtils, Classes, ExtCtrls, Buttons, CheckLst, StdCtrls,Controls, UFichierCdn;

type
  TFormCollerAppreciations = class(TForm)
  published
    Panel2:TPanel;//f2D0
    Bevel2:TBevel;//f2D4
    Image1:TImage;//f2D8
    SpeedButton1:TSpeedButton;//f2DC
    SpeedButton2:TSpeedButton;//f2E0
    CheckListBox1:TCheckListBox;//f2E4
    SpeedButton18:TSpeedButton;//f2E8
    SpeedButton19:TSpeedButton;//f2EC
    Label1:TLabel;//f2F0
    CheckBox1:TCheckBox;//f2F4
    Label2:TLabel;//f2F8
    procedure CheckListBox1ClickCheck;//00533F54
    procedure SpeedButton1Click(Sender:TObject);//00533FC4
    procedure SpeedButton2Click(Sender:TObject);//00533FCC
    procedure CheckListBox1DrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);//00533CE8
    procedure SpeedButton18Click(Sender:TObject);//00533E8C
    procedure SpeedButton19Click(Sender:TObject);//00533EF0
  public
    f2FC:TFichierCdn;//f2FC
    constructor Create(owner:TComponent; logo:Timage; F:TFichierCdn);//00533C70
  end;
  var
    FormCollerAppreciations: TFormCollerAppreciations;

implementation

{$R *.DFM}

//00533C70
constructor TFormCollerAppreciations.Create(owner:TComponent; logo:Timage; F:TFichierCdn);
begin//0
  //00533C70
 
  inherited Create(owner);

  f2FC := F;
  Image1.Picture := logo.Picture;
  CheckListBox1.Items := f2FC.sub_004BEA4C;

end;//0

//00533CE8
procedure TFormCollerAppreciations.CheckListBox1DrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
begin
    if (Index mod 2  <> 1) then
    begin//2
      //0055303B
      CheckListBox1.Canvas.Brush.Color := $FFFFFF;
      CheckListBox1.Canvas.FillRect(Rect);
    end//2
    else
    begin//2
      //0055306A
      CheckListBox1.Canvas.Brush.Color := $F4F3EE;
      CheckListBox1.Canvas.FillRect(Rect);
    end;//2

    CheckListBox1.Canvas.TextOut(Rect.Left + 5, Rect.Top + 2, CheckListBox1.Items[Index]);
    if ( odSelected in State) then
    begin//2
      //005530E6
      CheckListBox1.Canvas.Brush.Color := $F8D1C5;
      CheckListBox1.Canvas.FillRect(Rect);
      CheckListBox1.Canvas.Font.Color := $FF0000;
      CheckListBox1.Canvas.TextOut(Rect.Left + 5, Rect.Top + 2, CheckListBox1.Items[Index]);
    end;//2
end;

//00533E8C
procedure TFormCollerAppreciations.SpeedButton18Click(Sender:TObject);
begin
{*
 00533E8C    push        ebx
 00533E8D    push        esi
 00533E8E    push        ecx
 00533E8F    mov         esi,eax
 00533E91    mov         eax,dword ptr [esi+2E4];TFormCollerAppreciations.CheckListBox1:TCheckListBox
 00533E97    mov         eax,dword ptr [eax+1F0];TCheckListBox.FItems:TStrings
 00533E9D    mov         edx,dword ptr [eax]
 00533E9F    call        dword ptr [edx+14];TStrings.GetCount
 00533EA2    mov         ebx,eax
 00533EA4    cmp         ebx,0FF
>00533EAA    jbe         00533EB1
 00533EAC    call        @BoundErr
 00533EB1    test        bl,bl
>00533EB3    jbe         00533EDC
 00533EB5    mov         byte ptr [esp],1
 00533EB9    xor         edx,edx
 00533EBB    mov         dl,byte ptr [esp]
 00533EBE    sub         edx,1
>00533EC1    jno         00533EC8
 00533EC3    call        @IntOver
 00533EC8    mov         eax,dword ptr [esi+2E4];TFormCollerAppreciations.CheckListBox1:TCheckListBox
 00533ECE    mov         cl,1
 00533ED0    call        TCheckListBox.SetChecked
 00533ED5    inc         byte ptr [esp]
 00533ED8    dec         bl
>00533EDA    jne         00533EB9
 00533EDC    mov         eax,dword ptr [esi+2E0];TFormCollerAppreciations.SpeedButton2:TSpeedButton
 00533EE2    mov         dl,1
 00533EE4    mov         ecx,dword ptr [eax]
 00533EE6    call        dword ptr [ecx+5C];TControl.SetEnabled
 00533EE9    pop         edx
 00533EEA    pop         esi
 00533EEB    pop         ebx
 00533EEC    ret
*}
end;

//00533EF0
procedure TFormCollerAppreciations.SpeedButton19Click(Sender:TObject);
begin
{*
 00533EF0    push        ebx
 00533EF1    push        esi
 00533EF2    push        ecx
 00533EF3    mov         esi,eax
 00533EF5    mov         eax,dword ptr [esi+2E4];TFormCollerAppreciations.CheckListBox1:TCheckListBox
 00533EFB    mov         eax,dword ptr [eax+1F0];TCheckListBox.FItems:TStrings
 00533F01    mov         edx,dword ptr [eax]
 00533F03    call        dword ptr [edx+14];TStrings.GetCount
 00533F06    mov         ebx,eax
 00533F08    cmp         ebx,0FF
>00533F0E    jbe         00533F15
 00533F10    call        @BoundErr
 00533F15    test        bl,bl
>00533F17    jbe         00533F40
 00533F19    mov         byte ptr [esp],1
 00533F1D    xor         edx,edx
 00533F1F    mov         dl,byte ptr [esp]
 00533F22    sub         edx,1
>00533F25    jno         00533F2C
 00533F27    call        @IntOver
 00533F2C    mov         eax,dword ptr [esi+2E4];TFormCollerAppreciations.CheckListBox1:TCheckListBox
 00533F32    xor         ecx,ecx
 00533F34    call        TCheckListBox.SetChecked
 00533F39    inc         byte ptr [esp]
 00533F3C    dec         bl
>00533F3E    jne         00533F1D
 00533F40    mov         eax,dword ptr [esi+2E0];TFormCollerAppreciations.SpeedButton2:TSpeedButton
 00533F46    xor         edx,edx
 00533F48    mov         ecx,dword ptr [eax]
 00533F4A    call        dword ptr [ecx+5C];TControl.SetEnabled
 00533F4D    pop         edx
 00533F4E    pop         esi
 00533F4F    pop         ebx
 00533F50    ret
*}
end;

//00533F54
procedure TFormCollerAppreciations.CheckListBox1ClickCheck;
begin
{*
 00533F54    push        ebx
 00533F55    push        esi
 00533F56    push        ecx
 00533F57    mov         esi,eax
 00533F59    mov         byte ptr [esp],0
 00533F5D    mov         eax,dword ptr [esi+2E4];TFormCollerAppreciations.CheckListBox1:TCheckListBox
 00533F63    mov         eax,dword ptr [eax+1F0];TCheckListBox.FItems:TStrings
 00533F69    mov         edx,dword ptr [eax]
 00533F6B    call        dword ptr [edx+14];TStrings.GetCount
 00533F6E    mov         ebx,eax
 00533F70    cmp         ebx,0FF
>00533F76    jbe         00533F7D
 00533F78    call        @BoundErr
 00533F7D    test        bl,bl
>00533F7F    jbe         00533FB1
 00533F81    mov         byte ptr [esp+1],1
 00533F86    xor         edx,edx
 00533F88    mov         dl,byte ptr [esp+1]
 00533F8C    sub         edx,1
>00533F8F    jno         00533F96
 00533F91    call        @IntOver
 00533F96    mov         eax,dword ptr [esi+2E4];TFormCollerAppreciations.CheckListBox1:TCheckListBox
 00533F9C    call        TCheckListBox.GetChecked
 00533FA1    test        al,al
>00533FA3    je          00533FA9
 00533FA5    mov         byte ptr [esp],1
 00533FA9    inc         byte ptr [esp+1]
 00533FAD    dec         bl
>00533FAF    jne         00533F86
 00533FB1    mov         eax,dword ptr [esi+2E0];TFormCollerAppreciations.SpeedButton2:TSpeedButton
 00533FB7    mov         dl,byte ptr [esp]
 00533FBA    mov         ecx,dword ptr [eax]
 00533FBC    call        dword ptr [ecx+5C];TControl.SetEnabled
 00533FBF    pop         edx
 00533FC0    pop         esi
 00533FC1    pop         ebx
 00533FC2    ret
*}
end;

//00533FC4
procedure TFormCollerAppreciations.SpeedButton1Click(Sender:TObject);
begin
{*
 00533FC4    call        TCustomForm.Close
 00533FC9    ret
*}
end;

//00533FCC
procedure TFormCollerAppreciations.SpeedButton2Click(Sender:TObject);
begin
{*
 00533FCC    push        ebp
 00533FCD    mov         ebp,esp
 00533FCF    add         esp,0FFFFFEE0
 00533FD5    push        ebx
 00533FD6    push        esi
 00533FD7    push        edi
 00533FD8    xor         ecx,ecx
 00533FDA    mov         dword ptr [ebp-120],ecx
 00533FE0    mov         dword ptr [ebp-1C],ecx
 00533FE3    mov         dword ptr [ebp-4],ecx
 00533FE6    mov         dword ptr [ebp-8],ecx
 00533FE9    mov         dword ptr [ebp-0C],ecx
 00533FEC    mov         dword ptr [ebp-10],ecx
 00533FEF    mov         edi,eax
 00533FF1    xor         eax,eax
 00533FF3    push        ebp
 00533FF4    push        5341D8
 00533FF9    push        dword ptr fs:[eax]
 00533FFC    mov         dword ptr fs:[eax],esp
 00533FFF    call        Clipboard
 00534004    call        TClipboard.Clear
 00534009    lea         eax,[ebp-10]
 0053400C    call        @LStrClr
 00534011    mov         esi,dword ptr [edi+2FC];TFormCollerAppreciations.?f2FC:dword
 00534017    mov         eax,dword ptr [edi+2E4];TFormCollerAppreciations.CheckListBox1:TCheckListBox
 0053401D    mov         eax,dword ptr [eax+1F0];TCheckListBox.FItems:TStrings
 00534023    mov         edx,dword ptr [eax]
 00534025    call        dword ptr [edx+14];TStrings.GetCount
 00534028    cmp         eax,0FF
>0053402D    jbe         00534034
 0053402F    call        @BoundErr
 00534034    test        al,al
>00534036    jbe         00534196
 0053403C    mov         byte ptr [ebp-13],al
 0053403F    mov         byte ptr [ebp-11],1
 00534043    xor         edx,edx
 00534045    mov         dl,byte ptr [ebp-11]
 00534048    sub         edx,1
>0053404B    jno         00534052
 0053404D    call        @IntOver
 00534052    mov         eax,dword ptr [edi+2E4];TFormCollerAppreciations.CheckListBox1:TCheckListBox
 00534058    call        TCheckListBox.GetChecked
 0053405D    test        al,al
>0053405F    je          0053418A
 00534065    mov         eax,esi
 00534067    call        004BEA58
 0053406C    test        al,al
>0053406E    jbe         00534170
 00534074    mov         byte ptr [ebp-14],al
 00534077    mov         byte ptr [ebp-12],1
 0053407B    mov         eax,dword ptr [edi+2F4];TFormCollerAppreciations.CheckBox1:TCheckBox
 00534081    mov         edx,dword ptr [eax]
 00534083    call        dword ptr [edx+0B4];TCustomCheckBox.GetChecked
 00534089    test        al,al
>0053408B    je          005340CA
 0053408D    lea         ecx,[ebp-11C]
 00534093    mov         dl,byte ptr [ebp-12]
 00534096    mov         eax,esi
 00534098    call        004BEA64
 0053409D    lea         edx,[ebp-11C]
 005340A3    lea         eax,[ebp-1C]
 005340A6    call        @LStrFromString
 005340AB    mov         edx,dword ptr [ebp-1C]
 005340AE    lea         eax,[ebp-4]
 005340B1    mov         ecx,5341F0;';'
 005340B6    call        @LStrCat3
 005340BB    lea         eax,[ebp-8]
 005340BE    mov         edx,5341F0;';'
 005340C3    call        @LStrLAsg
>005340C8    jmp         005340DF
 005340CA    lea         eax,[ebp-4]
 005340CD    call        @LStrClr
 005340D2    lea         eax,[ebp-8]
 005340D5    mov         edx,5341FC;#13+#10
 005340DA    call        @LStrLAsg
 005340DF    lea         eax,[ebp-10]
 005340E2    mov         edx,dword ptr [ebp-4]
 005340E5    call        @LStrCat
 005340EA    mov         eax,esi
 005340EC    call        004C8AE8
 005340F1    test        al,al
>005340F3    jbe         00534164
 005340F5    mov         byte ptr [ebp-15],al
 005340F8    mov         bl,1
 005340FA    mov         eax,esi
 005340FC    call        004C8AE8
 00534101    cmp         bl,al
>00534103    je          00534112
 00534105    lea         eax,[ebp-0C]
 00534108    mov         edx,dword ptr [ebp-8]
 0053410B    call        @LStrLAsg
>00534110    jmp         0053411F
 00534112    lea         eax,[ebp-0C]
 00534115    mov         edx,5341FC;#13+#10
 0053411A    call        @LStrLAsg
 0053411F    push        dword ptr [ebp-10]
 00534122    push        ebx
 00534123    lea         eax,[ebp-11C]
 00534129    push        eax
 0053412A    mov         cl,byte ptr [ebp-12]
 0053412D    mov         dl,byte ptr [ebp-11]
 00534130    mov         eax,esi
 00534132    call        004C2C00
 00534137    lea         edx,[ebp-11C]
 0053413D    lea         eax,[ebp-120]
 00534143    call        @LStrFromString
 00534148    push        dword ptr [ebp-120]
 0053414E    push        dword ptr [ebp-0C]
 00534151    lea         eax,[ebp-10]
 00534154    mov         edx,3
 00534159    call        @LStrCatN
 0053415E    inc         ebx
 0053415F    dec         byte ptr [ebp-15]
>00534162    jne         005340FA
 00534164    inc         byte ptr [ebp-12]
 00534167    dec         byte ptr [ebp-14]
>0053416A    jne         0053407B
 00534170    push        dword ptr [ebp-10]
 00534173    push        534208;#13
 00534178    push        534214;#10
 0053417D    lea         eax,[ebp-10]
 00534180    mov         edx,3
 00534185    call        @LStrCatN
 0053418A    inc         byte ptr [ebp-11]
 0053418D    dec         byte ptr [ebp-13]
>00534190    jne         00534043
 00534196    mov         eax,dword ptr [ebp-10]
 00534199    call        @LStrToPChar
 0053419E    push        eax
 0053419F    call        Clipboard
 005341A4    pop         edx
 005341A5    call        TClipboard.SetTextBuf
 005341AA    xor         eax,eax
 005341AC    pop         edx
 005341AD    pop         ecx
 005341AE    pop         ecx
 005341AF    mov         dword ptr fs:[eax],edx
 005341B2    push        5341DF
 005341B7    lea         eax,[ebp-120]
 005341BD    call        @LStrClr
 005341C2    lea         eax,[ebp-1C]
 005341C5    call        @LStrClr
 005341CA    lea         eax,[ebp-10]
 005341CD    mov         edx,4
 005341D2    call        @LStrArrayClr
 005341D7    ret
>005341D8    jmp         @HandleFinally
>005341DD    jmp         005341B7
 005341DF    pop         edi
 005341E0    pop         esi
 005341E1    pop         ebx
 005341E2    mov         esp,ebp
 005341E4    pop         ebp
 005341E5    ret
*}
end;

end.