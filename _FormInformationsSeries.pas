{***************************************
* Version Original V0.01
* Decompiled by HOUIDEF AEK v.05.02.2018
***************************************}
unit _FormInformationsSeries;

interface

uses
  Forms,Windows, SysUtils, Classes, ExtCtrls, Buttons, ComCtrls, StdCtrls, Controls, UFichierCdn;

type
  TFormInformationsSeriesDeNotes = class(TForm)
  published
    Panel2:TPanel;//f2D0
    Bevel2:TBevel;//f2D4
    Image1:TImage;//f2D8
    SpeedButton1:TSpeedButton;//f2DC
    TabControl1:TTabControl;//f2E0
    ListBoxSeries:TListBox;//f2E4
    Label1:TLabel;//f2E8
    Label2:TLabel;//f2EC
    Edit1:TEdit;//f2F0
    Label3:TLabel;//f2F4
    SpeedButton2:TSpeedButton;//f2F8
    Label4:TLabel;//f2FC
    ComboBox1:TComboBox;//f300
    ComboBox2:TComboBox;//f304
    SpeedButton3:TSpeedButton;//f308
    RadioGroup1:TRadioGroup;//f30C
    Label5:TLabel;//f310
    DateTimePicker1:TDateTimePicker;//f314
    Label6:TLabel;//f318
    Edit2:TEdit;//f31C
    ComboBox3:TComboBox;//f320
    Label7:TLabel;//f324
    SpeedButton4:TSpeedButton;//f328
    Label8:TLabel;//f32C
    RadioGroup2:TRadioGroup;//f330
    procedure ComboBox3Change;//0050DE9C
    procedure Edit2Change;//0050DF6C
    procedure ComboBox1Change;//0050DCF0
    procedure DateTimePicker1Change;//0050DDC0
    procedure FormKeyPress(Sender:TObject; var Key:Char);//0050E2F8
    procedure RadioGroup2Click(Sender:TObject);//0050E318
    procedure RadioGroup1Click(Sender:TObject);//0050E03C
    procedure Edit1Change;//0050E0CC
    procedure ListBoxSeriesDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);//0050CAE8
    procedure ListBoxSeriesClick(Sender:TObject);//0050CC54
    procedure SpeedButton1Click(Sender:TObject);//0050C9AC
    procedure TabControl1Change(Sender:TObject);//0050C9B4
    procedure SpeedButton4Click(Sender:TObject);//0050DA4C
    procedure ComboBox2Change;//0050DC20
    procedure SpeedButton2Click(Sender:TObject);//0050D60C
    procedure SpeedButton3Click(Sender:TObject);//0050D82C
  public
    f334:TFichierCdn;//f334
    constructor Create(Owner:TComponent; F:TFichierCdn;logo:Timage);//0050C820
	// procedure sub_0050E1D8(?:TFormInformationsSeriesDeNotes);//0050E1D8
  end;
   
 var 
   FormInformationsSeriesDeNotes:TFormInformationsSeriesDeNotes;
implementation

{$R *.DFM}

//0050C820
constructor TFormInformationsSeriesDeNotes.Create(Owner:TComponent; F:TFichierCdn; logo:Timage);
var
 I:integer;
 buf:string;
begin//0
  //0050C820

    //0050C84F
    inherited Create(Owner);

    Image1.Picture := logo.Picture;
    f334 := F;

    TabControl1.Tabs := F.sub_004BEA4C;

    ;
    
      for I := 1 to f334.sub_004BEAD0(TabControl1.TabIndex + 1) do //0050C8CA
      begin//3
        //0050C8D1
        f334.sub_004BED04(TabControl1.TabIndex + 1, buf, I);
        ListBoxSeries.Items.Add(buf);
      end;//3
 

    if (ListBoxSeries.Items.Count > 0) then//0050C951
      ListBoxSeries.ItemIndex := 0;


    ListBoxSeriesClick(Self);
    //sub_0050E1D8;

end;//0

//0050C9AC
procedure TFormInformationsSeriesDeNotes.SpeedButton1Click(Sender:TObject);
begin
{*
 0050C9AC    call        TCustomForm.Close
 0050C9B1    ret
*}
end;

//0050C9B4
procedure TFormInformationsSeriesDeNotes.TabControl1Change(Sender:Tobject);
begin
{*
 0050C9B4    push        ebp
 0050C9B5    mov         ebp,esp
 0050C9B7    add         esp,0FFFFFEF4
 0050C9BD    push        ebx
 0050C9BE    push        esi
 0050C9BF    xor         ecx,ecx
 0050C9C1    mov         dword ptr [ebp-0C],ecx
 0050C9C4    mov         ebx,eax
 0050C9C6    xor         eax,eax
 0050C9C8    push        ebp
 0050C9C9    push        50CADA
 0050C9CE    push        dword ptr fs:[eax]
 0050C9D1    mov         dword ptr fs:[eax],esp
 0050C9D4    mov         eax,dword ptr [ebx+2E4];TFormInformationsSeriesDeNotes.ListBoxSeries:TListBox
 0050C9DA    call        TCustomListBox.Clear
 0050C9DF    mov         eax,dword ptr [ebx+334];TFormInformationsSeriesDeNotes.?f334:dword
 0050C9E5    mov         dword ptr [ebp-8],eax
 0050C9E8    mov         eax,dword ptr [ebx+2E0];TFormInformationsSeriesDeNotes.TabControl1:TTabControl
 0050C9EE    call        TCustomTabControl.GetTabIndex
 0050C9F3    mov         edx,eax
 0050C9F5    add         edx,1
>0050C9F8    jno         0050C9FF
 0050C9FA    call        @IntOver
 0050C9FF    cmp         edx,0FF
>0050CA05    jbe         0050CA0C
 0050CA07    call        @BoundErr
 0050CA0C    mov         eax,dword ptr [ebp-8]
 0050CA0F    call        004BEAD0
 0050CA14    mov         esi,eax
 0050CA16    and         esi,0FF
 0050CA1C    test        esi,esi
>0050CA1E    jle         0050CA92
 0050CA20    mov         dword ptr [ebp-4],1
 0050CA27    lea         eax,[ebp-10C]
 0050CA2D    push        eax
 0050CA2E    mov         eax,dword ptr [ebx+2E0];TFormInformationsSeriesDeNotes.TabControl1:TTabControl
 0050CA34    call        TCustomTabControl.GetTabIndex
 0050CA39    mov         edx,eax
 0050CA3B    add         edx,1
>0050CA3E    jno         0050CA45
 0050CA40    call        @IntOver
 0050CA45    cmp         edx,0FF
>0050CA4B    jbe         0050CA52
 0050CA4D    call        @BoundErr
 0050CA52    mov         ecx,dword ptr [ebp-4]
 0050CA55    cmp         ecx,0FF
>0050CA5B    jbe         0050CA62
 0050CA5D    call        @BoundErr
 0050CA62    mov         eax,dword ptr [ebp-8]
 0050CA65    call        004BED04
 0050CA6A    lea         edx,[ebp-10C]
 0050CA70    lea         eax,[ebp-0C]
 0050CA73    call        @LStrFromString
 0050CA78    mov         edx,dword ptr [ebp-0C]
 0050CA7B    mov         eax,dword ptr [ebx+2E4];TFormInformationsSeriesDeNotes.ListBoxSeries:TListBox
 0050CA81    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 0050CA87    mov         ecx,dword ptr [eax]
 0050CA89    call        dword ptr [ecx+34];TStrings.Add
 0050CA8C    inc         dword ptr [ebp-4]
 0050CA8F    dec         esi
>0050CA90    jne         0050CA27
 0050CA92    mov         eax,dword ptr [ebx+2E4];TFormInformationsSeriesDeNotes.ListBoxSeries:TListBox
 0050CA98    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 0050CA9E    mov         edx,dword ptr [eax]
 0050CAA0    call        dword ptr [edx+14];TStrings.GetCount
 0050CAA3    test        eax,eax
>0050CAA5    jle         0050CAB4
 0050CAA7    xor         edx,edx
 0050CAA9    mov         eax,dword ptr [ebx+2E4];TFormInformationsSeriesDeNotes.ListBoxSeries:TListBox
 0050CAAF    call        TCustomListBox.SetItemIndex
 0050CAB4    mov         edx,ebx
 0050CAB6    mov         eax,ebx
 0050CAB8    call        TFormInformationsSeriesDeNotes.ListBoxSeriesClick
 0050CABD    mov         eax,ebx
 0050CABF    call        0050E1D8
 0050CAC4    xor         eax,eax
 0050CAC6    pop         edx
 0050CAC7    pop         ecx
 0050CAC8    pop         ecx
 0050CAC9    mov         dword ptr fs:[eax],edx
 0050CACC    push        50CAE1
 0050CAD1    lea         eax,[ebp-0C]
 0050CAD4    call        @LStrClr
 0050CAD9    ret
>0050CADA    jmp         @HandleFinally
>0050CADF    jmp         0050CAD1
 0050CAE1    pop         esi
 0050CAE2    pop         ebx
 0050CAE3    mov         esp,ebp
 0050CAE5    pop         ebp
 0050CAE6    ret
*}
end;

//0050CAE8
procedure TFormInformationsSeriesDeNotes.ListBoxSeriesDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
begin
    if (Index mod 2  <> 1) then
    begin//2
      //0055303B
      ListBoxSeries.Canvas.Brush.Color := $FFFFFF;
      ListBoxSeries.Canvas.FillRect(Rect);
    end//2
    else
    begin//2
      //0055306A
      ListBoxSeries.Canvas.Brush.Color := $F4F3EE;
      ListBoxSeries.Canvas.FillRect(Rect);
    end;//2

    ListBoxSeries.Canvas.TextOut(Rect.Left + 5, Rect.Top + 2, ListBoxSeries.Items[Index]);
    if ( odSelected in State) then
    begin//2
      //005530E6
      ListBoxSeries.Canvas.Brush.Color := $F8D1C5;
      ListBoxSeries.Canvas.FillRect(Rect);
      ListBoxSeries.Canvas.Font.Color := $FF0000;
      ListBoxSeries.Canvas.TextOut(Rect.Left + 5, Rect.Top + 2, ListBoxSeries.Items[Index]);
    end;//2
end;

//0050CC54
procedure TFormInformationsSeriesDeNotes.ListBoxSeriesClick(Sender:TObject);
begin
{*
 0050CC54    push        ebp
 0050CC55    mov         ebp,esp
 0050CC57    mov         ecx,28
 0050CC5C    push        0
 0050CC5E    push        0
 0050CC60    dec         ecx
>0050CC61    jne         0050CC5C
 0050CC63    push        ebx
 0050CC64    push        esi
 0050CC65    mov         ebx,eax
 0050CC67    xor         eax,eax
 0050CC69    push        ebp
 0050CC6A    push        50D53D
 0050CC6F    push        dword ptr fs:[eax]
 0050CC72    mov         dword ptr fs:[eax],esp
 0050CC75    mov         eax,dword ptr [ebx+2E4];TFormInformationsSeriesDeNotes.ListBoxSeries:TListBox
 0050CC7B    call        TCustomListBox.GetItemIndex
 0050CC80    inc         eax
>0050CC81    je          0050D495
 0050CC87    mov         eax,dword ptr [ebx+334];TFormInformationsSeriesDeNotes.?f334:dword
 0050CC8D    mov         dword ptr [ebp-8],eax
 0050CC90    mov         eax,dword ptr [ebx+2E4];TFormInformationsSeriesDeNotes.ListBoxSeries:TListBox
 0050CC96    call        TCustomListBox.GetItemIndex
 0050CC9B    mov         esi,eax
 0050CC9D    add         esi,1
>0050CCA0    jno         0050CCA7
 0050CCA2    call        @IntOver
 0050CCA7    mov         eax,dword ptr [ebx+2E0];TFormInformationsSeriesDeNotes.TabControl1:TTabControl
 0050CCAD    call        TCustomTabControl.GetTabIndex
 0050CCB2    add         eax,1
>0050CCB5    jno         0050CCBC
 0050CCB7    call        @IntOver
 0050CCBC    mov         dword ptr [ebp-4],eax
 0050CCBF    mov         dl,1
 0050CCC1    mov         eax,dword ptr [ebx+2F0];TFormInformationsSeriesDeNotes.Edit1:TEdit
 0050CCC7    mov         ecx,dword ptr [eax]
 0050CCC9    call        dword ptr [ecx+5C];TControl.SetEnabled
 0050CCCC    mov         dl,1
 0050CCCE    mov         eax,dword ptr [ebx+304];TFormInformationsSeriesDeNotes.ComboBox2:TComboBox
 0050CCD4    mov         ecx,dword ptr [eax]
 0050CCD6    call        dword ptr [ecx+5C];TControl.SetEnabled
 0050CCD9    mov         dl,1
 0050CCDB    mov         eax,dword ptr [ebx+300];TFormInformationsSeriesDeNotes.ComboBox1:TComboBox
 0050CCE1    mov         ecx,dword ptr [eax]
 0050CCE3    call        dword ptr [ecx+5C];TControl.SetEnabled
 0050CCE6    mov         dl,1
 0050CCE8    mov         eax,dword ptr [ebx+30C];TFormInformationsSeriesDeNotes.RadioGroup1:TRadioGroup
 0050CCEE    mov         ecx,dword ptr [eax]
 0050CCF0    call        dword ptr [ecx+5C];TControl.SetEnabled
 0050CCF3    mov         dl,1
 0050CCF5    mov         eax,dword ptr [ebx+314];TFormInformationsSeriesDeNotes.DateTimePicker1:TDateTimePicker
 0050CCFB    mov         ecx,dword ptr [eax]
 0050CCFD    call        dword ptr [ecx+5C];TControl.SetEnabled
 0050CD00    mov         dl,1
 0050CD02    mov         eax,dword ptr [ebx+320];TFormInformationsSeriesDeNotes.ComboBox3:TComboBox
 0050CD08    mov         ecx,dword ptr [eax]
 0050CD0A    call        dword ptr [ecx+5C];TControl.SetEnabled
 0050CD0D    mov         dl,1
 0050CD0F    mov         eax,dword ptr [ebx+31C];TFormInformationsSeriesDeNotes.Edit2:TEdit
 0050CD15    mov         ecx,dword ptr [eax]
 0050CD17    call        dword ptr [ecx+5C];TControl.SetEnabled
 0050CD1A    mov         dl,1
 0050CD1C    mov         eax,dword ptr [ebx+2F8];TFormInformationsSeriesDeNotes.SpeedButton2:TSpeedButton
 0050CD22    mov         ecx,dword ptr [eax]
 0050CD24    call        dword ptr [ecx+5C];TControl.SetEnabled
 0050CD27    mov         dl,1
 0050CD29    mov         eax,dword ptr [ebx+308];TFormInformationsSeriesDeNotes.SpeedButton3:TSpeedButton
 0050CD2F    mov         ecx,dword ptr [eax]
 0050CD31    call        dword ptr [ecx+5C];TControl.SetEnabled
 0050CD34    mov         dl,1
 0050CD36    mov         eax,dword ptr [ebx+328];TFormInformationsSeriesDeNotes.SpeedButton4:TSpeedButton
 0050CD3C    mov         ecx,dword ptr [eax]
 0050CD3E    call        dword ptr [ecx+5C];TControl.SetEnabled
 0050CD41    lea         eax,[ebp-10C]
 0050CD47    push        eax
 0050CD48    mov         ecx,esi
 0050CD4A    cmp         ecx,0FF
>0050CD50    jbe         0050CD57
 0050CD52    call        @BoundErr
 0050CD57    mov         edx,dword ptr [ebp-4]
 0050CD5A    cmp         edx,0FF
>0050CD60    jbe         0050CD67
 0050CD62    call        @BoundErr
 0050CD67    mov         eax,dword ptr [ebp-8]
 0050CD6A    call        004BED04
 0050CD6F    lea         edx,[ebp-10C]
 0050CD75    lea         eax,[ebp-0C]
 0050CD78    call        @LStrFromString
 0050CD7D    mov         edx,dword ptr [ebp-0C]
 0050CD80    mov         eax,dword ptr [ebx+2F0];TFormInformationsSeriesDeNotes.Edit1:TEdit
 0050CD86    call        TControl.SetText
 0050CD8B    mov         eax,dword ptr [ebx+304];TFormInformationsSeriesDeNotes.ComboBox2:TComboBox
 0050CD91    mov         eax,dword ptr [eax+1F0];TComboBox.FItems:TStrings
 0050CD97    mov         edx,dword ptr [eax]
 0050CD99    call        dword ptr [edx+40];TStrings.Clear
 0050CD9C    mov         eax,dword ptr [ebx+304];TFormInformationsSeriesDeNotes.ComboBox2:TComboBox
 0050CDA2    mov         eax,dword ptr [eax+1F0];TComboBox.FItems:TStrings
 0050CDA8    mov         edx,50D554;'20'
 0050CDAD    mov         ecx,dword ptr [eax]
 0050CDAF    call        dword ptr [ecx+34];TStrings.Add
 0050CDB2    mov         eax,dword ptr [ebx+304];TFormInformationsSeriesDeNotes.ComboBox2:TComboBox
 0050CDB8    mov         eax,dword ptr [eax+1F0];TComboBox.FItems:TStrings
 0050CDBE    mov         edx,50D560;'10'
 0050CDC3    mov         ecx,dword ptr [eax]
 0050CDC5    call        dword ptr [ecx+34];TStrings.Add
 0050CDC8    mov         eax,dword ptr [ebx+304];TFormInformationsSeriesDeNotes.ComboBox2:TComboBox
 0050CDCE    mov         eax,dword ptr [eax+1F0];TComboBox.FItems:TStrings
 0050CDD4    mov         edx,50D56C;'5'
 0050CDD9    mov         ecx,dword ptr [eax]
 0050CDDB    call        dword ptr [ecx+34];TStrings.Add
 0050CDDE    mov         eax,dword ptr [ebx+304];TFormInformationsSeriesDeNotes.ComboBox2:TComboBox
 0050CDE4    mov         eax,dword ptr [eax+1F0];TComboBox.FItems:TStrings
 0050CDEA    mov         edx,50D578;'30'
 0050CDEF    mov         ecx,dword ptr [eax]
 0050CDF1    call        dword ptr [ecx+34];TStrings.Add
 0050CDF4    mov         eax,dword ptr [ebx+304];TFormInformationsSeriesDeNotes.ComboBox2:TComboBox
 0050CDFA    mov         eax,dword ptr [eax+1F0];TComboBox.FItems:TStrings
 0050CE00    mov         edx,50D584;'40'
 0050CE05    mov         ecx,dword ptr [eax]
 0050CE07    call        dword ptr [ecx+34];TStrings.Add
 0050CE0A    mov         eax,dword ptr [ebx+304];TFormInformationsSeriesDeNotes.ComboBox2:TComboBox
 0050CE10    mov         eax,dword ptr [eax+1F0];TComboBox.FItems:TStrings
 0050CE16    mov         edx,50D590;'50'
 0050CE1B    mov         ecx,dword ptr [eax]
 0050CE1D    call        dword ptr [ecx+34];TStrings.Add
 0050CE20    mov         eax,dword ptr [ebx+304];TFormInformationsSeriesDeNotes.ComboBox2:TComboBox
 0050CE26    mov         eax,dword ptr [eax+1F0];TComboBox.FItems:TStrings
 0050CE2C    mov         edx,50D59C;'100'
 0050CE31    mov         ecx,dword ptr [eax]
 0050CE33    call        dword ptr [ecx+34];TStrings.Add
 0050CE36    lea         eax,[ebp-10C]
 0050CE3C    push        eax
 0050CE3D    mov         ecx,esi
 0050CE3F    cmp         ecx,0FF
>0050CE45    jbe         0050CE4C
 0050CE47    call        @BoundErr
 0050CE4C    mov         edx,dword ptr [ebp-4]
 0050CE4F    cmp         edx,0FF
>0050CE55    jbe         0050CE5C
 0050CE57    call        @BoundErr
 0050CE5C    mov         eax,dword ptr [ebp-8]
 0050CE5F    call        004BED2C
 0050CE64    lea         edx,[ebp-10C]
 0050CE6A    lea         eax,[ebp-110]
 0050CE70    call        @LStrFromString
 0050CE75    mov         edx,dword ptr [ebp-110]
 0050CE7B    mov         eax,dword ptr [ebx+304];TFormInformationsSeriesDeNotes.ComboBox2:TComboBox
 0050CE81    mov         eax,dword ptr [eax+1F0];TComboBox.FItems:TStrings
 0050CE87    mov         ecx,dword ptr [eax]
 0050CE89    call        dword ptr [ecx+50];TStrings.IndexOf
 0050CE8C    inc         eax
>0050CE8D    jne         0050CEE5
 0050CE8F    lea         eax,[ebp-10C]
 0050CE95    push        eax
 0050CE96    mov         ecx,esi
 0050CE98    cmp         ecx,0FF
>0050CE9E    jbe         0050CEA5
 0050CEA0    call        @BoundErr
 0050CEA5    mov         edx,dword ptr [ebp-4]
 0050CEA8    cmp         edx,0FF
>0050CEAE    jbe         0050CEB5
 0050CEB0    call        @BoundErr
 0050CEB5    mov         eax,dword ptr [ebp-8]
 0050CEB8    call        004BED2C
 0050CEBD    lea         edx,[ebp-10C]
 0050CEC3    lea         eax,[ebp-114]
 0050CEC9    call        @LStrFromString
 0050CECE    mov         edx,dword ptr [ebp-114]
 0050CED4    mov         eax,dword ptr [ebx+304];TFormInformationsSeriesDeNotes.ComboBox2:TComboBox
 0050CEDA    mov         eax,dword ptr [eax+1F0];TComboBox.FItems:TStrings
 0050CEE0    mov         ecx,dword ptr [eax]
 0050CEE2    call        dword ptr [ecx+34];TStrings.Add
 0050CEE5    lea         eax,[ebp-10C]
 0050CEEB    push        eax
 0050CEEC    mov         ecx,esi
 0050CEEE    cmp         ecx,0FF
>0050CEF4    jbe         0050CEFB
 0050CEF6    call        @BoundErr
 0050CEFB    mov         edx,dword ptr [ebp-4]
 0050CEFE    cmp         edx,0FF
>0050CF04    jbe         0050CF0B
 0050CF06    call        @BoundErr
 0050CF0B    mov         eax,dword ptr [ebp-8]
 0050CF0E    call        004BED2C
 0050CF13    lea         edx,[ebp-10C]
 0050CF19    lea         eax,[ebp-118]
 0050CF1F    call        @LStrFromString
 0050CF24    mov         edx,dword ptr [ebp-118]
 0050CF2A    mov         eax,dword ptr [ebx+304];TFormInformationsSeriesDeNotes.ComboBox2:TComboBox
 0050CF30    mov         eax,dword ptr [eax+1F0];TComboBox.FItems:TStrings
 0050CF36    mov         ecx,dword ptr [eax]
 0050CF38    call        dword ptr [ecx+50];TStrings.IndexOf
 0050CF3B    mov         edx,eax
 0050CF3D    mov         eax,dword ptr [ebx+304];TFormInformationsSeriesDeNotes.ComboBox2:TComboBox
 0050CF43    call        TCustomComboBox.SetItemIndex
 0050CF48    lea         eax,[ebp-10C]
 0050CF4E    push        eax
 0050CF4F    mov         ecx,esi
 0050CF51    cmp         ecx,0FF
>0050CF57    jbe         0050CF5E
 0050CF59    call        @BoundErr
 0050CF5E    mov         edx,dword ptr [ebp-4]
 0050CF61    cmp         edx,0FF
>0050CF67    jbe         0050CF6E
 0050CF69    call        @BoundErr
 0050CF6E    mov         eax,dword ptr [ebp-8]
 0050CF71    call        004BED2C
 0050CF76    lea         edx,[ebp-10C]
 0050CF7C    lea         eax,[ebp-11C]
 0050CF82    call        @LStrFromString
 0050CF87    mov         edx,dword ptr [ebp-11C]
 0050CF8D    mov         eax,dword ptr [ebx+304];TFormInformationsSeriesDeNotes.ComboBox2:TComboBox
 0050CF93    call        TControl.SetText
 0050CF98    lea         eax,[ebp-10C]
 0050CF9E    push        eax
 0050CF9F    mov         ecx,esi
 0050CFA1    cmp         ecx,0FF
>0050CFA7    jbe         0050CFAE
 0050CFA9    call        @BoundErr
 0050CFAE    mov         edx,dword ptr [ebp-4]
 0050CFB1    cmp         edx,0FF
>0050CFB7    jbe         0050CFBE
 0050CFB9    call        @BoundErr
 0050CFBE    mov         eax,dword ptr [ebp-8]
 0050CFC1    call        004BED7C
 0050CFC6    lea         edx,[ebp-10C]
 0050CFCC    lea         eax,[ebp-120]
 0050CFD2    call        @LStrFromString
 0050CFD7    mov         edx,dword ptr [ebp-120]
 0050CFDD    mov         eax,dword ptr [ebx+300];TFormInformationsSeriesDeNotes.ComboBox1:TComboBox
 0050CFE3    call        TControl.SetText
 0050CFE8    mov         eax,dword ptr [ebx+300];TFormInformationsSeriesDeNotes.ComboBox1:TComboBox
 0050CFEE    mov         eax,dword ptr [eax+1F0];TComboBox.FItems:TStrings
 0050CFF4    mov         edx,dword ptr [eax]
 0050CFF6    call        dword ptr [edx+40];TStrings.Clear
 0050CFF9    mov         eax,dword ptr [ebx+300];TFormInformationsSeriesDeNotes.ComboBox1:TComboBox
 0050CFFF    mov         eax,dword ptr [eax+1F0];TComboBox.FItems:TStrings
 0050D005    mov         edx,50D5A8;'1'
 0050D00A    mov         ecx,dword ptr [eax]
 0050D00C    call        dword ptr [ecx+34];TStrings.Add
 0050D00F    mov         eax,dword ptr [ebx+300];TFormInformationsSeriesDeNotes.ComboBox1:TComboBox
 0050D015    mov         eax,dword ptr [eax+1F0];TComboBox.FItems:TStrings
 0050D01B    mov         edx,50D5B4;'2'
 0050D020    mov         ecx,dword ptr [eax]
 0050D022    call        dword ptr [ecx+34];TStrings.Add
 0050D025    mov         eax,dword ptr [ebx+300];TFormInformationsSeriesDeNotes.ComboBox1:TComboBox
 0050D02B    mov         eax,dword ptr [eax+1F0];TComboBox.FItems:TStrings
 0050D031    mov         edx,50D5C0;'3'
 0050D036    mov         ecx,dword ptr [eax]
 0050D038    call        dword ptr [ecx+34];TStrings.Add
 0050D03B    mov         eax,dword ptr [ebx+300];TFormInformationsSeriesDeNotes.ComboBox1:TComboBox
 0050D041    mov         eax,dword ptr [eax+1F0];TComboBox.FItems:TStrings
 0050D047    mov         edx,50D5CC;'4'
 0050D04C    mov         ecx,dword ptr [eax]
 0050D04E    call        dword ptr [ecx+34];TStrings.Add
 0050D051    mov         eax,dword ptr [ebx+300];TFormInformationsSeriesDeNotes.ComboBox1:TComboBox
 0050D057    mov         eax,dword ptr [eax+1F0];TComboBox.FItems:TStrings
 0050D05D    mov         edx,50D56C;'5'
 0050D062    mov         ecx,dword ptr [eax]
 0050D064    call        dword ptr [ecx+34];TStrings.Add
 0050D067    mov         eax,dword ptr [ebx+300];TFormInformationsSeriesDeNotes.ComboBox1:TComboBox
 0050D06D    mov         eax,dword ptr [eax+1F0];TComboBox.FItems:TStrings
 0050D073    mov         edx,50D5D8;'6'
 0050D078    mov         ecx,dword ptr [eax]
 0050D07A    call        dword ptr [ecx+34];TStrings.Add
 0050D07D    mov         eax,dword ptr [ebx+300];TFormInformationsSeriesDeNotes.ComboBox1:TComboBox
 0050D083    mov         eax,dword ptr [eax+1F0];TComboBox.FItems:TStrings
 0050D089    mov         edx,50D5E4;'7'
 0050D08E    mov         ecx,dword ptr [eax]
 0050D090    call        dword ptr [ecx+34];TStrings.Add
 0050D093    mov         eax,dword ptr [ebx+300];TFormInformationsSeriesDeNotes.ComboBox1:TComboBox
 0050D099    mov         eax,dword ptr [eax+1F0];TComboBox.FItems:TStrings
 0050D09F    mov         edx,50D5F0;'8'
 0050D0A4    mov         ecx,dword ptr [eax]
 0050D0A6    call        dword ptr [ecx+34];TStrings.Add
 0050D0A9    mov         eax,dword ptr [ebx+300];TFormInformationsSeriesDeNotes.ComboBox1:TComboBox
 0050D0AF    mov         eax,dword ptr [eax+1F0];TComboBox.FItems:TStrings
 0050D0B5    mov         edx,50D5FC;'9'
 0050D0BA    mov         ecx,dword ptr [eax]
 0050D0BC    call        dword ptr [ecx+34];TStrings.Add
 0050D0BF    mov         eax,dword ptr [ebx+300];TFormInformationsSeriesDeNotes.ComboBox1:TComboBox
 0050D0C5    mov         eax,dword ptr [eax+1F0];TComboBox.FItems:TStrings
 0050D0CB    mov         edx,50D560;'10'
 0050D0D0    mov         ecx,dword ptr [eax]
 0050D0D2    call        dword ptr [ecx+34];TStrings.Add
 0050D0D5    lea         eax,[ebp-10C]
 0050D0DB    push        eax
 0050D0DC    mov         ecx,esi
 0050D0DE    cmp         ecx,0FF
>0050D0E4    jbe         0050D0EB
 0050D0E6    call        @BoundErr
 0050D0EB    mov         edx,dword ptr [ebp-4]
 0050D0EE    cmp         edx,0FF
>0050D0F4    jbe         0050D0FB
 0050D0F6    call        @BoundErr
 0050D0FB    mov         eax,dword ptr [ebp-8]
 0050D0FE    call        004BED7C
 0050D103    lea         edx,[ebp-10C]
 0050D109    lea         eax,[ebp-124]
 0050D10F    call        @LStrFromString
 0050D114    mov         edx,dword ptr [ebp-124]
 0050D11A    mov         eax,dword ptr [ebx+300];TFormInformationsSeriesDeNotes.ComboBox1:TComboBox
 0050D120    mov         eax,dword ptr [eax+1F0];TComboBox.FItems:TStrings
 0050D126    mov         ecx,dword ptr [eax]
 0050D128    call        dword ptr [ecx+50];TStrings.IndexOf
 0050D12B    inc         eax
>0050D12C    jne         0050D184
 0050D12E    lea         eax,[ebp-10C]
 0050D134    push        eax
 0050D135    mov         ecx,esi
 0050D137    cmp         ecx,0FF
>0050D13D    jbe         0050D144
 0050D13F    call        @BoundErr
 0050D144    mov         edx,dword ptr [ebp-4]
 0050D147    cmp         edx,0FF
>0050D14D    jbe         0050D154
 0050D14F    call        @BoundErr
 0050D154    mov         eax,dword ptr [ebp-8]
 0050D157    call        004BED7C
 0050D15C    lea         edx,[ebp-10C]
 0050D162    lea         eax,[ebp-128]
 0050D168    call        @LStrFromString
 0050D16D    mov         edx,dword ptr [ebp-128]
 0050D173    mov         eax,dword ptr [ebx+300];TFormInformationsSeriesDeNotes.ComboBox1:TComboBox
 0050D179    mov         eax,dword ptr [eax+1F0];TComboBox.FItems:TStrings
 0050D17F    mov         ecx,dword ptr [eax]
 0050D181    call        dword ptr [ecx+34];TStrings.Add
 0050D184    lea         eax,[ebp-10C]
 0050D18A    push        eax
 0050D18B    mov         ecx,esi
 0050D18D    cmp         ecx,0FF
>0050D193    jbe         0050D19A
 0050D195    call        @BoundErr
 0050D19A    mov         edx,dword ptr [ebp-4]
 0050D19D    cmp         edx,0FF
>0050D1A3    jbe         0050D1AA
 0050D1A5    call        @BoundErr
 0050D1AA    mov         eax,dword ptr [ebp-8]
 0050D1AD    call        004BED7C
 0050D1B2    lea         edx,[ebp-10C]
 0050D1B8    lea         eax,[ebp-12C]
 0050D1BE    call        @LStrFromString
 0050D1C3    mov         edx,dword ptr [ebp-12C]
 0050D1C9    mov         eax,dword ptr [ebx+300];TFormInformationsSeriesDeNotes.ComboBox1:TComboBox
 0050D1CF    mov         eax,dword ptr [eax+1F0];TComboBox.FItems:TStrings
 0050D1D5    mov         ecx,dword ptr [eax]
 0050D1D7    call        dword ptr [ecx+50];TStrings.IndexOf
 0050D1DA    mov         edx,eax
 0050D1DC    mov         eax,dword ptr [ebx+300];TFormInformationsSeriesDeNotes.ComboBox1:TComboBox
 0050D1E2    call        TCustomComboBox.SetItemIndex
 0050D1E7    lea         eax,[ebp-10C]
 0050D1ED    push        eax
 0050D1EE    mov         ecx,esi
 0050D1F0    cmp         ecx,0FF
>0050D1F6    jbe         0050D1FD
 0050D1F8    call        @BoundErr
 0050D1FD    mov         edx,dword ptr [ebp-4]
 0050D200    cmp         edx,0FF
>0050D206    jbe         0050D20D
 0050D208    call        @BoundErr
 0050D20D    mov         eax,dword ptr [ebp-8]
 0050D210    call        004BEDCC
 0050D215    lea         eax,[ebp-10C]
 0050D21B    mov         edx,50D600;'oui'
 0050D220    xor         ecx,ecx
 0050D222    mov         cl,byte ptr [eax]
 0050D224    inc         ecx
 0050D225    call        @AStrCmp
>0050D22A    jne         0050D23B
 0050D22C    xor         edx,edx
 0050D22E    mov         eax,dword ptr [ebx+30C];TFormInformationsSeriesDeNotes.RadioGroup1:TRadioGroup
 0050D234    call        TCustomRadioGroup.SetItemIndex
>0050D239    jmp         0050D24B
 0050D23B    mov         edx,1
 0050D240    mov         eax,dword ptr [ebx+30C];TFormInformationsSeriesDeNotes.RadioGroup1:TRadioGroup
 0050D246    call        TCustomRadioGroup.SetItemIndex
 0050D24B    lea         eax,[ebp-10C]
 0050D251    push        eax
 0050D252    mov         ecx,esi
 0050D254    cmp         ecx,0FF
>0050D25A    jbe         0050D261
 0050D25C    call        @BoundErr
 0050D261    mov         edx,dword ptr [ebp-4]
 0050D264    cmp         edx,0FF
>0050D26A    jbe         0050D271
 0050D26C    call        @BoundErr
 0050D271    mov         eax,dword ptr [ebp-8]
 0050D274    call        004BEF0C
 0050D279    lea         eax,[ebp-10C]
 0050D27F    mov         edx,50D604;'Oral'
 0050D284    xor         ecx,ecx
 0050D286    mov         cl,byte ptr [eax]
 0050D288    inc         ecx
 0050D289    call        @AStrCmp
>0050D28E    jne         0050D2A2
 0050D290    mov         edx,1
 0050D295    mov         eax,dword ptr [ebx+330];TFormInformationsSeriesDeNotes.RadioGroup2:TRadioGroup
 0050D29B    call        TCustomRadioGroup.SetItemIndex
>0050D2A0    jmp         0050D2AF
 0050D2A2    xor         edx,edx
 0050D2A4    mov         eax,dword ptr [ebx+330];TFormInformationsSeriesDeNotes.RadioGroup2:TRadioGroup
 0050D2AA    call        TCustomRadioGroup.SetItemIndex
 0050D2AF    lea         eax,[ebp-10C]
 0050D2B5    push        eax
 0050D2B6    mov         ecx,esi
 0050D2B8    cmp         ecx,0FF
>0050D2BE    jbe         0050D2C5
 0050D2C0    call        @BoundErr
 0050D2C5    mov         edx,dword ptr [ebp-4]
 0050D2C8    cmp         edx,0FF
>0050D2CE    jbe         0050D2D5
 0050D2D0    call        @BoundErr
 0050D2D5    mov         eax,dword ptr [ebp-8]
 0050D2D8    call        004BEE1C
 0050D2DD    lea         edx,[ebp-10C]
 0050D2E3    lea         eax,[ebp-130]
 0050D2E9    call        @LStrFromString
 0050D2EE    mov         eax,dword ptr [ebp-130]
 0050D2F4    call        StrToDate
 0050D2F9    add         esp,0FFFFFFF8
 0050D2FC    fstp        qword ptr [esp]
 0050D2FF    wait
 0050D300    mov         eax,dword ptr [ebx+314];TFormInformationsSeriesDeNotes.DateTimePicker1:TDateTimePicker
 0050D306    call        TCommonCalendar.SetDate
 0050D30B    mov         eax,dword ptr [ebx+320];TFormInformationsSeriesDeNotes.ComboBox3:TComboBox
 0050D311    mov         eax,dword ptr [eax+1F0];TComboBox.FItems:TStrings
 0050D317    mov         edx,dword ptr [eax]
 0050D319    call        dword ptr [edx+40];TStrings.Clear
 0050D31C    call        004B9794
 0050D321    mov         edx,eax
 0050D323    mov         eax,dword ptr [ebx+320];TFormInformationsSeriesDeNotes.ComboBox3:TComboBox
 0050D329    call        TCustomComboBox.SetItems
 0050D32E    lea         eax,[ebp-10C]
 0050D334    push        eax
 0050D335    mov         ecx,esi
 0050D337    cmp         ecx,0FF
>0050D33D    jbe         0050D344
 0050D33F    call        @BoundErr
 0050D344    mov         edx,dword ptr [ebp-4]
 0050D347    cmp         edx,0FF
>0050D34D    jbe         0050D354
 0050D34F    call        @BoundErr
 0050D354    mov         eax,dword ptr [ebp-8]
 0050D357    call        004BEEBC
 0050D35C    lea         edx,[ebp-10C]
 0050D362    lea         eax,[ebp-134]
 0050D368    call        @LStrFromString
 0050D36D    mov         edx,dword ptr [ebp-134]
 0050D373    mov         eax,dword ptr [ebx+320];TFormInformationsSeriesDeNotes.ComboBox3:TComboBox
 0050D379    mov         eax,dword ptr [eax+1F0];TComboBox.FItems:TStrings
 0050D37F    mov         ecx,dword ptr [eax]
 0050D381    call        dword ptr [ecx+50];TStrings.IndexOf
 0050D384    inc         eax
>0050D385    jne         0050D3DD
 0050D387    lea         eax,[ebp-10C]
 0050D38D    push        eax
 0050D38E    mov         ecx,esi
 0050D390    cmp         ecx,0FF
>0050D396    jbe         0050D39D
 0050D398    call        @BoundErr
 0050D39D    mov         edx,dword ptr [ebp-4]
 0050D3A0    cmp         edx,0FF
>0050D3A6    jbe         0050D3AD
 0050D3A8    call        @BoundErr
 0050D3AD    mov         eax,dword ptr [ebp-8]
 0050D3B0    call        004BEEBC
 0050D3B5    lea         edx,[ebp-10C]
 0050D3BB    lea         eax,[ebp-138]
 0050D3C1    call        @LStrFromString
 0050D3C6    mov         edx,dword ptr [ebp-138]
 0050D3CC    mov         eax,dword ptr [ebx+320];TFormInformationsSeriesDeNotes.ComboBox3:TComboBox
 0050D3D2    mov         eax,dword ptr [eax+1F0];TComboBox.FItems:TStrings
 0050D3D8    mov         ecx,dword ptr [eax]
 0050D3DA    call        dword ptr [ecx+34];TStrings.Add
 0050D3DD    lea         eax,[ebp-10C]
 0050D3E3    push        eax
 0050D3E4    mov         ecx,esi
 0050D3E6    cmp         ecx,0FF
>0050D3EC    jbe         0050D3F3
 0050D3EE    call        @BoundErr
 0050D3F3    mov         edx,dword ptr [ebp-4]
 0050D3F6    cmp         edx,0FF
>0050D3FC    jbe         0050D403
 0050D3FE    call        @BoundErr
 0050D403    mov         eax,dword ptr [ebp-8]
 0050D406    call        004BEEBC
 0050D40B    lea         edx,[ebp-10C]
 0050D411    lea         eax,[ebp-13C]
 0050D417    call        @LStrFromString
 0050D41C    mov         edx,dword ptr [ebp-13C]
 0050D422    mov         eax,dword ptr [ebx+320];TFormInformationsSeriesDeNotes.ComboBox3:TComboBox
 0050D428    mov         eax,dword ptr [eax+1F0];TComboBox.FItems:TStrings
 0050D42E    mov         ecx,dword ptr [eax]
 0050D430    call        dword ptr [ecx+50];TStrings.IndexOf
 0050D433    mov         edx,eax
 0050D435    mov         eax,dword ptr [ebx+320];TFormInformationsSeriesDeNotes.ComboBox3:TComboBox
 0050D43B    call        TCustomComboBox.SetItemIndex
 0050D440    lea         eax,[ebp-10C]
 0050D446    push        eax
 0050D447    mov         ecx,esi
 0050D449    cmp         ecx,0FF
>0050D44F    jbe         0050D456
 0050D451    call        @BoundErr
 0050D456    mov         edx,dword ptr [ebp-4]
 0050D459    cmp         edx,0FF
>0050D45F    jbe         0050D466
 0050D461    call        @BoundErr
 0050D466    mov         eax,dword ptr [ebp-8]
 0050D469    call        004BEE6C
 0050D46E    lea         edx,[ebp-10C]
 0050D474    lea         eax,[ebp-140]
 0050D47A    call        @LStrFromString
 0050D47F    mov         edx,dword ptr [ebp-140]
 0050D485    mov         eax,dword ptr [ebx+31C];TFormInformationsSeriesDeNotes.Edit2:TEdit
 0050D48B    call        TControl.SetText
>0050D490    jmp         0050D517
 0050D495    xor         edx,edx
 0050D497    mov         eax,dword ptr [ebx+2F0];TFormInformationsSeriesDeNotes.Edit1:TEdit
 0050D49D    mov         ecx,dword ptr [eax]
 0050D49F    call        dword ptr [ecx+5C];TControl.SetEnabled
 0050D4A2    xor         edx,edx
 0050D4A4    mov         eax,dword ptr [ebx+304];TFormInformationsSeriesDeNotes.ComboBox2:TComboBox
 0050D4AA    mov         ecx,dword ptr [eax]
 0050D4AC    call        dword ptr [ecx+5C];TControl.SetEnabled
 0050D4AF    xor         edx,edx
 0050D4B1    mov         eax,dword ptr [ebx+300];TFormInformationsSeriesDeNotes.ComboBox1:TComboBox
 0050D4B7    mov         ecx,dword ptr [eax]
 0050D4B9    call        dword ptr [ecx+5C];TControl.SetEnabled
 0050D4BC    xor         edx,edx
 0050D4BE    mov         eax,dword ptr [ebx+30C];TFormInformationsSeriesDeNotes.RadioGroup1:TRadioGroup
 0050D4C4    mov         ecx,dword ptr [eax]
 0050D4C6    call        dword ptr [ecx+5C];TControl.SetEnabled
 0050D4C9    xor         edx,edx
 0050D4CB    mov         eax,dword ptr [ebx+2F8];TFormInformationsSeriesDeNotes.SpeedButton2:TSpeedButton
 0050D4D1    mov         ecx,dword ptr [eax]
 0050D4D3    call        dword ptr [ecx+5C];TControl.SetEnabled
 0050D4D6    xor         edx,edx
 0050D4D8    mov         eax,dword ptr [ebx+308];TFormInformationsSeriesDeNotes.SpeedButton3:TSpeedButton
 0050D4DE    mov         ecx,dword ptr [eax]
 0050D4E0    call        dword ptr [ecx+5C];TControl.SetEnabled
 0050D4E3    xor         edx,edx
 0050D4E5    mov         eax,dword ptr [ebx+328];TFormInformationsSeriesDeNotes.SpeedButton4:TSpeedButton
 0050D4EB    mov         ecx,dword ptr [eax]
 0050D4ED    call        dword ptr [ecx+5C];TControl.SetEnabled
 0050D4F0    xor         edx,edx
 0050D4F2    mov         eax,dword ptr [ebx+314];TFormInformationsSeriesDeNotes.DateTimePicker1:TDateTimePicker
 0050D4F8    mov         ecx,dword ptr [eax]
 0050D4FA    call        dword ptr [ecx+5C];TControl.SetEnabled
 0050D4FD    xor         edx,edx
 0050D4FF    mov         eax,dword ptr [ebx+320];TFormInformationsSeriesDeNotes.ComboBox3:TComboBox
 0050D505    mov         ecx,dword ptr [eax]
 0050D507    call        dword ptr [ecx+5C];TControl.SetEnabled
 0050D50A    xor         edx,edx
 0050D50C    mov         eax,dword ptr [ebx+31C];TFormInformationsSeriesDeNotes.Edit2:TEdit
 0050D512    mov         ecx,dword ptr [eax]
 0050D514    call        dword ptr [ecx+5C];TControl.SetEnabled
 0050D517    xor         eax,eax
 0050D519    pop         edx
 0050D51A    pop         ecx
 0050D51B    pop         ecx
 0050D51C    mov         dword ptr fs:[eax],edx
 0050D51F    push        50D544
 0050D524    lea         eax,[ebp-140]
 0050D52A    mov         edx,0D
 0050D52F    call        @LStrArrayClr
 0050D534    lea         eax,[ebp-0C]
 0050D537    call        @LStrClr
 0050D53C    ret
>0050D53D    jmp         @HandleFinally
>0050D542    jmp         0050D524
 0050D544    pop         esi
 0050D545    pop         ebx
 0050D546    mov         esp,ebp
 0050D548    pop         ebp
 0050D549    ret
*}
end;

//0050D60C
procedure TFormInformationsSeriesDeNotes.SpeedButton2Click(Sender:TObject);
begin
{*
 0050D60C    push        ebp
 0050D60D    mov         ebp,esp
 0050D60F    add         esp,0FFFFFEE8
 0050D615    push        ebx
 0050D616    push        esi
 0050D617    push        edi
 0050D618    xor         ecx,ecx
 0050D61A    mov         dword ptr [ebp-118],ecx
 0050D620    mov         dword ptr [ebp-114],ecx
 0050D626    mov         dword ptr [ebp-110],ecx
 0050D62C    mov         dword ptr [ebp-10C],ecx
 0050D632    mov         dword ptr [ebp-8],ecx
 0050D635    mov         esi,eax
 0050D637    xor         eax,eax
 0050D639    push        ebp
 0050D63A    push        50D80A
 0050D63F    push        dword ptr fs:[eax]
 0050D642    mov         dword ptr fs:[eax],esp
 0050D645    mov         edi,dword ptr [esi+334];TFormInformationsSeriesDeNotes.?f334:dword
 0050D64B    mov         eax,dword ptr [esi+2E0];TFormInformationsSeriesDeNotes.TabControl1:TTabControl
 0050D651    call        TCustomTabControl.GetTabIndex
 0050D656    mov         ebx,eax
 0050D658    add         ebx,1
>0050D65B    jno         0050D662
 0050D65D    call        @IntOver
 0050D662    cmp         ebx,0FF
>0050D668    jbe         0050D66F
 0050D66A    call        @BoundErr
 0050D66F    mov         eax,dword ptr [esi+2E4];TFormInformationsSeriesDeNotes.ListBoxSeries:TListBox
 0050D675    call        TCustomListBox.GetItemIndex
 0050D67A    add         eax,1
>0050D67D    jno         0050D684
 0050D67F    call        @IntOver
 0050D684    cmp         eax,0FF
>0050D689    jbe         0050D690
 0050D68B    call        @BoundErr
 0050D690    mov         byte ptr [ebp-1],al
 0050D693    push        50D820;'Noté sur'
 0050D698    lea         eax,[ebp-108]
 0050D69E    push        eax
 0050D69F    mov         cl,byte ptr [ebp-1]
 0050D6A2    mov         edx,ebx
 0050D6A4    mov         eax,edi
 0050D6A6    call        004BED2C
 0050D6AB    lea         edx,[ebp-108]
 0050D6B1    lea         eax,[ebp-8]
 0050D6B4    call        @LStrFromString
 0050D6B9    mov         eax,dword ptr [ebp-8]
 0050D6BC    push        eax
 0050D6BD    push        1
 0050D6BF    mov         ecx,esi
 0050D6C1    mov         dl,1
 0050D6C3    mov         eax,[004CA40C];TFormEdit
 0050D6C8    call        TFormEdit.Create;TFormEdit.Create
 0050D6CD    mov         edx,dword ptr ds:[616280];^gvar_00617CE0:TFormEdit
 0050D6D3    mov         dword ptr [edx],eax
 0050D6D5    mov         eax,[00616280];^gvar_00617CE0:TFormEdit
 0050D6DA    mov         eax,dword ptr [eax]
 0050D6DC    mov         edx,dword ptr [eax]
 0050D6DE    call        dword ptr [edx+0D8]
 0050D6E4    mov         eax,[00616280];^gvar_00617CE0:TFormEdit
 0050D6E9    mov         eax,dword ptr [eax]
 0050D6EB    cmp         dword ptr [eax+234],1
>0050D6F2    jne         0050D7D6
 0050D6F8    lea         edx,[ebp-10C]
 0050D6FE    mov         eax,[00616280];^gvar_00617CE0:TFormEdit
 0050D703    mov         eax,dword ptr [eax]
 0050D705    mov         eax,dword ptr [eax+2D0]
 0050D70B    call        TControl.GetText
 0050D710    mov         edx,dword ptr [ebp-10C]
 0050D716    mov         eax,dword ptr [esi+304];TFormInformationsSeriesDeNotes.ComboBox2:TComboBox
 0050D71C    mov         eax,dword ptr [eax+1F0];TComboBox.FItems:TStrings
 0050D722    mov         ecx,dword ptr [eax]
 0050D724    call        dword ptr [ecx+50];TStrings.IndexOf
 0050D727    inc         eax
>0050D728    jne         0050D759
 0050D72A    lea         edx,[ebp-110]
 0050D730    mov         eax,[00616280];^gvar_00617CE0:TFormEdit
 0050D735    mov         eax,dword ptr [eax]
 0050D737    mov         eax,dword ptr [eax+2D0]
 0050D73D    call        TControl.GetText
 0050D742    mov         edx,dword ptr [ebp-110]
 0050D748    mov         eax,dword ptr [esi+304];TFormInformationsSeriesDeNotes.ComboBox2:TComboBox
 0050D74E    mov         eax,dword ptr [eax+1F0];TComboBox.FItems:TStrings
 0050D754    mov         ecx,dword ptr [eax]
 0050D756    call        dword ptr [ecx+34];TStrings.Add
 0050D759    lea         edx,[ebp-114]
 0050D75F    mov         eax,[00616280];^gvar_00617CE0:TFormEdit
 0050D764    mov         eax,dword ptr [eax]
 0050D766    mov         eax,dword ptr [eax+2D0]
 0050D76C    call        TControl.GetText
 0050D771    mov         edx,dword ptr [ebp-114]
 0050D777    mov         eax,dword ptr [esi+304];TFormInformationsSeriesDeNotes.ComboBox2:TComboBox
 0050D77D    mov         eax,dword ptr [eax+1F0];TComboBox.FItems:TStrings
 0050D783    mov         ecx,dword ptr [eax]
 0050D785    call        dword ptr [ecx+50];TStrings.IndexOf
 0050D788    mov         edx,eax
 0050D78A    mov         eax,dword ptr [esi+304];TFormInformationsSeriesDeNotes.ComboBox2:TComboBox
 0050D790    call        TCustomComboBox.SetItemIndex
 0050D795    lea         edx,[ebp-118]
 0050D79B    mov         eax,[00616280];^gvar_00617CE0:TFormEdit
 0050D7A0    mov         eax,dword ptr [eax]
 0050D7A2    mov         eax,dword ptr [eax+2D0]
 0050D7A8    call        TControl.GetText
 0050D7AD    mov         edx,dword ptr [ebp-118]
 0050D7B3    lea         eax,[ebp-108]
 0050D7B9    mov         ecx,0FF
 0050D7BE    call        @LStrToString
 0050D7C3    lea         eax,[ebp-108]
 0050D7C9    push        eax
 0050D7CA    mov         cl,byte ptr [ebp-1]
 0050D7CD    mov         edx,ebx
 0050D7CF    mov         eax,edi
 0050D7D1    call        004C48BC
 0050D7D6    mov         eax,[00616280];^gvar_00617CE0:TFormEdit
 0050D7DB    mov         eax,dword ptr [eax]
 0050D7DD    mov         dl,1
 0050D7DF    mov         ecx,dword ptr [eax]
 0050D7E1    call        dword ptr [ecx-4]
 0050D7E4    xor         eax,eax
 0050D7E6    pop         edx
 0050D7E7    pop         ecx
 0050D7E8    pop         ecx
 0050D7E9    mov         dword ptr fs:[eax],edx
 0050D7EC    push        50D811
 0050D7F1    lea         eax,[ebp-118]
 0050D7F7    mov         edx,4
 0050D7FC    call        @LStrArrayClr
 0050D801    lea         eax,[ebp-8]
 0050D804    call        @LStrClr
 0050D809    ret
>0050D80A    jmp         @HandleFinally
>0050D80F    jmp         0050D7F1
 0050D811    pop         edi
 0050D812    pop         esi
 0050D813    pop         ebx
 0050D814    mov         esp,ebp
 0050D816    pop         ebp
 0050D817    ret
*}
end;

//0050D82C
procedure TFormInformationsSeriesDeNotes.SpeedButton3Click(Sender:TObject);
begin
{*
 0050D82C    push        ebp
 0050D82D    mov         ebp,esp
 0050D82F    add         esp,0FFFFFEE8
 0050D835    push        ebx
 0050D836    push        esi
 0050D837    push        edi
 0050D838    xor         ecx,ecx
 0050D83A    mov         dword ptr [ebp-118],ecx
 0050D840    mov         dword ptr [ebp-114],ecx
 0050D846    mov         dword ptr [ebp-110],ecx
 0050D84C    mov         dword ptr [ebp-10C],ecx
 0050D852    mov         dword ptr [ebp-8],ecx
 0050D855    mov         esi,eax
 0050D857    xor         eax,eax
 0050D859    push        ebp
 0050D85A    push        50DA2A
 0050D85F    push        dword ptr fs:[eax]
 0050D862    mov         dword ptr fs:[eax],esp
 0050D865    mov         edi,dword ptr [esi+334];TFormInformationsSeriesDeNotes.?f334:dword
 0050D86B    mov         eax,dword ptr [esi+2E0];TFormInformationsSeriesDeNotes.TabControl1:TTabControl
 0050D871    call        TCustomTabControl.GetTabIndex
 0050D876    mov         ebx,eax
 0050D878    add         ebx,1
>0050D87B    jno         0050D882
 0050D87D    call        @IntOver
 0050D882    cmp         ebx,0FF
>0050D888    jbe         0050D88F
 0050D88A    call        @BoundErr
 0050D88F    mov         eax,dword ptr [esi+2E4];TFormInformationsSeriesDeNotes.ListBoxSeries:TListBox
 0050D895    call        TCustomListBox.GetItemIndex
 0050D89A    add         eax,1
>0050D89D    jno         0050D8A4
 0050D89F    call        @IntOver
 0050D8A4    cmp         eax,0FF
>0050D8A9    jbe         0050D8B0
 0050D8AB    call        @BoundErr
 0050D8B0    mov         byte ptr [ebp-1],al
 0050D8B3    push        50DA40;'Coefficient'
 0050D8B8    lea         eax,[ebp-108]
 0050D8BE    push        eax
 0050D8BF    mov         cl,byte ptr [ebp-1]
 0050D8C2    mov         edx,ebx
 0050D8C4    mov         eax,edi
 0050D8C6    call        004BED7C
 0050D8CB    lea         edx,[ebp-108]
 0050D8D1    lea         eax,[ebp-8]
 0050D8D4    call        @LStrFromString
 0050D8D9    mov         eax,dword ptr [ebp-8]
 0050D8DC    push        eax
 0050D8DD    push        1
 0050D8DF    mov         ecx,esi
 0050D8E1    mov         dl,1
 0050D8E3    mov         eax,[004CA40C];TFormEdit
 0050D8E8    call        TFormEdit.Create;TFormEdit.Create
 0050D8ED    mov         edx,dword ptr ds:[616280];^gvar_00617CE0:TFormEdit
 0050D8F3    mov         dword ptr [edx],eax
 0050D8F5    mov         eax,[00616280];^gvar_00617CE0:TFormEdit
 0050D8FA    mov         eax,dword ptr [eax]
 0050D8FC    mov         edx,dword ptr [eax]
 0050D8FE    call        dword ptr [edx+0D8]
 0050D904    mov         eax,[00616280];^gvar_00617CE0:TFormEdit
 0050D909    mov         eax,dword ptr [eax]
 0050D90B    cmp         dword ptr [eax+234],1
>0050D912    jne         0050D9F6
 0050D918    lea         edx,[ebp-10C]
 0050D91E    mov         eax,[00616280];^gvar_00617CE0:TFormEdit
 0050D923    mov         eax,dword ptr [eax]
 0050D925    mov         eax,dword ptr [eax+2D0]
 0050D92B    call        TControl.GetText
 0050D930    mov         edx,dword ptr [ebp-10C]
 0050D936    mov         eax,dword ptr [esi+300];TFormInformationsSeriesDeNotes.ComboBox1:TComboBox
 0050D93C    mov         eax,dword ptr [eax+1F0];TComboBox.FItems:TStrings
 0050D942    mov         ecx,dword ptr [eax]
 0050D944    call        dword ptr [ecx+50];TStrings.IndexOf
 0050D947    inc         eax
>0050D948    jne         0050D979
 0050D94A    lea         edx,[ebp-110]
 0050D950    mov         eax,[00616280];^gvar_00617CE0:TFormEdit
 0050D955    mov         eax,dword ptr [eax]
 0050D957    mov         eax,dword ptr [eax+2D0]
 0050D95D    call        TControl.GetText
 0050D962    mov         edx,dword ptr [ebp-110]
 0050D968    mov         eax,dword ptr [esi+300];TFormInformationsSeriesDeNotes.ComboBox1:TComboBox
 0050D96E    mov         eax,dword ptr [eax+1F0];TComboBox.FItems:TStrings
 0050D974    mov         ecx,dword ptr [eax]
 0050D976    call        dword ptr [ecx+34];TStrings.Add
 0050D979    lea         edx,[ebp-114]
 0050D97F    mov         eax,[00616280];^gvar_00617CE0:TFormEdit
 0050D984    mov         eax,dword ptr [eax]
 0050D986    mov         eax,dword ptr [eax+2D0]
 0050D98C    call        TControl.GetText
 0050D991    mov         edx,dword ptr [ebp-114]
 0050D997    mov         eax,dword ptr [esi+300];TFormInformationsSeriesDeNotes.ComboBox1:TComboBox
 0050D99D    mov         eax,dword ptr [eax+1F0];TComboBox.FItems:TStrings
 0050D9A3    mov         ecx,dword ptr [eax]
 0050D9A5    call        dword ptr [ecx+50];TStrings.IndexOf
 0050D9A8    mov         edx,eax
 0050D9AA    mov         eax,dword ptr [esi+300];TFormInformationsSeriesDeNotes.ComboBox1:TComboBox
 0050D9B0    call        TCustomComboBox.SetItemIndex
 0050D9B5    lea         edx,[ebp-118]
 0050D9BB    mov         eax,[00616280];^gvar_00617CE0:TFormEdit
 0050D9C0    mov         eax,dword ptr [eax]
 0050D9C2    mov         eax,dword ptr [eax+2D0]
 0050D9C8    call        TControl.GetText
 0050D9CD    mov         edx,dword ptr [ebp-118]
 0050D9D3    lea         eax,[ebp-108]
 0050D9D9    mov         ecx,0FF
 0050D9DE    call        @LStrToString
 0050D9E3    lea         eax,[ebp-108]
 0050D9E9    push        eax
 0050D9EA    mov         cl,byte ptr [ebp-1]
 0050D9ED    mov         edx,ebx
 0050D9EF    mov         eax,edi
 0050D9F1    call        004C47E8
 0050D9F6    mov         eax,[00616280];^gvar_00617CE0:TFormEdit
 0050D9FB    mov         eax,dword ptr [eax]
 0050D9FD    mov         dl,1
 0050D9FF    mov         ecx,dword ptr [eax]
 0050DA01    call        dword ptr [ecx-4]
 0050DA04    xor         eax,eax
 0050DA06    pop         edx
 0050DA07    pop         ecx
 0050DA08    pop         ecx
 0050DA09    mov         dword ptr fs:[eax],edx
 0050DA0C    push        50DA31
 0050DA11    lea         eax,[ebp-118]
 0050DA17    mov         edx,4
 0050DA1C    call        @LStrArrayClr
 0050DA21    lea         eax,[ebp-8]
 0050DA24    call        @LStrClr
 0050DA29    ret
>0050DA2A    jmp         @HandleFinally
>0050DA2F    jmp         0050DA11
 0050DA31    pop         edi
 0050DA32    pop         esi
 0050DA33    pop         ebx
 0050DA34    mov         esp,ebp
 0050DA36    pop         ebp
 0050DA37    ret
*}
end;

//0050DA4C
procedure TFormInformationsSeriesDeNotes.SpeedButton4Click(Sender:TObject);
begin
{*
 0050DA4C    push        ebp
 0050DA4D    mov         ebp,esp
 0050DA4F    add         esp,0FFFFFEEC
 0050DA55    push        ebx
 0050DA56    push        esi
 0050DA57    push        edi
 0050DA58    xor         ecx,ecx
 0050DA5A    mov         dword ptr [ebp-114],ecx
 0050DA60    mov         dword ptr [ebp-110],ecx
 0050DA66    mov         dword ptr [ebp-0C],ecx
 0050DA69    mov         edi,eax
 0050DA6B    xor         eax,eax
 0050DA6D    push        ebp
 0050DA6E    push        50DC10
 0050DA73    push        dword ptr fs:[eax]
 0050DA76    mov         dword ptr fs:[eax],esp
 0050DA79    mov         eax,dword ptr [edi+2D8];TFormInformationsSeriesDeNotes.Image1:TImage
 0050DA7F    push        eax
 0050DA80    mov         ecx,edi
 0050DA82    mov         dl,1
 0050DA84    mov         eax,[00502EAC];TFormOptions
 0050DA89    call        TFormOptions.Create;TFormOptions.Create
 0050DA8E    mov         edx,dword ptr ds:[615EFC];^gvar_00617D64:TFormOptions
 0050DA94    mov         dword ptr [edx],eax
 0050DA96    mov         eax,[00615EFC];^gvar_00617D64:TFormOptions
 0050DA9B    mov         eax,dword ptr [eax]
 0050DA9D    mov         edx,dword ptr [eax+30C]
 0050DAA3    mov         eax,[00615EFC];^gvar_00617D64:TFormOptions
 0050DAA8    mov         eax,dword ptr [eax]
 0050DAAA    mov         eax,dword ptr [eax+2DC]
 0050DAB0    call        TPageControl.SetActivePage
 0050DAB5    mov         eax,[00615EFC];^gvar_00617D64:TFormOptions
 0050DABA    mov         eax,dword ptr [eax]
 0050DABC    mov         edx,dword ptr [eax]
 0050DABE    call        dword ptr [edx+0D8]
 0050DAC4    mov         eax,[00615EFC];^gvar_00617D64:TFormOptions
 0050DAC9    mov         eax,dword ptr [eax]
 0050DACB    mov         dl,1
 0050DACD    mov         ecx,dword ptr [eax]
 0050DACF    call        dword ptr [ecx-4]
 0050DAD2    mov         eax,dword ptr [edi+334];TFormInformationsSeriesDeNotes.?f334:dword
 0050DAD8    mov         dword ptr [ebp-8],eax
 0050DADB    mov         esi,dword ptr [edi+320];TFormInformationsSeriesDeNotes.ComboBox3:TComboBox
 0050DAE1    mov         eax,dword ptr [edi+2E0];TFormInformationsSeriesDeNotes.TabControl1:TTabControl
 0050DAE7    call        TCustomTabControl.GetTabIndex
 0050DAEC    mov         ebx,eax
 0050DAEE    add         ebx,1
>0050DAF1    jno         0050DAF8
 0050DAF3    call        @IntOver
 0050DAF8    cmp         ebx,0FF
>0050DAFE    jbe         0050DB05
 0050DB00    call        @BoundErr
 0050DB05    mov         eax,dword ptr [edi+2E4];TFormInformationsSeriesDeNotes.ListBoxSeries:TListBox
 0050DB0B    call        TCustomListBox.GetItemIndex
 0050DB10    add         eax,1
>0050DB13    jno         0050DB1A
 0050DB15    call        @IntOver
 0050DB1A    cmp         eax,0FF
>0050DB1F    jbe         0050DB26
 0050DB21    call        @BoundErr
 0050DB26    mov         byte ptr [ebp-1],al
 0050DB29    mov         eax,dword ptr [esi+1F0];TComboBox.FItems:TStrings
 0050DB2F    mov         edx,dword ptr [eax]
 0050DB31    call        dword ptr [edx+40];TStrings.Clear
 0050DB34    call        004B9794
 0050DB39    mov         edx,eax
 0050DB3B    mov         eax,esi
 0050DB3D    call        TCustomComboBox.SetItems
 0050DB42    lea         eax,[ebp-10C]
 0050DB48    push        eax
 0050DB49    mov         cl,byte ptr [ebp-1]
 0050DB4C    mov         edx,ebx
 0050DB4E    mov         eax,dword ptr [ebp-8]
 0050DB51    call        004BEEBC
 0050DB56    lea         edx,[ebp-10C]
 0050DB5C    lea         eax,[ebp-0C]
 0050DB5F    call        @LStrFromString
 0050DB64    mov         edx,dword ptr [ebp-0C]
 0050DB67    mov         eax,dword ptr [esi+1F0];TComboBox.FItems:TStrings
 0050DB6D    mov         ecx,dword ptr [eax]
 0050DB6F    call        dword ptr [ecx+50];TStrings.IndexOf
 0050DB72    inc         eax
>0050DB73    jne         0050DBAB
 0050DB75    lea         eax,[ebp-10C]
 0050DB7B    push        eax
 0050DB7C    mov         cl,byte ptr [ebp-1]
 0050DB7F    mov         edx,ebx
 0050DB81    mov         eax,dword ptr [ebp-8]
 0050DB84    call        004BEEBC
 0050DB89    lea         edx,[ebp-10C]
 0050DB8F    lea         eax,[ebp-110]
 0050DB95    call        @LStrFromString
 0050DB9A    mov         edx,dword ptr [ebp-110]
 0050DBA0    mov         eax,dword ptr [esi+1F0];TComboBox.FItems:TStrings
 0050DBA6    mov         ecx,dword ptr [eax]
 0050DBA8    call        dword ptr [ecx+34];TStrings.Add
 0050DBAB    lea         eax,[ebp-10C]
 0050DBB1    push        eax
 0050DBB2    mov         cl,byte ptr [ebp-1]
 0050DBB5    mov         edx,ebx
 0050DBB7    mov         eax,dword ptr [ebp-8]
 0050DBBA    call        004BEEBC
 0050DBBF    lea         edx,[ebp-10C]
 0050DBC5    lea         eax,[ebp-114]
 0050DBCB    call        @LStrFromString
 0050DBD0    mov         edx,dword ptr [ebp-114]
 0050DBD6    mov         eax,dword ptr [esi+1F0];TComboBox.FItems:TStrings
 0050DBDC    mov         ecx,dword ptr [eax]
 0050DBDE    call        dword ptr [ecx+50];TStrings.IndexOf
 0050DBE1    mov         edx,eax
 0050DBE3    mov         eax,esi
 0050DBE5    call        TCustomComboBox.SetItemIndex
 0050DBEA    xor         eax,eax
 0050DBEC    pop         edx
 0050DBED    pop         ecx
 0050DBEE    pop         ecx
 0050DBEF    mov         dword ptr fs:[eax],edx
 0050DBF2    push        50DC17
 0050DBF7    lea         eax,[ebp-114]
 0050DBFD    mov         edx,2
 0050DC02    call        @LStrArrayClr
 0050DC07    lea         eax,[ebp-0C]
 0050DC0A    call        @LStrClr
 0050DC0F    ret
>0050DC10    jmp         @HandleFinally
>0050DC15    jmp         0050DBF7
 0050DC17    pop         edi
 0050DC18    pop         esi
 0050DC19    pop         ebx
 0050DC1A    mov         esp,ebp
 0050DC1C    pop         ebp
 0050DC1D    ret
*}
end;

//0050DC20
procedure TFormInformationsSeriesDeNotes.ComboBox2Change;
begin
{*
 0050DC20    push        ebp
 0050DC21    mov         ebp,esp
 0050DC23    add         esp,0FFFFFEF8
 0050DC29    push        ebx
 0050DC2A    push        esi
 0050DC2B    xor         ecx,ecx
 0050DC2D    mov         dword ptr [ebp-108],ecx
 0050DC33    mov         esi,eax
 0050DC35    xor         eax,eax
 0050DC37    push        ebp
 0050DC38    push        50DCE2
 0050DC3D    push        dword ptr fs:[eax]
 0050DC40    mov         dword ptr fs:[eax],esp
 0050DC43    mov         eax,dword ptr [esi+2E0];TFormInformationsSeriesDeNotes.TabControl1:TTabControl
 0050DC49    call        TCustomTabControl.GetTabIndex
 0050DC4E    mov         ebx,eax
 0050DC50    add         ebx,1
>0050DC53    jno         0050DC5A
 0050DC55    call        @IntOver
 0050DC5A    cmp         ebx,0FF
>0050DC60    jbe         0050DC67
 0050DC62    call        @BoundErr
 0050DC67    mov         eax,dword ptr [esi+2E4];TFormInformationsSeriesDeNotes.ListBoxSeries:TListBox
 0050DC6D    call        TCustomListBox.GetItemIndex
 0050DC72    add         eax,1
>0050DC75    jno         0050DC7C
 0050DC77    call        @IntOver
 0050DC7C    cmp         eax,0FF
>0050DC81    jbe         0050DC88
 0050DC83    call        @BoundErr
 0050DC88    mov         byte ptr [ebp-1],al
 0050DC8B    lea         edx,[ebp-108]
 0050DC91    mov         eax,dword ptr [esi+304];TFormInformationsSeriesDeNotes.ComboBox2:TComboBox
 0050DC97    call        TControl.GetText
 0050DC9C    mov         edx,dword ptr [ebp-108]
 0050DCA2    lea         eax,[ebp-104]
 0050DCA8    mov         ecx,0FF
 0050DCAD    call        @LStrToString
 0050DCB2    lea         eax,[ebp-104]
 0050DCB8    push        eax
 0050DCB9    mov         cl,byte ptr [ebp-1]
 0050DCBC    mov         edx,ebx
 0050DCBE    mov         eax,dword ptr [esi+334];TFormInformationsSeriesDeNotes.?f334:dword
 0050DCC4    call        004C48BC
 0050DCC9    xor         eax,eax
 0050DCCB    pop         edx
 0050DCCC    pop         ecx
 0050DCCD    pop         ecx
 0050DCCE    mov         dword ptr fs:[eax],edx
 0050DCD1    push        50DCE9
 0050DCD6    lea         eax,[ebp-108]
 0050DCDC    call        @LStrClr
 0050DCE1    ret
>0050DCE2    jmp         @HandleFinally
>0050DCE7    jmp         0050DCD6
 0050DCE9    pop         esi
 0050DCEA    pop         ebx
 0050DCEB    mov         esp,ebp
 0050DCED    pop         ebp
 0050DCEE    ret
*}
end;

//0050DCF0
procedure TFormInformationsSeriesDeNotes.ComboBox1Change;
begin
{*
 0050DCF0    push        ebp
 0050DCF1    mov         ebp,esp
 0050DCF3    add         esp,0FFFFFEF8
 0050DCF9    push        ebx
 0050DCFA    push        esi
 0050DCFB    xor         ecx,ecx
 0050DCFD    mov         dword ptr [ebp-108],ecx
 0050DD03    mov         esi,eax
 0050DD05    xor         eax,eax
 0050DD07    push        ebp
 0050DD08    push        50DDB2
 0050DD0D    push        dword ptr fs:[eax]
 0050DD10    mov         dword ptr fs:[eax],esp
 0050DD13    mov         eax,dword ptr [esi+2E0];TFormInformationsSeriesDeNotes.TabControl1:TTabControl
 0050DD19    call        TCustomTabControl.GetTabIndex
 0050DD1E    mov         ebx,eax
 0050DD20    add         ebx,1
>0050DD23    jno         0050DD2A
 0050DD25    call        @IntOver
 0050DD2A    cmp         ebx,0FF
>0050DD30    jbe         0050DD37
 0050DD32    call        @BoundErr
 0050DD37    mov         eax,dword ptr [esi+2E4];TFormInformationsSeriesDeNotes.ListBoxSeries:TListBox
 0050DD3D    call        TCustomListBox.GetItemIndex
 0050DD42    add         eax,1
>0050DD45    jno         0050DD4C
 0050DD47    call        @IntOver
 0050DD4C    cmp         eax,0FF
>0050DD51    jbe         0050DD58
 0050DD53    call        @BoundErr
 0050DD58    mov         byte ptr [ebp-1],al
 0050DD5B    lea         edx,[ebp-108]
 0050DD61    mov         eax,dword ptr [esi+300];TFormInformationsSeriesDeNotes.ComboBox1:TComboBox
 0050DD67    call        TControl.GetText
 0050DD6C    mov         edx,dword ptr [ebp-108]
 0050DD72    lea         eax,[ebp-104]
 0050DD78    mov         ecx,0FF
 0050DD7D    call        @LStrToString
 0050DD82    lea         eax,[ebp-104]
 0050DD88    push        eax
 0050DD89    mov         cl,byte ptr [ebp-1]
 0050DD8C    mov         edx,ebx
 0050DD8E    mov         eax,dword ptr [esi+334];TFormInformationsSeriesDeNotes.?f334:dword
 0050DD94    call        004C47E8
 0050DD99    xor         eax,eax
 0050DD9B    pop         edx
 0050DD9C    pop         ecx
 0050DD9D    pop         ecx
 0050DD9E    mov         dword ptr fs:[eax],edx
 0050DDA1    push        50DDB9
 0050DDA6    lea         eax,[ebp-108]
 0050DDAC    call        @LStrClr
 0050DDB1    ret
>0050DDB2    jmp         @HandleFinally
>0050DDB7    jmp         0050DDA6
 0050DDB9    pop         esi
 0050DDBA    pop         ebx
 0050DDBB    mov         esp,ebp
 0050DDBD    pop         ebp
 0050DDBE    ret
*}
end;

//0050DDC0
procedure TFormInformationsSeriesDeNotes.DateTimePicker1Change;
begin
{*
 0050DDC0    push        ebp
 0050DDC1    mov         ebp,esp
 0050DDC3    add         esp,0FFFFFEF8
 0050DDC9    push        ebx
 0050DDCA    push        esi
 0050DDCB    xor         ecx,ecx
 0050DDCD    mov         dword ptr [ebp-108],ecx
 0050DDD3    mov         esi,eax
 0050DDD5    xor         eax,eax
 0050DDD7    push        ebp
 0050DDD8    push        50DE8E
 0050DDDD    push        dword ptr fs:[eax]
 0050DDE0    mov         dword ptr fs:[eax],esp
 0050DDE3    mov         eax,dword ptr [esi+2E0];TFormInformationsSeriesDeNotes.TabControl1:TTabControl
 0050DDE9    call        TCustomTabControl.GetTabIndex
 0050DDEE    mov         ebx,eax
 0050DDF0    add         ebx,1
>0050DDF3    jno         0050DDFA
 0050DDF5    call        @IntOver
 0050DDFA    cmp         ebx,0FF
>0050DE00    jbe         0050DE07
 0050DE02    call        @BoundErr
 0050DE07    mov         eax,dword ptr [esi+2E4];TFormInformationsSeriesDeNotes.ListBoxSeries:TListBox
 0050DE0D    call        TCustomListBox.GetItemIndex
 0050DE12    add         eax,1
>0050DE15    jno         0050DE1C
 0050DE17    call        @IntOver
 0050DE1C    cmp         eax,0FF
>0050DE21    jbe         0050DE28
 0050DE23    call        @BoundErr
 0050DE28    mov         byte ptr [ebp-1],al
 0050DE2B    mov         eax,dword ptr [esi+314];TFormInformationsSeriesDeNotes.DateTimePicker1:TDateTimePicker
 0050DE31    call        TCommonCalendar.GetDate
 0050DE36    add         esp,0FFFFFFF8
 0050DE39    fstp        qword ptr [esp]
 0050DE3C    wait
 0050DE3D    lea         eax,[ebp-108]
 0050DE43    call        DateToStr
 0050DE48    mov         edx,dword ptr [ebp-108]
 0050DE4E    lea         eax,[ebp-104]
 0050DE54    mov         ecx,0FF
 0050DE59    call        @LStrToString
 0050DE5E    lea         eax,[ebp-104]
 0050DE64    push        eax
 0050DE65    mov         cl,byte ptr [ebp-1]
 0050DE68    mov         edx,ebx
 0050DE6A    mov         eax,dword ptr [esi+334];TFormInformationsSeriesDeNotes.?f334:dword
 0050DE70    call        004C0EC8
 0050DE75    xor         eax,eax
 0050DE77    pop         edx
 0050DE78    pop         ecx
 0050DE79    pop         ecx
 0050DE7A    mov         dword ptr fs:[eax],edx
 0050DE7D    push        50DE95
 0050DE82    lea         eax,[ebp-108]
 0050DE88    call        @LStrClr
 0050DE8D    ret
>0050DE8E    jmp         @HandleFinally
>0050DE93    jmp         0050DE82
 0050DE95    pop         esi
 0050DE96    pop         ebx
 0050DE97    mov         esp,ebp
 0050DE99    pop         ebp
 0050DE9A    ret
*}
end;

//0050DE9C
procedure TFormInformationsSeriesDeNotes.ComboBox3Change;
begin
{*
 0050DE9C    push        ebp
 0050DE9D    mov         ebp,esp
 0050DE9F    add         esp,0FFFFFEF8
 0050DEA5    push        ebx
 0050DEA6    push        esi
 0050DEA7    xor         ecx,ecx
 0050DEA9    mov         dword ptr [ebp-108],ecx
 0050DEAF    mov         esi,eax
 0050DEB1    xor         eax,eax
 0050DEB3    push        ebp
 0050DEB4    push        50DF5E
 0050DEB9    push        dword ptr fs:[eax]
 0050DEBC    mov         dword ptr fs:[eax],esp
 0050DEBF    mov         eax,dword ptr [esi+2E0];TFormInformationsSeriesDeNotes.TabControl1:TTabControl
 0050DEC5    call        TCustomTabControl.GetTabIndex
 0050DECA    mov         ebx,eax
 0050DECC    add         ebx,1
>0050DECF    jno         0050DED6
 0050DED1    call        @IntOver
 0050DED6    cmp         ebx,0FF
>0050DEDC    jbe         0050DEE3
 0050DEDE    call        @BoundErr
 0050DEE3    mov         eax,dword ptr [esi+2E4];TFormInformationsSeriesDeNotes.ListBoxSeries:TListBox
 0050DEE9    call        TCustomListBox.GetItemIndex
 0050DEEE    add         eax,1
>0050DEF1    jno         0050DEF8
 0050DEF3    call        @IntOver
 0050DEF8    cmp         eax,0FF
>0050DEFD    jbe         0050DF04
 0050DEFF    call        @BoundErr
 0050DF04    mov         byte ptr [ebp-1],al
 0050DF07    lea         edx,[ebp-108]
 0050DF0D    mov         eax,dword ptr [esi+320];TFormInformationsSeriesDeNotes.ComboBox3:TComboBox
 0050DF13    call        TControl.GetText
 0050DF18    mov         edx,dword ptr [ebp-108]
 0050DF1E    lea         eax,[ebp-104]
 0050DF24    mov         ecx,0FF
 0050DF29    call        @LStrToString
 0050DF2E    lea         eax,[ebp-104]
 0050DF34    push        eax
 0050DF35    mov         cl,byte ptr [ebp-1]
 0050DF38    mov         edx,ebx
 0050DF3A    mov         eax,dword ptr [esi+334];TFormInformationsSeriesDeNotes.?f334:dword
 0050DF40    call        004C0F34
 0050DF45    xor         eax,eax
 0050DF47    pop         edx
 0050DF48    pop         ecx
 0050DF49    pop         ecx
 0050DF4A    mov         dword ptr fs:[eax],edx
 0050DF4D    push        50DF65
 0050DF52    lea         eax,[ebp-108]
 0050DF58    call        @LStrClr
 0050DF5D    ret
>0050DF5E    jmp         @HandleFinally
>0050DF63    jmp         0050DF52
 0050DF65    pop         esi
 0050DF66    pop         ebx
 0050DF67    mov         esp,ebp
 0050DF69    pop         ebp
 0050DF6A    ret
*}
end;

//0050DF6C
procedure TFormInformationsSeriesDeNotes.Edit2Change;
begin
{*
 0050DF6C    push        ebp
 0050DF6D    mov         ebp,esp
 0050DF6F    add         esp,0FFFFFEF8
 0050DF75    push        ebx
 0050DF76    push        esi
 0050DF77    xor         ecx,ecx
 0050DF79    mov         dword ptr [ebp-108],ecx
 0050DF7F    mov         esi,eax
 0050DF81    xor         eax,eax
 0050DF83    push        ebp
 0050DF84    push        50E02E
 0050DF89    push        dword ptr fs:[eax]
 0050DF8C    mov         dword ptr fs:[eax],esp
 0050DF8F    mov         eax,dword ptr [esi+2E0];TFormInformationsSeriesDeNotes.TabControl1:TTabControl
 0050DF95    call        TCustomTabControl.GetTabIndex
 0050DF9A    mov         ebx,eax
 0050DF9C    add         ebx,1
>0050DF9F    jno         0050DFA6
 0050DFA1    call        @IntOver
 0050DFA6    cmp         ebx,0FF
>0050DFAC    jbe         0050DFB3
 0050DFAE    call        @BoundErr
 0050DFB3    mov         eax,dword ptr [esi+2E4];TFormInformationsSeriesDeNotes.ListBoxSeries:TListBox
 0050DFB9    call        TCustomListBox.GetItemIndex
 0050DFBE    add         eax,1
>0050DFC1    jno         0050DFC8
 0050DFC3    call        @IntOver
 0050DFC8    cmp         eax,0FF
>0050DFCD    jbe         0050DFD4
 0050DFCF    call        @BoundErr
 0050DFD4    mov         byte ptr [ebp-1],al
 0050DFD7    lea         edx,[ebp-108]
 0050DFDD    mov         eax,dword ptr [esi+31C];TFormInformationsSeriesDeNotes.Edit2:TEdit
 0050DFE3    call        TControl.GetText
 0050DFE8    mov         edx,dword ptr [ebp-108]
 0050DFEE    lea         eax,[ebp-104]
 0050DFF4    mov         ecx,0FF
 0050DFF9    call        @LStrToString
 0050DFFE    lea         eax,[ebp-104]
 0050E004    push        eax
 0050E005    mov         cl,byte ptr [ebp-1]
 0050E008    mov         edx,ebx
 0050E00A    mov         eax,dword ptr [esi+334];TFormInformationsSeriesDeNotes.?f334:dword
 0050E010    call        004C0E5C
 0050E015    xor         eax,eax
 0050E017    pop         edx
 0050E018    pop         ecx
 0050E019    pop         ecx
 0050E01A    mov         dword ptr fs:[eax],edx
 0050E01D    push        50E035
 0050E022    lea         eax,[ebp-108]
 0050E028    call        @LStrClr
 0050E02D    ret
>0050E02E    jmp         @HandleFinally
>0050E033    jmp         0050E022
 0050E035    pop         esi
 0050E036    pop         ebx
 0050E037    mov         esp,ebp
 0050E039    pop         ebp
 0050E03A    ret
*}
end;

//0050E03C
procedure TFormInformationsSeriesDeNotes.RadioGroup1Click(Sender:TObject);
begin
{*
 0050E03C    push        ebx
 0050E03D    push        esi
 0050E03E    mov         esi,eax
 0050E040    mov         eax,dword ptr [esi+2E0];TFormInformationsSeriesDeNotes.TabControl1:TTabControl
 0050E046    call        TCustomTabControl.GetTabIndex
 0050E04B    mov         ebx,eax
 0050E04D    add         ebx,1
>0050E050    jno         0050E057
 0050E052    call        @IntOver
 0050E057    cmp         ebx,0FF
>0050E05D    jbe         0050E064
 0050E05F    call        @BoundErr
 0050E064    mov         eax,dword ptr [esi+2E4];TFormInformationsSeriesDeNotes.ListBoxSeries:TListBox
 0050E06A    call        TCustomListBox.GetItemIndex
 0050E06F    add         eax,1
>0050E072    jno         0050E079
 0050E074    call        @IntOver
 0050E079    cmp         eax,0FF
>0050E07E    jbe         0050E085
 0050E080    call        @BoundErr
 0050E085    mov         edx,dword ptr [esi+30C];TFormInformationsSeriesDeNotes.RadioGroup1:TRadioGroup
 0050E08B    cmp         dword ptr [edx+200],0;TRadioGroup.FItemIndex:Integer
>0050E092    jne         0050E0AB
 0050E094    push        50E0C4
 0050E099    mov         ecx,eax
 0050E09B    mov         edx,ebx
 0050E09D    mov         eax,dword ptr [esi+334];TFormInformationsSeriesDeNotes.?f334:dword
 0050E0A3    call        004C0FA0
 0050E0A8    pop         esi
 0050E0A9    pop         ebx
 0050E0AA    ret
 0050E0AB    push        50E0C8
 0050E0B0    mov         ecx,eax
 0050E0B2    mov         edx,ebx
 0050E0B4    mov         eax,dword ptr [esi+334];TFormInformationsSeriesDeNotes.?f334:dword
 0050E0BA    call        004C0FA0
 0050E0BF    pop         esi
 0050E0C0    pop         ebx
 0050E0C1    ret
*}
end;

//0050E0CC
procedure TFormInformationsSeriesDeNotes.Edit1Change;
begin
{*
 0050E0CC    push        ebp
 0050E0CD    mov         ebp,esp
 0050E0CF    add         esp,0FFFFFEF4
 0050E0D5    push        ebx
 0050E0D6    push        esi
 0050E0D7    push        edi
 0050E0D8    xor         ecx,ecx
 0050E0DA    mov         dword ptr [ebp-10C],ecx
 0050E0E0    mov         dword ptr [ebp-8],ecx
 0050E0E3    mov         esi,eax
 0050E0E5    xor         eax,eax
 0050E0E7    push        ebp
 0050E0E8    push        50E1CA
 0050E0ED    push        dword ptr fs:[eax]
 0050E0F0    mov         dword ptr fs:[eax],esp
 0050E0F3    mov         eax,dword ptr [esi+2E0];TFormInformationsSeriesDeNotes.TabControl1:TTabControl
 0050E0F9    call        TCustomTabControl.GetTabIndex
 0050E0FE    add         eax,1
>0050E101    jno         0050E108
 0050E103    call        @IntOver
 0050E108    cmp         eax,0FF
>0050E10D    jbe         0050E114
 0050E10F    call        @BoundErr
 0050E114    mov         byte ptr [ebp-1],al
 0050E117    mov         eax,dword ptr [esi+2E4];TFormInformationsSeriesDeNotes.ListBoxSeries:TListBox
 0050E11D    call        TCustomListBox.GetItemIndex
 0050E122    mov         ebx,eax
 0050E124    add         ebx,1
>0050E127    jno         0050E12E
 0050E129    call        @IntOver
 0050E12E    cmp         ebx,0FF
>0050E134    jbe         0050E13B
 0050E136    call        @BoundErr
 0050E13B    lea         edx,[ebp-8]
 0050E13E    mov         eax,dword ptr [esi+2F0];TFormInformationsSeriesDeNotes.Edit1:TEdit
 0050E144    call        TControl.GetText
 0050E149    mov         ecx,dword ptr [ebp-8]
 0050E14C    xor         edx,edx
 0050E14E    mov         dl,bl
 0050E150    sub         edx,1
>0050E153    jno         0050E15A
 0050E155    call        @IntOver
 0050E15A    mov         eax,dword ptr [esi+2E4];TFormInformationsSeriesDeNotes.ListBoxSeries:TListBox
 0050E160    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 0050E166    mov         edi,dword ptr [eax]
 0050E168    call        dword ptr [edi+20];TStrings.Put
 0050E16B    lea         edx,[ebp-10C]
 0050E171    mov         eax,dword ptr [esi+2F0];TFormInformationsSeriesDeNotes.Edit1:TEdit
 0050E177    call        TControl.GetText
 0050E17C    mov         edx,dword ptr [ebp-10C]
 0050E182    lea         eax,[ebp-108]
 0050E188    mov         ecx,0FF
 0050E18D    call        @LStrToString
 0050E192    lea         eax,[ebp-108]
 0050E198    push        eax
 0050E199    mov         ecx,ebx
 0050E19B    mov         dl,byte ptr [ebp-1]
 0050E19E    mov         eax,dword ptr [esi+334];TFormInformationsSeriesDeNotes.?f334:dword
 0050E1A4    call        004C0E24
 0050E1A9    xor         eax,eax
 0050E1AB    pop         edx
 0050E1AC    pop         ecx
 0050E1AD    pop         ecx
 0050E1AE    mov         dword ptr fs:[eax],edx
 0050E1B1    push        50E1D1
 0050E1B6    lea         eax,[ebp-10C]
 0050E1BC    call        @LStrClr
 0050E1C1    lea         eax,[ebp-8]
 0050E1C4    call        @LStrClr
 0050E1C9    ret
>0050E1CA    jmp         @HandleFinally
>0050E1CF    jmp         0050E1B6
 0050E1D1    pop         edi
 0050E1D2    pop         esi
 0050E1D3    pop         ebx
 0050E1D4    mov         esp,ebp
 0050E1D6    pop         ebp
 0050E1D7    ret
*}
end;

//0050E1D8
//procedure sub_0050E1D8(?:TFormInformationsSeriesDeNotes);
//begin
{*
 0050E1D8    push        ebp
 0050E1D9    mov         ebp,esp
 0050E1DB    push        0
 0050E1DD    push        ebx
 0050E1DE    push        esi
 0050E1DF    mov         ebx,eax
 0050E1E1    xor         eax,eax
 0050E1E3    push        ebp
 0050E1E4    push        50E291
 0050E1E9    push        dword ptr fs:[eax]
 0050E1EC    mov         dword ptr fs:[eax],esp
 0050E1EF    mov         esi,dword ptr [ebx+334];TFormInformationsSeriesDeNotes.?f334:dword
 0050E1F5    mov         eax,dword ptr [ebx+2E0];TFormInformationsSeriesDeNotes.TabControl1:TTabControl
 0050E1FB    call        TCustomTabControl.GetTabIndex
 0050E200    mov         edx,eax
 0050E202    add         edx,1
>0050E205    jno         0050E20C
 0050E207    call        @IntOver
 0050E20C    cmp         edx,0FF
>0050E212    jbe         0050E219
 0050E214    call        @BoundErr
 0050E219    mov         eax,esi
 0050E21B    call        004BEAD0
 0050E220    and         eax,0FF
 0050E225    mov         esi,eax
 0050E227    mov         eax,esi
 0050E229    sub         eax,1
>0050E22C    jb          0050E232
>0050E22E    je          0050E244
>0050E230    jmp         0050E256
 0050E232    mov         edx,50E2A8;'aucune série de notes'
 0050E237    mov         eax,dword ptr [ebx+32C];TFormInformationsSeriesDeNotes.Label8:TLabel
 0050E23D    call        TControl.SetText
>0050E242    jmp         0050E27B
 0050E244    mov         edx,50E2C8;'1 série de notes'
 0050E249    mov         eax,dword ptr [ebx+32C];TFormInformationsSeriesDeNotes.Label8:TLabel
 0050E24F    call        TControl.SetText
>0050E254    jmp         0050E27B
 0050E256    lea         edx,[ebp-4]
 0050E259    mov         eax,esi
 0050E25B    call        IntToStr
 0050E260    lea         eax,[ebp-4]
 0050E263    mov         edx,50E2E4;' séries de notes'
 0050E268    call        @LStrCat
 0050E26D    mov         edx,dword ptr [ebp-4]
 0050E270    mov         eax,dword ptr [ebx+32C];TFormInformationsSeriesDeNotes.Label8:TLabel
 0050E276    call        TControl.SetText
 0050E27B    xor         eax,eax
 0050E27D    pop         edx
 0050E27E    pop         ecx
 0050E27F    pop         ecx
 0050E280    mov         dword ptr fs:[eax],edx
 0050E283    push        50E298
 0050E288    lea         eax,[ebp-4]
 0050E28B    call        @LStrClr
 0050E290    ret
>0050E291    jmp         @HandleFinally
>0050E296    jmp         0050E288
 0050E298    pop         esi
 0050E299    pop         ebx
 0050E29A    pop         ecx
 0050E29B    pop         ebp
 0050E29C    ret
*}
//end;

//0050E2F8
procedure TFormInformationsSeriesDeNotes.FormKeyPress(Sender:TObject; var Key:Char);
begin//0
  //0050E2F8
  if (Key = chr($0D)) then//0050E2FD
    ModalResult := 1
  else
  if (Key = chr($1B)) then 
  ModalResult := 2;
end;//0

//0050E318
procedure TFormInformationsSeriesDeNotes.RadioGroup2Click(Sender:TObject);
begin
{*
 0050E318    push        ebx
 0050E319    push        esi
 0050E31A    mov         esi,eax
 0050E31C    mov         eax,dword ptr [esi+2E0];TFormInformationsSeriesDeNotes.TabControl1:TTabControl
 0050E322    call        TCustomTabControl.GetTabIndex
 0050E327    mov         ebx,eax
 0050E329    add         ebx,1
>0050E32C    jno         0050E333
 0050E32E    call        @IntOver
 0050E333    cmp         ebx,0FF
>0050E339    jbe         0050E340
 0050E33B    call        @BoundErr
 0050E340    mov         eax,dword ptr [esi+2E4];TFormInformationsSeriesDeNotes.ListBoxSeries:TListBox
 0050E346    call        TCustomListBox.GetItemIndex
 0050E34B    add         eax,1
>0050E34E    jno         0050E355
 0050E350    call        @IntOver
 0050E355    cmp         eax,0FF
>0050E35A    jbe         0050E361
 0050E35C    call        @BoundErr
 0050E361    mov         edx,dword ptr [esi+330];TFormInformationsSeriesDeNotes.RadioGroup2:TRadioGroup
 0050E367    cmp         dword ptr [edx+200],1;TRadioGroup.FItemIndex:Integer
>0050E36E    jne         0050E384
 0050E370    push        1
 0050E372    mov         ecx,eax
 0050E374    mov         edx,ebx
 0050E376    mov         eax,dword ptr [esi+334];TFormInformationsSeriesDeNotes.?f334:dword
 0050E37C    call        004C8EC8
 0050E381    pop         esi
 0050E382    pop         ebx
 0050E383    ret
 0050E384    push        0
 0050E386    mov         ecx,eax
 0050E388    mov         edx,ebx
 0050E38A    mov         eax,dword ptr [esi+334];TFormInformationsSeriesDeNotes.?f334:dword
 0050E390    call        004C8EC8
 0050E395    pop         esi
 0050E396    pop         ebx
 0050E397    ret
*}
end;

end.