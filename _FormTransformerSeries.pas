{***************************************
* Version Original V0.01
* Decompiled by HOUIDEF AEK v.05.02.2018
***************************************}
unit _FormTransformerSeries;

interface

uses
  Forms,Windows, SysUtils, Classes, ExtCtrls, Buttons, ComCtrls, StdCtrls, Controls, UFichierCdn;

type
  TFormTransformerSeries = class(TForm)
  published
    Panel2:TPanel;//f2D0
    Bevel2:TBevel;//f2D4
    Image1:TImage;//f2D8
    SpeedButton15:TSpeedButton;//f2DC
    TabControl1:TTabControl;//f2E0
    ListBox2:TListBox;//f2E4
    Label2:TLabel;//f2E8
    ComboBox1:TComboBox;//f2EC
    Edit1:TEdit;//f2F0
    Label3:TLabel;//f2F4
    SpeedButton2:TSpeedButton;//f2F8
    SpeedButton1:TSpeedButton;//f2FC
    RadioGroup1:TRadioGroup;//f300
    CheckBox1:TCheckBox;//f304
    Label4:TLabel;//f308
    CheckBox2:TCheckBox;//f30C
    CheckBox3:TCheckBox;//f310
    procedure ComboBox1Change(Sender:TObject);//00512658
    procedure SpeedButton1Click(Sender:TObject);//00511EDC
    procedure FormKeyPress(Sender:TObject; var Key:Char);//00512734
    procedure CheckBox1Click(Sender:TObject);//005126F8
    procedure SpeedButton2Click(Sender:TObject);//00511DAC
    procedure TabControl1Change(Sender:Tobject);//00511960
    procedure SpeedButton15Click(Sender:TObject);//00511958
    procedure ListBox2Click(Sender:TObject);//00511C5C
    procedure ListBox2DrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);//00511AF0
  public
    f314:TFichierCdn;//f314
    f318:dword;//f318
    constructor Create(Owner:TComponent; F:TFichierCdn; logo:Timage);//005117D8
  end;
  var
    FormTransformerSeries:TFormTransformerSeries;
implementation

{$R *.DFM}

//005117D8
constructor TFormTransformerSeries.Create(Owner:TComponent; F:TFichierCdn; logo:Timage);
var
 I:integer;
 buf:String;
begin//0
  //005117D8
    //00511807
    
    inherited Create(Owner);
    Image1.Picture := logo.Picture;
    f314 := F;
    TabControl1.Tabs := F.sub_004BEA4C;

      for I := 1 to F.sub_004BEAD0(TabControl1.TabIndex + 1) do //0051187D
      begin//3
        //00511884
        F.sub_004BED04( TabControl1.TabIndex + 1, buf, I);
        ListBox2.Items.Add(buf);
      end;//3

    CheckBox1.Enabled := (F.sub_004C4790 < 255{gvar_00617903});
    ComboBox1.ItemIndex := 0;
end;//0

//00511958
procedure TFormTransformerSeries.SpeedButton15Click(Sender:TObject);
begin
  Close;
end;

//00511960
procedure TFormTransformerSeries.TabControl1Change(Sender:TObject);
begin
{*
 00511960    push        ebp
 00511961    mov         ebp,esp
 00511963    add         esp,0FFFFFEEC
 00511969    push        ebx
 0051196A    push        esi
 0051196B    xor         ecx,ecx
 0051196D    mov         dword ptr [ebp-110],ecx
 00511973    mov         dword ptr [ebp-114],ecx
 00511979    mov         dword ptr [ebp-0C],ecx
 0051197C    mov         ebx,eax
 0051197E    xor         eax,eax
 00511980    push        ebp
 00511981    push        511AE1
 00511986    push        dword ptr fs:[eax]
 00511989    mov         dword ptr fs:[eax],esp
 0051198C    mov         eax,dword ptr [ebx+2E4];TFormTransformerSeries.ListBox2:TListBox
 00511992    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 00511998    mov         edx,dword ptr [eax]
 0051199A    call        dword ptr [edx+40];TStrings.Clear
 0051199D    mov         eax,dword ptr [ebx+314];TFormTransformerSeries.?f314:dword
 005119A3    mov         dword ptr [ebp-8],eax
 005119A6    mov         eax,dword ptr [ebx+2E0];TFormTransformerSeries.TabControl1:TTabControl
 005119AC    call        TCustomTabControl.GetTabIndex
 005119B1    mov         edx,eax
 005119B3    add         edx,1
>005119B6    jno         005119BD
 005119B8    call        @IntOver
 005119BD    cmp         edx,0FF
>005119C3    jbe         005119CA
 005119C5    call        @BoundErr
 005119CA    mov         eax,dword ptr [ebp-8]
 005119CD    call        004BEAD0
 005119D2    mov         esi,eax
 005119D4    and         esi,0FF
 005119DA    test        esi,esi
>005119DC    jle         00511A50
 005119DE    mov         dword ptr [ebp-4],1
 005119E5    lea         eax,[ebp-10C]
 005119EB    push        eax
 005119EC    mov         eax,dword ptr [ebx+2E0];TFormTransformerSeries.TabControl1:TTabControl
 005119F2    call        TCustomTabControl.GetTabIndex
 005119F7    mov         edx,eax
 005119F9    add         edx,1
>005119FC    jno         00511A03
 005119FE    call        @IntOver
 00511A03    cmp         edx,0FF
>00511A09    jbe         00511A10
 00511A0B    call        @BoundErr
 00511A10    mov         ecx,dword ptr [ebp-4]
 00511A13    cmp         ecx,0FF
>00511A19    jbe         00511A20
 00511A1B    call        @BoundErr
 00511A20    mov         eax,dword ptr [ebp-8]
 00511A23    call        004BED04
 00511A28    lea         edx,[ebp-10C]
 00511A2E    lea         eax,[ebp-0C]
 00511A31    call        @LStrFromString
 00511A36    mov         edx,dword ptr [ebp-0C]
 00511A39    mov         eax,dword ptr [ebx+2E4];TFormTransformerSeries.ListBox2:TListBox
 00511A3F    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 00511A45    mov         ecx,dword ptr [eax]
 00511A47    call        dword ptr [ecx+34];TStrings.Add
 00511A4A    inc         dword ptr [ebp-4]
 00511A4D    dec         esi
>00511A4E    jne         005119E5
 00511A50    mov         eax,dword ptr [ebx+2E4];TFormTransformerSeries.ListBox2:TListBox
 00511A56    call        TCustomListBox.GetItemIndex
 00511A5B    inc         eax
>00511A5C    je          00511AA4
 00511A5E    lea         edx,[ebp-110]
 00511A64    mov         eax,dword ptr [ebx+2F0];TFormTransformerSeries.Edit1:TEdit
 00511A6A    call        TControl.GetText
 00511A6F    mov         eax,dword ptr [ebp-110]
 00511A75    push        eax
 00511A76    mov         esi,dword ptr [ebx+2EC];TFormTransformerSeries.ComboBox1:TComboBox
 00511A7C    mov         eax,esi
 00511A7E    call        TCustomComboBox.GetItemIndex
 00511A83    mov         edx,eax
 00511A85    lea         ecx,[ebp-114]
 00511A8B    mov         eax,dword ptr [esi+1F0];TComboBox.FItems:TStrings
 00511A91    mov         esi,dword ptr [eax]
 00511A93    call        dword ptr [esi+0C];TStrings.Get
 00511A96    mov         edx,dword ptr [ebp-114]
 00511A9C    pop         eax
 00511A9D    call        @LStrCmp
>00511AA2    jne         00511AA8
 00511AA4    xor         edx,edx
>00511AA6    jmp         00511AAA
 00511AA8    mov         dl,1
 00511AAA    mov         eax,dword ptr [ebx+2FC];TFormTransformerSeries.SpeedButton1:TSpeedButton
 00511AB0    mov         ecx,dword ptr [eax]
 00511AB2    call        dword ptr [ecx+5C];TControl.SetEnabled
 00511AB5    xor         eax,eax
 00511AB7    pop         edx
 00511AB8    pop         ecx
 00511AB9    pop         ecx
 00511ABA    mov         dword ptr fs:[eax],edx
 00511ABD    push        511AE8
 00511AC2    lea         eax,[ebp-114]
 00511AC8    call        @LStrClr
 00511ACD    lea         eax,[ebp-110]
 00511AD3    call        @LStrClr
 00511AD8    lea         eax,[ebp-0C]
 00511ADB    call        @LStrClr
 00511AE0    ret
>00511AE1    jmp         @HandleFinally
>00511AE6    jmp         00511AC2
 00511AE8    pop         esi
 00511AE9    pop         ebx
 00511AEA    mov         esp,ebp
 00511AEC    pop         ebp
 00511AED    ret
*}
end;

//00511AF0
procedure TFormTransformerSeries.ListBox2DrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
begin
    if (Index mod 2  <> 1) then
    begin//2
      //0055303B
      ListBox2.Canvas.Brush.Color := $FFFFFF;
      ListBox2.Canvas.FillRect(Rect);
    end//2
    else
    begin//2
      //0055306A
      ListBox2.Canvas.Brush.Color := $F4F3EE;
      ListBox2.Canvas.FillRect(Rect);
    end;//2

    ListBox2.Canvas.TextOut(Rect.Left + 5, Rect.Top + 2, ListBox2.Items[Index]);
    if ( odSelected in State) then
    begin//2
      //005530E6
      ListBox2.Canvas.Brush.Color := $F8D1C5;
      ListBox2.Canvas.FillRect(Rect);
      ListBox2.Canvas.Font.Color := $FF0000;
      ListBox2.Canvas.TextOut(Rect.Left + 5, Rect.Top + 2, ListBox2.Items[Index]);
    end;//2end;
end;
//00511C5C
procedure TFormTransformerSeries.ListBox2Click(Sender:TObject);
begin
{*
 00511C5C    push        ebp
 00511C5D    mov         ebp,esp
 00511C5F    add         esp,0FFFFFEF4
 00511C65    push        ebx
 00511C66    push        esi
 00511C67    xor         ecx,ecx
 00511C69    mov         dword ptr [ebp-108],ecx
 00511C6F    mov         dword ptr [ebp-10C],ecx
 00511C75    mov         dword ptr [ebp-4],ecx
 00511C78    mov         ebx,eax
 00511C7A    xor         eax,eax
 00511C7C    push        ebp
 00511C7D    push        511D9C
 00511C82    push        dword ptr fs:[eax]
 00511C85    mov         dword ptr fs:[eax],esp
 00511C88    mov         eax,dword ptr [ebx+2E4];TFormTransformerSeries.ListBox2:TListBox
 00511C8E    call        TCustomListBox.GetItemIndex
 00511C93    inc         eax
>00511C94    je          00511D0B
 00511C96    lea         eax,[ebp-104]
 00511C9C    push        eax
 00511C9D    mov         eax,dword ptr [ebx+2E4];TFormTransformerSeries.ListBox2:TListBox
 00511CA3    call        TCustomListBox.GetItemIndex
 00511CA8    add         eax,1
>00511CAB    jno         00511CB2
 00511CAD    call        @IntOver
 00511CB2    cmp         eax,0FF
>00511CB7    jbe         00511CBE
 00511CB9    call        @BoundErr
 00511CBE    push        eax
 00511CBF    mov         eax,dword ptr [ebx+2E0];TFormTransformerSeries.TabControl1:TTabControl
 00511CC5    call        TCustomTabControl.GetTabIndex
 00511CCA    mov         edx,eax
 00511CCC    add         edx,1
>00511CCF    jno         00511CD6
 00511CD1    call        @IntOver
 00511CD6    cmp         edx,0FF
>00511CDC    jbe         00511CE3
 00511CDE    call        @BoundErr
 00511CE3    mov         eax,dword ptr [ebx+314];TFormTransformerSeries.?f314:dword
 00511CE9    pop         ecx
 00511CEA    call        004BED2C
 00511CEF    lea         edx,[ebp-104]
 00511CF5    lea         eax,[ebp-4]
 00511CF8    call        @LStrFromString
 00511CFD    mov         edx,dword ptr [ebp-4]
 00511D00    mov         eax,dword ptr [ebx+2F0];TFormTransformerSeries.Edit1:TEdit
 00511D06    call        TControl.SetText
 00511D0B    mov         eax,dword ptr [ebx+2E4];TFormTransformerSeries.ListBox2:TListBox
 00511D11    call        TCustomListBox.GetItemIndex
 00511D16    inc         eax
>00511D17    je          00511D5F
 00511D19    lea         edx,[ebp-108]
 00511D1F    mov         eax,dword ptr [ebx+2F0];TFormTransformerSeries.Edit1:TEdit
 00511D25    call        TControl.GetText
 00511D2A    mov         eax,dword ptr [ebp-108]
 00511D30    push        eax
 00511D31    mov         esi,dword ptr [ebx+2EC];TFormTransformerSeries.ComboBox1:TComboBox
 00511D37    mov         eax,esi
 00511D39    call        TCustomComboBox.GetItemIndex
 00511D3E    mov         edx,eax
 00511D40    lea         ecx,[ebp-10C]
 00511D46    mov         eax,dword ptr [esi+1F0];TComboBox.FItems:TStrings
 00511D4C    mov         esi,dword ptr [eax]
 00511D4E    call        dword ptr [esi+0C];TStrings.Get
 00511D51    mov         edx,dword ptr [ebp-10C]
 00511D57    pop         eax
 00511D58    call        @LStrCmp
>00511D5D    jne         00511D63
 00511D5F    xor         edx,edx
>00511D61    jmp         00511D65
 00511D63    mov         dl,1
 00511D65    mov         eax,dword ptr [ebx+2FC];TFormTransformerSeries.SpeedButton1:TSpeedButton
 00511D6B    mov         ecx,dword ptr [eax]
 00511D6D    call        dword ptr [ecx+5C];TControl.SetEnabled
 00511D70    xor         eax,eax
 00511D72    pop         edx
 00511D73    pop         ecx
 00511D74    pop         ecx
 00511D75    mov         dword ptr fs:[eax],edx
 00511D78    push        511DA3
 00511D7D    lea         eax,[ebp-10C]
 00511D83    call        @LStrClr
 00511D88    lea         eax,[ebp-108]
 00511D8E    call        @LStrClr
 00511D93    lea         eax,[ebp-4]
 00511D96    call        @LStrClr
 00511D9B    ret
>00511D9C    jmp         @HandleFinally
>00511DA1    jmp         00511D7D
 00511DA3    pop         esi
 00511DA4    pop         ebx
 00511DA5    mov         esp,ebp
 00511DA7    pop         ebp
 00511DA8    ret
*}
end;

//00511DAC
procedure TFormTransformerSeries.SpeedButton2Click(Sender:TObject);
begin
{*
 00511DAC    push        ebp
 00511DAD    mov         ebp,esp
 00511DAF    push        0
 00511DB1    push        0
 00511DB3    push        0
 00511DB5    push        ebx
 00511DB6    push        esi
 00511DB7    mov         ebx,eax
 00511DB9    xor         eax,eax
 00511DBB    push        ebp
 00511DBC    push        511EB9
 00511DC1    push        dword ptr fs:[eax]
 00511DC4    mov         dword ptr fs:[eax],esp
 00511DC7    push        511ED0;'Noté sur'
 00511DCC    push        0
 00511DCE    push        1
 00511DD0    mov         ecx,ebx
 00511DD2    mov         dl,1
 00511DD4    mov         eax,[004CA40C];TFormEdit
 00511DD9    call        TFormEdit.Create;TFormEdit.Create
 00511DDE    mov         edx,dword ptr ds:[616280];^gvar_00617CE0:TFormEdit
 00511DE4    mov         dword ptr [edx],eax
 00511DE6    mov         eax,[00616280];^gvar_00617CE0:TFormEdit
 00511DEB    mov         eax,dword ptr [eax]
 00511DED    mov         edx,dword ptr [eax]
 00511DEF    call        dword ptr [edx+0D8]
 00511DF5    mov         eax,[00616280];^gvar_00617CE0:TFormEdit
 00511DFA    mov         eax,dword ptr [eax]
 00511DFC    cmp         dword ptr [eax+234],1
>00511E03    jne         00511E90
 00511E09    lea         edx,[ebp-4]
 00511E0C    mov         eax,[00616280];^gvar_00617CE0:TFormEdit
 00511E11    mov         eax,dword ptr [eax]
 00511E13    mov         eax,dword ptr [eax+2D0]
 00511E19    call        TControl.GetText
 00511E1E    mov         edx,dword ptr [ebp-4]
 00511E21    mov         eax,dword ptr [ebx+2EC];TFormTransformerSeries.ComboBox1:TComboBox
 00511E27    mov         eax,dword ptr [eax+1F0];TComboBox.FItems:TStrings
 00511E2D    mov         ecx,dword ptr [eax]
 00511E2F    call        dword ptr [ecx+50];TStrings.IndexOf
 00511E32    inc         eax
>00511E33    jne         00511E5E
 00511E35    lea         edx,[ebp-8]
 00511E38    mov         eax,[00616280];^gvar_00617CE0:TFormEdit
 00511E3D    mov         eax,dword ptr [eax]
 00511E3F    mov         eax,dword ptr [eax+2D0]
 00511E45    call        TControl.GetText
 00511E4A    mov         edx,dword ptr [ebp-8]
 00511E4D    mov         eax,dword ptr [ebx+2EC];TFormTransformerSeries.ComboBox1:TComboBox
 00511E53    mov         eax,dword ptr [eax+1F0];TComboBox.FItems:TStrings
 00511E59    mov         ecx,dword ptr [eax]
 00511E5B    call        dword ptr [ecx+34];TStrings.Add
 00511E5E    lea         edx,[ebp-0C]
 00511E61    mov         eax,[00616280];^gvar_00617CE0:TFormEdit
 00511E66    mov         eax,dword ptr [eax]
 00511E68    mov         eax,dword ptr [eax+2D0]
 00511E6E    call        TControl.GetText
 00511E73    mov         edx,dword ptr [ebp-0C]
 00511E76    mov         esi,dword ptr [ebx+2EC];TFormTransformerSeries.ComboBox1:TComboBox
 00511E7C    mov         eax,dword ptr [esi+1F0];TComboBox.FItems:TStrings
 00511E82    mov         ecx,dword ptr [eax]
 00511E84    call        dword ptr [ecx+50];TStrings.IndexOf
 00511E87    mov         edx,eax
 00511E89    mov         eax,esi
 00511E8B    call        TCustomComboBox.SetItemIndex
 00511E90    mov         eax,[00616280];^gvar_00617CE0:TFormEdit
 00511E95    mov         eax,dword ptr [eax]
 00511E97    mov         dl,1
 00511E99    mov         ecx,dword ptr [eax]
 00511E9B    call        dword ptr [ecx-4]
 00511E9E    xor         eax,eax
 00511EA0    pop         edx
 00511EA1    pop         ecx
 00511EA2    pop         ecx
 00511EA3    mov         dword ptr fs:[eax],edx
 00511EA6    push        511EC0
 00511EAB    lea         eax,[ebp-0C]
 00511EAE    mov         edx,3
 00511EB3    call        @LStrArrayClr
 00511EB8    ret
>00511EB9    jmp         @HandleFinally
>00511EBE    jmp         00511EAB
 00511EC0    pop         esi
 00511EC1    pop         ebx
 00511EC2    mov         esp,ebp
 00511EC4    pop         ebp
 00511EC5    ret
*}
end;

//00511EDC
procedure TFormTransformerSeries.SpeedButton1Click(Sender:TObject);
begin
{*
 00511EDC    push        ebp
 00511EDD    mov         ebp,esp
 00511EDF    add         esp,0FFFFF4A0
 00511EE5    push        ebx
 00511EE6    push        esi
 00511EE7    push        edi
 00511EE8    xor         ecx,ecx
 00511EEA    mov         dword ptr [ebp-0B5C],ecx
 00511EF0    mov         dword ptr [ebp-0B60],ecx
 00511EF6    mov         dword ptr [ebp-0B54],ecx
 00511EFC    mov         dword ptr [ebp-0B58],ecx
 00511F02    mov         dword ptr [ebp-0B50],ecx
 00511F08    mov         dword ptr [ebp-0B4C],ecx
 00511F0E    mov         dword ptr [ebp-0B44],ecx
 00511F14    mov         dword ptr [ebp-0B30],ecx
 00511F1A    mov         dword ptr [ebp-0A28],ecx
 00511F20    mov         dword ptr [ebp-0A2C],ecx
 00511F26    mov         dword ptr [ebp-4],eax
 00511F29    xor         eax,eax
 00511F2B    push        ebp
 00511F2C    push        512629
 00511F31    push        dword ptr fs:[eax]
 00511F34    mov         dword ptr fs:[eax],esp
 00511F37    mov         eax,dword ptr [ebp-4]
 00511F3A    mov         eax,dword ptr [eax+2E4];TFormTransformerSeries.ListBox2:TListBox
 00511F40    call        TCustomListBox.GetItemIndex
 00511F45    inc         eax
>00511F46    je          005125D8
 00511F4C    mov         eax,dword ptr [ebp-4]
 00511F4F    mov         eax,dword ptr [eax+314];TFormTransformerSeries.?f314:dword
 00511F55    mov         dword ptr [ebp-20],eax
 00511F58    mov         eax,dword ptr [ebp-4]
 00511F5B    mov         ebx,dword ptr [eax+2EC];TFormTransformerSeries.ComboBox1:TComboBox
 00511F61    mov         eax,ebx
 00511F63    call        TCustomComboBox.GetItemIndex
 00511F68    mov         edx,eax
 00511F6A    lea         ecx,[ebp-0A28]
 00511F70    mov         eax,dword ptr [ebx+1F0];TComboBox.FItems:TStrings
 00511F76    mov         ebx,dword ptr [eax]
 00511F78    call        dword ptr [ebx+0C];TStrings.Get
 00511F7B    mov         eax,dword ptr [ebp-0A28]
 00511F81    push        eax
 00511F82    lea         eax,[ebp-0B2C]
 00511F88    push        eax
 00511F89    mov         eax,dword ptr [ebp-4]
 00511F8C    mov         eax,dword ptr [eax+2E4];TFormTransformerSeries.ListBox2:TListBox
 00511F92    call        TCustomListBox.GetItemIndex
 00511F97    add         eax,1
>00511F9A    jno         00511FA1
 00511F9C    call        @IntOver
 00511FA1    cmp         eax,0FF
>00511FA6    jbe         00511FAD
 00511FA8    call        @BoundErr
 00511FAD    push        eax
 00511FAE    mov         eax,dword ptr [ebp-4]
 00511FB1    mov         eax,dword ptr [eax+2E0];TFormTransformerSeries.TabControl1:TTabControl
 00511FB7    call        TCustomTabControl.GetTabIndex
 00511FBC    mov         edx,eax
 00511FBE    add         edx,1
>00511FC1    jno         00511FC8
 00511FC3    call        @IntOver
 00511FC8    cmp         edx,0FF
>00511FCE    jbe         00511FD5
 00511FD0    call        @BoundErr
 00511FD5    mov         eax,dword ptr [ebp-20]
 00511FD8    pop         ecx
 00511FD9    call        004BED2C
 00511FDE    lea         edx,[ebp-0B2C]
 00511FE4    lea         eax,[ebp-0A2C]
 00511FEA    call        @LStrFromString
 00511FEF    mov         edx,dword ptr [ebp-0A2C]
 00511FF5    pop         eax
 00511FF6    call        @LStrCmp
>00511FFB    je          005125E5
 00512001    mov         eax,dword ptr [ebp-4]
 00512004    mov         ebx,dword ptr [eax+2EC];TFormTransformerSeries.ComboBox1:TComboBox
 0051200A    mov         eax,ebx
 0051200C    call        TCustomComboBox.GetItemIndex
 00512011    mov         edx,eax
 00512013    lea         ecx,[ebp-0B30]
 00512019    mov         eax,dword ptr [ebx+1F0];TComboBox.FItems:TStrings
 0051201F    mov         ebx,dword ptr [eax]
 00512021    call        dword ptr [ebx+0C];TStrings.Get
 00512024    mov         eax,dword ptr [ebp-0B30]
 0051202A    call        StrToInt
 0051202F    mov         dword ptr [ebp-0B34],eax
 00512035    fild        dword ptr [ebp-0B34]
 0051203B    fstp        tbyte ptr [ebp-0B40]
 00512041    wait
 00512042    lea         eax,[ebp-0B2C]
 00512048    push        eax
 00512049    mov         eax,dword ptr [ebp-4]
 0051204C    mov         eax,dword ptr [eax+2E4];TFormTransformerSeries.ListBox2:TListBox
 00512052    call        TCustomListBox.GetItemIndex
 00512057    add         eax,1
>0051205A    jno         00512061
 0051205C    call        @IntOver
 00512061    cmp         eax,0FF
>00512066    jbe         0051206D
 00512068    call        @BoundErr
 0051206D    push        eax
 0051206E    mov         eax,dword ptr [ebp-4]
 00512071    mov         eax,dword ptr [eax+2E0];TFormTransformerSeries.TabControl1:TTabControl
 00512077    call        TCustomTabControl.GetTabIndex
 0051207C    mov         edx,eax
 0051207E    add         edx,1
>00512081    jno         00512088
 00512083    call        @IntOver
 00512088    cmp         edx,0FF
>0051208E    jbe         00512095
 00512090    call        @BoundErr
 00512095    mov         eax,dword ptr [ebp-20]
 00512098    pop         ecx
 00512099    call        004BED2C
 0051209E    lea         edx,[ebp-0B2C]
 005120A4    lea         eax,[ebp-0B44]
 005120AA    call        @LStrFromString
 005120AF    mov         eax,dword ptr [ebp-0B44]
 005120B5    call        StrToInt
 005120BA    mov         dword ptr [ebp-0B48],eax
 005120C0    fild        dword ptr [ebp-0B48]
 005120C6    fld         tbyte ptr [ebp-0B40]
 005120CC    fdivrp      st(1),st
 005120CE    fstp        tbyte ptr [ebp-10]
 005120D1    wait
 005120D2    mov         eax,dword ptr [ebp-4]
 005120D5    mov         eax,dword ptr [eax+2E0];TFormTransformerSeries.TabControl1:TTabControl
 005120DB    call        TCustomTabControl.GetTabIndex
 005120E0    add         eax,1
>005120E3    jno         005120EA
 005120E5    call        @IntOver
 005120EA    mov         edx,dword ptr [ebp-4]
 005120ED    mov         dword ptr [edx+318],eax;TFormTransformerSeries.?f318:dword
 005120F3    mov         eax,dword ptr [ebp-4]
 005120F6    mov         eax,dword ptr [eax+2E4];TFormTransformerSeries.ListBox2:TListBox
 005120FC    call        TCustomListBox.GetItemIndex
 00512101    add         eax,1
>00512104    jno         0051210B
 00512106    call        @IntOver
 0051210B    mov         dword ptr [ebp-18],eax
 0051210E    mov         eax,dword ptr [ebp-4]
 00512111    mov         eax,dword ptr [eax+2E4];TFormTransformerSeries.ListBox2:TListBox
 00512117    call        TCustomListBox.GetItemIndex
 0051211C    add         eax,1
>0051211F    jno         00512126
 00512121    call        @IntOver
 00512126    mov         dword ptr [ebp-1C],eax
 00512129    mov         eax,dword ptr [ebp-4]
 0051212C    mov         ebx,dword ptr [eax+2EC];TFormTransformerSeries.ComboBox1:TComboBox
 00512132    mov         eax,ebx
 00512134    call        TCustomComboBox.GetItemIndex
 00512139    mov         edx,eax
 0051213B    lea         ecx,[ebp-0B4C]
 00512141    mov         eax,dword ptr [ebx+1F0];TComboBox.FItems:TStrings
 00512147    mov         ebx,dword ptr [eax]
 00512149    call        dword ptr [ebx+0C];TStrings.Get
 0051214C    mov         edx,dword ptr [ebp-0B4C]
 00512152    lea         eax,[ebp-124]
 00512158    mov         ecx,0FF
 0051215D    call        @LStrToString
 00512162    mov         eax,dword ptr [ebp-4]
 00512165    mov         eax,dword ptr [eax+304];TFormTransformerSeries.CheckBox1:TCheckBox
 0051216B    mov         edx,dword ptr [eax]
 0051216D    call        dword ptr [edx+0B4];TCustomCheckBox.GetChecked
 00512173    test        al,al
>00512175    je          005123B9
 0051217B    lea         eax,[ebp-424]
 00512181    push        eax
 00512182    mov         ebx,dword ptr [ebp-18]
 00512185    cmp         ebx,0FF
>0051218B    jbe         00512192
 0051218D    call        @BoundErr
 00512192    mov         ecx,ebx
 00512194    mov         eax,dword ptr [ebp-4]
 00512197    mov         edx,dword ptr [eax+318];TFormTransformerSeries.?f318:dword
 0051219D    cmp         edx,0FF
>005121A3    jbe         005121AA
 005121A5    call        @BoundErr
 005121AA    mov         eax,dword ptr [ebp-20]
 005121AD    call        004BED04
 005121B2    lea         eax,[ebp-524]
 005121B8    push        eax
 005121B9    mov         eax,dword ptr [ebp-18]
 005121BC    cmp         eax,0FF
>005121C1    jbe         005121C8
 005121C3    call        @BoundErr
 005121C8    mov         ecx,ebx
 005121CA    mov         eax,dword ptr [ebp-4]
 005121CD    mov         edx,dword ptr [eax+318];TFormTransformerSeries.?f318:dword
 005121D3    cmp         edx,0FF
>005121D9    jbe         005121E0
 005121DB    call        @BoundErr
 005121E0    mov         eax,dword ptr [ebp-20]
 005121E3    call        004BED7C
 005121E8    lea         eax,[ebp-624]
 005121EE    push        eax
 005121EF    mov         eax,dword ptr [ebp-18]
 005121F2    cmp         eax,0FF
>005121F7    jbe         005121FE
 005121F9    call        @BoundErr
 005121FE    mov         ecx,ebx
 00512200    mov         eax,dword ptr [ebp-4]
 00512203    mov         edx,dword ptr [eax+318];TFormTransformerSeries.?f318:dword
 00512209    cmp         edx,0FF
>0051220F    jbe         00512216
 00512211    call        @BoundErr
 00512216    mov         eax,dword ptr [ebp-20]
 00512219    call        004BEDCC
 0051221E    call        Date
 00512223    add         esp,0FFFFFFF8
 00512226    fstp        qword ptr [esp]
 00512229    wait
 0051222A    lea         eax,[ebp-0B50]
 00512230    call        DateToStr
 00512235    mov         edx,dword ptr [ebp-0B50]
 0051223B    lea         eax,[ebp-724]
 00512241    mov         ecx,0FF
 00512246    call        @LStrToString
 0051224B    lea         eax,[ebp-824]
 00512251    push        eax
 00512252    mov         eax,dword ptr [ebp-18]
 00512255    cmp         eax,0FF
>0051225A    jbe         00512261
 0051225C    call        @BoundErr
 00512261    mov         ecx,ebx
 00512263    mov         eax,dword ptr [ebp-4]
 00512266    mov         edx,dword ptr [eax+318];TFormTransformerSeries.?f318:dword
 0051226C    cmp         edx,0FF
>00512272    jbe         00512279
 00512274    call        @BoundErr
 00512279    mov         eax,dword ptr [ebp-20]
 0051227C    call        004BEE6C
 00512281    lea         eax,[ebp-224]
 00512287    push        eax
 00512288    mov         eax,dword ptr [ebp-18]
 0051228B    cmp         eax,0FF
>00512290    jbe         00512297
 00512292    call        @BoundErr
 00512297    mov         ecx,ebx
 00512299    mov         eax,dword ptr [ebp-4]
 0051229C    mov         edx,dword ptr [eax+318];TFormTransformerSeries.?f318:dword
 005122A2    cmp         edx,0FF
>005122A8    jbe         005122AF
 005122AA    call        @BoundErr
 005122AF    mov         eax,dword ptr [ebp-20]
 005122B2    call        004BEEBC
 005122B7    lea         eax,[ebp-0B2C]
 005122BD    push        eax
 005122BE    mov         eax,dword ptr [ebp-18]
 005122C1    cmp         eax,0FF
>005122C6    jbe         005122CD
 005122C8    call        @BoundErr
 005122CD    mov         ecx,ebx
 005122CF    mov         eax,dword ptr [ebp-4]
 005122D2    mov         edx,dword ptr [eax+318];TFormTransformerSeries.?f318:dword
 005122D8    cmp         edx,0FF
>005122DE    jbe         005122E5
 005122E0    call        @BoundErr
 005122E5    mov         eax,dword ptr [ebp-20]
 005122E8    call        004BEF0C
 005122ED    lea         eax,[ebp-0B2C]
 005122F3    mov         edx,512638;'Oral'
 005122F8    xor         ecx,ecx
 005122FA    mov         cl,byte ptr [eax]
 005122FC    inc         ecx
 005122FD    call        @AStrCmp
 00512302    sete        al
 00512305    mov         ebx,eax
 00512307    lea         eax,[ebp-124]
 0051230D    push        eax
 0051230E    lea         eax,[ebp-524]
 00512314    push        eax
 00512315    lea         eax,[ebp-624]
 0051231B    push        eax
 0051231C    lea         eax,[ebp-724]
 00512322    push        eax
 00512323    lea         eax,[ebp-824]
 00512329    push        eax
 0051232A    lea         eax,[ebp-224]
 00512330    push        eax
 00512331    push        ebx
 00512332    lea         eax,[ebp-0B58]
 00512338    lea         edx,[ebp-424]
 0051233E    call        @LStrFromString
 00512343    mov         ecx,dword ptr [ebp-0B58]
 00512349    lea         eax,[ebp-0B54]
 0051234F    mov         edx,512648;'Copie de '
 00512354    call        @LStrCat3
 00512359    mov         edx,dword ptr [ebp-0B54]
 0051235F    lea         eax,[ebp-0B2C]
 00512365    mov         ecx,0FF
 0051236A    call        @LStrToString
 0051236F    lea         ecx,[ebp-0B2C]
 00512375    mov         eax,dword ptr [ebp-4]
 00512378    mov         edx,dword ptr [eax+318];TFormTransformerSeries.?f318:dword
 0051237E    cmp         edx,0FF
>00512384    jbe         0051238B
 00512386    call        @BoundErr
 0051238B    mov         eax,dword ptr [ebp-20]
 0051238E    call        004BF7F0
 00512393    mov         eax,dword ptr [ebp-4]
 00512396    mov         edx,dword ptr [eax+318];TFormTransformerSeries.?f318:dword
 0051239C    cmp         edx,0FF
>005123A2    jbe         005123A9
 005123A4    call        @BoundErr
 005123A9    mov         eax,dword ptr [ebp-20]
 005123AC    call        004BEAD0
 005123B1    and         eax,0FF
 005123B6    mov         dword ptr [ebp-1C],eax
 005123B9    lea         eax,[ebp-124]
 005123BF    push        eax
 005123C0    mov         ecx,dword ptr [ebp-1C]
 005123C3    cmp         ecx,0FF
>005123C9    jbe         005123D0
 005123CB    call        @BoundErr
 005123D0    mov         eax,dword ptr [ebp-4]
 005123D3    mov         edx,dword ptr [eax+318];TFormTransformerSeries.?f318:dword
 005123D9    cmp         edx,0FF
>005123DF    jbe         005123E6
 005123E1    call        @BoundErr
 005123E6    mov         eax,dword ptr [ebp-20]
 005123E9    call        004C48BC
 005123EE    mov         eax,dword ptr [ebp-4]
 005123F1    mov         eax,dword ptr [eax+30C];TFormTransformerSeries.CheckBox2:TCheckBox
 005123F7    mov         edx,dword ptr [eax]
 005123F9    call        dword ptr [edx+4C];TGroupBox.GetEnabled
 005123FC    test        al,al
>005123FE    je          00512448
 00512400    mov         eax,dword ptr [ebp-4]
 00512403    mov         eax,dword ptr [eax+30C];TFormTransformerSeries.CheckBox2:TCheckBox
 00512409    mov         edx,dword ptr [eax]
 0051240B    call        dword ptr [edx+0B4];TCustomCheckBox.GetChecked
 00512411    test        al,al
>00512413    je          00512448
 00512415    push        512654
 0051241A    mov         ecx,dword ptr [ebp-18]
 0051241D    cmp         ecx,0FF
>00512423    jbe         0051242A
 00512425    call        @BoundErr
 0051242A    mov         eax,dword ptr [ebp-4]
 0051242D    mov         edx,dword ptr [eax+318];TFormTransformerSeries.?f318:dword
 00512433    cmp         edx,0FF
>00512439    jbe         00512440
 0051243B    call        @BoundErr
 00512440    mov         eax,dword ptr [ebp-20]
 00512443    call        004C0FA0
 00512448    mov         eax,dword ptr [ebp-20]
 0051244B    call        004BEA58
 00512450    and         eax,0FF
 00512455    test        eax,eax
>00512457    jle         005125C9
 0051245D    mov         dword ptr [ebp-24],eax
 00512460    mov         dword ptr [ebp-14],1
 00512467    xor         eax,eax
 00512469    push        ebp
 0051246A    push        512591
 0051246F    push        dword ptr fs:[eax]
 00512472    mov         dword ptr fs:[eax],esp
 00512475    mov         ebx,dword ptr [ebp-14]
 00512478    cmp         ebx,0FF
>0051247E    jbe         00512485
 00512480    call        @BoundErr
 00512485    push        ebx
 00512486    lea         eax,[ebp-324]
 0051248C    push        eax
 0051248D    mov         ecx,dword ptr [ebp-18]
 00512490    cmp         ecx,0FF
>00512496    jbe         0051249D
 00512498    call        @BoundErr
 0051249D    mov         eax,dword ptr [ebp-4]
 005124A0    mov         edx,dword ptr [eax+318];TFormTransformerSeries.?f318:dword
 005124A6    cmp         edx,0FF
>005124AC    jbe         005124B3
 005124AE    call        @BoundErr
 005124B3    mov         eax,dword ptr [ebp-20]
 005124B6    call        004BEF5C
 005124BB    lea         eax,[ebp-0B60]
 005124C1    lea         edx,[ebp-324]
 005124C7    call        @LStrFromString
 005124CC    mov         eax,dword ptr [ebp-0B60]
 005124D2    call        StrToFloat
 005124D7    fld         tbyte ptr [ebp-10]
 005124DA    fmulp       st(1),st
 005124DC    add         esp,0FFFFFFF4
 005124DF    fstp        tbyte ptr [esp]
 005124E2    wait
 005124E3    lea         eax,[ebp-0B5C]
 005124E9    push        eax
 005124EA    mov         ecx,2
 005124EF    mov         edx,12
 005124F4    mov         al,2
 005124F6    call        FloatToStrF
 005124FB    mov         edx,dword ptr [ebp-0B5C]
 00512501    lea         eax,[ebp-924]
 00512507    mov         ecx,0FF
 0051250C    call        @LStrToString
 00512511    lea         eax,[ebp-0A24]
 00512517    push        eax
 00512518    mov         eax,dword ptr [ebp-4]
 0051251B    mov         eax,dword ptr [eax+300];TFormTransformerSeries.RadioGroup1:TRadioGroup
 00512521    mov         ecx,dword ptr [eax+200];TRadioGroup.FItemIndex:Integer
 00512527    cmp         ecx,0FF
>0051252D    jbe         00512534
 0051252F    call        @BoundErr
 00512534    lea         edx,[ebp-924]
 0051253A    mov         eax,dword ptr [ebp-20]
 0051253D    call        004C2410
 00512542    mov         eax,dword ptr [ebp-14]
 00512545    cmp         eax,0FF
>0051254A    jbe         00512551
 0051254C    call        @BoundErr
 00512551    push        ebx
 00512552    lea         eax,[ebp-0A24]
 00512558    push        eax
 00512559    mov         ecx,dword ptr [ebp-1C]
 0051255C    cmp         ecx,0FF
>00512562    jbe         00512569
 00512564    call        @BoundErr
 00512569    mov         eax,dword ptr [ebp-4]
 0051256C    mov         edx,dword ptr [eax+318];TFormTransformerSeries.?f318:dword
 00512572    cmp         edx,0FF
>00512578    jbe         0051257F
 0051257A    call        @BoundErr
 0051257F    mov         eax,dword ptr [ebp-20]
 00512582    call        004C1074
 00512587    xor         eax,eax
 00512589    pop         edx
 0051258A    pop         ecx
 0051258B    pop         ecx
 0051258C    mov         dword ptr fs:[eax],edx
>0051258F    jmp         005125BD
>00512591    jmp         @HandleOnException
 00512596    dd          2
 0051259A    dd          00409B50;EConvertError
 0051259E    dd          005125AA
 005125A2    dd          004098E0;EMathError
 005125A6    dd          005125B1
 005125AA    call        @DoneExcept
>005125AF    jmp         005125BD
 005125B1    call        @DoneExcept
>005125B6    jmp         005125BD
 005125B8    call        @DoneExcept
 005125BD    inc         dword ptr [ebp-14]
 005125C0    dec         dword ptr [ebp-24]
>005125C3    jne         00512467
 005125C9    mov         eax,dword ptr [ebp-4]
 005125CC    mov         dword ptr [eax+234],1;TFormTransformerSeries.FModalResult:TModalResult
>005125D6    jmp         005125E5
 005125D8    mov         eax,dword ptr [ebp-4]
 005125DB    mov         dword ptr [eax+234],2;TFormTransformerSeries.FModalResult:TModalResult
 005125E5    xor         eax,eax
 005125E7    pop         edx
 005125E8    pop         ecx
 005125E9    pop         ecx
 005125EA    mov         dword ptr fs:[eax],edx
 005125ED    push        512630
 005125F2    lea         eax,[ebp-0B60]
 005125F8    mov         edx,6
 005125FD    call        @LStrArrayClr
 00512602    lea         eax,[ebp-0B44]
 00512608    call        @LStrClr
 0051260D    lea         eax,[ebp-0B30]
 00512613    call        @LStrClr
 00512618    lea         eax,[ebp-0A2C]
 0051261E    mov         edx,2
 00512623    call        @LStrArrayClr
 00512628    ret
>00512629    jmp         @HandleFinally
>0051262E    jmp         005125F2
 00512630    pop         edi
 00512631    pop         esi
 00512632    pop         ebx
 00512633    mov         esp,ebp
 00512635    pop         ebp
 00512636    ret
*}
end;

//00512658
procedure TFormTransformerSeries.ComboBox1Change(Sender:TObject);
begin
{*
 00512658    push        ebp
 00512659    mov         ebp,esp
 0051265B    push        0
 0051265D    push        0
 0051265F    push        ebx
 00512660    push        esi
 00512661    mov         ebx,eax
 00512663    xor         eax,eax
 00512665    push        ebp
 00512666    push        5126E8
 0051266B    push        dword ptr fs:[eax]
 0051266E    mov         dword ptr fs:[eax],esp
 00512671    mov         eax,dword ptr [ebx+2E4];TFormTransformerSeries.ListBox2:TListBox
 00512677    call        TCustomListBox.GetItemIndex
 0051267C    inc         eax
>0051267D    je          005126B9
 0051267F    lea         edx,[ebp-4]
 00512682    mov         eax,dword ptr [ebx+2F0];TFormTransformerSeries.Edit1:TEdit
 00512688    call        TControl.GetText
 0051268D    mov         eax,dword ptr [ebp-4]
 00512690    push        eax
 00512691    mov         esi,dword ptr [ebx+2EC];TFormTransformerSeries.ComboBox1:TComboBox
 00512697    mov         eax,esi
 00512699    call        TCustomComboBox.GetItemIndex
 0051269E    mov         edx,eax
 005126A0    lea         ecx,[ebp-8]
 005126A3    mov         eax,dword ptr [esi+1F0];TComboBox.FItems:TStrings
 005126A9    mov         esi,dword ptr [eax]
 005126AB    call        dword ptr [esi+0C];TStrings.Get
 005126AE    mov         edx,dword ptr [ebp-8]
 005126B1    pop         eax
 005126B2    call        @LStrCmp
>005126B7    jne         005126BD
 005126B9    xor         edx,edx
>005126BB    jmp         005126BF
 005126BD    mov         dl,1
 005126BF    mov         eax,dword ptr [ebx+2FC];TFormTransformerSeries.SpeedButton1:TSpeedButton
 005126C5    mov         ecx,dword ptr [eax]
 005126C7    call        dword ptr [ecx+5C];TControl.SetEnabled
 005126CA    xor         eax,eax
 005126CC    pop         edx
 005126CD    pop         ecx
 005126CE    pop         ecx
 005126CF    mov         dword ptr fs:[eax],edx
 005126D2    push        5126EF
 005126D7    lea         eax,[ebp-8]
 005126DA    call        @LStrClr
 005126DF    lea         eax,[ebp-4]
 005126E2    call        @LStrClr
 005126E7    ret
>005126E8    jmp         @HandleFinally
>005126ED    jmp         005126D7
 005126EF    pop         esi
 005126F0    pop         ebx
 005126F1    pop         ecx
 005126F2    pop         ecx
 005126F3    pop         ebp
 005126F4    ret
*}
end;

//005126F8
procedure TFormTransformerSeries.CheckBox1Click(Sender:TObject);
begin
{*
 005126F8    push        ebx
 005126F9    mov         ebx,eax
 005126FB    mov         eax,dword ptr [ebx+304];TFormTransformerSeries.CheckBox1:TCheckBox
 00512701    mov         edx,dword ptr [eax]
 00512703    call        dword ptr [edx+0B4];TCustomCheckBox.GetChecked
 00512709    mov         edx,eax
 0051270B    mov         eax,dword ptr [ebx+30C];TFormTransformerSeries.CheckBox2:TCheckBox
 00512711    mov         ecx,dword ptr [eax]
 00512713    call        dword ptr [ecx+5C];TControl.SetEnabled
 00512716    mov         eax,dword ptr [ebx+304];TFormTransformerSeries.CheckBox1:TCheckBox
 0051271C    mov         edx,dword ptr [eax]
 0051271E    call        dword ptr [edx+0B4];TCustomCheckBox.GetChecked
 00512724    mov         edx,eax
 00512726    mov         eax,dword ptr [ebx+310];TFormTransformerSeries.CheckBox3:TCheckBox
 0051272C    mov         ecx,dword ptr [eax]
 0051272E    call        dword ptr [ecx+5C];TControl.SetEnabled
 00512731    pop         ebx
 00512732    ret
*}
end;

//00512734
procedure TFormTransformerSeries.FormKeyPress(Sender:TObject; var Key:Char);
begin
{*
 00512734    cmp         byte ptr [ecx],0D
>00512737    jne         00512744
 00512739    mov         dword ptr [eax+234],1;TFormTransformerSeries.FModalResult:TModalResult
 00512743    ret
 00512744    cmp         byte ptr [ecx],1B
>00512747    jne         00512753
 00512749    mov         dword ptr [eax+234],2;TFormTransformerSeries.FModalResult:TModalResult
 00512753    ret
*}
end;

end.