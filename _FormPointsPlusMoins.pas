//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _FormPointsPlusMoins;

interface

uses
Forms, Windows,  SysUtils, Classes, ExtCtrls, ComCtrls, Buttons, StdCtrls, Controls, UFichierCdn;

type
  TFormPointsPlusMoins = class(TForm)
  published
    Panel2:TPanel;//f2D0
    Bevel2:TBevel;//f2D4
    Image1:TImage;//f2D8
    Panel1:TPanel;//f2DC
    TabControlPeriodes:TTabControl;//f2E0
    SpeedButton1:TSpeedButton;//f2E4
    ListBoxEleves:TListBox;//f2E8
    Edit1:TEdit;//f2EC
    Label1:TLabel;//f2F0
    procedure Edit1KeyPress(Sender:TObject; var Key:Char);//00517184
    procedure Edit1Exit(Sender:TObject);//00516F70
    procedure FormShow(Sender:TObject);//005176A8
    procedure TabControlPeriodesChanging(Sender: TObject;var AllowChange: Boolean);//0051747C
    procedure ListBoxElevesDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);//00516C60
    procedure SpeedButton1Click(Sender:TObject);//00516A38
    procedure TabControlPeriodesChange(Sender:TObject);//00516EA0
    procedure ListBoxElevesClick(Sender:TObject);//00516DCC
  public
    f2F4:TFichierCdn;//f2F4
    constructor Create(owner:TComponent; F:TFichierCdn; Logo:Timage);//00516938
  end;
  var
   FormPointsPlusMoins:TFormPointsPlusMoins;
implementation

{$R *.DFM}

//00516938
constructor TFormPointsPlusMoins.Create(owner:TComponent; F:TFichierCdn; Logo:Timage);
var
  Buf:String;
begin//0
  //00516938
    //00516967

    inherited Create(Owner);
    Image1.Picture := logo.Picture;
    f2F4 := F;
    TabControlPeriodes.Tabs := F.sub_004BEA4C;
    ListBoxEleves.Items := f2F4.sub_004BEAC4;
    ListBoxEleves.ItemIndex := 0;
    f2F4.sub_004C2B38(1, 1, Buf);
    Edit1.Text := Buf;
end;//0

//00516A38
procedure TFormPointsPlusMoins.SpeedButton1Click(Sender:TObject);
begin
{*
 00516A38    push        ebp
 00516A39    mov         ebp,esp
 00516A3B    add         esp,0FFFFFEE8
 00516A41    push        ebx
 00516A42    push        esi
 00516A43    push        edi
 00516A44    xor         ecx,ecx
 00516A46    mov         dword ptr [ebp-118],ecx
 00516A4C    mov         dword ptr [ebp-114],ecx
 00516A52    mov         dword ptr [ebp-10],ecx
 00516A55    mov         dword ptr [ebp-8],ecx
 00516A58    mov         dword ptr [ebp-0C],ecx
 00516A5B    mov         dword ptr [ebp-4],eax
 00516A5E    xor         eax,eax
 00516A60    push        ebp
 00516A61    push        516C03
 00516A66    push        dword ptr fs:[eax]
 00516A69    mov         dword ptr fs:[eax],esp
 00516A6C    lea         edx,[ebp-0C]
 00516A6F    mov         eax,dword ptr [ebp-4]
 00516A72    mov         eax,dword ptr [eax+2EC];TFormPointsPlusMoins.Edit1:TEdit
 00516A78    call        TControl.GetText
 00516A7D    mov         eax,dword ptr [ebp-0C]
 00516A80    lea         edx,[ebp-8]
 00516A83    call        Trim
 00516A88    cmp         dword ptr [ebp-8],0
>00516A8C    je          00516BC8
 00516A92    xor         eax,eax
 00516A94    push        ebp
 00516A95    push        516B59
 00516A9A    push        dword ptr fs:[eax]
 00516A9D    mov         dword ptr fs:[eax],esp
 00516AA0    lea         edx,[ebp-10]
 00516AA3    mov         eax,dword ptr [ebp-4]
 00516AA6    mov         eax,dword ptr [eax+2EC];TFormPointsPlusMoins.Edit1:TEdit
 00516AAC    call        TControl.GetText
 00516AB1    mov         eax,dword ptr [ebp-10]
 00516AB4    call        StrToFloat
 00516AB9    fstp        st(0)
 00516ABB    lea         edx,[ebp-114]
 00516AC1    mov         eax,dword ptr [ebp-4]
 00516AC4    mov         eax,dword ptr [eax+2EC];TFormPointsPlusMoins.Edit1:TEdit
 00516ACA    call        TControl.GetText
 00516ACF    mov         edx,dword ptr [ebp-114]
 00516AD5    lea         eax,[ebp-110]
 00516ADB    mov         ecx,0FF
 00516AE0    call        @LStrToString
 00516AE5    lea         eax,[ebp-110]
 00516AEB    push        eax
 00516AEC    mov         eax,dword ptr [ebp-4]
 00516AEF    mov         eax,dword ptr [eax+2E8];TFormPointsPlusMoins.ListBoxEleves:TListBox
 00516AF5    call        TCustomListBox.GetItemIndex
 00516AFA    add         eax,1
>00516AFD    jno         00516B04
 00516AFF    call        @IntOver
 00516B04    cmp         eax,0FF
>00516B09    jbe         00516B10
 00516B0B    call        @BoundErr
 00516B10    push        eax
 00516B11    mov         eax,dword ptr [ebp-4]
 00516B14    mov         eax,dword ptr [eax+2E0];TFormPointsPlusMoins.TabControlPeriodes:TTabControl
 00516B1A    call        TCustomTabControl.GetTabIndex
 00516B1F    mov         edx,eax
 00516B21    add         edx,1
>00516B24    jno         00516B2B
 00516B26    call        @IntOver
 00516B2B    cmp         edx,0FF
>00516B31    jbe         00516B38
 00516B33    call        @BoundErr
 00516B38    mov         eax,dword ptr [ebp-4]
 00516B3B    mov         eax,dword ptr [eax+2F4];TFormPointsPlusMoins.?f2F4:dword
 00516B41    pop         ecx
 00516B42    call        004C3678
 00516B47    mov         eax,dword ptr [ebp-4]
 00516B4A    call        TCustomForm.Close
 00516B4F    xor         eax,eax
 00516B51    pop         edx
 00516B52    pop         ecx
 00516B53    pop         ecx
 00516B54    mov         dword ptr fs:[eax],edx
>00516B57    jmp         00516BD0
>00516B59    jmp         @HandleAnyException
 00516B5E    push        10
 00516B60    lea         edx,[ebp-118]
 00516B66    mov         eax,dword ptr [ebp-4]
 00516B69    mov         eax,dword ptr [eax+2EC];TFormPointsPlusMoins.Edit1:TEdit
 00516B6F    call        TControl.GetText
 00516B74    lea         eax,[ebp-118]
 00516B7A    mov         edx,516C1C;' n'est pas un nombre correct.'
 00516B7F    call        @LStrCat
 00516B84    mov         eax,dword ptr [ebp-118]
 00516B8A    call        @LStrToPChar
 00516B8F    mov         edx,eax
 00516B91    mov         ecx,516C3C
 00516B96    mov         eax,[00615FEC];^Application:TApplication
 00516B9B    mov         eax,dword ptr [eax]
 00516B9D    call        TApplication.MessageBox
 00516BA2    mov         eax,dword ptr [ebp-4]
 00516BA5    mov         eax,dword ptr [eax+2EC];TFormPointsPlusMoins.Edit1:TEdit
 00516BAB    mov         edx,dword ptr [eax]
 00516BAD    call        dword ptr [edx+0B0];TWinControl.SetFocus
 00516BB3    mov         eax,dword ptr [ebp-4]
 00516BB6    mov         eax,dword ptr [eax+2EC];TFormPointsPlusMoins.Edit1:TEdit
 00516BBC    call        TCustomEdit.SelectAll
 00516BC1    call        @DoneExcept
>00516BC6    jmp         00516BD0
 00516BC8    mov         eax,dword ptr [ebp-4]
 00516BCB    call        TCustomForm.Close
 00516BD0    xor         eax,eax
 00516BD2    pop         edx
 00516BD3    pop         ecx
 00516BD4    pop         ecx
 00516BD5    mov         dword ptr fs:[eax],edx
 00516BD8    push        516C0A
 00516BDD    lea         eax,[ebp-118]
 00516BE3    mov         edx,2
 00516BE8    call        @LStrArrayClr
 00516BED    lea         eax,[ebp-10]
 00516BF0    mov         edx,2
 00516BF5    call        @LStrArrayClr
 00516BFA    lea         eax,[ebp-8]
 00516BFD    call        @LStrClr
 00516C02    ret
>00516C03    jmp         @HandleFinally
>00516C08    jmp         00516BDD
 00516C0A    pop         edi
 00516C0B    pop         esi
 00516C0C    pop         ebx
 00516C0D    mov         esp,ebp
 00516C0F    pop         ebp
 00516C10    ret
*}
end;

//00516C60
procedure TFormPointsPlusMoins.ListBoxElevesDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
begin
    if (Index mod 2  <> 1) then
    begin//2
      //0055303B
      ListBoxEleves.Canvas.Brush.Color := $FFFFFF;
      ListBoxEleves.Canvas.FillRect(Rect);
    end//2
    else
    begin//2
      //0055306A
      ListBoxEleves.Canvas.Brush.Color := $F4F3EE;
      ListBoxEleves.Canvas.FillRect(Rect);
    end;//2

    ListBoxEleves.Canvas.TextOut(Rect.Left + 5, Rect.Top + 2, ListBoxEleves.Items[Index]);
    if ( odSelected in State) then
    begin//2
      //005530E6
      ListBoxEleves.Canvas.Brush.Color := $F8D1C5;
      ListBoxEleves.Canvas.FillRect(Rect);
      ListBoxEleves.Canvas.Font.Color := $FF0000;
      ListBoxEleves.Canvas.TextOut(Rect.Left + 5, Rect.Top + 2, ListBoxEleves.Items[Index]);
    end;//2
end;

//00516DCC
procedure TFormPointsPlusMoins.ListBoxElevesClick(Sender:TObject);
begin
{*
 00516DCC    push        ebp
 00516DCD    mov         ebp,esp
 00516DCF    add         esp,0FFFFFEFC
 00516DD5    push        ebx
 00516DD6    push        esi
 00516DD7    xor         ecx,ecx
 00516DD9    mov         dword ptr [ebp-4],ecx
 00516DDC    mov         ebx,eax
 00516DDE    xor         eax,eax
 00516DE0    push        ebp
 00516DE1    push        516E91
 00516DE6    push        dword ptr fs:[eax]
 00516DE9    mov         dword ptr fs:[eax],esp
 00516DEC    mov         esi,dword ptr [ebx+2E8];TFormPointsPlusMoins.ListBoxEleves:TListBox
 00516DF2    mov         eax,esi
 00516DF4    call        TCustomListBox.GetItemIndex
 00516DF9    inc         eax
>00516DFA    je          00516E7B
 00516DFC    lea         eax,[ebp-104]
 00516E02    push        eax
 00516E03    mov         eax,esi
 00516E05    call        TCustomListBox.GetItemIndex
 00516E0A    add         eax,1
>00516E0D    jno         00516E14
 00516E0F    call        @IntOver
 00516E14    cmp         eax,0FF
>00516E19    jbe         00516E20
 00516E1B    call        @BoundErr
 00516E20    push        eax
 00516E21    mov         eax,dword ptr [ebx+2E0];TFormPointsPlusMoins.TabControlPeriodes:TTabControl
 00516E27    call        TCustomTabControl.GetTabIndex
 00516E2C    mov         edx,eax
 00516E2E    add         edx,1
>00516E31    jno         00516E38
 00516E33    call        @IntOver
 00516E38    cmp         edx,0FF
>00516E3E    jbe         00516E45
 00516E40    call        @BoundErr
 00516E45    mov         eax,dword ptr [ebx+2F4];TFormPointsPlusMoins.?f2F4:dword
 00516E4B    pop         ecx
 00516E4C    call        004C2B38
 00516E51    lea         edx,[ebp-104]
 00516E57    lea         eax,[ebp-4]
 00516E5A    call        @LStrFromString
 00516E5F    mov         edx,dword ptr [ebp-4]
 00516E62    mov         eax,dword ptr [ebx+2EC];TFormPointsPlusMoins.Edit1:TEdit
 00516E68    call        TControl.SetText
 00516E6D    mov         eax,dword ptr [ebx+2EC];TFormPointsPlusMoins.Edit1:TEdit
 00516E73    mov         edx,dword ptr [eax]
 00516E75    call        dword ptr [edx+0B0];TWinControl.SetFocus
 00516E7B    xor         eax,eax
 00516E7D    pop         edx
 00516E7E    pop         ecx
 00516E7F    pop         ecx
 00516E80    mov         dword ptr fs:[eax],edx
 00516E83    push        516E98
 00516E88    lea         eax,[ebp-4]
 00516E8B    call        @LStrClr
 00516E90    ret
>00516E91    jmp         @HandleFinally
>00516E96    jmp         00516E88
 00516E98    pop         esi
 00516E99    pop         ebx
 00516E9A    mov         esp,ebp
 00516E9C    pop         ebp
 00516E9D    ret
*}
end;

//00516EA0
procedure TFormPointsPlusMoins.TabControlPeriodesChange(Sender:TObject);
begin
{*
 00516EA0    push        ebp
 00516EA1    mov         ebp,esp
 00516EA3    add         esp,0FFFFFEFC
 00516EA9    push        ebx
 00516EAA    push        esi
 00516EAB    push        edi
 00516EAC    xor         ecx,ecx
 00516EAE    mov         dword ptr [ebp-4],ecx
 00516EB1    mov         ebx,eax
 00516EB3    xor         eax,eax
 00516EB5    push        ebp
 00516EB6    push        516F5F
 00516EBB    push        dword ptr fs:[eax]
 00516EBE    mov         dword ptr fs:[eax],esp
 00516EC1    mov         edi,dword ptr [ebx+2E8];TFormPointsPlusMoins.ListBoxEleves:TListBox
 00516EC7    mov         eax,edi
 00516EC9    call        TCustomListBox.GetItemIndex
 00516ECE    mov         esi,eax
 00516ED0    cmp         esi,0FFFFFFFF
>00516ED3    je          00516F40
 00516ED5    lea         eax,[ebp-104]
 00516EDB    push        eax
 00516EDC    mov         eax,dword ptr [ebx+2E0];TFormPointsPlusMoins.TabControlPeriodes:TTabControl
 00516EE2    call        TCustomTabControl.GetTabIndex
 00516EE7    mov         edx,eax
 00516EE9    add         edx,1
>00516EEC    jno         00516EF3
 00516EEE    call        @IntOver
 00516EF3    cmp         edx,0FF
>00516EF9    jbe         00516F00
 00516EFB    call        @BoundErr
 00516F00    mov         ecx,esi
 00516F02    add         ecx,1
>00516F05    jno         00516F0C
 00516F07    call        @IntOver
 00516F0C    cmp         ecx,0FF
>00516F12    jbe         00516F19
 00516F14    call        @BoundErr
 00516F19    mov         eax,dword ptr [ebx+2F4];TFormPointsPlusMoins.?f2F4:dword
 00516F1F    call        004C2B38
 00516F24    lea         edx,[ebp-104]
 00516F2A    lea         eax,[ebp-4]
 00516F2D    call        @LStrFromString
 00516F32    mov         edx,dword ptr [ebp-4]
 00516F35    mov         eax,dword ptr [ebx+2EC];TFormPointsPlusMoins.Edit1:TEdit
 00516F3B    call        TControl.SetText
 00516F40    mov         edx,esi
 00516F42    mov         eax,edi
 00516F44    call        TCustomListBox.SetItemIndex
 00516F49    xor         eax,eax
 00516F4B    pop         edx
 00516F4C    pop         ecx
 00516F4D    pop         ecx
 00516F4E    mov         dword ptr fs:[eax],edx
 00516F51    push        516F66
 00516F56    lea         eax,[ebp-4]
 00516F59    call        @LStrClr
 00516F5E    ret
>00516F5F    jmp         @HandleFinally
>00516F64    jmp         00516F56
 00516F66    pop         edi
 00516F67    pop         esi
 00516F68    pop         ebx
 00516F69    mov         esp,ebp
 00516F6B    pop         ebp
 00516F6C    ret
*}
end;

//00516F70
procedure TFormPointsPlusMoins.Edit1Exit(Sender:TObject);
begin
{*
 00516F70    push        ebp
 00516F71    mov         ebp,esp
 00516F73    add         esp,0FFFFFEE8
 00516F79    push        ebx
 00516F7A    push        esi
 00516F7B    push        edi
 00516F7C    xor         ecx,ecx
 00516F7E    mov         dword ptr [ebp-118],ecx
 00516F84    mov         dword ptr [ebp-114],ecx
 00516F8A    mov         dword ptr [ebp-10],ecx
 00516F8D    mov         dword ptr [ebp-8],ecx
 00516F90    mov         dword ptr [ebp-0C],ecx
 00516F93    mov         dword ptr [ebp-4],eax
 00516F96    xor         eax,eax
 00516F98    push        ebp
 00516F99    push        517129
 00516F9E    push        dword ptr fs:[eax]
 00516FA1    mov         dword ptr fs:[eax],esp
 00516FA4    lea         edx,[ebp-0C]
 00516FA7    mov         eax,dword ptr [ebp-4]
 00516FAA    mov         eax,dword ptr [eax+2EC];TFormPointsPlusMoins.Edit1:TEdit
 00516FB0    call        TControl.GetText
 00516FB5    mov         eax,dword ptr [ebp-0C]
 00516FB8    lea         edx,[ebp-8]
 00516FBB    call        Trim
 00516FC0    cmp         dword ptr [ebp-8],0
>00516FC4    je          005170F6
 00516FCA    xor         eax,eax
 00516FCC    push        ebp
 00516FCD    push        517089
 00516FD2    push        dword ptr fs:[eax]
 00516FD5    mov         dword ptr fs:[eax],esp
 00516FD8    lea         edx,[ebp-10]
 00516FDB    mov         eax,dword ptr [ebp-4]
 00516FDE    mov         eax,dword ptr [eax+2EC];TFormPointsPlusMoins.Edit1:TEdit
 00516FE4    call        TControl.GetText
 00516FE9    mov         eax,dword ptr [ebp-10]
 00516FEC    call        StrToFloat
 00516FF1    fstp        st(0)
 00516FF3    lea         edx,[ebp-114]
 00516FF9    mov         eax,dword ptr [ebp-4]
 00516FFC    mov         eax,dword ptr [eax+2EC];TFormPointsPlusMoins.Edit1:TEdit
 00517002    call        TControl.GetText
 00517007    mov         edx,dword ptr [ebp-114]
 0051700D    lea         eax,[ebp-110]
 00517013    mov         ecx,0FF
 00517018    call        @LStrToString
 0051701D    lea         eax,[ebp-110]
 00517023    push        eax
 00517024    mov         eax,dword ptr [ebp-4]
 00517027    mov         eax,dword ptr [eax+2E8];TFormPointsPlusMoins.ListBoxEleves:TListBox
 0051702D    call        TCustomListBox.GetItemIndex
 00517032    add         eax,1
>00517035    jno         0051703C
 00517037    call        @IntOver
 0051703C    cmp         eax,0FF
>00517041    jbe         00517048
 00517043    call        @BoundErr
 00517048    push        eax
 00517049    mov         eax,dword ptr [ebp-4]
 0051704C    mov         eax,dword ptr [eax+2E0];TFormPointsPlusMoins.TabControlPeriodes:TTabControl
 00517052    call        TCustomTabControl.GetTabIndex
 00517057    mov         edx,eax
 00517059    add         edx,1
>0051705C    jno         00517063
 0051705E    call        @IntOver
 00517063    cmp         edx,0FF
>00517069    jbe         00517070
 0051706B    call        @BoundErr
 00517070    mov         eax,dword ptr [ebp-4]
 00517073    mov         eax,dword ptr [eax+2F4];TFormPointsPlusMoins.?f2F4:dword
 00517079    pop         ecx
 0051707A    call        004C3678
 0051707F    xor         eax,eax
 00517081    pop         edx
 00517082    pop         ecx
 00517083    pop         ecx
 00517084    mov         dword ptr fs:[eax],edx
>00517087    jmp         005170F6
>00517089    jmp         @HandleAnyException
 0051708E    push        10
 00517090    lea         edx,[ebp-118]
 00517096    mov         eax,dword ptr [ebp-4]
 00517099    mov         eax,dword ptr [eax+2EC];TFormPointsPlusMoins.Edit1:TEdit
 0051709F    call        TControl.GetText
 005170A4    lea         eax,[ebp-118]
 005170AA    mov         edx,517140;' n'est pas un nombre correct.'
 005170AF    call        @LStrCat
 005170B4    mov         eax,dword ptr [ebp-118]
 005170BA    call        @LStrToPChar
 005170BF    mov         edx,eax
 005170C1    mov         ecx,517160
 005170C6    mov         eax,[00615FEC];^Application:TApplication
 005170CB    mov         eax,dword ptr [eax]
 005170CD    call        TApplication.MessageBox
 005170D2    mov         eax,dword ptr [ebp-4]
 005170D5    mov         eax,dword ptr [eax+2EC];TFormPointsPlusMoins.Edit1:TEdit
 005170DB    mov         edx,dword ptr [eax]
 005170DD    call        dword ptr [edx+0B0];TWinControl.SetFocus
 005170E3    mov         eax,dword ptr [ebp-4]
 005170E6    mov         eax,dword ptr [eax+2EC];TFormPointsPlusMoins.Edit1:TEdit
 005170EC    call        TCustomEdit.SelectAll
 005170F1    call        @DoneExcept
 005170F6    xor         eax,eax
 005170F8    pop         edx
 005170F9    pop         ecx
 005170FA    pop         ecx
 005170FB    mov         dword ptr fs:[eax],edx
 005170FE    push        517130
 00517103    lea         eax,[ebp-118]
 00517109    mov         edx,2
 0051710E    call        @LStrArrayClr
 00517113    lea         eax,[ebp-10]
 00517116    mov         edx,2
 0051711B    call        @LStrArrayClr
 00517120    lea         eax,[ebp-8]
 00517123    call        @LStrClr
 00517128    ret
>00517129    jmp         @HandleFinally
>0051712E    jmp         00517103
 00517130    pop         edi
 00517131    pop         esi
 00517132    pop         ebx
 00517133    mov         esp,ebp
 00517135    pop         ebp
 00517136    ret
*}
end;

//00517184
procedure TFormPointsPlusMoins.Edit1KeyPress(Sender:TObject; var Key:Char);
begin
{*
 00517184    push        ebp
 00517185    mov         ebp,esp
 00517187    add         esp,0FFFFFEE4
 0051718D    push        ebx
 0051718E    push        esi
 0051718F    push        edi
 00517190    xor         ebx,ebx
 00517192    mov         dword ptr [ebp-11C],ebx
 00517198    mov         dword ptr [ebp-118],ebx
 0051719E    mov         dword ptr [ebp-114],ebx
 005171A4    mov         dword ptr [ebp-10],ebx
 005171A7    mov         dword ptr [ebp-8],ebx
 005171AA    mov         dword ptr [ebp-0C],ebx
 005171AD    mov         dword ptr [ebp-4],eax
 005171B0    xor         eax,eax
 005171B2    push        ebp
 005171B3    push        517420
 005171B8    push        dword ptr fs:[eax]
 005171BB    mov         dword ptr fs:[eax],esp
 005171BE    cmp         byte ptr [ecx],2E
>005171C1    jne         005171C6
 005171C3    mov         byte ptr [ecx],2C
 005171C6    cmp         byte ptr [ecx],0D
>005171C9    jne         005173DC
 005171CF    lea         edx,[ebp-0C]
 005171D2    mov         eax,dword ptr [ebp-4]
 005171D5    mov         eax,dword ptr [eax+2EC];TFormPointsPlusMoins.Edit1:TEdit
 005171DB    call        TControl.GetText
 005171E0    mov         eax,dword ptr [ebp-0C]
 005171E3    lea         edx,[ebp-8]
 005171E6    call        Trim
 005171EB    cmp         dword ptr [ebp-8],0
>005171EF    je          005173DC
 005171F5    xor         eax,eax
 005171F7    push        ebp
 005171F8    push        51736F
 005171FD    push        dword ptr fs:[eax]
 00517200    mov         dword ptr fs:[eax],esp
 00517203    lea         edx,[ebp-10]
 00517206    mov         eax,dword ptr [ebp-4]
 00517209    mov         eax,dword ptr [eax+2EC];TFormPointsPlusMoins.Edit1:TEdit
 0051720F    call        TControl.GetText
 00517214    mov         eax,dword ptr [ebp-10]
 00517217    call        StrToFloat
 0051721C    fstp        st(0)
 0051721E    lea         edx,[ebp-114]
 00517224    mov         eax,dword ptr [ebp-4]
 00517227    mov         eax,dword ptr [eax+2EC];TFormPointsPlusMoins.Edit1:TEdit
 0051722D    call        TControl.GetText
 00517232    mov         edx,dword ptr [ebp-114]
 00517238    lea         eax,[ebp-110]
 0051723E    mov         ecx,0FF
 00517243    call        @LStrToString
 00517248    lea         eax,[ebp-110]
 0051724E    push        eax
 0051724F    mov         eax,dword ptr [ebp-4]
 00517252    mov         eax,dword ptr [eax+2E8];TFormPointsPlusMoins.ListBoxEleves:TListBox
 00517258    call        TCustomListBox.GetItemIndex
 0051725D    add         eax,1
>00517260    jno         00517267
 00517262    call        @IntOver
 00517267    cmp         eax,0FF
>0051726C    jbe         00517273
 0051726E    call        @BoundErr
 00517273    push        eax
 00517274    mov         eax,dword ptr [ebp-4]
 00517277    mov         eax,dword ptr [eax+2E0];TFormPointsPlusMoins.TabControlPeriodes:TTabControl
 0051727D    call        TCustomTabControl.GetTabIndex
 00517282    mov         edx,eax
 00517284    add         edx,1
>00517287    jno         0051728E
 00517289    call        @IntOver
 0051728E    cmp         edx,0FF
>00517294    jbe         0051729B
 00517296    call        @BoundErr
 0051729B    mov         eax,dword ptr [ebp-4]
 0051729E    mov         eax,dword ptr [eax+2F4];TFormPointsPlusMoins.?f2F4:dword
 005172A4    pop         ecx
 005172A5    call        004C3678
 005172AA    mov         eax,dword ptr [ebp-4]
 005172AD    mov         ebx,dword ptr [eax+2E8];TFormPointsPlusMoins.ListBoxEleves:TListBox
 005172B3    mov         eax,ebx
 005172B5    call        TCustomListBox.GetItemIndex
 005172BA    mov         edx,eax
 005172BC    add         edx,1
>005172BF    jno         005172C6
 005172C1    call        @IntOver
 005172C6    mov         eax,ebx
 005172C8    call        TCustomListBox.SetItemIndex
 005172CD    lea         eax,[ebp-110]
 005172D3    push        eax
 005172D4    mov         eax,dword ptr [ebp-4]
 005172D7    mov         eax,dword ptr [eax+2E8];TFormPointsPlusMoins.ListBoxEleves:TListBox
 005172DD    call        TCustomListBox.GetItemIndex
 005172E2    add         eax,1
>005172E5    jno         005172EC
 005172E7    call        @IntOver
 005172EC    cmp         eax,0FF
>005172F1    jbe         005172F8
 005172F3    call        @BoundErr
 005172F8    push        eax
 005172F9    mov         eax,dword ptr [ebp-4]
 005172FC    mov         eax,dword ptr [eax+2E0];TFormPointsPlusMoins.TabControlPeriodes:TTabControl
 00517302    call        TCustomTabControl.GetTabIndex
 00517307    mov         edx,eax
 00517309    add         edx,1
>0051730C    jno         00517313
 0051730E    call        @IntOver
 00517313    cmp         edx,0FF
>00517319    jbe         00517320
 0051731B    call        @BoundErr
 00517320    mov         eax,dword ptr [ebp-4]
 00517323    mov         eax,dword ptr [eax+2F4];TFormPointsPlusMoins.?f2F4:dword
 00517329    pop         ecx
 0051732A    call        004C2B38
 0051732F    lea         edx,[ebp-110]
 00517335    lea         eax,[ebp-118]
 0051733B    call        @LStrFromString
 00517340    mov         edx,dword ptr [ebp-118]
 00517346    mov         eax,dword ptr [ebp-4]
 00517349    mov         eax,dword ptr [eax+2EC];TFormPointsPlusMoins.Edit1:TEdit
 0051734F    call        TControl.SetText
 00517354    mov         eax,dword ptr [ebp-4]
 00517357    mov         eax,dword ptr [eax+2EC];TFormPointsPlusMoins.Edit1:TEdit
 0051735D    mov         edx,dword ptr [eax]
 0051735F    call        dword ptr [edx+0B0];TWinControl.SetFocus
 00517365    xor         eax,eax
 00517367    pop         edx
 00517368    pop         ecx
 00517369    pop         ecx
 0051736A    mov         dword ptr fs:[eax],edx
>0051736D    jmp         005173DC
>0051736F    jmp         @HandleAnyException
 00517374    push        10
 00517376    lea         edx,[ebp-11C]
 0051737C    mov         eax,dword ptr [ebp-4]
 0051737F    mov         eax,dword ptr [eax+2EC];TFormPointsPlusMoins.Edit1:TEdit
 00517385    call        TControl.GetText
 0051738A    lea         eax,[ebp-11C]
 00517390    mov         edx,517438;' n'est pas un nombre correct.'
 00517395    call        @LStrCat
 0051739A    mov         eax,dword ptr [ebp-11C]
 005173A0    call        @LStrToPChar
 005173A5    mov         edx,eax
 005173A7    mov         ecx,517458
 005173AC    mov         eax,[00615FEC];^Application:TApplication
 005173B1    mov         eax,dword ptr [eax]
 005173B3    call        TApplication.MessageBox
 005173B8    mov         eax,dword ptr [ebp-4]
 005173BB    mov         eax,dword ptr [eax+2EC];TFormPointsPlusMoins.Edit1:TEdit
 005173C1    mov         edx,dword ptr [eax]
 005173C3    call        dword ptr [edx+0B0];TWinControl.SetFocus
 005173C9    mov         eax,dword ptr [ebp-4]
 005173CC    mov         eax,dword ptr [eax+2EC];TFormPointsPlusMoins.Edit1:TEdit
 005173D2    call        TCustomEdit.SelectAll
 005173D7    call        @DoneExcept
 005173DC    xor         eax,eax
 005173DE    pop         edx
 005173DF    pop         ecx
 005173E0    pop         ecx
 005173E1    mov         dword ptr fs:[eax],edx
 005173E4    push        517427
 005173E9    lea         eax,[ebp-11C]
 005173EF    call        @LStrClr
 005173F4    lea         eax,[ebp-118]
 005173FA    call        @LStrClr
 005173FF    lea         eax,[ebp-114]
 00517405    call        @LStrClr
 0051740A    lea         eax,[ebp-10]
 0051740D    mov         edx,2
 00517412    call        @LStrArrayClr
 00517417    lea         eax,[ebp-8]
 0051741A    call        @LStrClr
 0051741F    ret
>00517420    jmp         @HandleFinally
>00517425    jmp         005173E9
 00517427    pop         edi
 00517428    pop         esi
 00517429    pop         ebx
 0051742A    mov         esp,ebp
 0051742C    pop         ebp
 0051742D    ret
*}
end;

//0051747C
procedure TFormPointsPlusMoins.TabControlPeriodesChanging(Sender: TObject;var AllowChange: Boolean);
begin
{* 0051747C    push        ebp
 0051747D    mov         ebp,esp
 0051747F    add         esp,0FFFFFEE4
 00517485    push        ebx
 00517486    push        esi
 00517487    push        edi
 00517488    xor         ebx,ebx
 0051748A    mov         dword ptr [ebp-11C],ebx
 00517490    mov         dword ptr [ebp-118],ebx
 00517496    mov         dword ptr [ebp-14],ebx
 00517499    mov         dword ptr [ebp-0C],ebx
 0051749C    mov         dword ptr [ebp-10],ebx
 0051749F    mov         dword ptr [ebp-8],ecx
 005174A2    mov         dword ptr [ebp-4],eax
 005174A5    xor         eax,eax
 005174A7    push        ebp
 005174A8    push        51764C
 005174AD    push        dword ptr fs:[eax]
 005174B0    mov         dword ptr fs:[eax],esp
 005174B3    lea         edx,[ebp-10]
 005174B6    mov         eax,dword ptr [ebp-4]
 005174B9    mov         eax,dword ptr [eax+2EC];TFormPointsPlusMoins.Edit1:TEdit
 005174BF    call        TControl.GetText
 005174C4    mov         eax,dword ptr [ebp-10]
 005174C7    lea         edx,[ebp-0C]
 005174CA    call        Trim
 005174CF    cmp         dword ptr [ebp-0C],0
>005174D3    je          00517613
 005174D9    xor         eax,eax
 005174DB    push        ebp
 005174DC    push        51759E
 005174E1    push        dword ptr fs:[eax]
 005174E4    mov         dword ptr fs:[eax],esp
 005174E7    lea         edx,[ebp-14]
 005174EA    mov         eax,dword ptr [ebp-4]
 005174ED    mov         eax,dword ptr [eax+2EC];TFormPointsPlusMoins.Edit1:TEdit
 005174F3    call        TControl.GetText
 005174F8    mov         eax,dword ptr [ebp-14]
 005174FB    call        StrToFloat
 00517500    fstp        st(0)
 00517502    lea         edx,[ebp-118]
 00517508    mov         eax,dword ptr [ebp-4]
 0051750B    mov         eax,dword ptr [eax+2EC];TFormPointsPlusMoins.Edit1:TEdit
 00517511    call        TControl.GetText
 00517516    mov         edx,dword ptr [ebp-118]
 0051751C    lea         eax,[ebp-114]
 00517522    mov         ecx,0FF
 00517527    call        @LStrToString
 0051752C    lea         eax,[ebp-114]
 00517532    push        eax
 00517533    mov         eax,dword ptr [ebp-4]
 00517536    mov         eax,dword ptr [eax+2E8];TFormPointsPlusMoins.ListBoxEleves:TListBox
 0051753C    call        TCustomListBox.GetItemIndex
 00517541    add         eax,1
>00517544    jno         0051754B
 00517546    call        @IntOver
 0051754B    cmp         eax,0FF
>00517550    jbe         00517557
 00517552    call        @BoundErr
 00517557    push        eax
 00517558    mov         eax,dword ptr [ebp-4]
 0051755B    mov         eax,dword ptr [eax+2E0];TFormPointsPlusMoins.TabControlPeriodes:TTabControl
 00517561    call        TCustomTabControl.GetTabIndex
 00517566    mov         edx,eax
 00517568    add         edx,1
>0051756B    jno         00517572
 0051756D    call        @IntOver
 00517572    cmp         edx,0FF
>00517578    jbe         0051757F
 0051757A    call        @BoundErr
 0051757F    mov         eax,dword ptr [ebp-4]
 00517582    mov         eax,dword ptr [eax+2F4];TFormPointsPlusMoins.?f2F4:dword
 00517588    pop         ecx
 00517589    call        004C3678
 0051758E    mov         eax,dword ptr [ebp-8]
 00517591    mov         byte ptr [eax],1
 00517594    xor         eax,eax
 00517596    pop         edx
 00517597    pop         ecx
 00517598    pop         ecx
 00517599    mov         dword ptr fs:[eax],edx
>0051759C    jmp         00517619
>0051759E    jmp         @HandleAnyException
 005175A3    push        10
 005175A5    lea         edx,[ebp-11C]
 005175AB    mov         eax,dword ptr [ebp-4]
 005175AE    mov         eax,dword ptr [eax+2EC];TFormPointsPlusMoins.Edit1:TEdit
 005175B4    call        TControl.GetText
 005175B9    lea         eax,[ebp-11C]
 005175BF    mov         edx,517664;' n'est pas un nombre correct.'
 005175C4    call        @LStrCat
 005175C9    mov         eax,dword ptr [ebp-11C]
 005175CF    call        @LStrToPChar
 005175D4    mov         edx,eax
 005175D6    mov         ecx,517684
 005175DB    mov         eax,[00615FEC];^Application:TApplication
 005175E0    mov         eax,dword ptr [eax]
 005175E2    call        TApplication.MessageBox
 005175E7    mov         eax,dword ptr [ebp-4]
 005175EA    mov         eax,dword ptr [eax+2EC];TFormPointsPlusMoins.Edit1:TEdit
 005175F0    mov         edx,dword ptr [eax]
 005175F2    call        dword ptr [edx+0B0];TWinControl.SetFocus
 005175F8    mov         eax,dword ptr [ebp-4]
 005175FB    mov         eax,dword ptr [eax+2EC];TFormPointsPlusMoins.Edit1:TEdit
 00517601    call        TCustomEdit.SelectAll
 00517606    mov         eax,dword ptr [ebp-8]
 00517609    mov         byte ptr [eax],0
 0051760C    call        @DoneExcept
>00517611    jmp         00517619
 00517613    mov         eax,dword ptr [ebp-8]
 00517616    mov         byte ptr [eax],1
 00517619    xor         eax,eax
 0051761B    pop         edx
 0051761C    pop         ecx
 0051761D    pop         ecx
 0051761E    mov         dword ptr fs:[eax],edx
 00517621    push        517653
 00517626    lea         eax,[ebp-11C]
 0051762C    mov         edx,2
 00517631    call        @LStrArrayClr
 00517636    lea         eax,[ebp-14]
 00517639    mov         edx,2
 0051763E    call        @LStrArrayClr
 00517643    lea         eax,[ebp-0C]
 00517646    call        @LStrClr
 0051764B    ret
>0051764C    jmp         @HandleFinally
>00517651    jmp         00517626
 00517653    pop         edi
 00517654    pop         esi
 00517655    pop         ebx
 00517656    mov         esp,ebp
 00517658    pop         ebp
 00517659    ret*}
end;

//005176A8
procedure TFormPointsPlusMoins.FormShow(Sender:TObject);
begin
{*
 005176A8    mov         eax,dword ptr [eax+2EC];TFormPointsPlusMoins.Edit1:TEdit
 005176AE    mov         edx,dword ptr [eax]
 005176B0    call        dword ptr [edx+0B0];TWinControl.SetFocus
 005176B6    ret
*}
end;

end.