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
    FYear:String;//f3D4
    FEtablissment:String;//f3D8
    FPicture:String;//f3DC
    constructor Create(Owner:TComponent);//006072E8
	procedure sub_006074D0(Y:String);//006074D0
    procedure sub_00607EE4;//00607EE4
    procedure sub_00608214;//00608214
  end;
  var
    FormCreerBulletins:TFormCreerBulletins;

implementation
     uses UWindow,UBiblio,PeriodeCalc,UTypeBulletins,_FormAide;
{$R *.DFM}

//006072E8
constructor TFormCreerBulletins.Create(Owner:TComponent);
var
  Buf:String;
begin//0
  //006072E8

    //00607332

    inherited Create(Owner);
    DriveComboBox1.Drive := ExtractFileDrive(GetChemin)[1]; //?????
    DirectoryListBox1.Directory := GetChemin;
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
    FCdn := TFichierCdn.Create(Y{, 1, 0});
    if (FCdn.Succes) then
    begin//2
      //00607521
      if (FCdn.OldVersion = false) then
      begin//3
        //0060752E
        K := FCdn.NbreEleves;
        lvar_8 := FCdn.NbrePeriodes;		
        if (K <> 0) then
        begin//4
          //00607554
          if (ListBoxFichiers.Items.Count = 0) then
          begin//5
            //0060756D
            f3A8.Clear;
            f3A8.AddStrings(FCdn.GetEleveList);
            f3C8.Clear;
            f3C8.AddStrings(FCdn.GetPeriodeNameList);
            f3B0.Clear;
            f3B0.AddStrings(FCdn.GetNomsbulletinsList);
            ListBoxFichiers.Items.Add(Y);
            ListBoxMatieres.Items.Add(FCdn.GetMatiereName);
            FileListBox1.ItemIndex :=FileListBox1.ItemIndex + 1;
            f398 := K;
            f39C := lvar_8;
            f394  := FCdn.GetbulletinsCount;
            f3A4.addstrings(FCdn.GetNomsbulletinsList);
            Label1.Caption := 'Elèves : ' + IntToStr(f398);
            Label2.Caption:='Périodes : ' + IntToStr(f39C);
            Label6.caption := 'Type de bulletins : ' + FCdn.GetBulletinsTitle;
          end//5
          else
          begin//5
            //0060771E
            if (Comparer2List(FCdn.GetEleveList, f3A8) ) then
            begin//6
              //00607738
              if (Comparer2List(FCdn.GetPeriodeNameList, f3C8) ) then
              begin//7
                //00607752
                if (Comparer2List(TStringlist(FCdn.GetNomsbulletinsList), f3B0) ) then
                begin//8
                  //00607768
                  ListBoxFichiers.Items.Add(Y);
                  ListBoxMatieres.Items.Add(FCdn.GetMatiereName);
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

    if (FCdn.Succes) then
    begin//2
      //00607F7F
      FYear := FCdn.GetYear;
      FEtablissment := FCdn.GetEtablissment;
      buf0:=FCdn.GetClasseName();
        //00607FF1
        for I := 1 to FCdn.NbreEleves  do
        begin//4
          //00607FF8
          if (CheckListBoxEleves.Checked[I - 1] ) then 
		  begin
			  f3A8.Add(FCdn.GetEleveName(I) + ' (' + buf0 + ')');
		  end;
        end;//4
        for I := 1 to  FCdn.NbrePeriodes do//00608095
          f3C8.Add(FCdn.GetPeriodeName(I));
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
        if (FCdn.Succes) then
        begin//4
          //0060839E
            //006083B1
            for J := 1 to f3C8.Count do
            begin//6
              //006083BB
              if (J - 1 <> RadioGroup1.ItemIndex) then Continue;
              //f3D0 := EAX;//EAX
              StList.Clear;
                lvar_D := GetArrondirMoyennes;
                for K := 1 to FCdn.NbreEleves  do//00608404
                begin//8
                  //0060840B
                  StList.Add(FCdn.GetMoyennePeriode(J, K,lvar_D));
                end;//8
              if (CheckBoxInclureEnseignant.Checked) then
              begin//7
                //0060846F
                {lvar_1C}text := FCdn.GetMatiereName + #13+#10 + FCdn.GetEnseignant;
              end//7
              else
              begin//7
                //006084CD
                text := FCdn.GetMatiereName();
              end;//7
              f3AC.Add(text);
              f3BC.Add(GetPeriodeMin(StList));
              f3C0.Add(GetPeriodeMax(StList));
              f3C4.Add(GetPeriodeMoy(StList));
              lvar_C := f3CC + 1;
              f3B8.Add(FCdn.GetMoyennePeriode(J, lvar_C, lvar_D));
              for K := 1 to f394 do
              begin//7
                //006085FE
                FCdn.GetApreciations(J, lvar_C,K , text);
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
var
 K:integer;
begin//0
  //0060899C
  if (ListBoxFichiers.ItemIndex + 1 <> 0) then
  begin//1
    //006089AE
    K := ListBoxFichiers.ItemIndex;
    ListBoxFichiers.Items.Delete(K);
    ListBoxMatieres.Items.Delete(K);
  end;//1
 
  SpeedButtonSuivant.Enabled := (ListBoxFichiers.Items.Count > 0);

  if (ListBoxFichiers.Items.Count = 0) then
  begin//1
    //00608A17
    f398 := 0;//EAX
    f39C := 0;//EAX
    Label1.Caption := 'Elèves :';
    Label2.Caption := 'Périodes :';
  end;//1
end;//0

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
        if (f3A0.Succes) then
        begin//4
          //00608E18
          RadioGroup1.items :=  f3A0.GetPeriodeNameList;
          CheckListBoxEleves.Items := f3A0.GetEleveList;
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
        if (f3A0.Succes) then
        begin//4
          //00608F1D
          EditEtablissement.Text := f3A0.GetEtablissment;
          EditAnneeScolaire.Text := f3A0.GetYear;
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
var
  I:integer;
  b:boolean;
begin//0
  //006090A4
  b:=false;
    for I := 1 to CheckListBoxEleves.Items.Count do//006090C0
    begin//2
      //006090C5
      CheckListBoxEleves.Checked[I - 1] := True;
    end;//2
 
  if (RadioGroup1.ItemIndex <> -1) then
  begin//1
    //006090F3
    b := true;
  end;//1

  SpeedButtonSuivant.Enabled := b;
end;//0

//00609108
procedure TFormCreerBulletins.SpeedButton21Click(Sender:TObject);
var
 I:integer;
begin//0
  //00609108
    for I := 1 to CheckListBoxEleves.Items.Count do//00609124
    begin//2
      //00609129
      CheckListBoxEleves.Checked[I - 1] := False;
    end;//2
  SpeedButtonSuivant.Enabled := False;
end;//0

//00609158
procedure TFormCreerBulletins.CheckListBoxElevesClickCheck;
var
  b1,b2:boolean;
  I:integer;
begin//0
  //00609158
  b1 := false;
  if (RadioGroup1.ItemIndex <> -1) then
  begin//1
    //00609172
    b1 := true;
  end;//1
  b2 := false;
  if (CheckListBoxEleves.Items.Count - 1 >= 0) then
  begin//1
    for I := 0 to CheckListBoxEleves.Items.Count - 1  do //00609199
    begin//2
      //0060919C
      if (CheckListBoxEleves.Checked[I] <> False) then 
      b2 := true;
    end;//2
  end;//1
  SpeedButtonSuivant.Enabled := (b1 And b2);
end;//0

//006091CC
procedure TFormCreerBulletins.SpeedButton4Click(Sender:TObject);
begin//0
  //006091CC
  ListBoxFichiers.Items.Clear;
  ListBoxMatieres.Items.Clear;
  SpeedButtonSuivant.Enabled := False;
  f398 := 0;//EAX
  f39C := 0;//EAX
  Label1.Caption := 'Elèves :';
  Label2.Caption := 'Périodes :';
end;//0

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
var
 I,J :integer;
begin//0
  //00609744
  I := ListBoxMatieres.ItemIndex;
  if (I = -1) then Exit;
  if (I > 0) then
  begin//1
    //00609760
    J := ListBoxMatieres.ItemIndex - 1;//EDI
    ListBoxMatieres.Items.Move(I, J);
    ListBoxFichiers.Items.Move(I, J);
    ListBoxMatieres.ItemIndex := J;
  end;//1
end;//0

//006097A8
procedure TFormCreerBulletins.SpeedButton8Click(Sender:TObject);
var
  I,J : integer;
begin//0
  //006097A8
  I:=ListBoxMatieres.ItemIndex;
  if (I <> -1) then 
  if (I < ListBoxMatieres.Items.Count - 1) then
  begin
	  J := I + 1;//EDI
	  ListBoxMatieres.Items.Move(I, J);
	  ListBoxFichiers.Items.Move(I, J);
	  ListBoxMatieres.ItemIndex := J;
  end;
end;//0


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

      ImageLogo.Picture.LoadFromFile(FPicture);
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
		Cross.AddValue([lvar_C + 1], ['Elève'], [GetPeriodeMoy(f3B8)]);
		if (frxReport1.Tag = 0) then
		begin
			Cross.AddValue([lvar_C + 1], ['Min'], [GetPeriodeMoy( f3BC)]);
			Cross.AddValue([lvar_C + 1], ['Max'], [GetPeriodeMoy(f3C0)]);
			Cross.AddValue([lvar_C + 1], ['Classe'], [GetPeriodeMoy(f3C4)]);
		end;
    end;//2
end;//0

//0060A3B4
procedure TFormCreerBulletins.frxReport1GetValue(VarName: String; var Value: Variant);
begin//0
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
      Value := FPicture;
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
end;//0

//0060A664
procedure TFormCreerBulletins.SpeedButton5Click(Sender:TObject);
begin//0
  //0060A664
    //0060A67C
    if (OpenPictureDialog1.Execute) then
    begin//2
      //0060A68B
      ImageLogo.Picture.LoadFromFile(OpenPictureDialog1.FileName);
      FPicture := OpenPictureDialog1.FileName;
      sub_004C9DA8(FPicture);
    end;//2
    //0060A6E1
end;//0

//0060A6FC
procedure TFormCreerBulletins.SpeedButton6Click(Sender:TObject);
begin//0
  //0060A6FC
  ImageLogo.Picture := Nil;
  FPicture := '';
  sub_004C9DA8(FPicture);
end;//0

//0060A724
procedure TFormCreerBulletins.SpeedButtonAideClick(Sender:TObject);
begin//0
  //0060A724
  FormAide{gvar_00617E94 } := TFormAide.Create(Self, 'Créer les bulletins des élèves', 'Cette boite de dialogue permet de créer des bulletins à partir de plusieurs fichiers Carnet de Notes. '+#13+#10+#13+#10+'Ces fichiers doivent avoir exactement la même liste d''élèves, le même type de périodes (trimestres, semestres, ...) et le même type de bulletins (bulletins par défaut ou nouveaux bulletins du collège). '+#13+#10+#13+#10+'Pour être certains que vos fichiers remplissent bien ces conditions, il est conseillé de les créer en début d''année par la rubrique "Clôner le fichier" du menu "Fichier" de Carnet de Notes.',$82);
  FormAide.ShowModal;
  FormAide.Destroy;
end;//0

//0060A994
procedure TFormCreerBulletins.CheckBox1Click(Sender:TObject);
var
 I:integer;
begin//0
  //0060A994
  I := frxReport1.Variables.IndexOf('minMaxClasseAffiches');  
  if (CheckBox1.Checked) then
  begin//1
    //0060A9C2
   // EAX := frxReport1.Variables.Items[I] + $10{16};
    frxReport1.Tag := 1;
  end//1
  else 
  begin
  //EAX := frxReport1.Variables.Items[I] + $10{16};
  frxReport1.Tag := 0;//EDX
  end;
end;//0

end.