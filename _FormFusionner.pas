{***************************************
* Version Original V0.01
* Decompiled by HOUIDEF AEK v.05.02.2018
***************************************}
unit _FormFusionner;

interface

uses
Forms, Windows,  SysUtils, Classes, ExtCtrls, Buttons, Dialogs, StdCtrls, FileCtrl, CheckLst, Controls, UFichierCdn, URegistry,
Unit49;

type

  TFormFusionner = class(TForm)
  published
    Panel2:TPanel;//f2D0
    Bevel1:TBevel;//f2D4
    Image2:TImage;//f2D8
    SpeedButtonPrecedent:TSpeedButton;//f2DC
    SpeedButtonSuivant:TSpeedButton;//f2E0
    SpeedButtonAnnuler:TSpeedButton;//f2E4
    SaveDialog1:TSaveDialog;//f2E8
    Notebook1:TNotebook;//f2EC
    SpeedButton1:TSpeedButton;//f2F0
    SpeedButton2:TSpeedButton;//f2F4
    Label10:TLabel;//f2F8
    Label11:TLabel;//f2FC
    ListBoxFichiers:TListBox;//f300
    DriveComboBox1:TDriveComboBox;//f304
    DirectoryListBox1:TDirectoryListBox;//f308
    FileListBox1:TFileListBox;//f30C
    Label3:TLabel;//f310
    CheckListBox1:TCheckListBox;//f314
    RadioGroupDonneesARetenir:TRadioGroup;//f318
    SpeedButtonFusionner:TSpeedButton;//f31C
    Label4:TLabel;//f320
    Label5:TLabel;//f324
    Label6:TLabel;//f328
    Label7:TLabel;//f32C
    Label8:TLabel;//f330
    Label9:TLabel;//f334
    ComboBoxUtilisateurs:TComboBox;//f338
    Edit1:TEdit;//f33C
    Edit2:TEdit;//f340
    Edit3:TEdit;//f344
    Edit4:TEdit;//f348
    Edit5:TEdit;//f34C
    CheckBoxOuvrir:TCheckBox;//f350
    SpeedButton20:TSpeedButton;//f354
    SpeedButton21:TSpeedButton;//f358
    SpeedButtonAide:TSpeedButton;//f35C
    procedure SpeedButton21Click(Sender:TObject);//00552E04
    procedure ListBoxFichiersDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);//00552E54
    procedure SpeedButtonFusionnerClick(Sender:TObject);//00551F70
    procedure SpeedButton20Click(Sender:TObject);//00552DB4
    procedure FormDestroy(Sender:TObject);//005531AC
    procedure SpeedButtonAideClick(Sender:TObject);//005531C8
    procedure CheckListBox1DrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);//00552FF8
    procedure FormKeyPress(Sender:TObject; var Key:Char);//0055319C
    procedure CheckListBox1ClickCheck(Sender:TObject);//00551F18
    procedure SpeedButtonSuivantClick(Sender:TObject);//00551210
    procedure DriveComboBox1Change(Sender:TObject);//00551370
    procedure SpeedButtonAnnulerClick(Sender:TObject);//005510D0
    procedure SpeedButtonPrecedentClick(Sender:TObject);//005510D8
    procedure SpeedButton2Click(Sender:TObject);//00551480
    procedure Notebook1PageChanged(Sender:TObject);//0055152C
    procedure DirectoryListBox1Change(Sender:TObject);//00551388
    procedure FileListBox1DblClick(Sender:TObject);//005513A4
  public
    f360:TStringList;//f360
    f364:TStringList;//f364
    f368:array of dword;//f368 
    f36C:string;//f36C
    constructor Create(Owner:TComponent; logo:Timage);//00550EF8
	procedure sub_0055186C(x:AnsiString);//0055186C
  end;
   var
     FormFusionner:TFormFusionner;   

implementation

{$R *.DFM}

//00550EF8
constructor TFormFusionner.Create(Owner:TComponent; logo:Timage);
var
  Buf:String;
begin//0
  //00550EF8

    //00550F42

    inherited Create(Owner);
    Image2.Picture := logo.Picture;
    Caption := 'Fusionner plusieurs fichiers --> étape 1 : ' + Notebook1.Pages[0];
    f36C := '';
    sub_0049782C(buf);
    DriveComboBox1.Drive := ExtractFileDrive(buf)[1];
    sub_0049782C(Buf);
    DirectoryListBox1.Directory := buf;
    f360 := TStringlist.Create;
    f364 := TStringlist.Create;
end;//0

//005510D0
procedure TFormFusionner.SpeedButtonAnnulerClick(Sender:TObject);
begin
  close;
end;

//005510D8
procedure TFormFusionner.SpeedButtonPrecedentClick(Sender:TObject);
begin
{*
 005510D8    push        ebp
 005510D9    mov         ebp,esp
 005510DB    push        0
 005510DD    push        0
 005510DF    push        0
 005510E1    push        ebx
 005510E2    push        esi
 005510E3    mov         ebx,eax
 005510E5    xor         eax,eax
 005510E7    push        ebp
 005510E8    push        5511C4
 005510ED    push        dword ptr fs:[eax]
 005510F0    mov         dword ptr fs:[eax],esp
 005510F3    mov         eax,dword ptr [ebx+2EC];TFormFusionner.Notebook1:TNotebook
 005510F9    cmp         dword ptr [eax+200],0;TNotebook.PageIndex:Integer
>00551100    jle         0055118D
 00551106    mov         dl,1
 00551108    mov         eax,dword ptr [ebx+2E0];TFormFusionner.SpeedButtonSuivant:TSpeedButton
 0055110E    mov         ecx,dword ptr [eax]
 00551110    call        dword ptr [ecx+5C];TControl.SetEnabled
 00551113    mov         eax,dword ptr [ebx+2EC];TFormFusionner.Notebook1:TNotebook
 00551119    mov         edx,dword ptr [eax+200];TNotebook.PageIndex:Integer
 0055111F    sub         edx,1
>00551122    jno         00551129
 00551124    call        @IntOver
 00551129    call        TNotebook.SetPageIndex
 0055112E    push        5511DC;'Fusionner plusieurs fichiers --> étape '
 00551133    lea         edx,[ebp-8]
 00551136    mov         eax,dword ptr [ebx+2EC];TFormFusionner.Notebook1:TNotebook
 0055113C    mov         eax,dword ptr [eax+200];TNotebook.PageIndex:Integer
 00551142    add         eax,1
>00551145    jno         0055114C
 00551147    call        @IntOver
 0055114C    call        IntToStr
 00551151    push        dword ptr [ebp-8]
 00551154    push        55120C;' : '
 00551159    lea         ecx,[ebp-0C]
 0055115C    mov         esi,dword ptr [ebx+2EC];TFormFusionner.Notebook1:TNotebook
 00551162    mov         edx,dword ptr [esi+200];TNotebook.PageIndex:Integer
 00551168    mov         eax,dword ptr [esi+1FC];TNotebook.Pages:TStrings
 0055116E    mov         esi,dword ptr [eax]
 00551170    call        dword ptr [esi+0C];TStrings.Get
 00551173    push        dword ptr [ebp-0C]
 00551176    lea         eax,[ebp-4]
 00551179    mov         edx,4
 0055117E    call        @LStrCatN
 00551183    mov         edx,dword ptr [ebp-4]
 00551186    mov         eax,ebx
 00551188    call        TControl.SetText
 0055118D    mov         eax,dword ptr [ebx+2EC];TFormFusionner.Notebook1:TNotebook
 00551193    cmp         dword ptr [eax+200],0;TNotebook.PageIndex:Integer
>0055119A    jne         005511A9
 0055119C    xor         edx,edx
 0055119E    mov         eax,dword ptr [ebx+2DC];TFormFusionner.SpeedButtonPrecedent:TSpeedButton
 005511A4    mov         ecx,dword ptr [eax]
 005511A6    call        dword ptr [ecx+5C];TControl.SetEnabled
 005511A9    xor         eax,eax
 005511AB    pop         edx
 005511AC    pop         ecx
 005511AD    pop         ecx
 005511AE    mov         dword ptr fs:[eax],edx
 005511B1    push        5511CB
 005511B6    lea         eax,[ebp-0C]
 005511B9    mov         edx,3
 005511BE    call        @LStrArrayClr
 005511C3    ret
>005511C4    jmp         @HandleFinally
>005511C9    jmp         005511B6
 005511CB    pop         esi
 005511CC    pop         ebx
 005511CD    mov         esp,ebp
 005511CF    pop         ebp
 005511D0    ret
*}
end;

//00551210
procedure TFormFusionner.SpeedButtonSuivantClick(Sender:TObject);
begin
{*
 00551210    push        ebp
 00551211    mov         ebp,esp
 00551213    push        0
 00551215    push        0
 00551217    push        0
 00551219    push        ebx
 0055121A    push        esi
 0055121B    mov         ebx,eax
 0055121D    xor         eax,eax
 0055121F    push        ebp
 00551220    push        551324
 00551225    push        dword ptr fs:[eax]
 00551228    mov         dword ptr fs:[eax],esp
 0055122B    mov         esi,dword ptr [ebx+2EC];TFormFusionner.Notebook1:TNotebook
 00551231    mov         eax,dword ptr [esi+1FC];TNotebook.Pages:TStrings
 00551237    mov         edx,dword ptr [eax]
 00551239    call        dword ptr [edx+14];TStrings.GetCount
 0055123C    sub         eax,1
>0055123F    jno         00551246
 00551241    call        @IntOver
 00551246    cmp         eax,dword ptr [esi+200];TNotebook.PageIndex:Integer
>0055124C    jle         005512D9
 00551252    mov         dl,1
 00551254    mov         eax,dword ptr [ebx+2DC];TFormFusionner.SpeedButtonPrecedent:TSpeedButton
 0055125A    mov         ecx,dword ptr [eax]
 0055125C    call        dword ptr [ecx+5C];TControl.SetEnabled
 0055125F    mov         eax,dword ptr [ebx+2EC];TFormFusionner.Notebook1:TNotebook
 00551265    mov         edx,dword ptr [eax+200];TNotebook.PageIndex:Integer
 0055126B    add         edx,1
>0055126E    jno         00551275
 00551270    call        @IntOver
 00551275    call        TNotebook.SetPageIndex
 0055127A    push        55133C;'Fusionner plusieurs fichiers --> étape '
 0055127F    lea         edx,[ebp-8]
 00551282    mov         eax,dword ptr [ebx+2EC];TFormFusionner.Notebook1:TNotebook
 00551288    mov         eax,dword ptr [eax+200];TNotebook.PageIndex:Integer
 0055128E    add         eax,1
>00551291    jno         00551298
 00551293    call        @IntOver
 00551298    call        IntToStr
 0055129D    push        dword ptr [ebp-8]
 005512A0    push        55136C;' : '
 005512A5    lea         ecx,[ebp-0C]
 005512A8    mov         esi,dword ptr [ebx+2EC];TFormFusionner.Notebook1:TNotebook
 005512AE    mov         edx,dword ptr [esi+200];TNotebook.PageIndex:Integer
 005512B4    mov         eax,dword ptr [esi+1FC];TNotebook.Pages:TStrings
 005512BA    mov         esi,dword ptr [eax]
 005512BC    call        dword ptr [esi+0C];TStrings.Get
 005512BF    push        dword ptr [ebp-0C]
 005512C2    lea         eax,[ebp-4]
 005512C5    mov         edx,4
 005512CA    call        @LStrCatN
 005512CF    mov         edx,dword ptr [ebp-4]
 005512D2    mov         eax,ebx
 005512D4    call        TControl.SetText
 005512D9    mov         esi,dword ptr [ebx+2EC];TFormFusionner.Notebook1:TNotebook
 005512DF    mov         eax,dword ptr [esi+1FC];TNotebook.Pages:TStrings
 005512E5    mov         edx,dword ptr [eax]
 005512E7    call        dword ptr [edx+14];TStrings.GetCount
 005512EA    sub         eax,1
>005512ED    jno         005512F4
 005512EF    call        @IntOver
 005512F4    cmp         eax,dword ptr [esi+200];TNotebook.PageIndex:Integer
>005512FA    jne         00551309
 005512FC    xor         edx,edx
 005512FE    mov         eax,dword ptr [ebx+2E0];TFormFusionner.SpeedButtonSuivant:TSpeedButton
 00551304    mov         ecx,dword ptr [eax]
 00551306    call        dword ptr [ecx+5C];TControl.SetEnabled
 00551309    xor         eax,eax
 0055130B    pop         edx
 0055130C    pop         ecx
 0055130D    pop         ecx
 0055130E    mov         dword ptr fs:[eax],edx
 00551311    push        55132B
 00551316    lea         eax,[ebp-0C]
 00551319    mov         edx,3
 0055131E    call        @LStrArrayClr
 00551323    ret
>00551324    jmp         @HandleFinally
>00551329    jmp         00551316
 0055132B    pop         esi
 0055132C    pop         ebx
 0055132D    mov         esp,ebp
 0055132F    pop         ebp
 00551330    ret
*}
end;

//00551370
procedure TFormFusionner.DriveComboBox1Change;
begin
{*
 00551370    mov         edx,dword ptr [eax+304];TFormFusionner.DriveComboBox1:TDriveComboBox
 00551376    mov         dl,byte ptr [edx+254];TDriveComboBox.FDrive:Char
 0055137C    mov         eax,dword ptr [eax+308];TFormFusionner.DirectoryListBox1:TDirectoryListBox
 00551382    call        TDirectoryListBox.SetDrive
 00551387    ret
*}
end;

//00551388
procedure TFormFusionner.DirectoryListBox1Change;
begin//0
  //00551388
  FileListBox1.Directory := DirectoryListBox1.Directory;
end;//0

//005513A4
procedure TFormFusionner.FileListBox1DblClick(Sender:TObject);
var
  lvar_4:AnsiString;
begin//0
  //005513A4
    //005513BD
    if (FileListBox1.ItemIndex <> -1) then
    begin//2
      //005513CB
      lvar_4 := DirectoryListBox1.Directory + '\' + FileListBox1.Items[FileListBox1.ItemIndex];
      if (ListBoxFichiers.Items.IndexOf(lvar_4) = -1) then
      begin//3
        //00551420
        sub_0055186C(lvar_4);
      end;//3
      SpeedButtonSuivant.Enabled := (ListBoxFichiers.Items.Count - 1 > 0);
    end;//2
	//00551457
end;//0

//00551480
procedure TFormFusionner.SpeedButton2Click(Sender:TObject);
begin
{*
 00551480    push        ebx
 00551481    push        esi
 00551482    mov         ebx,eax
 00551484    mov         eax,dword ptr [ebx+300];TFormFusionner.ListBoxFichiers:TListBox
 0055148A    call        TCustomListBox.GetItemIndex
 0055148F    inc         eax
>00551490    je          005514AC
 00551492    mov         esi,dword ptr [ebx+300];TFormFusionner.ListBoxFichiers:TListBox
 00551498    mov         eax,esi
 0055149A    call        TCustomListBox.GetItemIndex
 0055149F    mov         edx,eax
 005514A1    mov         eax,dword ptr [esi+1F0];TListBox.FItems:TStrings
 005514A7    mov         ecx,dword ptr [eax]
 005514A9    call        dword ptr [ecx+44];TStrings.Delete
 005514AC    mov         eax,dword ptr [ebx+300];TFormFusionner.ListBoxFichiers:TListBox
 005514B2    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 005514B8    mov         edx,dword ptr [eax]
 005514BA    call        dword ptr [edx+14];TStrings.GetCount
 005514BD    dec         eax
 005514BE    setg        dl
 005514C1    mov         eax,dword ptr [ebx+2E0];TFormFusionner.SpeedButtonSuivant:TSpeedButton
 005514C7    mov         ecx,dword ptr [eax]
 005514C9    call        dword ptr [ecx+5C];TControl.SetEnabled
 005514CC    mov         eax,dword ptr [ebx+300];TFormFusionner.ListBoxFichiers:TListBox
 005514D2    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 005514D8    mov         edx,dword ptr [eax]
 005514DA    call        dword ptr [edx+14];TStrings.GetCount
 005514DD    test        eax,eax
>005514DF    jne         00551501
 005514E1    mov         edx,55150C;'Elèves :'
 005514E6    mov         eax,dword ptr [ebx+2F8];TFormFusionner.Label10:TLabel
 005514EC    call        TControl.SetText
 005514F1    mov         edx,551520;'Périodes :'
 005514F6    mov         eax,dword ptr [ebx+2FC];TFormFusionner.Label11:TLabel
 005514FC    call        TControl.SetText
 00551501    pop         esi
 00551502    pop         ebx
 00551503    ret
*}
end;

//0055152C
procedure TFormFusionner.Notebook1PageChanged;
begin
{*
 0055152C    push        ebp
 0055152D    mov         ebp,esp
 0055152F    add         esp,0FFFFFEEC
 00551535    push        ebx
 00551536    push        esi
 00551537    push        edi
 00551538    xor         ecx,ecx
 0055153A    mov         dword ptr [ebp-114],ecx
 00551540    mov         dword ptr [ebp-110],ecx
 00551546    mov         dword ptr [ebp-0C],ecx
 00551549    mov         dword ptr [ebp-8],ecx
 0055154C    mov         ebx,eax
 0055154E    xor         eax,eax
 00551550    push        ebp
 00551551    push        551826
 00551556    push        dword ptr fs:[eax]
 00551559    mov         dword ptr fs:[eax],esp
 0055155C    mov         eax,dword ptr [ebx+2EC];TFormFusionner.Notebook1:TNotebook
 00551562    mov         eax,dword ptr [eax+200];TNotebook.PageIndex:Integer
 00551568    sub         eax,1
>0055156B    jb          0055157F
>0055156D    je          00551615
 00551573    dec         eax
>00551574    je          005516EF
>0055157A    jmp         005517FB
 0055157F    mov         eax,dword ptr [ebx+300];TFormFusionner.ListBoxFichiers:TListBox
 00551585    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 0055158B    mov         edx,dword ptr [eax]
 0055158D    call        dword ptr [edx+14];TStrings.GetCount
 00551590    dec         eax
 00551591    setg        dl
 00551594    mov         eax,dword ptr [ebx+2E0];TFormFusionner.SpeedButtonSuivant:TSpeedButton
 0055159A    mov         ecx,dword ptr [eax]
 0055159C    call        dword ptr [ecx+5C];TControl.SetEnabled
 0055159F    mov         eax,dword ptr [ebx+300];TFormFusionner.ListBoxFichiers:TListBox
 005515A5    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 005515AB    mov         edx,dword ptr [eax]
 005515AD    call        dword ptr [edx+14];TStrings.GetCount
 005515B0    sub         eax,1
>005515B3    jno         005515BA
 005515B5    call        @IntOver
 005515BA    test        eax,eax
>005515BC    jl          005515E4
 005515BE    inc         eax
 005515BF    mov         dword ptr [ebp-4],eax
 005515C2    xor         esi,esi
 005515C4    mov         eax,dword ptr [ebx+368];TFormFusionner.?f368:.2
 005515CA    cmp         esi,dword ptr [eax-4]
>005515CD    jb          005515D4
 005515CF    call        @BoundErr
 005515D4    mov         eax,dword ptr [eax+esi*4]
 005515D7    mov         dl,1
 005515D9    mov         ecx,dword ptr [eax]
 005515DB    call        dword ptr [ecx-4]
 005515DE    inc         esi
 005515DF    dec         dword ptr [ebp-4]
>005515E2    jne         005515C4
 005515E4    push        0
 005515E6    lea         eax,[ebx+368];TFormFusionner.?f368:.2
 005515EC    mov         ecx,1
 005515F1    mov         edx,dword ptr ds:[5508CC];_DynArr_200_2
 005515F7    call        @DynArraySetLength
 005515FC    add         esp,4
 005515FF    mov         eax,dword ptr [ebx+314];TFormFusionner.CheckListBox1:TCheckListBox
 00551605    mov         eax,dword ptr [eax+1F0];TCheckListBox.FItems:TStrings
 0055160B    mov         edx,dword ptr [eax]
 0055160D    call        dword ptr [edx+40];TStrings.Clear
>00551610    jmp         005517FB
 00551615    mov         eax,dword ptr [ebx+300];TFormFusionner.ListBoxFichiers:TListBox
 0055161B    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 00551621    mov         edx,dword ptr [eax]
 00551623    call        dword ptr [edx+14];TStrings.GetCount
 00551626    push        eax
 00551627    lea         eax,[ebx+368];TFormFusionner.?f368:.2
 0055162D    mov         ecx,1
 00551632    mov         edx,dword ptr ds:[5508CC];_DynArr_200_2
 00551638    call        @DynArraySetLength
 0055163D    add         esp,4
 00551640    mov         eax,dword ptr [ebx+300];TFormFusionner.ListBoxFichiers:TListBox
 00551646    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 0055164C    mov         edx,dword ptr [eax]
 0055164E    call        dword ptr [edx+14];TStrings.GetCount
 00551651    sub         eax,1
>00551654    jno         0055165B
 00551656    call        @IntOver
 0055165B    test        eax,eax
>0055165D    jl          005516A9
 0055165F    inc         eax
 00551660    mov         dword ptr [ebp-4],eax
 00551663    xor         esi,esi
 00551665    push        1
 00551667    push        0
 00551669    push        0
 0055166B    lea         ecx,[ebp-8]
 0055166E    mov         eax,dword ptr [ebx+300];TFormFusionner.ListBoxFichiers:TListBox
 00551674    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 0055167A    mov         edx,esi
 0055167C    mov         edi,dword ptr [eax]
 0055167E    call        dword ptr [edi+0C];TStrings.Get
 00551681    mov         ecx,dword ptr [ebp-8]
 00551684    mov         dl,1
 00551686    mov         eax,[004BE574];TFichierCdn
 0055168B    call        TFichierCdn.Create;TFichierCdn.Create
 00551690    mov         edx,dword ptr [ebx+368];TFormFusionner.?f368:.2
 00551696    cmp         esi,dword ptr [edx-4]
>00551699    jb          005516A0
 0055169B    call        @BoundErr
 005516A0    mov         dword ptr [edx+esi*4],eax
 005516A3    inc         esi
 005516A4    dec         dword ptr [ebp-4]
>005516A7    jne         00551665
 005516A9    xor         eax,eax
 005516AB    mov         edx,dword ptr [ebx+368];TFormFusionner.?f368:.2
 005516B1    cmp         eax,dword ptr [edx-4]
>005516B4    jb          005516BB
 005516B6    call        @BoundErr
 005516BB    mov         eax,dword ptr [edx+eax*4]
 005516BE    call        004BEA4C
 005516C3    mov         edx,eax
 005516C5    mov         eax,dword ptr [ebx+314];TFormFusionner.CheckListBox1:TCheckListBox
 005516CB    call        TCustomListBox.SetItems
 005516D0    xor         edx,edx
 005516D2    mov         eax,dword ptr [ebx+2E0];TFormFusionner.SpeedButtonSuivant:TSpeedButton
 005516D8    mov         ecx,dword ptr [eax]
 005516DA    call        dword ptr [ecx+5C];TControl.SetEnabled
 005516DD    xor         edx,edx
 005516DF    mov         eax,dword ptr [ebx+31C];TFormFusionner.SpeedButtonFusionner:TSpeedButton
 005516E5    mov         ecx,dword ptr [eax]
 005516E7    call        dword ptr [ecx+5C];TControl.SetEnabled
>005516EA    jmp         005517FB
 005516EF    call        004982F8
 005516F4    mov         edx,eax
 005516F6    mov         eax,dword ptr [ebx+338];TFormFusionner.ComboBoxUtilisateurs:TComboBox
 005516FC    call        TCustomComboBox.SetItems
 00551701    xor         edx,edx
 00551703    mov         eax,dword ptr [ebx+338];TFormFusionner.ComboBoxUtilisateurs:TComboBox
 00551709    call        TCustomComboBox.SetItemIndex
 0055170E    xor         eax,eax
 00551710    mov         edx,dword ptr [ebx+368];TFormFusionner.?f368:.2
 00551716    cmp         eax,dword ptr [edx-4]
>00551719    jb          00551720
 0055171B    call        @BoundErr
 00551720    mov         eax,dword ptr [edx+eax*4]
 00551723    lea         edx,[ebp-10C]
 00551729    call        004BE8FC
 0055172E    lea         edx,[ebp-10C]
 00551734    lea         eax,[ebp-0C]
 00551737    call        @LStrFromString
 0055173C    mov         edx,dword ptr [ebp-0C]
 0055173F    mov         eax,dword ptr [ebx+33C];TFormFusionner.Edit1:TEdit
 00551745    call        TControl.SetText
 0055174A    xor         eax,eax
 0055174C    mov         edx,dword ptr [ebx+368];TFormFusionner.?f368:.2
 00551752    cmp         eax,dword ptr [edx-4]
>00551755    jb          0055175C
 00551757    call        @BoundErr
 0055175C    mov         eax,dword ptr [edx+eax*4]
 0055175F    lea         edx,[ebp-10C]
 00551765    call        004BE914
 0055176A    lea         edx,[ebp-10C]
 00551770    lea         eax,[ebp-110]
 00551776    call        @LStrFromString
 0055177B    mov         edx,dword ptr [ebp-110]
 00551781    mov         eax,dword ptr [ebx+340];TFormFusionner.Edit2:TEdit
 00551787    call        TControl.SetText
 0055178C    mov         edx,55183C;'Toutes les matières'
 00551791    mov         eax,dword ptr [ebx+344];TFormFusionner.Edit3:TEdit
 00551797    call        TControl.SetText
 0055179C    xor         eax,eax
 0055179E    mov         edx,dword ptr [ebx+368];TFormFusionner.?f368:.2
 005517A4    cmp         eax,dword ptr [edx-4]
>005517A7    jb          005517AE
 005517A9    call        @BoundErr
 005517AE    mov         eax,dword ptr [edx+eax*4]
 005517B1    lea         edx,[ebp-10C]
 005517B7    call        004BE944
 005517BC    lea         edx,[ebp-10C]
 005517C2    lea         eax,[ebp-114]
 005517C8    call        @LStrFromString
 005517CD    mov         edx,dword ptr [ebp-114]
 005517D3    mov         eax,dword ptr [ebx+348];TFormFusionner.Edit4:TEdit
 005517D9    call        TControl.SetText
 005517DE    mov         edx,551858;'Fichier de fusion'
 005517E3    mov         eax,dword ptr [ebx+34C];TFormFusionner.Edit5:TEdit
 005517E9    call        TControl.SetText
 005517EE    mov         dl,1
 005517F0    mov         eax,dword ptr [ebx+31C];TFormFusionner.SpeedButtonFusionner:TSpeedButton
 005517F6    mov         ecx,dword ptr [eax]
 005517F8    call        dword ptr [ecx+5C];TControl.SetEnabled
 005517FB    xor         eax,eax
 005517FD    pop         edx
 005517FE    pop         ecx
 005517FF    pop         ecx
 00551800    mov         dword ptr fs:[eax],edx
 00551803    push        55182D
 00551808    lea         eax,[ebp-114]
 0055180E    mov         edx,2
 00551813    call        @LStrArrayClr
 00551818    lea         eax,[ebp-0C]
 0055181B    mov         edx,2
 00551820    call        @LStrArrayClr
 00551825    ret
>00551826    jmp         @HandleFinally
>0055182B    jmp         00551808
 0055182D    pop         edi
 0055182E    pop         esi
 0055182F    pop         ebx
 00551830    mov         esp,ebp
 00551832    pop         ebp
 00551833    ret
*}
end;

//0055186C
procedure TFormFusionner.sub_0055186C(x:AnsiString);
var
  FichierCdnTemp:TFichierCdn;
begin//0
  //0055186C
    //0055189A
    FichierCdnTemp := TFichierCdn.Create(x{, 1, 0, 0});
    if (FichierCdnTemp.f948) then
    begin//2
      //005518BE
      if (FichierCdnTemp.f949 = 0) then
      begin//3
        //005518CB
        if (FichierCdnTemp.sub_004BEA58 <> 0) then
        begin//4
          //005518DA
          if (ListBoxFichiers.Items.Count = 0) then
          begin//5
            //005518F3
            ListBoxFichiers.Items.Add(x);
            f360.Clear;
            f360.AddStrings(FichierCdnTemp.sub_004BEAC4);
            f364.Clear;
            f364.AddStrings(FichierCdnTemp.sub_004BEA4C);
            Label10.Caption := 'Elèves : ' + IntToStr(FichierCdnTemp.sub_004BEA58 );
            Label11.Caption := 'Périodes : ' + IntToStr(FichierCdnTemp.sub_004BE9E0);
            
            FileListBox1.ItemIndex := FileListBox1.ItemIndex + 1;
          end//5
          else
          begin//5
            //005519CE
            if (sub_00497B4C(f360, FichierCdnTemp.sub_004BEAC4)) then
            begin//6
              //005519EA
              if (sub_00497B4C(FichierCdnTemp.sub_004BEA4C, f364)) then
              begin//7
                //00551A00
                ListBoxFichiers.Items.Add(x);
                FileListBox1.ItemIndex := FileListBox1.ItemIndex + 1;
              end//7
              else
              begin//7
                //00551A39
                Application.MessageBox(PChar('Le fichier "' + ExtractFileName(x) + '" n''a pas les mêmes noms de périodes que les autres fichiers.' + #13 + #10 + #13 + #10 + 'Ce fichier ne peut être ajouté pour la fusion.'),'Carnet de Notes version Personnelle'  , $10{16});
              end;//7
            end//6
            else
            begin//6
              //00551A99
              Application.MessageBox(PChar('Le fichier "' + ExtractFileName(x) + '" n''a pas la même liste d''élèves que les autres fichiers.' + #13 + #10 + #13 + #10 + 'Ce fichier ne peut être ajouté pour la fusion.'),'Carnet de Notes version Personnelle' , $10{16});
            end;//6
          end;//5
        end//4
        else
        begin//4
          //00551AF9
          Application.MessageBox(PChar('Le fichier "' + ExtractFileName(x) + '" ne contient aucun élève.' + #13 + #10 + #13 + #10 + 'Ce fichier ne peut être ajouté pour la fusion.'), 'Carnet de Notes version Personnelle', $10{16});
        end;//4
      end//3
      else
      begin//3
        //00551B59
        Application.MessageBox(PChar('Le fichier "' + ExtractFileName(x) + '" est un fichier d''une ancienne version Carnet de Notes.' 
																		+ #13 + #10 + #13 + #10 + 'La fusion n''est pas possible directement avec ce type de fichier.' 
																		+ #13 + #10 + #13 + #10 + 'Vous devez l''ouvrir normalement puis l''enregistrer pour qu''il soit traduit au nouveau format.' 
																		+ #13 + #10 + #13 + #10 + 'La fusion sera alors possible.'), 'Carnet de Notes version Personnelle' , $10{16});
      end;//3
    end//2
    else
    begin//2
      //00551BE8
      Application.MessageBox(PChar('Le fichier "' + ExtractFileName(x) + '" n''est pas un fichier Carnet de Notes valide.'), 'Carnet de Notes version Personnelle', $10{16});
    end;//2
    
    FichierCdnTemp.Destroy;
	 //00551C40
 
end;//0

//00551F18
procedure TFormFusionner.CheckListBox1ClickCheck;
begin
{*
 00551F18    push        ebx
 00551F19    push        esi
 00551F1A    push        edi
 00551F1B    push        ebp
 00551F1C    mov         edi,eax
 00551F1E    xor         ebx,ebx
 00551F20    mov         eax,dword ptr [edi+314];TFormFusionner.CheckListBox1:TCheckListBox
 00551F26    mov         eax,dword ptr [eax+1F0];TCheckListBox.FItems:TStrings
 00551F2C    mov         edx,dword ptr [eax]
 00551F2E    call        dword ptr [edx+14];TStrings.GetCount
 00551F31    mov         ebp,eax
 00551F33    sub         ebp,1
>00551F36    jno         00551F3D
 00551F38    call        @IntOver
 00551F3D    test        ebp,ebp
>00551F3F    jl          00551F5B
 00551F41    inc         ebp
 00551F42    xor         esi,esi
 00551F44    mov         eax,dword ptr [edi+314];TFormFusionner.CheckListBox1:TCheckListBox
 00551F4A    mov         edx,esi
 00551F4C    call        TCheckListBox.GetChecked
 00551F51    test        al,al
>00551F53    je          00551F57
 00551F55    mov         bl,1
 00551F57    inc         esi
 00551F58    dec         ebp
>00551F59    jne         00551F44
 00551F5B    mov         eax,dword ptr [edi+2E0];TFormFusionner.SpeedButtonSuivant:TSpeedButton
 00551F61    mov         edx,ebx
 00551F63    mov         ecx,dword ptr [eax]
 00551F65    call        dword ptr [ecx+5C];TControl.SetEnabled
 00551F68    pop         ebp
 00551F69    pop         edi
 00551F6A    pop         esi
 00551F6B    pop         ebx
 00551F6C    ret
*}
end;

//00551F70
procedure TFormFusionner.SpeedButtonFusionnerClick(Sender:TObject);
var
  FichierCdn1:TFichierCdn;
begin//0
  //00551F70
    //00551F97
	showmessage('ok');
    FichierCdn1{lvar_C} := TFichierCdn.Create(''{, 1, 0, 0});
    (*f368[0].sub_004BE988(lvar_A2C);
    FichierCdn1.sub_004C4CC8(lvar_A2C);
    lvar_1C := TStringList.Create;
    if (sub_004BE9E0(f368[0]) > 0) then
    begin//2
      //00552014
      lvar_20 := sub_004BE9E0(EDX[EAX]);
      for I := 1 to sub_004BE9E0(EDX[EAX])  do
      begin//3
        //0055201C
        f368[0].sub_004BE9EC(I, lvar_A2C);
         := ;
        EDX := ;
        EAX := ;
        ECX := .;
        call();
      end;//3
    end;//2
    sub_004C4CBC(?);

    call();

    lvar_A34 := ComboBoxUtilisateurs.Items[ComboBoxUtilisateurs.ItemIndex];
    .sub_004C3920(lvar_A2C);

    lvar_A38 := Edit1.Text;
    .sub_004BEFD0(lvar_A2C);
    lvar_A3C := Edit2.Text;
    .sub_004BF004(lvar_A2C);
    lvar_A40 := Edit3.Text;
    .sub_004BF038(lvar_A2C);
    lvar_A44 := Edit4.Text;
    sub_004BF06C(?, lvar_A2C);
    lvar_A48 := Edit5.Text;
    sub_004BF0A0(?, lvar_A2C);
    EAX := 0;
    EDX := Self;
    EDX := f368;
    EAX := EDX[EAX];
    EAX := EDX[EAX].sub_004BEAC4;
    EDX := EDX[EAX].sub_004BEAC4;
    EAX := ;
    sub_004BF64C(?, EDX);
    EAX := ;
    sub_004BF0D4(?);
    EAX := 0;
    EDX := Self;
    EDX := f368;
    EAX := EDX[EAX];
    EAX := sub_004BE9E0(EDX[EAX]);
    if (sub_004BE9E0(EDX[EAX])  > 0) then
    begin//2
      //00552240
      lvar_20 := sub_004BE9E0(EDX[EAX]) And $FF{255};
      
      for EBX := 1 to sub_004BE9E0(EDX[EAX]) do
      begin//3
        //00552248
        lvar_10 := 1;
        EDX := EBX;//EBX
        EDX := EDX - 1;//EDX
        if (CheckListBox1.Checked[EDX] = False) then Continue;
        EAX := ListBoxFichiers.Items.Count;
        EAX := EAX - 1;//EAX
        if (EAX < 0) then Continue;
        EAX := EAX + 1;//EAX
        lvar_24 := EAX;
        lvar_14 := 0;
        for lvar_14 := 0 to EAX - 1 do
        begin//4
          //005522A2
          EAX := ;
          EDX := Self;
          
          EAX := f368[EAX];
          EDX[EAX].sub_004BE92C(lvar_12C);
          EAX := ;
          

          f368[EAX].sub_004BE974(lvar_A50);
          EAX := ;
          lvar_A4C := ExtractFileName;
         
         
          
          case RadioGroupDonneesARetenir.ItemIndex of
            0..0:
            begin//6
              //00552337
              EAX := sub_004B9E48;
              lvar_A54 := IntToStr(sub_004B9E48);
              
              lvar_B58 := DateToStr(Date);
              EDX := ;
              ECX := $FF{255};
               := ;
              //push EAX
               := ;
              ECX := ;
             
              lvar_C5C := 'Moyenne du fichier ' + ;
              EDX := ;
              ECX := $FF{255};
               := ;
              //push EAX
               := ;
              ECX := ;
             
              lvar_D64 := 'Moyenne ' + ;
              EDX := ;
              ECX := $FF{255};
               := ;
              EDX := EBX;//EBX
              EAX := ;
              .sub_004BF7F0(EBX, lvar_D60, lvar_A2C, ', {$552D18}, lvar_B54, lvar_C58, ', '');
              if (f368[0].sub_004BEA58 <= 0) then Continue;
              lvar_28 := EDX[EAX].sub_004BEA58 And $FF{255};
              ESI := 1;
              for ESI := 1 to EDX[EAX].sub_004BEA58 And $FF{255} do
              begin//7
                //00552479
                //push ESI
                EAX := ;
                EDX := Self;
                EDX := f368;
                EAX := EDX[EAX];
                EAX := EDX[EAX].sub_004C4D44;
                //push EAX
                //push EAX
                EAX := ;
                EDX := Self;
                EDX := f368;
                EAX := EDX[EAX];
                ECX := ESI;//ESI
                EDX := EBX;//EBX
                EDX[EAX].sub_004C2D10(EBX, ESI, EDX[EAX].sub_004C4D44{EAX}, lvar_A2C);
                //push EAX
                ECX := ;
                ECX := ECX + 1;//ECX
                EDX := EBX;//EBX
                EAX := ;
                .sub_004C1074(EBX, ECX, , lvar_A2C);
              end;//7
            end;//6
            1:
            begin//6
              //00552530
              EAX := ;
              EAX := f368[EAX];
              EDX := EBX;//EBX
              EAX := EDX[EAX].sub_004C3134(EBX);
              lvar_1C := EDX[EAX].sub_004C3134(EBX);
              EAX := ;
              EDX := .;
              call(
              
              );
              if (EAX > 0) then
              begin//7
                //00552570
                lvar_28 := EAX;
                lvar_18 := 1;
                for lvar_18 := 1 to lvar_28 do
                begin//8
                  //0055257A
                  EDX := ;
                  EDX := EDX - 1;//EDX
                  EAX := ;
                  ESI := .;
                  call('Moy. ');
                  lvar_D6C :=  + lvar_D70 + ' - ' + lvar_D74;
                  EDX := ;
                  ECX := $FF{255};
                   := ;
                  ESI := $552D7C;
                  ECX := 5;
                  lvar_92C := ;
                  lvar_92C := ;
                   := ;
                  ECX := ;
                  lvar_D78 := 'Extrait de ' + ;
                  EDX := ;
                  ECX := $FF{255};
                   := ;
                  lvar_D80 := IntToStr(sub_004B9E48);
                  EDX := ;
                  ECX := $FF{255};
                   := ;
                  
                  lvar_D84 := DateToStr(Date);
                  EDX := ;
                  ECX := $FF{255};
                   := ;
                  //push EAX
                  //push EAX
                  //push EAX
                  EDX := EBX;//EBX
                  EAX := ;
                  .sub_004BF7F0(EBX, lvar_72C, lvar_A2C, ', {$552D18}, lvar_B54, lvar_82C, lvar_92C, '');
				  
                  if (f368[0].sub_004BEA58  > 0) then
                  begin//9
                    //005526F5
                    lvar_2C := EDX[EAX].sub_004BEA58 And $FF{255};
                    ESI := 1;
                    for ESI := 1 to f368[0].sub_004BEA58  do
                    begin//10
                      //005526FD
                      
                      EDX := ;
                      EDX := EDX - 1;//EDX
                      EAX := ;
                      EDI := .;
                      call();
                      EDX := ;
                      ECX := $FF{255};
                       := ;
                      EAX := ;
                      EAX := f368[EAX];
                      ECX := EBX;//EBX
                      ECX[EAX].sub_004C2E60(lvar_B54, EBX, );
                      //push EAX
                      ECX := ;
                      EDX := EBX;//EBX
                      EAX := ;
                      .sub_004C1074(EBX, , 0, lvar_A2C);
                    end;//10
                  end;//9
                  lvar_10 := lvar_10 + 1;
                end;//8
              end;//7
              EDX := 1;
              EAX := ;
              ECX := .;
              call();
            end;//6
            2:
            begin//6
              //005527E2
              EAX := ;
              EAX := f368[EAX];
              EDX := EBX;//EBX
              EAX := EDX[EAX].sub_004BEAD0(EBX);
              EAX := EAX And $FF{255};//EDX[EAX].sub_004BEAD0(EBX) And $FF{255}
              if (EAX{EDX[EAX].sub_004BEAD0(EBX) And $FF{255}} <= 0) then Continue;
              lvar_28 := EAX;//EDX[EAX].sub_004BEAD0(EBX) And $FF{255}
              
              for lvar_18 := 1 to lvar_28 do
              begin//7
                //00552826
                //push EAX
                EAX := ;
                EDX := Self;
                EDX := f368;
                EAX := EDX[EAX];
                ECX := ;
                EDX := EBX;//EBX
                sub_004BED2C(EDX[EAX], EBX, , lvar_32C);
                //push EAX
                EAX := ;
                EDX := Self;
                EDX := f368;
                EAX := EDX[EAX];
                ECX := ;
                EDX := EBX;//EBX
                EDX[EAX].sub_004BED7C(EBX, , lvar_42C);
                //push EAX
                EAX := ;
                EDX := Self;
                EDX := f368;
                EAX := EDX[EAX];
                ECX := ;
                EDX := EBX;//EBX
                EDX[EAX].sub_004BEDCC(EBX, , lvar_52C);
                //push EAX
                EAX := ;
                EDX := Self;
                EDX := f368;
                EAX := EDX[EAX];
                ECX := ;
                EDX := EBX;//EBX
                EDX[EAX].sub_004BEE1C(EBX, , lvar_62C);
                //push EAX
                EAX := ;
                EDX := Self;
                EDX := f368;
                EAX := EDX[EAX];
                ECX := ;
                EDX := EBX;//EBX
                sub_004BED04(EDX[EAX], EBX, lvar_A2C, ?);
                 := ;
                 := ;
               
                lvar_D8C := lvar_D90 + ' - ' + lvar_D94;
                EDX := ;
                ECX := $FF{255};
                 := ;
                //push EAX
                EAX := ;
                EDX := Self;
                EDX := f368;
                EAX := EDX[EAX];
                ECX := ;
                EDX := EBX;//EBX
                EDX[EAX].sub_004BEEBC(EBX, , lvar_92C);
                //push EAX
                EAX := ;
                EDX := Self;
                EDX := f368;
                EAX := EDX[EAX];
                ECX := ;
                EDX := EBX;//EBX
                EDX[EAX].sub_004BEE6C(EBX, , lvar_82C);
                //push EAX
                EAX := ;
                EDX := Self;
                EDX := f368;
                EAX := EDX[EAX];
                ECX := ;
                EDX := EBX;//EBX
                EDX[EAX].sub_004BEF0C(EBX, , lvar_A2C);
                EDX := $552DA8;
                ECX := ;
                ECX := ECX + 1;//ECX
                EAX := (lvar_A2C = 'Oral');
*
                EDX := EBX;//EBX
                EAX := ;
                .sub_004BF7F0(EBX, lvar_72C, lvar_32C, lvar_42C, lvar_52C, lvar_62C, lvar_82C, lvar_92C, lvar_A2C = 'Oral'{EAX});
                EAX := ;
                EAX := f368[0].sub_004BEA58;
          
                if (f368[0].sub_004BEA58 > 0) then
                begin//8
                  //00552B29
                  lvar_2C := f368[0].sub_004BEA58;
                  
                  for ESI := 1 to f368[0].sub_004BEA58 do
                  begin//9
                    //00552B31
                    
                    EAX := ;
                    
                    EAX := f368[EAX];
                    ECX := ;
                    EDX := EBX;//EBX
                    EDX[EAX].sub_004BEF5C(EBX, , , lvar_A2C);
                    //push EAX
                    ECX := ;
                    EDX := EBX;//EBX
                    EAX := ;
                    .sub_004C1074(EBX, , , lvar_A2C);
                  end;//9
                end;//8
                lvar_10 := lvar_10 + 1;
              end;//7
            end;//6
          end;//5
        end;//4
      end;//3
    end;//2
    if (SaveDialog1.Execute) then
    begin//2
      //00552C08
      lvar_D98 := SaveDialog1.FileName;
     
      .sub_004C01F8(, 0, $552DB0, 0);
     
      lvar_D9C := SaveDialog1.FileName;
      EDX := ;
     
      EAX := f36C
      ECX := $FF{255};
       := ;
    end;//2
    EDX := 1;
    EAX := ;
    ECX := .;
    call();
    EAX := Self;*)
    ModalResult := 1;
	 //00552C83
  
end;//0

//00552DB4
procedure TFormFusionner.SpeedButton20Click(Sender:TObject);
begin
{*
 00552DB4    push        ebx
 00552DB5    push        esi
 00552DB6    push        edi
 00552DB7    mov         edi,eax
 00552DB9    mov         eax,dword ptr [edi+314];TFormFusionner.CheckListBox1:TCheckListBox
 00552DBF    mov         eax,dword ptr [eax+1F0];TCheckListBox.FItems:TStrings
 00552DC5    mov         edx,dword ptr [eax]
 00552DC7    call        dword ptr [edx+14];TStrings.GetCount
 00552DCA    mov         ebx,eax
 00552DCC    test        ebx,ebx
>00552DCE    jle         00552DF2
 00552DD0    mov         esi,1
 00552DD5    mov         edx,esi
 00552DD7    sub         edx,1
>00552DDA    jno         00552DE1
 00552DDC    call        @IntOver
 00552DE1    mov         eax,dword ptr [edi+314];TFormFusionner.CheckListBox1:TCheckListBox
 00552DE7    mov         cl,1
 00552DE9    call        TCheckListBox.SetChecked
 00552DEE    inc         esi
 00552DEF    dec         ebx
>00552DF0    jne         00552DD5
 00552DF2    mov         eax,dword ptr [edi+2E0];TFormFusionner.SpeedButtonSuivant:TSpeedButton
 00552DF8    mov         dl,1
 00552DFA    mov         ecx,dword ptr [eax]
 00552DFC    call        dword ptr [ecx+5C];TControl.SetEnabled
 00552DFF    pop         edi
 00552E00    pop         esi
 00552E01    pop         ebx
 00552E02    ret
*}
end;

//00552E04
procedure TFormFusionner.SpeedButton21Click(Sender:TObject);
begin
{*
 00552E04    push        ebx
 00552E05    push        esi
 00552E06    push        edi
 00552E07    mov         edi,eax
 00552E09    mov         eax,dword ptr [edi+314];TFormFusionner.CheckListBox1:TCheckListBox
 00552E0F    mov         eax,dword ptr [eax+1F0];TCheckListBox.FItems:TStrings
 00552E15    mov         edx,dword ptr [eax]
 00552E17    call        dword ptr [edx+14];TStrings.GetCount
 00552E1A    mov         ebx,eax
 00552E1C    test        ebx,ebx
>00552E1E    jle         00552E42
 00552E20    mov         esi,1
 00552E25    mov         edx,esi
 00552E27    sub         edx,1
>00552E2A    jno         00552E31
 00552E2C    call        @IntOver
 00552E31    mov         eax,dword ptr [edi+314];TFormFusionner.CheckListBox1:TCheckListBox
 00552E37    xor         ecx,ecx
 00552E39    call        TCheckListBox.SetChecked
 00552E3E    inc         esi
 00552E3F    dec         ebx
>00552E40    jne         00552E25
 00552E42    mov         eax,dword ptr [edi+2E0];TFormFusionner.SpeedButtonSuivant:TSpeedButton
 00552E48    xor         edx,edx
 00552E4A    mov         ecx,dword ptr [eax]
 00552E4C    call        dword ptr [ecx+5C];TControl.SetEnabled
 00552E4F    pop         edi
 00552E50    pop         esi
 00552E51    pop         ebx
 00552E52    ret
*}
end;

//00552E54
procedure TFormFusionner.ListBoxFichiersDrawItem(Control:TWinControl; Index:Integer; Rect:TRect; State:TOwnerDrawState);
begin//0
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
end;//0


//00552FF8
procedure TFormFusionner.CheckListBox1DrawItem(Control:TWinControl; Index:Integer; Rect:TRect; State:TOwnerDrawState);
begin//0
  //00552FF8

    //0055302A
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

    CheckListBox1.Canvas.TextOut(Rect.Left + 5, Rect.Top + 2, CheckListBox1.Items[Index]);
    if ( odSelected in State) then
    begin//2
      //005530E6
      CheckListBox1.Canvas.Brush.Color := $F8D1C5;
      CheckListBox1.Canvas.FillRect(Rect);
      CheckListBox1.Canvas.Font.Color := $FF0000;
      CheckListBox1.Canvas.TextOut(Rect.Left + 5, Rect.Top + 2, CheckListBox1.Items[Index]);
    end;//2
	 //0055317E
  
end;//0

//0055319C
procedure TFormFusionner.FormKeyPress(Sender:TObject; var Key:Char);
begin
{*
 0055319C    cmp         byte ptr [ecx],1B
>0055319F    jne         005531AB
 005531A1    mov         dword ptr [eax+234],2;TFormFusionner.FModalResult:TModalResult
 005531AB    ret
*}
end;

//005531AC
procedure TFormFusionner.FormDestroy(Sender:TObject);
begin
{*
 005531AC    push        ebx
 005531AD    mov         ebx,eax
 005531AF    lea         eax,[ebx+360];TFormFusionner.?f360:dword
 005531B5    call        FreeAndNil
 005531BA    lea         eax,[ebx+364];TFormFusionner.?f364:dword
 005531C0    call        FreeAndNil
 005531C5    pop         ebx
 005531C6    ret
*}
end;

//005531C8
procedure TFormFusionner.SpeedButtonAideClick(Sender:TObject);
begin
{*
 005531C8    push        ebx
 005531C9    mov         ebx,eax
 005531CB    push        553214;'Fusionner plusieurs fichiers'
 005531D0    push        55323C;'Cette boite de dialogue permet de créer un nouveau fichier à partir des informat...
 005531D5    push        78
 005531D7    mov         ecx,ebx
 005531D9    mov         dl,1
 005531DB    mov         eax,[00536C0C];TFormAide
 005531E0    call        TFormAide.Create;TFormAide.Create
 005531E5    mov         edx,dword ptr ds:[616354];^gvar_00617E94:TFormAide
 005531EB    mov         dword ptr [edx],eax
 005531ED    mov         eax,[00616354];^gvar_00617E94:TFormAide
 005531F2    mov         eax,dword ptr [eax]
 005531F4    mov         edx,dword ptr [eax]
 005531F6    call        dword ptr [edx+0D8]
 005531FC    mov         eax,[00616354];^gvar_00617E94:TFormAide
 00553201    mov         eax,dword ptr [eax]
 00553203    mov         dl,1
 00553205    mov         ecx,dword ptr [eax]
 00553207    call        dword ptr [ecx-4]
 0055320A    pop         ebx
 0055320B    ret
*}
end;

end.