{***************************************
* Version Original V0.01
* Decompiled by HOUIDEF AEK v.05.02.2018
***************************************}
unit _FormFusionner;

interface

uses
Forms, Windows,  SysUtils, Classes, ExtCtrls, Buttons, Dialogs, StdCtrls, FileCtrl, CheckLst, Controls, UFichierCdn, URegistry,
UWindow;

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
    f368:array of TFichierCdn;//f368 
    f36C:string;//f36C
    constructor Create(Owner:TComponent; logo:Timage);//00550EF8
	procedure sub_0055186C(x:AnsiString);//0055186C
  end;
   var
     FormFusionner:TFormFusionner;   

implementation
	uses UEnregistrement,_FormAide,UBiblio;
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
    DriveComboBox1.Drive := ExtractFileDrive(GetChemin)[1];
    DirectoryListBox1.Directory := GetChemin;
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
begin//0
  //005510D8
    //005510F3
    if (Notebook1.PageIndex > 0) then
    begin//2
      //00551106
      SpeedButtonSuivant.Enabled := True;
      Notebook1.PageIndex := Notebook1.PageIndex - 1;
      Caption  := 'Fusionner plusieurs fichiers --> étape ' + IntToStr(Notebook1.PageIndex + 1) + ' : ' + Notebook1.Pages[Notebook1.PageIndex];
    end;//2
    if (Notebook1.PageIndex = 0) then 
		SpeedButtonPrecedent.Enabled:= False;
    //005511B6
end;//0

//00551210
procedure TFormFusionner.SpeedButtonSuivantClick(Sender:TObject);
var
  lvar_4:AnsiString;
  lvar_8:AnsiString;
  lvar_C:AnsiString;
begin//0
  //00551210
    //0055122B
    if (Notebook1.Pages.Count - 1 > Notebook1.PageIndex) then
    begin//2
      //00551252
      SpeedButtonPrecedent.Enabled := True;
      Notebook1.PageIndex := Notebook1.PageIndex + 1;
      Caption := 'Fusionner plusieurs fichiers --> étape ' + IntToStr(Notebook1.PageIndex + 1) + ' : ' + Notebook1.Pages[Notebook1.PageIndex];
    end;//2
    if (Notebook1.Pages.Count - 1 = Notebook1.PageIndex) then 
    SpeedButtonSuivant.Enabled := False;
    //00551316
end;//0


//00551370
procedure TFormFusionner.DriveComboBox1Change(Sender:TObject);
begin//0
  //00551370
  DirectoryListBox1.Drive :=DriveComboBox1.Drive;
end;//0


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
begin//0
  //00551480
  if (ListBoxFichiers.ItemIndex + 1 <> 0) then //00551492
    ListBoxFichiers.Items.Delete(ListBoxFichiers.ItemIndex);
  SpeedButtonSuivant.Enabled := (ListBoxFichiers.Items.Count - 1 > 0);
  if (ListBoxFichiers.Items.Count = 0) then
  begin//1
    //005514E1
    Label10.Caption := 'Elèves :';
    Label11.Caption := 'Périodes :';
  end;//1
end;//0

//0055152C
procedure TFormFusionner.Notebook1PageChanged(Sender : TObject);
var
  I:integer;
  buf:string;
begin//0
  //0055152C
    //0055155C
    case Notebook1.PageIndex of
      0:
      begin//3
        //0055157F
        SpeedButtonSuivant.Enabled := (ListBoxFichiers.Items.Count - 1 > 0);
          
          for I := 0 to  ListBoxFichiers.Items.Count - 1 do//005515BE
          begin//5
            //005515C4
            f368[I].destroy;
          end;//5
        SetLength(f368, 0);
        CheckListBox1.Items.Clear;
      end;//3
      1:
      begin//3
        //00551615
        SetLength(f368, ListBoxFichiers.Items.Count);
          for I := 0 to ListBoxFichiers.Items.Count- 1 do//0055165F
          begin//5
            //00551665
            f368[I] := TFichierCdn.Create(ListBoxFichiers.Items[I]{, 1, 0, 0});
          end;//5
        CheckListBox1.Items := f368[0].GetPeriodeNameList;
        SpeedButtonSuivant.Enabled := False;
        SpeedButtonFusionner.Enabled := False;
      end;//3
      2:
      begin//3
        //005516EF
        ComboBoxUtilisateurs.Items := GetUtilisateurs;
        ComboBoxUtilisateurs.ItemIndex := 0;
        Edit1.Text := f368[0].GetClasseName;
        Edit2.Text := f368[0].GetEtablissment;
        Edit3.Text := 'Toutes les matières';
        Edit4.Text := f368[0].GetYear;
        Edit5.Text := 'Fichier de fusion';
        SpeedButtonFusionner.Enabled := True;
      end;//3
    end;//2
    //00551808
end;//0

//0055186C
procedure TFormFusionner.sub_0055186C(x:AnsiString);
var
  FichierCdnTemp:TFichierCdn;
begin//0
  //0055186C
    //0055189A
    FichierCdnTemp := TFichierCdn.Create(x{, 1, 0, 0});
    if (FichierCdnTemp.Succes) then
    begin//2
      //005518BE
      if (FichierCdnTemp.OldVersion = false) then
      begin//3
        //005518CB
        if (FichierCdnTemp.NbreEleves <> 0) then
        begin//4
          //005518DA
          if (ListBoxFichiers.Items.Count = 0) then
          begin//5
            //005518F3
            ListBoxFichiers.Items.Add(x);
            f360.Clear;
            f360.AddStrings(FichierCdnTemp.GetEleveList);
            f364.Clear;
            f364.AddStrings(FichierCdnTemp.GetPeriodeNameList);
            Label10.Caption := 'Elèves : ' + IntToStr(FichierCdnTemp.NbreEleves );
            Label11.Caption := 'Périodes : ' + IntToStr(FichierCdnTemp.NbrePeriodes);
            
            FileListBox1.ItemIndex := FileListBox1.ItemIndex + 1;
          end//5
          else
          begin//5
            //005519CE
            if (Comparer2List(f360, FichierCdnTemp.GetEleveList)) then
            begin//6
              //005519EA
              if (Comparer2List(FichierCdnTemp.GetPeriodeNameList, f364)) then
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
procedure TFormFusionner.CheckListBox1ClickCheck(Sender:Tobject);
var
   b:boolean;
   I:integer;
begin//0
  //00551F18
  b := false;
    for I := 0 to CheckListBox1.Items.Count - 1 do//00551F41
    begin//2
      //00551F44
      if (CheckListBox1.Checked[I] ) then 
      b := true;
    end;//2
  SpeedButtonSuivant.Enabled := b;
end;//0

//00551F70
procedure TFormFusionner.SpeedButtonFusionnerClick(Sender:TObject);
var
  lvar_C:TFichierCdn;
  buf:string;
  lvar_1C : TStringList;
  I,J,K,lvar_10,lvar_18:integer;
  lvar_12C,lvar_A50,lvar_A4C,lvar_A54,lvar_B58,lvar_C5C,lvar_C60,lvar_D64,lvar_D68,lvar_A2C,lvar_B54:string;
  lvar_32C,lvar_42C,lvar_52C,lvar_62C,lvar_92C,lvar_82C,lvar_D8C,lvar_D90,lvar_D94,lvar_72C:string;
begin//0
  //00551F70
    //00551F97
    lvar_C := TFichierCdn.Create(''{, 1, 0, 0});
    lvar_C.SetTypePeriode(f368[0].GetTypePeriode);
    lvar_1C := TStringList.Create;
      
      for I := 1 to f368[0].NbrePeriodes()  do//00552014
      begin//3
        //0055201C
        lvar_1C.Add(f368[0].GetPeriodeName(I));
      end;//3
    lvar_C.SetPeriodeNameList_Hxx(lvar_1C);
    lvar_1C.Destroy;
    lvar_C.SetEnseignant(ComboBoxUtilisateurs.Items[ComboBoxUtilisateurs.ItemIndex]);
    lvar_C.SetClasseName(Edit1.Text);
    lvar_C.SetEtablissment(Edit2.Text);
    lvar_C.SetMatiere(Edit3.Text);
    lvar_C.SetYear(Edit4.Text);
    lvar_C.SetRemarque(Edit5.Text);
    lvar_C.CreerListeEleves(f368[0].GetEleveList);
    lvar_C.DataClear;
      for I := 1 to f368[0].NbrePeriodes do//00552240
      begin//3
        //00552248
        lvar_10 := 1;
        if (CheckListBox1.Checked[I - 1] = False) then Continue;
        for J := 0 to ListBoxFichiers.Items.Count - 1 do
        begin//4
          //005522A2
          lvar_12C := f368[J].GetMatiereName();
          lvar_A50 := f368[J].GetFileName();
          lvar_A4C := ExtractFileName(lvar_A50);
          case RadioGroupDonneesARetenir.ItemIndex of
            0:
            begin//6
              //00552337
              lvar_A54 := IntToStr(GetMoyennesSur);
              lvar_B58 := DateToStr(Date);
              lvar_C5C := 'Moyenne du fichier ' + lvar_A4C;
              lvar_D64 := 'Moyenne ' + lvar_D68;
              lvar_C.SetData_V1(I, lvar_D64, lvar_A2C, '', 'oui', lvar_B54, lvar_C5C, '', false);
              if (f368[0].NbreEleves <= 0) then Continue;
              for K := 1 to f368[0].NbreEleves  do
              begin//7
                //00552479
                lvar_C.SetAbs(I, J + 1, K, f368[J].GetMoyennePeriode(I, K, f368[J].GetArrondirMoyennes_t));
              end;//7
            end;//6
            1:
            begin//6
              //00552530
              lvar_1C := f368[J].GetDataTypeNoteList(I);
                for lvar_18 := 1 to lvar_1C.count do //00552570
                begin//8
                  //0055257A
                  lvar_C.SetData_V1(I, 'Moy. ' + lvar_1C[lvar_18 - 1] + ' - ' + lvar_12C{lvar_D68}, IntToStr(GetMoyennesSur), '', 'oui', DateToStr(Date), 'Extrait de ' + lvar_A4C, 'Moyenne type de notes', false);
				  
                  if (f368[0].NbreEleves  > 0) then
                  begin//9
                    //005526F5
                    for K := 1 to f368[0].NbreEleves  do
                    begin//10
                      //005526FD
                      f368[J].CalcMoyBrute_V06(lvar_1C[lvar_18 - 1], I,K,lvar_A2C );
                      lvar_C.SetAbs(I,lvar_10, K,lvar_A2C);
                    end;//10
                  end;//9
                  lvar_10 := lvar_10 + 1;
                end;//8
              lvar_1C.destroy;
            end;//6
            2:
            begin//6
              //005527E2
              for lvar_18 := 1 to f368[J].NbreModules(I) do
              begin//7
                //00552826
                lvar_32C := f368[J].GetDateNoteSur(I,lvar_18);
                lvar_42C := f368[J].Get_Coefficient(I,lvar_18);
                lvar_52C := f368[J].GetCompteMoyenne(I,lvar_18);
                lvar_62C := f368[J].GetDataDate(I, lvar_18);
                lvar_A2C := f368[J].GetTitleModule(I, lvar_18);
                lvar_72C := lvar_A2C + ' - ' + lvar_12C;
                lvar_92C := f368[J].GetDataTypeNote(I, lvar_18);
                lvar_82C := f368[J].GetDataCommentaire(I,lvar_18);
                lvar_A2C := f368[J].GetOralEcrit(I, lvar_18);
				lvar_C.SetData_V1(I, lvar_72C, lvar_32C, lvar_42C, lvar_52C, lvar_62C, lvar_82C, lvar_92C, lvar_A2C = 'Oral');
                  for K := 1 to f368[0].NbreEleves do//00552B29
                  begin//9
                    //00552B31
                    lvar_A2C := f368[J].Get_Sum(I, lvar_18, K);
                    lvar_C.SetAbs(I, lvar_10,K,lvar_A2C);
                  end;//9
                lvar_10 := lvar_10 + 1;
              end;//7
            end;//6
          end;//5
        end;//4
      end;//3
    if (SaveDialog1.Execute) then
    begin//2
      //00552C08
	  lvar_C.SaveToFile__(SaveDialog1.FileName, false, '', 0);
      f36C := SaveDialog1.FileName;
    end;//2
    lvar_C.Destroy;
    ModalResult := 1;
	 //00552C83
  
end;//0

//00552DB4
procedure TFormFusionner.SpeedButton20Click(Sender:TObject);
var
  I:integer;
begin//0
  //00552DB4
   
    for I := 1 to CheckListBox1.Items.Count do //00552DD0
    begin//2
      //00552DD5
      CheckListBox1.Checked[I - 1] := True;
    end;//2
  SpeedButtonSuivant.Enabled := True;
end;//0


//00552E04
procedure TFormFusionner.SpeedButton21Click(Sender:TObject);
var 
  I:integer;
begin//0
  //00552E04
    //00552E20
    for I := 1 to CheckListBox1.Items.Count do
    begin//2
      //00552E25
      CheckListBox1.Checked[I - 1] :=  False;
    end;//2
  SpeedButtonSuivant.Enabled := False;
end;//0

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
  //0055319C
  if (Key = #27) then 
  ModalResult := 2;
end;//0

//005531AC
procedure TFormFusionner.FormDestroy(Sender:TObject);
begin//0
  //005531AC
  FreeAndNil(f360);
  FreeAndNil(f364);
end;//0


//005531C8
procedure TFormFusionner.SpeedButtonAideClick(Sender:TObject);
begin//0
  //005531C8
  {gvar_00617E94}FormAide := TFormAide.Create(Self, 'Fusionner plusieurs fichiers', 
										  'Cette boite de dialogue permet de créer un nouveau fichier à partir des informations (moyennes, séries de notes, ...) de plusieurs fichiers Carnet de Notes. '+#13+#10+#13+#10+
										  'Ces fichiers doivent avoir exactement la même liste d''élèves et le même type de périodes (trimestres, semestres, ...) '+#13+#10+#13+#10+
										  'Pour être certains que vos fichiers remplissent bien ces conditions, il est conseillé de les créer en début d''année par la rubrique "Clôner le fichier" du menu "Fichier" de Carnet de Notes.',$78);
  FormAide.ShowModal;
  FormAide.Destroy;
end;//0


end.