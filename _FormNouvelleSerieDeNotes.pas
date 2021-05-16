{***************************************
* Version Original V0.01
* Decompiled by Houidef AEK v.05.02.2018
***************************************}
unit _FormNouvelleSerieDeNotes;

interface

uses
  Forms,Windows, SysUtils, Classes, ExtCtrls, ComCtrls, StdCtrls, Buttons, uFichierCdn,Unit111;

type
  TFormNouvelleSerieDeNotes = class(TForm)
  published
    Panel1:TPanel;//f2D0
    Panel2:TPanel;//f2D4
    Bevel2:TBevel;//f2D8
    Image1:TImage;//f2DC
    TabControl1:TTabControl;//f2E0
    Label1:TLabel;//f2E4
    ComboBoxTypesDeNotes:TComboBox;//f2E8
    SpeedButton1:TSpeedButton;//f2EC
    Label3:TLabel;//f2F0
    ComboBox2:TComboBox;//f2F4
    SpeedButton3:TSpeedButton;//f2F8
    Label8:TLabel;//f2FC
    ComboBox5:TComboBox;//f300
    SpeedButton2:TSpeedButton;//f304
    Label6:TLabel;//f308
    DateTimePicker1:TDateTimePicker;//f30C
    Label2:TLabel;//f310
    Label7:TLabel;//f314
    Edit3:TEdit;//f318
    RadioGroup1:TRadioGroup;//f31C
    SpeedButton4:TSpeedButton;//f320
    SpeedButton5:TSpeedButton;//f324
    ComboBox1:TComboBox;//f328
    RadioGroupEcritOuOral:TRadioGroup;//f32C
    procedure SpeedButton4Click(Sender:TObject);//0050A58C
    procedure FormHide(Sender:TObject);//0050A544
    procedure FormKeyPress(Sender:TObject; var Key:Char);//0050A5A4
    procedure SpeedButton5Click(Sender:TObject);//0050A598
    procedure SpeedButton1Click(Sender:TObject);//0050A258
    procedure FormShow(Sender:TObject);//0050A214
    procedure SpeedButton2Click(Sender:TObject);//0050A414
    procedure SpeedButton3Click(Sender:TObject);//0050A2D8
  public
    f330 : TFichierCdn;
    f334:dword;//f334
    f338:String;//f338
    constructor Create(Owner:Tcomponent; FichierCdn:TFichierCdn; logo:Timage; Caption:string);//0050A11C
  end;
  var
   FormNouvelleSerieDeNotes:TFormNouvelleSerieDeNotes;
implementation

{$R *.DFM}

//0050A11C
constructor TFormNouvelleSerieDeNotes.Create(Owner:Tcomponent; FichierCdn:TFichierCdn; logo:Timage; Caption:string);
begin//0
  //0050A11C
    //0050A14A
    inherited Create(Owner);
    Self.Caption := Caption;
    Image1.Picture := logo.Picture;
    f330 := FichierCdn;
    TabControl1.Tabs := FichierCdn.sub_004BEA4C;
    f334 := TabControl1.TabIndex + 1;//EAX
    ComboBoxTypesDeNotes.Items := GetTypesdenotes;
    ComboBox1.Items := GetTypesdenotes;
    //f338 := $69756F03{1769303811};
end;//0
//0050A214
procedure TFormNouvelleSerieDeNotes.FormShow(Sender:TObject);
begin
{*
 0050A214    push        ebx
 0050A215    mov         ebx,eax
 0050A217    xor         edx,edx
 0050A219    mov         eax,dword ptr [ebx+2E8];TFormNouvelleSerieDeNotes.ComboBoxTypesDeNotes:TComboBox
 0050A21F    call        TCustomComboBox.SetItemIndex
 0050A224    xor         edx,edx
 0050A226    mov         eax,dword ptr [ebx+2F4];TFormNouvelleSerieDeNotes.ComboBox2:TComboBox
 0050A22C    call        TCustomComboBox.SetItemIndex
 0050A231    xor         edx,edx
 0050A233    mov         eax,dword ptr [ebx+300];TFormNouvelleSerieDeNotes.ComboBox5:TComboBox
 0050A239    call        TCustomComboBox.SetItemIndex
 0050A23E    call        Now
 0050A243    add         esp,0FFFFFFF8
 0050A246    fstp        qword ptr [esp]
 0050A249    wait
 0050A24A    mov         eax,dword ptr [ebx+30C];TFormNouvelleSerieDeNotes.DateTimePicker1:TDateTimePicker
 0050A250    call        TCommonCalendar.SetDate
 0050A255    pop         ebx
 0050A256    ret
*}
end;

//0050A258
procedure TFormNouvelleSerieDeNotes.SpeedButton1Click(Sender:TObject);
begin
{*
 0050A258    push        ebx
 0050A259    mov         ebx,eax
 0050A25B    mov         eax,dword ptr [ebx+2DC];TFormNouvelleSerieDeNotes.Image1:TImage
 0050A261    push        eax
 0050A262    mov         ecx,ebx
 0050A264    mov         dl,1
 0050A266    mov         eax,[00502EAC];TFormOptions
 0050A26B    call        TFormOptions.Create;TFormOptions.Create
 0050A270    mov         edx,dword ptr ds:[615EFC];^gvar_00617D64:TFormOptions
 0050A276    mov         dword ptr [edx],eax
 0050A278    mov         eax,[00615EFC];^gvar_00617D64:TFormOptions
 0050A27D    mov         eax,dword ptr [eax]
 0050A27F    mov         edx,dword ptr [eax+30C]
 0050A285    mov         eax,[00615EFC];^gvar_00617D64:TFormOptions
 0050A28A    mov         eax,dword ptr [eax]
 0050A28C    mov         eax,dword ptr [eax+2DC]
 0050A292    call        TPageControl.SetActivePage
 0050A297    mov         eax,[00615EFC];^gvar_00617D64:TFormOptions
 0050A29C    mov         eax,dword ptr [eax]
 0050A29E    mov         edx,dword ptr [eax]
 0050A2A0    call        dword ptr [edx+0D8]
 0050A2A6    mov         eax,[00615EFC];^gvar_00617D64:TFormOptions
 0050A2AB    mov         eax,dword ptr [eax]
 0050A2AD    mov         dl,1
 0050A2AF    mov         ecx,dword ptr [eax]
 0050A2B1    call        dword ptr [ecx-4]
 0050A2B4    call        004B9794
 0050A2B9    mov         edx,eax
 0050A2BB    mov         eax,dword ptr [ebx+2E8];TFormNouvelleSerieDeNotes.ComboBoxTypesDeNotes:TComboBox
 0050A2C1    call        TCustomComboBox.SetItems
 0050A2C6    xor         edx,edx
 0050A2C8    mov         eax,dword ptr [ebx+2E8];TFormNouvelleSerieDeNotes.ComboBoxTypesDeNotes:TComboBox
 0050A2CE    call        TCustomComboBox.SetItemIndex
 0050A2D3    pop         ebx
 0050A2D4    ret
*}
end;

//0050A2D8
procedure TFormNouvelleSerieDeNotes.SpeedButton3Click(Sender:TObject);
begin
{*
 0050A2D8    push        ebp
 0050A2D9    mov         ebp,esp
 0050A2DB    push        0
 0050A2DD    push        0
 0050A2DF    push        0
 0050A2E1    push        ebx
 0050A2E2    push        esi
 0050A2E3    mov         ebx,eax
 0050A2E5    xor         eax,eax
 0050A2E7    push        ebp
 0050A2E8    push        50A3E5
 0050A2ED    push        dword ptr fs:[eax]
 0050A2F0    mov         dword ptr fs:[eax],esp
 0050A2F3    push        50A3FC;'Coefficient de la série'
 0050A2F8    push        0
 0050A2FA    push        1
 0050A2FC    mov         ecx,ebx
 0050A2FE    mov         dl,1
 0050A300    mov         eax,[004CA40C];TFormEdit
 0050A305    call        TFormEdit.Create;TFormEdit.Create
 0050A30A    mov         edx,dword ptr ds:[616280];^gvar_00617CE0:TFormEdit
 0050A310    mov         dword ptr [edx],eax
 0050A312    mov         eax,[00616280];^gvar_00617CE0:TFormEdit
 0050A317    mov         eax,dword ptr [eax]
 0050A319    mov         edx,dword ptr [eax]
 0050A31B    call        dword ptr [edx+0D8]
 0050A321    mov         eax,[00616280];^gvar_00617CE0:TFormEdit
 0050A326    mov         eax,dword ptr [eax]
 0050A328    cmp         dword ptr [eax+234],1
>0050A32F    jne         0050A3BC
 0050A335    lea         edx,[ebp-4]
 0050A338    mov         eax,[00616280];^gvar_00617CE0:TFormEdit
 0050A33D    mov         eax,dword ptr [eax]
 0050A33F    mov         eax,dword ptr [eax+2D0]
 0050A345    call        TControl.GetText
 0050A34A    mov         edx,dword ptr [ebp-4]
 0050A34D    mov         eax,dword ptr [ebx+2F4];TFormNouvelleSerieDeNotes.ComboBox2:TComboBox
 0050A353    mov         eax,dword ptr [eax+1F0];TComboBox.FItems:TStrings
 0050A359    mov         ecx,dword ptr [eax]
 0050A35B    call        dword ptr [ecx+50];TStrings.IndexOf
 0050A35E    inc         eax
>0050A35F    jne         0050A38A
 0050A361    lea         edx,[ebp-8]
 0050A364    mov         eax,[00616280];^gvar_00617CE0:TFormEdit
 0050A369    mov         eax,dword ptr [eax]
 0050A36B    mov         eax,dword ptr [eax+2D0]
 0050A371    call        TControl.GetText
 0050A376    mov         edx,dword ptr [ebp-8]
 0050A379    mov         eax,dword ptr [ebx+2F4];TFormNouvelleSerieDeNotes.ComboBox2:TComboBox
 0050A37F    mov         eax,dword ptr [eax+1F0];TComboBox.FItems:TStrings
 0050A385    mov         ecx,dword ptr [eax]
 0050A387    call        dword ptr [ecx+34];TStrings.Add
 0050A38A    lea         edx,[ebp-0C]
 0050A38D    mov         eax,[00616280];^gvar_00617CE0:TFormEdit
 0050A392    mov         eax,dword ptr [eax]
 0050A394    mov         eax,dword ptr [eax+2D0]
 0050A39A    call        TControl.GetText
 0050A39F    mov         edx,dword ptr [ebp-0C]
 0050A3A2    mov         esi,dword ptr [ebx+2F4];TFormNouvelleSerieDeNotes.ComboBox2:TComboBox
 0050A3A8    mov         eax,dword ptr [esi+1F0];TComboBox.FItems:TStrings
 0050A3AE    mov         ecx,dword ptr [eax]
 0050A3B0    call        dword ptr [ecx+50];TStrings.IndexOf
 0050A3B3    mov         edx,eax
 0050A3B5    mov         eax,esi
 0050A3B7    call        TCustomComboBox.SetItemIndex
 0050A3BC    mov         eax,[00616280];^gvar_00617CE0:TFormEdit
 0050A3C1    mov         eax,dword ptr [eax]
 0050A3C3    mov         dl,1
 0050A3C5    mov         ecx,dword ptr [eax]
 0050A3C7    call        dword ptr [ecx-4]
 0050A3CA    xor         eax,eax
 0050A3CC    pop         edx
 0050A3CD    pop         ecx
 0050A3CE    pop         ecx
 0050A3CF    mov         dword ptr fs:[eax],edx
 0050A3D2    push        50A3EC
 0050A3D7    lea         eax,[ebp-0C]
 0050A3DA    mov         edx,3
 0050A3DF    call        @LStrArrayClr
 0050A3E4    ret
>0050A3E5    jmp         @HandleFinally
>0050A3EA    jmp         0050A3D7
 0050A3EC    pop         esi
 0050A3ED    pop         ebx
 0050A3EE    mov         esp,ebp
 0050A3F0    pop         ebp
 0050A3F1    ret
*}
end;

//0050A414
procedure TFormNouvelleSerieDeNotes.SpeedButton2Click(Sender:TObject);
begin
{*
 0050A414    push        ebp
 0050A415    mov         ebp,esp
 0050A417    push        0
 0050A419    push        0
 0050A41B    push        0
 0050A41D    push        ebx
 0050A41E    push        esi
 0050A41F    mov         ebx,eax
 0050A421    xor         eax,eax
 0050A423    push        ebp
 0050A424    push        50A521
 0050A429    push        dword ptr fs:[eax]
 0050A42C    mov         dword ptr fs:[eax],esp
 0050A42F    push        50A538;'Noté sur'
 0050A434    push        0
 0050A436    push        1
 0050A438    mov         ecx,ebx
 0050A43A    mov         dl,1
 0050A43C    mov         eax,[004CA40C];TFormEdit
 0050A441    call        TFormEdit.Create;TFormEdit.Create
 0050A446    mov         edx,dword ptr ds:[616280];^gvar_00617CE0:TFormEdit
 0050A44C    mov         dword ptr [edx],eax
 0050A44E    mov         eax,[00616280];^gvar_00617CE0:TFormEdit
 0050A453    mov         eax,dword ptr [eax]
 0050A455    mov         edx,dword ptr [eax]
 0050A457    call        dword ptr [edx+0D8]
 0050A45D    mov         eax,[00616280];^gvar_00617CE0:TFormEdit
 0050A462    mov         eax,dword ptr [eax]
 0050A464    cmp         dword ptr [eax+234],1
>0050A46B    jne         0050A4F8
 0050A471    lea         edx,[ebp-4]
 0050A474    mov         eax,[00616280];^gvar_00617CE0:TFormEdit
 0050A479    mov         eax,dword ptr [eax]
 0050A47B    mov         eax,dword ptr [eax+2D0]
 0050A481    call        TControl.GetText
 0050A486    mov         edx,dword ptr [ebp-4]
 0050A489    mov         eax,dword ptr [ebx+300];TFormNouvelleSerieDeNotes.ComboBox5:TComboBox
 0050A48F    mov         eax,dword ptr [eax+1F0];TComboBox.FItems:TStrings
 0050A495    mov         ecx,dword ptr [eax]
 0050A497    call        dword ptr [ecx+50];TStrings.IndexOf
 0050A49A    inc         eax
>0050A49B    jne         0050A4C6
 0050A49D    lea         edx,[ebp-8]
 0050A4A0    mov         eax,[00616280];^gvar_00617CE0:TFormEdit
 0050A4A5    mov         eax,dword ptr [eax]
 0050A4A7    mov         eax,dword ptr [eax+2D0]
 0050A4AD    call        TControl.GetText
 0050A4B2    mov         edx,dword ptr [ebp-8]
 0050A4B5    mov         eax,dword ptr [ebx+300];TFormNouvelleSerieDeNotes.ComboBox5:TComboBox
 0050A4BB    mov         eax,dword ptr [eax+1F0];TComboBox.FItems:TStrings
 0050A4C1    mov         ecx,dword ptr [eax]
 0050A4C3    call        dword ptr [ecx+34];TStrings.Add
 0050A4C6    lea         edx,[ebp-0C]
 0050A4C9    mov         eax,[00616280];^gvar_00617CE0:TFormEdit
 0050A4CE    mov         eax,dword ptr [eax]
 0050A4D0    mov         eax,dword ptr [eax+2D0]
 0050A4D6    call        TControl.GetText
 0050A4DB    mov         edx,dword ptr [ebp-0C]
 0050A4DE    mov         esi,dword ptr [ebx+300];TFormNouvelleSerieDeNotes.ComboBox5:TComboBox
 0050A4E4    mov         eax,dword ptr [esi+1F0];TComboBox.FItems:TStrings
 0050A4EA    mov         ecx,dword ptr [eax]
 0050A4EC    call        dword ptr [ecx+50];TStrings.IndexOf
 0050A4EF    mov         edx,eax
 0050A4F1    mov         eax,esi
 0050A4F3    call        TCustomComboBox.SetItemIndex
 0050A4F8    mov         eax,[00616280];^gvar_00617CE0:TFormEdit
 0050A4FD    mov         eax,dword ptr [eax]
 0050A4FF    mov         dl,1
 0050A501    mov         ecx,dword ptr [eax]
 0050A503    call        dword ptr [ecx-4]
 0050A506    xor         eax,eax
 0050A508    pop         edx
 0050A509    pop         ecx
 0050A50A    pop         ecx
 0050A50B    mov         dword ptr fs:[eax],edx
 0050A50E    push        50A528
 0050A513    lea         eax,[ebp-0C]
 0050A516    mov         edx,3
 0050A51B    call        @LStrArrayClr
 0050A520    ret
>0050A521    jmp         @HandleFinally
>0050A526    jmp         0050A513
 0050A528    pop         esi
 0050A529    pop         ebx
 0050A52A    mov         esp,ebp
 0050A52C    pop         ebp
 0050A52D    ret
*}
end;

//0050A544
procedure TFormNouvelleSerieDeNotes.FormHide(Sender:TObject);
begin
{*
 0050A544    push        ebx
 0050A545    mov         ebx,eax
 0050A547    mov         eax,dword ptr [ebx+2E0];TFormNouvelleSerieDeNotes.TabControl1:TTabControl
 0050A54D    call        TCustomTabControl.GetTabIndex
 0050A552    add         eax,1
>0050A555    jno         0050A55C
 0050A557    call        @IntOver
 0050A55C    mov         dword ptr [ebx+334],eax;TFormNouvelleSerieDeNotes.?f334:dword
 0050A562    mov         eax,dword ptr [ebx+31C];TFormNouvelleSerieDeNotes.RadioGroup1:TRadioGroup
 0050A568    cmp         dword ptr [eax+200],0;TRadioGroup.FItemIndex:Integer
>0050A56F    jne         0050A57D
 0050A571    mov         dword ptr [ebx+338],69756F03;TFormNouvelleSerieDeNotes.?f338:dword
 0050A57B    pop         ebx
 0050A57C    ret
 0050A57D    mov         dword ptr [ebx+338],6E6F6E03;TFormNouvelleSerieDeNotes.?f338:dword
 0050A587    pop         ebx
 0050A588    ret
*}
end;

//0050A58C
procedure TFormNouvelleSerieDeNotes.SpeedButton4Click(Sender:TObject);
begin
 ModalResult:=2;
end;

//0050A598
procedure TFormNouvelleSerieDeNotes.SpeedButton5Click(Sender:TObject);
begin
 ModalResult:=1;
end;

//0050A5A4
procedure TFormNouvelleSerieDeNotes.FormKeyPress(Sender:TObject; var Key:Char);
begin
  if (Key = #13) then
    ModalResult := 1
  else
  if (Key = #27) then 
  ModalResult := 2;
end;

end.