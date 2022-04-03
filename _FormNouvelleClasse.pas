{***************************************
* Version Original V0.01
* Decompiled by HOUIDEF AEK v.11.02.2018
***************************************}
unit _FormNouvelleClasse;

interface

uses
Forms, Windows,  SysUtils, Classes, ExtCtrls, StdCtrls, Buttons,UFichierCdn,_FormOptions,dialogs;

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
    f338:TFichierCdn;//f338
    f33C:boolean;//f33C
    constructor Create(AOwner:TComponent; d:TFichierCdn; S:string; Logo:TImage; u:boolean);//00531FC0
  end;
  var
   FormNouvelleClasse:TFormNouvelleClasse;
implementation
     uses UBiblio,UEnregistrement;
{$R *.DFM}

//00531FC0
 
constructor TFormNouvelleClasse.Create(AOwner:TComponent; d:TFichierCdn; S:string; Logo:TImage; u:boolean);
begin//0
  //00531FC0
    //00531FEE
    inherited Create(AOwner);
    Image1.Picture := Logo.Picture;
    f338 := d;
    Caption := S;
    f33C := u;
    //00532036
 end;

//00532064
procedure TFormNouvelleClasse.FormShow(Sender:TObject);
var
  buf :string;
begin//0
  //00532064
    //005320BA
    ComboBoxUtilisateurs.Enabled := f338.IsVersionPersonnelle;
    SpeedButton2.Enabled :=f338.IsVersionPersonnelle;
    EditClasse.Enabled :=f338.IsVersionPersonnelle;
    EditEtablissement.Enabled :=f338.IsVersionPersonnelle;
    ComboBoxMatiere.Enabled :=f338.IsVersionPersonnelle;
    SpeedButton5.Enabled :=f338.IsVersionPersonnelle;
    EditAnneeScolaire.Enabled :=f338.IsVersionPersonnelle;
    EditClasse.Text := f338.GetClasseName;
    EditEtablissement.Text :=f338.GetEtablissment;
    EditAnneeScolaire.Text := f338.GetYear;
    EditRemarque.Text := f338.GetRemarque;
    ComboBoxMatiere.Items := GetMatieres;
    ComboBoxMatiere.Text := f338.GetMatiereName;
    if (f33C) then
    begin//2
      //00532252
      ComboBoxOrganisationAnnee.Items := GetPeriodes;
      ComboBoxBulletins.Items := GetNomsbulletins;
    end//2
    else
    begin//2
      //0053227B
      ComboBoxOrganisationAnnee.Items.Add(f338.GetTypePeriode);
      ComboBoxOrganisationAnnee.Enabled :=False;
      ComboBoxBulletins.Items.Add(f338.GetBulletinsTitle);
      ComboBoxBulletins.Enabled :=False;
      SpeedButton1.Enabled :=False;
    end;//2
    ComboBoxOrganisationAnnee.ItemIndex := 0;
    ComboBoxBulletins.ItemIndex := 0;
    ComboBoxUtilisateurs.Items := GetUtilisateurs;
    if (f33C = false) then
    begin//2
      //0053234D
      if (ComboBoxUtilisateurs.Items.IndexOf(f338.GetEnseignant) + 1 = 0) then
      begin//3
        //0053238B
        ComboBoxUtilisateurs.Items.Add(f338.GetEnseignant);
      end;//3
      ComboBoxUtilisateurs.ItemIndex := ComboBoxUtilisateurs.Items.IndexOf(f338.GetEnseignant);
    end//2
	else 
    ComboBoxUtilisateurs.ItemIndex := 0;
    //0053240E
end;//0


//00532434
procedure TFormNouvelleClasse.FormHide(Sender:TObject);
begin//0
  //00532434
    //00532482
    if (ModalResult = 1) then 
    if (f33C) then 
	begin
		f338.SetEnseignant(ComboBoxUtilisateurs.Items[ComboBoxUtilisateurs.ItemIndex]);
		f338.SetClasseName(EditClasse.Text);
		f338.SetEtablissment(EditEtablissement.Text);
		f338.SetRemarque(EditRemarque.Text);
		f338.SetYear(EditAnneeScolaire.Text);
		f338.SetMatiere(ComboBoxMatiere.Text);
		f338.SetBulletinsPeriode(ComboBoxOrganisationAnnee.Items[ComboBoxOrganisationAnnee.ItemIndex], ComboBoxBulletins.Items[ComboBoxBulletins.ItemIndex]);
    end;
	//00532683
end;//0

//005326C4
procedure TFormNouvelleClasse.SpeedButton1Click(Sender:TObject);
begin//0
  //005326C4
  {gvar_00617D64}FormOptions := TFormOptions.Create(Self, Image1);
  FormOptions.PageControl1.ActivePage := FormOptions.TabSheet9;
  FormOptions.ShowModal;
  FormOptions.Destroy;
  ComboBoxOrganisationAnnee.Items := GetPeriodes;
  ComboBoxOrganisationAnnee.ItemIndex := 0;
end;//0

//00532744
procedure TFormNouvelleClasse.SpeedButton2Click(Sender:TObject);
begin//0
  //00532744
  {gvar_00617D64}FormOptions := TFormOptions.Create(Self, Image1);
  FormOptions.PageControl1.ActivePage := FormOptions.TabSheet8;
  FormOptions.ShowModal;
  FormOptions.Destroy;
  ComboBoxUtilisateurs.Items := GetUtilisateurs;
  ComboBoxUtilisateurs.ItemIndex := 0;
end;//0

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
begin//0
  //005327DC
  if (Key = #13) then//005327E1
    ModalResult := 1
  else 
  if (Key = #27) then 
    ModalResult := 2;
end;//0


//005327FC
procedure TFormNouvelleClasse.SpeedButton5Click(Sender:TObject);
begin//0
  //005327FC
  {gvar_00617D64}FormOptions := TFormOptions.Create(Self, Image1);
  FormOptions.PageControl1.ActivePage := FormOptions.TabSheet17;
  FormOptions.ShowModal;
  FormOptions.Destroy;
  ComboBoxMatiere.Items := GetMatieres;
end;//0

end.