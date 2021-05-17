{***********************************************************
* Version Original V0.03 build 1                           *
* Decompiled by Houidef AEK v 13:58 samedi, août 25, 2018  *
* The disassembly process : 100%                           *
************************************************************}
unit _FormClonerFichier;

interface

uses
Forms, Windows,  SysUtils, Classes, ExtCtrls, StdCtrls, Buttons, BrowseDr, Controls, UFichierCdn,Clipbrd,dialogs;

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
       uses unit49,_FormAide;
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
var
  Test:boolean;
begin//0
  //00537390
    //005373A7
    if (Clipboard.HasFormat(1) <> False) then
    begin//2
      //005373B9
      ListBoxEnseignants.Items.Text := Clipboard.AsText;


      //005373FE

      if (ListBoxEnseignants.Items.Count <> ListBoxMatieres.Items.Count) Or (ListBoxMatieres.Items.Count <= 0) then//00537417
        Test := false
      else//0053741B
        Test := true;

      SpeedButtonCreerFichiers.Enabled := Test;
    end;//2

    //00537435

end;//0

//0053744C
procedure TFormClonerFichier.SpeedButtonCollerMatieresClick(Sender:TObject);
var
  test:boolean;
begin//0
  //0053744C
    //00537463
    if (Clipboard.HasFormat(1)) then
    begin//2
      //00537475

      ListBoxMatieres.Items.Text := Clipboard.AsText;

      //005374BA

      if (ListBoxEnseignants.Items.Count <> ListBoxMatieres.Items.Count) Or (ListBoxMatieres.Items.Count <= 0) then //005374D3
        test := false
      else//005374D7
        test := true;


      SpeedButtonCreerFichiers.Enabled := test;
    end;//2

    //005374F1

end;//0


//00537508
procedure TFormClonerFichier.SpeedButtonFermerClick(Sender:TObject);
begin
  close;
end;

//00537510
procedure TFormClonerFichier.SpeedButtonCreerFichiersClick(Sender:TObject);
var
 FichierClone : TFichierCdn;
 StringList : TStringList;
 buf,Enseignant,Matiere,buf2,k:string;
 I,J:integer;
begin//0
  //00537510
    //00537531
    if (BrowseDirectoryDlg1.Execute{sub_005362AC}) then
    begin//2
      //00537544
      f304.clear();
        for I := 0 to ListBoxEnseignants.Items.Count - 1 do//00537572
        begin//4
          //0053757D
          FichierClone := TFichierCdn.Create(''{, 1, 0}); 
          FichierClone.SetTypePeriode__(f300.GetTypePeriode());
          StringList{lvar_1C} := TStringList.Create;
            for J := 1 to f300.GetNbrePeriodes do//005375D5
            begin//6
              //005375DC
              StringList.Add(f300.GetPeriodName(J));
            end;//6
          FichierClone.sub_004C4CBC(StringList);
          Enseignant := ListBoxEnseignants.Items[I];
          FichierClone.SetEnseignant(Enseignant);
          FichierClone.setClasseName(f300.GetClasseName);
          FichierClone.setEtablissment(f300.GetEtablissment);
          Matiere := ListBoxMatieres.Items[I];
          FichierClone.setMatiere(Matiere);
          FichierClone.SetYear(f300.GetYear);
          buf := f300.GetEnseignant();
          text := 'Fichier créé par ' + Matiere + ' pour ' + Enseignant;
          FichierClone.setRemarque(buf);
          FichierClone.SetEleveListsV(f300.EleveLists);
          FichierClone.init();
          StringList.Clear;
            for J := 1 to f300.EleveCount do//0053779B
            begin//6
              //005377A2
              f300.GetElevDateNais(J, buf);
              StringList.Add(buf);
            end;//6
          FichierClone.sub_004BF544(StringList);
            for J := 1 to f300.EleveCount do//00537806
            begin//6
              //0053780D
               FichierClone.SetElevR(J, f300.IsRedoublant(J));
            end;//6
          text := f300.GetClasseName + ' - ' + Matiere + ' - ' + Enseignant;
          //sub_00497A7C(text,K);
          text := {BrowseDirectoryDlg1.Selection +} '\' + K + '.cdn';
          f304.add(text);
          FichierClone.SaveCdn(text, false, '', false);
          StringList.Destroy;
          FichierClone.Destroy;
        end;//4
      if (ListBoxEnseignants.Items.Count - 1 = 0) then
      begin//3
        //00537917
        text := 'Un fichier créé avec succès';
      end//3
      else
      begin//3
        //00537926
        text := IntToStr(ListBoxEnseignants.Items.Count) + ' fichiers créés avec succès.';
      end;//3
      MessageDlg(text, mtInformation{2}, [mbOK]{gvar_00537A5C}, 0);
      Close;
    end;//2
    //0053797C
end;//0

//00537A60
procedure TFormClonerFichier.FormKeyPress(Sender:TObject; var Key:Char);
begin
  //00537A60
  if (Key <> char($1B)) then Exit;
  ModalResult := 2;
end;

//00537A70
procedure TFormClonerFichier.SpeedButtonAideClick(Sender:TObject);
begin//0
  //00537A70
    //00537A86
    //EDX := 1;
    FormAide{gvar_00617E94 }:= TFormAide.Create(Self, Caption, 'Cette boite de dialogue permet de créer plusieurs fichiers identiques à un fichier donné en changeant juste le nom de l''enseignant en charge de la classe et la matière enseignée. '+#13+#10+#13+#10+
															   'Du fichier servant de modèle seront copiés le nom de l''établissement, l''année scolaire, le type de périodes, le type de bulletins et bien sûr la liste des élèves (noms des élèves'+
															   ', dates de naissance et statuts de redoublant). Les éventuelles séries de notes contenues dans le fichier servant de modèle ne seront pas copiées.'+#13+#10+#13+#10+
															   'Pour créer les fichiers il faut remplir la liste des enseignants et la liste des matières.  Pour cela, il suffit de copier une liste déjà existante des enseignants dans le Presse-Papiers '+
															   'puis de cliquer sur le bouton "Liste des enseignants" pour copier la liste existante dans celle de la boite de dialogue. Même chose pour la liste des matières.'+#13+#10+#13+#10+
															   'Il faut que les deux listes aient le même nombre d''éléments pour que le clônage soit possible. Les deux listes doivent être ordonnées : lors de la création des fichiers, '+
															   'la première ligne de la liste des enseignants correspondra à la première ligne de la liste des matières, idem pour la deuxième, etc ... jusqu''à la dernière.'+#13+#10+#13+#10+
															   'En cliquant sur le bouton "Clôner le fichier", vous choisissez le répertoire de destination puis les fichiers sont créés. '+#13+#10+#13+#10+
															   'Leur nom suit le modèle "classe - matière - enseignant.cdn".', $136{310});

    FormAide.ShowModal;

    FormAide.Destroy;

    //00537ADE

end;//0

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
begin//0
  //00538338
  ListBoxMatieres.ItemIndex := ListBoxEnseignants.ItemIndex;
end;//0


//00538358
procedure TFormClonerFichier.ListBoxMatieresClick(Sender:TObject);
begin//0
  //00538358
  ListBoxEnseignants.ItemIndex := ListBoxMatieres.ItemIndex;
end;//0


//00538378
procedure TFormClonerFichier.FormDestroy(Sender:TObject);
begin
	FreeAndNil(f304);
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