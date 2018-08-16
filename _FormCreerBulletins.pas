{***************************************
* Version Original V0.01
* Decompiled by HOUIDEF AEK v.05.02.2018
***************************************}
unit _FormCreerBulletins;

interface

uses
Forms, Windows,  SysUtils, Classes, ExtCtrls, StdCtrls, FileCtrl, Buttons, CheckLst, frxClass, frxCross, ExtDlgs, frxExportPDF, frxExportRTF,
controls,URegistry;

type
  TFormCreerBulletins = class(TForm)
  published
    Notebook1:TNotebook;//f2D0
    Label1:TLabel;//f2D4
    Label2:TLabel;//f2D8
    DriveComboBox1:TDriveComboBox;//f2DC
    DirectoryListBox1:TDirectoryListBox;//f2E0
    FileListBox1:TFileListBox;//f2E4
    SpeedButton1:TSpeedButton;//f2E8
    ListBoxFichiers:TListBox;//f2EC
    SpeedButton2:TSpeedButton;//f2F0
    CheckListBoxEleves:TCheckListBox;//f2F4
    Label3:TLabel;//f2F8
    SpeedButton20:TSpeedButton;//f2FC
    SpeedButton21:TSpeedButton;//f300
    SpeedButton4:TSpeedButton;//f304
    ListBoxMatieres:TListBox;//f308
    Label5:TLabel;//f30C
    SpeedButton7:TSpeedButton;//f310
    SpeedButton8:TSpeedButton;//f314
    Panel1:TPanel;//f318
    SpeedButtonFermer:TSpeedButton;//f31C
    SpeedButtonPrecedent:TSpeedButton;//f320
    SpeedButtonSuivant:TSpeedButton;//f324
    SpeedButtonCreerBulletins:TSpeedButton;//f328
    Label6:TLabel;//f32C
    frxReport1:TfrxReport;//f330
    frxCrossObject1:TfrxCrossObject;//f334
    frxUserDataSet1:TfrxUserDataSet;//f338
    RadioGroup1:TRadioGroup;//f33C
    Label8:TLabel;//f340
    CheckBoxInclureAppreciation:TCheckBox;//f344
    CheckBoxInclureEnseignant:TCheckBox;//f348
    Label4:TLabel;//f34C
    EditEtablissement:TEdit;//f350
    Label7:TLabel;//f354
    EditAnneeScolaire:TEdit;//f358
    Label9:TLabel;//f35C
    EditNomPeriode:TEdit;//f360
    Label10:TLabel;//f364
    EditIntituleCadre:TEdit;//f368
    OpenPictureDialog1:TOpenPictureDialog;//f36C
    SpeedButton5:TSpeedButton;//f370
    SpeedButton6:TSpeedButton;//f374
    Panel2:TPanel;//f378
    ImageLogo:TImage;//f37C
    Image1:TImage;//f380
    frxPDFExport1:TfrxPDFExport;//f384
    frxRTFExport1:TfrxRTFExport;//f388
    SpeedButtonAide:TSpeedButton;//f38C
    CheckBox1:TCheckBox;//f390
    procedure SpeedButton8Click(Sender:TObject);//006097A8
    procedure FormKeyPress(Sender:TObject; var Key:Char);//00609828
    procedure FormShow(Sender:TObject);//00609838
    procedure SpeedButton7Click(Sender:TObject);//00609744
    procedure CheckListBoxElevesDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);//00609258
    procedure ListBoxMatieresDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);//006093FC
    procedure ListBoxFichiersDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);//006095A0
    procedure SpeedButton6Click(Sender:TObject);//0060A6FC
    procedure SpeedButtonAideClick(Sender:TObject);//0060A724
    procedure CheckBox1Click(Sender:TObject);//0060A994
    procedure SpeedButton5Click(Sender:TObject);//0060A664
    procedure frxReport1BeforePrint(c: TfrxReportComponent);//00609A30
    procedure frxReport1GetValue(VarName: String; var Value: Variant);//0060A3B4
    procedure RadioGroup1Click(Sender:TObject);//0060A590
    procedure SpeedButtonFermerClick(Sender:TObject);//00608878
    procedure FormHide(Sender:TObject);//00608880
    procedure SpeedButton2Click(Sender:TObject);//0060899C
    procedure SpeedButtonCreerBulletinsClick(Sender:TObject);//006087E8
    procedure DriveComboBox1Change(Sender:TObject);//0060749C
    procedure DirectoryListBox1Change(Sender:TObject);//006074B4
    procedure FileListBox1DblClick(Sender:TObject);//00607E04
    procedure SpeedButton21Click(Sender:TObject);//00609108
    procedure CheckListBoxElevesClickCheck(Sender:TObject);//00609158
    procedure SpeedButton4Click(Sender:TObject);//006091CC
    procedure SpeedButton20Click(Sender:TObject);//006090A4
    procedure SpeedButtonPrecedentClick(Sender:TObject);//00608A74
    procedure SpeedButtonSuivantClick(Sender:TObject);//00608BB0
    procedure Notebook1PageChanged(Sender:TObject);//00608D14
  public
    f394:dword;//f394
    f398:dword;//f398
    f39C:dword;//f39C
    //f3A0:TFichierCdn;//f3A0
    f3A4:TStringList;//f3A4
    f3A8:TStringList;//f3A8
    f3AC:TStringList;//f3AC
    f3B0:TStringList;//f3B0
    //f3B4:.2;//f3B4
    f3B8:TStringList;//f3B8
    f3BC:TStringList;//f3BC
    f3C0:TStringList;//f3C0
    f3C4:TStringList;//f3C4
    f3C8:TStringList;//f3C8
    f3CC:dword;//f3CC
    f3D4:String;//f3D4
    f3D8:String;//f3D8
    f3DC:String;//f3DC
    constructor Create(Owner:TComponent);//006072E8
	procedure sub_006074D0(Y:AnsiString);//006074D0
    procedure sub_00607EE4;//00607EE4
    procedure sub_00608214;//00608214
  end;
  var
    FormCreerBulletins:TFormCreerBulletins;

implementation

{$R *.DFM}

//006072E8
constructor TFormCreerBulletins.Create(Owner:TComponent);
var
  Buf:String;
begin//0
  //006072E8

    //00607332

    inherited Create(Owner);
    sub_0049782C(buf);
    DriveComboBox1.Drive := ExtractFileDrive(buf)[1]; //?????
    sub_0049782C(buf);
    DirectoryListBox1.Directory := buf;
    f3A4 := TStringList.Create;
    Caption := 'Créer les bulletins des élèves  --> étape 1 : ' + Notebook1.Pages[0];
end;//0

//0060749C
procedure TFormCreerBulletins.DriveComboBox1Change;
begin
{*
 0060749C    mov         edx,dword ptr [eax+2DC];TFormCreerBulletins.DriveComboBox1:TDriveComboBox
 006074A2    mov         dl,byte ptr [edx+254];TDriveComboBox.FDrive:Char
 006074A8    mov         eax,dword ptr [eax+2E0];TFormCreerBulletins.DirectoryListBox1:TDirectoryListBox
 006074AE    call        TDirectoryListBox.SetDrive
 006074B3    ret
*}
end;

//006074B4
procedure TFormCreerBulletins.DirectoryListBox1Change;
begin
{*
 006074B4    mov         edx,dword ptr [eax+2E0];TFormCreerBulletins.DirectoryListBox1:TDirectoryListBox
 006074BA    mov         edx,dword ptr [edx+254];TDirectoryListBox.FDirectory:String
 006074C0    mov         eax,dword ptr [eax+2E4];TFormCreerBulletins.FileListBox1:TFileListBox
 006074C6    mov         ecx,dword ptr [eax]
 006074C8    call        dword ptr [ecx+0CC];TFileListBox.ApplyFilePath
 006074CE    ret
*}
end;

//006074D0
procedure TFormCreerBulletins.sub_006074D0( Y:AnsiString);
begin
{*
 006074D0    push        ebp
 006074D1    mov         ebp,esp
 006074D3    mov         ecx,2B
 006074D8    push        0
 006074DA    push        0
 006074DC    dec         ecx
>006074DD    jne         006074D8
 006074DF    push        ebx
 006074E0    push        esi
 006074E1    push        edi
 006074E2    mov         dword ptr [ebp-4],edx
 006074E5    mov         esi,eax
 006074E7    mov         eax,dword ptr [ebp-4]
 006074EA    call        @LStrAddRef
 006074EF    xor         eax,eax
 006074F1    push        ebp
 006074F2    push        607AA6
 006074F7    push        dword ptr fs:[eax]
 006074FA    mov         dword ptr fs:[eax],esp
 006074FD    push        1
 006074FF    push        0
 00607501    push        1
 00607503    mov         ecx,dword ptr [ebp-4]
 00607506    mov         dl,1
 00607508    mov         eax,[004BE574];TFichierCdn
 0060750D    call        TFichierCdn.Create;TFichierCdn.Create
 00607512    mov         ebx,eax
 00607514    cmp         byte ptr [ebx+948],0;TFichierCdn.?f948:byte
>0060751B    je          00607A21
 00607521    cmp         byte ptr [ebx+949],0;TFichierCdn.?f949:byte
>00607528    jne         00607986
 0060752E    mov         eax,ebx
 00607530    call        004BEA58
 00607535    mov         edi,eax
 00607537    and         edi,0FF
 0060753D    mov         eax,ebx
 0060753F    call        004BE9E0
 00607544    and         eax,0FF
 00607549    mov         dword ptr [ebp-8],eax
 0060754C    test        edi,edi
>0060754E    je          0060791A
 00607554    mov         eax,dword ptr [esi+2EC]
 0060755A    mov         eax,dword ptr [eax+1F0]
 00607560    mov         edx,dword ptr [eax]
 00607562    call        dword ptr [edx+14]
 00607565    test        eax,eax
>00607567    jne         0060771E
 0060756D    mov         eax,dword ptr [esi+3A8]
 00607573    mov         edx,dword ptr [eax]
 00607575    call        dword ptr [edx+40]
 00607578    mov         eax,ebx
 0060757A    call        004BEAC4
 0060757F    mov         edx,eax
 00607581    mov         eax,dword ptr [esi+3A8]
 00607587    mov         ecx,dword ptr [eax]
 00607589    call        dword ptr [ecx+3C]
 0060758C    mov         eax,dword ptr [esi+3C8]
 00607592    mov         edx,dword ptr [eax]
 00607594    call        dword ptr [edx+40]
 00607597    mov         eax,ebx
 00607599    call        004BEA4C
 0060759E    mov         edx,eax
 006075A0    mov         eax,dword ptr [esi+3C8]
 006075A6    mov         ecx,dword ptr [eax]
 006075A8    call        dword ptr [ecx+3C]
 006075AB    mov         eax,dword ptr [esi+3B0]
 006075B1    mov         edx,dword ptr [eax]
 006075B3    call        dword ptr [edx+40]
 006075B6    mov         eax,ebx
 006075B8    call        004C8BAC
 006075BD    mov         edx,eax
 006075BF    mov         eax,dword ptr [esi+3B0]
 006075C5    mov         ecx,dword ptr [eax]
 006075C7    call        dword ptr [ecx+3C]
 006075CA    mov         eax,dword ptr [esi+2EC]
 006075D0    mov         eax,dword ptr [eax+1F0]
 006075D6    mov         edx,dword ptr [ebp-4]
 006075D9    mov         ecx,dword ptr [eax]
 006075DB    call        dword ptr [ecx+34]
 006075DE    lea         edx,[ebp-10C]
 006075E4    mov         eax,ebx
 006075E6    call        004BE92C
 006075EB    lea         edx,[ebp-10C]
 006075F1    lea         eax,[ebp-0C]
 006075F4    call        @LStrFromString
 006075F9    mov         edx,dword ptr [ebp-0C]
 006075FC    mov         eax,dword ptr [esi+308]
 00607602    mov         eax,dword ptr [eax+1F0]
 00607608    mov         ecx,dword ptr [eax]
 0060760A    call        dword ptr [ecx+34]
 0060760D    mov         eax,dword ptr [esi+2E4]
 00607613    call        TCustomListBox.GetItemIndex
 00607618    mov         edx,eax
 0060761A    add         edx,1
>0060761D    jno         00607624
 0060761F    call        @IntOver
 00607624    mov         eax,dword ptr [esi+2E4]
 0060762A    call        TCustomListBox.SetItemIndex
 0060762F    mov         dword ptr [esi+398],edi
 00607635    mov         eax,dword ptr [ebp-8]
 00607638    mov         dword ptr [esi+39C],eax
 0060763E    mov         eax,ebx
 00607640    call        004C8AE8
 00607645    and         eax,0FF
 0060764A    mov         dword ptr [esi+394],eax
 00607650    mov         eax,ebx
 00607652    call        004C8BAC
 00607657    mov         edx,eax
 00607659    mov         eax,dword ptr [esi+3A4]
 0060765F    mov         ecx,dword ptr [eax]
 00607661    call        dword ptr [ecx+3C]
 00607664    lea         edx,[ebp-114]
 0060766A    mov         eax,dword ptr [esi+398]
 00607670    call        IntToStr
 00607675    mov         ecx,dword ptr [ebp-114]
 0060767B    lea         eax,[ebp-110]
 00607681    mov         edx,607ABC;'Elèves : '
 00607686    call        @LStrCat3
 0060768B    mov         edx,dword ptr [ebp-110]
 00607691    mov         eax,dword ptr [esi+2D4]
 00607697    call        TControl.SetText
 0060769C    lea         edx,[ebp-11C]
 006076A2    mov         eax,dword ptr [esi+39C]
 006076A8    call        IntToStr
 006076AD    mov         ecx,dword ptr [ebp-11C]
 006076B3    lea         eax,[ebp-118]
 006076B9    mov         edx,607AD0;'Périodes : '
 006076BE    call        @LStrCat3
 006076C3    mov         edx,dword ptr [ebp-118]
 006076C9    mov         eax,dword ptr [esi+2D8]
 006076CF    call        TControl.SetText
 006076D4    lea         edx,[ebp-10C]
 006076DA    mov         eax,ebx
 006076DC    call        004C8B54
 006076E1    lea         edx,[ebp-10C]
 006076E7    lea         eax,[ebp-124]
 006076ED    call        @LStrFromString
 006076F2    mov         ecx,dword ptr [ebp-124]
 006076F8    lea         eax,[ebp-120]
 006076FE    mov         edx,607AE4;'Type de bulletins : '
 00607703    call        @LStrCat3
 00607708    mov         edx,dword ptr [ebp-120]
 0060770E    mov         eax,dword ptr [esi+32C]
 00607714    call        TControl.SetText
>00607719    jmp         00607A6F
 0060771E    mov         eax,ebx
 00607720    call        004BEAC4
 00607725    mov         edx,dword ptr [esi+3A8]
 0060772B    call        00497B4C
 00607730    test        al,al
>00607732    je          006078AE
 00607738    mov         eax,ebx
 0060773A    call        004BEA4C
 0060773F    mov         edx,dword ptr [esi+3C8]
 00607745    call        00497B4C
 0060774A    test        al,al
>0060774C    je          00607842
 00607752    mov         eax,ebx
 00607754    call        004C8BAC
 00607759    mov         edx,dword ptr [esi+3B0]
 0060775F    call        00497B4C
 00607764    test        al,al
>00607766    je          006077D6
 00607768    mov         eax,dword ptr [esi+2EC]
 0060776E    mov         eax,dword ptr [eax+1F0]
 00607774    mov         edx,dword ptr [ebp-4]
 00607777    mov         ecx,dword ptr [eax]
 00607779    call        dword ptr [ecx+34]
 0060777C    lea         edx,[ebp-10C]
 00607782    mov         eax,ebx
 00607784    call        004BE92C
 00607789    lea         edx,[ebp-10C]
 0060778F    lea         eax,[ebp-128]
 00607795    call        @LStrFromString
 0060779A    mov         edx,dword ptr [ebp-128]
 006077A0    mov         eax,dword ptr [esi+308]
 006077A6    mov         eax,dword ptr [eax+1F0]
 006077AC    mov         ecx,dword ptr [eax]
 006077AE    call        dword ptr [ecx+34]
 006077B1    mov         edi,dword ptr [esi+2E4]
 006077B7    mov         eax,edi
 006077B9    call        TCustomListBox.GetItemIndex
 006077BE    mov         edx,eax
 006077C0    add         edx,1
>006077C3    jno         006077CA
 006077C5    call        @IntOver
 006077CA    mov         eax,edi
 006077CC    call        TCustomListBox.SetItemIndex
>006077D1    jmp         00607A6F
 006077D6    push        10
 006077D8    push        607AFC
 006077DD    push        607B28;'Le fichier "'
 006077E2    lea         edx,[ebp-130]
 006077E8    mov         eax,dword ptr [ebp-4]
 006077EB    call        ExtractFileName
 006077F0    push        dword ptr [ebp-130]
 006077F6    push        607B40;'" n'a pas le même type de bulletins que les autres fichiers.'
 006077FB    push        607B88;#13
 00607800    push        607B94;#10
 00607805    push        607B88;#13
 0060780A    push        607B94;#10
 0060780F    push        607BA0;'Ce fichier ne peut être ajouté pour la création des bulletins.'
 00607814    lea         eax,[ebp-12C]
 0060781A    mov         edx,8
 0060781F    call        @LStrCatN
 00607824    mov         eax,dword ptr [ebp-12C]
 0060782A    call        @LStrToPChar
 0060782F    push        eax
 00607830    mov         eax,esi
 00607832    call        TWinControl.GetHandle
 00607837    push        eax
 00607838    call        user32.MessageBoxA
>0060783D    jmp         00607A6F
 00607842    push        10
 00607844    push        607AFC
 00607849    push        607B28;'Le fichier "'
 0060784E    lea         edx,[ebp-138]
 00607854    mov         eax,dword ptr [ebp-4]
 00607857    call        ExtractFileName
 0060785C    push        dword ptr [ebp-138]
 00607862    push        607BE8;'" n'a pas le même type de périodes que les autres fichiers.'
 00607867    push        607B88;#13
 0060786C    push        607B94;#10
 00607871    push        607B88;#13
 00607876    push        607B94;#10
 0060787B    push        607BA0;'Ce fichier ne peut être ajouté pour la création des bulletins.'
 00607880    lea         eax,[ebp-134]
 00607886    mov         edx,8
 0060788B    call        @LStrCatN
 00607890    mov         eax,dword ptr [ebp-134]
 00607896    call        @LStrToPChar
 0060789B    push        eax
 0060789C    mov         eax,esi
 0060789E    call        TWinControl.GetHandle
 006078A3    push        eax
 006078A4    call        user32.MessageBoxA
>006078A9    jmp         00607A6F
 006078AE    push        10
 006078B0    push        607AFC
 006078B5    push        607B28;'Le fichier "'
 006078BA    lea         edx,[ebp-140]
 006078C0    mov         eax,dword ptr [ebp-4]
 006078C3    call        ExtractFileName
 006078C8    push        dword ptr [ebp-140]
 006078CE    push        607C2C;'" n'a pas la même liste d'élèves que les autres fichiers.'
 006078D3    push        607B88;#13
 006078D8    push        607B94;#10
 006078DD    push        607B88;#13
 006078E2    push        607B94;#10
 006078E7    push        607BA0;'Ce fichier ne peut être ajouté pour la création des bulletins.'
 006078EC    lea         eax,[ebp-13C]
 006078F2    mov         edx,8
 006078F7    call        @LStrCatN
 006078FC    mov         eax,dword ptr [ebp-13C]
 00607902    call        @LStrToPChar
 00607907    push        eax
 00607908    mov         eax,esi
 0060790A    call        TWinControl.GetHandle
 0060790F    push        eax
 00607910    call        user32.MessageBoxA
>00607915    jmp         00607A6F
 0060791A    push        10
 0060791C    push        607AFC
 00607921    push        607B28;'Le fichier "'
 00607926    lea         edx,[ebp-148]
 0060792C    mov         eax,dword ptr [ebp-4]
 0060792F    call        ExtractFileName
 00607934    push        dword ptr [ebp-148]
 0060793A    push        607C70;'" ne contient aucun élève.'
 0060793F    push        607B88;#13
 00607944    push        607B94;#10
 00607949    push        607B88;#13
 0060794E    push        607B94;#10
 00607953    push        607BA0;'Ce fichier ne peut être ajouté pour la création des bulletins.'
 00607958    lea         eax,[ebp-144]
 0060795E    mov         edx,8
 00607963    call        @LStrCatN
 00607968    mov         eax,dword ptr [ebp-144]
 0060796E    call        @LStrToPChar
 00607973    push        eax
 00607974    mov         eax,esi
 00607976    call        TWinControl.GetHandle
 0060797B    push        eax
 0060797C    call        user32.MessageBoxA
>00607981    jmp         00607A6F
 00607986    push        10
 00607988    push        607AFC
 0060798D    push        607B28;'Le fichier "'
 00607992    lea         edx,[ebp-150]
 00607998    mov         eax,dword ptr [ebp-4]
 0060799B    call        ExtractFileName
 006079A0    push        dword ptr [ebp-150]
 006079A6    push        607C94;'" est un fichier d'une ancienne version Carnet de Notes.'
 006079AB    push        607B88;#13
 006079B0    push        607B94;#10
 006079B5    push        607B88;#13
 006079BA    push        607B94;#10
 006079BF    push        607CD8;'La création des bulletins n'est pas possible directement avec ce type de fichier...
 006079C4    push        607B88;#13
 006079C9    push        607B94;#10
 006079CE    push        607B88;#13
 006079D3    push        607B94;#10
 006079D8    push        607D34;'Vous devez l'ouvrir normalement puis l'enregistrer pour qu'il soit traduit au no...
 006079DD    push        607B88;#13
 006079E2    push        607B94;#10
 006079E7    push        607B88;#13
 006079EC    push        607B94;#10
 006079F1    push        607D9C;'La création des bulletins sera alors possible.'
 006079F6    lea         eax,[ebp-14C]
 006079FC    mov         edx,12
 00607A01    call        @LStrCatN
 00607A06    mov         eax,dword ptr [ebp-14C]
 00607A0C    call        @LStrToPChar
 00607A11    push        eax
 00607A12    mov         eax,esi
 00607A14    call        TWinControl.GetHandle
 00607A19    push        eax
 00607A1A    call        user32.MessageBoxA
>00607A1F    jmp         00607A6F
 00607A21    push        10
 00607A23    push        607AFC
 00607A28    push        607B28;'Le fichier "'
 00607A2D    lea         edx,[ebp-158]
 00607A33    mov         eax,dword ptr [ebp-4]
 00607A36    call        ExtractFileName
 00607A3B    push        dword ptr [ebp-158]
 00607A41    push        607DD4;'" n'est pas un fichier Carnet de Notes valide.'
 00607A46    lea         eax,[ebp-154]
 00607A4C    mov         edx,3
 00607A51    call        @LStrCatN
 00607A56    mov         eax,dword ptr [ebp-154]
 00607A5C    call        @LStrToPChar
 00607A61    push        eax
 00607A62    mov         eax,esi
 00607A64    call        TWinControl.GetHandle
 00607A69    push        eax
 00607A6A    call        user32.MessageBoxA
 00607A6F    mov         dl,1
 00607A71    mov         eax,ebx
 00607A73    mov         ecx,dword ptr [eax]
 00607A75    call        dword ptr [ecx-4]
 00607A78    xor         eax,eax
 00607A7A    pop         edx
 00607A7B    pop         ecx
 00607A7C    pop         ecx
 00607A7D    mov         dword ptr fs:[eax],edx
 00607A80    push        607AAD
 00607A85    lea         eax,[ebp-158]
 00607A8B    mov         edx,13
 00607A90    call        @LStrArrayClr
 00607A95    lea         eax,[ebp-0C]
 00607A98    call        @LStrClr
 00607A9D    lea         eax,[ebp-4]
 00607AA0    call        @LStrClr
 00607AA5    ret
>00607AA6    jmp         @HandleFinally
>00607AAB    jmp         00607A85
 00607AAD    pop         edi
 00607AAE    pop         esi
 00607AAF    pop         ebx
 00607AB0    mov         esp,ebp
 00607AB2    pop         ebp
 00607AB3    ret
*}
end;

//00607E04
procedure TFormCreerBulletins.FileListBox1DblClick(Sender:TObject);
begin
{*
 00607E04    push        ebp
 00607E05    mov         ebp,esp
 00607E07    push        0
 00607E09    push        0
 00607E0B    push        ebx
 00607E0C    push        esi
 00607E0D    mov         ebx,eax
 00607E0F    xor         eax,eax
 00607E11    push        ebp
 00607E12    push        607ECA
 00607E17    push        dword ptr fs:[eax]
 00607E1A    mov         dword ptr fs:[eax],esp
 00607E1D    mov         eax,dword ptr [ebx+2E4];TFormCreerBulletins.FileListBox1:TFileListBox
 00607E23    call        TCustomListBox.GetItemIndex
 00607E28    inc         eax
>00607E29    je          00607EAF
 00607E2F    mov         eax,dword ptr [ebx+2E0];TFormCreerBulletins.DirectoryListBox1:TDirectoryListBox
 00607E35    push        dword ptr [eax+254];TDirectoryListBox.FDirectory:String
 00607E3B    push        607EE0;'\'
 00607E40    mov         esi,dword ptr [ebx+2E4];TFormCreerBulletins.FileListBox1:TFileListBox
 00607E46    mov         eax,esi
 00607E48    call        TCustomListBox.GetItemIndex
 00607E4D    mov         edx,eax
 00607E4F    lea         ecx,[ebp-8]
 00607E52    mov         eax,dword ptr [esi+1F0];TFileListBox.FItems:TStrings
 00607E58    mov         esi,dword ptr [eax]
 00607E5A    call        dword ptr [esi+0C];TStrings.Get
 00607E5D    push        dword ptr [ebp-8]
 00607E60    lea         eax,[ebp-4]
 00607E63    mov         edx,3
 00607E68    call        @LStrCatN
 00607E6D    mov         eax,dword ptr [ebx+2EC];TFormCreerBulletins.ListBoxFichiers:TListBox
 00607E73    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 00607E79    mov         edx,dword ptr [ebp-4]
 00607E7C    mov         ecx,dword ptr [eax]
 00607E7E    call        dword ptr [ecx+50];TStrings.IndexOf
 00607E81    inc         eax
>00607E82    jne         00607E8E
 00607E84    mov         edx,dword ptr [ebp-4]
 00607E87    mov         eax,ebx
 00607E89    call        006074D0
 00607E8E    mov         eax,dword ptr [ebx+2EC];TFormCreerBulletins.ListBoxFichiers:TListBox
 00607E94    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 00607E9A    mov         edx,dword ptr [eax]
 00607E9C    call        dword ptr [edx+14];TStrings.GetCount
 00607E9F    test        eax,eax
 00607EA1    setg        dl
 00607EA4    mov         eax,dword ptr [ebx+324];TFormCreerBulletins.SpeedButtonSuivant:TSpeedButton
 00607EAA    mov         ecx,dword ptr [eax]
 00607EAC    call        dword ptr [ecx+5C];TControl.SetEnabled
 00607EAF    xor         eax,eax
 00607EB1    pop         edx
 00607EB2    pop         ecx
 00607EB3    pop         ecx
 00607EB4    mov         dword ptr fs:[eax],edx
 00607EB7    push        607ED1
 00607EBC    lea         eax,[ebp-8]
 00607EBF    mov         edx,2
 00607EC4    call        @LStrArrayClr
 00607EC9    ret
>00607ECA    jmp         @HandleFinally
>00607ECF    jmp         00607EBC
 00607ED1    pop         esi
 00607ED2    pop         ebx
 00607ED3    pop         ecx
 00607ED4    pop         ecx
 00607ED5    pop         ebp
 00607ED6    ret
*}
end;

//00607EE4
procedure TFormCreerBulletins.sub_00607EE4;
begin
{*
 00607EE4    push        ebp
 00607EE5    mov         ebp,esp
 00607EE7    add         esp,0FFFFFED4
 00607EED    push        ebx
 00607EEE    push        esi
 00607EEF    xor         edx,edx
 00607EF1    mov         dword ptr [ebp-124],edx
 00607EF7    mov         dword ptr [ebp-128],edx
 00607EFD    mov         dword ptr [ebp-12C],edx
 00607F03    mov         dword ptr [ebp-120],edx
 00607F09    mov         dword ptr [ebp-118],edx
 00607F0F    mov         dword ptr [ebp-11C],edx
 00607F15    mov         dword ptr [ebp-14],edx
 00607F18    mov         dword ptr [ebp-8],edx
 00607F1B    mov         ebx,eax
 00607F1D    xor         eax,eax
 00607F1F    push        ebp
 00607F20    push        608197
 00607F25    push        dword ptr fs:[eax]
 00607F28    mov         dword ptr fs:[eax],esp
 00607F2B    mov         eax,dword ptr [ebx+3A8]
 00607F31    mov         edx,dword ptr [eax]
 00607F33    call        dword ptr [edx+40]
 00607F36    mov         eax,dword ptr [ebx+3C8]
 00607F3C    mov         edx,dword ptr [eax]
 00607F3E    call        dword ptr [edx+40]
 00607F41    push        1
 00607F43    push        0
 00607F45    push        1
 00607F47    lea         ecx,[ebp-14]
 00607F4A    mov         eax,dword ptr [ebx+2EC]
 00607F50    mov         eax,dword ptr [eax+1F0]
 00607F56    xor         edx,edx
 00607F58    mov         esi,dword ptr [eax]
 00607F5A    call        dword ptr [esi+0C]
 00607F5D    mov         ecx,dword ptr [ebp-14]
 00607F60    mov         dl,1
 00607F62    mov         eax,[004BE574];TFichierCdn
 00607F67    call        TFichierCdn.Create;TFichierCdn.Create
 00607F6C    mov         dword ptr [ebp-4],eax
 00607F6F    mov         eax,dword ptr [ebp-4]
 00607F72    cmp         byte ptr [eax+948],0;TFichierCdn.?f948:byte
>00607F79    je          006080EE
 00607F7F    lea         edx,[ebp-114]
 00607F85    mov         eax,dword ptr [ebp-4]
 00607F88    call        004BE944
 00607F8D    lea         edx,[ebp-114]
 00607F93    lea         eax,[ebx+3D4]
 00607F99    call        @LStrFromString
 00607F9E    lea         edx,[ebp-114]
 00607FA4    mov         eax,dword ptr [ebp-4]
 00607FA7    call        004BE914
 00607FAC    lea         edx,[ebp-114]
 00607FB2    lea         eax,[ebx+3D8]
 00607FB8    call        @LStrFromString
 00607FBD    lea         edx,[ebp-114]
 00607FC3    mov         eax,dword ptr [ebp-4]
 00607FC6    call        004BE8FC
 00607FCB    lea         edx,[ebp-114]
 00607FD1    lea         eax,[ebp-8]
 00607FD4    call        @LStrFromString
 00607FD9    mov         eax,dword ptr [ebp-4]
 00607FDC    call        004BEA58
 00607FE1    mov         esi,eax
 00607FE3    and         esi,0FF
 00607FE9    test        esi,esi
>00607FEB    jle         00608081
 00607FF1    mov         dword ptr [ebp-0C],1
 00607FF8    mov         edx,dword ptr [ebp-0C]
 00607FFB    sub         edx,1
>00607FFE    jno         00608005
 00608000    call        @IntOver
 00608005    mov         eax,dword ptr [ebx+2F4]
 0060800B    call        TCheckListBox.GetChecked
 00608010    test        al,al
>00608012    je          00608077
 00608014    lea         ecx,[ebp-114]
 0060801A    mov         edx,dword ptr [ebp-0C]
 0060801D    cmp         edx,0FF
>00608023    jbe         0060802A
 00608025    call        @BoundErr
 0060802A    mov         eax,dword ptr [ebp-4]
 0060802D    call        004BEA64
 00608032    lea         edx,[ebp-114]
 00608038    lea         eax,[ebp-11C]
 0060803E    call        @LStrFromString
 00608043    push        dword ptr [ebp-11C]
 00608049    push        6081AC;' ('
 0060804E    push        dword ptr [ebp-8]
 00608051    push        6081B8;')'
 00608056    lea         eax,[ebp-118]
 0060805C    mov         edx,4
 00608061    call        @LStrCatN
 00608066    mov         edx,dword ptr [ebp-118]
 0060806C    mov         eax,dword ptr [ebx+3A8]
 00608072    mov         ecx,dword ptr [eax]
 00608074    call        dword ptr [ecx+34]
 00608077    inc         dword ptr [ebp-0C]
 0060807A    dec         esi
>0060807B    jne         00607FF8
 00608081    mov         eax,dword ptr [ebp-4]
 00608084    call        004BE9E0
 00608089    mov         esi,eax
 0060808B    and         esi,0FF
 00608091    test        esi,esi
>00608093    jle         006080E2
 00608095    mov         dword ptr [ebp-10],1
 0060809C    lea         ecx,[ebp-114]
 006080A2    mov         edx,dword ptr [ebp-10]
 006080A5    cmp         edx,0FF
>006080AB    jbe         006080B2
 006080AD    call        @BoundErr
 006080B2    mov         eax,dword ptr [ebp-4]
 006080B5    call        004BE9EC
 006080BA    lea         edx,[ebp-114]
 006080C0    lea         eax,[ebp-120]
 006080C6    call        @LStrFromString
 006080CB    mov         edx,dword ptr [ebp-120]
 006080D1    mov         eax,dword ptr [ebx+3C8]
 006080D7    mov         ecx,dword ptr [eax]
 006080D9    call        dword ptr [ecx+34]
 006080DC    inc         dword ptr [ebp-10]
 006080DF    dec         esi
>006080E0    jne         0060809C
 006080E2    mov         dl,1
 006080E4    mov         eax,dword ptr [ebp-4]
 006080E7    mov         ecx,dword ptr [eax]
 006080E9    call        dword ptr [ecx-4]
>006080EC    jmp         00608169
 006080EE    push        10
 006080F0    push        6081BC
 006080F5    push        6081E8;'Impossible de lire le fichier "'
 006080FA    lea         ecx,[ebp-12C]
 00608100    mov         eax,dword ptr [ebx+2EC]
 00608106    mov         eax,dword ptr [eax+1F0]
 0060810C    xor         edx,edx
 0060810E    mov         esi,dword ptr [eax]
 00608110    call        dword ptr [esi+0C]
 00608113    mov         eax,dword ptr [ebp-12C]
 00608119    lea         edx,[ebp-128]
 0060811F    call        ExtractFileName
 00608124    push        dword ptr [ebp-128]
 0060812A    push        608210;'" !'
 0060812F    lea         eax,[ebp-124]
 00608135    mov         edx,3
 0060813A    call        @LStrCatN
 0060813F    mov         eax,dword ptr [ebp-124]
 00608145    call        @LStrToPChar
 0060814A    push        eax
 0060814B    mov         eax,ebx
 0060814D    call        TWinControl.GetHandle
 00608152    push        eax
 00608153    call        user32.MessageBoxA
 00608158    mov         dl,1
 0060815A    mov         eax,dword ptr [ebp-4]
 0060815D    mov         ecx,dword ptr [eax]
 0060815F    call        dword ptr [ecx-4]
 00608162    mov         eax,ebx
 00608164    call        TCustomForm.Close
 00608169    xor         eax,eax
 0060816B    pop         edx
 0060816C    pop         ecx
 0060816D    pop         ecx
 0060816E    mov         dword ptr fs:[eax],edx
 00608171    push        60819E
 00608176    lea         eax,[ebp-12C]
 0060817C    mov         edx,6
 00608181    call        @LStrArrayClr
 00608186    lea         eax,[ebp-14]
 00608189    call        @LStrClr
 0060818E    lea         eax,[ebp-8]
 00608191    call        @LStrClr
 00608196    ret
>00608197    jmp         @HandleFinally
>0060819C    jmp         00608176
 0060819E    pop         esi
 0060819F    pop         ebx
 006081A0    mov         esp,ebp
 006081A2    pop         ebp
 006081A3    ret
*}
end;

//00608214
procedure TFormCreerBulletins.sub_00608214;
begin
{*
 00608214    push        ebp
 00608215    mov         ebp,esp
 00608217    mov         ecx,4A
 0060821C    push        0
 0060821E    push        0
 00608220    dec         ecx
>00608221    jne         0060821C
 00608223    push        ebx
 00608224    push        esi
 00608225    push        edi
 00608226    mov         ebx,eax
 00608228    xor         eax,eax
 0060822A    push        ebp
 0060822B    push        608776
 00608230    push        dword ptr fs:[eax]
 00608233    mov         dword ptr fs:[eax],esp
 00608236    mov         eax,dword ptr [ebx+3AC]
 0060823C    mov         edx,dword ptr [eax]
 0060823E    call        dword ptr [edx+40]
 00608241    mov         eax,dword ptr [ebx+3BC]
 00608247    mov         edx,dword ptr [eax]
 00608249    call        dword ptr [edx+40]
 0060824C    mov         eax,dword ptr [ebx+3C0]
 00608252    mov         edx,dword ptr [eax]
 00608254    call        dword ptr [edx+40]
 00608257    mov         eax,dword ptr [ebx+3C4]
 0060825D    mov         edx,dword ptr [eax]
 0060825F    call        dword ptr [edx+40]
 00608262    mov         eax,dword ptr [ebx+3B8]
 00608268    mov         edx,dword ptr [eax]
 0060826A    call        dword ptr [edx+40]
 0060826D    mov         eax,dword ptr [ebx+3B4]
 00608273    call        @DynArrayLength
 00608278    sub         eax,1
>0060827B    jno         00608282
 0060827D    call        @IntOver
 00608282    test        eax,eax
>00608284    jl          006082B4
 00608286    inc         eax
 00608287    mov         dword ptr [ebp-20],eax
 0060828A    mov         dword ptr [ebp-4],0
 00608291    mov         eax,dword ptr [ebp-4]
 00608294    mov         edx,dword ptr [ebx+3B4]
 0060829A    cmp         eax,dword ptr [edx-4]
>0060829D    jb          006082A4
 0060829F    call        @BoundErr
 006082A4    mov         eax,dword ptr [edx+eax*4]
 006082A7    mov         edx,dword ptr [eax]
 006082A9    call        dword ptr [edx+40]
 006082AC    inc         dword ptr [ebp-4]
 006082AF    dec         dword ptr [ebp-20]
>006082B2    jne         00608291
 006082B4    mov         eax,dword ptr [ebx+394]
 006082BA    push        eax
 006082BB    lea         eax,[ebx+3B4]
 006082C1    mov         ecx,1
 006082C6    mov         edx,dword ptr ds:[606A3C];_DynArr_278_2
 006082CC    call        @DynArraySetLength
 006082D1    add         esp,4
 006082D4    mov         eax,dword ptr [ebx+3B4]
 006082DA    call        @DynArrayLength
 006082DF    sub         eax,1
>006082E2    jno         006082E9
 006082E4    call        @IntOver
 006082E9    test        eax,eax
>006082EB    jl          00608322
 006082ED    inc         eax
 006082EE    mov         dword ptr [ebp-20],eax
 006082F1    mov         dword ptr [ebp-4],0
 006082F8    mov         dl,1
 006082FA    mov         eax,[004120B8];TStringList
 006082FF    call        TObject.Create;TStringList.Create
 00608304    mov         edx,dword ptr [ebp-4]
 00608307    mov         ecx,dword ptr [ebx+3B4]
 0060830D    cmp         edx,dword ptr [ecx-4]
>00608310    jb          00608317
 00608312    call        @BoundErr
 00608317    mov         dword ptr [ecx+edx*4],eax
 0060831A    inc         dword ptr [ebp-4]
 0060831D    dec         dword ptr [ebp-20]
>00608320    jne         006082F8
 00608322    mov         dl,1
 00608324    mov         eax,[004120B8];TStringList
 00608329    call        TObject.Create;TStringList.Create
 0060832E    mov         dword ptr [ebp-18],eax
 00608331    mov         eax,dword ptr [ebx+2EC]
 00608337    mov         eax,dword ptr [eax+1F0]
 0060833D    mov         edx,dword ptr [eax]
 0060833F    call        dword ptr [edx+14]
 00608342    sub         eax,1
>00608345    jno         0060834C
 00608347    call        @IntOver
 0060834C    test        eax,eax
>0060834E    jl          00608725
 00608354    inc         eax
 00608355    mov         dword ptr [ebp-20],eax
 00608358    mov         dword ptr [ebp-4],0
 0060835F    push        1
 00608361    push        0
 00608363    push        1
 00608365    lea         ecx,[ebp-28]
 00608368    mov         eax,dword ptr [ebx+2EC]
 0060836E    mov         eax,dword ptr [eax+1F0]
 00608374    mov         edx,dword ptr [ebp-4]
 00608377    mov         esi,dword ptr [eax]
 00608379    call        dword ptr [esi+0C]
 0060837C    mov         ecx,dword ptr [ebp-28]
 0060837F    mov         dl,1
 00608381    mov         eax,[004BE574];TFichierCdn
 00608386    call        TFichierCdn.Create;TFichierCdn.Create
 0060838B    mov         dword ptr [ebp-14],eax
 0060838E    mov         eax,dword ptr [ebp-14]
 00608391    cmp         byte ptr [eax+948],0;TFichierCdn.?f948:byte
>00608398    je          0060868F
 0060839E    mov         eax,dword ptr [ebx+3C8]
 006083A4    mov         edx,dword ptr [eax]
 006083A6    call        dword ptr [edx+14]
 006083A9    test        eax,eax
>006083AB    jle         00608680
 006083B1    mov         dword ptr [ebp-24],eax
 006083B4    mov         dword ptr [ebp-8],1
 006083BB    mov         eax,dword ptr [ebp-8]
 006083BE    sub         eax,1
>006083C1    jno         006083C8
 006083C3    call        @IntOver
 006083C8    mov         edx,dword ptr [ebx+33C]
 006083CE    cmp         eax,dword ptr [edx+200]
>006083D4    jne         00608674
 006083DA    mov         dword ptr [ebx+3D0],eax
 006083E0    call        004B9E10
 006083E5    mov         byte ptr [ebp-0D],al
 006083E8    mov         eax,dword ptr [ebp-18]
 006083EB    mov         edx,dword ptr [eax]
 006083ED    call        dword ptr [edx+40];TStringList.Clear
 006083F0    mov         eax,dword ptr [ebp-14]
 006083F3    call        004BEA58
 006083F8    mov         esi,eax
 006083FA    and         esi,0FF
 00608400    test        esi,esi
>00608402    jle         0060845D
 00608404    mov         dword ptr [ebp-0C],1
 0060840B    mov         al,byte ptr [ebp-0D]
 0060840E    push        eax
 0060840F    lea         eax,[ebp-12C]
 00608415    push        eax
 00608416    mov         ecx,dword ptr [ebp-0C]
 00608419    cmp         ecx,0FF
>0060841F    jbe         00608426
 00608421    call        @BoundErr
 00608426    mov         edx,dword ptr [ebp-8]
 00608429    cmp         edx,0FF
>0060842F    jbe         00608436
 00608431    call        @BoundErr
 00608436    mov         eax,dword ptr [ebp-14]
 00608439    call        004C2D10
 0060843E    lea         edx,[ebp-12C]
 00608444    lea         eax,[ebp-2C]
 00608447    call        @LStrFromString
 0060844C    mov         edx,dword ptr [ebp-2C]
 0060844F    mov         eax,dword ptr [ebp-18]
 00608452    mov         ecx,dword ptr [eax]
 00608454    call        dword ptr [ecx+34];TStringList.Add
 00608457    inc         dword ptr [ebp-0C]
 0060845A    dec         esi
>0060845B    jne         0060840B
 0060845D    mov         eax,dword ptr [ebx+348]
 00608463    mov         edx,dword ptr [eax]
 00608465    call        dword ptr [edx+0B4]
 0060846B    test        al,al
>0060846D    je          006084CD
 0060846F    lea         edx,[ebp-12C]
 00608475    mov         eax,dword ptr [ebp-14]
 00608478    call        004BE92C
 0060847D    lea         edx,[ebp-12C]
 00608483    lea         eax,[ebp-130]
 00608489    call        @LStrFromString
 0060848E    push        dword ptr [ebp-130]
 00608494    push        60878C;#13+#10
 00608499    lea         edx,[ebp-234]
 0060849F    mov         eax,dword ptr [ebp-14]
 006084A2    call        004C3908
 006084A7    lea         edx,[ebp-234]
 006084AD    lea         eax,[ebp-134]
 006084B3    call        @LStrFromString
 006084B8    push        dword ptr [ebp-134]
 006084BE    lea         eax,[ebp-1C]
 006084C1    mov         edx,3
 006084C6    call        @LStrCatN
>006084CB    jmp         006084E9
 006084CD    lea         edx,[ebp-12C]
 006084D3    mov         eax,dword ptr [ebp-14]
 006084D6    call        004BE92C
 006084DB    lea         edx,[ebp-12C]
 006084E1    lea         eax,[ebp-1C]
 006084E4    call        @LStrFromString
 006084E9    mov         edx,dword ptr [ebp-1C]
 006084EC    mov         eax,dword ptr [ebx+3AC]
 006084F2    mov         ecx,dword ptr [eax]
 006084F4    call        dword ptr [ecx+34]
 006084F7    lea         edx,[ebp-12C]
 006084FD    mov         eax,dword ptr [ebp-18]
 00608500    call        004BDB3C
 00608505    lea         edx,[ebp-12C]
 0060850B    lea         eax,[ebp-238]
 00608511    call        @LStrFromString
 00608516    mov         edx,dword ptr [ebp-238]
 0060851C    mov         eax,dword ptr [ebx+3BC]
 00608522    mov         ecx,dword ptr [eax]
 00608524    call        dword ptr [ecx+34]
 00608527    lea         edx,[ebp-12C]
 0060852D    mov         eax,dword ptr [ebp-18]
 00608530    call        004BDCFC
 00608535    lea         edx,[ebp-12C]
 0060853B    lea         eax,[ebp-23C]
 00608541    call        @LStrFromString
 00608546    mov         edx,dword ptr [ebp-23C]
 0060854C    mov         eax,dword ptr [ebx+3C0]
 00608552    mov         ecx,dword ptr [eax]
 00608554    call        dword ptr [ecx+34]
 00608557    lea         edx,[ebp-12C]
 0060855D    mov         eax,dword ptr [ebp-18]
 00608560    call        004BDEBC
 00608565    lea         edx,[ebp-12C]
 0060856B    lea         eax,[ebp-240]
 00608571    call        @LStrFromString
 00608576    mov         edx,dword ptr [ebp-240]
 0060857C    mov         eax,dword ptr [ebx+3C4]
 00608582    mov         ecx,dword ptr [eax]
 00608584    call        dword ptr [ecx+34]
 00608587    mov         eax,dword ptr [ebx+3CC]
 0060858D    add         eax,1
>00608590    jno         00608597
 00608592    call        @IntOver
 00608597    mov         dword ptr [ebp-0C],eax
 0060859A    mov         al,byte ptr [ebp-0D]
 0060859D    push        eax
 0060859E    lea         eax,[ebp-12C]
 006085A4    push        eax
 006085A5    mov         ecx,dword ptr [ebp-0C]
 006085A8    cmp         ecx,0FF
>006085AE    jbe         006085B5
 006085B0    call        @BoundErr
 006085B5    mov         edx,dword ptr [ebp-8]
 006085B8    cmp         edx,0FF
>006085BE    jbe         006085C5
 006085C0    call        @BoundErr
 006085C5    mov         eax,dword ptr [ebp-14]
 006085C8    call        004C2D10
 006085CD    lea         edx,[ebp-12C]
 006085D3    lea         eax,[ebp-244]
 006085D9    call        @LStrFromString
 006085DE    mov         edx,dword ptr [ebp-244]
 006085E4    mov         eax,dword ptr [ebx+3B8]
 006085EA    mov         ecx,dword ptr [eax]
 006085EC    call        dword ptr [ecx+34]
 006085EF    mov         esi,dword ptr [ebx+394]
 006085F5    test        esi,esi
>006085F7    jle         00608674
 006085F9    mov         edi,1
 006085FE    cmp         edi,0FF
>00608604    jbe         0060860B
 00608606    call        @BoundErr
 0060860B    push        edi
 0060860C    lea         eax,[ebp-12C]
 00608612    push        eax
 00608613    mov         ecx,dword ptr [ebp-0C]
 00608616    cmp         ecx,0FF
>0060861C    jbe         00608623
 0060861E    call        @BoundErr
 00608623    mov         edx,dword ptr [ebp-8]
 00608626    cmp         edx,0FF
>0060862C    jbe         00608633
 0060862E    call        @BoundErr
 00608633    mov         eax,dword ptr [ebp-14]
 00608636    call        004C2C00
 0060863B    lea         edx,[ebp-12C]
 00608641    lea         eax,[ebp-1C]
 00608644    call        @LStrFromString
 00608649    mov         eax,edi
 0060864B    sub         eax,1
>0060864E    jno         00608655
 00608650    call        @IntOver
 00608655    mov         edx,dword ptr [ebx+3B4]
 0060865B    cmp         eax,dword ptr [edx-4]
>0060865E    jb          00608665
 00608660    call        @BoundErr
 00608665    mov         eax,dword ptr [edx+eax*4]
 00608668    mov         edx,dword ptr [ebp-1C]
 0060866B    mov         ecx,dword ptr [eax]
 0060866D    call        dword ptr [ecx+34]
 00608670    inc         edi
 00608671    dec         esi
>00608672    jne         006085FE
 00608674    inc         dword ptr [ebp-8]
 00608677    dec         dword ptr [ebp-24]
>0060867A    jne         006083BB
 00608680    mov         dl,1
 00608682    mov         eax,dword ptr [ebp-14]
 00608685    mov         ecx,dword ptr [eax]
 00608687    call        dword ptr [ecx-4]
>0060868A    jmp         00608719
 0060868F    push        10
 00608691    push        608790
 00608696    push        6087BC;'Impossible de lire le fichier "'
 0060869B    lea         ecx,[ebp-250]
 006086A1    mov         eax,dword ptr [ebx+2EC]
 006086A7    mov         eax,dword ptr [eax+1F0]
 006086AD    xor         edx,edx
 006086AF    mov         esi,dword ptr [eax]
 006086B1    call        dword ptr [esi+0C]
 006086B4    mov         eax,dword ptr [ebp-250]
 006086BA    lea         edx,[ebp-24C]
 006086C0    call        ExtractFileName
 006086C5    push        dword ptr [ebp-24C]
 006086CB    push        6087E4;'" !'
 006086D0    lea         eax,[ebp-248]
 006086D6    mov         edx,3
 006086DB    call        @LStrCatN
 006086E0    mov         eax,dword ptr [ebp-248]
 006086E6    call        @LStrToPChar
 006086EB    push        eax
 006086EC    mov         eax,ebx
 006086EE    call        TWinControl.GetHandle
 006086F3    push        eax
 006086F4    call        user32.MessageBoxA
 006086F9    mov         dl,1
 006086FB    mov         eax,dword ptr [ebx+3B8]
 00608701    mov         ecx,dword ptr [eax]
 00608703    call        dword ptr [ecx-4]
 00608706    mov         dl,1
 00608708    mov         eax,dword ptr [ebp-14]
 0060870B    mov         ecx,dword ptr [eax]
 0060870D    call        dword ptr [ecx-4]
 00608710    mov         eax,ebx
 00608712    call        TCustomForm.Close
>00608717    jmp         00608733
 00608719    inc         dword ptr [ebp-4]
 0060871C    dec         dword ptr [ebp-20]
>0060871F    jne         0060835F
 00608725    add         dword ptr [ebx+3CC],1
>0060872C    jno         00608733
 0060872E    call        @IntOver
 00608733    xor         eax,eax
 00608735    pop         edx
 00608736    pop         ecx
 00608737    pop         ecx
 00608738    mov         dword ptr fs:[eax],edx
 0060873B    push        60877D
 00608740    lea         eax,[ebp-250]
 00608746    mov         edx,7
 0060874B    call        @LStrArrayClr
 00608750    lea         eax,[ebp-134]
 00608756    mov         edx,2
 0060875B    call        @LStrArrayClr
 00608760    lea         eax,[ebp-2C]
 00608763    mov         edx,2
 00608768    call        @LStrArrayClr
 0060876D    lea         eax,[ebp-1C]
 00608770    call        @LStrClr
 00608775    ret
>00608776    jmp         @HandleFinally
>0060877B    jmp         00608740
 0060877D    pop         edi
 0060877E    pop         esi
 0060877F    pop         ebx
 00608780    mov         esp,ebp
 00608782    pop         ebp
 00608783    ret
*}
end;

//006087E8
procedure TFormCreerBulletins.SpeedButtonCreerBulletinsClick(Sender:TObject);
begin
{*
 006087E8    push        ebx
 006087E9    push        esi
 006087EA    push        edi
 006087EB    push        ebp
 006087EC    mov         ebx,eax
 006087EE    xor         eax,eax
 006087F0    mov         dword ptr [ebx+3CC],eax;TFormCreerBulletins.?f3CC:dword
 006087F6    mov         eax,ebx
 006087F8    call        00607EE4
 006087FD    mov         eax,dword ptr [ebx+338];TFormCreerBulletins.frxUserDataSet1:TfrxUserDataSet
 00608803    mov         byte ptr [eax+0ED],2;TfrxUserDataSet.RangeEnd:TfrxRangeEnd
 0060880A    xor         ebp,ebp
 0060880C    mov         eax,dword ptr [ebx+2F4];TFormCreerBulletins.CheckListBoxEleves:TCheckListBox
 00608812    mov         eax,dword ptr [eax+1F0];TCheckListBox.FItems:TStrings
 00608818    mov         edx,dword ptr [eax]
 0060881A    call        dword ptr [edx+14];TStrings.GetCount
 0060881D    mov         esi,eax
 0060881F    sub         esi,1
>00608822    jno         00608829
 00608824    call        @IntOver
 00608829    test        esi,esi
>0060882B    jl          0060884F
 0060882D    inc         esi
 0060882E    xor         edi,edi
 00608830    mov         edx,edi
 00608832    mov         eax,dword ptr [ebx+2F4];TFormCreerBulletins.CheckListBoxEleves:TCheckListBox
 00608838    call        TCheckListBox.GetChecked
 0060883D    test        al,al
>0060883F    je          0060884B
 00608841    add         ebp,1
>00608844    jno         0060884B
 00608846    call        @IntOver
 0060884B    inc         edi
 0060884C    dec         esi
>0060884D    jne         00608830
 0060884F    mov         eax,dword ptr [ebx+338];TFormCreerBulletins.frxUserDataSet1:TfrxUserDataSet
 00608855    mov         dword ptr [eax+0F0],ebp;TfrxUserDataSet.RangeEndCount:Integer
 0060885B    push        1
 0060885D    mov         eax,dword ptr [ebx+330];TFormCreerBulletins.frxReport1:TfrxReport
 00608863    push        eax
 00608864    call        005DFEA4
 00608869    mov         eax,ebx
 0060886B    call        TCustomForm.Close
 00608870    pop         ebp
 00608871    pop         edi
 00608872    pop         esi
 00608873    pop         ebx
 00608874    ret
*}
end;

//00608878
procedure TFormCreerBulletins.SpeedButtonFermerClick(Sender:TObject);
begin
{*
 00608878    call        TCustomForm.Close
 0060887D    ret
*}
end;

//00608880
procedure TFormCreerBulletins.FormHide(Sender:TObject);
begin
{*
 00608880    push        ebp
 00608881    mov         ebp,esp
 00608883    push        0
 00608885    push        ebx
 00608886    push        esi
 00608887    push        edi
 00608888    mov         ebx,eax
 0060888A    xor         eax,eax
 0060888C    push        ebp
 0060888D    push        60898E
 00608892    push        dword ptr fs:[eax]
 00608895    mov         dword ptr fs:[eax],esp
 00608898    mov         dl,1
 0060889A    mov         eax,dword ptr [ebx+3B0];TFormCreerBulletins.?f3B0:TStringList
 006088A0    mov         ecx,dword ptr [eax]
 006088A2    call        dword ptr [ecx-4]
 006088A5    mov         dl,1
 006088A7    mov         eax,dword ptr [ebx+3A8];TFormCreerBulletins.?f3A8:TStringList
 006088AD    mov         ecx,dword ptr [eax]
 006088AF    call        dword ptr [ecx-4]
 006088B2    mov         dl,1
 006088B4    mov         eax,dword ptr [ebx+3AC];TFormCreerBulletins.?f3AC:TStringList
 006088BA    mov         ecx,dword ptr [eax]
 006088BC    call        dword ptr [ecx-4]
 006088BF    mov         eax,dword ptr [ebx+3B4];TFormCreerBulletins.?f3B4:.2
 006088C5    call        @DynArrayLength
 006088CA    mov         esi,eax
 006088CC    sub         esi,1
>006088CF    jno         006088D6
 006088D1    call        @IntOver
 006088D6    test        esi,esi
>006088D8    jl          006088FB
 006088DA    inc         esi
 006088DB    xor         edi,edi
 006088DD    mov         eax,dword ptr [ebx+3B4];TFormCreerBulletins.?f3B4:.2
 006088E3    cmp         edi,dword ptr [eax-4]
>006088E6    jb          006088ED
 006088E8    call        @BoundErr
 006088ED    mov         eax,dword ptr [eax+edi*4]
 006088F0    mov         dl,1
 006088F2    mov         ecx,dword ptr [eax]
 006088F4    call        dword ptr [ecx-4]
 006088F7    inc         edi
 006088F8    dec         esi
>006088F9    jne         006088DD
 006088FB    mov         dl,1
 006088FD    mov         eax,dword ptr [ebx+3B8];TFormCreerBulletins.?f3B8:TStringList
 00608903    mov         ecx,dword ptr [eax]
 00608905    call        dword ptr [ecx-4]
 00608908    mov         dl,1
 0060890A    mov         eax,dword ptr [ebx+3BC];TFormCreerBulletins.?f3BC:TStringList
 00608910    mov         ecx,dword ptr [eax]
 00608912    call        dword ptr [ecx-4]
 00608915    mov         dl,1
 00608917    mov         eax,dword ptr [ebx+3C0];TFormCreerBulletins.?f3C0:TStringList
 0060891D    mov         ecx,dword ptr [eax]
 0060891F    call        dword ptr [ecx-4]
 00608922    mov         dl,1
 00608924    mov         eax,dword ptr [ebx+3C4];TFormCreerBulletins.?f3C4:TStringList
 0060892A    mov         ecx,dword ptr [eax]
 0060892C    call        dword ptr [ecx-4]
 0060892F    mov         eax,dword ptr [ebx+348];TFormCreerBulletins.CheckBoxInclureEnseignant:TCheckBox
 00608935    mov         edx,dword ptr [eax]
 00608937    call        dword ptr [edx+0B4];TCustomCheckBox.GetChecked
 0060893D    call        004C9BC0
 00608942    mov         eax,dword ptr [ebx+344];TFormCreerBulletins.CheckBoxInclureAppreciation:TCheckBox
 00608948    mov         edx,dword ptr [eax]
 0060894A    call        dword ptr [edx+0B4];TCustomCheckBox.GetChecked
 00608950    call        004C9BF8
 00608955    lea         edx,[ebp-4]
 00608958    mov         eax,dword ptr [ebx+368];TFormCreerBulletins.EditIntituleCadre:TEdit
 0060895E    call        TControl.GetText
 00608963    mov         eax,dword ptr [ebp-4]
 00608966    call        004C9CA0
 0060896B    mov         dl,1
 0060896D    mov         eax,dword ptr [ebx+3A4];TFormCreerBulletins.?f3A4:dword
 00608973    mov         ecx,dword ptr [eax]
 00608975    call        dword ptr [ecx-4]
 00608978    xor         eax,eax
 0060897A    pop         edx
 0060897B    pop         ecx
 0060897C    pop         ecx
 0060897D    mov         dword ptr fs:[eax],edx
 00608980    push        608995
 00608985    lea         eax,[ebp-4]
 00608988    call        @LStrClr
 0060898D    ret
>0060898E    jmp         @HandleFinally
>00608993    jmp         00608985
 00608995    pop         edi
 00608996    pop         esi
 00608997    pop         ebx
 00608998    pop         ecx
 00608999    pop         ebp
 0060899A    ret
*}
end;

//0060899C
procedure TFormCreerBulletins.SpeedButton2Click(Sender:TObject);
begin
{*
 0060899C    push        ebx
 0060899D    push        esi
 0060899E    mov         ebx,eax
 006089A0    mov         eax,dword ptr [ebx+2EC];TFormCreerBulletins.ListBoxFichiers:TListBox
 006089A6    call        TCustomListBox.GetItemIndex
 006089AB    inc         eax
>006089AC    je          006089E1
 006089AE    mov         eax,dword ptr [ebx+2EC];TFormCreerBulletins.ListBoxFichiers:TListBox
 006089B4    call        TCustomListBox.GetItemIndex
 006089B9    mov         esi,eax
 006089BB    mov         eax,dword ptr [ebx+2EC];TFormCreerBulletins.ListBoxFichiers:TListBox
 006089C1    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 006089C7    mov         edx,esi
 006089C9    mov         ecx,dword ptr [eax]
 006089CB    call        dword ptr [ecx+44];TStrings.Delete
 006089CE    mov         eax,dword ptr [ebx+308];TFormCreerBulletins.ListBoxMatieres:TListBox
 006089D4    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 006089DA    mov         edx,esi
 006089DC    mov         ecx,dword ptr [eax]
 006089DE    call        dword ptr [ecx+44];TStrings.Delete
 006089E1    mov         eax,dword ptr [ebx+2EC];TFormCreerBulletins.ListBoxFichiers:TListBox
 006089E7    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 006089ED    mov         edx,dword ptr [eax]
 006089EF    call        dword ptr [edx+14];TStrings.GetCount
 006089F2    test        eax,eax
 006089F4    setg        dl
 006089F7    mov         eax,dword ptr [ebx+324];TFormCreerBulletins.SpeedButtonSuivant:TSpeedButton
 006089FD    mov         ecx,dword ptr [eax]
 006089FF    call        dword ptr [ecx+5C];TControl.SetEnabled
 00608A02    mov         eax,dword ptr [ebx+2EC];TFormCreerBulletins.ListBoxFichiers:TListBox
 00608A08    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 00608A0E    mov         edx,dword ptr [eax]
 00608A10    call        dword ptr [edx+14];TStrings.GetCount
 00608A13    test        eax,eax
>00608A15    jne         00608A47
 00608A17    xor         eax,eax
 00608A19    mov         dword ptr [ebx+398],eax;TFormCreerBulletins.?f398:dword
 00608A1F    xor         eax,eax
 00608A21    mov         dword ptr [ebx+39C],eax;TFormCreerBulletins.?f39C:dword
 00608A27    mov         edx,608A54;'Elèves :'
 00608A2C    mov         eax,dword ptr [ebx+2D4];TFormCreerBulletins.Label1:TLabel
 00608A32    call        TControl.SetText
 00608A37    mov         edx,608A68;'Périodes :'
 00608A3C    mov         eax,dword ptr [ebx+2D8];TFormCreerBulletins.Label2:TLabel
 00608A42    call        TControl.SetText
 00608A47    pop         esi
 00608A48    pop         ebx
 00608A49    ret
*}
end;

//00608A74
procedure TFormCreerBulletins.SpeedButtonPrecedentClick(Sender:TObject);
begin
{*
 00608A74    push        ebp
 00608A75    mov         ebp,esp
 00608A77    push        0
 00608A79    push        0
 00608A7B    push        0
 00608A7D    push        ebx
 00608A7E    push        esi
 00608A7F    mov         ebx,eax
 00608A81    xor         eax,eax
 00608A83    push        ebp
 00608A84    push        608B60
 00608A89    push        dword ptr fs:[eax]
 00608A8C    mov         dword ptr fs:[eax],esp
 00608A8F    mov         eax,dword ptr [ebx+2D0];TFormCreerBulletins.Notebook1:TNotebook
 00608A95    cmp         dword ptr [eax+200],0;TNotebook.PageIndex:Integer
>00608A9C    jle         00608B29
 00608AA2    mov         dl,1
 00608AA4    mov         eax,dword ptr [ebx+324];TFormCreerBulletins.SpeedButtonSuivant:TSpeedButton
 00608AAA    mov         ecx,dword ptr [eax]
 00608AAC    call        dword ptr [ecx+5C];TControl.SetEnabled
 00608AAF    mov         eax,dword ptr [ebx+2D0];TFormCreerBulletins.Notebook1:TNotebook
 00608AB5    mov         edx,dword ptr [eax+200];TNotebook.PageIndex:Integer
 00608ABB    sub         edx,1
>00608ABE    jno         00608AC5
 00608AC0    call        @IntOver
 00608AC5    call        TNotebook.SetPageIndex
 00608ACA    push        608B78;'Créer les bulletins des élèves --> étape '
 00608ACF    lea         edx,[ebp-8]
 00608AD2    mov         eax,dword ptr [ebx+2D0];TFormCreerBulletins.Notebook1:TNotebook
 00608AD8    mov         eax,dword ptr [eax+200];TNotebook.PageIndex:Integer
 00608ADE    add         eax,1
>00608AE1    jno         00608AE8
 00608AE3    call        @IntOver
 00608AE8    call        IntToStr
 00608AED    push        dword ptr [ebp-8]
 00608AF0    push        608BAC;' : '
 00608AF5    lea         ecx,[ebp-0C]
 00608AF8    mov         esi,dword ptr [ebx+2D0];TFormCreerBulletins.Notebook1:TNotebook
 00608AFE    mov         edx,dword ptr [esi+200];TNotebook.PageIndex:Integer
 00608B04    mov         eax,dword ptr [esi+1FC];TNotebook.Pages:TStrings
 00608B0A    mov         esi,dword ptr [eax]
 00608B0C    call        dword ptr [esi+0C];TStrings.Get
 00608B0F    push        dword ptr [ebp-0C]
 00608B12    lea         eax,[ebp-4]
 00608B15    mov         edx,4
 00608B1A    call        @LStrCatN
 00608B1F    mov         edx,dword ptr [ebp-4]
 00608B22    mov         eax,ebx
 00608B24    call        TControl.SetText
 00608B29    mov         eax,dword ptr [ebx+2D0];TFormCreerBulletins.Notebook1:TNotebook
 00608B2F    cmp         dword ptr [eax+200],0;TNotebook.PageIndex:Integer
>00608B36    jne         00608B45
 00608B38    xor         edx,edx
 00608B3A    mov         eax,dword ptr [ebx+320];TFormCreerBulletins.SpeedButtonPrecedent:TSpeedButton
 00608B40    mov         ecx,dword ptr [eax]
 00608B42    call        dword ptr [ecx+5C];TControl.SetEnabled
 00608B45    xor         eax,eax
 00608B47    pop         edx
 00608B48    pop         ecx
 00608B49    pop         ecx
 00608B4A    mov         dword ptr fs:[eax],edx
 00608B4D    push        608B67
 00608B52    lea         eax,[ebp-0C]
 00608B55    mov         edx,3
 00608B5A    call        @LStrArrayClr
 00608B5F    ret
>00608B60    jmp         @HandleFinally
>00608B65    jmp         00608B52
 00608B67    pop         esi
 00608B68    pop         ebx
 00608B69    mov         esp,ebp
 00608B6B    pop         ebp
 00608B6C    ret
*}
end;

//00608BB0
procedure TFormCreerBulletins.SpeedButtonSuivantClick(Sender:TObject);
begin
{*
 00608BB0    push        ebp
 00608BB1    mov         ebp,esp
 00608BB3    push        0
 00608BB5    push        0
 00608BB7    push        0
 00608BB9    push        ebx
 00608BBA    push        esi
 00608BBB    mov         ebx,eax
 00608BBD    xor         eax,eax
 00608BBF    push        ebp
 00608BC0    push        608CC4
 00608BC5    push        dword ptr fs:[eax]
 00608BC8    mov         dword ptr fs:[eax],esp
 00608BCB    mov         esi,dword ptr [ebx+2D0];TFormCreerBulletins.Notebook1:TNotebook
 00608BD1    mov         eax,dword ptr [esi+1FC];TNotebook.Pages:TStrings
 00608BD7    mov         edx,dword ptr [eax]
 00608BD9    call        dword ptr [edx+14];TStrings.GetCount
 00608BDC    sub         eax,1
>00608BDF    jno         00608BE6
 00608BE1    call        @IntOver
 00608BE6    cmp         eax,dword ptr [esi+200];TNotebook.PageIndex:Integer
>00608BEC    jle         00608C79
 00608BF2    mov         dl,1
 00608BF4    mov         eax,dword ptr [ebx+320];TFormCreerBulletins.SpeedButtonPrecedent:TSpeedButton
 00608BFA    mov         ecx,dword ptr [eax]
 00608BFC    call        dword ptr [ecx+5C];TControl.SetEnabled
 00608BFF    mov         eax,dword ptr [ebx+2D0];TFormCreerBulletins.Notebook1:TNotebook
 00608C05    mov         edx,dword ptr [eax+200];TNotebook.PageIndex:Integer
 00608C0B    add         edx,1
>00608C0E    jno         00608C15
 00608C10    call        @IntOver
 00608C15    call        TNotebook.SetPageIndex
 00608C1A    push        608CDC;'Créer les bulletins des élèves --> étape '
 00608C1F    lea         edx,[ebp-8]
 00608C22    mov         eax,dword ptr [ebx+2D0];TFormCreerBulletins.Notebook1:TNotebook
 00608C28    mov         eax,dword ptr [eax+200];TNotebook.PageIndex:Integer
 00608C2E    add         eax,1
>00608C31    jno         00608C38
 00608C33    call        @IntOver
 00608C38    call        IntToStr
 00608C3D    push        dword ptr [ebp-8]
 00608C40    push        608D10;' : '
 00608C45    lea         ecx,[ebp-0C]
 00608C48    mov         esi,dword ptr [ebx+2D0];TFormCreerBulletins.Notebook1:TNotebook
 00608C4E    mov         edx,dword ptr [esi+200];TNotebook.PageIndex:Integer
 00608C54    mov         eax,dword ptr [esi+1FC];TNotebook.Pages:TStrings
 00608C5A    mov         esi,dword ptr [eax]
 00608C5C    call        dword ptr [esi+0C];TStrings.Get
 00608C5F    push        dword ptr [ebp-0C]
 00608C62    lea         eax,[ebp-4]
 00608C65    mov         edx,4
 00608C6A    call        @LStrCatN
 00608C6F    mov         edx,dword ptr [ebp-4]
 00608C72    mov         eax,ebx
 00608C74    call        TControl.SetText
 00608C79    mov         esi,dword ptr [ebx+2D0];TFormCreerBulletins.Notebook1:TNotebook
 00608C7F    mov         eax,dword ptr [esi+1FC];TNotebook.Pages:TStrings
 00608C85    mov         edx,dword ptr [eax]
 00608C87    call        dword ptr [edx+14];TStrings.GetCount
 00608C8A    sub         eax,1
>00608C8D    jno         00608C94
 00608C8F    call        @IntOver
 00608C94    cmp         eax,dword ptr [esi+200];TNotebook.PageIndex:Integer
>00608C9A    jne         00608CA9
 00608C9C    xor         edx,edx
 00608C9E    mov         eax,dword ptr [ebx+324];TFormCreerBulletins.SpeedButtonSuivant:TSpeedButton
 00608CA4    mov         ecx,dword ptr [eax]
 00608CA6    call        dword ptr [ecx+5C];TControl.SetEnabled
 00608CA9    xor         eax,eax
 00608CAB    pop         edx
 00608CAC    pop         ecx
 00608CAD    pop         ecx
 00608CAE    mov         dword ptr fs:[eax],edx
 00608CB1    push        608CCB
 00608CB6    lea         eax,[ebp-0C]
 00608CB9    mov         edx,3
 00608CBE    call        @LStrArrayClr
 00608CC3    ret
>00608CC4    jmp         @HandleFinally
>00608CC9    jmp         00608CB6
 00608CCB    pop         esi
 00608CCC    pop         ebx
 00608CCD    mov         esp,ebp
 00608CCF    pop         ebp
 00608CD0    ret
*}
end;

//00608D14
procedure TFormCreerBulletins.Notebook1PageChanged(Sender:TObject);
begin
{*
 00608D14    push        ebp
 00608D15    mov         ebp,esp
 00608D17    add         esp,0FFFFFED8
 00608D1D    push        ebx
 00608D1E    push        esi
 00608D1F    xor         ecx,ecx
 00608D21    mov         dword ptr [ebp-120],ecx
 00608D27    mov         dword ptr [ebp-124],ecx
 00608D2D    mov         dword ptr [ebp-128],ecx
 00608D33    mov         dword ptr [ebp-11C],ecx
 00608D39    mov         dword ptr [ebp-18],ecx
 00608D3C    mov         dword ptr [ebp-14],ecx
 00608D3F    mov         dword ptr [ebp-8],ecx
 00608D42    mov         dword ptr [ebp-0C],ecx
 00608D45    mov         dword ptr [ebp-10],ecx
 00608D48    mov         dword ptr [ebp-4],ecx
 00608D4B    mov         ebx,eax
 00608D4D    xor         eax,eax
 00608D4F    push        ebp
 00608D50    push        60903E
 00608D55    push        dword ptr fs:[eax]
 00608D58    mov         dword ptr fs:[eax],esp
 00608D5B    mov         eax,dword ptr [ebx+2D0];TFormCreerBulletins.Notebook1:TNotebook
 00608D61    mov         eax,dword ptr [eax+200];TNotebook.PageIndex:Integer
 00608D67    sub         eax,1
>00608D6A    jb          00608D7A
>00608D6C    je          00608DDC
 00608D6E    dec         eax
>00608D6F    je          00608ED4
>00608D75    jmp         00609013
 00608D7A    mov         eax,dword ptr [ebx+2EC];TFormCreerBulletins.ListBoxFichiers:TListBox
 00608D80    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 00608D86    mov         edx,dword ptr [eax]
 00608D88    call        dword ptr [edx+14];TStrings.GetCount
 00608D8B    test        eax,eax
 00608D8D    setg        dl
 00608D90    mov         eax,dword ptr [ebx+324];TFormCreerBulletins.SpeedButtonSuivant:TSpeedButton
 00608D96    mov         ecx,dword ptr [eax]
 00608D98    call        dword ptr [ecx+5C];TControl.SetEnabled
 00608D9B    mov         dl,1
 00608D9D    mov         eax,dword ptr [ebx+3A0];TFormCreerBulletins.?f3A0:TFichierCdn
 00608DA3    mov         ecx,dword ptr [eax]
 00608DA5    call        dword ptr [ecx-4]
 00608DA8    mov         eax,dword ptr [ebx+33C];TFormCreerBulletins.RadioGroup1:TRadioGroup
 00608DAE    mov         eax,dword ptr [eax+1FC];TRadioGroup.FItems:TStrings
 00608DB4    mov         edx,dword ptr [eax]
 00608DB6    call        dword ptr [edx+40];TStrings.Clear
 00608DB9    mov         eax,dword ptr [ebx+2F4];TFormCreerBulletins.CheckListBoxEleves:TCheckListBox
 00608DBF    mov         eax,dword ptr [eax+1F0];TCheckListBox.FItems:TStrings
 00608DC5    mov         edx,dword ptr [eax]
 00608DC7    call        dword ptr [edx+40];TStrings.Clear
 00608DCA    xor         edx,edx
 00608DCC    mov         eax,dword ptr [ebx+328];TFormCreerBulletins.SpeedButtonCreerBulletins:TSpeedButton
 00608DD2    call        TControl.SetVisible
>00608DD7    jmp         00609013
 00608DDC    push        1
 00608DDE    push        0
 00608DE0    push        1
 00608DE2    lea         ecx,[ebp-4]
 00608DE5    mov         eax,dword ptr [ebx+2EC];TFormCreerBulletins.ListBoxFichiers:TListBox
 00608DEB    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 00608DF1    xor         edx,edx
 00608DF3    mov         esi,dword ptr [eax]
 00608DF5    call        dword ptr [esi+0C];TStrings.Get
 00608DF8    mov         ecx,dword ptr [ebp-4]
 00608DFB    mov         dl,1
 00608DFD    mov         eax,[004BE574];TFichierCdn
 00608E02    call        TFichierCdn.Create;TFichierCdn.Create
 00608E07    mov         esi,eax
 00608E09    mov         dword ptr [ebx+3A0],esi;TFormCreerBulletins.?f3A0:TFichierCdn
 00608E0F    cmp         byte ptr [esi+948],0;TFichierCdn.?f948:byte
>00608E16    je          00608E63
 00608E18    mov         eax,esi
 00608E1A    call        004BEA4C
 00608E1F    mov         edx,eax
 00608E21    mov         eax,dword ptr [ebx+33C];TFormCreerBulletins.RadioGroup1:TRadioGroup
 00608E27    call        TNotebook.SetPages
 00608E2C    mov         eax,dword ptr [ebx+3A0];TFormCreerBulletins.?f3A0:TFichierCdn
 00608E32    call        004BEAC4
 00608E37    mov         edx,eax
 00608E39    mov         eax,dword ptr [ebx+2F4];TFormCreerBulletins.CheckListBoxEleves:TCheckListBox
 00608E3F    call        TCustomListBox.SetItems
 00608E44    xor         edx,edx
 00608E46    mov         eax,dword ptr [ebx+324];TFormCreerBulletins.SpeedButtonSuivant:TSpeedButton
 00608E4C    mov         ecx,dword ptr [eax]
 00608E4E    call        dword ptr [ecx+5C];TControl.SetEnabled
 00608E51    xor         edx,edx
 00608E53    mov         eax,dword ptr [ebx+328];TFormCreerBulletins.SpeedButtonCreerBulletins:TSpeedButton
 00608E59    mov         ecx,dword ptr [eax]
 00608E5B    call        dword ptr [ecx+5C];TControl.SetEnabled
>00608E5E    jmp         00609013
 00608E63    push        10
 00608E65    push        60904C
 00608E6A    push        609078;'Impossible de lire le fichier "'
 00608E6F    lea         ecx,[ebp-10]
 00608E72    mov         eax,dword ptr [ebx+2EC];TFormCreerBulletins.ListBoxFichiers:TListBox
 00608E78    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 00608E7E    xor         edx,edx
 00608E80    mov         esi,dword ptr [eax]
 00608E82    call        dword ptr [esi+0C];TStrings.Get
 00608E85    mov         eax,dword ptr [ebp-10]
 00608E88    lea         edx,[ebp-0C]
 00608E8B    call        ExtractFileName
 00608E90    push        dword ptr [ebp-0C]
 00608E93    push        6090A0;'" !'
 00608E98    lea         eax,[ebp-8]
 00608E9B    mov         edx,3
 00608EA0    call        @LStrCatN
 00608EA5    mov         eax,dword ptr [ebp-8]
 00608EA8    call        @LStrToPChar
 00608EAD    push        eax
 00608EAE    mov         eax,ebx
 00608EB0    call        TWinControl.GetHandle
 00608EB5    push        eax
 00608EB6    call        user32.MessageBoxA
 00608EBB    mov         dl,1
 00608EBD    mov         eax,dword ptr [ebx+3A0];TFormCreerBulletins.?f3A0:TFichierCdn
 00608EC3    mov         ecx,dword ptr [eax]
 00608EC5    call        dword ptr [ecx-4]
 00608EC8    mov         eax,ebx
 00608ECA    call        TCustomForm.Close
>00608ECF    jmp         00609013
 00608ED4    mov         dl,1
 00608ED6    mov         eax,dword ptr [ebx+328];TFormCreerBulletins.SpeedButtonCreerBulletins:TSpeedButton
 00608EDC    call        TControl.SetVisible
 00608EE1    push        1
 00608EE3    push        0
 00608EE5    push        1
 00608EE7    lea         ecx,[ebp-14]
 00608EEA    mov         eax,dword ptr [ebx+2EC];TFormCreerBulletins.ListBoxFichiers:TListBox
 00608EF0    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 00608EF6    xor         edx,edx
 00608EF8    mov         esi,dword ptr [eax]
 00608EFA    call        dword ptr [esi+0C];TStrings.Get
 00608EFD    mov         ecx,dword ptr [ebp-14]
 00608F00    mov         dl,1
 00608F02    mov         eax,[004BE574];TFichierCdn
 00608F07    call        TFichierCdn.Create;TFichierCdn.Create
 00608F0C    mov         esi,eax
 00608F0E    mov         dword ptr [ebx+3A0],esi;TFormCreerBulletins.?f3A0:TFichierCdn
 00608F14    cmp         byte ptr [esi+948],0;TFichierCdn.?f948:byte
>00608F1B    je          00608F95
 00608F1D    lea         edx,[ebp-118]
 00608F23    mov         eax,esi
 00608F25    call        004BE914
 00608F2A    lea         edx,[ebp-118]
 00608F30    lea         eax,[ebp-18]
 00608F33    call        @LStrFromString
 00608F38    mov         edx,dword ptr [ebp-18]
 00608F3B    mov         eax,dword ptr [ebx+350];TFormCreerBulletins.EditEtablissement:TEdit
 00608F41    call        TControl.SetText
 00608F46    lea         edx,[ebp-118]
 00608F4C    mov         eax,dword ptr [ebx+3A0];TFormCreerBulletins.?f3A0:TFichierCdn
 00608F52    call        004BE944
 00608F57    lea         edx,[ebp-118]
 00608F5D    lea         eax,[ebp-11C]
 00608F63    call        @LStrFromString
 00608F68    mov         edx,dword ptr [ebp-11C]
 00608F6E    mov         eax,dword ptr [ebx+358];TFormCreerBulletins.EditAnneeScolaire:TEdit
 00608F74    call        TControl.SetText
 00608F79    xor         edx,edx
 00608F7B    mov         eax,dword ptr [ebx+324];TFormCreerBulletins.SpeedButtonSuivant:TSpeedButton
 00608F81    mov         ecx,dword ptr [eax]
 00608F83    call        dword ptr [ecx+5C];TControl.SetEnabled
 00608F86    mov         dl,1
 00608F88    mov         eax,dword ptr [ebx+328];TFormCreerBulletins.SpeedButtonCreerBulletins:TSpeedButton
 00608F8E    mov         ecx,dword ptr [eax]
 00608F90    call        dword ptr [ecx+5C];TControl.SetEnabled
>00608F93    jmp         00609013
 00608F95    push        10
 00608F97    push        60904C
 00608F9C    push        609078;'Impossible de lire le fichier "'
 00608FA1    lea         ecx,[ebp-128]
 00608FA7    mov         eax,dword ptr [ebx+2EC];TFormCreerBulletins.ListBoxFichiers:TListBox
 00608FAD    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 00608FB3    xor         edx,edx
 00608FB5    mov         esi,dword ptr [eax]
 00608FB7    call        dword ptr [esi+0C];TStrings.Get
 00608FBA    mov         eax,dword ptr [ebp-128]
 00608FC0    lea         edx,[ebp-124]
 00608FC6    call        ExtractFileName
 00608FCB    push        dword ptr [ebp-124]
 00608FD1    push        6090A0;'" !'
 00608FD6    lea         eax,[ebp-120]
 00608FDC    mov         edx,3
 00608FE1    call        @LStrCatN
 00608FE6    mov         eax,dword ptr [ebp-120]
 00608FEC    call        @LStrToPChar
 00608FF1    push        eax
 00608FF2    mov         eax,ebx
 00608FF4    call        TWinControl.GetHandle
 00608FF9    push        eax
 00608FFA    call        user32.MessageBoxA
 00608FFF    mov         dl,1
 00609001    mov         eax,dword ptr [ebx+3A0];TFormCreerBulletins.?f3A0:TFichierCdn
 00609007    mov         ecx,dword ptr [eax]
 00609009    call        dword ptr [ecx-4]
 0060900C    mov         eax,ebx
 0060900E    call        TCustomForm.Close
 00609013    xor         eax,eax
 00609015    pop         edx
 00609016    pop         ecx
 00609017    pop         ecx
 00609018    mov         dword ptr fs:[eax],edx
 0060901B    push        609045
 00609020    lea         eax,[ebp-128]
 00609026    mov         edx,4
 0060902B    call        @LStrArrayClr
 00609030    lea         eax,[ebp-18]
 00609033    mov         edx,6
 00609038    call        @LStrArrayClr
 0060903D    ret
>0060903E    jmp         @HandleFinally
>00609043    jmp         00609020
 00609045    pop         esi
 00609046    pop         ebx
 00609047    mov         esp,ebp
 00609049    pop         ebp
 0060904A    ret
*}
end;

//006090A4
procedure TFormCreerBulletins.SpeedButton20Click(Sender:TObject);
begin
{*
 006090A4    push        ebx
 006090A5    push        esi
 006090A6    push        edi
 006090A7    mov         esi,eax
 006090A9    mov         eax,dword ptr [esi+2F4];TFormCreerBulletins.CheckListBoxEleves:TCheckListBox
 006090AF    mov         eax,dword ptr [eax+1F0];TCheckListBox.FItems:TStrings
 006090B5    mov         edx,dword ptr [eax]
 006090B7    call        dword ptr [edx+14];TStrings.GetCount
 006090BA    mov         ebx,eax
 006090BC    test        ebx,ebx
>006090BE    jle         006090E2
 006090C0    mov         edi,1
 006090C5    mov         edx,edi
 006090C7    sub         edx,1
>006090CA    jno         006090D1
 006090CC    call        @IntOver
 006090D1    mov         cl,1
 006090D3    mov         eax,dword ptr [esi+2F4];TFormCreerBulletins.CheckListBoxEleves:TCheckListBox
 006090D9    call        TCheckListBox.SetChecked
 006090DE    inc         edi
 006090DF    dec         ebx
>006090E0    jne         006090C5
 006090E2    xor         eax,eax
 006090E4    mov         edx,dword ptr [esi+33C];TFormCreerBulletins.RadioGroup1:TRadioGroup
 006090EA    cmp         dword ptr [edx+200],0FFFFFFFF;TRadioGroup.FItemIndex:Integer
>006090F1    je          006090F5
 006090F3    mov         al,1
 006090F5    mov         edx,eax
 006090F7    mov         eax,dword ptr [esi+324];TFormCreerBulletins.SpeedButtonSuivant:TSpeedButton
 006090FD    mov         ecx,dword ptr [eax]
 006090FF    call        dword ptr [ecx+5C];TControl.SetEnabled
 00609102    pop         edi
 00609103    pop         esi
 00609104    pop         ebx
 00609105    ret
*}
end;

//00609108
procedure TFormCreerBulletins.SpeedButton21Click(Sender:TObject);
begin
{*
 00609108    push        ebx
 00609109    push        esi
 0060910A    push        edi
 0060910B    mov         edi,eax
 0060910D    mov         eax,dword ptr [edi+2F4];TFormCreerBulletins.CheckListBoxEleves:TCheckListBox
 00609113    mov         eax,dword ptr [eax+1F0];TCheckListBox.FItems:TStrings
 00609119    mov         edx,dword ptr [eax]
 0060911B    call        dword ptr [edx+14];TStrings.GetCount
 0060911E    mov         ebx,eax
 00609120    test        ebx,ebx
>00609122    jle         00609146
 00609124    mov         esi,1
 00609129    mov         edx,esi
 0060912B    sub         edx,1
>0060912E    jno         00609135
 00609130    call        @IntOver
 00609135    mov         eax,dword ptr [edi+2F4];TFormCreerBulletins.CheckListBoxEleves:TCheckListBox
 0060913B    xor         ecx,ecx
 0060913D    call        TCheckListBox.SetChecked
 00609142    inc         esi
 00609143    dec         ebx
>00609144    jne         00609129
 00609146    mov         eax,dword ptr [edi+324];TFormCreerBulletins.SpeedButtonSuivant:TSpeedButton
 0060914C    xor         edx,edx
 0060914E    mov         ecx,dword ptr [eax]
 00609150    call        dword ptr [ecx+5C];TControl.SetEnabled
 00609153    pop         edi
 00609154    pop         esi
 00609155    pop         ebx
 00609156    ret
*}
end;

//00609158
procedure TFormCreerBulletins.CheckListBoxElevesClickCheck;
begin
{*
 00609158    push        ebx
 00609159    push        esi
 0060915A    push        edi
 0060915B    push        ebp
 0060915C    push        ecx
 0060915D    mov         esi,eax
 0060915F    mov         byte ptr [esp],0
 00609163    mov         eax,dword ptr [esi+33C];TFormCreerBulletins.RadioGroup1:TRadioGroup
 00609169    cmp         dword ptr [eax+200],0FFFFFFFF;TRadioGroup.FItemIndex:Integer
>00609170    je          00609176
 00609172    mov         byte ptr [esp],1
 00609176    xor         ebx,ebx
 00609178    mov         eax,dword ptr [esi+2F4];TFormCreerBulletins.CheckListBoxEleves:TCheckListBox
 0060917E    mov         eax,dword ptr [eax+1F0];TCheckListBox.FItems:TStrings
 00609184    mov         edx,dword ptr [eax]
 00609186    call        dword ptr [edx+14];TStrings.GetCount
 00609189    mov         ebp,eax
 0060918B    sub         ebp,1
>0060918E    jno         00609195
 00609190    call        @IntOver
 00609195    test        ebp,ebp
>00609197    jl          006091B3
 00609199    inc         ebp
 0060919A    xor         edi,edi
 0060919C    mov         edx,edi
 0060919E    mov         eax,dword ptr [esi+2F4];TFormCreerBulletins.CheckListBoxEleves:TCheckListBox
 006091A4    call        TCheckListBox.GetChecked
 006091A9    test        al,al
>006091AB    je          006091AF
 006091AD    mov         bl,1
 006091AF    inc         edi
 006091B0    dec         ebp
>006091B1    jne         0060919C
 006091B3    mov         dl,byte ptr [esp]
 006091B6    and         dl,bl
 006091B8    mov         eax,dword ptr [esi+324];TFormCreerBulletins.SpeedButtonSuivant:TSpeedButton
 006091BE    mov         ecx,dword ptr [eax]
 006091C0    call        dword ptr [ecx+5C];TControl.SetEnabled
 006091C3    pop         edx
 006091C4    pop         ebp
 006091C5    pop         edi
 006091C6    pop         esi
 006091C7    pop         ebx
 006091C8    ret
*}
end;

//006091CC
procedure TFormCreerBulletins.SpeedButton4Click(Sender:TObject);
begin
{*
 006091CC    push        ebx
 006091CD    mov         ebx,eax
 006091CF    mov         eax,dword ptr [ebx+2EC];TFormCreerBulletins.ListBoxFichiers:TListBox
 006091D5    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 006091DB    mov         edx,dword ptr [eax]
 006091DD    call        dword ptr [edx+40];TStrings.Clear
 006091E0    mov         eax,dword ptr [ebx+308];TFormCreerBulletins.ListBoxMatieres:TListBox
 006091E6    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 006091EC    mov         edx,dword ptr [eax]
 006091EE    call        dword ptr [edx+40];TStrings.Clear
 006091F1    xor         edx,edx
 006091F3    mov         eax,dword ptr [ebx+324];TFormCreerBulletins.SpeedButtonSuivant:TSpeedButton
 006091F9    mov         ecx,dword ptr [eax]
 006091FB    call        dword ptr [ecx+5C];TControl.SetEnabled
 006091FE    xor         eax,eax
 00609200    mov         dword ptr [ebx+398],eax;TFormCreerBulletins.?f398:dword
 00609206    xor         eax,eax
 00609208    mov         dword ptr [ebx+39C],eax;TFormCreerBulletins.?f39C:dword
 0060920E    mov         edx,609238;'Elèves :'
 00609213    mov         eax,dword ptr [ebx+2D4];TFormCreerBulletins.Label1:TLabel
 00609219    call        TControl.SetText
 0060921E    mov         edx,60924C;'Périodes :'
 00609223    mov         eax,dword ptr [ebx+2D8];TFormCreerBulletins.Label2:TLabel
 00609229    call        TControl.SetText
 0060922E    pop         ebx
 0060922F    ret
*}
end;

//00609258
procedure TFormCreerBulletins.CheckListBoxElevesDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
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

//006093FC
procedure TFormCreerBulletins.ListBoxMatieresDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
begin
    if (Index mod 2  <> 1) then
    begin//2
      //0055303B
      ListBoxMatieres.Canvas.Brush.Color := $FFFFFF;
      ListBoxMatieres.Canvas.FillRect(Rect);
    end//2
    else
    begin//2
      //0055306A
      ListBoxMatieres.Canvas.Brush.Color := $F4F3EE;
      ListBoxMatieres.Canvas.FillRect(Rect);
    end;//2

    ListBoxMatieres.Canvas.TextOut(Rect.Left + 5, Rect.Top + 2, ListBoxMatieres.Items[Index]);
    if ( odSelected in State) then
    begin//2
      //005530E6
      ListBoxMatieres.Canvas.Brush.Color := $F8D1C5;
      ListBoxMatieres.Canvas.FillRect(Rect);
      ListBoxMatieres.Canvas.Font.Color := $FF0000;
      ListBoxMatieres.Canvas.TextOut(Rect.Left + 5, Rect.Top + 2, ListBoxMatieres.Items[Index]);
    end;//2
end;

//006095A0
procedure TFormCreerBulletins.ListBoxFichiersDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
begin
    if (Index mod 2  <> 1) then
    begin//2
      //0055303B
      ListBoxFichiers.Canvas.Brush.Color := $FFFFFF;
      ListBoxFichiers.Canvas.FillRect(Rect);
    end//2
    else
    begin//2
      //0055306A
      ListBoxFichiers.Canvas.Brush.Color := $F4F3EE;
      ListBoxFichiers.Canvas.FillRect(Rect);
    end;//2

    ListBoxFichiers.Canvas.TextOut(Rect.Left + 5, Rect.Top + 2, ListBoxFichiers.Items[Index]);
    if ( odSelected in State) then
    begin//2
      //005530E6
      ListBoxFichiers.Canvas.Brush.Color := $F8D1C5;
      ListBoxFichiers.Canvas.FillRect(Rect);
      ListBoxFichiers.Canvas.Font.Color := $FF0000;
      ListBoxFichiers.Canvas.TextOut(Rect.Left + 5, Rect.Top + 2, ListBoxFichiers.Items[Index]);
    end;//2
end;

//00609744
procedure TFormCreerBulletins.SpeedButton7Click(Sender:TObject);
begin
{*
 00609744    push        ebx
 00609745    push        esi
 00609746    push        edi
 00609747    push        ebp
 00609748    mov         esi,eax
 0060974A    mov         eax,dword ptr [esi+308];TFormCreerBulletins.ListBoxMatieres:TListBox
 00609750    call        TCustomListBox.GetItemIndex
 00609755    mov         ebx,eax
 00609757    cmp         ebx,0FFFFFFFF
>0060975A    je          006097A3
 0060975C    test        ebx,ebx
>0060975E    jle         006097A3
 00609760    mov         edi,ebx
 00609762    sub         edi,1
>00609765    jno         0060976C
 00609767    call        @IntOver
 0060976C    mov         ecx,edi
 0060976E    mov         eax,dword ptr [esi+308];TFormCreerBulletins.ListBoxMatieres:TListBox
 00609774    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 0060977A    mov         edx,ebx
 0060977C    mov         ebp,dword ptr [eax]
 0060977E    call        dword ptr [ebp+60];TStrings.Move
 00609781    mov         ecx,edi
 00609783    mov         eax,dword ptr [esi+2EC];TFormCreerBulletins.ListBoxFichiers:TListBox
 00609789    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 0060978F    mov         edx,ebx
 00609791    mov         ebp,dword ptr [eax]
 00609793    call        dword ptr [ebp+60];TStrings.Move
 00609796    mov         edx,edi
 00609798    mov         eax,dword ptr [esi+308];TFormCreerBulletins.ListBoxMatieres:TListBox
 0060979E    call        TCustomListBox.SetItemIndex
 006097A3    pop         ebp
 006097A4    pop         edi
 006097A5    pop         esi
 006097A6    pop         ebx
 006097A7    ret
*}
end;

//006097A8
procedure TFormCreerBulletins.SpeedButton8Click(Sender:TObject);
begin
{*
 006097A8    push        ebx
 006097A9    push        esi
 006097AA    push        edi
 006097AB    push        ebp
 006097AC    mov         esi,eax
 006097AE    mov         eax,dword ptr [esi+308];TFormCreerBulletins.ListBoxMatieres:TListBox
 006097B4    call        TCustomListBox.GetItemIndex
 006097B9    mov         ebx,eax
 006097BB    cmp         ebx,0FFFFFFFF
>006097BE    je          00609822
 006097C0    mov         eax,dword ptr [esi+308];TFormCreerBulletins.ListBoxMatieres:TListBox
 006097C6    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 006097CC    mov         edx,dword ptr [eax]
 006097CE    call        dword ptr [edx+14];TStrings.GetCount
 006097D1    sub         eax,1
>006097D4    jno         006097DB
 006097D6    call        @IntOver
 006097DB    cmp         ebx,eax
>006097DD    jge         00609822
 006097DF    mov         edi,ebx
 006097E1    add         edi,1
>006097E4    jno         006097EB
 006097E6    call        @IntOver
 006097EB    mov         ecx,edi
 006097ED    mov         eax,dword ptr [esi+308];TFormCreerBulletins.ListBoxMatieres:TListBox
 006097F3    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 006097F9    mov         edx,ebx
 006097FB    mov         ebp,dword ptr [eax]
 006097FD    call        dword ptr [ebp+60];TStrings.Move
 00609800    mov         ecx,edi
 00609802    mov         eax,dword ptr [esi+2EC];TFormCreerBulletins.ListBoxFichiers:TListBox
 00609808    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 0060980E    mov         edx,ebx
 00609810    mov         ebp,dword ptr [eax]
 00609812    call        dword ptr [ebp+60];TStrings.Move
 00609815    mov         edx,edi
 00609817    mov         eax,dword ptr [esi+308];TFormCreerBulletins.ListBoxMatieres:TListBox
 0060981D    call        TCustomListBox.SetItemIndex
 00609822    pop         ebp
 00609823    pop         edi
 00609824    pop         esi
 00609825    pop         ebx
 00609826    ret
*}
end;

//00609828
procedure TFormCreerBulletins.FormKeyPress(Sender:TObject; var Key:Char);
begin
  if (Key = char($1B)) then 
  ModalResult := 2;
end;

//00609838
procedure TFormCreerBulletins.FormShow(Sender:TObject);
begin
{*
 00609838    push        ebp
 00609839    mov         ebp,esp
 0060983B    push        0
 0060983D    push        0
 0060983F    push        0
 00609841    push        ebx
 00609842    push        esi
 00609843    push        edi
 00609844    mov         dword ptr [ebp-4],eax
 00609847    xor         eax,eax
 00609849    push        ebp
 0060984A    push        609A01
 0060984F    push        dword ptr fs:[eax]
 00609852    mov         dword ptr fs:[eax],esp
 00609855    call        004C9C30
 0060985A    mov         edx,eax
 0060985C    mov         eax,dword ptr [ebp-4]
 0060985F    mov         eax,dword ptr [eax+348];TFormCreerBulletins.CheckBoxInclureEnseignant:TCheckBox
 00609865    mov         ecx,dword ptr [eax]
 00609867    call        dword ptr [ecx+0B8];TCustomCheckBox.SetChecked
 0060986D    call        004C9C68
 00609872    mov         edx,eax
 00609874    mov         eax,dword ptr [ebp-4]
 00609877    mov         eax,dword ptr [eax+344];TFormCreerBulletins.CheckBoxInclureAppreciation:TCheckBox
 0060987D    mov         ecx,dword ptr [eax]
 0060987F    call        dword ptr [ecx+0B8];TCustomCheckBox.SetChecked
 00609885    lea         eax,[ebp-8]
 00609888    call        004C9D28
 0060988D    mov         edx,dword ptr [ebp-8]
 00609890    mov         eax,dword ptr [ebp-4]
 00609893    mov         eax,dword ptr [eax+368];TFormCreerBulletins.EditIntituleCadre:TEdit
 00609899    call        TControl.SetText
 0060989E    xor         eax,eax
 006098A0    push        ebp
 006098A1    push        6098EB
 006098A6    push        dword ptr fs:[eax]
 006098A9    mov         dword ptr fs:[eax],esp
 006098AC    lea         eax,[ebp-0C]
 006098AF    call        004C9E2C
 006098B4    mov         edx,dword ptr [ebp-0C]
 006098B7    mov         eax,dword ptr [ebp-4]
 006098BA    add         eax,3DC;TFormCreerBulletins.?f3DC:String
 006098BF    call        @LStrAsg
 006098C4    mov         eax,dword ptr [ebp-4]
 006098C7    mov         edx,dword ptr [eax+3DC];TFormCreerBulletins.?f3DC:String
 006098CD    mov         eax,dword ptr [ebp-4]
 006098D0    mov         eax,dword ptr [eax+37C];TFormCreerBulletins.ImageLogo:TImage
 006098D6    mov         eax,dword ptr [eax+128];TImage.Picture:TPicture
 006098DC    call        TPicture.LoadFromFile
 006098E1    xor         eax,eax
 006098E3    pop         edx
 006098E4    pop         ecx
 006098E5    pop         ecx
 006098E6    mov         dword ptr fs:[eax],edx
>006098E9    jmp         006098F5
>006098EB    jmp         @HandleAnyException
 006098F0    call        @DoneExcept
 006098F5    mov         dl,1
 006098F7    mov         eax,[004120B8];TStringList
 006098FC    call        TObject.Create;TStringList.Create
 00609901    mov         edx,dword ptr [ebp-4]
 00609904    mov         dword ptr [edx+3A8],eax;TFormCreerBulletins.?f3A8:TStringList
 0060990A    mov         dl,1
 0060990C    mov         eax,[004120B8];TStringList
 00609911    call        TObject.Create;TStringList.Create
 00609916    mov         edx,dword ptr [ebp-4]
 00609919    mov         dword ptr [edx+3AC],eax;TFormCreerBulletins.?f3AC:TStringList
 0060991F    mov         dl,1
 00609921    mov         eax,[004120B8];TStringList
 00609926    call        TObject.Create;TStringList.Create
 0060992B    mov         edx,dword ptr [ebp-4]
 0060992E    mov         dword ptr [edx+3B8],eax;TFormCreerBulletins.?f3B8:TStringList
 00609934    mov         dl,1
 00609936    mov         eax,[004120B8];TStringList
 0060993B    call        TObject.Create;TStringList.Create
 00609940    mov         edx,dword ptr [ebp-4]
 00609943    mov         dword ptr [edx+3BC],eax;TFormCreerBulletins.?f3BC:TStringList
 00609949    mov         dl,1
 0060994B    mov         eax,[004120B8];TStringList
 00609950    call        TObject.Create;TStringList.Create
 00609955    mov         edx,dword ptr [ebp-4]
 00609958    mov         dword ptr [edx+3C0],eax;TFormCreerBulletins.?f3C0:TStringList
 0060995E    mov         dl,1
 00609960    mov         eax,[004120B8];TStringList
 00609965    call        TObject.Create;TStringList.Create
 0060996A    mov         edx,dword ptr [ebp-4]
 0060996D    mov         dword ptr [edx+3C4],eax;TFormCreerBulletins.?f3C4:TStringList
 00609973    mov         dl,1
 00609975    mov         eax,[004120B8];TStringList
 0060997A    call        TObject.Create;TStringList.Create
 0060997F    mov         edx,dword ptr [ebp-4]
 00609982    mov         dword ptr [edx+3C8],eax;TFormCreerBulletins.?f3C8:TStringList
 00609988    mov         dl,1
 0060998A    mov         eax,[004120B8];TStringList
 0060998F    call        TObject.Create;TStringList.Create
 00609994    mov         edx,dword ptr [ebp-4]
 00609997    mov         dword ptr [edx+3B0],eax;TFormCreerBulletins.?f3B0:TStringList
 0060999D    mov         eax,dword ptr [ebp-4]
 006099A0    mov         eax,dword ptr [eax+330];TFormCreerBulletins.frxReport1:TfrxReport
 006099A6    mov         eax,dword ptr [eax+154];TfrxReport.?f154:TfrxVariables
 006099AC    mov         edx,609A18;'minMaxClasseAffiches'
 006099B1    call        005C8688
 006099B6    mov         ebx,eax
 006099B8    mov         eax,dword ptr [ebp-4]
 006099BB    mov         eax,dword ptr [eax+330];TFormCreerBulletins.frxReport1:TfrxReport
 006099C1    mov         eax,dword ptr [eax+154];TfrxReport.?f154:TfrxVariables
 006099C7    mov         edx,ebx
 006099C9    call        005C8674
 006099CE    add         eax,10
 006099D1    xor         edx,edx
 006099D3    call        @VarFromInt
 006099D8    mov         eax,dword ptr [ebp-4]
 006099DB    mov         eax,dword ptr [eax+330];TFormCreerBulletins.frxReport1:TfrxReport
 006099E1    xor         edx,edx
 006099E3    mov         dword ptr [eax+0C],edx;TfrxReport.Tag:Integer
 006099E6    xor         eax,eax
 006099E8    pop         edx
 006099E9    pop         ecx
 006099EA    pop         ecx
 006099EB    mov         dword ptr fs:[eax],edx
 006099EE    push        609A08
 006099F3    lea         eax,[ebp-0C]
 006099F6    mov         edx,2
 006099FB    call        @LStrArrayClr
 00609A00    ret
>00609A01    jmp         @HandleFinally
>00609A06    jmp         006099F3
 00609A08    pop         edi
 00609A09    pop         esi
 00609A0A    pop         ebx
 00609A0B    mov         esp,ebp
 00609A0D    pop         ebp
 00609A0E    ret
*}
end;

//00609A30
procedure TFormCreerBulletins.frxReport1BeforePrint(c: TfrxReportComponent);
begin
{* 00609A30    push        ebp
 00609A31    mov         ebp,esp
 00609A33    mov         ecx,70
 00609A38    push        0
 00609A3A    push        0
 00609A3C    dec         ecx
>00609A3D    jne         00609A38
 00609A3F    push        ecx
 00609A40    push        ebx
 00609A41    push        esi
 00609A42    push        edi
 00609A43    mov         esi,edx
 00609A45    mov         ebx,eax
 00609A47    xor         eax,eax
 00609A49    push        ebp
 00609A4A    push        60A339
 00609A4F    push        dword ptr fs:[eax]
 00609A52    mov         dword ptr fs:[eax],esp
 00609A55    mov         eax,dword ptr [ebx+3A8];TFormCreerBulletins.?f3A8:TStringList
 00609A5B    mov         edx,dword ptr [eax]
 00609A5D    call        dword ptr [edx+14];TStringList.GetCount
 00609A60    cmp         eax,dword ptr [ebx+3CC];TFormCreerBulletins.?f3CC:dword
>00609A66    jg          00609A70
 00609A68    xor         eax,eax
 00609A6A    mov         dword ptr [ebx+3CC],eax;TFormCreerBulletins.?f3CC:dword
 00609A70    mov         eax,esi
 00609A72    mov         edx,dword ptr ds:[5E85CC];TfrxCrossView
 00609A78    call        @IsClass
 00609A7D    test        al,al
>00609A7F    je          0060A21F
 00609A85    mov         eax,ebx
 00609A87    call        00608214
 00609A8C    mov         dword ptr [ebp-4],esi
 00609A8F    xor         eax,eax
 00609A91    mov         dword ptr [ebp-0C],eax
 00609A94    mov         eax,dword ptr [ebx+3AC];TFormCreerBulletins.?f3AC:TStringList
 00609A9A    mov         edx,dword ptr [eax]
 00609A9C    call        dword ptr [edx+14];TStringList.GetCount
 00609A9F    sub         eax,1
>00609AA2    jno         00609AA9
 00609AA4    call        @IntOver
 00609AA9    test        eax,eax
>00609AAB    jl          00609F42
 00609AB1    inc         eax
 00609AB2    mov         dword ptr [ebp-14],eax
 00609AB5    xor         esi,esi
 00609AB7    mov         byte ptr [ebp-0D],0
 00609ABB    mov         eax,dword ptr [ebx+344];TFormCreerBulletins.CheckBoxInclureAppreciation:TCheckBox
 00609AC1    mov         edx,dword ptr [eax]
 00609AC3    call        dword ptr [edx+0B4];TCustomCheckBox.GetChecked
 00609AC9    test        al,al
>00609ACB    je          00609B28
 00609ACD    mov         eax,dword ptr [ebx+394];TFormCreerBulletins.?f394:dword
 00609AD3    test        eax,eax
>00609AD5    jle         00609B28
 00609AD7    mov         dword ptr [ebp-18],eax
 00609ADA    mov         dword ptr [ebp-8],1
 00609AE1    mov         eax,dword ptr [ebp-8]
 00609AE4    sub         eax,1
>00609AE7    jno         00609AEE
 00609AE9    call        @IntOver
 00609AEE    mov         edx,dword ptr [ebx+3B4];TFormCreerBulletins.?f3B4:.2
 00609AF4    cmp         eax,dword ptr [edx-4]
>00609AF7    jb          00609AFE
 00609AF9    call        @BoundErr
 00609AFE    mov         eax,dword ptr [edx+eax*4]
 00609B01    lea         ecx,[ebp-20]
 00609B04    mov         edx,esi
 00609B06    mov         edi,dword ptr [eax]
 00609B08    call        dword ptr [edi+0C]
 00609B0B    mov         eax,dword ptr [ebp-20]
 00609B0E    lea         edx,[ebp-1C]
 00609B11    call        Trim
 00609B16    cmp         dword ptr [ebp-1C],0
>00609B1A    je          00609B20
 00609B1C    mov         byte ptr [ebp-0D],1
 00609B20    inc         dword ptr [ebp-8]
 00609B23    dec         dword ptr [ebp-18]
>00609B26    jne         00609AE1
 00609B28    lea         ecx,[ebp-28]
 00609B2B    mov         edx,esi
 00609B2D    mov         eax,dword ptr [ebx+3B8];TFormCreerBulletins.?f3B8:TStringList
 00609B33    mov         edi,dword ptr [eax]
 00609B35    call        dword ptr [edi+0C];TStringList.Get
 00609B38    mov         eax,dword ptr [ebp-28]
 00609B3B    lea         edx,[ebp-24]
 00609B3E    call        Trim
 00609B43    cmp         dword ptr [ebp-24],0
>00609B47    je          00609B4D
 00609B49    mov         byte ptr [ebp-0D],1
 00609B4D    cmp         byte ptr [ebp-0D],0
>00609B51    je          00609F38
 00609B57    lea         eax,[ebp-48]
 00609B5A    mov         edx,60A354;'Matières'
 00609B5F    call        @OleVarFromLStr
 00609B64    push        esi
 00609B65    lea         esi,[ebp-48]
 00609B68    lea         edi,[ebp-38]
 00609B6B    mov         ecx,4
 00609B70    rep movs    dword ptr [edi],dword ptr [esi]
 00609B72    pop         esi
 00609B73    lea         eax,[ebp-38]
 00609B76    push        eax
 00609B77    push        0
 00609B79    lea         ecx,[ebp-6C]
 00609B7C    mov         edx,esi
 00609B7E    mov         eax,dword ptr [ebx+3AC];TFormCreerBulletins.?f3AC:TStringList
 00609B84    mov         edi,dword ptr [eax]
 00609B86    call        dword ptr [edi+0C];TStringList.Get
 00609B89    mov         edx,dword ptr [ebp-6C]
 00609B8C    lea         eax,[ebp-68]
 00609B8F    call        @OleVarFromLStr
 00609B94    push        esi
 00609B95    lea         esi,[ebp-68]
 00609B98    lea         edi,[ebp-58]
 00609B9B    mov         ecx,4
 00609BA0    rep movs    dword ptr [edi],dword ptr [esi]
 00609BA2    pop         esi
 00609BA3    lea         eax,[ebp-58]
 00609BA6    push        eax
 00609BA7    push        0
 00609BA9    lea         eax,[ebp-8C]
 00609BAF    mov         edx,dword ptr [ebp-0C]
 00609BB2    call        @VarFromInt
 00609BB7    push        esi
 00609BB8    lea         esi,[ebp-8C]
 00609BBE    lea         edi,[ebp-7C]
 00609BC1    mov         ecx,4
 00609BC6    rep movs    dword ptr [edi],dword ptr [esi]
 00609BC8    pop         esi
 00609BC9    lea         edx,[ebp-7C]
 00609BCC    xor         ecx,ecx
 00609BCE    mov         eax,dword ptr [ebp-4]
 00609BD1    call        005ECB08
 00609BD6    lea         eax,[ebp-9C]
 00609BDC    mov         edx,60A368;'Elève'
 00609BE1    call        @OleVarFromLStr
 00609BE6    push        esi
 00609BE7    lea         esi,[ebp-9C]
 00609BED    lea         edi,[ebp-38]
 00609BF0    mov         ecx,4
 00609BF5    rep movs    dword ptr [edi],dword ptr [esi]
 00609BF7    pop         esi
 00609BF8    lea         eax,[ebp-38]
 00609BFB    push        eax
 00609BFC    push        0
 00609BFE    lea         ecx,[ebp-0B0]
 00609C04    mov         edx,esi
 00609C06    mov         eax,dword ptr [ebx+3B8];TFormCreerBulletins.?f3B8:TStringList
 00609C0C    mov         edi,dword ptr [eax]
 00609C0E    call        dword ptr [edi+0C];TStringList.Get
 00609C11    mov         edx,dword ptr [ebp-0B0]
 00609C17    lea         eax,[ebp-0AC]
 00609C1D    call        @OleVarFromLStr
 00609C22    push        esi
 00609C23    lea         esi,[ebp-0AC]
 00609C29    lea         edi,[ebp-58]
 00609C2C    mov         ecx,4
 00609C31    rep movs    dword ptr [edi],dword ptr [esi]
 00609C33    pop         esi
 00609C34    lea         eax,[ebp-58]
 00609C37    push        eax
 00609C38    push        0
 00609C3A    lea         eax,[ebp-0C0]
 00609C40    mov         edx,dword ptr [ebp-0C]
 00609C43    call        @VarFromInt
 00609C48    push        esi
 00609C49    lea         esi,[ebp-0C0]
 00609C4F    lea         edi,[ebp-7C]
 00609C52    mov         ecx,4
 00609C57    rep movs    dword ptr [edi],dword ptr [esi]
 00609C59    pop         esi
 00609C5A    lea         edx,[ebp-7C]
 00609C5D    xor         ecx,ecx
 00609C5F    mov         eax,dword ptr [ebp-4]
 00609C62    call        005ECB08
 00609C67    mov         eax,dword ptr [ebx+330];TFormCreerBulletins.frxReport1:TfrxReport
 00609C6D    cmp         dword ptr [eax+0C],0;TfrxReport.Tag:Integer
>00609C71    jne         00609E2A
 00609C77    lea         eax,[ebp-0D0]
 00609C7D    mov         edx,60A378;'Min'
 00609C82    call        @OleVarFromLStr
 00609C87    push        esi
 00609C88    lea         esi,[ebp-0D0]
 00609C8E    lea         edi,[ebp-38]
 00609C91    mov         ecx,4
 00609C96    rep movs    dword ptr [edi],dword ptr [esi]
 00609C98    pop         esi
 00609C99    lea         eax,[ebp-38]
 00609C9C    push        eax
 00609C9D    push        0
 00609C9F    lea         ecx,[ebp-0E4]
 00609CA5    mov         edx,esi
 00609CA7    mov         eax,dword ptr [ebx+3BC];TFormCreerBulletins.?f3BC:TStringList
 00609CAD    mov         edi,dword ptr [eax]
 00609CAF    call        dword ptr [edi+0C];TStringList.Get
 00609CB2    mov         edx,dword ptr [ebp-0E4]
 00609CB8    lea         eax,[ebp-0E0]
 00609CBE    call        @OleVarFromLStr
 00609CC3    push        esi
 00609CC4    lea         esi,[ebp-0E0]
 00609CCA    lea         edi,[ebp-58]
 00609CCD    mov         ecx,4
 00609CD2    rep movs    dword ptr [edi],dword ptr [esi]
 00609CD4    pop         esi
 00609CD5    lea         eax,[ebp-58]
 00609CD8    push        eax
 00609CD9    push        0
 00609CDB    lea         eax,[ebp-0F4]
 00609CE1    mov         edx,dword ptr [ebp-0C]
 00609CE4    call        @VarFromInt
 00609CE9    push        esi
 00609CEA    lea         esi,[ebp-0F4]
 00609CF0    lea         edi,[ebp-7C]
 00609CF3    mov         ecx,4
 00609CF8    rep movs    dword ptr [edi],dword ptr [esi]
 00609CFA    pop         esi
 00609CFB    lea         edx,[ebp-7C]
 00609CFE    xor         ecx,ecx
 00609D00    mov         eax,dword ptr [ebp-4]
 00609D03    call        005ECB08
 00609D08    lea         eax,[ebp-104]
 00609D0E    mov         edx,60A384;'Max'
 00609D13    call        @OleVarFromLStr
 00609D18    push        esi
 00609D19    lea         esi,[ebp-104]
 00609D1F    lea         edi,[ebp-38]
 00609D22    mov         ecx,4
 00609D27    rep movs    dword ptr [edi],dword ptr [esi]
 00609D29    pop         esi
 00609D2A    lea         eax,[ebp-38]
 00609D2D    push        eax
 00609D2E    push        0
 00609D30    lea         ecx,[ebp-118]
 00609D36    mov         edx,esi
 00609D38    mov         eax,dword ptr [ebx+3C0];TFormCreerBulletins.?f3C0:TStringList
 00609D3E    mov         edi,dword ptr [eax]
 00609D40    call        dword ptr [edi+0C];TStringList.Get
 00609D43    mov         edx,dword ptr [ebp-118]
 00609D49    lea         eax,[ebp-114]
 00609D4F    call        @OleVarFromLStr
 00609D54    push        esi
 00609D55    lea         esi,[ebp-114]
 00609D5B    lea         edi,[ebp-58]
 00609D5E    mov         ecx,4
 00609D63    rep movs    dword ptr [edi],dword ptr [esi]
 00609D65    pop         esi
 00609D66    lea         eax,[ebp-58]
 00609D69    push        eax
 00609D6A    push        0
 00609D6C    lea         eax,[ebp-128]
 00609D72    mov         edx,dword ptr [ebp-0C]
 00609D75    call        @VarFromInt
 00609D7A    push        esi
 00609D7B    lea         esi,[ebp-128]
 00609D81    lea         edi,[ebp-7C]
 00609D84    mov         ecx,4
 00609D89    rep movs    dword ptr [edi],dword ptr [esi]
 00609D8B    pop         esi
 00609D8C    lea         edx,[ebp-7C]
 00609D8F    xor         ecx,ecx
 00609D91    mov         eax,dword ptr [ebp-4]
 00609D94    call        005ECB08
 00609D99    lea         eax,[ebp-138]
 00609D9F    mov         edx,60A390;'Classe'
 00609DA4    call        @OleVarFromLStr
 00609DA9    push        esi
 00609DAA    lea         esi,[ebp-138]
 00609DB0    lea         edi,[ebp-38]
 00609DB3    mov         ecx,4
 00609DB8    rep movs    dword ptr [edi],dword ptr [esi]
 00609DBA    pop         esi
 00609DBB    lea         eax,[ebp-38]
 00609DBE    push        eax
 00609DBF    push        0
 00609DC1    lea         ecx,[ebp-14C]
 00609DC7    mov         edx,esi
 00609DC9    mov         eax,dword ptr [ebx+3C4];TFormCreerBulletins.?f3C4:TStringList
 00609DCF    mov         edi,dword ptr [eax]
 00609DD1    call        dword ptr [edi+0C];TStringList.Get
 00609DD4    mov         edx,dword ptr [ebp-14C]
 00609DDA    lea         eax,[ebp-148]
 00609DE0    call        @OleVarFromLStr
 00609DE5    push        esi
 00609DE6    lea         esi,[ebp-148]
 00609DEC    lea         edi,[ebp-58]
 00609DEF    mov         ecx,4
 00609DF4    rep movs    dword ptr [edi],dword ptr [esi]
 00609DF6    pop         esi
 00609DF7    lea         eax,[ebp-58]
 00609DFA    push        eax
 00609DFB    push        0
 00609DFD    lea         eax,[ebp-15C]
 00609E03    mov         edx,dword ptr [ebp-0C]
 00609E06    call        @VarFromInt
 00609E0B    push        esi
 00609E0C    lea         esi,[ebp-15C]
 00609E12    lea         edi,[ebp-7C]
 00609E15    mov         ecx,4
 00609E1A    rep movs    dword ptr [edi],dword ptr [esi]
 00609E1C    pop         esi
 00609E1D    lea         edx,[ebp-7C]
 00609E20    xor         ecx,ecx
 00609E22    mov         eax,dword ptr [ebp-4]
 00609E25    call        005ECB08
 00609E2A    mov         eax,dword ptr [ebx+344];TFormCreerBulletins.CheckBoxInclureAppreciation:TCheckBox
 00609E30    mov         edx,dword ptr [eax]
 00609E32    call        dword ptr [edx+0B4];TCustomCheckBox.GetChecked
 00609E38    test        al,al
>00609E3A    je          00609F2D
 00609E40    mov         eax,dword ptr [ebx+394];TFormCreerBulletins.?f394:dword
 00609E46    test        eax,eax
>00609E48    jle         00609F2D
 00609E4E    mov         dword ptr [ebp-18],eax
 00609E51    mov         dword ptr [ebp-8],1
 00609E58    lea         ecx,[ebp-170]
 00609E5E    mov         edx,dword ptr [ebp-8]
 00609E61    sub         edx,1
>00609E64    jno         00609E6B
 00609E66    call        @IntOver
 00609E6B    mov         eax,dword ptr [ebx+3A4];TFormCreerBulletins.?f3A4:dword
 00609E71    mov         edi,dword ptr [eax]
 00609E73    call        dword ptr [edi+0C]
 00609E76    mov         edx,dword ptr [ebp-170]
 00609E7C    lea         eax,[ebp-16C]
 00609E82    call        @OleVarFromLStr
 00609E87    push        esi
 00609E88    lea         esi,[ebp-16C]
 00609E8E    lea         edi,[ebp-38]
 00609E91    mov         ecx,4
 00609E96    rep movs    dword ptr [edi],dword ptr [esi]
 00609E98    pop         esi
 00609E99    lea         eax,[ebp-38]
 00609E9C    push        eax
 00609E9D    push        0
 00609E9F    mov         eax,dword ptr [ebp-8]
 00609EA2    sub         eax,1
>00609EA5    jno         00609EAC
 00609EA7    call        @IntOver
 00609EAC    mov         edx,dword ptr [ebx+3B4];TFormCreerBulletins.?f3B4:.2
 00609EB2    cmp         eax,dword ptr [edx-4]
>00609EB5    jb          00609EBC
 00609EB7    call        @BoundErr
 00609EBC    mov         eax,dword ptr [edx+eax*4]
 00609EBF    lea         ecx,[ebp-184]
 00609EC5    mov         edx,esi
 00609EC7    mov         edi,dword ptr [eax]
 00609EC9    call        dword ptr [edi+0C]
 00609ECC    mov         edx,dword ptr [ebp-184]
 00609ED2    lea         eax,[ebp-180]
 00609ED8    call        @OleVarFromLStr
 00609EDD    push        esi
 00609EDE    lea         esi,[ebp-180]
 00609EE4    lea         edi,[ebp-58]
 00609EE7    mov         ecx,4
 00609EEC    rep movs    dword ptr [edi],dword ptr [esi]
 00609EEE    pop         esi
 00609EEF    lea         eax,[ebp-58]
 00609EF2    push        eax
 00609EF3    push        0
 00609EF5    lea         eax,[ebp-194]
 00609EFB    mov         edx,esi
 00609EFD    call        @VarFromInt
 00609F02    push        esi
 00609F03    lea         esi,[ebp-194]
 00609F09    lea         edi,[ebp-7C]
 00609F0C    mov         ecx,4
 00609F11    rep movs    dword ptr [edi],dword ptr [esi]
 00609F13    pop         esi
 00609F14    lea         edx,[ebp-7C]
 00609F17    xor         ecx,ecx
 00609F19    mov         eax,dword ptr [ebp-4]
 00609F1C    call        005ECB08
 00609F21    inc         dword ptr [ebp-8]
 00609F24    dec         dword ptr [ebp-18]
>00609F27    jne         00609E58
 00609F2D    add         dword ptr [ebp-0C],1
>00609F31    jno         00609F38
 00609F33    call        @IntOver
 00609F38    inc         esi
 00609F39    dec         dword ptr [ebp-14]
>00609F3C    jne         00609AB7
 00609F42    lea         eax,[ebp-1A4]
 00609F48    mov         edx,60A354;'Matières'
 00609F4D    call        @OleVarFromLStr
 00609F52    lea         esi,[ebp-1A4]
 00609F58    lea         edi,[ebp-38]
 00609F5B    mov         ecx,4
 00609F60    rep movs    dword ptr [edi],dword ptr [esi]
 00609F62    lea         eax,[ebp-38]
 00609F65    push        eax
 00609F66    push        0
 00609F68    lea         eax,[ebp-1B4]
 00609F6E    mov         edx,60A3A0;'Moyenne générale'
 00609F73    call        @OleVarFromLStr
 00609F78    lea         esi,[ebp-1B4]
 00609F7E    lea         edi,[ebp-58]
 00609F81    mov         ecx,4
 00609F86    rep movs    dword ptr [edi],dword ptr [esi]
 00609F88    lea         eax,[ebp-58]
 00609F8B    push        eax
 00609F8C    push        0
 00609F8E    lea         eax,[ebp-1C4]
 00609F94    mov         edx,dword ptr [ebp-0C]
 00609F97    add         edx,1
>00609F9A    jno         00609FA1
 00609F9C    call        @IntOver
 00609FA1    call        @VarFromInt
 00609FA6    lea         esi,[ebp-1C4]
 00609FAC    lea         edi,[ebp-7C]
 00609FAF    mov         ecx,4
 00609FB4    rep movs    dword ptr [edi],dword ptr [esi]
 00609FB6    lea         edx,[ebp-7C]
 00609FB9    xor         ecx,ecx
 00609FBB    mov         eax,dword ptr [ebp-4]
 00609FBE    call        005ECB08
 00609FC3    lea         eax,[ebp-1D4]
 00609FC9    mov         edx,60A368;'Elève'
 00609FCE    call        @OleVarFromLStr
 00609FD3    lea         esi,[ebp-1D4]
 00609FD9    lea         edi,[ebp-38]
 00609FDC    mov         ecx,4
 00609FE1    rep movs    dword ptr [edi],dword ptr [esi]
 00609FE3    lea         eax,[ebp-38]
 00609FE6    push        eax
 00609FE7    push        0
 00609FE9    lea         edx,[ebp-2E4]
 00609FEF    mov         eax,dword ptr [ebx+3B8];TFormCreerBulletins.?f3B8:TStringList
 00609FF5    call        004BDEBC
 00609FFA    lea         edx,[ebp-2E4]
 0060A000    lea         eax,[ebp-1E4]
 0060A006    call        @OleVarFromPStr
 0060A00B    lea         esi,[ebp-1E4]
 0060A011    lea         edi,[ebp-58]
 0060A014    mov         ecx,4
 0060A019    rep movs    dword ptr [edi],dword ptr [esi]
 0060A01B    lea         eax,[ebp-58]
 0060A01E    push        eax
 0060A01F    push        0
 0060A021    lea         eax,[ebp-2F4]
 0060A027    mov         edx,dword ptr [ebp-0C]
 0060A02A    add         edx,1
>0060A02D    jno         0060A034
 0060A02F    call        @IntOver
 0060A034    call        @VarFromInt
 0060A039    lea         esi,[ebp-2F4]
 0060A03F    lea         edi,[ebp-7C]
 0060A042    mov         ecx,4
 0060A047    rep movs    dword ptr [edi],dword ptr [esi]
 0060A049    lea         edx,[ebp-7C]
 0060A04C    xor         ecx,ecx
 0060A04E    mov         eax,dword ptr [ebp-4]
 0060A051    call        005ECB08
 0060A056    mov         eax,dword ptr [ebx+330];TFormCreerBulletins.frxReport1:TfrxReport
 0060A05C    cmp         dword ptr [eax+0C],0;TfrxReport.Tag:Integer
>0060A060    jne         0060A21F
 0060A066    lea         eax,[ebp-304]
 0060A06C    mov         edx,60A378;'Min'
 0060A071    call        @OleVarFromLStr
 0060A076    lea         esi,[ebp-304]
 0060A07C    lea         edi,[ebp-38]
 0060A07F    mov         ecx,4
 0060A084    rep movs    dword ptr [edi],dword ptr [esi]
 0060A086    lea         eax,[ebp-38]
 0060A089    push        eax
 0060A08A    push        0
 0060A08C    lea         edx,[ebp-2E4]
 0060A092    mov         eax,dword ptr [ebx+3BC];TFormCreerBulletins.?f3BC:TStringList
 0060A098    call        004BDEBC
 0060A09D    lea         edx,[ebp-2E4]
 0060A0A3    lea         eax,[ebp-314]
 0060A0A9    call        @OleVarFromPStr
 0060A0AE    lea         esi,[ebp-314]
 0060A0B4    lea         edi,[ebp-58]
 0060A0B7    mov         ecx,4
 0060A0BC    rep movs    dword ptr [edi],dword ptr [esi]
 0060A0BE    lea         eax,[ebp-58]
 0060A0C1    push        eax
 0060A0C2    push        0
 0060A0C4    lea         eax,[ebp-324]
 0060A0CA    mov         edx,dword ptr [ebp-0C]
 0060A0CD    add         edx,1
>0060A0D0    jno         0060A0D7
 0060A0D2    call        @IntOver
 0060A0D7    call        @VarFromInt
 0060A0DC    lea         esi,[ebp-324]
 0060A0E2    lea         edi,[ebp-7C]
 0060A0E5    mov         ecx,4
 0060A0EA    rep movs    dword ptr [edi],dword ptr [esi]
 0060A0EC    lea         edx,[ebp-7C]
 0060A0EF    xor         ecx,ecx
 0060A0F1    mov         eax,dword ptr [ebp-4]
 0060A0F4    call        005ECB08
 0060A0F9    lea         eax,[ebp-334]
 0060A0FF    mov         edx,60A384;'Max'
 0060A104    call        @OleVarFromLStr
 0060A109    lea         esi,[ebp-334]
 0060A10F    lea         edi,[ebp-38]
 0060A112    mov         ecx,4
 0060A117    rep movs    dword ptr [edi],dword ptr [esi]
 0060A119    lea         eax,[ebp-38]
 0060A11C    push        eax
 0060A11D    push        0
 0060A11F    lea         edx,[ebp-2E4]
 0060A125    mov         eax,dword ptr [ebx+3C0];TFormCreerBulletins.?f3C0:TStringList
 0060A12B    call        004BDEBC
 0060A130    lea         edx,[ebp-2E4]
 0060A136    lea         eax,[ebp-344]
 0060A13C    call        @OleVarFromPStr
 0060A141    lea         esi,[ebp-344]
 0060A147    lea         edi,[ebp-58]
 0060A14A    mov         ecx,4
 0060A14F    rep movs    dword ptr [edi],dword ptr [esi]
 0060A151    lea         eax,[ebp-58]
 0060A154    push        eax
 0060A155    push        0
 0060A157    lea         eax,[ebp-354]
 0060A15D    mov         edx,dword ptr [ebp-0C]
 0060A160    add         edx,1
>0060A163    jno         0060A16A
 0060A165    call        @IntOver
 0060A16A    call        @VarFromInt
 0060A16F    lea         esi,[ebp-354]
 0060A175    lea         edi,[ebp-7C]
 0060A178    mov         ecx,4
 0060A17D    rep movs    dword ptr [edi],dword ptr [esi]
 0060A17F    lea         edx,[ebp-7C]
 0060A182    xor         ecx,ecx
 0060A184    mov         eax,dword ptr [ebp-4]
 0060A187    call        005ECB08
 0060A18C    lea         eax,[ebp-364]
 0060A192    mov         edx,60A390;'Classe'
 0060A197    call        @OleVarFromLStr
 0060A19C    lea         esi,[ebp-364]
 0060A1A2    lea         edi,[ebp-38]
 0060A1A5    mov         ecx,4
 0060A1AA    rep movs    dword ptr [edi],dword ptr [esi]
 0060A1AC    lea         eax,[ebp-38]
 0060A1AF    push        eax
 0060A1B0    push        0
 0060A1B2    lea         edx,[ebp-2E4]
 0060A1B8    mov         eax,dword ptr [ebx+3C4];TFormCreerBulletins.?f3C4:TStringList
 0060A1BE    call        004BDEBC
 0060A1C3    lea         edx,[ebp-2E4]
 0060A1C9    lea         eax,[ebp-374]
 0060A1CF    call        @OleVarFromPStr
 0060A1D4    lea         esi,[ebp-374]
 0060A1DA    lea         edi,[ebp-58]
 0060A1DD    mov         ecx,4
 0060A1E2    rep movs    dword ptr [edi],dword ptr [esi]
 0060A1E4    lea         eax,[ebp-58]
 0060A1E7    push        eax
 0060A1E8    push        0
 0060A1EA    lea         eax,[ebp-384]
 0060A1F0    mov         edx,dword ptr [ebp-0C]
 0060A1F3    add         edx,1
>0060A1F6    jno         0060A1FD
 0060A1F8    call        @IntOver
 0060A1FD    call        @VarFromInt
 0060A202    lea         esi,[ebp-384]
 0060A208    lea         edi,[ebp-7C]
 0060A20B    mov         ecx,4
 0060A210    rep movs    dword ptr [edi],dword ptr [esi]
 0060A212    lea         edx,[ebp-7C]
 0060A215    xor         ecx,ecx
 0060A217    mov         eax,dword ptr [ebp-4]
 0060A21A    call        005ECB08
 0060A21F    xor         eax,eax
 0060A221    pop         edx
 0060A222    pop         ecx
 0060A223    pop         ecx
 0060A224    mov         dword ptr fs:[eax],edx
 0060A227    push        60A343
 0060A22C    lea         eax,[ebp-384]
 0060A232    mov         edx,dword ptr ds:[4010E8];Variant
 0060A238    mov         ecx,0A
 0060A23D    call        @FinalizeArray
 0060A242    lea         eax,[ebp-1E4]
 0060A248    mov         edx,dword ptr ds:[4010E8];Variant
 0060A24E    mov         ecx,6
 0060A253    call        @FinalizeArray
 0060A258    lea         eax,[ebp-184]
 0060A25E    call        @LStrClr
 0060A263    lea         eax,[ebp-180]
 0060A269    call        @VarClr
 0060A26E    lea         eax,[ebp-170]
 0060A274    call        @LStrClr
 0060A279    lea         eax,[ebp-16C]
 0060A27F    mov         edx,dword ptr ds:[4010E8];Variant
 0060A285    mov         ecx,2
 0060A28A    call        @FinalizeArray
 0060A28F    lea         eax,[ebp-14C]
 0060A295    call        @LStrClr
 0060A29A    lea         eax,[ebp-148]
 0060A2A0    mov         edx,dword ptr ds:[4010E8];Variant
 0060A2A6    mov         ecx,3
 0060A2AB    call        @FinalizeArray
 0060A2B0    lea         eax,[ebp-118]
 0060A2B6    call        @LStrClr
 0060A2BB    lea         eax,[ebp-114]
 0060A2C1    mov         edx,dword ptr ds:[4010E8];Variant
 0060A2C7    mov         ecx,3
 0060A2CC    call        @FinalizeArray
 0060A2D1    lea         eax,[ebp-0E4]
 0060A2D7    call        @LStrClr
 0060A2DC    lea         eax,[ebp-0E0]
 0060A2E2    mov         edx,dword ptr ds:[4010E8];Variant
 0060A2E8    mov         ecx,3
 0060A2ED    call        @FinalizeArray
 0060A2F2    lea         eax,[ebp-0B0]
 0060A2F8    call        @LStrClr
 0060A2FD    lea         eax,[ebp-0AC]
 0060A303    mov         edx,dword ptr ds:[4010E8];Variant
 0060A309    mov         ecx,3
 0060A30E    call        @FinalizeArray
 0060A313    lea         eax,[ebp-6C]
 0060A316    call        @LStrClr
 0060A31B    lea         eax,[ebp-68]
 0060A31E    call        @VarClr
 0060A323    lea         eax,[ebp-48]
 0060A326    call        @VarClr
 0060A32B    lea         eax,[ebp-28]
 0060A32E    mov         edx,4
 0060A333    call        @LStrArrayClr
 0060A338    ret
>0060A339    jmp         @HandleFinally
>0060A33E    jmp         0060A22C
 0060A343    pop         edi
 0060A344    pop         esi
 0060A345    pop         ebx
 0060A346    mov         esp,ebp
 0060A348    pop         ebp
 0060A349    ret*}
end;

//0060A3B4
procedure TFormCreerBulletins.frxReport1GetValue(VarName: String; var Value: Variant);
begin
{* 0060A3B4    push        ebp
 0060A3B5    mov         ebp,esp
 0060A3B7    push        0
 0060A3B9    push        0
 0060A3BB    push        0
 0060A3BD    push        0
 0060A3BF    push        0
 0060A3C1    push        0
 0060A3C3    push        ebx
 0060A3C4    push        esi
 0060A3C5    push        edi
 0060A3C6    mov         dword ptr [ebp-4],ecx
 0060A3C9    mov         esi,edx
 0060A3CB    mov         ebx,eax
 0060A3CD    xor         eax,eax
 0060A3CF    push        ebp
 0060A3D0    push        60A512
 0060A3D5    push        dword ptr fs:[eax]
 0060A3D8    mov         dword ptr fs:[eax],esp
 0060A3DB    mov         eax,dword ptr [ebx+3A8];TFormCreerBulletins.?f3A8:TStringList
 0060A3E1    mov         edx,dword ptr [eax]
 0060A3E3    call        dword ptr [edx+14];TStringList.GetCount
 0060A3E6    cmp         eax,dword ptr [ebx+3CC];TFormCreerBulletins.?f3CC:dword
>0060A3EC    jg          0060A3F6
 0060A3EE    xor         eax,eax
 0060A3F0    mov         dword ptr [ebx+3CC],eax;TFormCreerBulletins.?f3CC:dword
 0060A3F6    mov         edx,60A528;'etablissement'
 0060A3FB    mov         eax,esi
 0060A3FD    call        CompareText
 0060A402    test        eax,eax
>0060A404    jne         0060A41F
 0060A406    lea         edx,[ebp-8]
 0060A409    mov         eax,dword ptr [ebx+350];TFormCreerBulletins.EditEtablissement:TEdit
 0060A40F    call        TControl.GetText
 0060A414    mov         edx,dword ptr [ebp-8]
 0060A417    mov         eax,dword ptr [ebp-4]
 0060A41A    call        @OleVarFromLStr
 0060A41F    mov         edx,60A540;'eleve'
 0060A424    mov         eax,esi
 0060A426    call        CompareText
 0060A42B    test        eax,eax
>0060A42D    jne         0060A44E
 0060A42F    lea         ecx,[ebp-0C]
 0060A432    mov         edx,dword ptr [ebx+3CC];TFormCreerBulletins.?f3CC:dword
 0060A438    mov         eax,dword ptr [ebx+3A8];TFormCreerBulletins.?f3A8:TStringList
 0060A43E    mov         edi,dword ptr [eax]
 0060A440    call        dword ptr [edi+0C];TStringList.Get
 0060A443    mov         edx,dword ptr [ebp-0C]
 0060A446    mov         eax,dword ptr [ebp-4]
 0060A449    call        @OleVarFromLStr
 0060A44E    mov         edx,60A550;'periode'
 0060A453    mov         eax,esi
 0060A455    call        CompareText
 0060A45A    test        eax,eax
>0060A45C    jne         0060A477
 0060A45E    lea         edx,[ebp-10]
 0060A461    mov         eax,dword ptr [ebx+360];TFormCreerBulletins.EditNomPeriode:TEdit
 0060A467    call        TControl.GetText
 0060A46C    mov         edx,dword ptr [ebp-10]
 0060A46F    mov         eax,dword ptr [ebp-4]
 0060A472    call        @OleVarFromLStr
 0060A477    mov         edx,60A560;'annee'
 0060A47C    mov         eax,esi
 0060A47E    call        CompareText
 0060A483    test        eax,eax
>0060A485    jne         0060A4A0
 0060A487    lea         edx,[ebp-14]
 0060A48A    mov         eax,dword ptr [ebx+358];TFormCreerBulletins.EditAnneeScolaire:TEdit
 0060A490    call        TControl.GetText
 0060A495    mov         edx,dword ptr [ebp-14]
 0060A498    mov         eax,dword ptr [ebp-4]
 0060A49B    call        @OleVarFromLStr
 0060A4A0    mov         edx,60A570;'intitulecadre'
 0060A4A5    mov         eax,esi
 0060A4A7    call        CompareText
 0060A4AC    test        eax,eax
>0060A4AE    jne         0060A4C9
 0060A4B0    lea         edx,[ebp-18]
 0060A4B3    mov         eax,dword ptr [ebx+368];TFormCreerBulletins.EditIntituleCadre:TEdit
 0060A4B9    call        TControl.GetText
 0060A4BE    mov         edx,dword ptr [ebp-18]
 0060A4C1    mov         eax,dword ptr [ebp-4]
 0060A4C4    call        @OleVarFromLStr
 0060A4C9    mov         edx,60A588;'picture'
 0060A4CE    mov         eax,esi
 0060A4D0    call        CompareText
 0060A4D5    test        eax,eax
>0060A4D7    jne         0060A4E7
 0060A4D9    mov         eax,dword ptr [ebp-4]
 0060A4DC    mov         edx,dword ptr [ebx+3DC];TFormCreerBulletins.?f3DC:String
 0060A4E2    call        @OleVarFromLStr
 0060A4E7    xor         eax,eax
 0060A4E9    pop         edx
 0060A4EA    pop         ecx
 0060A4EB    pop         ecx
 0060A4EC    mov         dword ptr fs:[eax],edx
 0060A4EF    push        60A519
 0060A4F4    lea         eax,[ebp-18]
 0060A4F7    mov         edx,3
 0060A4FC    call        @LStrArrayClr
 0060A501    lea         eax,[ebp-0C]
 0060A504    call        @LStrClr
 0060A509    lea         eax,[ebp-8]
 0060A50C    call        @LStrClr
 0060A511    ret
>0060A512    jmp         @HandleFinally
>0060A517    jmp         0060A4F4
 0060A519    pop         edi
 0060A51A    pop         esi
 0060A51B    pop         ebx
 0060A51C    mov         esp,ebp
 0060A51E    pop         ebp
 0060A51F    ret*}
end;

//0060A590
procedure TFormCreerBulletins.RadioGroup1Click(Sender:TObject);
begin
{*
 0060A590    push        ebp
 0060A591    mov         ebp,esp
 0060A593    add         esp,0FFFFFFF8
 0060A596    push        ebx
 0060A597    push        esi
 0060A598    push        edi
 0060A599    xor         ecx,ecx
 0060A59B    mov         dword ptr [ebp-8],ecx
 0060A59E    mov         esi,eax
 0060A5A0    xor         eax,eax
 0060A5A2    push        ebp
 0060A5A3    push        60A655
 0060A5A8    push        dword ptr fs:[eax]
 0060A5AB    mov         dword ptr fs:[eax],esp
 0060A5AE    mov         byte ptr [ebp-1],0
 0060A5B2    mov         ebx,dword ptr [esi+33C];TFormCreerBulletins.RadioGroup1:TRadioGroup
 0060A5B8    cmp         dword ptr [ebx+200],0FFFFFFFF;TRadioGroup.FItemIndex:Integer
>0060A5BF    je          0060A5ED
 0060A5C1    mov         byte ptr [ebp-1],1
 0060A5C5    lea         ecx,[ebp-8]
 0060A5C8    mov         eax,dword ptr [esi+33C];TFormCreerBulletins.RadioGroup1:TRadioGroup
 0060A5CE    mov         edx,dword ptr [eax+200];TRadioGroup.FItemIndex:Integer
 0060A5D4    mov         eax,dword ptr [ebx+1FC];TRadioGroup.FItems:TStrings
 0060A5DA    mov         ebx,dword ptr [eax]
 0060A5DC    call        dword ptr [ebx+0C];TStrings.Get
 0060A5DF    mov         edx,dword ptr [ebp-8]
 0060A5E2    mov         eax,dword ptr [esi+360];TFormCreerBulletins.EditNomPeriode:TEdit
 0060A5E8    call        TControl.SetText
 0060A5ED    mov         byte ptr [ebp-2],0
 0060A5F1    mov         eax,dword ptr [esi+2F4];TFormCreerBulletins.CheckListBoxEleves:TCheckListBox
 0060A5F7    mov         eax,dword ptr [eax+1F0];TCheckListBox.FItems:TStrings
 0060A5FD    mov         edx,dword ptr [eax]
 0060A5FF    call        dword ptr [edx+14];TStrings.GetCount
 0060A602    mov         ebx,eax
 0060A604    sub         ebx,1
>0060A607    jno         0060A60E
 0060A609    call        @IntOver
 0060A60E    test        ebx,ebx
>0060A610    jl          0060A62E
 0060A612    inc         ebx
 0060A613    xor         edi,edi
 0060A615    mov         edx,edi
 0060A617    mov         eax,dword ptr [esi+2F4];TFormCreerBulletins.CheckListBoxEleves:TCheckListBox
 0060A61D    call        TCheckListBox.GetChecked
 0060A622    test        al,al
>0060A624    je          0060A62A
 0060A626    mov         byte ptr [ebp-2],1
 0060A62A    inc         edi
 0060A62B    dec         ebx
>0060A62C    jne         0060A615
 0060A62E    mov         dl,byte ptr [ebp-1]
 0060A631    and         dl,byte ptr [ebp-2]
 0060A634    mov         eax,dword ptr [esi+324];TFormCreerBulletins.SpeedButtonSuivant:TSpeedButton
 0060A63A    mov         ecx,dword ptr [eax]
 0060A63C    call        dword ptr [ecx+5C];TControl.SetEnabled
 0060A63F    xor         eax,eax
 0060A641    pop         edx
 0060A642    pop         ecx
 0060A643    pop         ecx
 0060A644    mov         dword ptr fs:[eax],edx
 0060A647    push        60A65C
 0060A64C    lea         eax,[ebp-8]
 0060A64F    call        @LStrClr
 0060A654    ret
>0060A655    jmp         @HandleFinally
>0060A65A    jmp         0060A64C
 0060A65C    pop         edi
 0060A65D    pop         esi
 0060A65E    pop         ebx
 0060A65F    pop         ecx
 0060A660    pop         ecx
 0060A661    pop         ebp
 0060A662    ret
*}
end;

//0060A664
procedure TFormCreerBulletins.SpeedButton5Click(Sender:TObject);
begin
{*
 0060A664    push        ebp
 0060A665    mov         ebp,esp
 0060A667    push        0
 0060A669    push        0
 0060A66B    push        ebx
 0060A66C    mov         ebx,eax
 0060A66E    xor         eax,eax
 0060A670    push        ebp
 0060A671    push        60A6EF
 0060A676    push        dword ptr fs:[eax]
 0060A679    mov         dword ptr fs:[eax],esp
 0060A67C    mov         eax,dword ptr [ebx+36C];TFormCreerBulletins.OpenPictureDialog1:TOpenPictureDialog
 0060A682    mov         edx,dword ptr [eax]
 0060A684    call        dword ptr [edx+3C];TOpenPictureDialog.Execute
 0060A687    test        al,al
>0060A689    je          0060A6D4
 0060A68B    lea         edx,[ebp-4]
 0060A68E    mov         eax,dword ptr [ebx+36C];TFormCreerBulletins.OpenPictureDialog1:TOpenPictureDialog
 0060A694    call        TOpenDialog.GetFileName
 0060A699    mov         edx,dword ptr [ebp-4]
 0060A69C    mov         eax,dword ptr [ebx+37C];TFormCreerBulletins.ImageLogo:TImage
 0060A6A2    mov         eax,dword ptr [eax+128];TImage.Picture:TPicture
 0060A6A8    call        TPicture.LoadFromFile
 0060A6AD    lea         edx,[ebp-8]
 0060A6B0    mov         eax,dword ptr [ebx+36C];TFormCreerBulletins.OpenPictureDialog1:TOpenPictureDialog
 0060A6B6    call        TOpenDialog.GetFileName
 0060A6BB    mov         edx,dword ptr [ebp-8]
 0060A6BE    lea         eax,[ebx+3DC];TFormCreerBulletins.?f3DC:String
 0060A6C4    call        @LStrAsg
 0060A6C9    mov         eax,dword ptr [ebx+3DC];TFormCreerBulletins.?f3DC:String
 0060A6CF    call        004C9DA8
 0060A6D4    xor         eax,eax
 0060A6D6    pop         edx
 0060A6D7    pop         ecx
 0060A6D8    pop         ecx
 0060A6D9    mov         dword ptr fs:[eax],edx
 0060A6DC    push        60A6F6
 0060A6E1    lea         eax,[ebp-8]
 0060A6E4    mov         edx,2
 0060A6E9    call        @LStrArrayClr
 0060A6EE    ret
>0060A6EF    jmp         @HandleFinally
>0060A6F4    jmp         0060A6E1
 0060A6F6    pop         ebx
 0060A6F7    pop         ecx
 0060A6F8    pop         ecx
 0060A6F9    pop         ebp
 0060A6FA    ret
*}
end;

//0060A6FC
procedure TFormCreerBulletins.SpeedButton6Click(Sender:TObject);
begin
{*
 0060A6FC    push        ebx
 0060A6FD    mov         ebx,eax
 0060A6FF    xor         edx,edx
 0060A701    mov         eax,dword ptr [ebx+37C];TFormCreerBulletins.ImageLogo:TImage
 0060A707    call        TImage.SetPicture
 0060A70C    lea         eax,[ebx+3DC];TFormCreerBulletins.?f3DC:String
 0060A712    call        @LStrClr
 0060A717    mov         eax,dword ptr [ebx+3DC];TFormCreerBulletins.?f3DC:String
 0060A71D    call        004C9DA8
 0060A722    pop         ebx
 0060A723    ret
*}
end;

//0060A724
procedure TFormCreerBulletins.SpeedButtonAideClick(Sender:TObject);
begin
{*
 0060A724    push        ebx
 0060A725    mov         ebx,eax
 0060A727    push        60A774;'Créer les bulletins des élèves'
 0060A72C    push        60A79C;'Cette boite de dialogue permet de créer des bulletins à partir de plusieurs fich...
 0060A731    push        82
 0060A736    mov         ecx,ebx
 0060A738    mov         dl,1
 0060A73A    mov         eax,[00536C0C];TFormAide
 0060A73F    call        TFormAide.Create;TFormAide.Create
 0060A744    mov         edx,dword ptr ds:[616354];^gvar_00617E94:TFormAide
 0060A74A    mov         dword ptr [edx],eax
 0060A74C    mov         eax,[00616354];^gvar_00617E94:TFormAide
 0060A751    mov         eax,dword ptr [eax]
 0060A753    mov         edx,dword ptr [eax]
 0060A755    call        dword ptr [edx+0D8]
 0060A75B    mov         eax,[00616354];^gvar_00617E94:TFormAide
 0060A760    mov         eax,dword ptr [eax]
 0060A762    mov         dl,1
 0060A764    mov         ecx,dword ptr [eax]
 0060A766    call        dword ptr [ecx-4]
 0060A769    pop         ebx
 0060A76A    ret
*}
end;

//0060A994
procedure TFormCreerBulletins.CheckBox1Click(Sender:TObject);
begin
{*
 0060A994    push        ebx
 0060A995    push        esi
 0060A996    mov         ebx,eax
 0060A998    mov         eax,dword ptr [ebx+330];TFormCreerBulletins.frxReport1:TfrxReport
 0060A99E    mov         eax,dword ptr [eax+154];TfrxReport.?f154:TfrxVariables
 0060A9A4    mov         edx,60AA28;'minMaxClasseAffiches'
 0060A9A9    call        005C8688
 0060A9AE    mov         esi,eax
 0060A9B0    mov         eax,dword ptr [ebx+390];TFormCreerBulletins.CheckBox1:TCheckBox
 0060A9B6    mov         edx,dword ptr [eax]
 0060A9B8    call        dword ptr [edx+0B4];TCustomCheckBox.GetChecked
 0060A9BE    test        al,al
>0060A9C0    je          0060A9F2
 0060A9C2    mov         eax,dword ptr [ebx+330];TFormCreerBulletins.frxReport1:TfrxReport
 0060A9C8    mov         eax,dword ptr [eax+154];TfrxReport.?f154:TfrxVariables
 0060A9CE    mov         edx,esi
 0060A9D0    call        005C8674
 0060A9D5    add         eax,10
 0060A9D8    mov         edx,1
 0060A9DD    call        @VarFromInt
 0060A9E2    mov         eax,dword ptr [ebx+330];TFormCreerBulletins.frxReport1:TfrxReport
 0060A9E8    mov         dword ptr [eax+0C],1;TfrxReport.Tag:Integer
 0060A9EF    pop         esi
 0060A9F0    pop         ebx
 0060A9F1    ret
 0060A9F2    mov         eax,dword ptr [ebx+330];TFormCreerBulletins.frxReport1:TfrxReport
 0060A9F8    mov         eax,dword ptr [eax+154];TfrxReport.?f154:TfrxVariables
 0060A9FE    mov         edx,esi
 0060AA00    call        005C8674
 0060AA05    add         eax,10
 0060AA08    xor         edx,edx
 0060AA0A    call        @VarFromInt
 0060AA0F    mov         eax,dword ptr [ebx+330];TFormCreerBulletins.frxReport1:TfrxReport
 0060AA15    xor         edx,edx
 0060AA17    mov         dword ptr [eax+0C],edx;TfrxReport.Tag:Integer
 0060AA1A    pop         esi
 0060AA1B    pop         ebx
 0060AA1C    ret
*}
end;

end.