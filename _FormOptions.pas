{***********************************************************
* Version Original V0.03 build 1                           *
* Decompiled by HOUIDEF AEK v 12:20 mercredi, août 29, 2018*
* The disassembly process : 100%                            *
************************************************************}
unit _FormOptions;

interface

uses
  Forms, Windows, SysUtils, Classes, ExtCtrls, ComCtrls, StdCtrls, Buttons, Dialogs, CheckLst, Clipbrd, 
  ColorPickerButton, RXSpin, Controls, UInclureImpression;

type
  TFormOptions = class(TForm)
  published
    Panel2:TPanel;//f2D0
    Bevel2:TBevel;//f2D4
    Image1:TImage;//f2D8
    PageControl1:TPageControl;//f2DC
    TabSheet1:TTabSheet;//f2E0
    optionsAuDemarrage:TRadioGroup;//f2E4
    TabSheet2:TTabSheet;//f2E8
    Bevel1:TBevel;//f2EC
    Bevel3:TBevel;//f2F0
    TabSheet3:TTabSheet;//f2F4
    Bevel4:TBevel;//f2F8
    afficherBarreOutils:TCheckBox;//f2FC
    tailleMaximumAuDemarrage:TCheckBox;//f300
    afficherHeure:TCheckBox;//f304
    afficherDate:TCheckBox;//f308
    TabSheet4:TTabSheet;//f30C
    typesDeNotes:TListBox;//f310
    Bevel5:TBevel;//f314
    TabSheet6:TTabSheet;//f318
    TabSheet7:TTabSheet;//f31C
    Bevel7:TBevel;//f320
    Bevel8:TBevel;//f324
    TabSheet8:TTabSheet;//f328
    Edit1:TEdit;//f32C
    Label3:TLabel;//f330
    TabSheet5:TTabSheet;//f334
    Bevel6:TBevel;//f338
    TabSheet9:TTabSheet;//f33C
    Bevel10:TBevel;//f340
    Periodes:TListBox;//f344
    Label2:TLabel;//f348
    Edit2:TEdit;//f34C
    TabSheet10:TTabSheet;//f350
    Label4:TLabel;//f354
    ListBoxSousPeriodes:TListBox;//f358
    Label5:TLabel;//f35C
    Label6:TLabel;//f360
    Label7:TLabel;//f364
    Shape1:TShape;//f368
    Shape2:TShape;//f36C
    SpeedButton1:TSpeedButton;//f370
    SpeedButton2:TSpeedButton;//f374
    ColorDialog1:TColorDialog;//f378
    SpeedButton3:TSpeedButton;//f37C
    SpeedButton4:TSpeedButton;//f380
    Label8:TLabel;//f384
    Shape3:TShape;//f388
    SpeedButton5:TSpeedButton;//f38C
    SpeedButton6:TSpeedButton;//f390
    TabSheet11:TTabSheet;//f394
    Bevel12:TBevel;//f398
    ListBoxFichiers:TListBox;//f39C
    RadioGroupArrondir:TRadioGroup;//f3A0
    Label9:TLabel;//f3A4
    Bevel13:TBevel;//f3A8
    Bevel14:TBevel;//f3AC
    CheckBox3:TCheckBox;//f3B0
    RadioGroupTrier:TRadioGroup;//f3B4
    Shape4:TShape;//f3B8
    SpeedButton7:TSpeedButton;//f3BC
    SpeedButton8:TSpeedButton;//f3C0
    CheckBox4:TCheckBox;//f3C4
    Label11:TLabel;//f3C8
    Label12:TLabel;//f3CC
    Shape5:TShape;//f3D0
    SpeedButton9:TSpeedButton;//f3D4
    SpeedButton10:TSpeedButton;//f3D8
    Label13:TLabel;//f3DC
    Shape6:TShape;//f3E0
    SpeedButton11:TSpeedButton;//f3E4
    SpeedButton12:TSpeedButton;//f3E8
    Label14:TLabel;//f3EC
    Label15:TLabel;//f3F0
    Label16:TLabel;//f3F4
    Label17:TLabel;//f3F8
    Shape7:TShape;//f3FC
    SpeedButton13:TSpeedButton;//f400
    SpeedButton14:TSpeedButton;//f404
    Bevel16:TBevel;//f408
    ListBoxUtilisateurs:TListBox;//f40C
    Label20:TLabel;//f410
    Edit6:TEdit;//f414
    TabSheet12:TTabSheet;//f418
    Bevel18:TBevel;//f41C
    RadioGroupGrilleNotes:TRadioGroup;//f420
    RadioGroupGrilleBilans:TRadioGroup;//f424
    CheckBox2:TCheckBox;//f428
    Bevel19:TBevel;//f42C
    Edit7:TEdit;//f430
    PageControl2:TPageControl;//f434
    TabSheet13:TTabSheet;//f438
    TabSheet14:TTabSheet;//f43C
    Label21:TLabel;//f440
    CheckListBox1:TCheckListBox;//f444
    CheckListBox2:TCheckListBox;//f448
    CheckBox1:TCheckBox;//f44C
    Label23:TLabel;//f450
    CheckBox7:TCheckBox;//f454
    CheckBox9:TCheckBox;//f458
    RadioGroup1:TRadioGroup;//f45C
    CheckBox5:TCheckBox;//f460
    CheckBox6:TCheckBox;//f464
    SpeedButtonFermer:TSpeedButton;//f468
    Bevel11:TBevel;//f46C
    Label22:TLabel;//f470
    Shape8:TShape;//f474
    SpeedButton16:TSpeedButton;//f478
    SpeedButton17:TSpeedButton;//f47C
    Bevel17:TBevel;//f480
    CheckBox8:TCheckBox;//f484
    Label24:TLabel;//f488
    RadioGroup2:TRadioGroup;//f48C
    CheckBox10:TCheckBox;//f490
    RadioGroup3:TRadioGroup;//f494
    TabControl1:TTabControl;//f498
    historiqueDesFichiers:TCheckBox;//f49C
    Label19:TLabel;//f4A0
    Label18:TLabel;//f4A4
    Bevel15:TBevel;//f4A8
    SpeedButton18:TSpeedButton;//f4AC
    SpeedButton19:TSpeedButton;//f4B0
    SpeedButton20:TSpeedButton;//f4B4
    SpeedButton21:TSpeedButton;//f4B8
    SpeedButton22:TSpeedButton;//f4BC
    SpeedButton23:TSpeedButton;//f4C0
    SpeedButton24:TSpeedButton;//f4C4
    SpeedButton25:TSpeedButton;//f4C8
    SpeedButton26:TSpeedButton;//f4CC
    SpeedButton27:TSpeedButton;//f4D0
    Bevel20:TBevel;//f4D4
    CheckBox11:TCheckBox;//f4D8
    Label25:TLabel;//f4DC
    CheckBox12:TCheckBox;//f4E0
    CheckBox14:TCheckBox;//f4E4
    CheckBox15:TCheckBox;//f4E8
    CheckBox16:TCheckBox;//f4EC
    Label1:TLabel;//f4F0
    Label26:TLabel;//f4F4
    Bevel21:TBevel;//f4F8
    Bevel22:TBevel;//f4FC
    Label31:TLabel;//f500
    Label32:TLabel;//f504
    Label33:TLabel;//f508
    Bevel23:TBevel;//f50C
    CheckBox17:TCheckBox;//f510
    CheckBox18:TCheckBox;//f514
    CheckBox19:TCheckBox;//f518
    CheckBox20:TCheckBox;//f51C
    CheckBox21:TCheckBox;//f520
    Label34:TLabel;//f524
    RadioGroupGraphes:TRadioGroup;//f528
    TabSheet15:TTabSheet;//f52C
    Label35:TLabel;//f530
    CheckListBox3:TCheckListBox;//f534
    SpeedButton44:TSpeedButton;//f538
    SpeedButton45:TSpeedButton;//f53C
    CheckBox13:TCheckBox;//f540
    Edit8:TEdit;//f544
    UpDown3:TUpDown;//f548
    Label36:TLabel;//f54C
    CheckBox22:TCheckBox;//f550
    CheckBox23:TCheckBox;//f554
    TabSheet16:TTabSheet;//f558
    CheckBox24:TCheckBox;//f55C
    RadioGroupArrondirAnnuelle:TRadioGroup;//f560
    RadioGroupTypeMoyenneAnnuelle:TRadioGroup;//f564
    TabSheet17:TTabSheet;//f568
    ListBoxMatieres:TListBox;//f56C
    Bevel24:TBevel;//f570
    SpeedButton48:TSpeedButton;//f574
    OpenDialog1:TOpenDialog;//f578
    SpeedButton49:TSpeedButton;//f57C
    SpeedButtonAjouterListeTypesDeNotes:TSpeedButton;//f580
    SpeedButtonSauverListeTypesDeNotes:TSpeedButton;//f584
    SaveDialog1:TSaveDialog;//f588
    Label37:TLabel;//f58C
    Edit9:TEdit;//f590
    SpeedButton52:TSpeedButton;//f594
    SpeedButton53:TSpeedButton;//f598
    SpeedButton54:TSpeedButton;//f59C
    SpeedButton55:TSpeedButton;//f5A0
    SpeedButton56:TSpeedButton;//f5A4
    Label38:TLabel;//f5A8
    CheckBox25:TCheckBox;//f5AC
    SpeedButtonSupprimerMatieres:TSpeedButton;//f5B0
    CheckBox26:TCheckBox;//f5B4
    CheckBox27:TCheckBox;//f5B8
    Label39:TLabel;//f5BC
    CheckBox28:TCheckBox;//f5C0
    CheckBox29:TCheckBox;//f5C4
    Label40:TLabel;//f5C8
    Label41:TLabel;//f5CC
    CouleurFondFenetreInfos:TColorPickerButton;//f5D0
    CouleurNotesEleve:TColorPickerButton;//f5D4
    CouleurMinimumClasse:TColorPickerButton;//f5D8
    CouleurMaximumClasse:TColorPickerButton;//f5DC
    CouleurMoyenneClasse:TColorPickerButton;//f5E0
    CouleurDebutDegrade:TColorPickerButton;//f5E4
    CouleurFinDegrade:TColorPickerButton;//f5E8
    CouleurMurGauche:TColorPickerButton;//f5EC
    CouleurMurBas:TColorPickerButton;//f5F0
    Bevel9:TBevel;//f5F4
    NombreFichiersHistorique:TRxSpinEdit;//f5F8
    Label27:TLabel;//f5FC
    MoyennesSur:TRxSpinEdit;//f600
    NombreSousPeriodes:TRxSpinEdit;//f604
    CheckBoxAfficherR:TCheckBox;//f608
    CheckBox30:TCheckBox;//f60C
    CheckBox31:TCheckBox;//f610
    Label28:TLabel;//f614
    CheckBox32:TCheckBox;//f618
    CheckBox33:TCheckBox;//f61C
    Label29:TLabel;//f620
    CheckBox34:TCheckBox;//f624
    CheckBox35:TCheckBox;//f628
    CheckBoxVerificationMAJ:TCheckBox;//f62C
    CheckBoxAfficherDatesDeNaissance:TCheckBox;//f630
    CheckBoxAfficherNomEnseignantOnglets:TCheckBox;//f634
    SpeedButtonCollerListeTypesDeNotes:TSpeedButton;//f638
    SpeedButtonCollerListeEnseignants:TSpeedButton;//f63C
    SpeedButtonCollerListeMatieres:TSpeedButton;//f640
    SpeedButtonSupprimerEnseignants:TSpeedButton;//f644
    SpeedButtonSupprimerTypesDeNotes:TSpeedButton;//f648
    SpeedButtonRetablirHistorique:TSpeedButton;//f64C
    SpeedButtonViderHistorique:TSpeedButton;//f650
    SpeedButtonSupprimerLaListe:TSpeedButton;//f654
    SpeedButtonAjouterALaListe:TSpeedButton;//f658
    SpeedButtonListeParDefaut:TSpeedButton;//f65C
    SpeedButtonSupprimerDeLaListe:TSpeedButton;//f660
    procedure SpeedButton55Click(Sender:TObject);//005081F8
    procedure SpeedButton56Click(Sender:TObject);//0050834C
    procedure SpeedButton49Click(Sender:TObject);//00508134
    procedure SpeedButtonAjouterListeTypesDeNotesClick(Sender:TObject);//00507F18
    procedure SpeedButtonSauverListeTypesDeNotesClick(Sender:TObject);//00508070
    procedure SpeedButton54Click(Sender:TObject);//0050840C
    procedure SpeedButton53Click(Sender:TObject);//0050864C
    procedure ListBoxMatieresClick(Sender:TObject);//00508770
    procedure Edit9Enter(Sender:TObject);//0050862C
    procedure Edit9Change(Sender:TObject);//005084F0
    procedure SpeedButton52Click(Sender:TObject);//00508560
    procedure SpeedButton48Click(Sender:TObject);//00507DC0
    procedure CheckBox10Click(Sender:TObject);//00507964
    procedure Edit7Change(Sender:TObject);//005079BC
    procedure RadioGroup3Click(Sender:TObject);//005078F4
    procedure historiqueDesFichiersClick(Sender:TObject);//005078B4
    procedure CheckBox8Click(Sender:TObject);//005078D4
    procedure FormKeyPress(Sender:TObject; var Key:Char);//00507A6C
    procedure CheckBox23Click(Sender:TObject);//00507C34
    procedure ListBoxMatieresDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);//00507C54
    procedure UpDown3Click(Sender: TObject; Button: TUDBtnType);//00507AFC
    procedure SpeedButton44Click(Sender:TObject);//00507A7C
    procedure SpeedButton45Click(Sender:TObject);//00507ABC
    procedure SpeedButtonSupprimerEnseignantsClick(Sender:TObject);//00508CC4
    procedure SpeedButtonSupprimerTypesDeNotesClick(Sender:TObject);//00508D58
    procedure SpeedButtonCollerListeMatieresClick(Sender:TObject);//00508BCC
    procedure SpeedButtonCollerListeTypesDeNotesClick(Sender:TObject);//005089DC
    procedure SpeedButtonCollerListeEnseignantsClick(Sender:TObject);//00508AD4
    procedure SpeedButtonRetablirHistoriqueClick(Sender:TObject);//00508DEC
    procedure SpeedButtonListeParDefautClick(Sender:TObject);//00509180
    procedure SpeedButtonSupprimerDeLaListeClick(Sender:TObject);//00509270
    procedure SpeedButtonAjouterALaListeClick(Sender:TObject);//00508FE8
    procedure SpeedButtonViderHistoriqueClick(Sender:TObject);//00508EA8
    procedure SpeedButtonSupprimerLaListeClick(Sender:TObject);//00508EFC
    procedure FormShow(Sender:TObject);//005089D8
    procedure CouleurNotesEleveDefaultSelect(sender:Tobject);//00508918
    procedure CouleurMinimumClasseDefaultSelect(sender:Tobject);//00508930
    procedure CouleurFondFenetreInfosDefaultSelect(sender:Tobject);//00508900
    procedure CheckBox5Click(Sender:TObject);//00508790
    procedure SpeedButtonSupprimerMatieresClick(Sender:TObject);//00508870
    procedure CouleurMaximumClasseDefaultSelect(Sender:TObject);//00508948
    procedure CouleurMurGaucheDefaultSelect(Sender:TObject);//005089A8
    procedure CouleurMurBasDefaultSelect(Sender:TObject);//005089C0
    procedure CouleurFinDegradeDefaultSelect(Sender:TObject);//00508990
    procedure CouleurMoyenneClasseDefaultSelect(Sender:TObject);//00508960
    procedure CouleurDebutDegradeDefaultSelect(Sender:TObject);//00508978
    procedure BitBtn6Click(Sender:TObject);//00506614
    procedure BitBtn11Click(Sender:TObject);//00506700
    procedure ListBoxFichiersClick(Sender:TObject);//00506588
    procedure SpeedButton6Click(Sender:TObject);//005063E4
    procedure ListBoxFichiersDrawItem(Control: TWinControl; Index: Integer;Rect: TRect; State: TOwnerDrawState);//0050641C
    procedure SpeedButton7Click(Sender:TObject);//005067BC
    procedure SpeedButton10Click(Sender:TObject);//005068CC
    procedure SpeedButton12Click(Sender:TObject);//00506904
    procedure SpeedButton8Click(Sender:TObject);//00506894
    procedure SpeedButton9Click(Sender:TObject);//00506804
    procedure SpeedButton11Click(Sender:TObject);//0050684C
    procedure SpeedButton5Click(Sender:TObject);//0050639C
    procedure typesDeNotesDrawItem(Control: TWinControl; Index: Integer;Rect: TRect; State: TOwnerDrawState);//00506080
    procedure Edit1Change(Sender:TObject);//005061EC
    procedure BitBtn3Click(Sender:TObject);//00505FD0
    procedure BitBtn4Click(Sender:TObject);//00505DB4
    procedure BitBtn5Click(Sender:TObject);//00505EE8
    procedure typesDeNotesClick(Sender:TObject);//0050625C
    procedure SpeedButton3Click(Sender:TObject);//0050632C
    procedure SpeedButton4Click(Sender:TObject);//00506364
    procedure SpeedButton1Click(Sender:TObject);//005062E4
    procedure Edit1Enter(Sender:TObject);//0050627C
    procedure SpeedButton2Click(Sender:TObject);//0050629C
    procedure ListBoxSousPeriodesClick(Sender:TObject);//00507690
    procedure Button1Click(Sender:TObject);//0050772C
    procedure ListBoxSousPeriodesDrawItem(Control: TWinControl; Index: Integer;Rect: TRect; State: TOwnerDrawState);//00507524
    procedure PeriodesClick(Sender:TObject);//00507234
    procedure PeriodesDrawItem(Control: TWinControl; Index: Integer;Rect: TRect; State: TOwnerDrawState);//005073B8
    procedure Button2Click(Sender:TObject);//0050776C
    procedure SpeedButton17Click(Sender:TObject);//00507834
    procedure SpeedButton16Click(Sender:TObject);//0050786C
    procedure SpeedButtonFermerClick(Sender:TObject);//0050782C
    procedure Button3Click(Sender:TObject);//005077AC
    procedure Button4Click(Sender:TObject);//005077EC
    procedure Edit2Change(Sender:TObject);//00507188
    procedure ListBoxUtilisateursDrawItem(Control: TWinControl; Index: Integer;Rect: TRect; State: TOwnerDrawState);//00506AEC
    procedure Edit6Change(Sender:TObject);//00506C58
    procedure SpeedButton14Click(Sender:TObject);//00506AB4
    procedure CheckBox4Click(Sender:TObject);//0050693C
    procedure SpeedButton13Click(Sender:TObject);//00506A6C
    procedure Edit6Enter(Sender:TObject);//00506CC8
    procedure BitBtn13Click(Sender:TObject);//00506EBC
    procedure BitBtn7Click(Sender:TObject);//00506FF0
    procedure BitBtn14Click(Sender:TObject);//00506DD4
    procedure BitBtn12Click(Sender:TObject);//00506CE8
    procedure ListBoxUtilisateursClick(Sender:TObject);//00506DB4
  public
    f664:TInclureImpression;//f664
    f668:TInclureImpression;//f668
    f66C:TInclureImpression;//f66C
    destructor Destroy; virtual;//005055A4
    constructor Create(AOwner: TComponent;logo:TImage);//00504B24
  end;
   var
     FormOptions:TFormOptions;

implementation
     uses UBiblio,UEnregistrement,UConseil;
{$R *.DFM}

//00504B24
constructor TFormOptions.Create(AOwner:TComponent; logo:TImage);
var
  I:integer;
begin//0
  //00504B24
    inherited Create(AOwner);
    Image1.Picture := logo.Picture;
    f664 := GetSeriesdeNotes(0);
    f668 := GetSeriesdeNotes(1);
    f66C := GetSeriesdeNotes(2);
    Caption := Caption + 'Carnet de Notes version Personnelle';
    RadioGroupGrilleNotes.ItemIndex := GetOngletsGrillesNotes;
    RadioGroupGrilleBilans.ItemIndex := GetOngletsGrillesBilans;
    RadioGroupGraphes.ItemIndex := GetOngletsGraphes_;
    CheckBox10.Checked :=GetAfficherOngletsClasses;
    RadioGroup3.Enabled := CheckBox10.Checked;
    RadioGroup3.ItemIndex  := GetOngletClasses;
    TabControl1.Visible := CheckBox10.Checked;
    CheckBox25.Checked  := GetAfficherMatiereOnglets;
    CheckBoxAfficherNomEnseignantOnglets.Checked  := GetAfficherNomEnseignantOnglets;
    CheckBoxVerificationMAJ.Checked := GetRappelMiseAJourDisponible;
    optionsAuDemarrage.ItemIndex  := GetAuDemarrage;
    CheckBox8.Checked := GetRappelSauvegarde;
    RadioGroup2.Enabled := CheckBox8.Checked;
    RadioGroup2.ItemIndex := GetFrequenceRappel;
    CheckBox6.Checked := GetAfficherConseils;
    CouleurFondFenetreInfos.SelectionColor := GetcouleurFenetreInfo;
    afficherBarreOutils.Checked := GetAfficherBarreOutils;
    tailleMaximumAuDemarrage.Checked := GetTailleMaximumAuDemarrage;
    afficherHeure.Checked := GetAfficherHeure;
    afficherDate.Checked := GetAfficherDate;
    CheckBox2.Checked := GetFileBak;
    CheckBox11.Checked :=GetAfficherFenetreInfo;
    CheckBoxAfficherR.Checked :=GetAfficherR;
    CheckBoxAfficherDatesDeNaissance.Checked :=GetAfficherDatesDeNaissance;
    CheckBox14.Checked :=Getgraphe3D;
    CheckBox15.Checked :=GetGrapheDegrade;
    CheckBox16.Checked :=GetGrapheEnCouleur;
    CouleurDebutDegrade.SelectionColor := GetcouleurDebutDegrade;
    CouleurFinDegrade.SelectionColor := GetcouleurFinDegrade;
    CouleurNotesEleve.SelectionColor := GetCouleurEleve;
    CouleurMinimumClasse.SelectionColor := GetCouleurMin;
    CouleurMaximumClasse.SelectionColor := GetcouleurMax;
    CouleurMoyenneClasse.SelectionColor := GetcouleurMoyenne;
    CouleurMurGauche.SelectionColor := GetColorMurGauche;
    CouleurMurBas.SelectionColor := GetCouleurMurBas;
    CheckBox17.Checked :=GetGrapheLigneEleve;
    CheckBox18.Checked :=GetGrapheLigneMin;
    CheckBox19.Checked :=GetGrapheLigneMax;
    CheckBox20.Checked :=GetgrapheLigneMoyenne;
    CheckBox21.Checked :=GetGrapheLegende;
    typesDeNotes.Items:=GetTypesdenotes;
    ListBoxUtilisateurs.Items :=GetUtilisateurs;
    ListBoxMatieres.Items :=GetMatieres;
    Shape1.Brush.Color := GetColorlignesPaires;
    Shape2.Brush.Color := GetColorlignesImpaires;
    Shape3.Brush.Color := GetcouleurSelection;
    Shape8.Brush.Color := GetColor5Note;
    Shape1.Pen.Color := GetColorlignesPaires;
    Shape2.Pen.Color := GetColorlignesImpaires;
    Shape3.Pen.Color := GetcouleurSelection;
    Shape8.Pen.Color := GetColor5Note;
    CheckBox5.Checked :=GetColorationGrille;
    Periodes.Items :=GetPeriodes;
    historiqueDesFichiers.Checked :=GetUtiliserHistorique;
	NombreFichiersHistorique.Value := GetnbFichiersHistorique;
    NombreFichiersHistorique.Enabled := historiqueDesFichiers.Checked;
    ListBoxFichiers.Items :=GetHistorique;
    if (ListBoxFichiers.Items.Count <> 0) then
    begin//2
      //00505087
      ListBoxFichiers.ItemIndex := 0;
      SpeedButtonSupprimerLaListe.Enabled := True;
      SpeedButtonViderHistorique.Enabled := True;
      Label38.Caption := ListBoxFichiers.Items[0];
    end//2
    else
    begin//2
      //005050D4
      Label38.Caption := '';
    end;//2
    RadioGroupArrondir.ItemIndex := GetArrondirMoyennes;
    RadioGroupArrondirAnnuelle.ItemIndex := GetArrondirMoyennesAnnuelles;
    RadioGroupTrier.ItemIndex := GetTrierMoyennes; 
    MoyennesSur.Value := GetMoyennesSur;
    CheckBox3.Checked := GetmoyenneParTypeDeNotes;
    RadioGroupTypeMoyenneAnnuelle.ItemIndex := GettypeMoyennesAnnuelles;
    CheckBox34.Checked := GetmoyennesEcritEtOral;
    CheckBox4.Checked  := GetColorationNote;
    Shape4.Brush.Color := GetColor1Note;
    Shape5.Brush.Color := GetColor2Note;
    Shape6.Brush.Color := GetColor3Note;
    Shape7.Brush.Color := GetColor4Note;
    Shape4.Pen.Color := GetColor1Note;
    Shape5.Pen.Color := GetColor2Note;
    Shape6.Pen.Color := GetColor3Note;
    Shape7.Pen.Color := GetColor4Note;
    CheckBox35.Checked :=GetimpressionMoyennesEcritOral;
    CheckBox30.Checked :=GetImpressionRAppreciations;
    CheckBox31.Checked :=GetimpressionRGrilleVierge;
    CheckBox32.Checked :=GetImpressionRBilans;
    CheckBox33.Checked :=GetImpressionRSeriesDeNotes;
    CheckBox26.Checked :=GetImpressionDatesDeNaissanceAppreciations;
    CheckBox27.Checked :=GetImpressionDatesDeNaissanceGrilleVierge;
    CheckBox28.Checked :=GetImpressionDatesDeNaissanceBilans;
    CheckBox29.Checked :=GetImpressionDatesDeNaissanceSeriesDeNotes;
    CheckListBox1.Items :=f664.f8;
      for I := 0 to f664.f8.count - 1 do //0050533C
      begin//3
        //0050533F
        CheckListBox1.Checked[I] := f664.fC[I];
      end;//3
    CheckListBox2.Items :=f664.f8;
      for I := 0 to f668.f8.count - 1 do //00505398
      begin//3
        //0050539B
        CheckListBox2.Checked[I] := f668.fC[I];
      end;//3
    CheckListBox3.Items :=f66C.f8;
      for I := 0 to f66C.f8.count - 1 do //005053F4
      begin//3
        //005053F7
        CheckListBox3.Checked[I] :=f66C.fC[I];
      end;//3
    CheckBox1.Checked :=GetNumeroterElevesSeriesDeNotes;
    CheckBox13.Checked :=GetnumeroterElevesGrilleVierge;
    CheckBox7.Checked :=GetcolonnesBilanDetaillees;
    CheckBox9.Checked :=GetNumeroterElevesBilans;
    CheckBox12.Checked :=GetimpressionCouleurNote_;
    RadioGroup1.ItemIndex := GettrierMoyennesImpression;
    Edit8.text := IntToStr(GetlargeurGrilleVierge);
    UpDown3.Position := GetlargeurGrilleVierge;
    CheckBox22.Checked :=GetimpressionColonneMoyenne;
    CheckBox23.Checked :=GetImpressionColonneClassement;
    RadioGroup1.Enabled := CheckBox23.Checked;
    CheckBox24.Checked :=GetNumeroterElevesAppreciations;
end;

//005055A4
destructor TFormOptions.Destroy;
var
  I :integer;
begin//0
  //005055A4
    //005055CA
    SetRappelSauvegarde(CheckBox8.Checked);
    if (CheckBox8.Checked) then//005055EF
      SetFrequenceRappel(RadioGroup2.ItemIndex);
    SetAuDemarrage(optionsAuDemarrage.ItemIndex);
    SetUtilisateurs(ListBoxUtilisateurs.Items);
    SetAfficherConseils(CheckBox6.Checked); //sub_00501C70
    SetRappelMiseAJourDisponible(CheckBoxVerificationMAJ.Checked);
    SetCouleurFenetreInfo(CouleurFondFenetreInfos.SelectionColor);
    SetafficherFenetreInfo(CheckBox11.Checked);
    SetAfficherBarreOutils(afficherBarreOutils.Checked);
    SetTailleMaximumAuDemarrage(tailleMaximumAuDemarrage.Checked);
    SetAfficherHeure(afficherHeure.Checked);
    SetAfficherDate(afficherDate.Checked);
    SetFileBak(CheckBox2.Checked);
    SetTypesdenotes(typesDeNotes.Items);
    SetMatieres(ListBoxMatieres.Items);
    SetAfficherR(CheckBoxAfficherR.Checked);
    SetAfficherDatesDeNaissance(CheckBoxAfficherDatesDeNaissance.Checked);
    SetUtiliserHistorique(historiqueDesFichiers.Checked);
      //00505753
	SetnbFichiersHistorique(TRUNC(NombreFichiersHistorique.Value));
	SetlignesImpaires(Shape2.Brush.Color);
	SetColorlignesPaires(Shape1.Brush.Color);
	SetcouleurSelection(Shape3.Brush.Color);
	SetcolorationGrille(CheckBox5.Checked);
	SetHistorique(ListBoxFichiers.Items);
	SetarrondirMoyennes(RadioGroupArrondir.ItemIndex);
	SetArrondirMoyennesAnnuelles(RadioGroupArrondirAnnuelle.ItemIndex);
	SetTrierMoyennes(RadioGroupTrier.ItemIndex);
	SetmoyennesSur(TRUNC(MoyennesSur.Value));
	SetMoyenneParTypeDeNotes(CheckBox3.Checked);
	SetMoyennesEcritEtOral(CheckBox34.Checked);
	SetcColor1Note(Shape4.Brush.Color);
	SetColor2Note(Shape5.Brush.Color);
	SetColor3Note(Shape6.Brush.Color);
	SetColor4Note(Shape7.Brush.Color);
	SetColor5Note(Shape8.Brush.Color);
	SetColorationNote(CheckBox4.Checked);
	SetOngletsGrillesNotes(RadioGroupGrilleNotes.ItemIndex);
	SetOngletsGrillesBilans(RadioGroupGrilleBilans.ItemIndex);
	SetOngletsGraphes_(RadioGroupGraphes.ItemIndex);
	SetNumeroterElevesSeriesDeNotes(CheckBox1.Checked);
        for I := 0 to CheckListBox1.Items.Count - 1 do //00505976
        begin//4
          //00505979
          f664.fC[I] := CheckListBox1.Checked[I];
        end;//4
      SetSeriesdeNotes(0, f664);
        for I := 0 to CheckListBox2.Items.Count - 1 do//005059CE
        begin//4
          //005059D1
          f668.fC[I] := CheckListBox2.Checked[I];
        end;//4
      SetSeriesdeNotes(1, f668);
        for I := 0 to CheckListBox3.Items.Count - 1 do //00505A26
        begin//4
          //00505A29
          f66C.fC[I] := CheckListBox3.Checked[I];
        end;//4
      SetSeriesdeNotes(2, f66C);
      SetcolonnesBilanDetaillee(CheckBox7.Checked);
      SetNumeroterElevesBilans(CheckBox9.Checked);
      SetnumeroterElevesGrilleVierge(CheckBox13.Checked);
      SetNumeroterElevesAppreciations(CheckBox24.Checked);
      SettrierMoyennesImpression(RadioGroup1.ItemIndex);
      SetAfficherOngletsClasses(CheckBox10.Checked);
      SetAfficherMatiereOnglets(CheckBox25.Checked);
      SetAfficherNomEnseignantOnglets(CheckBoxAfficherNomEnseignantOnglets.Checked);
      if (CheckBox10.Checked ) then//00505B11
        SetOngletClasses(RadioGroup3.ItemIndex);
      Setgraphe3D(CheckBox14.Checked);
      SetgrapheDegrade(CheckBox15.Checked);
      SetgrapheEnCouleur(CheckBox16.Checked);
      SetcouleurDebutDegrade(CouleurDebutDegrade.SelectionColor);
      SetcouleurFinDegrade(CouleurFinDegrade.SelectionColor);
      SetcouleurEleve(CouleurNotesEleve.SelectionColor);
      SetcouleurMin(CouleurMinimumClasse.SelectionColor);
      SetcouleurMax(CouleurMaximumClasse.SelectionColor);
      SetcouleurMoyenne(CouleurMoyenneClasse.SelectionColor);
      SetCouleurMurGauche(CouleurMurGauche.SelectionColor);
      SetCouleurMurBas(CouleurMurBas.SelectionColor);
      SetGrapheLigneEleve(CheckBox17.Checked);
      SetGrapheLigneMin__(CheckBox18.Checked);
      SetGrapheLigneMax(CheckBox19.Checked);
      SetGrapheLigneMoyenne(CheckBox20.Checked);
      SetGrapheLegende(CheckBox21.Checked);
      SetimpressionCouleurNote_(CheckBox12.Checked);
      SetLargeurGrilleVierge(StrToInt(Edit8.Text));
      SetimpressionColonneMoyenne(CheckBox22.Checked);
      SetimpressionColonneClassement(CheckBox23.Checked);
      SetTypeMoyennesAnnuelles(RadioGroupTypeMoyenneAnnuelle.ItemIndex);
      SetImpressionDatesDeNaissanceAppreciations(CheckBox26.Checked);
      SetImpressionDatesDeNaissanceGrilleVierge(CheckBox27.Checked);
      SetImpressionDatesDeNaissanceBilans(CheckBox28.Checked);
      SetImpressionDatesDeNaissanceSeriesDeNotes(CheckBox29.Checked);
      SetImpressionRAppreciations(CheckBox30.Checked);
      SetImpressionRGrilleVierge(CheckBox31.Checked);
      SetImpressionRBilans(CheckBox32.Checked);
      SetImpressionRSeriesDeNotes(CheckBox33.Checked);
      SetImpressionMoyennesEcritOral(CheckBox35.Checked);
	  showmessage('Error here :');
      inherited Destroy;
end;    



//00505DB4
procedure TFormOptions.BitBtn4Click(Sender:TObject);
begin//0
  //00505DB4
    //00505DCF
    if (typesDeNotes.ItemIndex + 1 <> 0) then
    begin//2
      //00505E28
      if (typesDeNotes.Items.Count - 1 > 0) then
      begin//3
        //00505E36
        if (Application.MessageBox(PChar('Supprimer ''' + typesDeNotes.Items[typesDeNotes.ItemIndex] + ''' ?'),'Carnet de Notes version Personnelle' , $24{36}) = 6) then 
		begin
			typesDeNotes.Items.Delete(typesDeNotes.ItemIndex);
			SpeedButton23.Enabled := False;
		end;
      end;//3
    end;//2
    //00505E86
end;//0

//00505EE8
procedure TFormOptions.BitBtn5Click(Sender:TObject);
begin//0
  //00505EE8
    if (Application.MessageBox(PChar('Revenir à la liste des types de notes par défaut ?'), 'Carnet de Notes version Personnelle', 36) = 6) then 
	begin
		typesDeNotes.Items := _GetDefaultTypesdeNotes;
		SpeedButton23.Enabled := False;
	end;
end;//0

//00505FD0
procedure TFormOptions.BitBtn3Click(Sender:TObject);
begin//0
  //00505FD0
    //00505FEA
    if (Trim(Edit1.Text) = '') then 
	begin 
		if (typesDeNotes.Items.IndexOf(Edit1.Text) + 1 = 0) then
		begin//2
		  //0050602E
		  typesDeNotes.Items.Add(Edit1.Text);
		end;//2
    end;
    //0050605D
end;//0

//00506080
procedure TFormOptions.typesDeNotesDrawItem(Control: TWinControl; Index: Integer;Rect: TRect; State: TOwnerDrawState);
begin
    if (Index mod 2  <> 1) then
    begin//2
      //0055303B
      typesDeNotes.Canvas.Brush.Color := $FFFFFF;
      typesDeNotes.Canvas.FillRect(Rect);
    end//2
    else
    begin//2
      //0055306A
      typesDeNotes.Canvas.Brush.Color := $F4F3EE;
      typesDeNotes.Canvas.FillRect(Rect);
    end;//2
    typesDeNotes.Canvas.TextOut(Rect.Left + 5, Rect.Top + 2, typesDeNotes.Items[Index]);
    if ( odSelected in State) then
    begin//2
      //005530E6
      typesDeNotes.Canvas.Brush.Color := $F8D1C5;
      typesDeNotes.Canvas.FillRect(Rect);
      typesDeNotes.Canvas.Font.Color := $FF0000;
      typesDeNotes.Canvas.TextOut(Rect.Left + 5, Rect.Top + 2, typesDeNotes.Items[Index]);
    end;//2
end;

//005061EC
procedure TFormOptions.Edit1Change(Sender:TObject);
begin//0
  //005061EC
    //00506204
    SpeedButton22.Enabled := (Trim(Edit1.Text) <> '');
    //0050623C
end;//0

//0050625C
procedure TFormOptions.typesDeNotesClick(Sender:TObject);
begin//0
  //0050625C
  SpeedButton23.Enabled :=(typesDeNotes.ItemIndex + 1 <> 0);
end;//0

//0050627C
procedure TFormOptions.Edit1Enter(Sender:TObject);
begin//0
  //0050627C
  typesDeNotes.ItemIndex := -1;
  SpeedButton23.Enabled := False;
end;//0

//0050629C
procedure TFormOptions.SpeedButton2Click(Sender:TObject);
begin//0
  //0050629C
  if (ColorDialog1.Execute) then
  begin//1
    //005062AE
    Shape2.Brush.Color := ColorDialog1.Color;
    Shape2.Pen.Color := ColorDialog1.Color;
  end;//1
end;//0

//005062E4
procedure TFormOptions.SpeedButton1Click(Sender:TObject);
begin//0
  //005062E4
  if (ColorDialog1.Execute) then
  begin//1
    //005062F6
    Shape1.Brush.Color := ColorDialog1.Color;
    Shape1.Pen.Color := ColorDialog1.Color;
  end;//1
end;//0

//0050632C
procedure TFormOptions.SpeedButton3Click(Sender:TObject);
begin//0
  //0050632C
  Shape2.Brush.Color := YallowColor;
  Shape2.Pen.Color :=YallowColor;
end;//0


//00506364
procedure TFormOptions.SpeedButton4Click(Sender:TObject);
begin//0
  //00506364
  Shape1.Brush.Color := CielColor;
  Shape1.Pen.Color := CielColor;
end;//0

//0050639C
procedure TFormOptions.SpeedButton5Click(Sender:TObject);
begin//0
  //0050639C
  if (ColorDialog1.Execute) then
  begin//1
    //005063AE
    Shape3.Brush.Color := ColorDialog1.Color;
    Shape3.Pen.Color := ColorDialog1.Color;
  end;//1
end;//0

//005063E4
procedure TFormOptions.SpeedButton6Click(Sender:TObject);
begin//0
  //005063E4
  Shape3.Brush.Color := BlueColor;
  Shape3.Pen.Color := BlueColor;
end;//0


//0050641C
procedure TFormOptions.ListBoxFichiersDrawItem(Control: TWinControl; Index: Integer;Rect: TRect; State: TOwnerDrawState);
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

//00506588
procedure TFormOptions.ListBoxFichiersClick(Sender:TObject);
begin//0
  //00506588
    //0050659F
    SpeedButtonSupprimerLaListe.Enabled := (ListBoxFichiers.ItemIndex + 1 <> 0);
    if (ListBoxFichiers.ItemIndex + 1 <> 0) then
    begin//2
      //005065C7
      Label38.Caption := ListBoxFichiers.Items[ListBoxFichiers.ItemIndex];
    end;//2
    //005065FF
end;//0

//00506614
procedure TFormOptions.BitBtn6Click(Sender:TObject);
begin//0
  //00506614
    //0050662B
    if (ListBoxFichiers.ItemIndex + 1 <> 0) then
    begin//2
      //00506639
      ListBoxFichiers.Items.Delete(ListBoxFichiers.ItemIndex);
      if (ListBoxFichiers.Items.Count <> 0) then
      begin//3
        //00506668
        ListBoxFichiers.ItemIndex := 0;
        Label38.Caption := ListBoxFichiers.Items[0];
      end//3
      else
      begin//3
        //0050669B
        Label38.Caption := '';
      end;//3
    end;//2
    SpeedButtonViderHistorique.Enabled := (ListBoxFichiers.ItemIndex + 1 <> 0);
    SpeedButtonSupprimerLaListe.Enabled := (ListBoxFichiers.ItemIndex + 1 <> 0);
    //005066E9
end;//0

//00506700
procedure TFormOptions.BitBtn11Click(Sender:TObject);
begin//0
  //00506700
    //00506717
    ListBoxFichiers.Items := GetHistorique;
    if (ListBoxFichiers.Items.Count <> 0) then
    begin//2
      //0050673E
      ListBoxFichiers.ItemIndex := 0;
      SpeedButtonSupprimerLaListe.Enabled := True;
      SpeedButtonViderHistorique.Enabled := True;
      Label38.Caption := ListBoxFichiers.Items[0];
    end//2
    else 
     Label38.Caption := '';
    //005067A5
end;//0

//005067BC
procedure TFormOptions.SpeedButton7Click(Sender:TObject);
begin//0
  //005067BC
  if (ColorDialog1.Execute) then
  begin//1
    //005067CE
    Shape4.Brush.Color := ColorDialog1.Color;
    Shape4.Pen.Color := ColorDialog1.Color;
  end;//1
end;//0

//00506804
procedure TFormOptions.SpeedButton9Click(Sender:TObject);
begin//0
  //00506804
  if (ColorDialog1.Execute) then
  begin//1
    //00506816
    Shape5.Brush.Color := ColorDialog1.Color;
    Shape5.Pen.Color := ColorDialog1.Color;
  end;//1
end;//0

//0050684C
procedure TFormOptions.SpeedButton11Click(Sender:TObject);
begin//0
  //0050684C
  if (ColorDialog1.Execute) then
  begin//1
    //0050685E
    Shape6.Brush.Color := ColorDialog1.Color;
    Shape6.Pen.Color := ColorDialog1.Color;
  end;//1
end;//0

//00506894
procedure TFormOptions.SpeedButton8Click(Sender:TObject);
begin//0
  //00506894
  Shape4.Brush.Color := RedColor;
  Shape4.Pen.Color := RedColor;
end;//0

//005068CC
procedure TFormOptions.SpeedButton10Click(Sender:TObject);
begin//0
  //005068CC
  Shape5.Brush.Color := BlackColor;
  Shape4.Pen.Color := RedColor;
end;//0

//00506904
procedure TFormOptions.SpeedButton12Click(Sender:TObject);
begin//0
  //00506904
  Shape6.Brush.Color := GreenColor;
  Shape4.Pen.Color := RedColor;
end;//0

//0050693C
procedure TFormOptions.CheckBox4Click(Sender:TObject);
begin//0
  //0050693C
  Shape4.Enabled := CheckBox4.Checked;
  Shape5.Enabled := CheckBox4.Checked;
  Shape6.Enabled := CheckBox4.Checked;
  SpeedButton7.Enabled := CheckBox4.Checked;
  SpeedButton8.Enabled := CheckBox4.Checked;
  SpeedButton9.Enabled := CheckBox4.Checked;
  SpeedButton10.Enabled := CheckBox4.Checked;
  SpeedButton11.Enabled := CheckBox4.Checked;
  SpeedButton12.Enabled := CheckBox4.Checked;
  SpeedButton13.Enabled := CheckBox4.Checked;
  SpeedButton14.Enabled := CheckBox4.Checked;
end;//0

//00506A6C
procedure TFormOptions.SpeedButton13Click(Sender:TObject);
begin//0
  //00506A6C
  if (ColorDialog1.Execute) then
  begin//1
    //00506A7E
    Shape7.Brush.Color := ColorDialog1.Color;
    Shape7.Pen.Color := ColorDialog1.Color;
  end;//1
end;//0

//00506AB4
procedure TFormOptions.SpeedButton14Click(Sender:TObject);
begin//0
  //00506AB4
  Shape7.Brush.Color := DarkBlackColor;
  Shape7.Pen.Color := DarkBlackColor;
end;//0

//00506AEC
procedure TFormOptions.ListBoxUtilisateursDrawItem(Control: TWinControl; Index: Integer;Rect: TRect; State: TOwnerDrawState);
begin
    if (Index mod 2  <> 1) then
    begin//2
      //0055303B
      ListBoxUtilisateurs.Canvas.Brush.Color := $FFFFFF;
      ListBoxUtilisateurs.Canvas.FillRect(Rect);
    end//2
    else
    begin//2
      //0055306A
      ListBoxUtilisateurs.Canvas.Brush.Color := $F4F3EE;
      ListBoxUtilisateurs.Canvas.FillRect(Rect);
    end;//2
    ListBoxUtilisateurs.Canvas.TextOut(Rect.Left + 5, Rect.Top + 2, ListBoxUtilisateurs.Items[Index]);
    if ( odSelected in State) then
    begin//2
      //005530E6
      ListBoxUtilisateurs.Canvas.Brush.Color := $F8D1C5;
      ListBoxUtilisateurs.Canvas.FillRect(Rect);
      ListBoxUtilisateurs.Canvas.Font.Color := $FF0000;
      ListBoxUtilisateurs.Canvas.TextOut(Rect.Left + 5, Rect.Top + 2, ListBoxUtilisateurs.Items[Index]);
    end;//2
end;

//00506C58
procedure TFormOptions.Edit6Change;
begin//0
  //00506C58
    //00506C70
    SpeedButton25.Enabled := (Trim(Edit6.Text) <> '');
    //00506CA8
end;//0

//00506CC8
procedure TFormOptions.Edit6Enter(Sender:TObject);
begin//0
  //00506CC8
  ListBoxUtilisateurs.ItemIndex := -1;
  SpeedButton26.Enabled := False;
end;//0


//00506CE8
procedure TFormOptions.BitBtn12Click(Sender:TObject);
begin//0
  //00506CE8
    //00506D02
    if (Trim(Edit6.Text) <> '') then 
	begin
		if (ListBoxUtilisateurs.Items.IndexOf(Edit6.Text) + 1 = 0) then//00506D46
		  ListBoxUtilisateurs.Items.Add(Edit6.Text);
		Edit6.Text := '';
		Edit6.SetFocus;
	end;
    //00506D90
end;//0

//00506DB4
procedure TFormOptions.ListBoxUtilisateursClick(Sender:TObject);
begin//0
  //00506DB4
  SpeedButton26.Enabled := (ListBoxUtilisateurs.ItemIndex + 1 <> 0);
end;//0

//00506DD4
procedure TFormOptions.BitBtn14Click(Sender:TObject);
begin//0
  //00506DD4
    //00506DEA
    if (Application.MessageBox(PChar('Revenir à la liste des utilisateurs par défaut ?'), 'Carnet de Notes version Personnelle', $24{36}) = 6) then 
	begin
    ListBoxUtilisateurs.Items := GetUsersList;
    SpeedButton26.Enabled := False;
	end;
    //00506E45
end;//0


//00506EBC
procedure TFormOptions.BitBtn13Click(Sender:TObject);
begin//0
  //00506EBC
    //00506ED7
    if (ListBoxUtilisateurs.ItemIndex + 1 <> 0) then
    begin//2
      //00506F30
      if (ListBoxUtilisateurs.Items.Count - 1 > 0) then
      begin//3
        //00506F3E
        if (Application.MessageBox(PChar('Supprimer ''' + PChar(ListBoxUtilisateurs.Items[ListBoxUtilisateurs.ItemIndex]) + ''' ?'),
										  'Carnet de Notes version Personnelle' , $24{36}) = 6) then 
		begin
			ListBoxUtilisateurs.Items.Delete(ListBoxUtilisateurs.ItemIndex);
			SpeedButton26.Enabled := False;
		end;
      end;//3
    end;//2
    //00506F8E
end;//0

//00506FF0
procedure TFormOptions.BitBtn7Click(Sender:TObject);
var 
 I:integer;
begin//0
  //00506FF0
    //0050700F
    if (Periodes.Items.IndexOf(Edit2.text) + 1 = 0) then
    begin//2
      //00507038
      Periodes.Items.Add(Edit2.Text);
      ListBoxSousPeriodes.Items.Clear;
      //if (TRUNC(NombreSousPeriodes.Value) = 0) then
      //begin//3
        //00507080
          for I := 1 to TRUNC(NombreSousPeriodes.Value) do//00507092
          begin//5
            //00507096
            ListBoxSousPeriodes.Items.Add(Edit2.Text + ' ' + IntToStr(I));
          end;//5
        __SetPeriodes(Edit2.Text, ListBoxSousPeriodes.Items);
        Periodes.ItemIndex := Periodes.Items.IndexOf(Edit2.Text);
        Edit7.Enabled := True;
      //end;//3
    end;//2
    //0050714B
end;//0

//00507188
procedure TFormOptions.Edit2Change(Sender:TObject);
begin//0
  //00507188
    //005071A2
    SpeedButtonAjouterALaListe.Enabled := ( Trim(Edit2.Text) <> '');
    NombreSousPeriodes.Enabled := (Trim(Edit2.Text) <> '');
    //00507205
end;//0

//00507234
procedure TFormOptions.PeriodesClick(Sender:TObject);
var
  X,Y:string;
  b:boolean;
begin//0
  //00507234
    //0050724F
    if (Periodes.ItemIndex + 1 <> 0) then
    begin//2
      //00507261
      X := Periodes.Items[Periodes.ItemIndex];
      ListBoxSousPeriodes.Items := __GetPeriodes(X);
      //NombreSousPeriodes.Value[ListBoxSousPeriodes.Items.Count] := X;
      Y := Periodes.Items[Periodes.ItemIndex];
      if (Y = 'Trimestres') Or (Y = 'Semestres') Or (Y = 'Mois') then //00507306
        b := false
      else//0050730A
        b := True;

      SpeedButtonSupprimerDeLaListe.Enabled := b;
      //0050731F
      if (lvar_4 = 'Trimestres') Or (lvar_4 = 'Semestres') Or (lvar_4 = 'Mois') then //00507344
        b := false
      else//00507348
        b := true;

      Edit7.Enabled := b;
    end;//2
    //00507362
end;//0

//005073B8
procedure TFormOptions.PeriodesDrawItem(Control: TWinControl; Index: Integer;Rect: TRect; State: TOwnerDrawState);
begin
    if (Index mod 2  <> 1) then
    begin//2
      //0055303B
      Periodes.Canvas.Brush.Color := $FFFFFF;
      Periodes.Canvas.FillRect(Rect);
    end//2
    else
    begin//2
      //0055306A
      Periodes.Canvas.Brush.Color := $F4F3EE;
      Periodes.Canvas.FillRect(Rect);
    end;//2

    Periodes.Canvas.TextOut(Rect.Left + 5, Rect.Top + 2, Periodes.Items[Index]);
    if ( odSelected in State) then
    begin//2
      //005530E6
      Periodes.Canvas.Brush.Color := $F8D1C5;
      Periodes.Canvas.FillRect(Rect);
      Periodes.Canvas.Font.Color := $FF0000;
      Periodes.Canvas.TextOut(Rect.Left + 5, Rect.Top + 2, Periodes.Items[Index]);
    end;//2
end;

//00507524
procedure TFormOptions.ListBoxSousPeriodesDrawItem(Control: TWinControl; Index: Integer;Rect: TRect; State: TOwnerDrawState);
begin
    if (Index mod 2  <> 1) then
    begin//2
      //0055303B
      ListBoxSousPeriodes.Canvas.Brush.Color := $FFFFFF;
      ListBoxSousPeriodes.Canvas.FillRect(Rect);
    end//2
    else
    begin//2
      //0055306A
      ListBoxSousPeriodes.Canvas.Brush.Color := $F4F3EE;
      ListBoxSousPeriodes.Canvas.FillRect(Rect);
    end;//2

    ListBoxSousPeriodes.Canvas.TextOut(Rect.Left + 5, Rect.Top + 2, ListBoxSousPeriodes.Items[Index]);
    if ( odSelected in State) then
    begin//2
      //005530E6
      ListBoxSousPeriodes.Canvas.Brush.Color := $F8D1C5;
      ListBoxSousPeriodes.Canvas.FillRect(Rect);
      ListBoxSousPeriodes.Canvas.Font.Color := $FF0000;
      ListBoxSousPeriodes.Canvas.TextOut(Rect.Left + 5, Rect.Top + 2, ListBoxSousPeriodes.Items[Index]);
    end;//2
end;

//00507690
procedure TFormOptions.ListBoxSousPeriodesClick(Sender:TObject);
begin//0
  //00507690
    //005076A7
    if (ListBoxSousPeriodes.ItemIndex + 1 <> 0) then
    begin//2
      //005076B5
      if (Edit7.Enabled) then
      begin//3
        //005076C4
        Edit7.Text := ListBoxSousPeriodes.Items[ListBoxSousPeriodes.ItemIndex];
        Edit7.SetFocus;
        Edit7.SelectAll;
      end;//3
    end;//2
    //00507715
end;//0

//0050772C
procedure TFormOptions.Button1Click(Sender:TObject);
var
 I:integer;
begin//0
  //0050772C
    for I := 0 to CheckListBox1.Items.Count - 1 do//00507752
      //00507755
      CheckListBox1.Checked[I] :=  True;
end;//0

//0050776C
procedure TFormOptions.Button2Click(Sender:TObject);
var
 I:integer;
begin//0
  //0050776C
    for I := 0 to CheckListBox1.Items.Count - 1 do//00507792
      //00507795
      CheckListBox1.Checked[I] := False;
end;//0

//005077AC
procedure TFormOptions.Button3Click(Sender:TObject);
var
 I:integer;
begin//0
  //005077AC
    for I := 0 to CheckListBox2.Items.Count - 1 do//005077D2
      //005077D5
      CheckListBox2.Checked[I]:=  True;
end;//0

//005077EC
procedure TFormOptions.Button4Click(Sender:TObject);
var
  I: integer;
begin//0
  //005077EC
    for I := 0 to CheckListBox2.Items.Count - 1 do//00507812
    begin//2
      //00507815
      CheckListBox2.Checked[I] := False;
    end;//2
end;//0

//0050782C
procedure TFormOptions.SpeedButtonFermerClick(Sender:TObject);
begin
 close;
end;

//00507834
procedure TFormOptions.SpeedButton17Click(Sender:TObject);
begin//0
  //00507834
  Shape8.Brush.Color := LightRedColor;
  Shape8.Pen.Color := LightRedColor;
end;//0

//0050786C
procedure TFormOptions.SpeedButton16Click(Sender:TObject);
begin//0
  //0050786C
  if (ColorDialog1.Execute) then
  begin//1
    //0050787E
    Shape8.Brush.Color := ColorDialog1.Color;
    Shape8.Pen.Color := ColorDialog1.Color;
  end;//1
end;//0

//005078B4
procedure TFormOptions.historiqueDesFichiersClick(Sender:TObject);
begin//0
  //005078B4
  NombreFichiersHistorique.Enabled := historiqueDesFichiers.Checked;
end;//0

//005078D4
procedure TFormOptions.CheckBox8Click(Sender:TObject);
begin//0
  //005078D4
  RadioGroup2.Enabled := CheckBox8.Checked;
end;//0


//005078F4
procedure TFormOptions.RadioGroup3Click(Sender:TObject);
begin//0
  //005078F4
  case RadioGroup3.ItemIndex of
    0:
    begin//2
      //0050790F
      TabControl1.TabPosition := tpTop{0};
      TabControl1.Style := tsFlatButtons{2};

    end;//2
    1:
    begin//2
      //0050792B
      TabControl1.TabPosition := tpTop{0};
      TabControl1.Style := tsButtons{1};
    end;//2
    2:
    begin//2
      //00507947
      TabControl1.Style := tsTabs{0};
      TabControl1.TabPosition := tpBottom{1};
    end;//2
  end;//1
end;//0

//00507964
procedure TFormOptions.CheckBox10Click(Sender:TObject);
begin//0
  //00507964
  RadioGroup3.Enabled := CheckBox10.Checked;
  TabControl1.Visible := CheckBox10.Checked;
  CheckBox25.Enabled := CheckBox10.Checked;
end;//0

//005079BC
procedure TFormOptions.Edit7Change(Sender:TObject);
begin//0
  //005079BC
    //005079D5
    if (ListBoxSousPeriodes.ItemIndex + 1 <> 0) then
    begin//2
      //005079E3
      ListBoxSousPeriodes.Items[ListBoxSousPeriodes.ItemIndex] := Edit7.Text;
      __SetPeriodes(Periodes.Items[Periodes.ItemIndex], ListBoxSousPeriodes.Items);
    end;//2
    //00507A4E
end;//0

//00507A6C
procedure TFormOptions.FormKeyPress(Sender:TObject; var Key:Char);
begin
  if (Key = #13) then
    ModalResult := 1;
end;

//00507A7C
procedure TFormOptions.SpeedButton44Click(Sender:TObject);
var
 I:integer;
begin//0
  //00507A7C
    for I := 0 to CheckListBox3.Items.Count - 1 do//00507AA2
    begin//2
      //00507AA5
      CheckListBox3.Checked[I] := True;
    end;//2
end;//0

//00507ABC
procedure TFormOptions.SpeedButton45Click(Sender:TObject);
var
 I:integer;
begin//0
  //00507ABC
    for I := 0 to CheckListBox3.Items.Count - 1 do//00507AE2
    begin//2
      //00507AE5
      CheckListBox3.Checked[I] := False;
    end;//2
end;//0

//00507AFC
procedure TFormOptions.UpDown3Click(Sender: TObject; Button: TUDBtnType);
begin//0
  //00507AFC
    //00507B20
    if (Button = btNext{0}) then
    begin//2
      //00507B24
      if (StrToInt(Edit8.Text) < UpDown3.Max) then
      begin//3
        //00507B4B
        Edit8.Text := IntToStr(StrToInt(Edit8.Text) + 1);
      end;//3
    end;//2
    if (Button = btPrev{1}) then 
    if (StrToInt(Edit8.Text) > UpDown3.Min) then 
		Edit8.Text := IntToStr(StrToInt(Edit8.Text) - 1);
    //00507BF8
end;//0

//00507C34
procedure TFormOptions.CheckBox23Click(Sender:TObject);
begin//0
  //00507C34
  RadioGroup1.Enabled := CheckBox23.Checked;
end;//0

//00507C54
procedure TFormOptions.ListBoxMatieresDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
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

//00507DC0
procedure TFormOptions.SpeedButton48Click(Sender:TObject);
var
I:integer;
StrList : TStringList;
begin//0
  //00507DC0
    //00507DDE
    OpenDialog1.Title := 'Sélectionnez le fichier texte contenant la liste des enseignants';
    if (OpenDialog1.Execute ) then
    begin//2
      //00507E03
      StrList := TStringList.Create;
      StrList.LoadFromFile(OpenDialog1.FileName);
        for I := 0 to StrList.Count - 1 do//00507E3A
        begin//4
          //00507E40
          if ( ListBoxUtilisateurs.Items.IndexOf(StrList[I]) + 1 = 0) then //00507E66
            ListBoxUtilisateurs.Items.Add(StrList[I]);
        end;//4
      StrList.Destroy;
    end;//2
    //00507EA5
end;//0

//00507F18
procedure TFormOptions.SpeedButtonAjouterListeTypesDeNotesClick(Sender:TObject);
var
  StrList : TStringList;
  I:integer;
begin//0
  //00507F18
    //00507F36
    OpenDialog1.Title := 'Sélectionnez le fichier texte contenant la liste des types de notes';
    if (OpenDialog1.Execute) then
    begin//2
      //00507F5B
      StrList := TStringList.Create;
      StrList.LoadFromFile(OpenDialog1.FileName);
        for I := 0 to StrList.Count - 1 do//00507F92
        begin//4
          //00507F98
          if (typesDeNotes.Items.IndexOf(StrList[I]) + 1 = 0) then
          begin//5
            //00507FBE
            typesDeNotes.Items.Add(StrList[I]);
          end;//5
        end;//4
      StrList.Destroy;
    end;//2
    //00507FFD
end;//0

//00508070
procedure TFormOptions.SpeedButtonSauverListeTypesDeNotesClick(Sender:TObject);
begin//0
  //00508070
    //00508087
    SaveDialog1.Title := 'Sélectionnez le fichier texte où sauver la liste des types de notes';
    if (SaveDialog1.Execute) then //005080A5
      typesDeNotes.Items.SaveToFile(SaveDialog1.FileName);
    //005080D0
end;//0

//00508134
procedure TFormOptions.SpeedButton49Click(Sender:TObject);
begin//0
  //00508134
    //0050814B
    SaveDialog1.Title := 'Sélectionnez le fichier texte où sauver la liste des enseignants';
    if (SaveDialog1.Execute) then
    begin//2
      //00508169
      ListBoxUtilisateurs.Items.SaveToFile(SaveDialog1.FileName);
    end;//2
    //00508194
end;//0

//005081F8
procedure TFormOptions.SpeedButton55Click(Sender:TObject);
var
 I:integer;
 StrList : TStringList;
begin//0
  //005081F8
    //00508216
    OpenDialog1.Title := 'Sélectionnez le fichier texte contenant la liste des matières';
    if (OpenDialog1.Execute) then
    begin//2
      //0050823B
      StrList := TStringList.Create;
      StrList.LoadFromFile(OpenDialog1.FileName);
        for I := 0 to StrList.Count - 1 do//00508272
        begin//4
          //00508278
          if (ListBoxMatieres.Items.IndexOf(StrList[I]) + 1 = 0) then
          begin//5
            //0050829E
            ListBoxMatieres.Items.Add(StrList[I]);
          end;//5
        end;//4
      StrList.Destroy;
    end;//2
    //005082DD
end;//0

//0050834C
procedure TFormOptions.SpeedButton56Click(Sender:TObject);
begin//0
  //0050834C
    //00508363
    SaveDialog1.Title := 'Sélectionnez le fichier texte où sauver la liste des matières';
    if (SaveDialog1.Execute) then
    begin//2
      //00508381
      ListBoxMatieres.Items.SaveToFile(SaveDialog1.FileName);
    end;//2
    //005083AC
end;//0

//0050840C
procedure TFormOptions.SpeedButton54Click(Sender:TObject);
begin//0
  //0050840C
    //00508422
    if (Application.MessageBox(PChar('Revenir à la liste des matières par défaut ?'),'Carnet de Notes version Personnelle' , $24{36}) = 6) then 
	begin
		ListBoxMatieres.Items := GetDefaultMatieres;
		SpeedButton53.Enabled := False;
	end;
    //0050847D
end;//0

//005084F0
procedure TFormOptions.Edit9Change;
begin//0
  //005084F0
    //00508508
    SpeedButton52.Enabled := (Trim(Edit9.Text) <> '');
    //00508540
end;//0

//00508560
procedure TFormOptions.SpeedButton52Click(Sender:TObject);
begin//0
  //00508560
    //0050857A
    if (Trim(Edit9.Text) <> '') then 
	begin
		if (ListBoxMatieres.Items.IndexOf(Edit9.Text) + 1 = 0) then
		begin//2
		  //005085BE
		  ListBoxMatieres.Items.Add(Edit9.Text);
		end;//2
		Edit9.Text := '';
		Edit9.SetFocus;
	end;
    //00508608
end;//0

//0050862C
procedure TFormOptions.Edit9Enter(Sender:TObject);
begin//0
  //0050862C
  ListBoxMatieres.ItemIndex := -1;
  SpeedButton53.Enabled := False;
end;//0

//0050864C
procedure TFormOptions.SpeedButton53Click(Sender:TObject);
begin//0
  //0050864C
    //00508667
    if (ListBoxMatieres.ItemIndex + 1 <> 0) then
    begin//2
      //005086C0
      if (Application.MessageBox(PChar('Supprimer ''' + ListBoxMatieres.Items[ListBoxMatieres.ItemIndex] + ''' ?'),'Carnet de Notes version Personnelle' , $24{36}) = 6) then 
	  begin
		ListBoxMatieres.Items.Delete(ListBoxMatieres.ItemIndex);
		SpeedButton53.Enabled := False;
	  end;
    end;//2
    //00508710
end;//0

//00508770
procedure TFormOptions.ListBoxMatieresClick(Sender:TObject);
begin//0
  //00508770
  SpeedButton53.Enabled := (ListBoxMatieres.ItemIndex <> 0);
end;//0


//00508790
procedure TFormOptions.CheckBox5Click(Sender:TObject);
begin//0
  //00508790
  SpeedButton1.Enabled := CheckBox5.Checked;
  SpeedButton2.Enabled := CheckBox5.Checked;
  SpeedButton3.Enabled := CheckBox5.Checked;
  SpeedButton4.Enabled := CheckBox5.Checked;
  SpeedButton5.Enabled := CheckBox5.Checked;
  SpeedButton6.Enabled := CheckBox5.Checked;
  SpeedButton16.Enabled := CheckBox5.Checked;
  SpeedButton17.Enabled := CheckBox5.Checked;
end;//0

//00508870
procedure TFormOptions.SpeedButtonSupprimerMatieresClick(Sender:TObject);
begin//0
  //00508870
  if (Application.MessageBox('Etes-vous sûr(e) de vouloir supprimer toutes les matières ?', 'Carnet de Notes version Personnelle', $24{36}) = 6) then 
  ListBoxMatieres.Clear;
end;//0


//00508900
procedure TFormOptions.CouleurFondFenetreInfosDefaultSelect(sender:Tobject);
begin//0
  //00508900
  CouleurFondFenetreInfos.SelectionColor :=GetColorVersCiel;
end;//0

//00508918
procedure TFormOptions.CouleurNotesEleveDefaultSelect(sender:Tobject);
begin//0
  //00508918
  CouleurNotesEleve.SelectionColor := GetColorBlueCiel;
end;//0


//00508930
procedure TFormOptions.CouleurMinimumClasseDefaultSelect(sender:Tobject);
begin//0
  //00508930
  CouleurMinimumClasse.SelectionColor := GetColorNoir;
end;//0


//00508948
procedure TFormOptions.CouleurMaximumClasseDefaultSelect(Sender:TObject);
begin//0
  //00508948
  CouleurMaximumClasse.SelectionColor :=GetColorRouge;
end;//0

//00508960
procedure TFormOptions.CouleurMoyenneClasseDefaultSelect(Sender:TObject);
begin//0
  //00508960
  CouleurMoyenneClasse.SelectionColor :=GetColorVer;
end;//0

//00508978
procedure TFormOptions.CouleurDebutDegradeDefaultSelect(Sender:TObject);
begin//0
  //00508978
  CouleurDebutDegrade.SelectionColor := GetColorJauneCiel;
end;//0


//00508990
procedure TFormOptions.CouleurFinDegradeDefaultSelect(Sender:TObject);
begin//0
  //00508990
  CouleurFinDegrade.SelectionColor := GetColorRougeCiel;
end;//0


//005089A8
procedure TFormOptions.CouleurMurGaucheDefaultSelect;
begin//0
  //005089A8
  CouleurMurGauche.SelectionColor := GetColorBlanc2;
end;//0


//005089C0
procedure TFormOptions.CouleurMurBasDefaultSelect(Sender:TObject);
begin//0
  //005089C0
  CouleurMurBas.SelectionColor := GetColorBlanc;
end;//0


//005089D8
procedure TFormOptions.FormShow(Sender:TObject);
begin
//=================rien
end;

//005089DC
procedure TFormOptions.SpeedButtonCollerListeTypesDeNotesClick(Sender:TObject);
var
  StrList:TStringList;
  I:integer;
begin//0
  //005089DC
    //005089FA
    if (Clipboard.HasFormat(1) ) then
    begin//2
      //00508A10
      StrList := TStringList.Create;
      StrList.Text := Clipboard.AsText;
        for I := 0 to  StrList.Count - 1 do//00508A4A
        begin//4
          //00508A50
          if (typesDeNotes.Items.IndexOf(StrList[I]) + 1 = 0) then
          begin//5
            //00508A76
            typesDeNotes.Items.Add(StrList[I]);
          end;//5
        end;//4
      StrList.Destroy;
    end;//2
    //00508AB5
end;//0

//00508AD4
procedure TFormOptions.SpeedButtonCollerListeEnseignantsClick(Sender:TObject);
var
  StrList : TStringList;
  I: integer;
begin//0
  //00508AD4
    if (Clipboard.HasFormat(1) ) then//00508AF2
    begin//2
      //00508B08
      StrList := TStringList.Create;
      StrList.Text := Clipboard.AsText;
        for I := 0 to StrList.Count - 1 do//00508B42
        begin//4
          //00508B48
          if (ListBoxUtilisateurs.Items.IndexOf(StrList[I]) + 1 = 0) then
          begin//5
            //00508B6E
            ListBoxUtilisateurs.Items.Add(StrList[I]);
          end;//5
        end;//4
      StrList.Destroy;
    end;//2
    //00508BAD
end;//0

//00508BCC
procedure TFormOptions.SpeedButtonCollerListeMatieresClick(Sender:TObject);
var
  StrList : TStringlist;
  I:integer;
begin//0
  //00508BCC
    //00508BEA
    if (Clipboard.HasFormat(1)) then
    begin//2
      //00508C00
      StrList := TStringList.Create;
      StrList.Text := Clipboard.AsText;
        for I := 0 to StrList.Count - 1 do//00508C3A
        begin//4
          //00508C40
          if (ListBoxMatieres.Items.IndexOf(StrList[I]) + 1 = 0) then
          begin//5
            //00508C66
            ListBoxMatieres.Items.Add(StrList[I]);
          end;//5
        end;//4
      StrList.Destroy;
    end;//2
    //00508CA5
end;//0

//00508CC4
procedure TFormOptions.SpeedButtonSupprimerEnseignantsClick(Sender:TObject);
begin//0
  //00508CC4
  if (Application.MessageBox('Etes-vous sûr(e) de vouloir supprimer tous les enseignants ?','Carnet de Notes version Personnelle' , $24{36}) = 6) then 
	ListBoxUtilisateurs.Clear;
end;//0

//00508D58
procedure TFormOptions.SpeedButtonSupprimerTypesDeNotesClick(Sender:TObject);
begin//0
  //00508D58
  if (Application.MessageBox('Etes-vous sûr(e) de vouloir supprimer tous les types de notes ?','Carnet de Notes version Personnelle' , $24{36}) = 6) then 
  typesDeNotes.Clear;
end;//0

//00508DEC
procedure TFormOptions.SpeedButtonRetablirHistoriqueClick(Sender:TObject);
begin//0
  //00508DEC
    //00508E03
    ListBoxFichiers.Items := GetHistorique;
    if (ListBoxFichiers.Items.Count <> 0) then
    begin//2
      //00508E2A
      ListBoxFichiers.ItemIndex := 0;
      SpeedButtonSupprimerLaListe.Enabled := True;
      SpeedButtonViderHistorique.Enabled := True;
      Label38.Caption := ListBoxFichiers.Items[0];
    end//2
	else
		Label38.Caption := '';
    //00508E91
end;//0

//00508EA8
procedure TFormOptions.SpeedButtonViderHistoriqueClick(Sender:TObject);
begin//0
  //00508EA8
  ListBoxFichiers.Clear;
  Label38.Caption :=''; 
  SpeedButtonSupprimerLaListe.Enabled :=( ListBoxFichiers.ItemIndex + 1 <> 0);
  SpeedButtonViderHistorique.Enabled :=(ListBoxFichiers.ItemIndex + 1 <> 0);
end;//0

//00508EFC
procedure TFormOptions.SpeedButtonSupprimerLaListeClick(Sender:TObject);
begin//0
  //00508EFC
    //00508F13
    if (ListBoxFichiers.ItemIndex + 1 <> 0) then
    begin//2
      //00508F21
      ListBoxFichiers.Items.Delete(ListBoxFichiers.ItemIndex);
      if (ListBoxFichiers.Items.Count <> 0) then
      begin//3
        //00508F50
        ListBoxFichiers.ItemIndex := 0;
        Label38.Caption :=ListBoxFichiers.Items[0];
      end//3
      else //00508F83
        Label38.caption :='';
    end;//2
    SpeedButtonViderHistorique.Enabled :=(ListBoxFichiers.ItemIndex + 1 <> 0);
    SpeedButtonSupprimerLaListe.Enabled :=(ListBoxFichiers.ItemIndex + 1 <> 0);
    //00508FD1
end;//0

//00508FE8
procedure TFormOptions.SpeedButtonAjouterALaListeClick(Sender:TObject);
var
  I:integer;
begin//0
  //00508FE8
    //00509007
    if (Periodes.Items.IndexOf(Edit2.Text) + 1 = 0) then
    begin//2
      //00509030
      Periodes.Items.Add(Edit2.Text);
      ListBoxSousPeriodes.Items.Clear;
        //00509078 
		for I := 1 to TRUNC(NombreSousPeriodes.Value) do//0050908A
		begin//5
		//0050908E
			ListBoxSousPeriodes.Items.Add(Edit2.Text + ' ' + IntToStr(I));
		end;//5
        __SetPeriodes(Edit2.Text, ListBoxSousPeriodes.Items);
        Periodes.ItemIndex := Periodes.Items.IndexOf(Edit2.Text);
        Edit7.Enabled :=True;
    end;//2
    //00509143
end;//0

//00509180
procedure TFormOptions.SpeedButtonListeParDefautClick(Sender:TObject);
begin//0
  //00509180
    //00509196
    if (Application.MessageBox(PChar('Revenir à la liste des types de périodes par défaut ?'), 'Carnet de Notes version Personnelle', $24{36}) = 6) then 
	begin
		Periodes.Items := _GetPeriodes;
		ListBoxSousPeriodes.Items.Clear;
	end;
    //005091F5
end;//0

//00509270
procedure TFormOptions.SpeedButtonSupprimerDeLaListeClick(Sender:TObject);
begin//0
  //00509270
    //0050928B
    if (Application.MessageBox(PChar('Supprimer le type de période : "' + Periodes.Items[Periodes.ItemIndex] + '" ?'),'Carnet de Notes version Personnelle' , $24{36}) = 6) then 
	begin
		__SetPeriodes_v(Periodes.Items[Periodes.ItemIndex]);
		Periodes.Items.Delete(Periodes.ItemIndex);
		ListBoxSousPeriodes.Items.Clear;
		SpeedButtonSupprimerDeLaListe.Enabled := False;
		Edit7.Text :='';
	end;
    //0050935B
end;//0

end.