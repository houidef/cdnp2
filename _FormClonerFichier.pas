//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _FormClonerFichier;

interface

uses
Forms, Windows,  SysUtils, Classes, ExtCtrls, StdCtrls, Buttons, BrowseDr, Controls, UFichierCdn;

type
  TFormClonerFichier = class(TForm)
  published
    Panel2:TPanel;//f2D0
    Bevel2:TBevel;//f2D4
    Image1:TImage;//f2D8
    ListBoxEnseignants:TListBox;//f2DC
    ListBoxMatieres:TListBox;//f2E0
    SpeedButtonCollerEnseignants:TSpeedButton;//f2E4
    SpeedButtonCollerMatieres:TSpeedButton;//f2E8
    SpeedButtonFermer:TSpeedButton;//f2EC
    SpeedButtonCreerFichiers:TSpeedButton;//f2F0
    BrowseDirectoryDlg1:TBrowseDirectoryDlg;//f2F4
    SpeedButtonAide:TSpeedButton;//f2F8
    CheckBoxOuvrirFichiers:TCheckBox;//f2FC
    procedure ListBoxMatieresDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);//005381CC
    procedure ListBoxEnseignantsDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);//00538060
    procedure ListBoxEnseignantsClick(Sender:TObject);//00538338
    procedure FormDestroy(Sender:TObject);//00538378
    procedure ListBoxMatieresClick(Sender:TObject);//00538358
    procedure SpeedButtonAideClick(Sender:TObject);//00537A70
    procedure SpeedButtonCollerMatieresClick(Sender:TObject);//0053744C
    procedure SpeedButtonCollerEnseignantsClick(Sender:TObject);//00537390
    procedure SpeedButtonFermerClick(Sender:TObject);//00537508
    procedure FormKeyPress(Sender:TObject; var Key:Char);//00537A60
    procedure SpeedButtonCreerFichiersClick(Sender:TObject);//00537510
  public
    f300:TFichierCdn;//f300
    f304:TStringList;//f304
    constructor Create(Owner:TComponent; Logo:Timage; F:TFichierCdn);//00537324
    function sub_00538384:boolean;//00538384
    function sub_00538394:TStringlist;//00538394
  end;
 var
   FormClonerFichier:TFormClonerFichier; 

implementation

{$R *.DFM}

//00537324
constructor TFormClonerFichier.Create(Owner:TComponent; Logo:Timage; F:TFichierCdn);
begin//0
  //00537324
  inherited Create(Owner);
  Image1.Picture := Logo.Picture;
  f300 := F;
  f304 := TStringlist.Create;
end;//0


//00537390
procedure TFormClonerFichier.SpeedButtonCollerEnseignantsClick(Sender:TObject);
begin
{*
 00537390    push        ebp
 00537391    mov         ebp,esp
 00537393    push        0
 00537395    push        ebx
 00537396    push        esi
 00537397    mov         ebx,eax
 00537399    xor         eax,eax
 0053739B    push        ebp
 0053739C    push        53743E
 005373A1    push        dword ptr fs:[eax]
 005373A4    mov         dword ptr fs:[eax],esp
 005373A7    call        Clipboard
 005373AC    mov         dx,1
 005373B0    call        TClipboard.HasFormat
 005373B5    test        al,al
>005373B7    je          00537428
 005373B9    call        Clipboard
 005373BE    lea         edx,[ebp-4]
 005373C1    call        TClipboard.GetAsText
 005373C6    mov         edx,dword ptr [ebp-4]
 005373C9    mov         eax,dword ptr [ebx+2DC];TFormClonerFichier.ListBoxEnseignants:TListBox
 005373CF    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 005373D5    mov         ecx,dword ptr [eax]
 005373D7    call        dword ptr [ecx+2C];TStrings.SetTextStr
 005373DA    mov         eax,dword ptr [ebx+2DC];TFormClonerFichier.ListBoxEnseignants:TListBox
 005373E0    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 005373E6    mov         edx,dword ptr [eax]
 005373E8    call        dword ptr [edx+14];TStrings.GetCount
 005373EB    mov         esi,eax
 005373ED    mov         eax,dword ptr [ebx+2E0];TFormClonerFichier.ListBoxMatieres:TListBox
 005373F3    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 005373F9    mov         edx,dword ptr [eax]
 005373FB    call        dword ptr [edx+14];TStrings.GetCount
 005373FE    cmp         esi,eax
>00537400    jne         00537417
 00537402    mov         eax,dword ptr [ebx+2E0];TFormClonerFichier.ListBoxMatieres:TListBox
 00537408    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 0053740E    mov         edx,dword ptr [eax]
 00537410    call        dword ptr [edx+14];TStrings.GetCount
 00537413    test        eax,eax
>00537415    jg          0053741B
 00537417    xor         edx,edx
>00537419    jmp         0053741D
 0053741B    mov         dl,1
 0053741D    mov         eax,dword ptr [ebx+2F0];TFormClonerFichier.SpeedButtonCreerFichiers:TSpeedButton
 00537423    mov         ecx,dword ptr [eax]
 00537425    call        dword ptr [ecx+5C];TControl.SetEnabled
 00537428    xor         eax,eax
 0053742A    pop         edx
 0053742B    pop         ecx
 0053742C    pop         ecx
 0053742D    mov         dword ptr fs:[eax],edx
 00537430    push        537445
 00537435    lea         eax,[ebp-4]
 00537438    call        @LStrClr
 0053743D    ret
>0053743E    jmp         @HandleFinally
>00537443    jmp         00537435
 00537445    pop         esi
 00537446    pop         ebx
 00537447    pop         ecx
 00537448    pop         ebp
 00537449    ret
*}
end;

//0053744C
procedure TFormClonerFichier.SpeedButtonCollerMatieresClick(Sender:TObject);
begin
{*
 0053744C    push        ebp
 0053744D    mov         ebp,esp
 0053744F    push        0
 00537451    push        ebx
 00537452    push        esi
 00537453    mov         ebx,eax
 00537455    xor         eax,eax
 00537457    push        ebp
 00537458    push        5374FA
 0053745D    push        dword ptr fs:[eax]
 00537460    mov         dword ptr fs:[eax],esp
 00537463    call        Clipboard
 00537468    mov         dx,1
 0053746C    call        TClipboard.HasFormat
 00537471    test        al,al
>00537473    je          005374E4
 00537475    call        Clipboard
 0053747A    lea         edx,[ebp-4]
 0053747D    call        TClipboard.GetAsText
 00537482    mov         edx,dword ptr [ebp-4]
 00537485    mov         eax,dword ptr [ebx+2E0];TFormClonerFichier.ListBoxMatieres:TListBox
 0053748B    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 00537491    mov         ecx,dword ptr [eax]
 00537493    call        dword ptr [ecx+2C];TStrings.SetTextStr
 00537496    mov         eax,dword ptr [ebx+2DC];TFormClonerFichier.ListBoxEnseignants:TListBox
 0053749C    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 005374A2    mov         edx,dword ptr [eax]
 005374A4    call        dword ptr [edx+14];TStrings.GetCount
 005374A7    mov         esi,eax
 005374A9    mov         eax,dword ptr [ebx+2E0];TFormClonerFichier.ListBoxMatieres:TListBox
 005374AF    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 005374B5    mov         edx,dword ptr [eax]
 005374B7    call        dword ptr [edx+14];TStrings.GetCount
 005374BA    cmp         esi,eax
>005374BC    jne         005374D3
 005374BE    mov         eax,dword ptr [ebx+2E0];TFormClonerFichier.ListBoxMatieres:TListBox
 005374C4    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 005374CA    mov         edx,dword ptr [eax]
 005374CC    call        dword ptr [edx+14];TStrings.GetCount
 005374CF    test        eax,eax
>005374D1    jg          005374D7
 005374D3    xor         edx,edx
>005374D5    jmp         005374D9
 005374D7    mov         dl,1
 005374D9    mov         eax,dword ptr [ebx+2F0];TFormClonerFichier.SpeedButtonCreerFichiers:TSpeedButton
 005374DF    mov         ecx,dword ptr [eax]
 005374E1    call        dword ptr [ecx+5C];TControl.SetEnabled
 005374E4    xor         eax,eax
 005374E6    pop         edx
 005374E7    pop         ecx
 005374E8    pop         ecx
 005374E9    mov         dword ptr fs:[eax],edx
 005374EC    push        537501
 005374F1    lea         eax,[ebp-4]
 005374F4    call        @LStrClr
 005374F9    ret
>005374FA    jmp         @HandleFinally
>005374FF    jmp         005374F1
 00537501    pop         esi
 00537502    pop         ebx
 00537503    pop         ecx
 00537504    pop         ebp
 00537505    ret
*}
end;

//00537508
procedure TFormClonerFichier.SpeedButtonFermerClick(Sender:TObject);
begin
{*
 00537508    call        TCustomForm.Close
 0053750D    ret
*}
end;

//00537510
procedure TFormClonerFichier.SpeedButtonCreerFichiersClick(Sender:TObject);
begin
{*
 00537510    push        ebp
 00537511    mov         ebp,esp
 00537513    mov         ecx,49
 00537518    push        0
 0053751A    push        0
 0053751C    dec         ecx
>0053751D    jne         00537518
 0053751F    push        ebx
 00537520    push        esi
 00537521    mov         esi,eax
 00537523    xor         eax,eax
 00537525    push        ebp
 00537526    push        5379AA
 0053752B    push        dword ptr fs:[eax]
 0053752E    mov         dword ptr fs:[eax],esp
 00537531    mov         eax,dword ptr [esi+2F4];TFormClonerFichier.BrowseDirectoryDlg1:TBrowseDirectoryDlg
 00537537    mov         edx,dword ptr [eax]
 00537539    call        dword ptr [edx+3C];TBrowseDirectoryDlg.sub_005362AC
 0053753C    test        al,al
>0053753E    je          0053796F
 00537544    mov         eax,dword ptr [esi+304];TFormClonerFichier.?f304:dword
 0053754A    mov         edx,dword ptr [eax]
 0053754C    call        dword ptr [edx+40]
 0053754F    mov         eax,dword ptr [esi+2DC];TFormClonerFichier.ListBoxEnseignants:TListBox
 00537555    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 0053755B    mov         edx,dword ptr [eax]
 0053755D    call        dword ptr [edx+14];TStrings.GetCount
 00537560    sub         eax,1
>00537563    jno         0053756A
 00537565    call        @IntOver
 0053756A    test        eax,eax
>0053756C    jl          00537903
 00537572    inc         eax
 00537573    mov         dword ptr [ebp-2C],eax
 00537576    mov         dword ptr [ebp-20],0
 0053757D    push        1
 0053757F    push        0
 00537581    push        0
 00537583    xor         ecx,ecx
 00537585    mov         dl,1
 00537587    mov         eax,[004BE574];TFichierCdn
 0053758C    call        TFichierCdn.Create;TFichierCdn.Create
 00537591    mov         dword ptr [ebp-4],eax
 00537594    lea         edx,[ebp-12C]
 0053759A    mov         eax,dword ptr [esi+300];TFormClonerFichier.?f300:dword
 005375A0    call        004BE988
 005375A5    lea         edx,[ebp-12C]
 005375AB    mov         eax,dword ptr [ebp-4]
 005375AE    call        004C4CC8
 005375B3    mov         dl,1
 005375B5    mov         eax,[004120B8];TStringList
 005375BA    call        TObject.Create;TStringList.Create
 005375BF    mov         dword ptr [ebp-1C],eax
 005375C2    mov         eax,dword ptr [esi+300];TFormClonerFichier.?f300:dword
 005375C8    call        004BE9E0
 005375CD    xor         ebx,ebx
 005375CF    mov         bl,al
 005375D1    test        ebx,ebx
>005375D3    jle         00537622
 005375D5    mov         dword ptr [ebp-28],1
 005375DC    lea         ecx,[ebp-12C]
 005375E2    mov         edx,dword ptr [ebp-28]
 005375E5    cmp         edx,0FF
>005375EB    jbe         005375F2
 005375ED    call        @BoundErr
 005375F2    mov         eax,dword ptr [esi+300];TFormClonerFichier.?f300:dword
 005375F8    call        004BE9EC
 005375FD    lea         edx,[ebp-12C]
 00537603    lea         eax,[ebp-130]
 00537609    call        @LStrFromString
 0053760E    mov         edx,dword ptr [ebp-130]
 00537614    mov         eax,dword ptr [ebp-1C]
 00537617    mov         ecx,dword ptr [eax]
 00537619    call        dword ptr [ecx+34];TStringList.Add
 0053761C    inc         dword ptr [ebp-28]
 0053761F    dec         ebx
>00537620    jne         005375DC
 00537622    mov         edx,dword ptr [ebp-1C]
 00537625    mov         eax,dword ptr [ebp-4]
 00537628    call        004C4CBC
 0053762D    lea         ecx,[ebp-0C]
 00537630    mov         eax,dword ptr [esi+2DC];TFormClonerFichier.ListBoxEnseignants:TListBox
 00537636    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 0053763C    mov         edx,dword ptr [ebp-20]
 0053763F    mov         ebx,dword ptr [eax]
 00537641    call        dword ptr [ebx+0C];TStrings.Get
 00537644    lea         eax,[ebp-12C]
 0053764A    mov         edx,dword ptr [ebp-0C]
 0053764D    mov         ecx,0FF
 00537652    call        @LStrToString
 00537657    lea         edx,[ebp-12C]
 0053765D    mov         eax,dword ptr [ebp-4]
 00537660    call        004C3920
 00537665    lea         edx,[ebp-12C]
 0053766B    mov         eax,dword ptr [esi+300];TFormClonerFichier.?f300:dword
 00537671    call        004BE8FC
 00537676    lea         edx,[ebp-12C]
 0053767C    mov         eax,dword ptr [ebp-4]
 0053767F    call        004BEFD0
 00537684    lea         edx,[ebp-12C]
 0053768A    mov         eax,dword ptr [esi+300];TFormClonerFichier.?f300:dword
 00537690    call        004BE914
 00537695    lea         edx,[ebp-12C]
 0053769B    mov         eax,dword ptr [ebp-4]
 0053769E    call        004BF004
 005376A3    lea         ecx,[ebp-8]
 005376A6    mov         eax,dword ptr [esi+2E0];TFormClonerFichier.ListBoxMatieres:TListBox
 005376AC    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 005376B2    mov         edx,dword ptr [ebp-20]
 005376B5    mov         ebx,dword ptr [eax]
 005376B7    call        dword ptr [ebx+0C];TStrings.Get
 005376BA    lea         eax,[ebp-12C]
 005376C0    mov         edx,dword ptr [ebp-8]
 005376C3    mov         ecx,0FF
 005376C8    call        @LStrToString
 005376CD    lea         edx,[ebp-12C]
 005376D3    mov         eax,dword ptr [ebp-4]
 005376D6    call        004BF038
 005376DB    lea         edx,[ebp-12C]
 005376E1    mov         eax,dword ptr [esi+300];TFormClonerFichier.?f300:dword
 005376E7    call        004BE944
 005376EC    lea         edx,[ebp-12C]
 005376F2    mov         eax,dword ptr [ebp-4]
 005376F5    call        004BF06C
 005376FA    push        5379C0;'Fichier créé par '
 005376FF    lea         edx,[ebp-238]
 00537705    mov         eax,dword ptr [esi+300];TFormClonerFichier.?f300:dword
 0053770B    call        004C3908
 00537710    lea         edx,[ebp-238]
 00537716    lea         eax,[ebp-138]
 0053771C    call        @LStrFromString
 00537721    push        dword ptr [ebp-138]
 00537727    push        5379DC;' pour '
 0053772C    push        dword ptr [ebp-0C]
 0053772F    lea         eax,[ebp-134]
 00537735    mov         edx,4
 0053773A    call        @LStrCatN
 0053773F    mov         edx,dword ptr [ebp-134]
 00537745    lea         eax,[ebp-12C]
 0053774B    mov         ecx,0FF
 00537750    call        @LStrToString
 00537755    lea         edx,[ebp-12C]
 0053775B    mov         eax,dword ptr [ebp-4]
 0053775E    call        004BF0A0
 00537763    mov         eax,dword ptr [esi+300];TFormClonerFichier.?f300:dword
 00537769    call        004BEAC4
 0053776E    mov         edx,eax
 00537770    mov         eax,dword ptr [ebp-4]
 00537773    call        004BF64C
 00537778    mov         eax,dword ptr [ebp-4]
 0053777B    call        004BF0D4
 00537780    mov         eax,dword ptr [ebp-1C]
 00537783    mov         edx,dword ptr [eax]
 00537785    call        dword ptr [edx+40];TStringList.Clear
 00537788    mov         eax,dword ptr [esi+300];TFormClonerFichier.?f300:dword
 0053778E    call        004BEA58
 00537793    xor         ebx,ebx
 00537795    mov         bl,al
 00537797    test        ebx,ebx
>00537799    jle         005377E8
 0053779B    mov         dword ptr [ebp-24],1
 005377A2    lea         ecx,[ebp-12C]
 005377A8    mov         edx,dword ptr [ebp-24]
 005377AB    cmp         edx,0FF
>005377B1    jbe         005377B8
 005377B3    call        @BoundErr
 005377B8    mov         eax,dword ptr [esi+300];TFormClonerFichier.?f300:dword
 005377BE    call        004C8BB8
 005377C3    lea         edx,[ebp-12C]
 005377C9    lea         eax,[ebp-23C]
 005377CF    call        @LStrFromString
 005377D4    mov         edx,dword ptr [ebp-23C]
 005377DA    mov         eax,dword ptr [ebp-1C]
 005377DD    mov         ecx,dword ptr [eax]
 005377DF    call        dword ptr [ecx+34];TStringList.Add
 005377E2    inc         dword ptr [ebp-24]
 005377E5    dec         ebx
>005377E6    jne         005377A2
 005377E8    mov         edx,dword ptr [ebp-1C]
 005377EB    mov         eax,dword ptr [ebp-4]
 005377EE    call        004BF544
 005377F3    mov         eax,dword ptr [esi+300];TFormClonerFichier.?f300:dword
 005377F9    call        004BEA58
 005377FE    xor         ebx,ebx
 00537800    mov         bl,al
 00537802    test        ebx,ebx
>00537804    jle         00537848
 00537806    mov         dword ptr [ebp-24],1
 0053780D    mov         edx,dword ptr [ebp-24]
 00537810    cmp         edx,0FF
>00537816    jbe         0053781D
 00537818    call        @BoundErr
 0053781D    mov         eax,dword ptr [esi+300];TFormClonerFichier.?f300:dword
 00537823    call        004C8E50
 00537828    mov         ecx,eax
 0053782A    mov         edx,dword ptr [ebp-24]
 0053782D    cmp         edx,0FF
>00537833    jbe         0053783A
 00537835    call        @BoundErr
 0053783A    mov         eax,dword ptr [ebp-4]
 0053783D    call        004C8DF8
 00537842    inc         dword ptr [ebp-24]
 00537845    dec         ebx
>00537846    jne         0053780D
 00537848    lea         edx,[ebp-12C]
 0053784E    mov         eax,dword ptr [esi+300];TFormClonerFichier.?f300:dword
 00537854    call        004BE8FC
 00537859    lea         edx,[ebp-12C]
 0053785F    lea         eax,[ebp-240]
 00537865    call        @LStrFromString
 0053786A    push        dword ptr [ebp-240]
 00537870    push        5379EC;' - '
 00537875    push        dword ptr [ebp-8]
 00537878    push        5379EC;' - '
 0053787D    push        dword ptr [ebp-0C]
 00537880    lea         eax,[ebp-14]
 00537883    mov         edx,5
 00537888    call        @LStrCatN
 0053788D    mov         eax,dword ptr [esi+2F4];TFormClonerFichier.BrowseDirectoryDlg1:TBrowseDirectoryDlg
 00537893    push        dword ptr [eax+3C];TBrowseDirectoryDlg.Selection:String
 00537896    push        5379F8;'\'
 0053789B    lea         edx,[ebp-244]
 005378A1    mov         eax,dword ptr [ebp-14]
 005378A4    call        00497A7C
 005378A9    push        dword ptr [ebp-244]
 005378AF    push        537A04;'.cdn'
 005378B4    lea         eax,[ebp-18]
 005378B7    mov         edx,4
 005378BC    call        @LStrCatN
 005378C1    mov         edx,dword ptr [ebp-18]
 005378C4    mov         eax,dword ptr [esi+304];TFormClonerFichier.?f304:dword
 005378CA    mov         ecx,dword ptr [eax]
 005378CC    call        dword ptr [ecx+34]
 005378CF    push        537A0C
 005378D4    push        0
 005378D6    xor         ecx,ecx
 005378D8    mov         edx,dword ptr [ebp-18]
 005378DB    mov         eax,dword ptr [ebp-4]
 005378DE    call        004C01F8
 005378E3    mov         dl,1
 005378E5    mov         eax,dword ptr [ebp-1C]
 005378E8    mov         ecx,dword ptr [eax]
 005378EA    call        dword ptr [ecx-4];TStringList.Destroy
 005378ED    mov         dl,1
 005378EF    mov         eax,dword ptr [ebp-4]
 005378F2    mov         ecx,dword ptr [eax]
 005378F4    call        dword ptr [ecx-4]
 005378F7    inc         dword ptr [ebp-20]
 005378FA    dec         dword ptr [ebp-2C]
>005378FD    jne         0053757D
 00537903    mov         eax,dword ptr [esi+2DC];TFormClonerFichier.ListBoxEnseignants:TListBox
 00537909    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 0053790F    mov         edx,dword ptr [eax]
 00537911    call        dword ptr [edx+14];TStrings.GetCount
 00537914    dec         eax
>00537915    jne         00537926
 00537917    lea         eax,[ebp-10]
 0053791A    mov         edx,537A18;'Un fichier créé avec succès'
 0053791F    call        @LStrLAsg
>00537924    jmp         00537955
 00537926    mov         eax,dword ptr [esi+2DC];TFormClonerFichier.ListBoxEnseignants:TListBox
 0053792C    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 00537932    mov         edx,dword ptr [eax]
 00537934    call        dword ptr [edx+14];TStrings.GetCount
 00537937    lea         edx,[ebp-248]
 0053793D    call        IntToStr
 00537942    mov         edx,dword ptr [ebp-248]
 00537948    lea         eax,[ebp-10]
 0053794B    mov         ecx,537A3C;' fichiers créés avec succès.'
 00537950    call        @LStrCat3
 00537955    push        0
 00537957    mov         cx,word ptr ds:[537A5C];0x4 gvar_00537A5C
 0053795E    mov         dl,2
 00537960    mov         eax,dword ptr [ebp-10]
 00537963    call        MessageDlg
 00537968    mov         eax,esi
 0053796A    call        TCustomForm.Close
 0053796F    xor         eax,eax
 00537971    pop         edx
 00537972    pop         ecx
 00537973    pop         ecx
 00537974    mov         dword ptr fs:[eax],edx
 00537977    push        5379B1
 0053797C    lea         eax,[ebp-248]
 00537982    mov         edx,4
 00537987    call        @LStrArrayClr
 0053798C    lea         eax,[ebp-138]
 00537992    mov         edx,3
 00537997    call        @LStrArrayClr
 0053799C    lea         eax,[ebp-18]
 0053799F    mov         edx,5
 005379A4    call        @LStrArrayClr
 005379A9    ret
>005379AA    jmp         @HandleFinally
>005379AF    jmp         0053797C
 005379B1    pop         esi
 005379B2    pop         ebx
 005379B3    mov         esp,ebp
 005379B5    pop         ebp
 005379B6    ret
*}
end;

//00537A60
procedure TFormClonerFichier.FormKeyPress(Sender:TObject; var Key:Char);
begin
  //00537A60
  if (Key <> char($1B)) then Exit;
  ModalResult := 2;
end;

//00537A70
procedure TFormClonerFichier.SpeedButtonAideClick(Sender:TObject);
begin
{*
 00537A70    push        ebp
 00537A71    mov         ebp,esp
 00537A73    push        0
 00537A75    push        ebx
 00537A76    mov         ebx,eax
 00537A78    xor         eax,eax
 00537A7A    push        ebp
 00537A7B    push        537AE7
 00537A80    push        dword ptr fs:[eax]
 00537A83    mov         dword ptr fs:[eax],esp
 00537A86    lea         edx,[ebp-4]
 00537A89    mov         eax,ebx
 00537A8B    call        TControl.GetText
 00537A90    mov         eax,dword ptr [ebp-4]
 00537A93    push        eax
 00537A94    push        537AFC;'Cette boite de dialogue permet de créer plusieurs fichiers identiques à un fichi...
 00537A99    push        136
 00537A9E    mov         ecx,ebx
 00537AA0    mov         dl,1
 00537AA2    mov         eax,[00536C0C];TFormAide
 00537AA7    call        TFormAide.Create;TFormAide.Create
 00537AAC    mov         edx,dword ptr ds:[616354];^gvar_00617E94:TFormAide
 00537AB2    mov         dword ptr [edx],eax
 00537AB4    mov         eax,[00616354];^gvar_00617E94:TFormAide
 00537AB9    mov         eax,dword ptr [eax]
 00537ABB    mov         edx,dword ptr [eax]
 00537ABD    call        dword ptr [edx+0D8]
 00537AC3    mov         eax,[00616354];^gvar_00617E94:TFormAide
 00537AC8    mov         eax,dword ptr [eax]
 00537ACA    mov         dl,1
 00537ACC    mov         ecx,dword ptr [eax]
 00537ACE    call        dword ptr [ecx-4]
 00537AD1    xor         eax,eax
 00537AD3    pop         edx
 00537AD4    pop         ecx
 00537AD5    pop         ecx
 00537AD6    mov         dword ptr fs:[eax],edx
 00537AD9    push        537AEE
 00537ADE    lea         eax,[ebp-4]
 00537AE1    call        @LStrClr
 00537AE6    ret
>00537AE7    jmp         @HandleFinally
>00537AEC    jmp         00537ADE
 00537AEE    pop         ebx
 00537AEF    pop         ecx
 00537AF0    pop         ebp
 00537AF1    ret
*}
end;

//00538060
procedure TFormClonerFichier.ListBoxEnseignantsDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
begin
    if (Index mod 2  <> 1) then
    begin//2
      //0055303B
      ListBoxEnseignants.Canvas.Brush.Color := $FFFFFF;
      ListBoxEnseignants.Canvas.FillRect(Rect);
    end//2
    else
    begin//2
      //0055306A
      ListBoxEnseignants.Canvas.Brush.Color := $F4F3EE;
      ListBoxEnseignants.Canvas.FillRect(Rect);
    end;//2

    ListBoxEnseignants.Canvas.TextOut(Rect.Left + 5, Rect.Top + 2, ListBoxEnseignants.Items[Index]);
    if ( odSelected in State) then
    begin//2
      //005530E6
      ListBoxEnseignants.Canvas.Brush.Color := $F8D1C5;
      ListBoxEnseignants.Canvas.FillRect(Rect);
      ListBoxEnseignants.Canvas.Font.Color := $FF0000;
      ListBoxEnseignants.Canvas.TextOut(Rect.Left + 5, Rect.Top + 2, ListBoxEnseignants.Items[Index]);
    end;//2
end;

//005381CC
procedure TFormClonerFichier.ListBoxMatieresDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
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

//00538338
procedure TFormClonerFichier.ListBoxEnseignantsClick(Sender:TObject);
begin
{*
 00538338    push        ebx
 00538339    mov         ebx,eax
 0053833B    mov         eax,dword ptr [ebx+2DC];TFormClonerFichier.ListBoxEnseignants:TListBox
 00538341    call        TCustomListBox.GetItemIndex
 00538346    mov         edx,eax
 00538348    mov         eax,dword ptr [ebx+2E0];TFormClonerFichier.ListBoxMatieres:TListBox
 0053834E    call        TCustomListBox.SetItemIndex
 00538353    pop         ebx
 00538354    ret
*}
end;

//00538358
procedure TFormClonerFichier.ListBoxMatieresClick(Sender:TObject);
begin
{*
 00538358    push        ebx
 00538359    mov         ebx,eax
 0053835B    mov         eax,dword ptr [ebx+2E0];TFormClonerFichier.ListBoxMatieres:TListBox
 00538361    call        TCustomListBox.GetItemIndex
 00538366    mov         edx,eax
 00538368    mov         eax,dword ptr [ebx+2DC];TFormClonerFichier.ListBoxEnseignants:TListBox
 0053836E    call        TCustomListBox.SetItemIndex
 00538373    pop         ebx
 00538374    ret
*}
end;

//00538378
procedure TFormClonerFichier.FormDestroy(Sender:TObject);
begin
{*
 00538378    add         eax,304;TFormClonerFichier.?f304:dword
 0053837D    call        FreeAndNil
 00538382    ret
*}
end;

//00538384
function TFormClonerFichier.sub_00538384:boolean;
begin//0
  //00538384
  result := CheckBoxOuvrirFichiers.Checked;
end;//0


//00538394
function TFormClonerFichier.sub_00538394:TStringlist;
begin
 result := f304;
end;

end.