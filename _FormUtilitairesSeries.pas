{***************************************
* Version Original V0.01
* Decompiled by HOUIDEF AEK v.05.02.2018
***************************************}
unit _FormUtilitairesSeries;

interface

uses
  Forms,Windows, SysUtils, Classes, ExtCtrls, StdCtrls, ComCtrls, Buttons, Controls, UFichierCdn,Unit111;

type
  TFormUtilitairesSeries = class(TForm)
  published
    Panel2:TPanel;//f2D0
    Bevel2:TBevel;//f2D4
    Image1:TImage;//f2D8
    RadioGroup1:TRadioGroup;//f2DC
    ListBoxSeriesConcernees:TListBox;//f2E0
    Label1:TLabel;//f2E4
    TabControl1:TTabControl;//f2E8
    btnSupprimerSerie:TSpeedButton;//f2EC
    btnAjouterSerie:TSpeedButton;//f2F0
    ListBox2:TListBox;//f2F4
    SpeedButton15:TSpeedButton;//f2F8
    btnCreerSerie:TSpeedButton;//f2FC
    CheckBox1:TCheckBox;//f300
    Label2:TLabel;//f304
    ComboBox1:TComboBox;//f308
    Label3:TLabel;//f30C
    CheckBox2:TCheckBox;//f310
    Label4:TLabel;//f314
    CheckBox3:TCheckBox;//f318
    Label5:TLabel;//f31C
    RadioGroup2:TRadioGroup;//f320
    Label6:TLabel;//f324
    ComboBox2:TComboBox;//f328
    RadioGroupEcritOuOral:TRadioGroup;//f32C
    procedure btnCreerSerieClick(Sender:TObject);//00510544
    procedure ListBoxSeriesConcerneesDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);//005101A0
    procedure CheckBox1Click(Sender:TObject);//005113C4
    procedure FormKeyPress(Sender:TObject; var Key:Char);//00511404
    procedure RadioGroup1Click(Sender:TObject);//005113E8
    procedure TabControl1Change(Sender:TObject);//0050FC18
    procedure SpeedButton15Click(Sender:TObject);//0050FC0C
    procedure btnAjouterSerieClick(Sender:TObject);//0050FD20
    procedure ListBox2DrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);//00510034
    procedure btnSupprimerSerieClick(Sender:TObject);//0050FF58
  public
    f330:TFichierCdn;//f330
    f334:dword;//f334
    f730:dword;//f730
    fF28:dword;//fF28
    constructor Create(Owner:TComponent;F:TFichierCdn; Logo:Timage );//0050FA0C

    //procedure sub_0051030C(?:TFormUtilitairesSeries; ?:TStringList; ?:?);//0051030C
    //procedure sub_005103D8(?:?; ?:AnsiString; ?:?; ?:?);//005103D8

  end;
  var
   FormUtilitairesSeries:TFormUtilitairesSeries;
implementation

{$R *.DFM}

//0050FA0C
constructor TFormUtilitairesSeries.Create(Owner:TComponent;F:TFichierCdn; Logo:Timage );
var
  I:integer;
  buf:string;
begin//0
  //0050FA0C
    //0050FA3B

    inherited Create(Owner);
    Image1.Picture := logo.Picture;
    f330 := F;
    TabControl1.Tabs := F.sub_004BEA4C;
    ComboBox1.Items := f330.sub_004BEA4C;
    ComboBox1.ItemIndex := 0;
    ComboBox2.Items := sub_004B9794;
    ComboBox2.ItemIndex := 0;
      for I := 1 to f330.sub_004BEAD0(TabControl1.TabIndex + 1) do //0050FAFA
      begin//3
        //0050FB01
        f330.sub_004BED04( TabControl1.TabIndex + 1, Buf, I);
        ListBox2.Items.Add(buf);
      end;//3
    
    CheckBox2.Checked := True;
    CheckBox3.Checked := True;
    if (f330.sub_004C4790 >= 255{gvar_00617903}) then
    begin//2
      //0050FBA1
      CheckBox1.Enabled := False;
      CheckBox1.Checked := True;
      Label3.Enabled := False;
    end;//2
end;//0

//0050FC0C
procedure TFormUtilitairesSeries.SpeedButton15Click(Sender:TObject);
begin
 ModalResult :=2;
end;

//0050FC18
procedure TFormUtilitairesSeries.TabControl1Change(Sender:TObject);
begin
{*
 0050FC18    push        ebp
 0050FC19    mov         ebp,esp
 0050FC1B    add         esp,0FFFFFEF4
 0050FC21    push        ebx
 0050FC22    push        esi
 0050FC23    xor         ecx,ecx
 0050FC25    mov         dword ptr [ebp-0C],ecx
 0050FC28    mov         ebx,eax
 0050FC2A    xor         eax,eax
 0050FC2C    push        ebp
 0050FC2D    push        50FD12
 0050FC32    push        dword ptr fs:[eax]
 0050FC35    mov         dword ptr fs:[eax],esp
 0050FC38    mov         eax,dword ptr [ebx+2F4];TFormUtilitairesSeries.ListBox2:TListBox
 0050FC3E    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 0050FC44    mov         edx,dword ptr [eax]
 0050FC46    call        dword ptr [edx+40];TStrings.Clear
 0050FC49    mov         eax,dword ptr [ebx+330];TFormUtilitairesSeries.?f330:dword
 0050FC4F    mov         dword ptr [ebp-8],eax
 0050FC52    mov         eax,dword ptr [ebx+2E8];TFormUtilitairesSeries.TabControl1:TTabControl
 0050FC58    call        TCustomTabControl.GetTabIndex
 0050FC5D    mov         edx,eax
 0050FC5F    add         edx,1
>0050FC62    jno         0050FC69
 0050FC64    call        @IntOver
 0050FC69    cmp         edx,0FF
>0050FC6F    jbe         0050FC76
 0050FC71    call        @BoundErr
 0050FC76    mov         eax,dword ptr [ebp-8]
 0050FC79    call        004BEAD0
 0050FC7E    mov         esi,eax
 0050FC80    and         esi,0FF
 0050FC86    test        esi,esi
>0050FC88    jle         0050FCFC
 0050FC8A    mov         dword ptr [ebp-4],1
 0050FC91    lea         eax,[ebp-10C]
 0050FC97    push        eax
 0050FC98    mov         eax,dword ptr [ebx+2E8];TFormUtilitairesSeries.TabControl1:TTabControl
 0050FC9E    call        TCustomTabControl.GetTabIndex
 0050FCA3    mov         edx,eax
 0050FCA5    add         edx,1
>0050FCA8    jno         0050FCAF
 0050FCAA    call        @IntOver
 0050FCAF    cmp         edx,0FF
>0050FCB5    jbe         0050FCBC
 0050FCB7    call        @BoundErr
 0050FCBC    mov         ecx,dword ptr [ebp-4]
 0050FCBF    cmp         ecx,0FF
>0050FCC5    jbe         0050FCCC
 0050FCC7    call        @BoundErr
 0050FCCC    mov         eax,dword ptr [ebp-8]
 0050FCCF    call        004BED04
 0050FCD4    lea         edx,[ebp-10C]
 0050FCDA    lea         eax,[ebp-0C]
 0050FCDD    call        @LStrFromString
 0050FCE2    mov         edx,dword ptr [ebp-0C]
 0050FCE5    mov         eax,dword ptr [ebx+2F4];TFormUtilitairesSeries.ListBox2:TListBox
 0050FCEB    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 0050FCF1    mov         ecx,dword ptr [eax]
 0050FCF3    call        dword ptr [ecx+34];TStrings.Add
 0050FCF6    inc         dword ptr [ebp-4]
 0050FCF9    dec         esi
>0050FCFA    jne         0050FC91
 0050FCFC    xor         eax,eax
 0050FCFE    pop         edx
 0050FCFF    pop         ecx
 0050FD00    pop         ecx
 0050FD01    mov         dword ptr fs:[eax],edx
 0050FD04    push        50FD19
 0050FD09    lea         eax,[ebp-0C]
 0050FD0C    call        @LStrClr
 0050FD11    ret
>0050FD12    jmp         @HandleFinally
>0050FD17    jmp         0050FD09
 0050FD19    pop         esi
 0050FD1A    pop         ebx
 0050FD1B    mov         esp,ebp
 0050FD1D    pop         ebp
 0050FD1E    ret
*}
end;

//0050FD20
procedure TFormUtilitairesSeries.btnAjouterSerieClick(Sender:TObject);
begin
{*
 0050FD20    push        ebp
 0050FD21    mov         ebp,esp
 0050FD23    add         esp,0FFFFFFE4
 0050FD26    push        ebx
 0050FD27    push        esi
 0050FD28    xor         ecx,ecx
 0050FD2A    mov         dword ptr [ebp-14],ecx
 0050FD2D    mov         dword ptr [ebp-18],ecx
 0050FD30    mov         dword ptr [ebp-1C],ecx
 0050FD33    mov         ebx,eax
 0050FD35    xor         eax,eax
 0050FD37    push        ebp
 0050FD38    push        50FF32
 0050FD3D    push        dword ptr fs:[eax]
 0050FD40    mov         dword ptr fs:[eax],esp
 0050FD43    mov         eax,dword ptr [ebx+2E0];TFormUtilitairesSeries.ListBoxSeriesConcernees:TListBox
 0050FD49    mov         dword ptr [ebp-10],eax
 0050FD4C    mov         eax,dword ptr [ebx+2F4];TFormUtilitairesSeries.ListBox2:TListBox
 0050FD52    call        TCustomListBox.GetItemIndex
 0050FD57    inc         eax
>0050FD58    je          0050FF17
 0050FD5E    mov         eax,dword ptr [ebx+2E8];TFormUtilitairesSeries.TabControl1:TTabControl
 0050FD64    call        TCustomTabControl.GetTabIndex
 0050FD69    add         eax,1
>0050FD6C    jno         0050FD73
 0050FD6E    call        @IntOver
 0050FD73    mov         dword ptr [ebp-4],eax
 0050FD76    mov         eax,dword ptr [ebx+2F4];TFormUtilitairesSeries.ListBox2:TListBox
 0050FD7C    call        TCustomListBox.GetItemIndex
 0050FD81    add         eax,1
>0050FD84    jno         0050FD8B
 0050FD86    call        @IntOver
 0050FD8B    mov         dword ptr [ebp-8],eax
 0050FD8E    mov         byte ptr [ebp-9],1
 0050FD92    mov         eax,dword ptr [ebp-10]
 0050FD95    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 0050FD9B    mov         edx,dword ptr [eax]
 0050FD9D    call        dword ptr [edx+14];TStrings.GetCount
 0050FDA0    mov         edx,eax
 0050FDA2    test        edx,edx
>0050FDA4    jle         0050FDFD
 0050FDA6    mov         eax,1
 0050FDAB    mov         esi,eax
 0050FDAD    sub         esi,1
>0050FDB0    jno         0050FDB7
 0050FDB2    call        @IntOver
 0050FDB7    cmp         esi,0FE
>0050FDBD    jbe         0050FDC4
 0050FDBF    call        @BoundErr
 0050FDC4    mov         ecx,dword ptr [ebx+esi*4+334]
 0050FDCB    cmp         ecx,dword ptr [ebp-8]
>0050FDCE    jne         0050FDF9
 0050FDD0    mov         ecx,eax
 0050FDD2    sub         ecx,1
>0050FDD5    jno         0050FDDC
 0050FDD7    call        @IntOver
 0050FDDC    cmp         ecx,0FE
>0050FDE2    jbe         0050FDE9
 0050FDE4    call        @BoundErr
 0050FDE9    mov         ecx,dword ptr [ebx+esi*4+730]
 0050FDF0    cmp         ecx,dword ptr [ebp-4]
>0050FDF3    jne         0050FDF9
 0050FDF5    mov         byte ptr [ebp-9],0
 0050FDF9    inc         eax
 0050FDFA    dec         edx
>0050FDFB    jne         0050FDAB
 0050FDFD    cmp         byte ptr [ebp-9],0
>0050FE01    je          0050FF17
 0050FE07    mov         eax,dword ptr [ebp-10]
 0050FE0A    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 0050FE10    mov         edx,dword ptr [eax]
 0050FE12    call        dword ptr [edx+14];TStrings.GetCount
 0050FE15    cmp         eax,0FF
>0050FE1A    jne         0050FE2C
 0050FE1C    mov         eax,dword ptr [ebp-10]
 0050FE1F    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 0050FE25    xor         edx,edx
 0050FE27    mov         ecx,dword ptr [eax]
 0050FE29    call        dword ptr [ecx+44];TStrings.Delete
 0050FE2C    lea         ecx,[ebp-18]
 0050FE2F    mov         edx,dword ptr [ebp-8]
 0050FE32    sub         edx,1
>0050FE35    jno         0050FE3C
 0050FE37    call        @IntOver
 0050FE3C    mov         eax,dword ptr [ebx+2F4];TFormUtilitairesSeries.ListBox2:TListBox
 0050FE42    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 0050FE48    mov         esi,dword ptr [eax]
 0050FE4A    call        dword ptr [esi+0C];TStrings.Get
 0050FE4D    push        dword ptr [ebp-18]
 0050FE50    push        50FF48;' ('
 0050FE55    lea         ecx,[ebp-1C]
 0050FE58    mov         edx,dword ptr [ebp-4]
 0050FE5B    sub         edx,1
>0050FE5E    jno         0050FE65
 0050FE60    call        @IntOver
 0050FE65    mov         eax,dword ptr [ebx+2E8];TFormUtilitairesSeries.TabControl1:TTabControl
 0050FE6B    mov         eax,dword ptr [eax+210];TTabControl.FTabs:TStrings
 0050FE71    mov         esi,dword ptr [eax]
 0050FE73    call        dword ptr [esi+0C];TStrings.Get
 0050FE76    push        dword ptr [ebp-1C]
 0050FE79    push        50FF54;')'
 0050FE7E    lea         eax,[ebp-14]
 0050FE81    mov         edx,4
 0050FE86    call        @LStrCatN
 0050FE8B    mov         edx,dword ptr [ebp-14]
 0050FE8E    mov         eax,dword ptr [ebp-10]
 0050FE91    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 0050FE97    mov         ecx,dword ptr [eax]
 0050FE99    call        dword ptr [ecx+34];TStrings.Add
 0050FE9C    mov         eax,dword ptr [ebp-10]
 0050FE9F    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 0050FEA5    mov         edx,dword ptr [eax]
 0050FEA7    call        dword ptr [edx+14];TStrings.GetCount
 0050FEAA    sub         eax,1
>0050FEAD    jno         0050FEB4
 0050FEAF    call        @IntOver
 0050FEB4    cmp         eax,0FE
>0050FEB9    jbe         0050FEC0
 0050FEBB    call        @BoundErr
 0050FEC0    mov         edx,dword ptr [ebp-8]
 0050FEC3    mov         dword ptr [ebx+eax*4+334],edx
 0050FECA    mov         eax,dword ptr [ebp-10]
 0050FECD    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 0050FED3    mov         edx,dword ptr [eax]
 0050FED5    call        dword ptr [edx+14];TStrings.GetCount
 0050FED8    sub         eax,1
>0050FEDB    jno         0050FEE2
 0050FEDD    call        @IntOver
 0050FEE2    cmp         eax,0FE
>0050FEE7    jbe         0050FEEE
 0050FEE9    call        @BoundErr
 0050FEEE    mov         edx,dword ptr [ebp-4]
 0050FEF1    mov         dword ptr [ebx+eax*4+730],edx
 0050FEF8    mov         eax,dword ptr [ebp-10]
 0050FEFB    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 0050FF01    mov         edx,dword ptr [eax]
 0050FF03    call        dword ptr [edx+14];TStrings.GetCount
 0050FF06    cmp         eax,2
 0050FF09    setge       dl
 0050FF0C    mov         eax,dword ptr [ebx+2FC];TFormUtilitairesSeries.btnCreerSerie:TSpeedButton
 0050FF12    mov         ecx,dword ptr [eax]
 0050FF14    call        dword ptr [ecx+5C];TControl.SetEnabled
 0050FF17    xor         eax,eax
 0050FF19    pop         edx
 0050FF1A    pop         ecx
 0050FF1B    pop         ecx
 0050FF1C    mov         dword ptr fs:[eax],edx
 0050FF1F    push        50FF39
 0050FF24    lea         eax,[ebp-1C]
 0050FF27    mov         edx,3
 0050FF2C    call        @LStrArrayClr
 0050FF31    ret
>0050FF32    jmp         @HandleFinally
>0050FF37    jmp         0050FF24
 0050FF39    pop         esi
 0050FF3A    pop         ebx
 0050FF3B    mov         esp,ebp
 0050FF3D    pop         ebp
 0050FF3E    ret
*}
end;

//0050FF58
procedure TFormUtilitairesSeries.btnSupprimerSerieClick(Sender:TObject);
begin
{*
 0050FF58    push        ebx
 0050FF59    push        esi
 0050FF5A    push        edi
 0050FF5B    mov         ebx,eax
 0050FF5D    mov         esi,dword ptr [ebx+2E0];TFormUtilitairesSeries.ListBoxSeriesConcernees:TListBox
 0050FF63    mov         eax,esi
 0050FF65    call        TCustomListBox.GetItemIndex
 0050FF6A    inc         eax
>0050FF6B    je          00510030
 0050FF71    mov         eax,esi
 0050FF73    call        TCustomListBox.GetItemIndex
 0050FF78    push        eax
 0050FF79    mov         eax,dword ptr [esi+1F0];TListBox.FItems:TStrings
 0050FF7F    mov         edx,dword ptr [eax]
 0050FF81    call        dword ptr [edx+14];TStrings.GetCount
 0050FF84    mov         edx,eax
 0050FF86    sub         edx,2
>0050FF89    jno         0050FF90
 0050FF8B    call        @IntOver
 0050FF90    pop         eax
 0050FF91    sub         edx,eax
>0050FF93    jl          00510000
 0050FF95    inc         edx
 0050FF96    mov         ecx,eax
 0050FF98    add         ecx,1
>0050FF9B    jno         0050FFA2
 0050FF9D    call        @IntOver
 0050FFA2    cmp         ecx,0FE
>0050FFA8    jbe         0050FFAF
 0050FFAA    call        @BoundErr
 0050FFAF    mov         edi,dword ptr [ebx+ecx*4+334]
 0050FFB6    cmp         eax,0FE
>0050FFBB    jbe         0050FFC2
 0050FFBD    call        @BoundErr
 0050FFC2    mov         dword ptr [ebx+eax*4+334],edi
 0050FFC9    mov         edi,eax
 0050FFCB    add         edi,1
>0050FFCE    jno         0050FFD5
 0050FFD0    call        @IntOver
 0050FFD5    cmp         edi,0FE
>0050FFDB    jbe         0050FFE2
 0050FFDD    call        @BoundErr
 0050FFE2    mov         ecx,dword ptr [ebx+ecx*4+730]
 0050FFE9    cmp         eax,0FE
>0050FFEE    jbe         0050FFF5
 0050FFF0    call        @BoundErr
 0050FFF5    mov         dword ptr [ebx+eax*4+730],ecx
 0050FFFC    inc         eax
 0050FFFD    dec         edx
>0050FFFE    jne         0050FF96
 00510000    mov         eax,esi
 00510002    call        TCustomListBox.GetItemIndex
 00510007    mov         edx,eax
 00510009    mov         eax,dword ptr [esi+1F0];TListBox.FItems:TStrings
 0051000F    mov         ecx,dword ptr [eax]
 00510011    call        dword ptr [ecx+44];TStrings.Delete
 00510014    mov         eax,dword ptr [esi+1F0];TListBox.FItems:TStrings
 0051001A    mov         edx,dword ptr [eax]
 0051001C    call        dword ptr [edx+14];TStrings.GetCount
 0051001F    cmp         eax,2
 00510022    setge       dl
 00510025    mov         eax,dword ptr [ebx+2FC];TFormUtilitairesSeries.btnCreerSerie:TSpeedButton
 0051002B    mov         ecx,dword ptr [eax]
 0051002D    call        dword ptr [ecx+5C];TControl.SetEnabled
 00510030    pop         edi
 00510031    pop         esi
 00510032    pop         ebx
 00510033    ret
*}
end;

//00510034
procedure TFormUtilitairesSeries.ListBox2DrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
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
    end;//2
end;

//005101A0
procedure TFormUtilitairesSeries.ListBoxSeriesConcerneesDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
begin
    if (Index mod 2  <> 1) then
    begin//2
      //0055303B
      ListBoxSeriesConcernees.Canvas.Brush.Color := $FFFFFF;
      ListBoxSeriesConcernees.Canvas.FillRect(Rect);
    end//2
    else
    begin//2
      //0055306A
      ListBoxSeriesConcernees.Canvas.Brush.Color := $F4F3EE;
      ListBoxSeriesConcernees.Canvas.FillRect(Rect);
    end;//2

    ListBoxSeriesConcernees.Canvas.TextOut(Rect.Left + 5, Rect.Top + 2, ListBoxSeriesConcernees.Items[Index]);
    if ( odSelected in State) then
    begin//2
      //005530E6
      ListBoxSeriesConcernees.Canvas.Brush.Color := $F8D1C5;
      ListBoxSeriesConcernees.Canvas.FillRect(Rect);
      ListBoxSeriesConcernees.Canvas.Font.Color := $FF0000;
      ListBoxSeriesConcernees.Canvas.TextOut(Rect.Left + 5, Rect.Top + 2, ListBoxSeriesConcernees.Items[Index]);
    end;//2
end;

//0051030C
{*procedure sub_0051030C(?:TFormUtilitairesSeries; ?:TStringList; ?:?);
begin
 0051030C    push        ebp
 0051030D    mov         ebp,esp
 0051030F    add         esp,0FFFFFEEC
 00510315    push        ebx
 00510316    push        esi
 00510317    push        edi
 00510318    xor         ebx,ebx
 0051031A    mov         dword ptr [ebp-114],ebx
 00510320    mov         dword ptr [ebp-10],ebx
 00510323    mov         dword ptr [ebp-0C],ecx
 00510326    mov         dword ptr [ebp-8],edx
 00510329    mov         dword ptr [ebp-4],eax
 0051032C    xor         eax,eax
 0051032E    push        ebp
 0051032F    push        5103C8
 00510334    push        dword ptr fs:[eax]
 00510337    mov         dword ptr fs:[eax],esp
 0051033A    lea         eax,[ebp-10]
 0051033D    call        @LStrClr
 00510342    mov         eax,dword ptr [ebp-8]
 00510345    mov         edx,dword ptr [eax]
 00510347    call        dword ptr [edx+14]
 0051034A    mov         ebx,eax
 0051034C    sub         ebx,1
>0051034F    jno         00510356
 00510351    call        @IntOver
 00510356    test        ebx,ebx
>00510358    jl          00510397
 0051035A    inc         ebx
 0051035B    xor         esi,esi
 0051035D    lea         eax,[ebp-110]
 00510363    push        eax
 00510364    lea         ecx,[ebp-114]
 0051036A    mov         edx,esi
 0051036C    mov         eax,dword ptr [ebp-8]
 0051036F    mov         edi,dword ptr [eax]
 00510371    call        dword ptr [edi+0C]
 00510374    mov         ecx,dword ptr [ebp-114]
 0051037A    mov         edx,dword ptr [ebp-10]
 0051037D    mov         eax,dword ptr [ebp-4]
 00510380    call        005103D8
 00510385    lea         edx,[ebp-110]
 0051038B    lea         eax,[ebp-10]
 0051038E    call        @LStrFromString
 00510393    inc         esi
 00510394    dec         ebx
>00510395    jne         0051035D
 00510397    mov         eax,dword ptr [ebp-0C]
 0051039A    mov         edx,dword ptr [ebp-10]
 0051039D    mov         ecx,0FF
 005103A2    call        @LStrToString
 005103A7    xor         eax,eax
 005103A9    pop         edx
 005103AA    pop         ecx
 005103AB    pop         ecx
 005103AC    mov         dword ptr fs:[eax],edx
 005103AF    push        5103CF
 005103B4    lea         eax,[ebp-114]
 005103BA    call        @LStrClr
 005103BF    lea         eax,[ebp-10]
 005103C2    call        @LStrClr
 005103C7    ret
>005103C8    jmp         @HandleFinally
>005103CD    jmp         005103B4
 005103CF    pop         edi
 005103D0    pop         esi
 005103D1    pop         ebx
 005103D2    mov         esp,ebp
 005103D4    pop         ebp
 005103D5    ret
end;*}

//005103D8
{*procedure sub_005103D8(?:?; ?:AnsiString; ?:?; ?:?);
begin
 005103D8    push        ebp
 005103D9    mov         ebp,esp
 005103DB    add         esp,0FFFFFFD0
 005103DE    push        ebx
 005103DF    push        esi
 005103E0    push        edi
 005103E1    xor         ebx,ebx
 005103E3    mov         dword ptr [ebp-30],ebx
 005103E6    mov         dword ptr [ebp-8],ecx
 005103E9    mov         dword ptr [ebp-4],edx
 005103EC    mov         eax,dword ptr [ebp-4]
 005103EF    call        @LStrAddRef
 005103F4    mov         eax,dword ptr [ebp-8]
 005103F7    call        @LStrAddRef
 005103FC    xor         eax,eax
 005103FE    push        ebp
 005103FF    push        51051F
 00510404    push        dword ptr fs:[eax]
 00510407    mov         dword ptr fs:[eax],esp
 0051040A    mov         byte ptr [ebp-29],0
 0051040E    xor         eax,eax
 00510410    mov         dword ptr [ebp-18],eax
 00510413    mov         dword ptr [ebp-14],eax
 00510416    mov         word ptr [ebp-10],ax
 0051041A    xor         eax,eax
 0051041C    push        ebp
 0051041D    push        51043E
 00510422    push        dword ptr fs:[eax]
 00510425    mov         dword ptr fs:[eax],esp
 00510428    mov         eax,dword ptr [ebp-4]
 0051042B    call        StrToFloat
 00510430    fstp        tbyte ptr [ebp-18]
 00510433    wait
 00510434    xor         eax,eax
 00510436    pop         edx
 00510437    pop         ecx
 00510438    pop         ecx
 00510439    mov         dword ptr fs:[eax],edx
>0051043C    jmp         00510458
>0051043E    jmp         @HandleOnException
 00510443    dd          1
 00510447    dd          00409B50;EConvertError
 0051044B    dd          0051044F
 0051044F    mov         byte ptr [ebp-29],1
 00510453    call        @DoneExcept
 00510458    xor         eax,eax
 0051045A    push        ebp
 0051045B    push        5104C8
 00510460    push        dword ptr fs:[eax]
 00510463    mov         dword ptr fs:[eax],esp
 00510466    mov         eax,dword ptr [ebp-8]
 00510469    call        StrToFloat
 0051046E    fstp        tbyte ptr [ebp-28]
 00510471    wait
 00510472    cmp         byte ptr [ebp-29],0
>00510476    je          0051048A
 00510478    mov         eax,dword ptr [ebp+8]
 0051047B    mov         edx,dword ptr [ebp-8]
 0051047E    mov         ecx,0FF
 00510483    call        @LStrToString
>00510488    jmp         005104BE
 0051048A    fld         tbyte ptr [ebp-28]
 0051048D    fld         tbyte ptr [ebp-18]
 00510490    faddp       st(1),st
 00510492    add         esp,0FFFFFFF4
 00510495    fstp        tbyte ptr [esp]
 00510498    wait
 00510499    lea         eax,[ebp-30]
 0051049C    push        eax
 0051049D    mov         ecx,2
 005104A2    mov         edx,12
 005104A7    mov         al,2
 005104A9    call        FloatToStrF
 005104AE    mov         edx,dword ptr [ebp-30]
 005104B1    mov         eax,dword ptr [ebp+8]
 005104B4    mov         ecx,0FF
 005104B9    call        @LStrToString
 005104BE    xor         eax,eax
 005104C0    pop         edx
 005104C1    pop         ecx
 005104C2    pop         ecx
 005104C3    mov         dword ptr fs:[eax],edx
>005104C6    jmp         005104FC
>005104C8    jmp         @HandleOnException
 005104CD    dd          1
 005104D1    dd          00409B50;EConvertError
 005104D5    dd          005104D9
 005104D9    cmp         byte ptr [ebp-29],0
>005104DD    je          005104E7
 005104DF    mov         eax,dword ptr [ebp+8]
 005104E2    mov         byte ptr [eax],0
>005104E5    jmp         005104F7
 005104E7    mov         eax,dword ptr [ebp+8]
 005104EA    mov         edx,dword ptr [ebp-4]
 005104ED    mov         ecx,0FF
 005104F2    call        @LStrToString
 005104F7    call        @DoneExcept
 005104FC    xor         eax,eax
 005104FE    pop         edx
 005104FF    pop         ecx
 00510500    pop         ecx
 00510501    mov         dword ptr fs:[eax],edx
 00510504    push        510526
 00510509    lea         eax,[ebp-30]
 0051050C    call        @LStrClr
 00510511    lea         eax,[ebp-8]
 00510514    mov         edx,2
 00510519    call        @LStrArrayClr
 0051051E    ret
>0051051F    jmp         @HandleFinally
>00510524    jmp         00510509
 00510526    pop         edi
 00510527    pop         esi
 00510528    pop         ebx
 00510529    mov         esp,ebp
 0051052B    pop         ebp
 0051052C    ret         4
end;*}

//00510544
procedure TFormUtilitairesSeries.btnCreerSerieClick(Sender:TObject);
begin
{*
 00510544    push        ebp
 00510545    mov         ebp,esp
 00510547    mov         ecx,0EE
 0051054C    push        0
 0051054E    push        0
 00510550    dec         ecx
>00510551    jne         0051054C
 00510553    push        ebx
 00510554    push        esi
 00510555    push        edi
 00510556    mov         dword ptr [ebp-4],eax
 00510559    xor         eax,eax
 0051055B    push        ebp
 0051055C    push        511141
 00510561    push        dword ptr fs:[eax]
 00510564    mov         dword ptr fs:[eax],esp
 00510567    mov         dl,1
 00510569    mov         eax,[004120B8];TStringList
 0051056E    call        TObject.Create;TStringList.Create
 00510573    mov         dword ptr [ebp-1C],eax
 00510576    mov         eax,dword ptr [ebp-4]
 00510579    mov         eax,dword ptr [eax+2E0];TFormUtilitairesSeries.ListBoxSeriesConcernees:TListBox
 0051057F    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 00510585    mov         edx,dword ptr [eax]
 00510587    call        dword ptr [edx+14];TStrings.GetCount
 0051058A    push        eax
 0051058B    lea         eax,[ebp-14]
 0051058E    mov         ecx,1
 00510593    mov         edx,dword ptr ds:[510530];_DynArr_165_3
 00510599    call        @DynArraySetLength
 0051059E    add         esp,4
 005105A1    mov         eax,dword ptr [ebp-4]
 005105A4    mov         eax,dword ptr [eax+2E0];TFormUtilitairesSeries.ListBoxSeriesConcernees:TListBox
 005105AA    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 005105B0    mov         edx,dword ptr [eax]
 005105B2    call        dword ptr [edx+14];TStrings.GetCount
 005105B5    mov         esi,eax
 005105B7    sub         esi,1
>005105BA    jno         005105C1
 005105BC    call        @IntOver
 005105C1    test        esi,esi
>005105C3    jl          005105E8
 005105C5    inc         esi
 005105C6    xor         ebx,ebx
 005105C8    mov         dl,1
 005105CA    mov         eax,[004120B8];TStringList
 005105CF    call        TObject.Create;TStringList.Create
 005105D4    mov         edx,dword ptr [ebp-14]
 005105D7    cmp         ebx,dword ptr [edx-4]
>005105DA    jb          005105E1
 005105DC    call        @BoundErr
 005105E1    mov         dword ptr [edx+ebx*4],eax
 005105E4    inc         ebx
 005105E5    dec         esi
>005105E6    jne         005105C8
 005105E8    mov         eax,dword ptr [ebp-4]
 005105EB    mov         eax,dword ptr [eax+330];TFormUtilitairesSeries.?f330:dword
 005105F1    call        004C4790
 005105F6    mov         edx,dword ptr ds:[6161A0];^gvar_00617903
 005105FC    cmp         al,byte ptr [edx]
>005105FE    jae         0051103F
 00510604    mov         eax,dword ptr [ebp-4]
 00510607    mov         eax,dword ptr [eax+330];TFormUtilitairesSeries.?f330:dword
 0051060D    mov         dword ptr [ebp-28],eax
 00510610    mov         byte ptr [ebp-21],1
 00510614    lea         eax,[ebp-22C]
 0051061A    push        eax
 0051061B    mov         eax,dword ptr [ebp-4]
 0051061E    mov         ecx,dword ptr [eax+334];TFormUtilitairesSeries.?f334:dword
 00510624    cmp         ecx,0FF
>0051062A    jbe         00510631
 0051062C    call        @BoundErr
 00510631    mov         eax,dword ptr [ebp-4]
 00510634    mov         edx,dword ptr [eax+730];TFormUtilitairesSeries.?f730:dword
 0051063A    cmp         edx,0FF
>00510640    jbe         00510647
 00510642    call        @BoundErr
 00510647    mov         eax,dword ptr [ebp-28]
 0051064A    call        004BED2C
 0051064F    mov         eax,dword ptr [ebp-4]
 00510652    mov         eax,dword ptr [eax+2E0];TFormUtilitairesSeries.ListBoxSeriesConcernees:TListBox
 00510658    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 0051065E    mov         edx,dword ptr [eax]
 00510660    call        dword ptr [edx+14];TStrings.GetCount
 00510663    mov         esi,eax
 00510665    sub         esi,1
>00510668    jno         0051066F
 0051066A    call        @IntOver
 0051066F    test        esi,esi
>00510671    jl          005106EF
 00510673    inc         esi
 00510674    xor         ebx,ebx
 00510676    lea         eax,[ebp-62C]
 0051067C    push        eax
 0051067D    mov         edi,ebx
 0051067F    cmp         edi,0FE
>00510685    jbe         0051068C
 00510687    call        @BoundErr
 0051068C    mov         eax,dword ptr [ebp-4]
 0051068F    mov         ecx,dword ptr [eax+edi*4+334]
 00510696    cmp         ecx,0FF
>0051069C    jbe         005106A3
 0051069E    call        @BoundErr
 005106A3    cmp         ebx,0FE
>005106A9    jbe         005106B0
 005106AB    call        @BoundErr
 005106B0    mov         eax,dword ptr [ebp-4]
 005106B3    mov         edx,dword ptr [eax+edi*4+730]
 005106BA    cmp         edx,0FF
>005106C0    jbe         005106C7
 005106C2    call        @BoundErr
 005106C7    mov         eax,dword ptr [ebp-28]
 005106CA    call        004BED2C
 005106CF    lea         edx,[ebp-62C]
 005106D5    lea         eax,[ebp-22C]
 005106DB    xor         ecx,ecx
 005106DD    mov         cl,byte ptr [eax]
 005106DF    inc         ecx
 005106E0    call        @AStrCmp
>005106E5    je          005106EB
 005106E7    mov         byte ptr [ebp-21],0
 005106EB    inc         ebx
 005106EC    dec         esi
>005106ED    jne         00510676
 005106EF    cmp         byte ptr [ebp-21],0
>005106F3    jne         0051071F
 005106F5    push        10
 005106F7    mov         ecx,511150
 005106FC    mov         edx,511174
 00510701    mov         eax,[00615FEC];^Application:TApplication
 00510706    mov         eax,dword ptr [eax]
 00510708    call        TApplication.MessageBox
 0051070D    mov         eax,dword ptr [ebp-4]
 00510710    mov         dword ptr [eax+234],2;TFormUtilitairesSeries.FModalResult:TModalResult
>0051071A    jmp         005110B5
 0051071F    mov         byte ptr [ebp-0D],1
 00510723    mov         eax,dword ptr [ebp-4]
 00510726    mov         eax,dword ptr [eax+2E0];TFormUtilitairesSeries.ListBoxSeriesConcernees:TListBox
 0051072C    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 00510732    mov         edx,dword ptr [eax]
 00510734    call        dword ptr [edx+14];TStrings.GetCount
 00510737    mov         esi,eax
 00510739    sub         esi,1
>0051073C    jno         00510743
 0051073E    call        @IntOver
 00510743    test        esi,esi
>00510745    jl          00510816
 0051074B    inc         esi
 0051074C    xor         ebx,ebx
 0051074E    mov         eax,dword ptr [ebp-28]
 00510751    call        004BEA58
 00510756    and         eax,0FF
 0051075B    test        eax,eax
>0051075D    jle         0051080E
 00510763    mov         dword ptr [ebp-2C],eax
 00510766    mov         dword ptr [ebp-8],1
 0051076D    mov         eax,dword ptr [ebp-8]
 00510770    cmp         eax,0FF
>00510775    jbe         0051077C
 00510777    call        @BoundErr
 0051077C    push        eax
 0051077D    lea         eax,[ebp-62C]
 00510783    push        eax
 00510784    mov         edi,ebx
 00510786    cmp         edi,0FE
>0051078C    jbe         00510793
 0051078E    call        @BoundErr
 00510793    mov         eax,dword ptr [ebp-4]
 00510796    mov         ecx,dword ptr [eax+edi*4+334]
 0051079D    cmp         ecx,0FF
>005107A3    jbe         005107AA
 005107A5    call        @BoundErr
 005107AA    cmp         ebx,0FE
>005107B0    jbe         005107B7
 005107B2    call        @BoundErr
 005107B7    mov         eax,dword ptr [ebp-4]
 005107BA    mov         edx,dword ptr [eax+edi*4+730]
 005107C1    cmp         edx,0FF
>005107C7    jbe         005107CE
 005107C9    call        @BoundErr
 005107CE    mov         eax,dword ptr [ebp-28]
 005107D1    call        004BEF5C
 005107D6    lea         edx,[ebp-62C]
 005107DC    lea         eax,[ebp-630]
 005107E2    call        @LStrFromString
 005107E7    mov         edx,dword ptr [ebp-630]
 005107ED    mov         eax,dword ptr [ebp-14]
 005107F0    cmp         ebx,dword ptr [eax-4]
>005107F3    jb          005107FA
 005107F5    call        @BoundErr
 005107FA    mov         eax,dword ptr [eax+ebx*4]
 005107FD    mov         ecx,dword ptr [eax]
 005107FF    call        dword ptr [ecx+34]
 00510802    inc         dword ptr [ebp-8]
 00510805    dec         dword ptr [ebp-2C]
>00510808    jne         0051076D
 0051080E    inc         ebx
 0051080F    dec         esi
>00510810    jne         0051074E
 00510816    mov         eax,dword ptr [ebp-4]
 00510819    mov         eax,dword ptr [eax+2E0];TFormUtilitairesSeries.ListBoxSeriesConcernees:TListBox
 0051081F    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 00510825    mov         edx,dword ptr [eax]
 00510827    call        dword ptr [edx+14];TStrings.GetCount
 0051082A    mov         esi,eax
 0051082C    sub         esi,1
>0051082F    jno         00510836
 00510831    call        @IntOver
 00510836    test        esi,esi
>00510838    jl          005108B9
 0051083A    inc         esi
 0051083B    xor         ebx,ebx
 0051083D    lea         eax,[ebp-62C]
 00510843    push        eax
 00510844    mov         edi,ebx
 00510846    cmp         edi,0FE
>0051084C    jbe         00510853
 0051084E    call        @BoundErr
 00510853    mov         eax,dword ptr [ebp-4]
 00510856    mov         ecx,dword ptr [eax+edi*4+334]
 0051085D    cmp         ecx,0FF
>00510863    jbe         0051086A
 00510865    call        @BoundErr
 0051086A    cmp         ebx,0FE
>00510870    jbe         00510877
 00510872    call        @BoundErr
 00510877    mov         eax,dword ptr [ebp-4]
 0051087A    mov         edx,dword ptr [eax+edi*4+730]
 00510881    cmp         edx,0FF
>00510887    jbe         0051088E
 00510889    call        @BoundErr
 0051088E    mov         eax,dword ptr [ebp-28]
 00510891    call        004BED04
 00510896    lea         edx,[ebp-62C]
 0051089C    lea         eax,[ebp-634]
 005108A2    call        @LStrFromString
 005108A7    mov         edx,dword ptr [ebp-634]
 005108AD    mov         eax,dword ptr [ebp-1C]
 005108B0    mov         ecx,dword ptr [eax]
 005108B2    call        dword ptr [ecx+34];TStringList.Add
 005108B5    inc         ebx
 005108B6    dec         esi
>005108B7    jne         0051083D
 005108B9    lea         eax,[ebp-12C]
 005108BF    push        eax
 005108C0    mov         eax,dword ptr [ebp-4]
 005108C3    mov         ecx,dword ptr [eax+334];TFormUtilitairesSeries.?f334:dword
 005108C9    cmp         ecx,0FF
>005108CF    jbe         005108D6
 005108D1    call        @BoundErr
 005108D6    mov         eax,dword ptr [ebp-4]
 005108D9    mov         edx,dword ptr [eax+730];TFormUtilitairesSeries.?f730:dword
 005108DF    cmp         edx,0FF
>005108E5    jbe         005108EC
 005108E7    call        @BoundErr
 005108EC    mov         eax,dword ptr [ebp-28]
 005108EF    call        004BED2C
 005108F4    mov         eax,dword ptr [ebp-4]
 005108F7    mov         eax,dword ptr [eax+300];TFormUtilitairesSeries.CheckBox1:TCheckBox
 005108FD    mov         edx,dword ptr [eax]
 005108FF    call        dword ptr [edx+0B4];TCustomCheckBox.GetChecked
 00510905    test        al,al
>00510907    je          00510A8A
 0051090D    mov         eax,dword ptr [ebp-4]
 00510910    mov         eax,dword ptr [eax+2E0];TFormUtilitairesSeries.ListBoxSeriesConcernees:TListBox
 00510916    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 0051091C    mov         edx,dword ptr [eax]
 0051091E    call        dword ptr [edx+14];TStrings.GetCount
 00510921    mov         esi,eax
 00510923    test        esi,esi
>00510925    jle         005109F0
 0051092B    mov         ebx,1
 00510930    xor         eax,eax
 00510932    mov         dword ptr [ebp-0C],eax
 00510935    mov         eax,ebx
 00510937    sub         eax,1
>0051093A    jno         00510941
 0051093C    call        @IntOver
 00510941    cmp         eax,0FE
>00510946    jbe         0051094D
 00510948    call        @BoundErr
 0051094D    mov         edx,dword ptr [ebp-4]
 00510950    mov         eax,dword ptr [edx+eax*4+730]
 00510957    sub         eax,1
>0051095A    jno         00510961
 0051095C    call        @IntOver
 00510961    test        eax,eax
>00510963    jle         00510999
 00510965    mov         dword ptr [ebp-2C],eax
 00510968    mov         edi,1
 0051096D    mov         edx,edi
 0051096F    cmp         edx,0FF
>00510975    jbe         0051097C
 00510977    call        @BoundErr
 0051097C    mov         eax,dword ptr [ebp-28]
 0051097F    call        004BEAD0
 00510984    and         eax,0FF
 00510989    add         dword ptr [ebp-0C],eax
>0051098C    jno         00510993
 0051098E    call        @IntOver
 00510993    inc         edi
 00510994    dec         dword ptr [ebp-2C]
>00510997    jne         0051096D
 00510999    mov         eax,ebx
 0051099B    sub         eax,1
>0051099E    jno         005109A5
 005109A0    call        @IntOver
 005109A5    cmp         eax,0FE
>005109AA    jbe         005109B1
 005109AC    call        @BoundErr
 005109B1    mov         edx,dword ptr [ebp-4]
 005109B4    mov         edx,dword ptr [edx+eax*4+334]
 005109BB    add         edx,dword ptr [ebp-0C]
>005109BE    jno         005109C5
 005109C0    call        @IntOver
 005109C5    mov         ecx,ebx
 005109C7    sub         ecx,1
>005109CA    jno         005109D1
 005109CC    call        @IntOver
 005109D1    cmp         ecx,0FE
>005109D7    jbe         005109DE
 005109D9    call        @BoundErr
 005109DE    mov         ecx,dword ptr [ebp-4]
 005109E1    mov         dword ptr [ecx+eax*4+0B2C],edx
 005109E8    inc         ebx
 005109E9    dec         esi
>005109EA    jne         00510930
 005109F0    mov         eax,dword ptr [ebp-4]
 005109F3    mov         eax,dword ptr [eax+2E0];TFormUtilitairesSeries.ListBoxSeriesConcernees:TListBox
 005109F9    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 005109FF    mov         edx,dword ptr [eax]
 00510A01    call        dword ptr [edx+14];TStrings.GetCount
 00510A04    mov         esi,eax
 00510A06    test        esi,esi
>00510A08    jle         00510A86
 00510A0A    mov         ebx,1
 00510A0F    mov         eax,ebx
 00510A11    sub         eax,1
>00510A14    jno         00510A1B
 00510A16    call        @IntOver
 00510A1B    cmp         eax,0FE
>00510A20    jbe         00510A27
 00510A22    call        @BoundErr
 00510A27    mov         ecx,dword ptr [ebp-4]
 00510A2A    mov         ecx,dword ptr [ecx+eax*4+0B2C]
 00510A31    mov         edx,ebx
 00510A33    sub         edx,1
>00510A36    jno         00510A3D
 00510A38    call        @IntOver
 00510A3D    sub         ecx,edx
>00510A3F    jno         00510A46
 00510A41    call        @IntOver
 00510A46    cmp         ecx,0FF
>00510A4C    jbe         00510A53
 00510A4E    call        @BoundErr
 00510A53    push        ecx
 00510A54    cmp         edx,0FE
>00510A5A    jbe         00510A61
 00510A5C    call        @BoundErr
 00510A61    mov         edx,dword ptr [ebp-4]
 00510A64    mov         eax,dword ptr [edx+eax*4+730]
 00510A6B    cmp         eax,0FF
>00510A70    jbe         00510A77
 00510A72    call        @BoundErr
 00510A77    mov         edx,eax
 00510A79    mov         eax,dword ptr [ebp-28]
 00510A7C    pop         ecx
 00510A7D    call        004BFC58
 00510A82    inc         ebx
 00510A83    dec         esi
>00510A84    jne         00510A0F
 00510A86    mov         byte ptr [ebp-0D],0
 00510A8A    lea         eax,[ebp-20]
 00510A8D    call        @LStrClr
 00510A92    mov         eax,dword ptr [ebp-4]
 00510A95    mov         eax,dword ptr [eax+2E0];TFormUtilitairesSeries.ListBoxSeriesConcernees:TListBox
 00510A9B    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 00510AA1    mov         edx,dword ptr [eax]
 00510AA3    call        dword ptr [edx+14];TStrings.GetCount
 00510AA6    mov         esi,eax
 00510AA8    sub         esi,2
>00510AAB    jno         00510AB2
 00510AAD    call        @IntOver
 00510AB2    test        esi,esi
>00510AB4    jl          00510AED
 00510AB6    inc         esi
 00510AB7    xor         ebx,ebx
 00510AB9    push        dword ptr [ebp-20]
 00510ABC    push        511210;' '
 00510AC1    lea         ecx,[ebp-638]
 00510AC7    mov         edx,ebx
 00510AC9    mov         eax,dword ptr [ebp-1C]
 00510ACC    mov         edi,dword ptr [eax]
 00510ACE    call        dword ptr [edi+0C];TStringList.Get
 00510AD1    push        dword ptr [ebp-638]
 00510AD7    push        51121C;' ,'
 00510ADC    lea         eax,[ebp-20]
 00510ADF    mov         edx,4
 00510AE4    call        @LStrCatN
 00510AE9    inc         ebx
 00510AEA    dec         esi
>00510AEB    jne         00510AB9
 00510AED    push        dword ptr [ebp-20]
 00510AF0    push        511210;' '
 00510AF5    mov         eax,dword ptr [ebp-4]
 00510AF8    mov         eax,dword ptr [eax+2E0];TFormUtilitairesSeries.ListBoxSeriesConcernees:TListBox
 00510AFE    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 00510B04    mov         edx,dword ptr [eax]
 00510B06    call        dword ptr [edx+14];TStrings.GetCount
 00510B09    mov         edx,eax
 00510B0B    sub         edx,1
>00510B0E    jno         00510B15
 00510B10    call        @IntOver
 00510B15    lea         ecx,[ebp-63C]
 00510B1B    mov         eax,dword ptr [ebp-1C]
 00510B1E    mov         ebx,dword ptr [eax]
 00510B20    call        dword ptr [ebx+0C];TStringList.Get
 00510B23    push        dword ptr [ebp-63C]
 00510B29    lea         eax,[ebp-20]
 00510B2C    mov         edx,3
 00510B31    call        @LStrCatN
 00510B36    mov         eax,dword ptr [ebp-4]
 00510B39    mov         eax,dword ptr [eax+2DC];TFormUtilitairesSeries.RadioGroup1:TRadioGroup
 00510B3F    mov         eax,dword ptr [eax+200];TRadioGroup.FItemIndex:Integer
 00510B45    sub         eax,1
>00510B48    jb          00510B58
>00510B4A    je          00510BAC
 00510B4C    dec         eax
>00510B4D    je          00510C00
>00510B53    jmp         00510CE6
 00510B58    mov         esi,511220
 00510B5D    lea         edi,[ebp-32C]
 00510B63    mov         ecx,6
 00510B68    rep movs    dword ptr [edi],dword ptr [esi]
 00510B6A    movs        word ptr [edi],word ptr [esi]
 00510B6C    movs        byte ptr [edi],byte ptr [esi]
 00510B6D    lea         eax,[ebp-640]
 00510B73    mov         ecx,dword ptr [ebp-20]
 00510B76    mov         edx,511244;'Max. de'
 00510B7B    call        @LStrCat3
 00510B80    mov         edx,dword ptr [ebp-640]
 00510B86    lea         eax,[ebp-52C]
 00510B8C    mov         ecx,0FF
 00510B91    call        @LStrToString
 00510B96    lea         eax,[ebp-22C]
 00510B9C    lea         edx,[ebp-12C]
 00510BA2    call        @PStrCpy
>00510BA7    jmp         00510CE6
 00510BAC    mov         esi,51124C
 00510BB1    lea         edi,[ebp-32C]
 00510BB7    mov         ecx,6
 00510BBC    rep movs    dword ptr [edi],dword ptr [esi]
 00510BBE    movs        word ptr [edi],word ptr [esi]
 00510BC0    movs        byte ptr [edi],byte ptr [esi]
 00510BC1    lea         eax,[ebp-644]
 00510BC7    mov         ecx,dword ptr [ebp-20]
 00510BCA    mov         edx,511270;'Moy. de'
 00510BCF    call        @LStrCat3
 00510BD4    mov         edx,dword ptr [ebp-644]
 00510BDA    lea         eax,[ebp-52C]
 00510BE0    mov         ecx,0FF
 00510BE5    call        @LStrToString
 00510BEA    lea         eax,[ebp-22C]
 00510BF0    lea         edx,[ebp-12C]
 00510BF6    call        @PStrCpy
>00510BFB    jmp         00510CE6
 00510C00    mov         eax,dword ptr [ebp-4]
 00510C03    mov         eax,dword ptr [eax+2E0];TFormUtilitairesSeries.ListBoxSeriesConcernees:TListBox
 00510C09    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 00510C0F    mov         edx,dword ptr [eax]
 00510C11    call        dword ptr [edx+14];TStrings.GetCount
 00510C14    mov         ebx,eax
 00510C16    lea         eax,[ebp-64C]
 00510C1C    lea         edx,[ebp-12C]
 00510C22    call        @LStrFromString
 00510C27    mov         eax,dword ptr [ebp-64C]
 00510C2D    call        StrToInt
 00510C32    imul        ebx,eax
>00510C35    jno         00510C3C
 00510C37    call        @IntOver
 00510C3C    mov         eax,ebx
 00510C3E    lea         edx,[ebp-648]
 00510C44    call        IntToStr
 00510C49    mov         edx,dword ptr [ebp-648]
 00510C4F    lea         eax,[ebp-22C]
 00510C55    mov         ecx,0FF
 00510C5A    call        @LStrToString
 00510C5F    push        511280;'Plusieurs notes sur '
 00510C64    lea         eax,[ebp-654]
 00510C6A    lea         edx,[ebp-12C]
 00510C70    call        @LStrFromString
 00510C75    push        dword ptr [ebp-654]
 00510C7B    push        5112A0;' -> une note sur '
 00510C80    lea         eax,[ebp-658]
 00510C86    lea         edx,[ebp-22C]
 00510C8C    call        @LStrFromString
 00510C91    push        dword ptr [ebp-658]
 00510C97    lea         eax,[ebp-650]
 00510C9D    mov         edx,4
 00510CA2    call        @LStrCatN
 00510CA7    mov         edx,dword ptr [ebp-650]
 00510CAD    lea         eax,[ebp-32C]
 00510CB3    mov         ecx,0FF
 00510CB8    call        @LStrToString
 00510CBD    lea         eax,[ebp-65C]
 00510CC3    mov         ecx,dword ptr [ebp-20]
 00510CC6    mov         edx,5112BC;'Somme de'
 00510CCB    call        @LStrCat3
 00510CD0    mov         edx,dword ptr [ebp-65C]
 00510CD6    lea         eax,[ebp-52C]
 00510CDC    mov         ecx,0FF
 00510CE1    call        @LStrToString
 00510CE6    lea         eax,[ebp-22C]
 00510CEC    push        eax
 00510CED    push        5112C8
 00510CF2    push        5112CC
 00510CF7    call        Date
 00510CFC    add         esp,0FFFFFFF8
 00510CFF    fstp        qword ptr [esp]
 00510D02    wait
 00510D03    lea         eax,[ebp-660]
 00510D09    call        DateToStr
 00510D0E    mov         edx,dword ptr [ebp-660]
 00510D14    lea         eax,[ebp-62C]
 00510D1A    mov         ecx,0FF
 00510D1F    call        @LStrToString
 00510D24    lea         eax,[ebp-62C]
 00510D2A    push        eax
 00510D2B    lea         eax,[ebp-32C]
 00510D31    push        eax
 00510D32    mov         eax,dword ptr [ebp-4]
 00510D35    mov         ebx,dword ptr [eax+328];TFormUtilitairesSeries.ComboBox2:TComboBox
 00510D3B    mov         eax,ebx
 00510D3D    call        TCustomComboBox.GetItemIndex
 00510D42    mov         edx,eax
 00510D44    lea         ecx,[ebp-764]
 00510D4A    mov         eax,dword ptr [ebx+1F0];TComboBox.FItems:TStrings
 00510D50    mov         ebx,dword ptr [eax]
 00510D52    call        dword ptr [ebx+0C];TStrings.Get
 00510D55    mov         edx,dword ptr [ebp-764]
 00510D5B    lea         eax,[ebp-760]
 00510D61    mov         ecx,0FF
 00510D66    call        @LStrToString
 00510D6B    lea         eax,[ebp-760]
 00510D71    push        eax
 00510D72    mov         eax,dword ptr [ebp-4]
 00510D75    mov         eax,dword ptr [eax+32C];TFormUtilitairesSeries.RadioGroupEcritOuOral:TRadioGroup
 00510D7B    cmp         dword ptr [eax+200],1;TRadioGroup.FItemIndex:Integer
 00510D82    sete        al
 00510D85    push        eax
 00510D86    mov         eax,dword ptr [ebp-4]
 00510D89    mov         eax,dword ptr [eax+308];TFormUtilitairesSeries.ComboBox1:TComboBox
 00510D8F    call        TCustomComboBox.GetItemIndex
 00510D94    mov         edx,eax
 00510D96    add         edx,1
>00510D99    jno         00510DA0
 00510D9B    call        @IntOver
 00510DA0    cmp         edx,0FF
>00510DA6    jbe         00510DAD
 00510DA8    call        @BoundErr
 00510DAD    lea         ecx,[ebp-52C]
 00510DB3    mov         eax,dword ptr [ebp-28]
 00510DB6    call        004BF7F0
 00510DBB    mov         eax,dword ptr [ebp-28]
 00510DBE    call        004BEA58
 00510DC3    mov         esi,eax
 00510DC5    and         esi,0FF
 00510DCB    test        esi,esi
>00510DCD    jle         00510F53
 00510DD3    mov         dword ptr [ebp-8],1
 00510DDA    mov         dl,1
 00510DDC    mov         eax,[004120B8];TStringList
 00510DE1    call        TObject.Create;TStringList.Create
 00510DE6    mov         dword ptr [ebp-18],eax
 00510DE9    mov         eax,dword ptr [ebp-4]
 00510DEC    mov         eax,dword ptr [eax+2E0];TFormUtilitairesSeries.ListBoxSeriesConcernees:TListBox
 00510DF2    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 00510DF8    mov         edx,dword ptr [eax]
 00510DFA    call        dword ptr [edx+14];TStrings.GetCount
 00510DFD    sub         eax,1
>00510E00    jno         00510E07
 00510E02    call        @IntOver
 00510E07    test        eax,eax
>00510E09    jl          00510E4D
 00510E0B    inc         eax
 00510E0C    mov         dword ptr [ebp-2C],eax
 00510E0F    xor         ebx,ebx
 00510E11    mov         eax,dword ptr [ebp-14]
 00510E14    cmp         ebx,dword ptr [eax-4]
>00510E17    jb          00510E1E
 00510E19    call        @BoundErr
 00510E1E    mov         eax,dword ptr [eax+ebx*4]
 00510E21    lea         ecx,[ebp-768]
 00510E27    mov         edx,dword ptr [ebp-8]
 00510E2A    sub         edx,1
>00510E2D    jno         00510E34
 00510E2F    call        @IntOver
 00510E34    mov         edi,dword ptr [eax]
 00510E36    call        dword ptr [edi+0C]
 00510E39    mov         edx,dword ptr [ebp-768]
 00510E3F    mov         eax,dword ptr [ebp-18]
 00510E42    mov         ecx,dword ptr [eax]
 00510E44    call        dword ptr [ecx+34];TStringList.Add
 00510E47    inc         ebx
 00510E48    dec         dword ptr [ebp-2C]
>00510E4B    jne         00510E11
 00510E4D    mov         eax,dword ptr [ebp-4]
 00510E50    mov         eax,dword ptr [eax+2DC];TFormUtilitairesSeries.RadioGroup1:TRadioGroup
 00510E56    mov         eax,dword ptr [eax+200];TRadioGroup.FItemIndex:Integer
 00510E5C    sub         eax,1
>00510E5F    jb          00510E68
>00510E61    je          00510E78
 00510E63    dec         eax
>00510E64    je          00510EB9
>00510E66    jmp         00510ECA
 00510E68    lea         edx,[ebp-42C]
 00510E6E    mov         eax,dword ptr [ebp-18]
 00510E71    call        004BDCFC
>00510E76    jmp         00510ECA
 00510E78    lea         eax,[ebp-42C]
 00510E7E    push        eax
 00510E7F    lea         edx,[ebp-62C]
 00510E85    mov         eax,dword ptr [ebp-18]
 00510E88    call        004BDEBC
 00510E8D    lea         edx,[ebp-62C]
 00510E93    mov         eax,dword ptr [ebp-4]
 00510E96    mov         eax,dword ptr [eax+320];TFormUtilitairesSeries.RadioGroup2:TRadioGroup
 00510E9C    mov         ecx,dword ptr [eax+200];TRadioGroup.FItemIndex:Integer
 00510EA2    cmp         ecx,0FF
>00510EA8    jbe         00510EAF
 00510EAA    call        @BoundErr
 00510EAF    mov         eax,dword ptr [ebp-28]
 00510EB2    call        004C2410
>00510EB7    jmp         00510ECA
 00510EB9    lea         ecx,[ebp-42C]
 00510EBF    mov         edx,dword ptr [ebp-18]
 00510EC2    mov         eax,dword ptr [ebp-4]
 00510EC5    call        0051030C
 00510ECA    mov         eax,dword ptr [ebp-18]
 00510ECD    call        TObject.Free
 00510ED2    mov         eax,dword ptr [ebp-8]
 00510ED5    cmp         eax,0FF
>00510EDA    jbe         00510EE1
 00510EDC    call        @BoundErr
 00510EE1    push        eax
 00510EE2    lea         eax,[ebp-42C]
 00510EE8    push        eax
 00510EE9    mov         eax,dword ptr [ebp-4]
 00510EEC    mov         eax,dword ptr [eax+308];TFormUtilitairesSeries.ComboBox1:TComboBox
 00510EF2    call        TCustomComboBox.GetItemIndex
 00510EF7    mov         edx,eax
 00510EF9    add         edx,1
>00510EFC    jno         00510F03
 00510EFE    call        @IntOver
 00510F03    cmp         edx,0FF
>00510F09    jbe         00510F10
 00510F0B    call        @BoundErr
 00510F10    mov         eax,dword ptr [ebp-28]
 00510F13    call        004BEAD0
 00510F18    push        eax
 00510F19    mov         eax,dword ptr [ebp-4]
 00510F1C    mov         eax,dword ptr [eax+308];TFormUtilitairesSeries.ComboBox1:TComboBox
 00510F22    call        TCustomComboBox.GetItemIndex
 00510F27    mov         edx,eax
 00510F29    add         edx,1
>00510F2C    jno         00510F33
 00510F2E    call        @IntOver
 00510F33    cmp         edx,0FF
>00510F39    jbe         00510F40
 00510F3B    call        @BoundErr
 00510F40    mov         eax,dword ptr [ebp-28]
 00510F43    pop         ecx
 00510F44    call        004C1074
 00510F49    inc         dword ptr [ebp-8]
 00510F4C    dec         esi
>00510F4D    jne         00510DDA
 00510F53    cmp         byte ptr [ebp-0D],0
>00510F57    je          0051100F
 00510F5D    mov         eax,dword ptr [ebp-4]
 00510F60    mov         eax,dword ptr [eax+310];TFormUtilitairesSeries.CheckBox2:TCheckBox
 00510F66    mov         edx,dword ptr [eax]
 00510F68    call        dword ptr [edx+0B4];TCustomCheckBox.GetChecked
 00510F6E    test        al,al
>00510F70    je          0051100F
 00510F76    mov         eax,dword ptr [ebp-4]
 00510F79    mov         edi,dword ptr [eax+330];TFormUtilitairesSeries.?f330:dword
 00510F7F    mov         eax,dword ptr [ebp-4]
 00510F82    mov         eax,dword ptr [eax+2E0];TFormUtilitairesSeries.ListBoxSeriesConcernees:TListBox
 00510F88    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 00510F8E    mov         edx,dword ptr [eax]
 00510F90    call        dword ptr [edx+14];TStrings.GetCount
 00510F93    mov         esi,eax
 00510F95    test        esi,esi
>00510F97    jle         0051100F
 00510F99    mov         ebx,1
 00510F9E    push        5112D0
 00510FA3    mov         eax,ebx
 00510FA5    sub         eax,1
>00510FA8    jno         00510FAF
 00510FAA    call        @IntOver
 00510FAF    cmp         eax,0FE
>00510FB4    jbe         00510FBB
 00510FB6    call        @BoundErr
 00510FBB    mov         edx,dword ptr [ebp-4]
 00510FBE    mov         edx,dword ptr [edx+eax*4+334]
 00510FC5    cmp         edx,0FF
>00510FCB    jbe         00510FD2
 00510FCD    call        @BoundErr
 00510FD2    push        edx
 00510FD3    mov         edx,ebx
 00510FD5    sub         edx,1
>00510FD8    jno         00510FDF
 00510FDA    call        @IntOver
 00510FDF    cmp         edx,0FE
>00510FE5    jbe         00510FEC
 00510FE7    call        @BoundErr
 00510FEC    mov         edx,dword ptr [ebp-4]
 00510FEF    mov         edx,dword ptr [edx+eax*4+730]
 00510FF6    cmp         edx,0FF
>00510FFC    jbe         00511003
 00510FFE    call        @BoundErr
 00511003    mov         eax,edi
 00511005    pop         ecx
 00511006    call        004C0FA0
 0051100B    inc         ebx
 0051100C    dec         esi
>0051100D    jne         00510F9E
 0051100F    mov         eax,dword ptr [ebp-4]
 00511012    mov         eax,dword ptr [eax+308];TFormUtilitairesSeries.ComboBox1:TComboBox
 00511018    call        TCustomComboBox.GetItemIndex
 0051101D    add         eax,1
>00511020    jno         00511027
 00511022    call        @IntOver
 00511027    mov         edx,dword ptr [ebp-4]
 0051102A    mov         dword ptr [edx+0F28],eax;TFormUtilitairesSeries.?fF28:dword
 00511030    mov         eax,dword ptr [ebp-4]
 00511033    mov         dword ptr [eax+234],1;TFormUtilitairesSeries.FModalResult:TModalResult
>0051103D    jmp         005110B5
 0051103F    call        00498A40
 00511044    test        al,al
>00511046    jne         00511062
 00511048    push        40
 0051104A    mov         ecx,511150
 0051104F    mov         edx,5112D4
 00511054    mov         eax,[00615FEC];^Application:TApplication
 00511059    mov         eax,dword ptr [eax]
 0051105B    call        TApplication.MessageBox
>00511060    jmp         005110B5
 00511062    push        40
 00511064    push        51135C;'Impossible de créer une nouvelle série de notes. Le nombre de séries de notes es...
 00511069    lea         edx,[ebp-770]
 0051106F    mov         eax,[006161A0];^gvar_00617903
 00511074    movzx       eax,byte ptr [eax]
 00511077    call        IntToStr
 0051107C    push        dword ptr [ebp-770]
 00511082    push        5113C0;'.'
 00511087    lea         eax,[ebp-76C]
 0051108D    mov         edx,3
 00511092    call        @LStrCatN
 00511097    mov         eax,dword ptr [ebp-76C]
 0051109D    call        @LStrToPChar
 005110A2    mov         edx,eax
 005110A4    mov         ecx,511150
 005110A9    mov         eax,[00615FEC];^Application:TApplication
 005110AE    mov         eax,dword ptr [eax]
 005110B0    call        TApplication.MessageBox
 005110B5    mov         eax,dword ptr [ebp-4]
 005110B8    mov         eax,dword ptr [eax+2E0];TFormUtilitairesSeries.ListBoxSeriesConcernees:TListBox
 005110BE    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 005110C4    mov         edx,dword ptr [eax]
 005110C6    call        dword ptr [edx+14];TStrings.GetCount
 005110C9    mov         esi,eax
 005110CB    sub         esi,1
>005110CE    jno         005110D5
 005110D0    call        @IntOver
 005110D5    test        esi,esi
>005110D7    jl          005110F5
 005110D9    inc         esi
 005110DA    xor         ebx,ebx
 005110DC    mov         eax,dword ptr [ebp-14]
 005110DF    cmp         ebx,dword ptr [eax-4]
>005110E2    jb          005110E9
 005110E4    call        @BoundErr
 005110E9    mov         eax,dword ptr [eax+ebx*4]
 005110EC    call        TObject.Free
 005110F1    inc         ebx
 005110F2    dec         esi
>005110F3    jne         005110DC
 005110F5    mov         eax,dword ptr [ebp-1C]
 005110F8    call        TObject.Free
 005110FD    xor         eax,eax
 005110FF    pop         edx
 00511100    pop         ecx
 00511101    pop         ecx
 00511102    mov         dword ptr fs:[eax],edx
 00511105    push        511148
 0051110A    lea         eax,[ebp-770]
 00511110    mov         edx,4
 00511115    call        @LStrArrayClr
 0051111A    lea         eax,[ebp-660]
 00511120    mov         edx,0D
 00511125    call        @LStrArrayClr
 0051112A    lea         eax,[ebp-20]
 0051112D    call        @LStrClr
 00511132    lea         eax,[ebp-14]
 00511135    mov         edx,dword ptr ds:[510530];_DynArr_165_3
 0051113B    call        @DynArrayClear
 00511140    ret
>00511141    jmp         @HandleFinally
>00511146    jmp         0051110A
 00511148    pop         edi
 00511149    pop         esi
 0051114A    pop         ebx
 0051114B    mov         esp,ebp
 0051114D    pop         ebp
 0051114E    ret
*}
end;

//005113C4
procedure TFormUtilitairesSeries.CheckBox1Click(Sender:TObject);
begin
{*
 005113C4    push        ebx
 005113C5    mov         ebx,eax
 005113C7    mov         eax,dword ptr [ebx+300];TFormUtilitairesSeries.CheckBox1:TCheckBox
 005113CD    mov         edx,dword ptr [eax]
 005113CF    call        dword ptr [edx+0B4];TCustomCheckBox.GetChecked
 005113D5    mov         edx,eax
 005113D7    xor         dl,1
 005113DA    mov         eax,dword ptr [ebx+310];TFormUtilitairesSeries.CheckBox2:TCheckBox
 005113E0    mov         ecx,dword ptr [eax]
 005113E2    call        dword ptr [ecx+5C];TControl.SetEnabled
 005113E5    pop         ebx
 005113E6    ret
*}
end;

//005113E8
procedure TFormUtilitairesSeries.RadioGroup1Click(Sender:TObject);
begin
{*
 005113E8    mov         edx,dword ptr [eax+2DC];TFormUtilitairesSeries.RadioGroup1:TRadioGroup
 005113EE    cmp         dword ptr [edx+200],1;TRadioGroup.FItemIndex:Integer
 005113F5    sete        dl
 005113F8    mov         eax,dword ptr [eax+320];TFormUtilitairesSeries.RadioGroup2:TRadioGroup
 005113FE    call        TControl.SetVisible
 00511403    ret
*}
end;

//00511404
procedure TFormUtilitairesSeries.FormKeyPress(Sender:TObject; var Key:Char);
begin
  if (Key = chr($1B)) then 
  ModalResult := 2;
end;

end.