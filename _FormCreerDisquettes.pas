{***************************************
* Version Original V0.01
* Decompiled by HOUIDEF AEK v.05.02.2018
***************************************}
unit _FormCreerDisquettes;

interface

uses
  Forms,Windows, SysUtils, Classes, StdCtrls, Buttons, ExtCtrls, Dialogs, uFichierCdn;

type
  TFormCreerDisquettes = class(TForm)
  published
    Label1:TLabel;//f2D0
    Label2:TLabel;//f2D4
    Label3:TLabel;//f2D8
    Label4:TLabel;//f2DC
    Edit1:TEdit;//f2E0
    ComboBox1:TComboBox;//f2E4
    SpeedButton1:TSpeedButton;//f2E8
    SpeedButton2:TSpeedButton;//f2EC
    Panel2:TPanel;//f2F0
    Bevel2:TBevel;//f2F4
    Image1:TImage;//f2F8
    SaveDialog1:TSaveDialog;//f2FC
    Label5:TLabel;//f300
    Edit2:TEdit;//f304
    Label6:TLabel;//f308
    Edit3:TEdit;//f30C
    Image2:TImage;//f310
    CheckBox1:TCheckBox;//f314
    SpeedButton3:TSpeedButton;//f318
    procedure Edit1Change(Sender:TObject);//00509BFC
    procedure FormKeyPress(Sender:TObject; var Key:Char);//00509C6C
    procedure SpeedButton3Click(Sender:TObject);//00509C7C
    procedure SpeedButton1Click(Sender:TObject);//0050979C
    procedure FormShow(Sender:TObject);//005097A4
    procedure SpeedButton2Click(Sender:TObject);//005098CC
  public
    f31C:TFichierCdn;//f31C
    constructor Create(Owner:TComponent; logo:TImage;FichierCdn:TFichierCdn);//00509744
  end;
  var
    FormCreerDisquettes:TFormCreerDisquettes;
implementation

{$R *.DFM}

//00509744
constructor TFormCreerDisquettes.Create(Owner:TComponent; logo:TImage;FichierCdn:TFichierCdn);
begin//0
  //00509744
  inherited Create(Owner);
  Image1.Picture := logo.Picture;
  f31C := FichierCdn;
end;//0

//0050979C
procedure TFormCreerDisquettes.SpeedButton1Click(Sender:TObject);
begin
{*
 0050979C    call        TCustomForm.Close
 005097A1    ret
*}
end;

//005097A4
procedure TFormCreerDisquettes.FormShow(Sender:TObject);
begin
{*
 005097A4    push        ebp
 005097A5    mov         ebp,esp
 005097A7    add         esp,0FFFFFEF8
 005097AD    push        ebx
 005097AE    xor         ecx,ecx
 005097B0    mov         dword ptr [ebp-108],ecx
 005097B6    mov         dword ptr [ebp-104],ecx
 005097BC    mov         ebx,eax
 005097BE    xor         eax,eax
 005097C0    push        ebp
 005097C1    push        5098B1
 005097C6    push        dword ptr fs:[eax]
 005097C9    mov         dword ptr fs:[eax],esp
 005097CC    lea         edx,[ebp-100]
 005097D2    mov         eax,dword ptr [ebx+31C];TFormCreerDisquettes.?f31C:dword
 005097D8    call        004BE988
 005097DD    lea         eax,[ebp-100]
 005097E3    mov         edx,5098C0;'Trimestres'
 005097E8    xor         ecx,ecx
 005097EA    mov         cl,byte ptr [eax]
 005097EC    inc         ecx
 005097ED    call        @AStrCmp
 005097F2    sete        dl
 005097F5    mov         eax,dword ptr [ebx+314];TFormCreerDisquettes.CheckBox1:TCheckBox
 005097FB    mov         ecx,dword ptr [eax]
 005097FD    call        dword ptr [ecx+5C];TControl.SetEnabled
 00509800    call        004BC348
 00509805    mov         edx,eax
 00509807    mov         eax,dword ptr [ebx+2E4];TFormCreerDisquettes.ComboBox1:TComboBox
 0050980D    call        TCustomComboBox.SetItems
 00509812    xor         edx,edx
 00509814    mov         eax,dword ptr [ebx+2E4];TFormCreerDisquettes.ComboBox1:TComboBox
 0050981A    call        TCustomComboBox.SetItemIndex
 0050981F    lea         edx,[ebp-100]
 00509825    mov         eax,dword ptr [ebx+31C];TFormCreerDisquettes.?f31C:dword
 0050982B    call        004BE8FC
 00509830    lea         edx,[ebp-100]
 00509836    lea         eax,[ebp-104]
 0050983C    call        @LStrFromString
 00509841    mov         edx,dword ptr [ebp-104]
 00509847    mov         eax,dword ptr [ebx+304];TFormCreerDisquettes.Edit2:TEdit
 0050984D    call        TControl.SetText
 00509852    lea         edx,[ebp-100]
 00509858    mov         eax,dword ptr [ebx+31C];TFormCreerDisquettes.?f31C:dword
 0050985E    call        004BE914
 00509863    lea         edx,[ebp-100]
 00509869    lea         eax,[ebp-108]
 0050986F    call        @LStrFromString
 00509874    mov         edx,dword ptr [ebp-108]
 0050987A    mov         eax,dword ptr [ebx+30C];TFormCreerDisquettes.Edit3:TEdit
 00509880    call        TControl.SetText
 00509885    mov         eax,dword ptr [ebx+2E0];TFormCreerDisquettes.Edit1:TEdit
 0050988B    mov         edx,dword ptr [eax]
 0050988D    call        dword ptr [edx+0B0];TWinControl.SetFocus
 00509893    xor         eax,eax
 00509895    pop         edx
 00509896    pop         ecx
 00509897    pop         ecx
 00509898    mov         dword ptr fs:[eax],edx
 0050989B    push        5098B8
 005098A0    lea         eax,[ebp-108]
 005098A6    mov         edx,2
 005098AB    call        @LStrArrayClr
 005098B0    ret
>005098B1    jmp         @HandleFinally
>005098B6    jmp         005098A0
 005098B8    pop         ebx
 005098B9    mov         esp,ebp
 005098BB    pop         ebp
 005098BC    ret
*}
end;

//005098CC
procedure TFormCreerDisquettes.SpeedButton2Click(Sender:TObject);
begin
{*
 005098CC    push        ebp
 005098CD    mov         ebp,esp
 005098CF    add         esp,0FFFFFDDC
 005098D5    push        ebx
 005098D6    push        esi
 005098D7    push        edi
 005098D8    xor         ecx,ecx
 005098DA    mov         dword ptr [ebp-224],ecx
 005098E0    mov         dword ptr [ebp-11C],ecx
 005098E6    mov         dword ptr [ebp-120],ecx
 005098EC    mov         dword ptr [ebp-118],ecx
 005098F2    mov         dword ptr [ebp-114],ecx
 005098F8    mov         dword ptr [ebp-110],ecx
 005098FE    mov         ebx,eax
 00509900    xor         eax,eax
 00509902    push        ebp
 00509903    push        509BB0
 00509908    push        dword ptr fs:[eax]
 0050990B    mov         dword ptr fs:[eax],esp
 0050990E    mov         eax,dword ptr [ebx+2FC];TFormCreerDisquettes.SaveDialog1:TSaveDialog
 00509914    mov         edx,dword ptr [eax]
 00509916    call        dword ptr [edx+3C];TSaveDialog.Execute
 00509919    test        al,al
>0050991B    je          00509B71
 00509921    push        1
 00509923    push        0
 00509925    push        0
 00509927    xor         ecx,ecx
 00509929    mov         dl,1
 0050992B    mov         eax,[004BE574];TFichierCdn
 00509930    call        TFichierCdn.Create;TFichierCdn.Create
 00509935    mov         esi,eax
 00509937    lea         edx,[ebp-10C]
 0050993D    mov         eax,dword ptr [ebx+31C];TFormCreerDisquettes.?f31C:dword
 00509943    call        004BE988
 00509948    lea         edx,[ebp-10C]
 0050994E    mov         eax,esi
 00509950    call        004C4CC8
 00509955    mov         dl,1
 00509957    mov         eax,[004120B8];TStringList
 0050995C    call        TObject.Create;TStringList.Create
 00509961    mov         dword ptr [ebp-4],eax
 00509964    mov         eax,dword ptr [ebx+31C];TFormCreerDisquettes.?f31C:dword
 0050996A    call        004BE9E0
 0050996F    and         eax,0FF
 00509974    test        eax,eax
>00509976    jle         005099CA
 00509978    mov         dword ptr [ebp-0C],eax
 0050997B    mov         dword ptr [ebp-8],1
 00509982    lea         ecx,[ebp-10C]
 00509988    mov         edx,dword ptr [ebp-8]
 0050998B    cmp         edx,0FF
>00509991    jbe         00509998
 00509993    call        @BoundErr
 00509998    mov         eax,dword ptr [ebx+31C];TFormCreerDisquettes.?f31C:dword
 0050999E    call        004BE9EC
 005099A3    lea         edx,[ebp-10C]
 005099A9    lea         eax,[ebp-110]
 005099AF    call        @LStrFromString
 005099B4    mov         edx,dword ptr [ebp-110]
 005099BA    mov         eax,dword ptr [ebp-4]
 005099BD    mov         ecx,dword ptr [eax]
 005099BF    call        dword ptr [ecx+34];TStringList.Add
 005099C2    inc         dword ptr [ebp-8]
 005099C5    dec         dword ptr [ebp-0C]
>005099C8    jne         00509982
 005099CA    mov         edx,dword ptr [ebp-4]
 005099CD    mov         eax,esi
 005099CF    call        004C4CBC
 005099D4    mov         dl,1
 005099D6    mov         eax,dword ptr [ebp-4]
 005099D9    mov         ecx,dword ptr [eax]
 005099DB    call        dword ptr [ecx-4];TStringList.Destroy
 005099DE    lea         edx,[ebp-114]
 005099E4    mov         eax,dword ptr [ebx+2E0];TFormCreerDisquettes.Edit1:TEdit
 005099EA    call        TControl.GetText
 005099EF    mov         edx,dword ptr [ebp-114]
 005099F5    lea         eax,[ebp-10C]
 005099FB    mov         ecx,0FF
 00509A00    call        @LStrToString
 00509A05    lea         edx,[ebp-10C]
 00509A0B    mov         eax,esi
 00509A0D    call        004C3920
 00509A12    lea         edx,[ebp-10C]
 00509A18    mov         eax,dword ptr [ebx+31C];TFormCreerDisquettes.?f31C:dword
 00509A1E    call        004BE8FC
 00509A23    lea         edx,[ebp-10C]
 00509A29    mov         eax,esi
 00509A2B    call        004BEFD0
 00509A30    lea         edx,[ebp-10C]
 00509A36    mov         eax,dword ptr [ebx+31C];TFormCreerDisquettes.?f31C:dword
 00509A3C    call        004BE914
 00509A41    lea         edx,[ebp-10C]
 00509A47    mov         eax,esi
 00509A49    call        004BF004
 00509A4E    mov         eax,dword ptr [ebx+2E4];TFormCreerDisquettes.ComboBox1:TComboBox
 00509A54    call        TCustomComboBox.GetItemIndex
 00509A59    mov         edx,eax
 00509A5B    lea         ecx,[ebp-118]
 00509A61    mov         eax,dword ptr [ebx+2E4];TFormCreerDisquettes.ComboBox1:TComboBox
 00509A67    mov         eax,dword ptr [eax+1F0];TComboBox.FItems:TStrings
 00509A6D    mov         edi,dword ptr [eax]
 00509A6F    call        dword ptr [edi+0C];TStrings.Get
 00509A72    mov         edx,dword ptr [ebp-118]
 00509A78    lea         eax,[ebp-10C]
 00509A7E    mov         ecx,0FF
 00509A83    call        @LStrToString
 00509A88    lea         edx,[ebp-10C]
 00509A8E    mov         eax,esi
 00509A90    call        004BF038
 00509A95    lea         edx,[ebp-10C]
 00509A9B    mov         eax,dword ptr [ebx+31C];TFormCreerDisquettes.?f31C:dword
 00509AA1    call        004BE944
 00509AA6    lea         edx,[ebp-10C]
 00509AAC    mov         eax,esi
 00509AAE    call        004BF06C
 00509AB3    push        509BC8;'Fichier créé par '
 00509AB8    lea         edx,[ebp-220]
 00509ABE    mov         eax,dword ptr [ebx+31C];TFormCreerDisquettes.?f31C:dword
 00509AC4    call        004C3908
 00509AC9    lea         edx,[ebp-220]
 00509ACF    lea         eax,[ebp-120]
 00509AD5    call        @LStrFromString
 00509ADA    push        dword ptr [ebp-120]
 00509AE0    push        509BE4;' pour ses collègues'
 00509AE5    lea         eax,[ebp-11C]
 00509AEB    mov         edx,3
 00509AF0    call        @LStrCatN
 00509AF5    mov         edx,dword ptr [ebp-11C]
 00509AFB    lea         eax,[ebp-10C]
 00509B01    mov         ecx,0FF
 00509B06    call        @LStrToString
 00509B0B    lea         edx,[ebp-10C]
 00509B11    mov         eax,esi
 00509B13    call        004BF0A0
 00509B18    mov         eax,dword ptr [ebx+31C];TFormCreerDisquettes.?f31C:dword
 00509B1E    call        004BEAC4
 00509B23    mov         edx,eax
 00509B25    mov         eax,esi
 00509B27    call        004BF64C
 00509B2C    mov         eax,esi
 00509B2E    call        004BF0D4
 00509B33    push        509BF8
 00509B38    push        0
 00509B3A    mov         eax,dword ptr [ebx+314];TFormCreerDisquettes.CheckBox1:TCheckBox
 00509B40    mov         edx,dword ptr [eax]
 00509B42    call        dword ptr [edx+0B4];TCustomCheckBox.GetChecked
 00509B48    push        eax
 00509B49    lea         edx,[ebp-224]
 00509B4F    mov         eax,dword ptr [ebx+2FC];TFormCreerDisquettes.SaveDialog1:TSaveDialog
 00509B55    call        TOpenDialog.GetFileName
 00509B5A    mov         edx,dword ptr [ebp-224]
 00509B60    mov         eax,esi
 00509B62    pop         ecx
 00509B63    call        004C01F8
 00509B68    mov         dl,1
 00509B6A    mov         eax,esi
 00509B6C    mov         ecx,dword ptr [eax]
 00509B6E    call        dword ptr [ecx-4]
 00509B71    xor         eax,eax
 00509B73    pop         edx
 00509B74    pop         ecx
 00509B75    pop         ecx
 00509B76    mov         dword ptr fs:[eax],edx
 00509B79    push        509BB7
 00509B7E    lea         eax,[ebp-224]
 00509B84    call        @LStrClr
 00509B89    lea         eax,[ebp-120]
 00509B8F    mov         edx,3
 00509B94    call        @LStrArrayClr
 00509B99    lea         eax,[ebp-114]
 00509B9F    call        @LStrClr
 00509BA4    lea         eax,[ebp-110]
 00509BAA    call        @LStrClr
 00509BAF    ret
>00509BB0    jmp         @HandleFinally
>00509BB5    jmp         00509B7E
 00509BB7    pop         edi
 00509BB8    pop         esi
 00509BB9    pop         ebx
 00509BBA    mov         esp,ebp
 00509BBC    pop         ebp
 00509BBD    ret
*}
end;

//00509BFC
procedure TFormCreerDisquettes.Edit1Change(Sender:TObject);
begin
{*
 00509BFC    push        ebp
 00509BFD    mov         ebp,esp
 00509BFF    push        0
 00509C01    push        0
 00509C03    push        ebx
 00509C04    mov         ebx,eax
 00509C06    xor         eax,eax
 00509C08    push        ebp
 00509C09    push        509C5D
 00509C0E    push        dword ptr fs:[eax]
 00509C11    mov         dword ptr fs:[eax],esp
 00509C14    lea         edx,[ebp-8]
 00509C17    mov         eax,dword ptr [ebx+2E0];TFormCreerDisquettes.Edit1:TEdit
 00509C1D    call        TControl.GetText
 00509C22    mov         eax,dword ptr [ebp-8]
 00509C25    lea         edx,[ebp-4]
 00509C28    call        Trim
 00509C2D    cmp         dword ptr [ebp-4],0
 00509C31    setne       dl
 00509C34    mov         eax,dword ptr [ebx+2EC];TFormCreerDisquettes.SpeedButton2:TSpeedButton
 00509C3A    mov         ecx,dword ptr [eax]
 00509C3C    call        dword ptr [ecx+5C];TControl.SetEnabled
 00509C3F    xor         eax,eax
 00509C41    pop         edx
 00509C42    pop         ecx
 00509C43    pop         ecx
 00509C44    mov         dword ptr fs:[eax],edx
 00509C47    push        509C64
 00509C4C    lea         eax,[ebp-8]
 00509C4F    call        @LStrClr
 00509C54    lea         eax,[ebp-4]
 00509C57    call        @LStrClr
 00509C5C    ret
>00509C5D    jmp         @HandleFinally
>00509C62    jmp         00509C4C
 00509C64    pop         ebx
 00509C65    pop         ecx
 00509C66    pop         ecx
 00509C67    pop         ebp
 00509C68    ret
*}
end;

//00509C6C
procedure TFormCreerDisquettes.FormKeyPress(Sender:TObject; var Key:Char);
begin
  if (Key = char($1B)) then
  ModalResult := 2;
end;

//00509C7C
procedure TFormCreerDisquettes.SpeedButton3Click(Sender:TObject);
begin
{*
 00509C7C    push        ebx
 00509C7D    mov         ebx,eax
 00509C7F    mov         eax,dword ptr [ebx+2F8];TFormCreerDisquettes.Image1:TImage
 00509C85    push        eax
 00509C86    mov         ecx,ebx
 00509C88    mov         dl,1
 00509C8A    mov         eax,[00502EAC];TFormOptions
 00509C8F    call        TFormOptions.Create;TFormOptions.Create
 00509C94    mov         edx,dword ptr ds:[615EFC];^gvar_00617D64:TFormOptions
 00509C9A    mov         dword ptr [edx],eax
 00509C9C    mov         eax,[00615EFC];^gvar_00617D64:TFormOptions
 00509CA1    mov         eax,dword ptr [eax]
 00509CA3    mov         edx,dword ptr [eax+568]
 00509CA9    mov         eax,[00615EFC];^gvar_00617D64:TFormOptions
 00509CAE    mov         eax,dword ptr [eax]
 00509CB0    mov         eax,dword ptr [eax+2DC]
 00509CB6    call        TPageControl.SetActivePage
 00509CBB    mov         eax,[00615EFC];^gvar_00617D64:TFormOptions
 00509CC0    mov         eax,dword ptr [eax]
 00509CC2    mov         edx,dword ptr [eax]
 00509CC4    call        dword ptr [edx+0D8]
 00509CCA    mov         eax,[00615EFC];^gvar_00617D64:TFormOptions
 00509CCF    mov         eax,dword ptr [eax]
 00509CD1    mov         dl,1
 00509CD3    mov         ecx,dword ptr [eax]
 00509CD5    call        dword ptr [ecx-4]
 00509CD8    call        004BC348
 00509CDD    mov         edx,eax
 00509CDF    mov         eax,dword ptr [ebx+2E4];TFormCreerDisquettes.ComboBox1:TComboBox
 00509CE5    call        TCustomComboBox.SetItems
 00509CEA    pop         ebx
 00509CEB    ret
*}
end;

end.