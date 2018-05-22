//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _FormBilanEleve;

interface

uses
Forms, Windows,  SysUtils, Classes, ExtCtrls, CheckLst, StdCtrls, Buttons, Dialogs, Controls, UFichierCdn;

type
  TFormBilanEleve = class(TForm)
  published
    Panel2:TPanel;//f2D0
    Bevel2:TBevel;//f2D4
    Image1:TImage;//f2D8
    CheckListBoxEleves:TCheckListBox;//f2DC
    Label1:TLabel;//f2E0
    SpeedButton3:TSpeedButton;//f2E4
    SpeedButton4:TSpeedButton;//f2E8
    SpeedButton1:TSpeedButton;//f2EC
    SpeedButton2:TSpeedButton;//f2F0
    ComboBoxPeriodes:TComboBox;//f2F4
    SaveDialog1:TSaveDialog;//f2F8
    CheckBox1:TCheckBox;//f2FC
    procedure SpeedButton2Click(Sender:TObject);//0053483C
    procedure SpeedButton1Click(Sender:TObject);//00534834
    procedure FormDestroy(Sender:TObject);//00535124
    procedure FormCreate(Sender:TObject);//0053510C
    procedure SpeedButton4Click(Sender:TObject);//0053460C
    procedure SpeedButton3Click(Sender:TObject);//005345CC
    procedure FormShow(Sender:TObject);//005347F0
    procedure CheckListBoxElevesDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);//0053464C
  public
    f300:TFichierCdn;//f300
    f304:TStringList;//f304
    constructor Create(Owner:TComponent;Logo:Timage; F:TFichierCdn);//00534574
	//procedure sub_00534914(?:TFormBilanEleve; ?:?; ?:?; ?:?);//00534914
  end;
  var
     FormBilanEleve :TFormBilanEleve;  

implementation

{$R *.DFM}

//00534574
constructor TFormBilanEleve.Create(Owner:TComponent; Logo:Timage; F:TFichierCdn);
begin//0
  //00534574

  inherited Create(Owner);

  f300 := F;
  Image1.Picture := Logo.Picture;

end;//0



//005345CC
procedure TFormBilanEleve.SpeedButton3Click(Sender:TObject);
begin
{*
 005345CC    push        ebx
 005345CD    push        esi
 005345CE    push        edi
 005345CF    mov         edi,eax
 005345D1    mov         eax,dword ptr [edi+2DC];TFormBilanEleve.CheckListBoxEleves:TCheckListBox
 005345D7    mov         eax,dword ptr [eax+1F0];TCheckListBox.FItems:TStrings
 005345DD    mov         edx,dword ptr [eax]
 005345DF    call        dword ptr [edx+14];TStrings.GetCount
 005345E2    mov         ebx,eax
 005345E4    sub         ebx,1
>005345E7    jno         005345EE
 005345E9    call        @IntOver
 005345EE    test        ebx,ebx
>005345F0    jl          00534608
 005345F2    inc         ebx
 005345F3    xor         esi,esi
 005345F5    mov         eax,dword ptr [edi+2DC];TFormBilanEleve.CheckListBoxEleves:TCheckListBox
 005345FB    mov         cl,1
 005345FD    mov         edx,esi
 005345FF    call        TCheckListBox.SetChecked
 00534604    inc         esi
 00534605    dec         ebx
>00534606    jne         005345F5
 00534608    pop         edi
 00534609    pop         esi
 0053460A    pop         ebx
 0053460B    ret
*}
end;

//0053460C
procedure TFormBilanEleve.SpeedButton4Click(Sender:TObject);
begin
{*
 0053460C    push        ebx
 0053460D    push        esi
 0053460E    push        edi
 0053460F    mov         edi,eax
 00534611    mov         eax,dword ptr [edi+2DC];TFormBilanEleve.CheckListBoxEleves:TCheckListBox
 00534617    mov         eax,dword ptr [eax+1F0];TCheckListBox.FItems:TStrings
 0053461D    mov         edx,dword ptr [eax]
 0053461F    call        dword ptr [edx+14];TStrings.GetCount
 00534622    mov         ebx,eax
 00534624    sub         ebx,1
>00534627    jno         0053462E
 00534629    call        @IntOver
 0053462E    test        ebx,ebx
>00534630    jl          00534648
 00534632    inc         ebx
 00534633    xor         esi,esi
 00534635    mov         eax,dword ptr [edi+2DC];TFormBilanEleve.CheckListBoxEleves:TCheckListBox
 0053463B    xor         ecx,ecx
 0053463D    mov         edx,esi
 0053463F    call        TCheckListBox.SetChecked
 00534644    inc         esi
 00534645    dec         ebx
>00534646    jne         00534635
 00534648    pop         edi
 00534649    pop         esi
 0053464A    pop         ebx
 0053464B    ret
*}
end;

//0053464C
procedure TFormBilanEleve.CheckListBoxElevesDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
begin
    if (Index mod 2  <> 1) then
    begin//2
      //0055303B
      CheckListBoxEleves.Canvas.Brush.Color := $FFFFFF;
      CheckListBoxEleves.Canvas.FillRect(Rect);
    end//2
    else
    begin//2
      //0055306A
      CheckListBoxEleves.Canvas.Brush.Color := $F4F3EE;
      CheckListBoxEleves.Canvas.FillRect(Rect);
    end;//2

    CheckListBoxEleves.Canvas.TextOut(Rect.Left + 5, Rect.Top + 2, CheckListBoxEleves.Items[Index]);
    if ( odSelected in State) then
    begin//2
      //005530E6
      CheckListBoxEleves.Canvas.Brush.Color := $F8D1C5;
      CheckListBoxEleves.Canvas.FillRect(Rect);
      CheckListBoxEleves.Canvas.Font.Color := $FF0000;
      CheckListBoxEleves.Canvas.TextOut(Rect.Left + 5, Rect.Top + 2, CheckListBoxEleves.Items[Index]);
    end;//2
end;

//005347F0
procedure TFormBilanEleve.FormShow(Sender:TObject);
begin
{*
 005347F0    push        ebx
 005347F1    mov         ebx,eax
 005347F3    mov         eax,dword ptr [ebx+300];TFormBilanEleve.?f300:dword
 005347F9    call        004BEAC4
 005347FE    mov         edx,eax
 00534800    mov         eax,dword ptr [ebx+2DC];TFormBilanEleve.CheckListBoxEleves:TCheckListBox
 00534806    call        TCustomListBox.SetItems
 0053480B    mov         eax,dword ptr [ebx+300];TFormBilanEleve.?f300:dword
 00534811    call        004BEA4C
 00534816    mov         edx,eax
 00534818    mov         eax,dword ptr [ebx+2F4];TFormBilanEleve.ComboBoxPeriodes:TComboBox
 0053481E    call        TCustomComboBox.SetItems
 00534823    xor         edx,edx
 00534825    mov         eax,dword ptr [ebx+2F4];TFormBilanEleve.ComboBoxPeriodes:TComboBox
 0053482B    call        TCustomComboBox.SetItemIndex
 00534830    pop         ebx
 00534831    ret
*}
end;

//00534834
procedure TFormBilanEleve.SpeedButton1Click(Sender:TObject);
begin
{*
 00534834    call        TCustomForm.Close
 00534839    ret
*}
end;

//0053483C
procedure TFormBilanEleve.SpeedButton2Click(Sender:TObject);
begin
{*
 0053483C    push        ebx
 0053483D    push        esi
 0053483E    push        edi
 0053483F    push        ebp
 00534840    push        ecx
 00534841    mov         edi,eax
 00534843    mov         eax,dword ptr [edi+304];TFormBilanEleve.?f304:TStringList
 00534849    mov         edx,dword ptr [eax]
 0053484B    call        dword ptr [edx+40]
 0053484E    xor         ebp,ebp
 00534850    xor         eax,eax
 00534852    mov         dword ptr [esp],eax
 00534855    mov         eax,dword ptr [edi+2DC];TFormBilanEleve.CheckListBoxEleves:TCheckListBox
 0053485B    mov         eax,dword ptr [eax+1F0];TCheckListBox.FItems:TStrings
 00534861    mov         edx,dword ptr [eax]
 00534863    call        dword ptr [edx+14];TStrings.GetCount
 00534866    mov         ebx,eax
 00534868    sub         ebx,1
>0053486B    jno         00534872
 0053486D    call        @IntOver
 00534872    test        ebx,ebx
>00534874    jl          00534898
 00534876    inc         ebx
 00534877    xor         esi,esi
 00534879    mov         eax,dword ptr [edi+2DC];TFormBilanEleve.CheckListBoxEleves:TCheckListBox
 0053487F    mov         edx,esi
 00534881    call        TCheckListBox.GetChecked
 00534886    test        al,al
>00534888    je          00534894
 0053488A    add         ebp,1
>0053488D    jno         00534894
 0053488F    call        @IntOver
 00534894    inc         esi
 00534895    dec         ebx
>00534896    jne         00534879
 00534898    mov         eax,dword ptr [edi+2DC];TFormBilanEleve.CheckListBoxEleves:TCheckListBox
 0053489E    mov         eax,dword ptr [eax+1F0];TCheckListBox.FItems:TStrings
 005348A4    mov         edx,dword ptr [eax]
 005348A6    call        dword ptr [edx+14];TStrings.GetCount
 005348A9    mov         ebx,eax
 005348AB    sub         ebx,1
>005348AE    jno         005348B5
 005348B0    call        @IntOver
 005348B5    test        ebx,ebx
>005348B7    jl          0053490D
 005348B9    inc         ebx
 005348BA    xor         esi,esi
 005348BC    mov         eax,dword ptr [edi+2DC];TFormBilanEleve.CheckListBoxEleves:TCheckListBox
 005348C2    mov         edx,esi
 005348C4    call        TCheckListBox.GetChecked
 005348C9    test        al,al
>005348CB    je          00534909
 005348CD    add         dword ptr [esp],1
>005348D1    jno         005348D8
 005348D3    call        @IntOver
 005348D8    cmp         ebp,dword ptr [esp]
 005348DB    sete        al
 005348DE    push        eax
 005348DF    mov         eax,dword ptr [edi+2F4];TFormBilanEleve.ComboBoxPeriodes:TComboBox
 005348E5    call        TCustomComboBox.GetItemIndex
 005348EA    mov         ecx,eax
 005348EC    add         ecx,1
>005348EF    jno         005348F6
 005348F1    call        @IntOver
 005348F6    mov         edx,esi
 005348F8    add         edx,1
>005348FB    jno         00534902
 005348FD    call        @IntOver
 00534902    mov         eax,edi
 00534904    call        00534914
 00534909    inc         esi
 0053490A    dec         ebx
>0053490B    jne         005348BC
 0053490D    pop         edx
 0053490E    pop         ebp
 0053490F    pop         edi
 00534910    pop         esi
 00534911    pop         ebx
 00534912    ret
*}
end;

//00534914
{*procedure sub_00534914(?:TFormBilanEleve; ?:?; ?:?; ?:?);
begin
 00534914    push        ebp
 00534915    mov         ebp,esp
 00534917    push        ecx
 00534918    mov         ecx,6E
 0053491D    push        0
 0053491F    push        0
 00534921    dec         ecx
>00534922    jne         0053491D
 00534924    xchg        ecx,dword ptr [ebp-4]
 00534927    push        ebx
 00534928    push        esi
 00534929    push        edi
 0053492A    mov         esi,ecx
 0053492C    mov         dword ptr [ebp-8],edx
 0053492F    mov         dword ptr [ebp-4],eax
 00534932    xor         eax,eax
 00534934    push        ebp
 00534935    push        534FD6
 0053493A    push        dword ptr fs:[eax]
 0053493D    mov         dword ptr fs:[eax],esp
 00534940    mov         eax,dword ptr [ebp-4]
 00534943    mov         ebx,dword ptr [eax+300];TFormBilanEleve.?f300:dword
 00534949    mov         eax,dword ptr [ebp-4]
 0053494C    mov         eax,dword ptr [eax+304];TFormBilanEleve.?f304:TStringList
 00534952    mov         dword ptr [ebp-18],eax
 00534955    mov         edx,534FF0;'----------------------------------------------------------------------------...
 0053495A    mov         eax,dword ptr [ebp-18]
 0053495D    mov         ecx,dword ptr [eax]
 0053495F    call        dword ptr [ecx+34]
 00534962    lea         ecx,[ebp-124]
 00534968    mov         edx,dword ptr [ebp-8]
 0053496B    cmp         edx,0FF
>00534971    jbe         00534978
 00534973    call        @BoundErr
 00534978    mov         eax,ebx
 0053497A    call        004BEA64
 0053497F    lea         edx,[ebp-124]
 00534985    lea         eax,[ebp-24]
 00534988    call        @LStrFromString
 0053498D    push        dword ptr [ebp-24]
 00534990    push        535048;' - '
 00534995    lea         edx,[ebp-228]
 0053499B    mov         eax,ebx
 0053499D    call        004BE8FC
 005349A2    lea         edx,[ebp-228]
 005349A8    lea         eax,[ebp-128]
 005349AE    call        @LStrFromString
 005349B3    push        dword ptr [ebp-128]
 005349B9    push        535048;' - '
 005349BE    lea         edx,[ebp-32C]
 005349C4    mov         eax,ebx
 005349C6    call        004BE944
 005349CB    lea         edx,[ebp-32C]
 005349D1    lea         eax,[ebp-22C]
 005349D7    call        @LStrFromString
 005349DC    push        dword ptr [ebp-22C]
 005349E2    lea         eax,[ebp-20]
 005349E5    mov         edx,5
 005349EA    call        @LStrCatN
 005349EF    mov         edx,dword ptr [ebp-20]
 005349F2    mov         eax,dword ptr [ebp-18]
 005349F5    mov         ecx,dword ptr [eax]
 005349F7    call        dword ptr [ecx+34]
 005349FA    lea         ecx,[ebp-124]
 00534A00    mov         edx,esi
 00534A02    cmp         edx,0FF
>00534A08    jbe         00534A0F
 00534A0A    call        @BoundErr
 00534A0F    mov         eax,ebx
 00534A11    call        004BE9EC
 00534A16    lea         edx,[ebp-124]
 00534A1C    lea         eax,[ebp-334]
 00534A22    call        @LStrFromString
 00534A27    push        dword ptr [ebp-334]
 00534A2D    push        535048;' - '
 00534A32    lea         edx,[ebp-228]
 00534A38    mov         eax,ebx
 00534A3A    call        004BE92C
 00534A3F    lea         edx,[ebp-228]
 00534A45    lea         eax,[ebp-338]
 00534A4B    call        @LStrFromString
 00534A50    push        dword ptr [ebp-338]
 00534A56    lea         eax,[ebp-330]
 00534A5C    mov         edx,3
 00534A61    call        @LStrCatN
 00534A66    mov         edx,dword ptr [ebp-330]
 00534A6C    mov         eax,dword ptr [ebp-18]
 00534A6F    mov         ecx,dword ptr [eax]
 00534A71    call        dword ptr [ecx+34]
 00534A74    mov         edx,534FF0;'----------------------------------------------------------------------------...
 00534A79    mov         eax,dword ptr [ebp-18]
 00534A7C    mov         ecx,dword ptr [eax]
 00534A7E    call        dword ptr [ecx+34]
 00534A81    mov         edx,esi
 00534A83    cmp         edx,0FF
>00534A89    jbe         00534A90
 00534A8B    call        @BoundErr
 00534A90    mov         eax,ebx
 00534A92    call        004BEAD0
 00534A97    and         eax,0FF
 00534A9C    test        eax,eax
>00534A9E    jle         00534D34
 00534AA4    mov         dword ptr [ebp-1C],eax
 00534AA7    mov         edi,1
 00534AAC    lea         eax,[ebp-124]
 00534AB2    push        eax
 00534AB3    mov         ecx,edi
 00534AB5    cmp         ecx,0FF
>00534ABB    jbe         00534AC2
 00534ABD    call        @BoundErr
 00534AC2    mov         edx,esi
 00534AC4    cmp         edx,0FF
>00534ACA    jbe         00534AD1
 00534ACC    call        @BoundErr
 00534AD1    mov         eax,ebx
 00534AD3    call        004BED04
 00534AD8    lea         edx,[ebp-124]
 00534ADE    lea         eax,[ebp-33C]
 00534AE4    call        @LStrFromString
 00534AE9    push        dword ptr [ebp-33C]
 00534AEF    push        535054;' : '
 00534AF4    mov         eax,dword ptr [ebp-8]
 00534AF7    cmp         eax,0FF
>00534AFC    jbe         00534B03
 00534AFE    call        @BoundErr
 00534B03    push        eax
 00534B04    lea         eax,[ebp-228]
 00534B0A    push        eax
 00534B0B    mov         ecx,edi
 00534B0D    cmp         ecx,0FF
>00534B13    jbe         00534B1A
 00534B15    call        @BoundErr
 00534B1A    mov         edx,esi
 00534B1C    cmp         edx,0FF
>00534B22    jbe         00534B29
 00534B24    call        @BoundErr
 00534B29    mov         eax,ebx
 00534B2B    call        004BEF5C
 00534B30    lea         edx,[ebp-228]
 00534B36    lea         eax,[ebp-340]
 00534B3C    call        @LStrFromString
 00534B41    push        dword ptr [ebp-340]
 00534B47    push        535060;'/'
 00534B4C    lea         eax,[ebp-32C]
 00534B52    push        eax
 00534B53    mov         ecx,edi
 00534B55    cmp         ecx,0FF
>00534B5B    jbe         00534B62
 00534B5D    call        @BoundErr
 00534B62    mov         edx,esi
 00534B64    cmp         edx,0FF
>00534B6A    jbe         00534B71
 00534B6C    call        @BoundErr
 00534B71    mov         eax,ebx
 00534B73    call        004BED2C
 00534B78    lea         edx,[ebp-32C]
 00534B7E    lea         eax,[ebp-344]
 00534B84    call        @LStrFromString
 00534B89    push        dword ptr [ebp-344]
 00534B8F    lea         eax,[ebp-10]
 00534B92    mov         edx,5
 00534B97    call        @LStrCatN
 00534B9C    lea         eax,[ebp-124]
 00534BA2    push        eax
 00534BA3    mov         ecx,edi
 00534BA5    cmp         ecx,0FF
>00534BAB    jbe         00534BB2
 00534BAD    call        @BoundErr
 00534BB2    mov         edx,esi
 00534BB4    cmp         edx,0FF
>00534BBA    jbe         00534BC1
 00534BBC    call        @BoundErr
 00534BC1    mov         eax,ebx
 00534BC3    call        004BEDCC
 00534BC8    lea         edx,[ebp-124]
 00534BCE    lea         eax,[ebp-34C]
 00534BD4    call        @LStrFromString
 00534BD9    mov         eax,dword ptr [ebp-34C]
 00534BDF    lea         edx,[ebp-348]
 00534BE5    call        UpperCase
 00534BEA    mov         eax,dword ptr [ebp-348]
 00534BF0    mov         edx,53506C;'NON'
 00534BF5    call        @LStrCmp
>00534BFA    jne         00534C09
 00534BFC    lea         eax,[ebp-10]
 00534BFF    mov         edx,535078;' (non compté dans la moyenne)'
 00534C04    call        @LStrCat
 00534C09    push        dword ptr [ebp-10]
 00534C0C    push        5350A0;' (Min. '
 00534C11    lea         eax,[ebp-124]
 00534C17    push        eax
 00534C18    mov         ecx,edi
 00534C1A    cmp         ecx,0FF
>00534C20    jbe         00534C27
 00534C22    call        @BoundErr
 00534C27    mov         edx,esi
 00534C29    cmp         edx,0FF
>00534C2F    jbe         00534C36
 00534C31    call        @BoundErr
 00534C36    mov         eax,ebx
 00534C38    call        004C3958
 00534C3D    lea         edx,[ebp-124]
 00534C43    lea         eax,[ebp-350]
 00534C49    call        @LStrFromString
 00534C4E    push        dword ptr [ebp-350]
 00534C54    push        5350B0;' - Moy. '
 00534C59    lea         eax,[ebp-228]
 00534C5F    push        eax
 00534C60    mov         ecx,edi
 00534C62    cmp         ecx,0FF
>00534C68    jbe         00534C6F
 00534C6A    call        @BoundErr
 00534C6F    mov         edx,esi
 00534C71    cmp         edx,0FF
>00534C77    jbe         00534C7E
 00534C79    call        @BoundErr
 00534C7E    mov         eax,ebx
 00534C80    call        004C40D4
 00534C85    lea         edx,[ebp-228]
 00534C8B    lea         eax,[ebp-354]
 00534C91    call        @LStrFromString
 00534C96    push        dword ptr [ebp-354]
 00534C9C    push        5350C4;' - Max. '
 00534CA1    lea         eax,[ebp-32C]
 00534CA7    push        eax
 00534CA8    mov         ecx,edi
 00534CAA    cmp         ecx,0FF
>00534CB0    jbe         00534CB7
 00534CB2    call        @BoundErr
 00534CB7    mov         edx,esi
 00534CB9    cmp         edx,0FF
>00534CBF    jbe         00534CC6
 00534CC1    call        @BoundErr
 00534CC6    mov         eax,ebx
 00534CC8    call        004C3B54
 00534CCD    lea         edx,[ebp-32C]
 00534CD3    lea         eax,[ebp-358]
 00534CD9    call        @LStrFromString
 00534CDE    push        dword ptr [ebp-358]
 00534CE4    push        5350D8;')'
 00534CE9    lea         eax,[ebp-10]
 00534CEC    mov         edx,8
 00534CF1    call        @LStrCatN
 00534CF6    mov         edx,dword ptr [ebp-10]
 00534CF9    mov         eax,dword ptr [ebp-18]
 00534CFC    mov         ecx,dword ptr [eax]
 00534CFE    call        dword ptr [ecx+34]
 00534D01    mov         edx,esi
 00534D03    cmp         edx,0FF
>00534D09    jbe         00534D10
 00534D0B    call        @BoundErr
 00534D10    mov         eax,ebx
 00534D12    call        004BEAD0
 00534D17    and         eax,0FF
 00534D1C    cmp         edi,eax
>00534D1E    je          00534D2A
 00534D20    xor         edx,edx
 00534D22    mov         eax,dword ptr [ebp-18]
 00534D25    mov         ecx,dword ptr [eax]
 00534D27    call        dword ptr [ecx+34]
 00534D2A    inc         edi
 00534D2B    dec         dword ptr [ebp-1C]
>00534D2E    jne         00534AAC
 00534D34    mov         edx,534FF0;'----------------------------------------------------------------------------...
 00534D39    mov         eax,dword ptr [ebp-18]
 00534D3C    mov         ecx,dword ptr [eax]
 00534D3E    call        dword ptr [ecx+34]
 00534D41    call        004B9E10
 00534D46    push        eax
 00534D47    lea         eax,[ebp-124]
 00534D4D    push        eax
 00534D4E    mov         ecx,dword ptr [ebp-8]
 00534D51    cmp         ecx,0FF
>00534D57    jbe         00534D5E
 00534D59    call        @BoundErr
 00534D5E    mov         edx,esi
 00534D60    cmp         edx,0FF
>00534D66    jbe         00534D6D
 00534D68    call        @BoundErr
 00534D6D    mov         eax,ebx
 00534D6F    call        004C2D10
 00534D74    lea         edx,[ebp-124]
 00534D7A    lea         eax,[ebp-35C]
 00534D80    call        @LStrFromString
 00534D85    mov         ecx,dword ptr [ebp-35C]
 00534D8B    lea         eax,[ebp-10]
 00534D8E    mov         edx,5350E4;'Moyenne de la période : '
 00534D93    call        @LStrCat3
 00534D98    mov         dl,1
 00534D9A    mov         eax,[004120B8];TStringList
 00534D9F    call        TObject.Create;TStringList.Create
 00534DA4    mov         dword ptr [ebp-0C],eax
 00534DA7    mov         eax,ebx
 00534DA9    call        004BEA58
 00534DAE    and         eax,0FF
 00534DB3    test        eax,eax
>00534DB5    jle         00534E1B
 00534DB7    mov         dword ptr [ebp-1C],eax
 00534DBA    mov         dword ptr [ebp-14],1
 00534DC1    call        004B9E10
 00534DC6    push        eax
 00534DC7    lea         eax,[ebp-124]
 00534DCD    push        eax
 00534DCE    mov         ecx,dword ptr [ebp-14]
 00534DD1    cmp         ecx,0FF
>00534DD7    jbe         00534DDE
 00534DD9    call        @BoundErr
 00534DDE    mov         edx,esi
 00534DE0    cmp         edx,0FF
>00534DE6    jbe         00534DED
 00534DE8    call        @BoundErr
 00534DED    mov         eax,ebx
 00534DEF    call        004C2D10
 00534DF4    lea         edx,[ebp-124]
 00534DFA    lea         eax,[ebp-360]
 00534E00    call        @LStrFromString
 00534E05    mov         edx,dword ptr [ebp-360]
 00534E0B    mov         eax,dword ptr [ebp-0C]
 00534E0E    mov         ecx,dword ptr [eax]
 00534E10    call        dword ptr [ecx+34];TStringList.Add
 00534E13    inc         dword ptr [ebp-14]
 00534E16    dec         dword ptr [ebp-1C]
>00534E19    jne         00534DC1
 00534E1B    push        dword ptr [ebp-10]
 00534E1E    push        5350A0;' (Min. '
 00534E23    lea         edx,[ebp-124]
 00534E29    mov         eax,dword ptr [ebp-0C]
 00534E2C    call        004BDB3C
 00534E31    lea         edx,[ebp-124]
 00534E37    lea         eax,[ebp-364]
 00534E3D    call        @LStrFromString
 00534E42    push        dword ptr [ebp-364]
 00534E48    push        5350B0;' - Moy. '
 00534E4D    lea         edx,[ebp-228]
 00534E53    mov         eax,dword ptr [ebp-0C]
 00534E56    call        004BDEBC
 00534E5B    lea         edx,[ebp-228]
 00534E61    lea         eax,[ebp-368]
 00534E67    call        @LStrFromString
 00534E6C    push        dword ptr [ebp-368]
 00534E72    push        5350C4;' - Max. '
 00534E77    lea         edx,[ebp-32C]
 00534E7D    mov         eax,dword ptr [ebp-0C]
 00534E80    call        004BDCFC
 00534E85    lea         edx,[ebp-32C]
 00534E8B    lea         eax,[ebp-36C]
 00534E91    call        @LStrFromString
 00534E96    push        dword ptr [ebp-36C]
 00534E9C    push        5350D8;')'
 00534EA1    lea         eax,[ebp-10]
 00534EA4    mov         edx,8
 00534EA9    call        @LStrCatN
 00534EAE    mov         dl,1
 00534EB0    mov         eax,dword ptr [ebp-0C]
 00534EB3    mov         ecx,dword ptr [eax]
 00534EB5    call        dword ptr [ecx-4];TStringList.Destroy
 00534EB8    mov         edx,dword ptr [ebp-10]
 00534EBB    mov         eax,dword ptr [ebp-18]
 00534EBE    mov         ecx,dword ptr [eax]
 00534EC0    call        dword ptr [ecx+34]
 00534EC3    mov         edx,534FF0;'----------------------------------------------------------------------------...
 00534EC8    mov         eax,dword ptr [ebp-18]
 00534ECB    mov         ecx,dword ptr [eax]
 00534ECD    call        dword ptr [ecx+34]
 00534ED0    cmp         byte ptr [ebp+8],0
>00534ED4    je          00534F69
 00534EDA    mov         eax,dword ptr [ebp-4]
 00534EDD    mov         eax,dword ptr [eax+2F8];TFormBilanEleve.SaveDialog1:TSaveDialog
 00534EE3    mov         edx,dword ptr [eax]
 00534EE5    call        dword ptr [edx+3C];TSaveDialog.Execute
 00534EE8    test        al,al
>00534EEA    je          00534F7D
 00534EF0    lea         edx,[ebp-370]
 00534EF6    mov         eax,dword ptr [ebp-4]
 00534EF9    mov         eax,dword ptr [eax+2F8];TFormBilanEleve.SaveDialog1:TSaveDialog
 00534EFF    call        TOpenDialog.GetFileName
 00534F04    mov         edx,dword ptr [ebp-370]
 00534F0A    mov         eax,dword ptr [ebp-18]
 00534F0D    mov         ecx,dword ptr [eax]
 00534F0F    call        dword ptr [ecx+64]
 00534F12    mov         eax,dword ptr [ebp-4]
 00534F15    mov         eax,dword ptr [eax+2FC];TFormBilanEleve.CheckBox1:TCheckBox
 00534F1B    mov         edx,dword ptr [eax]
 00534F1D    call        dword ptr [edx+0B4];TCustomCheckBox.GetChecked
 00534F23    test        al,al
>00534F25    je          00534F5F
 00534F27    push        1
 00534F29    push        535100
 00534F2E    push        535100
 00534F33    lea         edx,[ebp-374]
 00534F39    mov         eax,dword ptr [ebp-4]
 00534F3C    mov         eax,dword ptr [eax+2F8];TFormBilanEleve.SaveDialog1:TSaveDialog
 00534F42    call        TOpenDialog.GetFileName
 00534F47    mov         eax,dword ptr [ebp-374]
 00534F4D    call        @LStrToPChar
 00534F52    push        eax
 00534F53    push        535104;'open'
 00534F58    push        0
 00534F5A    call        shell32.ShellExecuteA
 00534F5F    mov         eax,dword ptr [ebp-4]
 00534F62    call        TCustomForm.Close
>00534F67    jmp         00534F7D
 00534F69    xor         edx,edx
 00534F6B    mov         eax,dword ptr [ebp-18]
 00534F6E    mov         ecx,dword ptr [eax]
 00534F70    call        dword ptr [ecx+34]
 00534F73    xor         edx,edx
 00534F75    mov         eax,dword ptr [ebp-18]
 00534F78    mov         ecx,dword ptr [eax]
 00534F7A    call        dword ptr [ecx+34]
 00534F7D    xor         eax,eax
 00534F7F    pop         edx
 00534F80    pop         ecx
 00534F81    pop         ecx
 00534F82    mov         dword ptr fs:[eax],edx
 00534F85    push        534FDD
 00534F8A    lea         eax,[ebp-374]
 00534F90    mov         edx,2
 00534F95    call        @LStrArrayClr
 00534F9A    lea         eax,[ebp-36C]
 00534FA0    mov         edx,10
 00534FA5    call        @LStrArrayClr
 00534FAA    lea         eax,[ebp-22C]
 00534FB0    call        @LStrClr
 00534FB5    lea         eax,[ebp-128]
 00534FBB    call        @LStrClr
 00534FC0    lea         eax,[ebp-24]
 00534FC3    mov         edx,2
 00534FC8    call        @LStrArrayClr
 00534FCD    lea         eax,[ebp-10]
 00534FD0    call        @LStrClr
 00534FD5    ret
>00534FD6    jmp         @HandleFinally
>00534FDB    jmp         00534F8A
 00534FDD    pop         edi
 00534FDE    pop         esi
 00534FDF    pop         ebx
 00534FE0    mov         esp,ebp
 00534FE2    pop         ebp
 00534FE3    ret         4
end;*}

//0053510C
procedure TFormBilanEleve.FormCreate(Sender:TObject);
begin
{*
 0053510C    push        ebx
 0053510D    mov         ebx,eax
 0053510F    mov         dl,1
 00535111    mov         eax,[004120B8];TStringList
 00535116    call        TObject.Create;TStringList.Create
 0053511B    mov         dword ptr [ebx+304],eax;TFormBilanEleve.?f304:TStringList
 00535121    pop         ebx
 00535122    ret
*}
end;

//00535124
procedure TFormBilanEleve.FormDestroy(Sender:TObject);
begin
{*
 00535124    mov         dl,1
 00535126    mov         eax,dword ptr [eax+304];TFormBilanEleve.?f304:TStringList
 0053512C    mov         ecx,dword ptr [eax]
 0053512E    call        dword ptr [ecx-4];TStringList.Destroy
 00535131    ret
*}
end;

end.