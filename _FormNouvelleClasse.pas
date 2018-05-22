{***************************************
* Version Original V0.01
* Decompiled by HOUIDEF AEK v.11.02.2018
***************************************}
unit _FormNouvelleClasse;

interface

uses
Forms, Windows,  SysUtils, Classes, ExtCtrls, StdCtrls, Buttons;

type
  TFormNouvelleClasse = class(TForm)
  published
    Panel1:TPanel;//f2D0
    Panel2:TPanel;//f2D4
    Bevel1:TBevel;//f2D8
    Bevel2:TBevel;//f2DC
    Image1:TImage;//f2E0
    Label1:TLabel;//f2E4
    EditClasse:TEdit;//f2E8
    EditEtablissement:TEdit;//f2EC
    Label2:TLabel;//f2F0
    Label3:TLabel;//f2F4
    ComboBoxMatiere:TComboBox;//f2F8
    Label4:TLabel;//f2FC
    EditAnneeScolaire:TEdit;//f300
    Label5:TLabel;//f304
    EditRemarque:TEdit;//f308
    Label6:TLabel;//f30C
    ComboBoxOrganisationAnnee:TComboBox;//f310
    SpeedButton1:TSpeedButton;//f314
    Label7:TLabel;//f318
    ComboBoxUtilisateurs:TComboBox;//f31C
    SpeedButton2:TSpeedButton;//f320
    SpeedButton3:TSpeedButton;//f324
    SpeedButton4:TSpeedButton;//f328
    SpeedButton5:TSpeedButton;//f32C
    ComboBoxBulletins:TComboBox;//f330
    Label8:TLabel;//f334
    procedure SpeedButton3Click(Sender:TObject);//005327D0
    procedure SpeedButton4Click(Sender:TObject);//005327C4
    procedure SpeedButton5Click(Sender:TObject);//005327FC
    procedure FormKeyPress(Sender:TObject; var Key:Char);//005327DC
    procedure FormHide(Sender:TObject);//00532434
    procedure FormShow(Sender:TObject);//00532064
    procedure SpeedButton2Click(Sender:TObject);//00532744
    procedure SpeedButton1Click(Sender:TObject);//005326C4
  public
    f338:dword;//f338
    f33C:byte;//f33C
    constructor Create(AOwner: TComponent;Logo:TImage;S:String{; FileName:String});//00531FC0
  end;
  var
   FormNouvelleClasse:TFormNouvelleClasse;
implementation

{$R *.DFM}

//00531FC0
constructor TFormNouvelleClasse.Create(AOwner: TComponent;Logo:TImage;S:String{; FileName:String});
begin
 inherited Create(AOwner);
 Image1.Picture := Logo.Picture;
 Caption := S;
 
{* 00531FC0    push        ebp
 00531FC1    mov         ebp,esp
 00531FC3    push        ebx
 00531FC4    push        esi
 00531FC5    push        edi
 00531FC6    test        dl,dl
>00531FC8    je          00531FD2
 00531FCA    add         esp,0FFFFFFF0
 00531FCD    call        @ClassCreate
 00531FD2    mov         esi,ecx
 00531FD4    mov         ebx,edx
 00531FD6    mov         edi,eax
 00531FD8    mov         eax,dword ptr [ebp+10]
 00531FDB    call        @LStrAddRef
 00531FE0    xor         eax,eax
 00531FE2    push        ebp
 00531FE3    push        53203F
 00531FE8    push        dword ptr fs:[eax]
 00531FEB    mov         dword ptr fs:[eax],esp
 00531FEE    mov         ecx,esi
 00531FF0    xor         edx,edx
 00531FF2    mov         eax,edi
 00531FF4    call        TCustomForm.Create
 00531FF9    mov         eax,dword ptr [ebp+0C]
 00531FFC    mov         edx,dword ptr [eax+128]
 00532002    mov         eax,dword ptr [edi+2E0]
 00532008    call        TImage.SetPicture
 0053200D    mov         eax,dword ptr [ebp+14]
 00532010    mov         dword ptr [edi+338],eax
 00532016    mov         edx,dword ptr [ebp+10]
 00532019    mov         eax,edi
 0053201B    call        TControl.SetText
 00532020    mov         al,byte ptr [ebp+8]
 00532023    mov         byte ptr [edi+33C],al
 00532029    xor         eax,eax
 0053202B    pop         edx
 0053202C    pop         ecx
 0053202D    pop         ecx
 0053202E    mov         dword ptr fs:[eax],edx
 00532031    push        532046
 00532036    lea         eax,[ebp+10]
 00532039    call        @LStrClr
 0053203E    ret
>0053203F    jmp         @HandleFinally
>00532044    jmp         00532036
 00532046    mov         eax,edi
 00532048    test        bl,bl
>0053204A    je          0053205B
 0053204C    call        @AfterConstruction
 00532051    pop         dword ptr fs:[0]
 00532058    add         esp,0C
 0053205B    mov         eax,edi
 0053205D    pop         edi
 0053205E    pop         esi
 0053205F    pop         ebx
 00532060    pop         ebp
 00532061    ret         10*}
end;

//00532064
procedure TFormNouvelleClasse.FormShow(Sender:TObject);
begin
{*
 00532064    push        ebp
 00532065    mov         ebp,esp
 00532067    add         esp,0FFFFFED8
 0053206D    push        ebx
 0053206E    push        esi
 0053206F    xor         ecx,ecx
 00532071    mov         dword ptr [ebp-128],ecx
 00532077    mov         dword ptr [ebp-124],ecx
 0053207D    mov         dword ptr [ebp-120],ecx
 00532083    mov         dword ptr [ebp-11C],ecx
 00532089    mov         dword ptr [ebp-118],ecx
 0053208F    mov         dword ptr [ebp-114],ecx
 00532095    mov         dword ptr [ebp-110],ecx
 0053209B    mov         dword ptr [ebp-10C],ecx
 005320A1    mov         dword ptr [ebp-108],ecx
 005320A7    mov         dword ptr [ebp-4],ecx
 005320AA    mov         ebx,eax
 005320AC    xor         eax,eax
 005320AE    push        ebp
 005320AF    push        532427
 005320B4    push        dword ptr fs:[eax]
 005320B7    mov         dword ptr fs:[eax],esp
 005320BA    mov         esi,dword ptr [ebx+338];TFormNouvelleClasse.?f338:dword
 005320C0    mov         eax,esi
 005320C2    call        004C6680
 005320C7    mov         edx,eax
 005320C9    mov         eax,dword ptr [ebx+31C];TFormNouvelleClasse.ComboBoxUtilisateurs:TComboBox
 005320CF    mov         ecx,dword ptr [eax]
 005320D1    call        dword ptr [ecx+5C];TControl.SetEnabled
 005320D4    mov         eax,esi
 005320D6    call        004C6680
 005320DB    mov         edx,eax
 005320DD    mov         eax,dword ptr [ebx+320];TFormNouvelleClasse.SpeedButton2:TSpeedButton
 005320E3    mov         ecx,dword ptr [eax]
 005320E5    call        dword ptr [ecx+5C];TControl.SetEnabled
 005320E8    mov         eax,esi
 005320EA    call        004C6680
 005320EF    mov         edx,eax
 005320F1    mov         eax,dword ptr [ebx+2E8];TFormNouvelleClasse.EditClasse:TEdit
 005320F7    mov         ecx,dword ptr [eax]
 005320F9    call        dword ptr [ecx+5C];TControl.SetEnabled
 005320FC    mov         eax,esi
 005320FE    call        004C6680
 00532103    mov         edx,eax
 00532105    mov         eax,dword ptr [ebx+2EC];TFormNouvelleClasse.EditEtablissement:TEdit
 0053210B    mov         ecx,dword ptr [eax]
 0053210D    call        dword ptr [ecx+5C];TControl.SetEnabled
 00532110    mov         eax,esi
 00532112    call        004C6680
 00532117    mov         edx,eax
 00532119    mov         eax,dword ptr [ebx+2F8];TFormNouvelleClasse.ComboBoxMatiere:TComboBox
 0053211F    mov         ecx,dword ptr [eax]
 00532121    call        dword ptr [ecx+5C];TControl.SetEnabled
 00532124    mov         eax,esi
 00532126    call        004C6680
 0053212B    mov         edx,eax
 0053212D    mov         eax,dword ptr [ebx+32C];TFormNouvelleClasse.SpeedButton5:TSpeedButton
 00532133    mov         ecx,dword ptr [eax]
 00532135    call        dword ptr [ecx+5C];TControl.SetEnabled
 00532138    mov         eax,esi
 0053213A    call        004C6680
 0053213F    mov         edx,eax
 00532141    mov         eax,dword ptr [ebx+300];TFormNouvelleClasse.EditAnneeScolaire:TEdit
 00532147    mov         ecx,dword ptr [eax]
 00532149    call        dword ptr [ecx+5C];TControl.SetEnabled
 0053214C    mov         esi,dword ptr [ebx+338];TFormNouvelleClasse.?f338:dword
 00532152    lea         edx,[ebp-104]
 00532158    mov         eax,esi
 0053215A    call        004BE8FC
 0053215F    lea         edx,[ebp-104]
 00532165    lea         eax,[ebp-4]
 00532168    call        @LStrFromString
 0053216D    mov         edx,dword ptr [ebp-4]
 00532170    mov         eax,dword ptr [ebx+2E8];TFormNouvelleClasse.EditClasse:TEdit
 00532176    call        TControl.SetText
 0053217B    lea         edx,[ebp-104]
 00532181    mov         eax,esi
 00532183    call        004BE914
 00532188    lea         edx,[ebp-104]
 0053218E    lea         eax,[ebp-108]
 00532194    call        @LStrFromString
 00532199    mov         edx,dword ptr [ebp-108]
 0053219F    mov         eax,dword ptr [ebx+2EC];TFormNouvelleClasse.EditEtablissement:TEdit
 005321A5    call        TControl.SetText
 005321AA    lea         edx,[ebp-104]
 005321B0    mov         eax,esi
 005321B2    call        004BE944
 005321B7    lea         edx,[ebp-104]
 005321BD    lea         eax,[ebp-10C]
 005321C3    call        @LStrFromString
 005321C8    mov         edx,dword ptr [ebp-10C]
 005321CE    mov         eax,dword ptr [ebx+300];TFormNouvelleClasse.EditAnneeScolaire:TEdit
 005321D4    call        TControl.SetText
 005321D9    lea         edx,[ebp-104]
 005321DF    mov         eax,esi
 005321E1    call        004BE95C
 005321E6    lea         edx,[ebp-104]
 005321EC    lea         eax,[ebp-110]
 005321F2    call        @LStrFromString
 005321F7    mov         edx,dword ptr [ebp-110]
 005321FD    mov         eax,dword ptr [ebx+308];TFormNouvelleClasse.EditRemarque:TEdit
 00532203    call        TControl.SetText
 00532208    call        004BC348
 0053220D    mov         edx,eax
 0053220F    mov         eax,dword ptr [ebx+2F8];TFormNouvelleClasse.ComboBoxMatiere:TComboBox
 00532215    call        TCustomComboBox.SetItems
 0053221A    lea         edx,[ebp-104]
 00532220    mov         eax,esi
 00532222    call        004BE92C
 00532227    lea         edx,[ebp-104]
 0053222D    lea         eax,[ebp-114]
 00532233    call        @LStrFromString
 00532238    mov         edx,dword ptr [ebp-114]
 0053223E    mov         eax,dword ptr [ebx+2F8];TFormNouvelleClasse.ComboBoxMatiere:TComboBox
 00532244    call        TControl.SetText
 00532249    cmp         byte ptr [ebx+33C],0;TFormNouvelleClasse.?f33C:byte
>00532250    je          0053227B
 00532252    call        004B9A44
 00532257    mov         edx,eax
 00532259    mov         eax,dword ptr [ebx+310];TFormNouvelleClasse.ComboBoxOrganisationAnnee:TComboBox
 0053225F    call        TCustomComboBox.SetItems
 00532264    call        004BCE80
 00532269    mov         edx,eax
 0053226B    mov         eax,dword ptr [ebx+330];TFormNouvelleClasse.ComboBoxBulletins:TComboBox
 00532271    call        TCustomComboBox.SetItems
>00532276    jmp         00532314
 0053227B    lea         edx,[ebp-104]
 00532281    mov         eax,dword ptr [ebx+338];TFormNouvelleClasse.?f338:dword
 00532287    call        004BE988
 0053228C    lea         edx,[ebp-104]
 00532292    lea         eax,[ebp-118]
 00532298    call        @LStrFromString
 0053229D    mov         edx,dword ptr [ebp-118]
 005322A3    mov         eax,dword ptr [ebx+310];TFormNouvelleClasse.ComboBoxOrganisationAnnee:TComboBox
 005322A9    mov         eax,dword ptr [eax+1F0];TComboBox.FItems:TStrings
 005322AF    mov         ecx,dword ptr [eax]
 005322B1    call        dword ptr [ecx+34];TStrings.Add
 005322B4    xor         edx,edx
 005322B6    mov         eax,dword ptr [ebx+310];TFormNouvelleClasse.ComboBoxOrganisationAnnee:TComboBox
 005322BC    mov         ecx,dword ptr [eax]
 005322BE    call        dword ptr [ecx+5C];TControl.SetEnabled
 005322C1    lea         edx,[ebp-104]
 005322C7    mov         eax,dword ptr [ebx+338];TFormNouvelleClasse.?f338:dword
 005322CD    call        004C8B54
 005322D2    lea         edx,[ebp-104]
 005322D8    lea         eax,[ebp-11C]
 005322DE    call        @LStrFromString
 005322E3    mov         edx,dword ptr [ebp-11C]
 005322E9    mov         eax,dword ptr [ebx+330];TFormNouvelleClasse.ComboBoxBulletins:TComboBox
 005322EF    mov         eax,dword ptr [eax+1F0];TComboBox.FItems:TStrings
 005322F5    mov         ecx,dword ptr [eax]
 005322F7    call        dword ptr [ecx+34];TStrings.Add
 005322FA    xor         edx,edx
 005322FC    mov         eax,dword ptr [ebx+330];TFormNouvelleClasse.ComboBoxBulletins:TComboBox
 00532302    mov         ecx,dword ptr [eax]
 00532304    call        dword ptr [ecx+5C];TControl.SetEnabled
 00532307    xor         edx,edx
 00532309    mov         eax,dword ptr [ebx+314];TFormNouvelleClasse.SpeedButton1:TSpeedButton
 0053230F    mov         ecx,dword ptr [eax]
 00532311    call        dword ptr [ecx+5C];TControl.SetEnabled
 00532314    xor         edx,edx
 00532316    mov         eax,dword ptr [ebx+310];TFormNouvelleClasse.ComboBoxOrganisationAnnee:TComboBox
 0053231C    call        TCustomComboBox.SetItemIndex
 00532321    xor         edx,edx
 00532323    mov         eax,dword ptr [ebx+330];TFormNouvelleClasse.ComboBoxBulletins:TComboBox
 00532329    call        TCustomComboBox.SetItemIndex
 0053232E    call        004982F8
 00532333    mov         edx,eax
 00532335    mov         eax,dword ptr [ebx+31C];TFormNouvelleClasse.ComboBoxUtilisateurs:TComboBox
 0053233B    call        TCustomComboBox.SetItems
 00532340    cmp         byte ptr [ebx+33C],0;TFormNouvelleClasse.?f33C:byte
>00532347    jne         005323F4
 0053234D    mov         esi,dword ptr [ebx+31C];TFormNouvelleClasse.ComboBoxUtilisateurs:TComboBox
 00532353    mov         ebx,dword ptr [ebx+338];TFormNouvelleClasse.?f338:dword
 00532359    lea         edx,[ebp-104]
 0053235F    mov         eax,ebx
 00532361    call        004C3908
 00532366    lea         edx,[ebp-104]
 0053236C    lea         eax,[ebp-120]
 00532372    call        @LStrFromString
 00532377    mov         edx,dword ptr [ebp-120]
 0053237D    mov         eax,dword ptr [esi+1F0];TComboBox.FItems:TStrings
 00532383    mov         ecx,dword ptr [eax]
 00532385    call        dword ptr [ecx+50];TStrings.IndexOf
 00532388    inc         eax
>00532389    jne         005323BA
 0053238B    lea         edx,[ebp-104]
 00532391    mov         eax,ebx
 00532393    call        004C3908
 00532398    lea         edx,[ebp-104]
 0053239E    lea         eax,[ebp-124]
 005323A4    call        @LStrFromString
 005323A9    mov         edx,dword ptr [ebp-124]
 005323AF    mov         eax,dword ptr [esi+1F0];TComboBox.FItems:TStrings
 005323B5    mov         ecx,dword ptr [eax]
 005323B7    call        dword ptr [ecx+34];TStrings.Add
 005323BA    lea         edx,[ebp-104]
 005323C0    mov         eax,ebx
 005323C2    call        004C3908
 005323C7    lea         edx,[ebp-104]
 005323CD    lea         eax,[ebp-128]
 005323D3    call        @LStrFromString
 005323D8    mov         edx,dword ptr [ebp-128]
 005323DE    mov         eax,dword ptr [esi+1F0];TComboBox.FItems:TStrings
 005323E4    mov         ecx,dword ptr [eax]
 005323E6    call        dword ptr [ecx+50];TStrings.IndexOf
 005323E9    mov         edx,eax
 005323EB    mov         eax,esi
 005323ED    call        TCustomComboBox.SetItemIndex
>005323F2    jmp         00532401
 005323F4    xor         edx,edx
 005323F6    mov         eax,dword ptr [ebx+31C];TFormNouvelleClasse.ComboBoxUtilisateurs:TComboBox
 005323FC    call        TCustomComboBox.SetItemIndex
 00532401    xor         eax,eax
 00532403    pop         edx
 00532404    pop         ecx
 00532405    pop         ecx
 00532406    mov         dword ptr fs:[eax],edx
 00532409    push        53242E
 0053240E    lea         eax,[ebp-128]
 00532414    mov         edx,9
 00532419    call        @LStrArrayClr
 0053241E    lea         eax,[ebp-4]
 00532421    call        @LStrClr
 00532426    ret
>00532427    jmp         @HandleFinally
>0053242C    jmp         0053240E
 0053242E    pop         esi
 0053242F    pop         ebx
 00532430    mov         esp,ebp
 00532432    pop         ebp
 00532433    ret
*}
end;

//00532434
procedure TFormNouvelleClasse.FormHide(Sender:TObject);
begin
{*
 00532434    push        ebp
 00532435    mov         ebp,esp
 00532437    add         esp,0FFFFFDE0
 0053243D    push        ebx
 0053243E    push        esi
 0053243F    push        edi
 00532440    xor         ecx,ecx
 00532442    mov         dword ptr [ebp-11C],ecx
 00532448    mov         dword ptr [ebp-220],ecx
 0053244E    mov         dword ptr [ebp-118],ecx
 00532454    mov         dword ptr [ebp-114],ecx
 0053245A    mov         dword ptr [ebp-110],ecx
 00532460    mov         dword ptr [ebp-10C],ecx
 00532466    mov         dword ptr [ebp-108],ecx
 0053246C    mov         dword ptr [ebp-104],ecx
 00532472    mov         ebx,eax
 00532474    xor         eax,eax
 00532476    push        ebp
 00532477    push        5326B5
 0053247C    push        dword ptr fs:[eax]
 0053247F    mov         dword ptr fs:[eax],esp
 00532482    cmp         dword ptr [ebx+234],1;TFormNouvelleClasse.FModalResult:TModalResult
>00532489    jne         00532676
 0053248F    cmp         byte ptr [ebx+33C],0;TFormNouvelleClasse.?f33C:byte
>00532496    je          00532676
 0053249C    mov         esi,dword ptr [ebx+338];TFormNouvelleClasse.?f338:dword
 005324A2    mov         eax,dword ptr [ebx+31C];TFormNouvelleClasse.ComboBoxUtilisateurs:TComboBox
 005324A8    call        TCustomComboBox.GetItemIndex
 005324AD    mov         edx,eax
 005324AF    lea         ecx,[ebp-104]
 005324B5    mov         eax,dword ptr [ebx+31C];TFormNouvelleClasse.ComboBoxUtilisateurs:TComboBox
 005324BB    mov         eax,dword ptr [eax+1F0];TComboBox.FItems:TStrings
 005324C1    mov         edi,dword ptr [eax]
 005324C3    call        dword ptr [edi+0C];TStrings.Get
 005324C6    mov         edx,dword ptr [ebp-104]
 005324CC    lea         eax,[ebp-100]
 005324D2    mov         ecx,0FF
 005324D7    call        @LStrToString
 005324DC    lea         edx,[ebp-100]
 005324E2    mov         eax,esi
 005324E4    call        004C3920
 005324E9    lea         edx,[ebp-108]
 005324EF    mov         eax,dword ptr [ebx+2E8];TFormNouvelleClasse.EditClasse:TEdit
 005324F5    call        TControl.GetText
 005324FA    mov         edx,dword ptr [ebp-108]
 00532500    lea         eax,[ebp-100]
 00532506    mov         ecx,0FF
 0053250B    call        @LStrToString
 00532510    lea         edx,[ebp-100]
 00532516    mov         eax,esi
 00532518    call        004BEFD0
 0053251D    lea         edx,[ebp-10C]
 00532523    mov         eax,dword ptr [ebx+2EC];TFormNouvelleClasse.EditEtablissement:TEdit
 00532529    call        TControl.GetText
 0053252E    mov         edx,dword ptr [ebp-10C]
 00532534    lea         eax,[ebp-100]
 0053253A    mov         ecx,0FF
 0053253F    call        @LStrToString
 00532544    lea         edx,[ebp-100]
 0053254A    mov         eax,esi
 0053254C    call        004BF004
 00532551    lea         edx,[ebp-110]
 00532557    mov         eax,dword ptr [ebx+308];TFormNouvelleClasse.EditRemarque:TEdit
 0053255D    call        TControl.GetText
 00532562    mov         edx,dword ptr [ebp-110]
 00532568    lea         eax,[ebp-100]
 0053256E    mov         ecx,0FF
 00532573    call        @LStrToString
 00532578    lea         edx,[ebp-100]
 0053257E    mov         eax,esi
 00532580    call        004BF0A0
 00532585    lea         edx,[ebp-114]
 0053258B    mov         eax,dword ptr [ebx+300];TFormNouvelleClasse.EditAnneeScolaire:TEdit
 00532591    call        TControl.GetText
 00532596    mov         edx,dword ptr [ebp-114]
 0053259C    lea         eax,[ebp-100]
 005325A2    mov         ecx,0FF
 005325A7    call        @LStrToString
 005325AC    lea         edx,[ebp-100]
 005325B2    mov         eax,esi
 005325B4    call        004BF06C
 005325B9    lea         edx,[ebp-118]
 005325BF    mov         eax,dword ptr [ebx+2F8];TFormNouvelleClasse.ComboBoxMatiere:TComboBox
 005325C5    call        TControl.GetText
 005325CA    mov         edx,dword ptr [ebp-118]
 005325D0    lea         eax,[ebp-100]
 005325D6    mov         ecx,0FF
 005325DB    call        @LStrToString
 005325E0    lea         edx,[ebp-100]
 005325E6    mov         eax,esi
 005325E8    call        004BF038
 005325ED    mov         eax,dword ptr [ebx+330];TFormNouvelleClasse.ComboBoxBulletins:TComboBox
 005325F3    call        TCustomComboBox.GetItemIndex
 005325F8    mov         edx,eax
 005325FA    lea         ecx,[ebp-11C]
 00532600    mov         eax,dword ptr [ebx+330];TFormNouvelleClasse.ComboBoxBulletins:TComboBox
 00532606    mov         eax,dword ptr [eax+1F0];TComboBox.FItems:TStrings
 0053260C    mov         edi,dword ptr [eax]
 0053260E    call        dword ptr [edi+0C];TStrings.Get
 00532611    mov         edx,dword ptr [ebp-11C]
 00532617    lea         eax,[ebp-100]
 0053261D    mov         ecx,0FF
 00532622    call        @LStrToString
 00532627    lea         eax,[ebp-100]
 0053262D    push        eax
 0053262E    mov         eax,dword ptr [ebx+310];TFormNouvelleClasse.ComboBoxOrganisationAnnee:TComboBox
 00532634    call        TCustomComboBox.GetItemIndex
 00532639    mov         edx,eax
 0053263B    lea         ecx,[ebp-220]
 00532641    mov         eax,dword ptr [ebx+310];TFormNouvelleClasse.ComboBoxOrganisationAnnee:TComboBox
 00532647    mov         eax,dword ptr [eax+1F0];TComboBox.FItems:TStrings
 0053264D    mov         ebx,dword ptr [eax]
 0053264F    call        dword ptr [ebx+0C];TStrings.Get
 00532652    mov         edx,dword ptr [ebp-220]
 00532658    lea         eax,[ebp-21C]
 0053265E    mov         ecx,0FF
 00532663    call        @LStrToString
 00532668    lea         edx,[ebp-21C]
 0053266E    mov         eax,esi
 00532670    pop         ecx
 00532671    call        004BF258
 00532676    xor         eax,eax
 00532678    pop         edx
 00532679    pop         ecx
 0053267A    pop         ecx
 0053267B    mov         dword ptr fs:[eax],edx
 0053267E    push        5326BC
 00532683    lea         eax,[ebp-220]
 00532689    call        @LStrClr
 0053268E    lea         eax,[ebp-11C]
 00532694    call        @LStrClr
 00532699    lea         eax,[ebp-118]
 0053269F    mov         edx,5
 005326A4    call        @LStrArrayClr
 005326A9    lea         eax,[ebp-104]
 005326AF    call        @LStrClr
 005326B4    ret
>005326B5    jmp         @HandleFinally
>005326BA    jmp         00532683
 005326BC    pop         edi
 005326BD    pop         esi
 005326BE    pop         ebx
 005326BF    mov         esp,ebp
 005326C1    pop         ebp
 005326C2    ret
*}
end;

//005326C4
procedure TFormNouvelleClasse.SpeedButton1Click(Sender:TObject);
begin
{*
 005326C4    push        ebx
 005326C5    mov         ebx,eax
 005326C7    mov         eax,dword ptr [ebx+2E0];TFormNouvelleClasse.Image1:TImage
 005326CD    push        eax
 005326CE    mov         ecx,ebx
 005326D0    mov         dl,1
 005326D2    mov         eax,[00502EAC];TFormOptions
 005326D7    call        TFormOptions.Create;TFormOptions.Create
 005326DC    mov         edx,dword ptr ds:[615EFC];^gvar_00617D64:TFormOptions
 005326E2    mov         dword ptr [edx],eax
 005326E4    mov         eax,[00615EFC];^gvar_00617D64:TFormOptions
 005326E9    mov         eax,dword ptr [eax]
 005326EB    mov         edx,dword ptr [eax+33C]
 005326F1    mov         eax,[00615EFC];^gvar_00617D64:TFormOptions
 005326F6    mov         eax,dword ptr [eax]
 005326F8    mov         eax,dword ptr [eax+2DC]
 005326FE    call        TPageControl.SetActivePage
 00532703    mov         eax,[00615EFC];^gvar_00617D64:TFormOptions
 00532708    mov         eax,dword ptr [eax]
 0053270A    mov         edx,dword ptr [eax]
 0053270C    call        dword ptr [edx+0D8]
 00532712    mov         eax,[00615EFC];^gvar_00617D64:TFormOptions
 00532717    mov         eax,dword ptr [eax]
 00532719    mov         dl,1
 0053271B    mov         ecx,dword ptr [eax]
 0053271D    call        dword ptr [ecx-4]
 00532720    call        004B9A44
 00532725    mov         edx,eax
 00532727    mov         eax,dword ptr [ebx+310];TFormNouvelleClasse.ComboBoxOrganisationAnnee:TComboBox
 0053272D    call        TCustomComboBox.SetItems
 00532732    xor         edx,edx
 00532734    mov         eax,dword ptr [ebx+310];TFormNouvelleClasse.ComboBoxOrganisationAnnee:TComboBox
 0053273A    call        TCustomComboBox.SetItemIndex
 0053273F    pop         ebx
 00532740    ret
*}
end;

//00532744
procedure TFormNouvelleClasse.SpeedButton2Click(Sender:TObject);
begin
{*
 00532744    push        ebx
 00532745    mov         ebx,eax
 00532747    mov         eax,dword ptr [ebx+2E0];TFormNouvelleClasse.Image1:TImage
 0053274D    push        eax
 0053274E    mov         ecx,ebx
 00532750    mov         dl,1
 00532752    mov         eax,[00502EAC];TFormOptions
 00532757    call        TFormOptions.Create;TFormOptions.Create
 0053275C    mov         edx,dword ptr ds:[615EFC];^gvar_00617D64:TFormOptions
 00532762    mov         dword ptr [edx],eax
 00532764    mov         eax,[00615EFC];^gvar_00617D64:TFormOptions
 00532769    mov         eax,dword ptr [eax]
 0053276B    mov         edx,dword ptr [eax+328]
 00532771    mov         eax,[00615EFC];^gvar_00617D64:TFormOptions
 00532776    mov         eax,dword ptr [eax]
 00532778    mov         eax,dword ptr [eax+2DC]
 0053277E    call        TPageControl.SetActivePage
 00532783    mov         eax,[00615EFC];^gvar_00617D64:TFormOptions
 00532788    mov         eax,dword ptr [eax]
 0053278A    mov         edx,dword ptr [eax]
 0053278C    call        dword ptr [edx+0D8]
 00532792    mov         eax,[00615EFC];^gvar_00617D64:TFormOptions
 00532797    mov         eax,dword ptr [eax]
 00532799    mov         dl,1
 0053279B    mov         ecx,dword ptr [eax]
 0053279D    call        dword ptr [ecx-4]
 005327A0    call        004982F8
 005327A5    mov         edx,eax
 005327A7    mov         eax,dword ptr [ebx+31C];TFormNouvelleClasse.ComboBoxUtilisateurs:TComboBox
 005327AD    call        TCustomComboBox.SetItems
 005327B2    xor         edx,edx
 005327B4    mov         eax,dword ptr [ebx+31C];TFormNouvelleClasse.ComboBoxUtilisateurs:TComboBox
 005327BA    call        TCustomComboBox.SetItemIndex
 005327BF    pop         ebx
 005327C0    ret
*}
end;

//005327C4
procedure TFormNouvelleClasse.SpeedButton4Click(Sender:TObject);
begin
 ModalResult := 2;
end;

//005327D0
procedure TFormNouvelleClasse.SpeedButton3Click(Sender:TObject);
begin
 ModalResult := 1;
end;

//005327DC
procedure TFormNouvelleClasse.FormKeyPress(Sender:TObject; var Key:Char);
begin
{*
 005327DC    cmp         byte ptr [ecx],0D
>005327DF    jne         005327EC
 005327E1    mov         dword ptr [eax+234],1;TFormNouvelleClasse.FModalResult:TModalResult
 005327EB    ret
 005327EC    cmp         byte ptr [ecx],1B
>005327EF    jne         005327FB
 005327F1    mov         dword ptr [eax+234],2;TFormNouvelleClasse.FModalResult:TModalResult
 005327FB    ret
*}
end;

//005327FC
procedure TFormNouvelleClasse.SpeedButton5Click(Sender:TObject);
begin
{*
 005327FC    push        ebx
 005327FD    mov         ebx,eax
 005327FF    mov         eax,dword ptr [ebx+2E0];TFormNouvelleClasse.Image1:TImage
 00532805    push        eax
 00532806    mov         ecx,ebx
 00532808    mov         dl,1
 0053280A    mov         eax,[00502EAC];TFormOptions
 0053280F    call        TFormOptions.Create;TFormOptions.Create
 00532814    mov         edx,dword ptr ds:[615EFC];^gvar_00617D64:TFormOptions
 0053281A    mov         dword ptr [edx],eax
 0053281C    mov         eax,[00615EFC];^gvar_00617D64:TFormOptions
 00532821    mov         eax,dword ptr [eax]
 00532823    mov         edx,dword ptr [eax+568]
 00532829    mov         eax,[00615EFC];^gvar_00617D64:TFormOptions
 0053282E    mov         eax,dword ptr [eax]
 00532830    mov         eax,dword ptr [eax+2DC]
 00532836    call        TPageControl.SetActivePage
 0053283B    mov         eax,[00615EFC];^gvar_00617D64:TFormOptions
 00532840    mov         eax,dword ptr [eax]
 00532842    mov         edx,dword ptr [eax]
 00532844    call        dword ptr [edx+0D8]
 0053284A    mov         eax,[00615EFC];^gvar_00617D64:TFormOptions
 0053284F    mov         eax,dword ptr [eax]
 00532851    mov         dl,1
 00532853    mov         ecx,dword ptr [eax]
 00532855    call        dword ptr [ecx-4]
 00532858    call        004BC348
 0053285D    mov         edx,eax
 0053285F    mov         eax,dword ptr [ebx+2F8];TFormNouvelleClasse.ComboBoxMatiere:TComboBox
 00532865    call        TCustomComboBox.SetItems
 0053286A    pop         ebx
 0053286B    ret
*}
end;

end.