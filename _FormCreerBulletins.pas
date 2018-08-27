{***********************************************************
* Version Original V0.03 build 1                           *
* Decompiled by HOUIDEF AEK v 3:28 lundi, août 27, 2018    *
* The disassembly process : 80%                            *
************************************************************}
unit _FormCreerBulletins;

interface

uses
Forms, Windows,  SysUtils, Classes, ExtCtrls, StdCtrls, FileCtrl, Buttons, CheckLst, frxClass, frxCross, ExtDlgs, frxExportPDF, frxExportRTF,
controls,URegistry,UFichierCdn,dialogs;

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
    f3A0:TFichierCdn;//f3A0
    f3A4:TStringList;//f3A4
    f3A8:TStringList;//f3A8
    f3AC:TStringList;//f3AC
    f3B0:TStringList;//f3B0
    f3B4:array of TStringList;//f3B4
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
	procedure sub_006074D0(Y:String);//006074D0
    procedure sub_00607EE4;//00607EE4
    procedure sub_00608214;//00608214
  end;
  var
    FormCreerBulletins:TFormCreerBulletins;

implementation
     uses Unit49,Unit111,_Unit112,UTypeBulletins;
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
procedure TFormCreerBulletins.DriveComboBox1Change(Sender:TObject);
begin//0
  //0060749C
  DirectoryListBox1.Drive:= DriveComboBox1.Drive;
end;//0


//006074B4
procedure TFormCreerBulletins.DirectoryListBox1Change;
begin//0
  //006074B4
  FileListBox1.Directory:= DirectoryListBox1.Directory;
end;//0


//006074D0
procedure TFormCreerBulletins.sub_006074D0( Y:String);
var
  text:string;
  FCdn : TFichierCdn;
  K,lvar_8:integer;
begin//0
  //006074D0

    //006074FD

    FCdn := TFichierCdn.Create(Y{, 1, 0});
    if (FCdn.f948) then
    begin//2
      //00607521
      if (FCdn.f949 = 0) then
      begin//3
        //0060752E
        K := FCdn.sub_004BEA58;
        lvar_8 := FCdn.sub_004BE9E0;		
        if (K <> 0) then
        begin//4
          //00607554

          if (ListBoxFichiers.Items.Count = 0) then
          begin//5
            //0060756D
            f3A8.Clear;
            f3A8.AddStrings(FCdn.sub_004BEAC4);
            f3C8.Clear;
            f3C8.AddStrings(FCdn.sub_004BEA4C);
            f3B0.Clear;
            f3B0.AddStrings(FCdn.sub_004C8BAC);
            ListBoxFichiers.Items.Add(Y);
            FCdn.sub_004BE92C(text);
            ListBoxMatieres.Items.Add(text);
            FileListBox1.ItemIndex :=FileListBox1.ItemIndex + 1;
            f398 := K;
            f39C := lvar_8;
            f394  := FCdn.sub_004C8AE8;
            f3A4.addstrings(FCdn.sub_004C8BAC);
            Label1.Caption := 'Elèves : ' + IntToStr(f398);
            Label2.Caption:='Périodes : ' + IntToStr(f39C);
            FCdn.sub_004C8B54(text);
            Label6.caption := 'Type de bulletins : ' + text;
          end//5
          else
          begin//5
            //0060771E
            if (sub_00497B4C(FCdn.sub_004BEAC4, f3A8) ) then
            begin//6
              //00607738
              if (sub_00497B4C(FCdn.sub_004BEA4C, f3C8) ) then
              begin//7
                //00607752

                if (sub_00497B4C(TStringlist(FCdn.sub_004C8BAC), f3B0) ) then
                begin//8
                  //00607768
                  ListBoxFichiers.Items.Add(Y);
                  FCdn.sub_004BE92C(text);
                  ListBoxMatieres.Items.Add(text);

                  FileListBox1.ItemIndex := FileListBox1.ItemIndex + 1;
                end//8
                else
                begin//8
                  //006077D6
                  text := 'Le fichier "' + ExtractFileName(Y) + '" n''a pas le même type de bulletins que les autres fichiers.' + #13 + #10 + #13 + #10 + 'Ce fichier ne peut être ajouté pour la création des bulletins.';
                  MessageBoxA(Handle, PChar(text), 'Carnet de Notes version Personnelle', $10{16});
                end;//8
              end//7
              else
              begin//7
                //00607842

                text := 'Le fichier "' + ExtractFileName(Y) + '" n''a pas le même type de périodes que les autres fichiers.' + #13 + #10 + #13 + #10 + 'Ce fichier ne peut être ajouté pour la création des bulletins.';
                MessageBoxA(Handle, PChar(text), 'Carnet de Notes version Personnelle', $10{16});
              end;//7
            end//6
            else
            begin//6
              //006078AE

              text := 'Le fichier "' + ExtractFileName(Y) + '" n''a pas la même liste d''élèves que les autres fichiers.' + #13 + #10 + #13 + #10 + 'Ce fichier ne peut être ajouté pour la création des bulletins.';

              MessageBoxA(Handle, PChar(text), 'Carnet de Notes version Personnelle', $10{16});
            end;//6
          end;//5
        end//4
        else
        begin//4
          //0060791A
          text := 'Le fichier "' + ExtractFileName(Y) + '" ne contient aucun élève.' + #13 + #10 + #13 + #10 + 'Ce fichier ne peut être ajouté pour la création des bulletins.';
          MessageBoxA(Handle, PChar(text), 'Carnet de Notes version Personnelle', $10{16});
        end;//4
      end//3
      else
      begin//3
        //00607986
        text := 'Le fichier "' + ExtractFileName(Y) + '" est un fichier d''une ancienne version Carnet de Notes.' + #13 + #10 + #13 + #10 + 'La création des bulletins n''est pas possible directement avec ce type de fichier.' + #13 + #10 + #13 + #10 + 'Vous devez l''ouvrir normalement puis l''enregistrer pour qu''il soit traduit au nouveau format.' + #13 + #10 + #13 + #10 + 'La création des bulletins sera alors possible.';

        MessageBoxA(Handle, PChar(text), 'Carnet de Notes version Personnelle', $10{16});
      end;//3
    end//2
    else
    begin//2
      //00607A21
      MessageBoxA(Handle, PChar('Le fichier "' + ExtractFileName(Y) + '" n''est pas un fichier Carnet de Notes valide.'), 'Carnet de Notes version Personnelle', $10{16});
    end;//2
    FCdn.Destroy;

    //00607A85

end;//0

//00607E04
procedure TFormCreerBulletins.FileListBox1DblClick(Sender:TObject);
var 
  text:string;
begin//0
  //00607E04

    //00607E1D

    if (FileListBox1.ItemIndex + 1 <> 0) then
    begin//2
      //00607E2F
	  text := DirectoryListBox1.Directory + '\' + FileListBox1.Items[ FileListBox1.ItemIndex];
      if (ListBoxFichiers.Items.IndexOf(text) + 1 = 0) then//00607E84
        sub_006074D0(text);

      SpeedButtonSuivant.Enabled := (ListBoxFichiers.Items.Count > 0);
    end;//2

    //00607EBC

end;//0

//00607EE4
procedure TFormCreerBulletins.sub_00607EE4;
var
   buf,buf0:string;
   FCdn : TFichierCdn;
   I:integer;
begin//0
  //00607EE4
    //00607F2B
    f3A8.Clear;
    f3C8.Clear;

    FCdn := TFichierCdn.Create(ListBoxFichiers.Items[0]{, 1, 0});

    if (FCdn.f948) then
    begin//2
      //00607F7F
      FCdn.sub_004BE944(buf);
      f3D4 := buf;
      FCdn.sub_004BE914(buf);
      f3D8 := buf;
      FCdn.sub_004BE8FC(buf0);


        //00607FF1

        for I := 1 to FCdn.sub_004BEA58  do
        begin//4
          //00607FF8

          if (CheckListBoxEleves.Checked[I - 1] ) then 
		  begin
			  FCdn.sub_004BEA64(I, buf);
			  f3A8.Add(buf + ' (' + buf0 + ')');
		  end;
        end;//4


        for I := 1 to  FCdn.sub_004BE9E0 do//00608095
        begin//4
          //0060809C
          FCdn.sub_004BE9EC(I, buf);
          f3C8.Add(buf);
        end;//4

      FCdn.Destroy;

    end//2
	else 
	begin
		buf := 'Impossible de lire le fichier "' + ExtractFileName(ListBoxFichiers.Items[0]) + '" !';
		MessageBoxA(Handle, PChar(buf), 'Carnet de Notes version Personnelle', $10{16});
		FCdn.Destroy;
		Close;
	end;

    //00608176

end;//0

//00608214
procedure TFormCreerBulletins.sub_00608214;
var
  FCdn:TFichierCdn;
  text,buf0,buf1:string;
  StList:TStringList;
  I,J,K:integer;
  lvar_C, lvar_D:integer;
begin//0
  //00608214
    //00608236
    f3AC.Clear;
    f3BC.Clear;
    f3C0.Clear;
    f3C4.Clear;
    f3B8.Clear;

      for I := 0 to Length(f3B4) - 1 do//00608286
      begin//3
        //00608291
        f3B4[I].clear;
      end;//3

    SetLength(f3B4, f394);

      for I := 0 to Length(f3B4) - 1 do//006082ED
      begin//3
        //006082F8
        f3B4[I] := TStringList.Create;
      end;//3

    StList := TStringList.Create;
      for I := 0 to ListBoxFichiers.Items.Count - 1 do//00608354
      begin//3
        //0060835F
        FCdn := TFichierCdn.Create(ListBoxFichiers.Items[I]{, 1, 0});
        if (FCdn.f948) then
        begin//4
          //0060839E
            //006083B1
            for J := 1 to f3C8.Count do
            begin//6
              //006083BB
              if (J - 1 <> RadioGroup1.ItemIndex) then Continue;
              //f3D0 := EAX;//EAX
              StList.Clear;

                lvar_D := sub_004B9E10;
                for K := 1 to FCdn.sub_004BEA58  do//00608404
                begin//8
                  //0060840B
                  FCdn.sub_004C2D10(J, K,lvar_D , text);
                  StList.Add(text);
                end;//8


              if (CheckBoxInclureEnseignant.Checked) then
              begin//7
                //0060846F
                FCdn.sub_004BE92C(buf0);
                FCdn.sub_004C3908(buf1);
 
                {lvar_1C}text := buf0 + #13+#10 + buf1;
              end//7
              else
              begin//7
                //006084CD

                FCdn.sub_004BE92C(text);

              end;//7

              f3AC.Add(text);

              sub_004BDB3C(StList, text);

              f3BC.Add(text);

              sub_004BDCFC(StList, text);
              f3C0.Add(text);

              sub_004BDEBC(StList, text);
              f3C4.Add(text);
              lvar_C := f3CC + 1;
 
              FCdn.sub_004C2D10(J, lvar_C, lvar_D, text);
              f3B8.Add(text);
             
              for K := 1 to f394 do
              begin//7
                //006085FE
                FCdn.sub_004C2C00(J, lvar_C,K , text);
                f3B4[K - 1].add(text);
              end;//7
            end;//6
          FCdn.Destroy;
        end//4
        else
        begin//4
          //0060868F

          text := 'Impossible de lire le fichier "' + ExtractFileName(ListBoxFichiers.Items[0]) + '" !';
          MessageBoxA(Handle, PChar(text), 'Carnet de Notes version Personnelle', $10{16});
          f3B8.Destroy;
          FCdn.Destroy;

          Close;
          Exit;
        end;//4
      end;//3
    f3CC := f3CC + 1;

    //00608740

end;//0

//006087E8
procedure TFormCreerBulletins.SpeedButtonCreerBulletinsClick(Sender:TObject);
var
   Counter,I:integer;
begin//0
  //006087E8
  f3CC := 0;//EAX

  sub_00607EE4;

  frxUserDataSet1.RangeEnd := reCount;
  Counter := 0;


    for I := 0 to CheckListBoxEleves.Items.Count - 1 do//0060882D
    begin//2
      //00608830
      if (CheckListBoxEleves.Checked[I] ) then 
		Counter := Counter + 1;
    end;//2

  frxUserDataSet1.RangeEndCount := Counter;
  frxReport1.ShowReport; //sub_005DFEA4(frxReport1, );
  Close;
end;//0

//00608878
procedure TFormCreerBulletins.SpeedButtonFermerClick(Sender:TObject);
begin
  close;
end;

//00608880
procedure TFormCreerBulletins.FormHide(Sender:TObject);
var
 I:integer;
begin//0
  //00608880

    //00608898
    f3B0.Destroy;
    f3A8.Destroy;
    f3AC.Destroy;


      for I := 0 to Length(f3B4) - 1 do//006088DA//006088DD
        f3B4[I].Destroy;


    f3B8.Destroy;
    f3BC.Destroy;
    f3C0.Destroy;
    f3C4.Destroy;
    sub_004C9BC0(CheckBoxInclureEnseignant.Checked);
    sub_004C9BF8(CheckBoxInclureAppreciation.Checked);
    sub_004C9CA0(EditIntituleCadre.Text);
    f3A4.Destroy;


    //00608985

end;//0
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
begin//0
  //00608A74
    //00608A8F

    if (Notebook1.PageIndex > 0) then
    begin//2
      //00608AA2
      SpeedButtonSuivant.Enabled := True;
      Notebook1.PageIndex := Notebook1.PageIndex - 1;
      Caption := 'Créer les bulletins des élèves --> étape ' + IntToStr(Notebook1.PageIndex + 1) + ' : ' + Notebook1.Pages[Notebook1.PageIndex];
    end;//2

    if (Notebook1.PageIndex = 0) then 
    SpeedButtonPrecedent.Enabled := False;

    //00608B52

end;//0

//00608BB0
procedure TFormCreerBulletins.SpeedButtonSuivantClick(Sender:TObject);
//var

begin//0
  //00608BB0
    //00608BCB

    if (Notebook1.Pages.Count - 1 > Notebook1.PageIndex) then
    begin//2
      //00608BF2
      SpeedButtonPrecedent.Enabled := True;
      Notebook1.PageIndex:= Notebook1.PageIndex + 1;

      Caption:= 'Créer les bulletins des élèves --> étape ' + IntToStr(Notebook1.PageIndex + 1) + ' : ' + Notebook1.Pages[Notebook1.PageIndex];
    end;//2

    if (Notebook1.Pages.Count - 1 = Notebook1.PageIndex) then 
    SpeedButtonSuivant.Enabled := False;

    //00608CB6

end;//0

//00608D14
procedure TFormCreerBulletins.Notebook1PageChanged(Sender:TObject);
var
 text:string;
begin//0
  //00608D14
    //00608D5B

    case Notebook1.PageIndex of
      0:
      begin//3
        //00608D7A

        SpeedButtonSuivant.Enabled:= (ListBoxFichiers.Items.Count > 0);
        f3A0.Destroy;
        RadioGroup1.Items.Clear;
        CheckListBoxEleves.Items.Clear;
        SpeedButtonCreerBulletins.Visible := False;
      end;//3
      1:
      begin//3
        //00608DDC
        f3A0 := TFichierCdn.Create(ListBoxFichiers.Items[0]{, 1, 0});
        if (f3A0.f948) then
        begin//4
          //00608E18
          RadioGroup1.items :=  f3A0.sub_004BEA4C;
          CheckListBoxEleves.Items := f3A0.sub_004BEAC4;
          SpeedButtonSuivant.Enabled := False;
          SpeedButtonCreerBulletins.Enabled := False;
        end//4
		else 
		begin
			text := 'Impossible de lire le fichier "' + ExtractFileName(ListBoxFichiers.Items[0]) + '" !';
			MessageBoxA(Handle, PChar(text), 'Carnet de Notes version Personnelle', $10{16});
			f3A0.Destroy;
			Close;
        end;
      end;//3
      2:
      begin//3
        //00608ED4
        SpeedButtonCreerBulletins.Visible := True;
        f3A0 := TFichierCdn.Create(ListBoxFichiers.Items[0]{, 1, 0});
        if (f3A0.f948) then
        begin//4
          //00608F1D
          f3A0.sub_004BE914(text);
          EditEtablissement.Text := text;
          f3A0.sub_004BE944(text);
          EditAnneeScolaire.Text := text;
          SpeedButtonSuivant.Enabled := False;
          SpeedButtonCreerBulletins.Enabled := True;
        end//4
		else 
		begin
			text := 'Impossible de lire le fichier "' + ExtractFileName(ListBoxFichiers.Items[0]) + '" !';
			MessageBoxA(Handle, PChar(text), 'Carnet de Notes version Personnelle', $10{16});
			f3A0.Destroy;
			Close;
		end;
      end;//3
    end;//2

    //00609020

end;//0

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
//var
begin//0
  //00609838

    //00609855
    (*
    EDX := ;
    CheckBoxInclureEnseignant.Checked := sub_004C9C30;
    EAX := sub_004C9C68;
    EDX := sub_004C9C68;
    EAX := Self;
    EAX := CheckBoxInclureAppreciation;
    CheckBoxInclureAppreciation.SetChecked(EDX{EDX});
    sub_004C9D28(lvar_8);
    EditIntituleCadre.Text := lvar_8;
    try
      //006098AC
      sub_004C9E2C(lvar_C);
      f3DC := lvar_C;

      ImageLogo.Picture.LoadFromFile(f3DC);
    except//2
      //006098F0
    end;//2
	*)
    f3A8 := TStringList.Create;
    f3AC := TStringList.Create;
    f3B8 := TStringList.Create;
    f3BC := TStringList.Create;
    f3C0 := TStringList.Create;
    f3C4 := TStringList.Create;
    f3C8 := TStringList.Create;
    f3B0 := TStringList.Create;
	
	frxReport1.Variables['minMaxClasseAffiches'] := false;
    (*EBX := frxReport1.f154.sub_005C8688('minMaxClasseAffiches');
    EAX := frxReport1.f154.sub_005C8674(EBX)+ $10{16};;
     := Variant();*)
    frxReport1.Tag := 0;//EDX
   
    //006099F3

end;//0

//00609A30
procedure TFormCreerBulletins.frxReport1BeforePrint(c:TfrxReportComponent);
var
  I,J,K,lvar_C:integer;
  lvar_D : boolean;
  Cross: TfrxCrossView;
  lvar_48,lvar_68,text: string;
begin//0
  //00609A30
    //00609A55

    if (f3A8.Count <= f3CC) then//00609A68
      f3CC := 0;//EAX

    if (c is TfrxCrossView ) then
    begin//2
      //00609A85
      sub_00608214;
      Cross := TfrxCrossView(c);
      lvar_C := 0;
        for {lvar_14}I := 0 to f3AC.Count - 1 do //00609AB1
        begin//4
          //00609AB7
          lvar_D := false;
          if (CheckBoxInclureAppreciation.Checked) then
          begin//5
            //00609ACD
              for J := 1 to f394 do//00609AD7
              begin//7
                //00609AE1
                if (Trim((f3B4[J - 1])[I]) <> '') then 
					lvar_D := true;
              end;//7
          end;//5
          if (Trim(f3B8[I]) <> '') then //00609B49
            lvar_D := true;

          if (lvar_D = false) then Continue;


 
          Cross.AddValue([I], ['Matières'], [f3AC[I]]);
		  Cross.AddValue([I], ['Elève'], [f3B8[I]]);

		

          if (frxReport1.Tag = 0) then
          begin//5
            //00609C77
            Cross.AddValue([I], ['Min'], [f3BC[I]]);
			Cross.AddValue([I], ['Max'], [f3C0[I]]);
			Cross.AddValue([I], ['Classe'], [f3C4[I]]);

          end;//5
          
          if (CheckBoxInclureAppreciation.Checked) then
          begin//5
            //00609E40
              for J := 1 to f394 do//00609E4E
              begin//7
                //00609E58
               (* EAX := f3A4[J - 1];
                call();

                lvar_16C := lvar_170;

                EAX := f3B4[J - 1];
                EDX := ESI;//{ESI}{ESI}{ESI}{ESI}{ESI}{ESI}{ESI}
                call(0);
        *)

                Cross.AddValue([I], [f3A4[J - 1]], [(f3B4[J - 1])[I]]);
              end;//7
          end;//5
          lvar_C := lvar_C + 1;
		 
        end;//4

      Cross.AddValue([lvar_C + 1], ['Matières'], ['Moyenne générale']);
      
      sub_004BDEBC(f3B8,text);

	   Cross.AddValue([lvar_C + 1], ['Elève'], [text]);
      
      if (frxReport1.Tag <> 0) then Exit;

     sub_004BDEBC( f3BC,text);

      Cross.AddValue([lvar_C + 1], ['Min'], [text]);
     
      sub_004BDEBC(f3C0,text);

      Cross.AddValue([lvar_C + 1], ['Max'], [text]);

      sub_004BDEBC(f3C4,text);
 
       Cross.AddValue([lvar_C + 1], ['Classe'], [text]);
	  
    end;//2
	
    //0060A22C
end;//0

//0060A3B4
procedure TFormCreerBulletins.frxReport1GetValue(VarName: String; var Value: Variant);
begin//0
  //0060A3B4
    //0060A3DB

    if (f3A8.Count <= f3CC) then//0060A3EE
      f3CC := 0;//EAX


    if (CompareText(VarName, 'etablissement') = 0) then //0060A406
      Value := EditEtablissement.Text;

    if (CompareText(VarName, 'eleve') = 0) then //0060A42F
     Value:= f3A8[f3CC];


    if (CompareText(VarName, 'periode') = 0) then//0060A45E
      Value :=  EditNomPeriode.Text;


    if (CompareText(VarName, 'annee') = 0) then //0060A487

      Value := EditAnneeScolaire.Text;

    if (CompareText(VarName, 'intitulecadre') = 0) then//0060A4B0
      Value:=  EditIntituleCadre.Text;

    if (CompareText(VarName, 'picture') = 0) then//0060A4D9
      Value := f3DC;


    //0060A4F4

end;//0

//0060A590
procedure TFormCreerBulletins.RadioGroup1Click(Sender:TObject);
var
  lvar_1,lvar_2 : boolean;
  I:integer;
begin//0
  //0060A590
    //0060A5AE
    lvar_1 := false;
    if (RadioGroup1.ItemIndex <> -1) then
    begin//2
      //0060A5C1
      lvar_1 := true;
      EditNomPeriode.Text := RadioGroup1.Items[RadioGroup1.ItemIndex];
    end;//2
    lvar_2 := false;
      for I := 0 to CheckListBoxEleves.Items.Count - 1 do//0060A612
      begin//3
        //0060A615
        if (CheckListBoxEleves.Checked[I]) then 
            lvar_2 := true;
      end;//3

    SpeedButtonSuivant.Enabled := lvar_1 And lvar_2;

    //0060A64C

end;//0

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