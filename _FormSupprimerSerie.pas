{***************************************
* Version Original V0.01
* Decompiled by HOUIDEF AEK v.05.02.2018
***************************************}
unit _FormSupprimerSerie;

interface

uses
  Forms,Windows, SysUtils, Classes, ExtCtrls, ComCtrls, Buttons, CheckLst, Controls, StdCtrls,UFichierCdn;

type
  TFormSupprimerSerie = class(TForm)
  published
    Panel2:TPanel;//f2D0
    Bevel2:TBevel;//f2D4
    Image1:TImage;//f2D8
    TabControl1:TTabControl;//f2DC
    SpeedButton1:TSpeedButton;//f2E0
    SpeedButton2:TSpeedButton;//f2E4
    CheckListBox1:TCheckListBox;//f2E8
    SpeedButton3:TSpeedButton;//f2EC
    SpeedButton4:TSpeedButton;//f2F0
    Label1:TLabel;//f2F4
    procedure SpeedButton1Click(Sender:TObject);//0050C0C4
    procedure TabControl1Change;//0050BFA8
    procedure FormKeyPress(Sender:TObject; var Key:Char);//0050C31C
    procedure CheckListBox1ClickCheck;//0050C2C4
    procedure SpeedButton2Click(Sender:TObject);//0050BCF4
    procedure ListBox1DrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);//0050BB50
    procedure SpeedButton4Click(Sender:TObject);//0050BD60
    procedure SpeedButton3Click(Sender:TObject);//0050BCFC
  public
    f2F8:TFichierCdn;//f2F8
    constructor Create(Owner:TComponent; F:TFichierCdn;Logo:Timage);//0050BA30
	//procedure sub_0050BDC4(?:TFormSupprimerSerie);//0050BDC4
  end;
 var 
   FormSupprimerSerie :TFormSupprimerSerie;

implementation

{$R *.DFM}

//0050BA30
constructor TFormSupprimerSerie.Create(Owner:TComponent; F:TFichierCdn; Logo:Timage);
var
 I:integer;
 buf:string;
begin//0
  //0050BA30

    //0050BA5F

    inherited Create(Owner);

    f2F8 := F;

    Image1.Picture := Logo.Picture;



    TabControl1.Tabs := f2F8.sub_004BEA4C;

   

 
      for I := 1 to f2F8.sub_004BEAD0(1) do //0050BAB9
      begin//3
        //0050BAC0

        f2F8.sub_004BED04( 1, Buf, I);

        CheckListBox1.Items.Add(buf);
      end;//3

    
    //sub_0050BDC4;
 
end;//0

//0050BB50
procedure TFormSupprimerSerie.ListBox1DrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
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

   CheckListBox1.Canvas.TextOut(Rect.Left + 5, Rect.Top + 2,CheckListBox1.Items[Index]);
    if ( odSelected in State) then
    begin//2
      //005530E6
     CheckListBox1.Canvas.Brush.Color := $F8D1C5;
     CheckListBox1.Canvas.FillRect(Rect);
     CheckListBox1.Canvas.Font.Color := $FF0000;
     CheckListBox1.Canvas.TextOut(Rect.Left + 5, Rect.Top + 2,CheckListBox1.Items[Index]);
    end;//2
end;

//0050BCF4
procedure TFormSupprimerSerie.SpeedButton2Click(Sender:TObject);
begin
{*
 0050BCF4    call        TCustomForm.Close
 0050BCF9    ret
*}
end;

//0050BCFC
procedure TFormSupprimerSerie.SpeedButton3Click(Sender:TObject);
begin
{*
 0050BCFC    push        ebx
 0050BCFD    push        esi
 0050BCFE    push        edi
 0050BCFF    mov         edi,eax
 0050BD01    mov         eax,dword ptr [edi+2E8];TFormSupprimerSerie.CheckListBox1:TCheckListBox
 0050BD07    mov         eax,dword ptr [eax+1F0];TCheckListBox.FItems:TStrings
 0050BD0D    mov         edx,dword ptr [eax]
 0050BD0F    call        dword ptr [edx+14];TStrings.GetCount
 0050BD12    mov         ebx,eax
 0050BD14    sub         ebx,1
>0050BD17    jno         0050BD1E
 0050BD19    call        @IntOver
 0050BD1E    test        ebx,ebx
>0050BD20    jl          0050BD38
 0050BD22    inc         ebx
 0050BD23    xor         esi,esi
 0050BD25    mov         eax,dword ptr [edi+2E8];TFormSupprimerSerie.CheckListBox1:TCheckListBox
 0050BD2B    mov         cl,1
 0050BD2D    mov         edx,esi
 0050BD2F    call        TCheckListBox.SetChecked
 0050BD34    inc         esi
 0050BD35    dec         ebx
>0050BD36    jne         0050BD25
 0050BD38    mov         eax,dword ptr [edi+2E8];TFormSupprimerSerie.CheckListBox1:TCheckListBox
 0050BD3E    mov         eax,dword ptr [eax+1F0];TCheckListBox.FItems:TStrings
 0050BD44    mov         edx,dword ptr [eax]
 0050BD46    call        dword ptr [edx+14];TStrings.GetCount
 0050BD49    test        eax,eax
>0050BD4B    jle         0050BD5A
 0050BD4D    mov         eax,dword ptr [edi+2E0];TFormSupprimerSerie.SpeedButton1:TSpeedButton
 0050BD53    mov         dl,1
 0050BD55    mov         ecx,dword ptr [eax]
 0050BD57    call        dword ptr [ecx+5C];TControl.SetEnabled
 0050BD5A    pop         edi
 0050BD5B    pop         esi
 0050BD5C    pop         ebx
 0050BD5D    ret
*}
end;

//0050BD60
procedure TFormSupprimerSerie.SpeedButton4Click(Sender:TObject);
begin
{*
 0050BD60    push        ebx
 0050BD61    push        esi
 0050BD62    push        edi
 0050BD63    mov         edi,eax
 0050BD65    mov         eax,dword ptr [edi+2E8];TFormSupprimerSerie.CheckListBox1:TCheckListBox
 0050BD6B    mov         eax,dword ptr [eax+1F0];TCheckListBox.FItems:TStrings
 0050BD71    mov         edx,dword ptr [eax]
 0050BD73    call        dword ptr [edx+14];TStrings.GetCount
 0050BD76    mov         ebx,eax
 0050BD78    sub         ebx,1
>0050BD7B    jno         0050BD82
 0050BD7D    call        @IntOver
 0050BD82    test        ebx,ebx
>0050BD84    jl          0050BD9C
 0050BD86    inc         ebx
 0050BD87    xor         esi,esi
 0050BD89    mov         eax,dword ptr [edi+2E8];TFormSupprimerSerie.CheckListBox1:TCheckListBox
 0050BD8F    xor         ecx,ecx
 0050BD91    mov         edx,esi
 0050BD93    call        TCheckListBox.SetChecked
 0050BD98    inc         esi
 0050BD99    dec         ebx
>0050BD9A    jne         0050BD89
 0050BD9C    mov         eax,dword ptr [edi+2E8];TFormSupprimerSerie.CheckListBox1:TCheckListBox
 0050BDA2    mov         eax,dword ptr [eax+1F0];TCheckListBox.FItems:TStrings
 0050BDA8    mov         edx,dword ptr [eax]
 0050BDAA    call        dword ptr [edx+14];TStrings.GetCount
 0050BDAD    test        eax,eax
>0050BDAF    jle         0050BDBE
 0050BDB1    mov         eax,dword ptr [edi+2E0];TFormSupprimerSerie.SpeedButton1:TSpeedButton
 0050BDB7    xor         edx,edx
 0050BDB9    mov         ecx,dword ptr [eax]
 0050BDBB    call        dword ptr [ecx+5C];TControl.SetEnabled
 0050BDBE    pop         edi
 0050BDBF    pop         esi
 0050BDC0    pop         ebx
 0050BDC1    ret
*}
end;

//0050BDC4
//procedure sub_0050BDC4(?:TFormSupprimerSerie);
//begin
{*
 0050BDC4    push        ebp
 0050BDC5    mov         ebp,esp
 0050BDC7    add         esp,0FFFFFEEC
 0050BDCD    push        ebx
 0050BDCE    push        esi
 0050BDCF    xor         edx,edx
 0050BDD1    mov         dword ptr [ebp-110],edx
 0050BDD7    mov         dword ptr [ebp-114],edx
 0050BDDD    mov         dword ptr [ebp-10C],edx
 0050BDE3    mov         dword ptr [ebp-108],edx
 0050BDE9    mov         dword ptr [ebp-4],edx
 0050BDEC    mov         ebx,eax
 0050BDEE    xor         eax,eax
 0050BDF0    push        ebp
 0050BDF1    push        50BF31
 0050BDF6    push        dword ptr fs:[eax]
 0050BDF9    mov         dword ptr fs:[eax],esp
 0050BDFC    mov         esi,dword ptr [ebx+2F8]
 0050BE02    mov         eax,dword ptr [ebx+2DC]
 0050BE08    call        TCustomTabControl.GetTabIndex
 0050BE0D    mov         edx,eax
 0050BE0F    add         edx,1
>0050BE12    jno         0050BE19
 0050BE14    call        @IntOver
 0050BE19    cmp         edx,0FF
>0050BE1F    jbe         0050BE26
 0050BE21    call        @BoundErr
 0050BE26    lea         ecx,[ebp-104]
 0050BE2C    mov         eax,esi
 0050BE2E    call        004BE9EC
 0050BE33    lea         edx,[ebp-104]
 0050BE39    lea         eax,[ebp-4]
 0050BE3C    call        @LStrFromString
 0050BE41    mov         eax,dword ptr [ebx+2DC]
 0050BE47    call        TCustomTabControl.GetTabIndex
 0050BE4C    mov         edx,eax
 0050BE4E    add         edx,1
>0050BE51    jno         0050BE58
 0050BE53    call        @IntOver
 0050BE58    cmp         edx,0FF
>0050BE5E    jbe         0050BE65
 0050BE60    call        @BoundErr
 0050BE65    mov         eax,esi
 0050BE67    call        004BEAD0
 0050BE6C    and         eax,0FF
 0050BE71    mov         esi,eax
 0050BE73    mov         eax,esi
 0050BE75    sub         eax,1
>0050BE78    jb          0050BE7E
>0050BE7A    je          0050BEA4
>0050BE7C    jmp         0050BECA
 0050BE7E    lea         eax,[ebp-108]
 0050BE84    mov         ecx,50BF48;' : aucune série de notes'
 0050BE89    mov         edx,dword ptr [ebp-4]
 0050BE8C    call        @LStrCat3
 0050BE91    mov         edx,dword ptr [ebp-108]
 0050BE97    mov         eax,dword ptr [ebx+2F4]
 0050BE9D    call        TControl.SetText
>0050BEA2    jmp         0050BF0B
 0050BEA4    lea         eax,[ebp-10C]
 0050BEAA    mov         ecx,50BF6C;' : 1 série de notes'
 0050BEAF    mov         edx,dword ptr [ebp-4]
 0050BEB2    call        @LStrCat3
 0050BEB7    mov         edx,dword ptr [ebp-10C]
 0050BEBD    mov         eax,dword ptr [ebx+2F4]
 0050BEC3    call        TControl.SetText
>0050BEC8    jmp         0050BF0B
 0050BECA    push        dword ptr [ebp-4]
 0050BECD    push        50BF88;' : '
 0050BED2    lea         edx,[ebp-114]
 0050BED8    mov         eax,esi
 0050BEDA    call        IntToStr
 0050BEDF    push        dword ptr [ebp-114]
 0050BEE5    push        50BF94;' séries de notes'
 0050BEEA    lea         eax,[ebp-110]
 0050BEF0    mov         edx,4
 0050BEF5    call        @LStrCatN
 0050BEFA    mov         edx,dword ptr [ebp-110]
 0050BF00    mov         eax,dword ptr [ebx+2F4]
 0050BF06    call        TControl.SetText
 0050BF0B    xor         eax,eax
 0050BF0D    pop         edx
 0050BF0E    pop         ecx
 0050BF0F    pop         ecx
 0050BF10    mov         dword ptr fs:[eax],edx
 0050BF13    push        50BF38
 0050BF18    lea         eax,[ebp-114]
 0050BF1E    mov         edx,4
 0050BF23    call        @LStrArrayClr
 0050BF28    lea         eax,[ebp-4]
 0050BF2B    call        @LStrClr
 0050BF30    ret
>0050BF31    jmp         @HandleFinally
>0050BF36    jmp         0050BF18
 0050BF38    pop         esi
 0050BF39    pop         ebx
 0050BF3A    mov         esp,ebp
 0050BF3C    pop         ebp
 0050BF3D    ret
*}
//end;

//0050BFA8
procedure TFormSupprimerSerie.TabControl1Change;
begin
{*
 0050BFA8    push        ebp
 0050BFA9    mov         ebp,esp
 0050BFAB    add         esp,0FFFFFEF4
 0050BFB1    push        ebx
 0050BFB2    push        esi
 0050BFB3    xor         ecx,ecx
 0050BFB5    mov         dword ptr [ebp-0C],ecx
 0050BFB8    mov         ebx,eax
 0050BFBA    xor         eax,eax
 0050BFBC    push        ebp
 0050BFBD    push        50C0B6
 0050BFC2    push        dword ptr fs:[eax]
 0050BFC5    mov         dword ptr fs:[eax],esp
 0050BFC8    mov         eax,dword ptr [ebx+2E8];TFormSupprimerSerie.CheckListBox1:TCheckListBox
 0050BFCE    mov         eax,dword ptr [eax+1F0];TCheckListBox.FItems:TStrings
 0050BFD4    mov         edx,dword ptr [eax]
 0050BFD6    call        dword ptr [edx+40];TStrings.Clear
 0050BFD9    xor         edx,edx
 0050BFDB    mov         eax,dword ptr [ebx+2E0];TFormSupprimerSerie.SpeedButton1:TSpeedButton
 0050BFE1    mov         ecx,dword ptr [eax]
 0050BFE3    call        dword ptr [ecx+5C];TControl.SetEnabled
 0050BFE6    mov         eax,dword ptr [ebx+2F8];TFormSupprimerSerie.?f2F8:dword
 0050BFEC    mov         dword ptr [ebp-8],eax
 0050BFEF    mov         eax,dword ptr [ebx+2DC];TFormSupprimerSerie.TabControl1:TTabControl
 0050BFF5    call        TCustomTabControl.GetTabIndex
 0050BFFA    mov         edx,eax
 0050BFFC    add         edx,1
>0050BFFF    jno         0050C006
 0050C001    call        @IntOver
 0050C006    cmp         edx,0FF
>0050C00C    jbe         0050C013
 0050C00E    call        @BoundErr
 0050C013    mov         eax,dword ptr [ebp-8]
 0050C016    call        004BEAD0
 0050C01B    mov         esi,eax
 0050C01D    and         esi,0FF
 0050C023    test        esi,esi
>0050C025    jle         0050C099
 0050C027    mov         dword ptr [ebp-4],1
 0050C02E    lea         eax,[ebp-10C]
 0050C034    push        eax
 0050C035    mov         eax,dword ptr [ebx+2DC];TFormSupprimerSerie.TabControl1:TTabControl
 0050C03B    call        TCustomTabControl.GetTabIndex
 0050C040    mov         edx,eax
 0050C042    add         edx,1
>0050C045    jno         0050C04C
 0050C047    call        @IntOver
 0050C04C    cmp         edx,0FF
>0050C052    jbe         0050C059
 0050C054    call        @BoundErr
 0050C059    mov         ecx,dword ptr [ebp-4]
 0050C05C    cmp         ecx,0FF
>0050C062    jbe         0050C069
 0050C064    call        @BoundErr
 0050C069    mov         eax,dword ptr [ebp-8]
 0050C06C    call        004BED04
 0050C071    lea         edx,[ebp-10C]
 0050C077    lea         eax,[ebp-0C]
 0050C07A    call        @LStrFromString
 0050C07F    mov         edx,dword ptr [ebp-0C]
 0050C082    mov         eax,dword ptr [ebx+2E8];TFormSupprimerSerie.CheckListBox1:TCheckListBox
 0050C088    mov         eax,dword ptr [eax+1F0];TCheckListBox.FItems:TStrings
 0050C08E    mov         ecx,dword ptr [eax]
 0050C090    call        dword ptr [ecx+34];TStrings.Add
 0050C093    inc         dword ptr [ebp-4]
 0050C096    dec         esi
>0050C097    jne         0050C02E
 0050C099    mov         eax,ebx
 0050C09B    call        0050BDC4
 0050C0A0    xor         eax,eax
 0050C0A2    pop         edx
 0050C0A3    pop         ecx
 0050C0A4    pop         ecx
 0050C0A5    mov         dword ptr fs:[eax],edx
 0050C0A8    push        50C0BD
 0050C0AD    lea         eax,[ebp-0C]
 0050C0B0    call        @LStrClr
 0050C0B5    ret
>0050C0B6    jmp         @HandleFinally
>0050C0BB    jmp         0050C0AD
 0050C0BD    pop         esi
 0050C0BE    pop         ebx
 0050C0BF    mov         esp,ebp
 0050C0C1    pop         ebp
 0050C0C2    ret
*}
end;

//0050C0C4
procedure TFormSupprimerSerie.SpeedButton1Click(Sender:TObject);
begin
{*
 0050C0C4    push        ebx
 0050C0C5    push        esi
 0050C0C6    push        edi
 0050C0C7    push        ebp
 0050C0C8    add         esp,0FFFFFFF0
 0050C0CB    mov         dword ptr [esp],edx
 0050C0CE    mov         edi,eax
 0050C0D0    push        24
 0050C0D2    mov         ecx,50C270
 0050C0D7    mov         edx,50C294
 0050C0DC    mov         eax,[00615FEC];^Application:TApplication
 0050C0E1    mov         eax,dword ptr [eax]
 0050C0E3    call        TApplication.MessageBox
 0050C0E8    cmp         eax,6
>0050C0EB    jne         0050C254
 0050C0F1    xor         ebx,ebx
 0050C0F3    mov         eax,dword ptr [edi+2E8];TFormSupprimerSerie.CheckListBox1:TCheckListBox
 0050C0F9    mov         eax,dword ptr [eax+1F0];TCheckListBox.FItems:TStrings
 0050C0FF    mov         edx,dword ptr [eax]
 0050C101    call        dword ptr [edx+14];TStrings.GetCount
 0050C104    test        eax,eax
>0050C106    jle         0050C13D
 0050C108    mov         dword ptr [esp+8],eax
 0050C10C    mov         ebp,1
 0050C111    mov         edx,ebp
 0050C113    sub         edx,1
>0050C116    jno         0050C11D
 0050C118    call        @IntOver
 0050C11D    mov         eax,dword ptr [edi+2E8];TFormSupprimerSerie.CheckListBox1:TCheckListBox
 0050C123    call        TCheckListBox.GetChecked
 0050C128    test        al,al
>0050C12A    je          0050C136
 0050C12C    add         ebx,1
>0050C12F    jno         0050C136
 0050C131    call        @IntOver
 0050C136    inc         ebp
 0050C137    dec         dword ptr [esp+8]
>0050C13B    jne         0050C111
 0050C13D    test        ebx,ebx
>0050C13F    jle         0050C254
 0050C145    mov         dword ptr [esp+8],ebx
 0050C149    mov         eax,dword ptr [edi+2E8];TFormSupprimerSerie.CheckListBox1:TCheckListBox
 0050C14F    mov         eax,dword ptr [eax+1F0];TCheckListBox.FItems:TStrings
 0050C155    mov         edx,dword ptr [eax]
 0050C157    call        dword ptr [edx+14];TStrings.GetCount
 0050C15A    mov         ebx,eax
 0050C15C    test        ebx,ebx
>0050C15E    jle         0050C24A
 0050C164    mov         ebp,1
 0050C169    mov         edx,ebp
 0050C16B    sub         edx,1
>0050C16E    jno         0050C175
 0050C170    call        @IntOver
 0050C175    mov         eax,dword ptr [edi+2E8];TFormSupprimerSerie.CheckListBox1:TCheckListBox
 0050C17B    call        TCheckListBox.GetChecked
 0050C180    test        al,al
>0050C182    je          0050C242
 0050C188    mov         eax,dword ptr [edi+2F8];TFormSupprimerSerie.?f2F8:dword
 0050C18E    mov         dword ptr [esp+0C],eax
 0050C192    xor         eax,eax
 0050C194    mov         dword ptr [esp+4],eax
 0050C198    mov         eax,dword ptr [edi+2DC];TFormSupprimerSerie.TabControl1:TTabControl
 0050C19E    call        TCustomTabControl.GetTabIndex
 0050C1A3    mov         ebx,eax
 0050C1A5    test        ebx,ebx
>0050C1A7    jle         0050C1DA
 0050C1A9    mov         esi,1
 0050C1AE    mov         edx,esi
 0050C1B0    cmp         edx,0FF
>0050C1B6    jbe         0050C1BD
 0050C1B8    call        @BoundErr
 0050C1BD    mov         eax,dword ptr [esp+0C]
 0050C1C1    call        004BEAD0
 0050C1C6    and         eax,0FF
 0050C1CB    add         dword ptr [esp+4],eax
>0050C1CF    jno         0050C1D6
 0050C1D1    call        @IntOver
 0050C1D6    inc         esi
 0050C1D7    dec         ebx
>0050C1D8    jne         0050C1AE
 0050C1DA    mov         ebx,dword ptr [esp+4]
 0050C1DE    add         ebx,ebp
>0050C1E0    jno         0050C1E7
 0050C1E2    call        @IntOver
 0050C1E7    mov         eax,dword ptr [edi+2DC];TFormSupprimerSerie.TabControl1:TTabControl
 0050C1ED    call        TCustomTabControl.GetTabIndex
 0050C1F2    mov         edx,eax
 0050C1F4    add         edx,1
>0050C1F7    jno         0050C1FE
 0050C1F9    call        @IntOver
 0050C1FE    cmp         edx,0FF
>0050C204    jbe         0050C20B
 0050C206    call        @BoundErr
 0050C20B    mov         ecx,ebx
 0050C20D    cmp         ecx,0FF
>0050C213    jbe         0050C21A
 0050C215    call        @BoundErr
 0050C21A    mov         eax,dword ptr [esp+0C]
 0050C21E    call        004BFC58
 0050C223    mov         edx,ebp
 0050C225    sub         edx,1
>0050C228    jno         0050C22F
 0050C22A    call        @IntOver
 0050C22F    mov         eax,dword ptr [edi+2E8];TFormSupprimerSerie.CheckListBox1:TCheckListBox
 0050C235    mov         eax,dword ptr [eax+1F0];TCheckListBox.FItems:TStrings
 0050C23B    mov         ecx,dword ptr [eax]
 0050C23D    call        dword ptr [ecx+44];TStrings.Delete
>0050C240    jmp         0050C24A
 0050C242    inc         ebp
 0050C243    dec         ebx
>0050C244    jne         0050C169
 0050C24A    dec         dword ptr [esp+8]
>0050C24E    jne         0050C149
 0050C254    mov         edx,dword ptr [esp]
 0050C257    mov         eax,edi
 0050C259    call        TFormSupprimerSerie.TabControl1Change
 0050C25E    mov         eax,edi
 0050C260    call        0050BDC4
 0050C265    add         esp,10
 0050C268    pop         ebp
 0050C269    pop         edi
 0050C26A    pop         esi
 0050C26B    pop         ebx
 0050C26C    ret
*}
end;

//0050C2C4
procedure TFormSupprimerSerie.CheckListBox1ClickCheck;
begin
{*
 0050C2C4    push        ebx
 0050C2C5    push        esi
 0050C2C6    push        edi
 0050C2C7    push        ebp
 0050C2C8    mov         edi,eax
 0050C2CA    xor         ebx,ebx
 0050C2CC    mov         eax,dword ptr [edi+2E8];TFormSupprimerSerie.CheckListBox1:TCheckListBox
 0050C2D2    mov         eax,dword ptr [eax+1F0];TCheckListBox.FItems:TStrings
 0050C2D8    mov         edx,dword ptr [eax]
 0050C2DA    call        dword ptr [edx+14];TStrings.GetCount
 0050C2DD    mov         ebp,eax
 0050C2DF    sub         ebp,1
>0050C2E2    jno         0050C2E9
 0050C2E4    call        @IntOver
 0050C2E9    test        ebp,ebp
>0050C2EB    jl          0050C307
 0050C2ED    inc         ebp
 0050C2EE    xor         esi,esi
 0050C2F0    mov         eax,dword ptr [edi+2E8];TFormSupprimerSerie.CheckListBox1:TCheckListBox
 0050C2F6    mov         edx,esi
 0050C2F8    call        TCheckListBox.GetChecked
 0050C2FD    test        al,al
>0050C2FF    je          0050C303
 0050C301    mov         bl,1
 0050C303    inc         esi
 0050C304    dec         ebp
>0050C305    jne         0050C2F0
 0050C307    mov         eax,dword ptr [edi+2E0];TFormSupprimerSerie.SpeedButton1:TSpeedButton
 0050C30D    mov         edx,ebx
 0050C30F    mov         ecx,dword ptr [eax]
 0050C311    call        dword ptr [ecx+5C];TControl.SetEnabled
 0050C314    pop         ebp
 0050C315    pop         edi
 0050C316    pop         esi
 0050C317    pop         ebx
 0050C318    ret
*}
end;

//0050C31C
procedure TFormSupprimerSerie.FormKeyPress(Sender:TObject; var Key:Char);
begin
  if (Key = chr($1B)) then
    ModalResult := 2;
end;

end.