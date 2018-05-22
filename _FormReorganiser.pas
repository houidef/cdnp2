{***************************************
* Version Original V0.01
* Decompiled by HOUIDEF AEK v.05.02.2018
***************************************}
unit _FormReorganiser;

interface

uses
  Forms, Windows, SysUtils, Classes, ExtCtrls, StdCtrls, Buttons, Controls , UFichierCdn;

type
  TFormReorganiser = class(TForm)
  published
    Panel2:TPanel;//f2D0
    Bevel2:TBevel;//f2D4
    Image1:TImage;//f2D8
    ListBox1:TListBox;//f2DC
    ComboBox1:TComboBox;//f2E0
    ListBox2:TListBox;//f2E4
    ComboBox2:TComboBox;//f2E8
    SpeedButton1:TSpeedButton;//f2EC
    Label1:TLabel;//f2F0
    Label2:TLabel;//f2F4
    SpeedButton2:TSpeedButton;//f2F8
    SpeedButton3:TSpeedButton;//f2FC
    SpeedButton4:TSpeedButton;//f300
    Label3:TLabel;//f304
    Label4:TLabel;//f308
    SpeedButton5:TSpeedButton;//f30C
    procedure SpeedButton2Click(Sender:TObject);//0050B3E8
    procedure SpeedButton3Click(Sender:TObject);//0050B330
    procedure SpeedButton4Click(Sender:TObject);//0050B48C
    procedure FormKeyPress(Sender:TObject; var Key:Char);//0050B6D0
    procedure SpeedButton5Click(Sender:TObject);//0050B644
    procedure ComboBox2Change;//0050ADB0
    procedure ComboBox1Change;//0050AC1C
    procedure SpeedButton1Click(Sender:TObject);//0050AF44
    procedure ListBox2DrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);//0050B18C
    procedure ListBox1DrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);//0050AFE8
  public
    f310:TFichierCdn;//f310
    constructor Create(Owner:TComponent;Logo:Timage; F:TFichierCdn);//0050A970
	// procedure sub_0050B494(?:TFormReorganiser);//0050B494
  end;
  var
   FormReorganiser :TFormReorganiser;
   

implementation

{$R *.DFM}

//0050A970
constructor TFormReorganiser.Create(Owner:TComponent; Logo:Timage; F:TFichierCdn);
var
  buf :string;
  I:integer;
begin//0
  //0050A970
    //0050A9A5

    inherited create(Owner);

    Image1.Picture := Logo.Picture;
    f310 := F;
    //ComboBox1.Items := gvar_006184E0.ActiveMDIChild.TabControlGrillesNotes{f328}.f210;
    ComboBox1.ItemIndex := 0;
      for I := 1 to f310.sub_004BEAD0(1) do //0050AA1A
      begin//0050AA21
        f310.sub_004BED04(1, buf, I);
        ListBox1.Items.Add(buf);
      end;//3
    ComboBox2.Items := ComboBox1.Items;
    ComboBox2.ItemIndex := 0;
   // lvar_10 := f310;
    if (f310.sub_004BEAD0(ComboBox2.ItemIndex + 1) > 0) then
    begin//2
      //0050AACF
      
      for I := 1 to f310.sub_004BEAD0(ComboBox2.ItemIndex + 1) do
      begin//3
        //0050AAD6
        
     
        f310.sub_004BED04(ComboBox2.ItemIndex + 1, buf, I);
        ListBox2.Items.Add(buf);
      end;//3
    end;//2
   

    //0050AB5F
    if (ComboBox1.ItemIndex = ComboBox2.ItemIndex) Or (ListBox1.Items.Count = 0) then//0050AB78
      SpeedButton1.Enabled := false
    else//0050AB7C
      SpeedButton1.Enabled := true;

    //0050ABA1

    if (ComboBox1.ItemIndex = ComboBox2.ItemIndex) Or (ListBox1.Items.Count = 0) then//0050ABBA
      SpeedButton5.Enabled := false
    else//0050ABBE
      SpeedButton5.Enabled := true;
    

    //sub_0050B494;

end;


//0050AC1C
procedure TFormReorganiser.ComboBox1Change;
begin
{*
 0050AC1C    push        ebp
 0050AC1D    mov         ebp,esp
 0050AC1F    add         esp,0FFFFFEF4
 0050AC25    push        ebx
 0050AC26    push        esi
 0050AC27    xor         ecx,ecx
 0050AC29    mov         dword ptr [ebp-0C],ecx
 0050AC2C    mov         ebx,eax
 0050AC2E    xor         eax,eax
 0050AC30    push        ebp
 0050AC31    push        50ADA1
 0050AC36    push        dword ptr fs:[eax]
 0050AC39    mov         dword ptr fs:[eax],esp
 0050AC3C    mov         eax,dword ptr [ebx+2DC];TFormReorganiser.ListBox1:TListBox
 0050AC42    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 0050AC48    mov         edx,dword ptr [eax]
 0050AC4A    call        dword ptr [edx+40];TStrings.Clear
 0050AC4D    mov         eax,dword ptr [ebx+310];TFormReorganiser.?f310:dword
 0050AC53    mov         dword ptr [ebp-8],eax
 0050AC56    mov         eax,dword ptr [ebx+2E0];TFormReorganiser.ComboBox1:TComboBox
 0050AC5C    call        TCustomComboBox.GetItemIndex
 0050AC61    mov         edx,eax
 0050AC63    add         edx,1
>0050AC66    jno         0050AC6D
 0050AC68    call        @IntOver
 0050AC6D    cmp         edx,0FF
>0050AC73    jbe         0050AC7A
 0050AC75    call        @BoundErr
 0050AC7A    mov         eax,dword ptr [ebp-8]
 0050AC7D    call        004BEAD0
 0050AC82    mov         esi,eax
 0050AC84    and         esi,0FF
 0050AC8A    test        esi,esi
>0050AC8C    jle         0050AD00
 0050AC8E    mov         dword ptr [ebp-4],1
 0050AC95    lea         eax,[ebp-10C]
 0050AC9B    push        eax
 0050AC9C    mov         eax,dword ptr [ebx+2E0];TFormReorganiser.ComboBox1:TComboBox
 0050ACA2    call        TCustomComboBox.GetItemIndex
 0050ACA7    mov         edx,eax
 0050ACA9    add         edx,1
>0050ACAC    jno         0050ACB3
 0050ACAE    call        @IntOver
 0050ACB3    cmp         edx,0FF
>0050ACB9    jbe         0050ACC0
 0050ACBB    call        @BoundErr
 0050ACC0    mov         ecx,dword ptr [ebp-4]
 0050ACC3    cmp         ecx,0FF
>0050ACC9    jbe         0050ACD0
 0050ACCB    call        @BoundErr
 0050ACD0    mov         eax,dword ptr [ebp-8]
 0050ACD3    call        004BED04
 0050ACD8    lea         edx,[ebp-10C]
 0050ACDE    lea         eax,[ebp-0C]
 0050ACE1    call        @LStrFromString
 0050ACE6    mov         edx,dword ptr [ebp-0C]
 0050ACE9    mov         eax,dword ptr [ebx+2DC];TFormReorganiser.ListBox1:TListBox
 0050ACEF    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 0050ACF5    mov         ecx,dword ptr [eax]
 0050ACF7    call        dword ptr [ecx+34];TStrings.Add
 0050ACFA    inc         dword ptr [ebp-4]
 0050ACFD    dec         esi
>0050ACFE    jne         0050AC95
 0050AD00    mov         eax,dword ptr [ebx+2E0];TFormReorganiser.ComboBox1:TComboBox
 0050AD06    call        TCustomComboBox.GetItemIndex
 0050AD0B    mov         esi,eax
 0050AD0D    mov         eax,dword ptr [ebx+2E8];TFormReorganiser.ComboBox2:TComboBox
 0050AD13    call        TCustomComboBox.GetItemIndex
 0050AD18    cmp         esi,eax
>0050AD1A    je          0050AD31
 0050AD1C    mov         eax,dword ptr [ebx+2DC];TFormReorganiser.ListBox1:TListBox
 0050AD22    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 0050AD28    mov         edx,dword ptr [eax]
 0050AD2A    call        dword ptr [edx+14];TStrings.GetCount
 0050AD2D    test        eax,eax
>0050AD2F    jne         0050AD35
 0050AD31    xor         edx,edx
>0050AD33    jmp         0050AD37
 0050AD35    mov         dl,1
 0050AD37    mov         eax,dword ptr [ebx+2EC];TFormReorganiser.SpeedButton1:TSpeedButton
 0050AD3D    mov         ecx,dword ptr [eax]
 0050AD3F    call        dword ptr [ecx+5C];TControl.SetEnabled
 0050AD42    mov         eax,dword ptr [ebx+2E0];TFormReorganiser.ComboBox1:TComboBox
 0050AD48    call        TCustomComboBox.GetItemIndex
 0050AD4D    mov         esi,eax
 0050AD4F    mov         eax,dword ptr [ebx+2E8];TFormReorganiser.ComboBox2:TComboBox
 0050AD55    call        TCustomComboBox.GetItemIndex
 0050AD5A    cmp         esi,eax
>0050AD5C    je          0050AD73
 0050AD5E    mov         eax,dword ptr [ebx+2DC];TFormReorganiser.ListBox1:TListBox
 0050AD64    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 0050AD6A    mov         edx,dword ptr [eax]
 0050AD6C    call        dword ptr [edx+14];TStrings.GetCount
 0050AD6F    test        eax,eax
>0050AD71    jne         0050AD77
 0050AD73    xor         edx,edx
>0050AD75    jmp         0050AD79
 0050AD77    mov         dl,1
 0050AD79    mov         eax,dword ptr [ebx+30C];TFormReorganiser.SpeedButton5:TSpeedButton
 0050AD7F    mov         ecx,dword ptr [eax]
 0050AD81    call        dword ptr [ecx+5C];TControl.SetEnabled
 0050AD84    mov         eax,ebx
 0050AD86    call        0050B494
 0050AD8B    xor         eax,eax
 0050AD8D    pop         edx
 0050AD8E    pop         ecx
 0050AD8F    pop         ecx
 0050AD90    mov         dword ptr fs:[eax],edx
 0050AD93    push        50ADA8
 0050AD98    lea         eax,[ebp-0C]
 0050AD9B    call        @LStrClr
 0050ADA0    ret
>0050ADA1    jmp         @HandleFinally
>0050ADA6    jmp         0050AD98
 0050ADA8    pop         esi
 0050ADA9    pop         ebx
 0050ADAA    mov         esp,ebp
 0050ADAC    pop         ebp
 0050ADAD    ret
*}
end;

//0050ADB0
procedure TFormReorganiser.ComboBox2Change;
begin
{*
 0050ADB0    push        ebp
 0050ADB1    mov         ebp,esp
 0050ADB3    add         esp,0FFFFFEF4
 0050ADB9    push        ebx
 0050ADBA    push        esi
 0050ADBB    xor         ecx,ecx
 0050ADBD    mov         dword ptr [ebp-0C],ecx
 0050ADC0    mov         ebx,eax
 0050ADC2    xor         eax,eax
 0050ADC4    push        ebp
 0050ADC5    push        50AF35
 0050ADCA    push        dword ptr fs:[eax]
 0050ADCD    mov         dword ptr fs:[eax],esp
 0050ADD0    mov         eax,dword ptr [ebx+2E4];TFormReorganiser.ListBox2:TListBox
 0050ADD6    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 0050ADDC    mov         edx,dword ptr [eax]
 0050ADDE    call        dword ptr [edx+40];TStrings.Clear
 0050ADE1    mov         eax,dword ptr [ebx+310];TFormReorganiser.?f310:dword
 0050ADE7    mov         dword ptr [ebp-8],eax
 0050ADEA    mov         eax,dword ptr [ebx+2E8];TFormReorganiser.ComboBox2:TComboBox
 0050ADF0    call        TCustomComboBox.GetItemIndex
 0050ADF5    mov         edx,eax
 0050ADF7    add         edx,1
>0050ADFA    jno         0050AE01
 0050ADFC    call        @IntOver
 0050AE01    cmp         edx,0FF
>0050AE07    jbe         0050AE0E
 0050AE09    call        @BoundErr
 0050AE0E    mov         eax,dword ptr [ebp-8]
 0050AE11    call        004BEAD0
 0050AE16    mov         esi,eax
 0050AE18    and         esi,0FF
 0050AE1E    test        esi,esi
>0050AE20    jle         0050AE94
 0050AE22    mov         dword ptr [ebp-4],1
 0050AE29    lea         eax,[ebp-10C]
 0050AE2F    push        eax
 0050AE30    mov         eax,dword ptr [ebx+2E8];TFormReorganiser.ComboBox2:TComboBox
 0050AE36    call        TCustomComboBox.GetItemIndex
 0050AE3B    mov         edx,eax
 0050AE3D    add         edx,1
>0050AE40    jno         0050AE47
 0050AE42    call        @IntOver
 0050AE47    cmp         edx,0FF
>0050AE4D    jbe         0050AE54
 0050AE4F    call        @BoundErr
 0050AE54    mov         ecx,dword ptr [ebp-4]
 0050AE57    cmp         ecx,0FF
>0050AE5D    jbe         0050AE64
 0050AE5F    call        @BoundErr
 0050AE64    mov         eax,dword ptr [ebp-8]
 0050AE67    call        004BED04
 0050AE6C    lea         edx,[ebp-10C]
 0050AE72    lea         eax,[ebp-0C]
 0050AE75    call        @LStrFromString
 0050AE7A    mov         edx,dword ptr [ebp-0C]
 0050AE7D    mov         eax,dword ptr [ebx+2E4];TFormReorganiser.ListBox2:TListBox
 0050AE83    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 0050AE89    mov         ecx,dword ptr [eax]
 0050AE8B    call        dword ptr [ecx+34];TStrings.Add
 0050AE8E    inc         dword ptr [ebp-4]
 0050AE91    dec         esi
>0050AE92    jne         0050AE29
 0050AE94    mov         eax,dword ptr [ebx+2E0];TFormReorganiser.ComboBox1:TComboBox
 0050AE9A    call        TCustomComboBox.GetItemIndex
 0050AE9F    mov         esi,eax
 0050AEA1    mov         eax,dword ptr [ebx+2E8];TFormReorganiser.ComboBox2:TComboBox
 0050AEA7    call        TCustomComboBox.GetItemIndex
 0050AEAC    cmp         esi,eax
>0050AEAE    je          0050AEC5
 0050AEB0    mov         eax,dword ptr [ebx+2DC];TFormReorganiser.ListBox1:TListBox
 0050AEB6    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 0050AEBC    mov         edx,dword ptr [eax]
 0050AEBE    call        dword ptr [edx+14];TStrings.GetCount
 0050AEC1    test        eax,eax
>0050AEC3    jne         0050AEC9
 0050AEC5    xor         edx,edx
>0050AEC7    jmp         0050AECB
 0050AEC9    mov         dl,1
 0050AECB    mov         eax,dword ptr [ebx+2EC];TFormReorganiser.SpeedButton1:TSpeedButton
 0050AED1    mov         ecx,dword ptr [eax]
 0050AED3    call        dword ptr [ecx+5C];TControl.SetEnabled
 0050AED6    mov         eax,dword ptr [ebx+2E0];TFormReorganiser.ComboBox1:TComboBox
 0050AEDC    call        TCustomComboBox.GetItemIndex
 0050AEE1    mov         esi,eax
 0050AEE3    mov         eax,dword ptr [ebx+2E8];TFormReorganiser.ComboBox2:TComboBox
 0050AEE9    call        TCustomComboBox.GetItemIndex
 0050AEEE    cmp         esi,eax
>0050AEF0    je          0050AF07
 0050AEF2    mov         eax,dword ptr [ebx+2DC];TFormReorganiser.ListBox1:TListBox
 0050AEF8    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 0050AEFE    mov         edx,dword ptr [eax]
 0050AF00    call        dword ptr [edx+14];TStrings.GetCount
 0050AF03    test        eax,eax
>0050AF05    jne         0050AF0B
 0050AF07    xor         edx,edx
>0050AF09    jmp         0050AF0D
 0050AF0B    mov         dl,1
 0050AF0D    mov         eax,dword ptr [ebx+30C];TFormReorganiser.SpeedButton5:TSpeedButton
 0050AF13    mov         ecx,dword ptr [eax]
 0050AF15    call        dword ptr [ecx+5C];TControl.SetEnabled
 0050AF18    mov         eax,ebx
 0050AF1A    call        0050B494
 0050AF1F    xor         eax,eax
 0050AF21    pop         edx
 0050AF22    pop         ecx
 0050AF23    pop         ecx
 0050AF24    mov         dword ptr fs:[eax],edx
 0050AF27    push        50AF3C
 0050AF2C    lea         eax,[ebp-0C]
 0050AF2F    call        @LStrClr
 0050AF34    ret
>0050AF35    jmp         @HandleFinally
>0050AF3A    jmp         0050AF2C
 0050AF3C    pop         esi
 0050AF3D    pop         ebx
 0050AF3E    mov         esp,ebp
 0050AF40    pop         ebp
 0050AF41    ret
*}
end;

//0050AF44
procedure TFormReorganiser.SpeedButton1Click(Sender:TObject);
begin
{*
 0050AF44    push        ebx
 0050AF45    push        esi
 0050AF46    mov         esi,edx
 0050AF48    mov         ebx,eax
 0050AF4A    mov         eax,dword ptr [ebx+2DC];TFormReorganiser.ListBox1:TListBox
 0050AF50    call        TCustomListBox.GetItemIndex
 0050AF55    inc         eax
>0050AF56    je          0050AFE2
 0050AF5C    mov         eax,dword ptr [ebx+2E8];TFormReorganiser.ComboBox2:TComboBox
 0050AF62    call        TCustomComboBox.GetItemIndex
 0050AF67    add         eax,1
>0050AF6A    jno         0050AF71
 0050AF6C    call        @IntOver
 0050AF71    cmp         eax,0FF
>0050AF76    jbe         0050AF7D
 0050AF78    call        @BoundErr
 0050AF7D    push        eax
 0050AF7E    mov         eax,dword ptr [ebx+2DC];TFormReorganiser.ListBox1:TListBox
 0050AF84    call        TCustomListBox.GetItemIndex
 0050AF89    add         eax,1
>0050AF8C    jno         0050AF93
 0050AF8E    call        @IntOver
 0050AF93    cmp         eax,0FF
>0050AF98    jbe         0050AF9F
 0050AF9A    call        @BoundErr
 0050AF9F    push        eax
 0050AFA0    mov         eax,dword ptr [ebx+2E0];TFormReorganiser.ComboBox1:TComboBox
 0050AFA6    call        TCustomComboBox.GetItemIndex
 0050AFAB    mov         edx,eax
 0050AFAD    add         edx,1
>0050AFB0    jno         0050AFB7
 0050AFB2    call        @IntOver
 0050AFB7    cmp         edx,0FF
>0050AFBD    jbe         0050AFC4
 0050AFBF    call        @BoundErr
 0050AFC4    mov         eax,dword ptr [ebx+310];TFormReorganiser.?f310:dword
 0050AFCA    pop         ecx
 0050AFCB    call        004BFD68
 0050AFD0    mov         edx,esi
 0050AFD2    mov         eax,ebx
 0050AFD4    call        TFormReorganiser.ComboBox1Change
 0050AFD9    mov         edx,esi
 0050AFDB    mov         eax,ebx
 0050AFDD    call        TFormReorganiser.ComboBox2Change
 0050AFE2    pop         esi
 0050AFE3    pop         ebx
 0050AFE4    ret
*}
end;

//0050AFE8
procedure TFormReorganiser.ListBox1DrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
begin
    if (Index mod 2  <> 1) then
    begin//2
      //0055303B
      ListBox1.Canvas.Brush.Color := $FFFFFF;
      ListBox1.Canvas.FillRect(Rect);
    end//2
    else
    begin//2
      //0055306A
      ListBox1.Canvas.Brush.Color := $F4F3EE;
      ListBox1.Canvas.FillRect(Rect);
    end;//2

    ListBox1.Canvas.TextOut(Rect.Left + 5, Rect.Top + 2, ListBox1.Items[Index]);
    if ( odSelected in State) then
    begin//2
      //005530E6
      ListBox1.Canvas.Brush.Color := $F8D1C5;
      ListBox1.Canvas.FillRect(Rect);
      ListBox1.Canvas.Font.Color := $FF0000;
      ListBox1.Canvas.TextOut(Rect.Left + 5, Rect.Top + 2, ListBox1.Items[Index]);
    end;//2
end;

//0050B18C
procedure TFormReorganiser.ListBox2DrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
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

//0050B330
procedure TFormReorganiser.SpeedButton3Click(Sender:TObject);
begin
{*
 0050B330    push        ebx
 0050B331    push        esi
 0050B332    push        edi
 0050B333    push        ebp
 0050B334    mov         ebp,edx
 0050B336    mov         ebx,eax
 0050B338    mov         eax,dword ptr [ebx+2DC];TFormReorganiser.ListBox1:TListBox
 0050B33E    call        TCustomListBox.GetItemIndex
 0050B343    inc         eax
>0050B344    je          0050B3E3
 0050B34A    mov         eax,dword ptr [ebx+2DC];TFormReorganiser.ListBox1:TListBox
 0050B350    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 0050B356    mov         edx,dword ptr [eax]
 0050B358    call        dword ptr [edx+14];TStrings.GetCount
 0050B35B    mov         esi,eax
 0050B35D    sub         esi,1
>0050B360    jno         0050B367
 0050B362    call        @IntOver
 0050B367    mov         eax,dword ptr [ebx+2DC];TFormReorganiser.ListBox1:TListBox
 0050B36D    call        TCustomListBox.GetItemIndex
 0050B372    cmp         esi,eax
>0050B374    je          0050B3E3
 0050B376    mov         eax,dword ptr [ebx+2DC];TFormReorganiser.ListBox1:TListBox
 0050B37C    call        TCustomListBox.GetItemIndex
 0050B381    mov         esi,eax
 0050B383    mov         eax,dword ptr [ebx+2E0];TFormReorganiser.ComboBox1:TComboBox
 0050B389    call        TCustomComboBox.GetItemIndex
 0050B38E    mov         edx,eax
 0050B390    add         edx,1
>0050B393    jno         0050B39A
 0050B395    call        @IntOver
 0050B39A    cmp         edx,0FF
>0050B3A0    jbe         0050B3A7
 0050B3A2    call        @BoundErr
 0050B3A7    mov         edi,esi
 0050B3A9    add         edi,1
>0050B3AC    jno         0050B3B3
 0050B3AE    call        @IntOver
 0050B3B3    mov         ecx,edi
 0050B3B5    cmp         ecx,0FF
>0050B3BB    jbe         0050B3C2
 0050B3BD    call        @BoundErr
 0050B3C2    mov         eax,dword ptr [ebx+310];TFormReorganiser.?f310:dword
 0050B3C8    call        004C4990
 0050B3CD    mov         edx,ebp
 0050B3CF    mov         eax,ebx
 0050B3D1    call        TFormReorganiser.ComboBox1Change
 0050B3D6    mov         edx,edi
 0050B3D8    mov         eax,dword ptr [ebx+2DC];TFormReorganiser.ListBox1:TListBox
 0050B3DE    call        TCustomListBox.SetItemIndex
 0050B3E3    pop         ebp
 0050B3E4    pop         edi
 0050B3E5    pop         esi
 0050B3E6    pop         ebx
 0050B3E7    ret
*}
end;

//0050B3E8
procedure TFormReorganiser.SpeedButton2Click(Sender:TObject);
begin
{*
 0050B3E8    push        ebx
 0050B3E9    push        esi
 0050B3EA    push        edi
 0050B3EB    mov         edi,edx
 0050B3ED    mov         ebx,eax
 0050B3EF    mov         eax,dword ptr [ebx+2DC];TFormReorganiser.ListBox1:TListBox
 0050B3F5    call        TCustomListBox.GetItemIndex
 0050B3FA    inc         eax
>0050B3FB    je          0050B485
 0050B401    mov         eax,dword ptr [ebx+2DC];TFormReorganiser.ListBox1:TListBox
 0050B407    call        TCustomListBox.GetItemIndex
 0050B40C    test        eax,eax
>0050B40E    je          0050B485
 0050B410    mov         eax,dword ptr [ebx+2DC];TFormReorganiser.ListBox1:TListBox
 0050B416    call        TCustomListBox.GetItemIndex
 0050B41B    mov         esi,eax
 0050B41D    mov         eax,dword ptr [ebx+2E0];TFormReorganiser.ComboBox1:TComboBox
 0050B423    call        TCustomComboBox.GetItemIndex
 0050B428    mov         edx,eax
 0050B42A    add         edx,1
>0050B42D    jno         0050B434
 0050B42F    call        @IntOver
 0050B434    cmp         edx,0FF
>0050B43A    jbe         0050B441
 0050B43C    call        @BoundErr
 0050B441    mov         ecx,esi
 0050B443    add         ecx,1
>0050B446    jno         0050B44D
 0050B448    call        @IntOver
 0050B44D    cmp         ecx,0FF
>0050B453    jbe         0050B45A
 0050B455    call        @BoundErr
 0050B45A    mov         eax,dword ptr [ebx+310];TFormReorganiser.?f310:dword
 0050B460    call        004C4B20
 0050B465    mov         edx,edi
 0050B467    mov         eax,ebx
 0050B469    call        TFormReorganiser.ComboBox1Change
 0050B46E    mov         edx,esi
 0050B470    sub         edx,1
>0050B473    jno         0050B47A
 0050B475    call        @IntOver
 0050B47A    mov         eax,dword ptr [ebx+2DC];TFormReorganiser.ListBox1:TListBox
 0050B480    call        TCustomListBox.SetItemIndex
 0050B485    pop         edi
 0050B486    pop         esi
 0050B487    pop         ebx
 0050B488    ret
*}
end;

//0050B48C
procedure TFormReorganiser.SpeedButton4Click(Sender:TObject);
begin
{*
 0050B48C    call        TCustomForm.Close
 0050B491    ret
*}
end;

//0050B494
//procedure sub_0050B494(?:TFormReorganiser);
//begin
{*
 0050B494    push        ebp
 0050B495    mov         ebp,esp
 0050B497    push        0
 0050B499    push        0
 0050B49B    push        ebx
 0050B49C    push        esi
 0050B49D    push        edi
 0050B49E    mov         ebx,eax
 0050B4A0    xor         eax,eax
 0050B4A2    push        ebp
 0050B4A3    push        50B5DD
 0050B4A8    push        dword ptr fs:[eax]
 0050B4AB    mov         dword ptr fs:[eax],esp
 0050B4AE    mov         edi,dword ptr [ebx+310];TFormReorganiser.?f310:dword
 0050B4B4    mov         eax,dword ptr [ebx+2E0];TFormReorganiser.ComboBox1:TComboBox
 0050B4BA    call        TCustomComboBox.GetItemIndex
 0050B4BF    mov         edx,eax
 0050B4C1    add         edx,1
>0050B4C4    jno         0050B4CB
 0050B4C6    call        @IntOver
 0050B4CB    cmp         edx,0FF
>0050B4D1    jbe         0050B4D8
 0050B4D3    call        @BoundErr
 0050B4D8    mov         eax,edi
 0050B4DA    call        004BEAD0
 0050B4DF    mov         esi,eax
 0050B4E1    and         esi,0FF
 0050B4E7    mov         eax,esi
 0050B4E9    sub         eax,1
>0050B4EC    jb          0050B4F2
>0050B4EE    je          0050B504
>0050B4F0    jmp         0050B516
 0050B4F2    mov         edx,50B5F4;'aucune série de notes'
 0050B4F7    mov         eax,dword ptr [ebx+304];TFormReorganiser.Label3:TLabel
 0050B4FD    call        TControl.SetText
>0050B502    jmp         0050B53B
 0050B504    mov         edx,50B614;'1 série de notes'
 0050B509    mov         eax,dword ptr [ebx+304];TFormReorganiser.Label3:TLabel
 0050B50F    call        TControl.SetText
>0050B514    jmp         0050B53B
 0050B516    lea         edx,[ebp-4]
 0050B519    mov         eax,esi
 0050B51B    call        IntToStr
 0050B520    lea         eax,[ebp-4]
 0050B523    mov         edx,50B630;' séries de notes'
 0050B528    call        @LStrCat
 0050B52D    mov         edx,dword ptr [ebp-4]
 0050B530    mov         eax,dword ptr [ebx+304];TFormReorganiser.Label3:TLabel
 0050B536    call        TControl.SetText
 0050B53B    mov         eax,dword ptr [ebx+2E8];TFormReorganiser.ComboBox2:TComboBox
 0050B541    call        TCustomComboBox.GetItemIndex
 0050B546    mov         edx,eax
 0050B548    add         edx,1
>0050B54B    jno         0050B552
 0050B54D    call        @IntOver
 0050B552    cmp         edx,0FF
>0050B558    jbe         0050B55F
 0050B55A    call        @BoundErr
 0050B55F    mov         eax,edi
 0050B561    call        004BEAD0
 0050B566    mov         esi,eax
 0050B568    and         esi,0FF
 0050B56E    mov         eax,esi
 0050B570    sub         eax,1
>0050B573    jb          0050B579
>0050B575    je          0050B58B
>0050B577    jmp         0050B59D
 0050B579    mov         edx,50B5F4;'aucune série de notes'
 0050B57E    mov         eax,dword ptr [ebx+308];TFormReorganiser.Label4:TLabel
 0050B584    call        TControl.SetText
>0050B589    jmp         0050B5C2
 0050B58B    mov         edx,50B614;'1 série de notes'
 0050B590    mov         eax,dword ptr [ebx+308];TFormReorganiser.Label4:TLabel
 0050B596    call        TControl.SetText
>0050B59B    jmp         0050B5C2
 0050B59D    lea         edx,[ebp-8]
 0050B5A0    mov         eax,esi
 0050B5A2    call        IntToStr
 0050B5A7    lea         eax,[ebp-8]
 0050B5AA    mov         edx,50B630;' séries de notes'
 0050B5AF    call        @LStrCat
 0050B5B4    mov         edx,dword ptr [ebp-8]
 0050B5B7    mov         eax,dword ptr [ebx+308];TFormReorganiser.Label4:TLabel
 0050B5BD    call        TControl.SetText
 0050B5C2    xor         eax,eax
 0050B5C4    pop         edx
 0050B5C5    pop         ecx
 0050B5C6    pop         ecx
 0050B5C7    mov         dword ptr fs:[eax],edx
 0050B5CA    push        50B5E4
 0050B5CF    lea         eax,[ebp-8]
 0050B5D2    mov         edx,2
 0050B5D7    call        @LStrArrayClr
 0050B5DC    ret
>0050B5DD    jmp         @HandleFinally
>0050B5E2    jmp         0050B5CF
 0050B5E4    pop         edi
 0050B5E5    pop         esi
 0050B5E6    pop         ebx
 0050B5E7    pop         ecx
 0050B5E8    pop         ecx
 0050B5E9    pop         ebp
 0050B5EA    ret
*}
//end;

//0050B644
procedure TFormReorganiser.SpeedButton5Click(Sender:TObject);
begin
{*
 0050B644    push        ebx
 0050B645    push        esi
 0050B646    push        edi
 0050B647    mov         edi,edx
 0050B649    mov         ebx,eax
 0050B64B    mov         eax,dword ptr [ebx+2DC];TFormReorganiser.ListBox1:TListBox
 0050B651    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 0050B657    mov         edx,dword ptr [eax]
 0050B659    call        dword ptr [edx+14];TStrings.GetCount
 0050B65C    mov         esi,eax
 0050B65E    test        esi,esi
>0050B660    jle         0050B6B8
 0050B662    mov         eax,dword ptr [ebx+2E8];TFormReorganiser.ComboBox2:TComboBox
 0050B668    call        TCustomComboBox.GetItemIndex
 0050B66D    add         eax,1
>0050B670    jno         0050B677
 0050B672    call        @IntOver
 0050B677    cmp         eax,0FF
>0050B67C    jbe         0050B683
 0050B67E    call        @BoundErr
 0050B683    push        eax
 0050B684    mov         eax,dword ptr [ebx+2E0];TFormReorganiser.ComboBox1:TComboBox
 0050B68A    call        TCustomComboBox.GetItemIndex
 0050B68F    mov         edx,eax
 0050B691    add         edx,1
>0050B694    jno         0050B69B
 0050B696    call        @IntOver
 0050B69B    cmp         edx,0FF
>0050B6A1    jbe         0050B6A8
 0050B6A3    call        @BoundErr
 0050B6A8    mov         cl,1
 0050B6AA    mov         eax,dword ptr [ebx+310];TFormReorganiser.?f310:dword
 0050B6B0    call        004BFD68
 0050B6B5    dec         esi
>0050B6B6    jne         0050B662
 0050B6B8    mov         edx,edi
 0050B6BA    mov         eax,ebx
 0050B6BC    call        TFormReorganiser.ComboBox1Change
 0050B6C1    mov         edx,edi
 0050B6C3    mov         eax,ebx
 0050B6C5    call        TFormReorganiser.ComboBox2Change
 0050B6CA    pop         edi
 0050B6CB    pop         esi
 0050B6CC    pop         ebx
 0050B6CD    ret
*}
end;

//0050B6D0
procedure TFormReorganiser.FormKeyPress(Sender:TObject; var Key:Char);
begin
  if (Key = chr($0D)) then
    ModalResult := 1
  else
  if (Key = chr($1B)) then 
  ModalResult := 2;
end;

end.