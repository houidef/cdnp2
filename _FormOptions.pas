{***************************************
* Version Original V0.01
* Decompiled by HOUIDEF AEK v.05.02.2018
***************************************}
unit _FormOptions;

interface

uses
  Forms, Windows, SysUtils, Classes, ExtCtrls, ComCtrls, StdCtrls, Buttons, Dialogs, CheckLst, 
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
    procedure CouleurNotesEleveDefaultSelect;//00508918
    procedure CouleurMinimumClasseDefaultSelect;//00508930
    procedure CouleurFondFenetreInfosDefaultSelect;//00508900
    procedure CheckBox5Click(Sender:TObject);//00508790
    procedure SpeedButtonSupprimerMatieresClick(Sender:TObject);//00508870
    procedure CouleurMaximumClasseDefaultSelect;//00508948
    procedure CouleurMurGaucheDefaultSelect;//005089A8
    procedure CouleurMurBasDefaultSelect;//005089C0
    procedure CouleurFinDegradeDefaultSelect;//00508990
    procedure CouleurMoyenneClasseDefaultSelect;//00508960
    procedure CouleurDebutDegradeDefaultSelect;//00508978
    procedure BitBtn6Click;//00506614
    procedure BitBtn11Click;//00506700
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
     uses Unit111,UEnregistrement,_Unit146;
{$R *.DFM}

//00504B24
constructor TFormOptions.Create(AOwner:TComponent; logo:TImage);
var
 // lvar_1:;
  lvar_10:AnsiString;
  lvar_14:AnsiString;
  lvar_8:AnsiString;
  lvar_C:Single;
  I:integer;

begin//0
  //00504B24
    inherited Create(AOwner);
    Image1.Picture := logo.Picture;
    f664 := sub_004BAA88(0);
    f668 := sub_004BAA88(1);
    f66C := sub_004BAA88(2);
    Caption := Caption + 'Carnet de Notes version Personnelle';
    RadioGroupGrilleNotes.ItemIndex := sub_004BA3C0;
    RadioGroupGrilleBilans.ItemIndex := sub_004BA384;
    RadioGroupGraphes.ItemIndex := sub_004BBF54;
    CheckBox10.Checked :=sub_004BB84C;
    RadioGroup3.Enabled := CheckBox10.Checked;
    RadioGroup3.ItemIndex  := sub_004BB7E8;
    TabControl1.Visible := CheckBox10.Checked;
    CheckBox25.Checked  := sub_004BCE20;
    CheckBoxAfficherNomEnseignantOnglets.Checked  := sub_004BCDB0;
    CheckBoxVerificationMAJ.Checked := sub_004BB6C8;
    optionsAuDemarrage.ItemIndex  := sub_004BB60C;
    CheckBox8.Checked := sub_004BB668;
    RadioGroup2.Enabled := CheckBox8.Checked;
    RadioGroup2.ItemIndex := sub_004BB728;
    CheckBox6.Checked := sub_00501C44;
    CouleurFondFenetreInfos.SelectionColor := sub_004BB87C;
    afficherBarreOutils.Checked := sub_004BB55C;
    tailleMaximumAuDemarrage.Checked := sub_004BB588;
    afficherHeure.Checked := sub_004BB5BC;
    afficherDate.Checked := sub_004BB5E4;
    CheckBox2.Checked := sub_004BA2FC;
    CheckBox11.Checked :=sub_004BB930;
    CheckBoxAfficherR.Checked :=sub_004BB95C;
    CheckBoxAfficherDatesDeNaissance.Checked :=sub_004BB9B4;
    CheckBox14.Checked :=sub_004BBA0C;
    CheckBox15.Checked :=sub_004BBA80;
    CheckBox16.Checked :=sub_004BBAA8;
    CouleurDebutDegrade.SelectionColor := sub_004BBB78;
    CouleurFinDegrade.SelectionColor := sub_004BBBA8;
    CouleurNotesEleve.SelectionColor := sub_004BBC80;
    CouleurMinimumClasse.SelectionColor := sub_004BBCE4;
    CouleurMaximumClasse.SelectionColor := sub_004BBCB4;
    CouleurMoyenneClasse.SelectionColor := sub_004BBD14;
    CouleurMurGauche.SelectionColor := sub_004BA108;
    CouleurMurBas.SelectionColor := sub_004BBD70;
    CheckBox17.Checked :=sub_004BBE80;
    CheckBox18.Checked :=sub_004BBED4;
    CheckBox19.Checked :=sub_004BBEAC;
    CheckBox20.Checked :=sub_004BBEFC;
    CheckBox21.Checked :=sub_004BBAF8;
    typesDeNotes.Items:=sub_004B9794;
    ListBoxUtilisateurs.Items :=sub_004982F8;
    ListBoxMatieres.Items :=sub_004BC348;
    Shape1.Brush.Color := sub_004B9C80;
    Shape2.Brush.Color := sub_004B9C34;
    Shape3.Brush.Color := sub_004B9D24;
    Shape8.Brush.Color := sub_004BA0BC;
    Shape1.Pen.Color := sub_004B9C80;
    Shape2.Pen.Color := sub_004B9C34;
    Shape3.Pen.Color := sub_004B9D24;
    Shape8.Pen.Color := sub_004BA0BC;
    CheckBox5.Checked :=sub_004BB458;
    Periodes.Items :=sub_004B9A44;
    historiqueDesFichiers.Checked :=sub_004B9410;
	NombreFichiersHistorique.Value := sub_004B9468;
    NombreFichiersHistorique.Enabled := historiqueDesFichiers.Checked;
    ListBoxFichiers.Items :=sub_004B9500;
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
    RadioGroupArrondir.ItemIndex := sub_004B9E10;
    RadioGroupArrondirAnnuelle.ItemIndex := sub_004BC298;
    RadioGroupTrier.ItemIndex := sub_004B9EA0; 
    MoyennesSur.Value := sub_004B9E48;
    CheckBox3.Checked := sub_004B9F30;
    RadioGroupTypeMoyenneAnnuelle.ItemIndex := sub_004BC30C;
    CheckBox34.Checked := sub_004B9F60;
    CheckBox4.Checked  := sub_004BA2B0;
    Shape4.Brush.Color := sub_004B9F8C;
    Shape5.Brush.Color := sub_004B9FD8;
    Shape6.Brush.Color := sub_004BA024;
    Shape7.Brush.Color := sub_004BA070;
    Shape4.Pen.Color := sub_004B9F8C;
    Shape5.Pen.Color := sub_004B9FD8;
    Shape6.Pen.Color := sub_004BA024;
    Shape7.Pen.Color := sub_004BA070;
    CheckBox35.Checked :=sub_004BC188;
    CheckBox30.Checked :=sub_004BDA58;
    CheckBox31.Checked :=sub_004BDA8C;
    CheckBox32.Checked :=sub_004BDA2C;
    CheckBox33.Checked :=sub_004BD9F8;
    CheckBox26.Checked :=sub_004BD238;
    CheckBox27.Checked :=sub_004BD278;
    CheckBox28.Checked :=sub_004BD1FC;
    CheckBox29.Checked :=sub_004BD1BC;
	
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

	
	
    CheckBox1.Checked :=sub_004BAEC4;
    CheckBox13.Checked :=sub_004BC01C;
    CheckBox7.Checked :=sub_004BB35C;
    CheckBox9.Checked :=sub_004BAF34;
    CheckBox12.Checked :=sub_004BBFB8;
    RadioGroup1.ItemIndex := sub_004BB3F0;
    Edit8.text := IntToStr(sub_004BC080);
    UpDown3.Position := sub_004BC080;
    CheckBox22.Checked :=sub_004BC0EC;
    CheckBox23.Checked :=sub_004BC1BC;
    RadioGroup1.Enabled := CheckBox23.Checked;
    CheckBox24.Checked :=sub_004BC228;
end;

//005055A4
destructor TFormOptions.Destroy;
var
  I :integer;
begin//0
  //005055A4
  
    //005055CA
    sub_004BB63C(CheckBox8.Checked);
    if (CheckBox8.Checked) then
    begin//2
      //005055EF
      sub_004BB6FC(RadioGroup2.ItemIndex);
    end;//2
    sub_004BB534(optionsAuDemarrage.ItemIndex);
    sub_00498460(ListBoxUtilisateurs.Items);
    afficherConseils(CheckBox6.Checked); //sub_00501C70
    sub_004BB694(CheckBoxVerificationMAJ.Checked);
    sub_004BB8B4(CouleurFondFenetreInfos.SelectionColor);
    sub_004BB8E0(CheckBox11.Checked);
    sub_004BB484(afficherBarreOutils.Checked);
    sub_004BB4B0(tailleMaximumAuDemarrage.Checked);
    sub_004BB4E4(afficherHeure.Checked);
    sub_004BB50C(afficherDate.Checked);
    sub_004BA2D8(CheckBox2.Checked);
    sub_004B9938(typesDeNotes.Items);
    sub_004BC698(ListBoxMatieres.Items);
    sub_004BB90C(CheckBoxAfficherR.Checked);
    sub_004BB980(CheckBoxAfficherDatesDeNaissance.Checked);
    sub_004B943C(historiqueDesFichiers.Checked);
    //if (TRUNC(NombreFichiersHistorique.Value) = 0) then
    //begin//2
      //00505753
      sub_004B94A4(TRUNC(NombreFichiersHistorique.Value));
      sub_004B9BBC(Shape2.Brush.Color);
      sub_004B9BF8(Shape1.Brush.Color);
      sub_004B9CE4(Shape3.Brush.Color);
      sub_004BB42C(CheckBox5.Checked);
      sub_004B964C(ListBoxFichiers.Items);
      sub_004B9D74(RadioGroupArrondir.ItemIndex);
      sub_004BC260(RadioGroupArrondirAnnuelle.ItemIndex);
      sub_004B9DE4(RadioGroupTrier.ItemIndex);
      //EAX := MoyennesSur.Value Div -2147483648
      sub_004B9DA4(TRUNC(MoyennesSur.Value));
      sub_004B9ED4(CheckBox3.Checked);
      sub_004B9F04(CheckBox34.Checked);
      sub_004BA138(Shape4.Brush.Color);
      sub_004BA174(Shape5.Brush.Color);
      sub_004BA1B0(Shape6.Brush.Color);
      sub_004BA1EC(Shape7.Brush.Color);
      sub_004BA228(Shape8.Brush.Color);
      sub_004BA288(CheckBox4.Checked);
      sub_004BA354(RadioGroupGrilleNotes.ItemIndex);
      sub_004BA320(RadioGroupGrilleBilans.ItemIndex);
      sub_004BBF28(RadioGroupGraphes.ItemIndex);
      sub_004BAEFC(CheckBox1.Checked);
        for I := 0 to CheckListBox1.Items.Count - 1 do //00505976
        begin//4
          //00505979
          f664.fC[I] := CheckListBox1.Checked[I];
        end;//4
      
      sub_004BAF94(0, f664);
        for I := 0 to CheckListBox2.Items.Count - 1 do//005059CE
        begin//4
          //005059D1
          f668.fC[I] := CheckListBox2.Checked[I];
        end;//4
      sub_004BAF94(1, f668);
        for I := 0 to CheckListBox3.Items.Count - 1 do //00505A26
        begin//4
          //00505A29
          f66C.fC[I] := CheckListBox3.Checked[I];
        end;//4

      sub_004BAF94(2, f66C);
      sub_004BB38C(CheckBox7.Checked);
      sub_004BAF64(CheckBox9.Checked);
      sub_004BBFE8(CheckBox13.Checked);
      sub_004BC1F0(CheckBox24.Checked);
      sub_004BB3BC(RadioGroup1.ItemIndex);
      sub_004BB81C(CheckBox10.Checked);
      sub_004BCE50(CheckBox25.Checked);
      sub_004BCDE8(CheckBoxAfficherNomEnseignantOnglets.Checked);
      if (CheckBox10.Checked ) then//00505B11
        sub_004BB7BC(RadioGroup3.ItemIndex);

      sub_004BB9E8(CheckBox14.Checked);
      sub_004BBA30(CheckBox15.Checked);
      sub_004BBA58(CheckBox16.Checked);
      sub_004BBB20(CouleurDebutDegrade.SelectionColor);
      sub_004BBB4C(CouleurFinDegrade.SelectionColor);
      sub_004BBBE8(CouleurNotesEleve.SelectionColor);
      sub_004BBC34(CouleurMinimumClasse.SelectionColor);
      sub_004BBC10(CouleurMaximumClasse.SelectionColor);
      sub_004BBC58(CouleurMoyenneClasse.SelectionColor);
      sub_004BBDA4(CouleurMurGauche.SelectionColor);
      sub_004BBD48(CouleurMurBas.SelectionColor);
      sub_004BBDD8(CheckBox17.Checked);
      sub_004BBE2C(CheckBox18.Checked);
      sub_004BBE04(CheckBox19.Checked);
      sub_004BBE54(CheckBox20.Checked);
      sub_004BBAD0(CheckBox21.Checked);
      sub_004BBF88(CheckBox12.Checked);
      sub_004BC050(StrToInt(Edit8.Text));
      sub_004BC0B8(CheckBox22.Checked);
      sub_004BC120(CheckBox23.Checked);
      sub_004BC2D8(RadioGroupTypeMoyenneAnnuelle.ItemIndex);
      sub_004BD334(CheckBox26.Checked);
      sub_004BD374(CheckBox27.Checked);
      sub_004BD2F8(CheckBox28.Checked);
      sub_004BD2B8(CheckBox29.Checked);
      sub_004BD994(CheckBox30.Checked);
      sub_004BD9C8(CheckBox31.Checked);
      sub_004BD968(CheckBox32.Checked);
      sub_004BD934(CheckBox33.Checked);
      sub_004BC154(CheckBox35.Checked);
      inherited Destroy;
end;    



//00505DB4
procedure TFormOptions.BitBtn4Click(Sender:TObject);
begin
{*
 00505DB4    push        ebp
 00505DB5    mov         ebp,esp
 00505DB7    push        0
 00505DB9    push        0
 00505DBB    push        0
 00505DBD    push        ebx
 00505DBE    push        esi
 00505DBF    mov         ebx,eax
 00505DC1    xor         eax,eax
 00505DC3    push        ebp
 00505DC4    push        505E94
 00505DC9    push        dword ptr fs:[eax]
 00505DCC    mov         dword ptr fs:[eax],esp
 00505DCF    push        505EAC;'Supprimer ''
 00505DD4    mov         esi,dword ptr [ebx+310];TFormOptions.typesDeNotes:TListBox
 00505DDA    mov         eax,esi
 00505DDC    call        TCustomListBox.GetItemIndex
 00505DE1    mov         edx,eax
 00505DE3    lea         ecx,[ebp-0C]
 00505DE6    mov         eax,dword ptr [esi+1F0];TListBox.FItems:TStrings
 00505DEC    mov         esi,dword ptr [eax]
 00505DEE    call        dword ptr [esi+0C];TStrings.Get
 00505DF1    mov         eax,dword ptr [ebp-0C]
 00505DF4    call        @LStrToPChar
 00505DF9    mov         edx,eax
 00505DFB    lea         eax,[ebp-8]
 00505DFE    call        @LStrFromPChar
 00505E03    push        dword ptr [ebp-8]
 00505E06    push        505EC0;'' ?'
 00505E0B    lea         eax,[ebp-4]
 00505E0E    mov         edx,3
 00505E13    call        @LStrCatN
 00505E18    mov         esi,dword ptr [ebx+310];TFormOptions.typesDeNotes:TListBox
 00505E1E    mov         eax,esi
 00505E20    call        TCustomListBox.GetItemIndex
 00505E25    inc         eax
>00505E26    je          00505E79
 00505E28    mov         eax,dword ptr [esi+1F0];TListBox.FItems:TStrings
 00505E2E    mov         edx,dword ptr [eax]
 00505E30    call        dword ptr [edx+14];TStrings.GetCount
 00505E33    dec         eax
>00505E34    jle         00505E79
 00505E36    push        24
 00505E38    mov         eax,dword ptr [ebp-4]
 00505E3B    call        @LStrToPChar
 00505E40    mov         edx,eax
 00505E42    mov         ecx,505EC4
 00505E47    mov         eax,[00615FEC];^Application:TApplication
 00505E4C    mov         eax,dword ptr [eax]
 00505E4E    call        TApplication.MessageBox
 00505E53    cmp         eax,6
>00505E56    jne         00505E79
 00505E58    mov         eax,esi
 00505E5A    call        TCustomListBox.GetItemIndex
 00505E5F    mov         edx,eax
 00505E61    mov         eax,dword ptr [esi+1F0];TListBox.FItems:TStrings
 00505E67    mov         ecx,dword ptr [eax]
 00505E69    call        dword ptr [ecx+44];TStrings.Delete
 00505E6C    xor         edx,edx
 00505E6E    mov         eax,dword ptr [ebx+4C0];TFormOptions.SpeedButton23:TSpeedButton
 00505E74    mov         ecx,dword ptr [eax]
 00505E76    call        dword ptr [ecx+5C];TControl.SetEnabled
 00505E79    xor         eax,eax
 00505E7B    pop         edx
 00505E7C    pop         ecx
 00505E7D    pop         ecx
 00505E7E    mov         dword ptr fs:[eax],edx
 00505E81    push        505E9B
 00505E86    lea         eax,[ebp-0C]
 00505E89    mov         edx,3
 00505E8E    call        @LStrArrayClr
 00505E93    ret
>00505E94    jmp         @HandleFinally
>00505E99    jmp         00505E86
 00505E9B    pop         esi
 00505E9C    pop         ebx
 00505E9D    mov         esp,ebp
 00505E9F    pop         ebp
 00505EA0    ret
*}
end;

//00505EE8
procedure TFormOptions.BitBtn5Click(Sender:TObject);
begin//0
  //00505EE8
    if (Application.MessageBox(PChar('Revenir à la liste des types de notes par défaut ?'), 'Carnet de Notes version Personnelle', 36) = 6) then 
	begin
    typesDeNotes.Items := sub_004B9840;
    SpeedButton23.Enabled := False;
	end;

end;//0

//00505FD0
procedure TFormOptions.BitBtn3Click(Sender:TObject);
begin
{*
 00505FD0    push        ebp
 00505FD1    mov         ebp,esp
 00505FD3    xor         ecx,ecx
 00505FD5    push        ecx
 00505FD6    push        ecx
 00505FD7    push        ecx
 00505FD8    push        ecx
 00505FD9    push        ebx
 00505FDA    mov         ebx,eax
 00505FDC    xor         eax,eax
 00505FDE    push        ebp
 00505FDF    push        506073
 00505FE4    push        dword ptr fs:[eax]
 00505FE7    mov         dword ptr fs:[eax],esp
 00505FEA    lea         edx,[ebp-8]
 00505FED    mov         eax,dword ptr [ebx+32C];TFormOptions.Edit1:TEdit
 00505FF3    call        TControl.GetText
 00505FF8    mov         eax,dword ptr [ebp-8]
 00505FFB    lea         edx,[ebp-4]
 00505FFE    call        Trim
 00506003    cmp         dword ptr [ebp-4],0
>00506007    je          00506050
 00506009    lea         edx,[ebp-0C]
 0050600C    mov         eax,dword ptr [ebx+32C];TFormOptions.Edit1:TEdit
 00506012    call        TControl.GetText
 00506017    mov         edx,dword ptr [ebp-0C]
 0050601A    mov         eax,dword ptr [ebx+310];TFormOptions.typesDeNotes:TListBox
 00506020    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 00506026    mov         ecx,dword ptr [eax]
 00506028    call        dword ptr [ecx+50];TStrings.IndexOf
 0050602B    inc         eax
>0050602C    jne         00506050
 0050602E    lea         edx,[ebp-10]
 00506031    mov         eax,dword ptr [ebx+32C];TFormOptions.Edit1:TEdit
 00506037    call        TControl.GetText
 0050603C    mov         edx,dword ptr [ebp-10]
 0050603F    mov         eax,dword ptr [ebx+310];TFormOptions.typesDeNotes:TListBox
 00506045    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 0050604B    mov         ecx,dword ptr [eax]
 0050604D    call        dword ptr [ecx+34];TStrings.Add
 00506050    xor         eax,eax
 00506052    pop         edx
 00506053    pop         ecx
 00506054    pop         ecx
 00506055    mov         dword ptr fs:[eax],edx
 00506058    push        50607A
 0050605D    lea         eax,[ebp-10]
 00506060    mov         edx,3
 00506065    call        @LStrArrayClr
 0050606A    lea         eax,[ebp-4]
 0050606D    call        @LStrClr
 00506072    ret
>00506073    jmp         @HandleFinally
>00506078    jmp         0050605D
 0050607A    pop         ebx
 0050607B    mov         esp,ebp
 0050607D    pop         ebp
 0050607E    ret
*}
end;

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
begin
{*
 005061EC    push        ebp
 005061ED    mov         ebp,esp
 005061EF    push        0
 005061F1    push        0
 005061F3    push        ebx
 005061F4    mov         ebx,eax
 005061F6    xor         eax,eax
 005061F8    push        ebp
 005061F9    push        50624D
 005061FE    push        dword ptr fs:[eax]
 00506201    mov         dword ptr fs:[eax],esp
 00506204    lea         edx,[ebp-8]
 00506207    mov         eax,dword ptr [ebx+32C];TFormOptions.Edit1:TEdit
 0050620D    call        TControl.GetText
 00506212    mov         eax,dword ptr [ebp-8]
 00506215    lea         edx,[ebp-4]
 00506218    call        Trim
 0050621D    cmp         dword ptr [ebp-4],0
 00506221    setne       dl
 00506224    mov         eax,dword ptr [ebx+4BC];TFormOptions.SpeedButton22:TSpeedButton
 0050622A    mov         ecx,dword ptr [eax]
 0050622C    call        dword ptr [ecx+5C];TControl.SetEnabled
 0050622F    xor         eax,eax
 00506231    pop         edx
 00506232    pop         ecx
 00506233    pop         ecx
 00506234    mov         dword ptr fs:[eax],edx
 00506237    push        506254
 0050623C    lea         eax,[ebp-8]
 0050623F    call        @LStrClr
 00506244    lea         eax,[ebp-4]
 00506247    call        @LStrClr
 0050624C    ret
>0050624D    jmp         @HandleFinally
>00506252    jmp         0050623C
 00506254    pop         ebx
 00506255    pop         ecx
 00506256    pop         ecx
 00506257    pop         ebp
 00506258    ret
*}
end;

//0050625C
procedure TFormOptions.typesDeNotesClick(Sender:TObject);
begin
{*
 0050625C    push        ebx
 0050625D    mov         ebx,eax
 0050625F    mov         eax,dword ptr [ebx+310];TFormOptions.typesDeNotes:TListBox
 00506265    call        TCustomListBox.GetItemIndex
 0050626A    inc         eax
 0050626B    setne       dl
 0050626E    mov         eax,dword ptr [ebx+4C0];TFormOptions.SpeedButton23:TSpeedButton
 00506274    mov         ecx,dword ptr [eax]
 00506276    call        dword ptr [ecx+5C];TControl.SetEnabled
 00506279    pop         ebx
 0050627A    ret
*}
end;

//0050627C
procedure TFormOptions.Edit1Enter(Sender:TObject);
begin
{*
 0050627C    push        ebx
 0050627D    mov         ebx,eax
 0050627F    or          edx,0FFFFFFFF
 00506282    mov         eax,dword ptr [ebx+310];TFormOptions.typesDeNotes:TListBox
 00506288    call        TCustomListBox.SetItemIndex
 0050628D    xor         edx,edx
 0050628F    mov         eax,dword ptr [ebx+4C0];TFormOptions.SpeedButton23:TSpeedButton
 00506295    mov         ecx,dword ptr [eax]
 00506297    call        dword ptr [ecx+5C];TControl.SetEnabled
 0050629A    pop         ebx
 0050629B    ret
*}
end;

//0050629C
procedure TFormOptions.SpeedButton2Click(Sender:TObject);
begin
{*
 0050629C    push        ebx
 0050629D    mov         ebx,eax
 0050629F    mov         eax,dword ptr [ebx+378];TFormOptions.ColorDialog1:TColorDialog
 005062A5    mov         edx,dword ptr [eax]
 005062A7    call        dword ptr [edx+3C];TColorDialog.Execute
 005062AA    test        al,al
>005062AC    je          005062E2
 005062AE    mov         eax,dword ptr [ebx+378];TFormOptions.ColorDialog1:TColorDialog
 005062B4    mov         edx,dword ptr [eax+50];TColorDialog.Color:TColor
 005062B7    mov         eax,dword ptr [ebx+36C];TFormOptions.Shape2:TShape
 005062BD    mov         eax,dword ptr [eax+12C];TShape.Brush:TBrush
 005062C3    call        TBrush.SetColor
 005062C8    mov         eax,dword ptr [ebx+378];TFormOptions.ColorDialog1:TColorDialog
 005062CE    mov         edx,dword ptr [eax+50];TColorDialog.Color:TColor
 005062D1    mov         eax,dword ptr [ebx+36C];TFormOptions.Shape2:TShape
 005062D7    mov         eax,dword ptr [eax+128];TShape.Pen:TPen
 005062DD    call        TPen.SetColor
 005062E2    pop         ebx
 005062E3    ret
*}
end;

//005062E4
procedure TFormOptions.SpeedButton1Click(Sender:TObject);
begin
{*
 005062E4    push        ebx
 005062E5    mov         ebx,eax
 005062E7    mov         eax,dword ptr [ebx+378];TFormOptions.ColorDialog1:TColorDialog
 005062ED    mov         edx,dword ptr [eax]
 005062EF    call        dword ptr [edx+3C];TColorDialog.Execute
 005062F2    test        al,al
>005062F4    je          0050632A
 005062F6    mov         eax,dword ptr [ebx+378];TFormOptions.ColorDialog1:TColorDialog
 005062FC    mov         edx,dword ptr [eax+50];TColorDialog.Color:TColor
 005062FF    mov         eax,dword ptr [ebx+368];TFormOptions.Shape1:TShape
 00506305    mov         eax,dword ptr [eax+12C];TShape.Brush:TBrush
 0050630B    call        TBrush.SetColor
 00506310    mov         eax,dword ptr [ebx+378];TFormOptions.ColorDialog1:TColorDialog
 00506316    mov         edx,dword ptr [eax+50];TColorDialog.Color:TColor
 00506319    mov         eax,dword ptr [ebx+368];TFormOptions.Shape1:TShape
 0050631F    mov         eax,dword ptr [eax+128];TShape.Pen:TPen
 00506325    call        TPen.SetColor
 0050632A    pop         ebx
 0050632B    ret
*}
end;

//0050632C
procedure TFormOptions.SpeedButton3Click(Sender:TObject);
begin
{*
 0050632C    push        ebx
 0050632D    mov         ebx,eax
 0050632F    call        004B9CCC
 00506334    mov         edx,eax
 00506336    mov         eax,dword ptr [ebx+36C];TFormOptions.Shape2:TShape
 0050633C    mov         eax,dword ptr [eax+12C];TShape.Brush:TBrush
 00506342    call        TBrush.SetColor
 00506347    call        004B9CCC
 0050634C    mov         edx,eax
 0050634E    mov         eax,dword ptr [ebx+36C];TFormOptions.Shape2:TShape
 00506354    mov         eax,dword ptr [eax+128];TShape.Pen:TPen
 0050635A    call        TPen.SetColor
 0050635F    pop         ebx
 00506360    ret
*}
end;

//00506364
procedure TFormOptions.SpeedButton4Click(Sender:TObject);
begin
{*
 00506364    push        ebx
 00506365    mov         ebx,eax
 00506367    call        004B9CD4
 0050636C    mov         edx,eax
 0050636E    mov         eax,dword ptr [ebx+368];TFormOptions.Shape1:TShape
 00506374    mov         eax,dword ptr [eax+12C];TShape.Brush:TBrush
 0050637A    call        TBrush.SetColor
 0050637F    call        004B9CD4
 00506384    mov         edx,eax
 00506386    mov         eax,dword ptr [ebx+368];TFormOptions.Shape1:TShape
 0050638C    mov         eax,dword ptr [eax+128];TShape.Pen:TPen
 00506392    call        TPen.SetColor
 00506397    pop         ebx
 00506398    ret
*}
end;

//0050639C
procedure TFormOptions.SpeedButton5Click(Sender:TObject);
begin
{*
 0050639C    push        ebx
 0050639D    mov         ebx,eax
 0050639F    mov         eax,dword ptr [ebx+378];TFormOptions.ColorDialog1:TColorDialog
 005063A5    mov         edx,dword ptr [eax]
 005063A7    call        dword ptr [edx+3C];TColorDialog.Execute
 005063AA    test        al,al
>005063AC    je          005063E2
 005063AE    mov         eax,dword ptr [ebx+378];TFormOptions.ColorDialog1:TColorDialog
 005063B4    mov         edx,dword ptr [eax+50];TColorDialog.Color:TColor
 005063B7    mov         eax,dword ptr [ebx+388];TFormOptions.Shape3:TShape
 005063BD    mov         eax,dword ptr [eax+12C];TShape.Brush:TBrush
 005063C3    call        TBrush.SetColor
 005063C8    mov         eax,dword ptr [ebx+378];TFormOptions.ColorDialog1:TColorDialog
 005063CE    mov         edx,dword ptr [eax+50];TColorDialog.Color:TColor
 005063D1    mov         eax,dword ptr [ebx+388];TFormOptions.Shape3:TShape
 005063D7    mov         eax,dword ptr [eax+128];TShape.Pen:TPen
 005063DD    call        TPen.SetColor
 005063E2    pop         ebx
 005063E3    ret
*}
end;

//005063E4
procedure TFormOptions.SpeedButton6Click(Sender:TObject);
begin
{*
 005063E4    push        ebx
 005063E5    mov         ebx,eax
 005063E7    call        004B9CDC
 005063EC    mov         edx,eax
 005063EE    mov         eax,dword ptr [ebx+388];TFormOptions.Shape3:TShape
 005063F4    mov         eax,dword ptr [eax+12C];TShape.Brush:TBrush
 005063FA    call        TBrush.SetColor
 005063FF    call        004B9CDC
 00506404    mov         edx,eax
 00506406    mov         eax,dword ptr [ebx+388];TFormOptions.Shape3:TShape
 0050640C    mov         eax,dword ptr [eax+128];TShape.Pen:TPen
 00506412    call        TPen.SetColor
 00506417    pop         ebx
 00506418    ret
*}
end;

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
begin
{*
 00506588    push        ebp
 00506589    mov         ebp,esp
 0050658B    push        0
 0050658D    push        ebx
 0050658E    push        esi
 0050658F    mov         ebx,eax
 00506591    xor         eax,eax
 00506593    push        ebp
 00506594    push        506608
 00506599    push        dword ptr fs:[eax]
 0050659C    mov         dword ptr fs:[eax],esp
 0050659F    mov         eax,dword ptr [ebx+39C];TFormOptions.ListBoxFichiers:TListBox
 005065A5    call        TCustomListBox.GetItemIndex
 005065AA    inc         eax
 005065AB    setne       dl
 005065AE    mov         eax,dword ptr [ebx+654];TFormOptions.SpeedButtonSupprimerLaListe:TSpeedButton
 005065B4    mov         ecx,dword ptr [eax]
 005065B6    call        dword ptr [ecx+5C];TControl.SetEnabled
 005065B9    mov         eax,dword ptr [ebx+39C];TFormOptions.ListBoxFichiers:TListBox
 005065BF    call        TCustomListBox.GetItemIndex
 005065C4    inc         eax
>005065C5    je          005065F2
 005065C7    mov         esi,dword ptr [ebx+39C];TFormOptions.ListBoxFichiers:TListBox
 005065CD    mov         eax,esi
 005065CF    call        TCustomListBox.GetItemIndex
 005065D4    mov         edx,eax
 005065D6    lea         ecx,[ebp-4]
 005065D9    mov         eax,dword ptr [esi+1F0];TListBox.FItems:TStrings
 005065DF    mov         esi,dword ptr [eax]
 005065E1    call        dword ptr [esi+0C];TStrings.Get
 005065E4    mov         edx,dword ptr [ebp-4]
 005065E7    mov         eax,dword ptr [ebx+5A8];TFormOptions.Label38:TLabel
 005065ED    call        TControl.SetText
 005065F2    xor         eax,eax
 005065F4    pop         edx
 005065F5    pop         ecx
 005065F6    pop         ecx
 005065F7    mov         dword ptr fs:[eax],edx
 005065FA    push        50660F
 005065FF    lea         eax,[ebp-4]
 00506602    call        @LStrClr
 00506607    ret
>00506608    jmp         @HandleFinally
>0050660D    jmp         005065FF
 0050660F    pop         esi
 00506610    pop         ebx
 00506611    pop         ecx
 00506612    pop         ebp
 00506613    ret
*}
end;

//00506614
procedure TFormOptions.BitBtn6Click;
begin
{*
 00506614    push        ebp
 00506615    mov         ebp,esp
 00506617    push        0
 00506619    push        ebx
 0050661A    push        esi
 0050661B    mov         ebx,eax
 0050661D    xor         eax,eax
 0050661F    push        ebp
 00506620    push        5066F2
 00506625    push        dword ptr fs:[eax]
 00506628    mov         dword ptr fs:[eax],esp
 0050662B    mov         eax,dword ptr [ebx+39C];TFormOptions.ListBoxFichiers:TListBox
 00506631    call        TCustomListBox.GetItemIndex
 00506636    inc         eax
>00506637    je          005066A8
 00506639    mov         esi,dword ptr [ebx+39C];TFormOptions.ListBoxFichiers:TListBox
 0050663F    mov         eax,esi
 00506641    call        TCustomListBox.GetItemIndex
 00506646    mov         edx,eax
 00506648    mov         eax,dword ptr [esi+1F0];TListBox.FItems:TStrings
 0050664E    mov         ecx,dword ptr [eax]
 00506650    call        dword ptr [ecx+44];TStrings.Delete
 00506653    mov         eax,dword ptr [ebx+39C];TFormOptions.ListBoxFichiers:TListBox
 00506659    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 0050665F    mov         edx,dword ptr [eax]
 00506661    call        dword ptr [edx+14];TStrings.GetCount
 00506664    test        eax,eax
>00506666    je          0050669B
 00506668    xor         edx,edx
 0050666A    mov         eax,dword ptr [ebx+39C];TFormOptions.ListBoxFichiers:TListBox
 00506670    call        TCustomListBox.SetItemIndex
 00506675    lea         ecx,[ebp-4]
 00506678    mov         eax,dword ptr [ebx+39C];TFormOptions.ListBoxFichiers:TListBox
 0050667E    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 00506684    xor         edx,edx
 00506686    mov         esi,dword ptr [eax]
 00506688    call        dword ptr [esi+0C];TStrings.Get
 0050668B    mov         edx,dword ptr [ebp-4]
 0050668E    mov         eax,dword ptr [ebx+5A8];TFormOptions.Label38:TLabel
 00506694    call        TControl.SetText
>00506699    jmp         005066A8
 0050669B    xor         edx,edx
 0050669D    mov         eax,dword ptr [ebx+5A8];TFormOptions.Label38:TLabel
 005066A3    call        TControl.SetText
 005066A8    mov         eax,dword ptr [ebx+39C];TFormOptions.ListBoxFichiers:TListBox
 005066AE    call        TCustomListBox.GetItemIndex
 005066B3    inc         eax
 005066B4    setne       dl
 005066B7    mov         eax,dword ptr [ebx+650];TFormOptions.SpeedButtonViderHistorique:TSpeedButton
 005066BD    mov         ecx,dword ptr [eax]
 005066BF    call        dword ptr [ecx+5C];TControl.SetEnabled
 005066C2    mov         eax,dword ptr [ebx+39C];TFormOptions.ListBoxFichiers:TListBox
 005066C8    call        TCustomListBox.GetItemIndex
 005066CD    inc         eax
 005066CE    setne       dl
 005066D1    mov         eax,dword ptr [ebx+654];TFormOptions.SpeedButtonSupprimerLaListe:TSpeedButton
 005066D7    mov         ecx,dword ptr [eax]
 005066D9    call        dword ptr [ecx+5C];TControl.SetEnabled
 005066DC    xor         eax,eax
 005066DE    pop         edx
 005066DF    pop         ecx
 005066E0    pop         ecx
 005066E1    mov         dword ptr fs:[eax],edx
 005066E4    push        5066F9
 005066E9    lea         eax,[ebp-4]
 005066EC    call        @LStrClr
 005066F1    ret
>005066F2    jmp         @HandleFinally
>005066F7    jmp         005066E9
 005066F9    pop         esi
 005066FA    pop         ebx
 005066FB    pop         ecx
 005066FC    pop         ebp
 005066FD    ret
*}
end;

//00506700
procedure TFormOptions.BitBtn11Click;
begin
{*
 00506700    push        ebp
 00506701    mov         ebp,esp
 00506703    push        0
 00506705    push        ebx
 00506706    push        esi
 00506707    mov         ebx,eax
 00506709    xor         eax,eax
 0050670B    push        ebp
 0050670C    push        5067AE
 00506711    push        dword ptr fs:[eax]
 00506714    mov         dword ptr fs:[eax],esp
 00506717    call        004B9500
 0050671C    mov         edx,eax
 0050671E    mov         eax,dword ptr [ebx+39C];TFormOptions.ListBoxFichiers:TListBox
 00506724    call        TCustomListBox.SetItems
 00506729    mov         eax,dword ptr [ebx+39C];TFormOptions.ListBoxFichiers:TListBox
 0050672F    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 00506735    mov         edx,dword ptr [eax]
 00506737    call        dword ptr [edx+14];TStrings.GetCount
 0050673A    test        eax,eax
>0050673C    je          0050678B
 0050673E    xor         edx,edx
 00506740    mov         eax,dword ptr [ebx+39C];TFormOptions.ListBoxFichiers:TListBox
 00506746    call        TCustomListBox.SetItemIndex
 0050674B    mov         dl,1
 0050674D    mov         eax,dword ptr [ebx+654];TFormOptions.SpeedButtonSupprimerLaListe:TSpeedButton
 00506753    mov         ecx,dword ptr [eax]
 00506755    call        dword ptr [ecx+5C];TControl.SetEnabled
 00506758    mov         dl,1
 0050675A    mov         eax,dword ptr [ebx+650];TFormOptions.SpeedButtonViderHistorique:TSpeedButton
 00506760    mov         ecx,dword ptr [eax]
 00506762    call        dword ptr [ecx+5C];TControl.SetEnabled
 00506765    lea         ecx,[ebp-4]
 00506768    mov         eax,dword ptr [ebx+39C];TFormOptions.ListBoxFichiers:TListBox
 0050676E    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 00506774    xor         edx,edx
 00506776    mov         esi,dword ptr [eax]
 00506778    call        dword ptr [esi+0C];TStrings.Get
 0050677B    mov         edx,dword ptr [ebp-4]
 0050677E    mov         eax,dword ptr [ebx+5A8];TFormOptions.Label38:TLabel
 00506784    call        TControl.SetText
>00506789    jmp         00506798
 0050678B    xor         edx,edx
 0050678D    mov         eax,dword ptr [ebx+5A8];TFormOptions.Label38:TLabel
 00506793    call        TControl.SetText
 00506798    xor         eax,eax
 0050679A    pop         edx
 0050679B    pop         ecx
 0050679C    pop         ecx
 0050679D    mov         dword ptr fs:[eax],edx
 005067A0    push        5067B5
 005067A5    lea         eax,[ebp-4]
 005067A8    call        @LStrClr
 005067AD    ret
>005067AE    jmp         @HandleFinally
>005067B3    jmp         005067A5
 005067B5    pop         esi
 005067B6    pop         ebx
 005067B7    pop         ecx
 005067B8    pop         ebp
 005067B9    ret
*}
end;

//005067BC
procedure TFormOptions.SpeedButton7Click(Sender:TObject);
begin
{*
 005067BC    push        ebx
 005067BD    mov         ebx,eax
 005067BF    mov         eax,dword ptr [ebx+378];TFormOptions.ColorDialog1:TColorDialog
 005067C5    mov         edx,dword ptr [eax]
 005067C7    call        dword ptr [edx+3C];TColorDialog.Execute
 005067CA    test        al,al
>005067CC    je          00506802
 005067CE    mov         eax,dword ptr [ebx+378];TFormOptions.ColorDialog1:TColorDialog
 005067D4    mov         edx,dword ptr [eax+50];TColorDialog.Color:TColor
 005067D7    mov         eax,dword ptr [ebx+3B8];TFormOptions.Shape4:TShape
 005067DD    mov         eax,dword ptr [eax+12C];TShape.Brush:TBrush
 005067E3    call        TBrush.SetColor
 005067E8    mov         eax,dword ptr [ebx+378];TFormOptions.ColorDialog1:TColorDialog
 005067EE    mov         edx,dword ptr [eax+50];TColorDialog.Color:TColor
 005067F1    mov         eax,dword ptr [ebx+3B8];TFormOptions.Shape4:TShape
 005067F7    mov         eax,dword ptr [eax+128];TShape.Pen:TPen
 005067FD    call        TPen.SetColor
 00506802    pop         ebx
 00506803    ret
*}
end;

//00506804
procedure TFormOptions.SpeedButton9Click(Sender:TObject);
begin
{*
 00506804    push        ebx
 00506805    mov         ebx,eax
 00506807    mov         eax,dword ptr [ebx+378];TFormOptions.ColorDialog1:TColorDialog
 0050680D    mov         edx,dword ptr [eax]
 0050680F    call        dword ptr [edx+3C];TColorDialog.Execute
 00506812    test        al,al
>00506814    je          0050684A
 00506816    mov         eax,dword ptr [ebx+378];TFormOptions.ColorDialog1:TColorDialog
 0050681C    mov         edx,dword ptr [eax+50];TColorDialog.Color:TColor
 0050681F    mov         eax,dword ptr [ebx+3D0];TFormOptions.Shape5:TShape
 00506825    mov         eax,dword ptr [eax+12C];TShape.Brush:TBrush
 0050682B    call        TBrush.SetColor
 00506830    mov         eax,dword ptr [ebx+378];TFormOptions.ColorDialog1:TColorDialog
 00506836    mov         edx,dword ptr [eax+50];TColorDialog.Color:TColor
 00506839    mov         eax,dword ptr [ebx+3D0];TFormOptions.Shape5:TShape
 0050683F    mov         eax,dword ptr [eax+128];TShape.Pen:TPen
 00506845    call        TPen.SetColor
 0050684A    pop         ebx
 0050684B    ret
*}
end;

//0050684C
procedure TFormOptions.SpeedButton11Click(Sender:TObject);
begin
{*
 0050684C    push        ebx
 0050684D    mov         ebx,eax
 0050684F    mov         eax,dword ptr [ebx+378];TFormOptions.ColorDialog1:TColorDialog
 00506855    mov         edx,dword ptr [eax]
 00506857    call        dword ptr [edx+3C];TColorDialog.Execute
 0050685A    test        al,al
>0050685C    je          00506892
 0050685E    mov         eax,dword ptr [ebx+378];TFormOptions.ColorDialog1:TColorDialog
 00506864    mov         edx,dword ptr [eax+50];TColorDialog.Color:TColor
 00506867    mov         eax,dword ptr [ebx+3E0];TFormOptions.Shape6:TShape
 0050686D    mov         eax,dword ptr [eax+12C];TShape.Brush:TBrush
 00506873    call        TBrush.SetColor
 00506878    mov         eax,dword ptr [ebx+378];TFormOptions.ColorDialog1:TColorDialog
 0050687E    mov         edx,dword ptr [eax+50];TColorDialog.Color:TColor
 00506881    mov         eax,dword ptr [ebx+3E0];TFormOptions.Shape6:TShape
 00506887    mov         eax,dword ptr [eax+128];TShape.Pen:TPen
 0050688D    call        TPen.SetColor
 00506892    pop         ebx
 00506893    ret
*}
end;

//00506894
procedure TFormOptions.SpeedButton8Click(Sender:TObject);
begin
{*
 00506894    push        ebx
 00506895    mov         ebx,eax
 00506897    call        004BA264
 0050689C    mov         edx,eax
 0050689E    mov         eax,dword ptr [ebx+3B8];TFormOptions.Shape4:TShape
 005068A4    mov         eax,dword ptr [eax+12C];TShape.Brush:TBrush
 005068AA    call        TBrush.SetColor
 005068AF    call        004BA264
 005068B4    mov         edx,eax
 005068B6    mov         eax,dword ptr [ebx+3B8];TFormOptions.Shape4:TShape
 005068BC    mov         eax,dword ptr [eax+128];TShape.Pen:TPen
 005068C2    call        TPen.SetColor
 005068C7    pop         ebx
 005068C8    ret
*}
end;

//005068CC
procedure TFormOptions.SpeedButton10Click(Sender:TObject);
begin
{*
 005068CC    push        ebx
 005068CD    mov         ebx,eax
 005068CF    call        004BA26C
 005068D4    mov         edx,eax
 005068D6    mov         eax,dword ptr [ebx+3D0];TFormOptions.Shape5:TShape
 005068DC    mov         eax,dword ptr [eax+12C];TShape.Brush:TBrush
 005068E2    call        TBrush.SetColor
 005068E7    call        004BA264
 005068EC    mov         edx,eax
 005068EE    mov         eax,dword ptr [ebx+3B8];TFormOptions.Shape4:TShape
 005068F4    mov         eax,dword ptr [eax+128];TShape.Pen:TPen
 005068FA    call        TPen.SetColor
 005068FF    pop         ebx
 00506900    ret
*}
end;

//00506904
procedure TFormOptions.SpeedButton12Click(Sender:TObject);
begin
{*
 00506904    push        ebx
 00506905    mov         ebx,eax
 00506907    call        004BA274
 0050690C    mov         edx,eax
 0050690E    mov         eax,dword ptr [ebx+3E0];TFormOptions.Shape6:TShape
 00506914    mov         eax,dword ptr [eax+12C];TShape.Brush:TBrush
 0050691A    call        TBrush.SetColor
 0050691F    call        004BA264
 00506924    mov         edx,eax
 00506926    mov         eax,dword ptr [ebx+3B8];TFormOptions.Shape4:TShape
 0050692C    mov         eax,dword ptr [eax+128];TShape.Pen:TPen
 00506932    call        TPen.SetColor
 00506937    pop         ebx
 00506938    ret
*}
end;

//0050693C
procedure TFormOptions.CheckBox4Click(Sender:TObject);
begin
{*
 0050693C    push        ebx
 0050693D    mov         ebx,eax
 0050693F    mov         eax,dword ptr [ebx+3C4];TFormOptions.CheckBox4:TCheckBox
 00506945    mov         edx,dword ptr [eax]
 00506947    call        dword ptr [edx+0B4];TCustomCheckBox.GetChecked
 0050694D    mov         edx,eax
 0050694F    mov         eax,dword ptr [ebx+3B8];TFormOptions.Shape4:TShape
 00506955    mov         ecx,dword ptr [eax]
 00506957    call        dword ptr [ecx+5C];TControl.SetEnabled
 0050695A    mov         eax,dword ptr [ebx+3C4];TFormOptions.CheckBox4:TCheckBox
 00506960    mov         edx,dword ptr [eax]
 00506962    call        dword ptr [edx+0B4];TCustomCheckBox.GetChecked
 00506968    mov         edx,eax
 0050696A    mov         eax,dword ptr [ebx+3D0];TFormOptions.Shape5:TShape
 00506970    mov         ecx,dword ptr [eax]
 00506972    call        dword ptr [ecx+5C];TControl.SetEnabled
 00506975    mov         eax,dword ptr [ebx+3C4];TFormOptions.CheckBox4:TCheckBox
 0050697B    mov         edx,dword ptr [eax]
 0050697D    call        dword ptr [edx+0B4];TCustomCheckBox.GetChecked
 00506983    mov         edx,eax
 00506985    mov         eax,dword ptr [ebx+3E0];TFormOptions.Shape6:TShape
 0050698B    mov         ecx,dword ptr [eax]
 0050698D    call        dword ptr [ecx+5C];TControl.SetEnabled
 00506990    mov         eax,dword ptr [ebx+3C4];TFormOptions.CheckBox4:TCheckBox
 00506996    mov         edx,dword ptr [eax]
 00506998    call        dword ptr [edx+0B4];TCustomCheckBox.GetChecked
 0050699E    mov         edx,eax
 005069A0    mov         eax,dword ptr [ebx+3BC];TFormOptions.SpeedButton7:TSpeedButton
 005069A6    mov         ecx,dword ptr [eax]
 005069A8    call        dword ptr [ecx+5C];TControl.SetEnabled
 005069AB    mov         eax,dword ptr [ebx+3C4];TFormOptions.CheckBox4:TCheckBox
 005069B1    mov         edx,dword ptr [eax]
 005069B3    call        dword ptr [edx+0B4];TCustomCheckBox.GetChecked
 005069B9    mov         edx,eax
 005069BB    mov         eax,dword ptr [ebx+3C0];TFormOptions.SpeedButton8:TSpeedButton
 005069C1    mov         ecx,dword ptr [eax]
 005069C3    call        dword ptr [ecx+5C];TControl.SetEnabled
 005069C6    mov         eax,dword ptr [ebx+3C4];TFormOptions.CheckBox4:TCheckBox
 005069CC    mov         edx,dword ptr [eax]
 005069CE    call        dword ptr [edx+0B4];TCustomCheckBox.GetChecked
 005069D4    mov         edx,eax
 005069D6    mov         eax,dword ptr [ebx+3D4];TFormOptions.SpeedButton9:TSpeedButton
 005069DC    mov         ecx,dword ptr [eax]
 005069DE    call        dword ptr [ecx+5C];TControl.SetEnabled
 005069E1    mov         eax,dword ptr [ebx+3C4];TFormOptions.CheckBox4:TCheckBox
 005069E7    mov         edx,dword ptr [eax]
 005069E9    call        dword ptr [edx+0B4];TCustomCheckBox.GetChecked
 005069EF    mov         edx,eax
 005069F1    mov         eax,dword ptr [ebx+3D8];TFormOptions.SpeedButton10:TSpeedButton
 005069F7    mov         ecx,dword ptr [eax]
 005069F9    call        dword ptr [ecx+5C];TControl.SetEnabled
 005069FC    mov         eax,dword ptr [ebx+3C4];TFormOptions.CheckBox4:TCheckBox
 00506A02    mov         edx,dword ptr [eax]
 00506A04    call        dword ptr [edx+0B4];TCustomCheckBox.GetChecked
 00506A0A    mov         edx,eax
 00506A0C    mov         eax,dword ptr [ebx+3E4];TFormOptions.SpeedButton11:TSpeedButton
 00506A12    mov         ecx,dword ptr [eax]
 00506A14    call        dword ptr [ecx+5C];TControl.SetEnabled
 00506A17    mov         eax,dword ptr [ebx+3C4];TFormOptions.CheckBox4:TCheckBox
 00506A1D    mov         edx,dword ptr [eax]
 00506A1F    call        dword ptr [edx+0B4];TCustomCheckBox.GetChecked
 00506A25    mov         edx,eax
 00506A27    mov         eax,dword ptr [ebx+3E8];TFormOptions.SpeedButton12:TSpeedButton
 00506A2D    mov         ecx,dword ptr [eax]
 00506A2F    call        dword ptr [ecx+5C];TControl.SetEnabled
 00506A32    mov         eax,dword ptr [ebx+3C4];TFormOptions.CheckBox4:TCheckBox
 00506A38    mov         edx,dword ptr [eax]
 00506A3A    call        dword ptr [edx+0B4];TCustomCheckBox.GetChecked
 00506A40    mov         edx,eax
 00506A42    mov         eax,dword ptr [ebx+400];TFormOptions.SpeedButton13:TSpeedButton
 00506A48    mov         ecx,dword ptr [eax]
 00506A4A    call        dword ptr [ecx+5C];TControl.SetEnabled
 00506A4D    mov         eax,dword ptr [ebx+3C4];TFormOptions.CheckBox4:TCheckBox
 00506A53    mov         edx,dword ptr [eax]
 00506A55    call        dword ptr [edx+0B4];TCustomCheckBox.GetChecked
 00506A5B    mov         edx,eax
 00506A5D    mov         eax,dword ptr [ebx+404];TFormOptions.SpeedButton14:TSpeedButton
 00506A63    mov         ecx,dword ptr [eax]
 00506A65    call        dword ptr [ecx+5C];TControl.SetEnabled
 00506A68    pop         ebx
 00506A69    ret
*}
end;

//00506A6C
procedure TFormOptions.SpeedButton13Click(Sender:TObject);
begin
{*
 00506A6C    push        ebx
 00506A6D    mov         ebx,eax
 00506A6F    mov         eax,dword ptr [ebx+378];TFormOptions.ColorDialog1:TColorDialog
 00506A75    mov         edx,dword ptr [eax]
 00506A77    call        dword ptr [edx+3C];TColorDialog.Execute
 00506A7A    test        al,al
>00506A7C    je          00506AB2
 00506A7E    mov         eax,dword ptr [ebx+378];TFormOptions.ColorDialog1:TColorDialog
 00506A84    mov         edx,dword ptr [eax+50];TColorDialog.Color:TColor
 00506A87    mov         eax,dword ptr [ebx+3FC];TFormOptions.Shape7:TShape
 00506A8D    mov         eax,dword ptr [eax+12C];TShape.Brush:TBrush
 00506A93    call        TBrush.SetColor
 00506A98    mov         eax,dword ptr [ebx+378];TFormOptions.ColorDialog1:TColorDialog
 00506A9E    mov         edx,dword ptr [eax+50];TColorDialog.Color:TColor
 00506AA1    mov         eax,dword ptr [ebx+3FC];TFormOptions.Shape7:TShape
 00506AA7    mov         eax,dword ptr [eax+128];TShape.Pen:TPen
 00506AAD    call        TPen.SetColor
 00506AB2    pop         ebx
 00506AB3    ret
*}
end;

//00506AB4
procedure TFormOptions.SpeedButton14Click(Sender:TObject);
begin
{*
 00506AB4    push        ebx
 00506AB5    mov         ebx,eax
 00506AB7    call        004BA27C
 00506ABC    mov         edx,eax
 00506ABE    mov         eax,dword ptr [ebx+3FC];TFormOptions.Shape7:TShape
 00506AC4    mov         eax,dword ptr [eax+12C];TShape.Brush:TBrush
 00506ACA    call        TBrush.SetColor
 00506ACF    call        004BA27C
 00506AD4    mov         edx,eax
 00506AD6    mov         eax,dword ptr [ebx+3FC];TFormOptions.Shape7:TShape
 00506ADC    mov         eax,dword ptr [eax+128];TShape.Pen:TPen
 00506AE2    call        TPen.SetColor
 00506AE7    pop         ebx
 00506AE8    ret
*}
end;

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
procedure TFormOptions.Edit6Change(Sender:TObject);
begin
{*
 00506C58    push        ebp
 00506C59    mov         ebp,esp
 00506C5B    push        0
 00506C5D    push        0
 00506C5F    push        ebx
 00506C60    mov         ebx,eax
 00506C62    xor         eax,eax
 00506C64    push        ebp
 00506C65    push        506CB9
 00506C6A    push        dword ptr fs:[eax]
 00506C6D    mov         dword ptr fs:[eax],esp
 00506C70    lea         edx,[ebp-8]
 00506C73    mov         eax,dword ptr [ebx+414];TFormOptions.Edit6:TEdit
 00506C79    call        TControl.GetText
 00506C7E    mov         eax,dword ptr [ebp-8]
 00506C81    lea         edx,[ebp-4]
 00506C84    call        Trim
 00506C89    cmp         dword ptr [ebp-4],0
 00506C8D    setne       dl
 00506C90    mov         eax,dword ptr [ebx+4C8];TFormOptions.SpeedButton25:TSpeedButton
 00506C96    mov         ecx,dword ptr [eax]
 00506C98    call        dword ptr [ecx+5C];TControl.SetEnabled
 00506C9B    xor         eax,eax
 00506C9D    pop         edx
 00506C9E    pop         ecx
 00506C9F    pop         ecx
 00506CA0    mov         dword ptr fs:[eax],edx
 00506CA3    push        506CC0
 00506CA8    lea         eax,[ebp-8]
 00506CAB    call        @LStrClr
 00506CB0    lea         eax,[ebp-4]
 00506CB3    call        @LStrClr
 00506CB8    ret
>00506CB9    jmp         @HandleFinally
>00506CBE    jmp         00506CA8
 00506CC0    pop         ebx
 00506CC1    pop         ecx
 00506CC2    pop         ecx
 00506CC3    pop         ebp
 00506CC4    ret
*}
end;

//00506CC8
procedure TFormOptions.Edit6Enter(Sender:TObject);
begin
{*
 00506CC8    push        ebx
 00506CC9    mov         ebx,eax
 00506CCB    or          edx,0FFFFFFFF
 00506CCE    mov         eax,dword ptr [ebx+40C];TFormOptions.ListBoxUtilisateurs:TListBox
 00506CD4    call        TCustomListBox.SetItemIndex
 00506CD9    xor         edx,edx
 00506CDB    mov         eax,dword ptr [ebx+4CC];TFormOptions.SpeedButton26:TSpeedButton
 00506CE1    mov         ecx,dword ptr [eax]
 00506CE3    call        dword ptr [ecx+5C];TControl.SetEnabled
 00506CE6    pop         ebx
 00506CE7    ret
*}
end;

//00506CE8
procedure TFormOptions.BitBtn12Click(Sender:TObject);
begin
{*
 00506CE8    push        ebp
 00506CE9    mov         ebp,esp
 00506CEB    xor         ecx,ecx
 00506CED    push        ecx
 00506CEE    push        ecx
 00506CEF    push        ecx
 00506CF0    push        ecx
 00506CF1    push        ebx
 00506CF2    mov         ebx,eax
 00506CF4    xor         eax,eax
 00506CF6    push        ebp
 00506CF7    push        506DA6
 00506CFC    push        dword ptr fs:[eax]
 00506CFF    mov         dword ptr fs:[eax],esp
 00506D02    lea         edx,[ebp-8]
 00506D05    mov         eax,dword ptr [ebx+414];TFormOptions.Edit6:TEdit
 00506D0B    call        TControl.GetText
 00506D10    mov         eax,dword ptr [ebp-8]
 00506D13    lea         edx,[ebp-4]
 00506D16    call        Trim
 00506D1B    cmp         dword ptr [ebp-4],0
>00506D1F    je          00506D83
 00506D21    lea         edx,[ebp-0C]
 00506D24    mov         eax,dword ptr [ebx+414];TFormOptions.Edit6:TEdit
 00506D2A    call        TControl.GetText
 00506D2F    mov         edx,dword ptr [ebp-0C]
 00506D32    mov         eax,dword ptr [ebx+40C];TFormOptions.ListBoxUtilisateurs:TListBox
 00506D38    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 00506D3E    mov         ecx,dword ptr [eax]
 00506D40    call        dword ptr [ecx+50];TStrings.IndexOf
 00506D43    inc         eax
>00506D44    jne         00506D68
 00506D46    lea         edx,[ebp-10]
 00506D49    mov         eax,dword ptr [ebx+414];TFormOptions.Edit6:TEdit
 00506D4F    call        TControl.GetText
 00506D54    mov         edx,dword ptr [ebp-10]
 00506D57    mov         eax,dword ptr [ebx+40C];TFormOptions.ListBoxUtilisateurs:TListBox
 00506D5D    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 00506D63    mov         ecx,dword ptr [eax]
 00506D65    call        dword ptr [ecx+34];TStrings.Add
 00506D68    xor         edx,edx
 00506D6A    mov         eax,dword ptr [ebx+414];TFormOptions.Edit6:TEdit
 00506D70    call        TControl.SetText
 00506D75    mov         eax,dword ptr [ebx+414];TFormOptions.Edit6:TEdit
 00506D7B    mov         edx,dword ptr [eax]
 00506D7D    call        dword ptr [edx+0B0];TWinControl.SetFocus
 00506D83    xor         eax,eax
 00506D85    pop         edx
 00506D86    pop         ecx
 00506D87    pop         ecx
 00506D88    mov         dword ptr fs:[eax],edx
 00506D8B    push        506DAD
 00506D90    lea         eax,[ebp-10]
 00506D93    mov         edx,3
 00506D98    call        @LStrArrayClr
 00506D9D    lea         eax,[ebp-4]
 00506DA0    call        @LStrClr
 00506DA5    ret
>00506DA6    jmp         @HandleFinally
>00506DAB    jmp         00506D90
 00506DAD    pop         ebx
 00506DAE    mov         esp,ebp
 00506DB0    pop         ebp
 00506DB1    ret
*}
end;

//00506DB4
procedure TFormOptions.ListBoxUtilisateursClick(Sender:TObject);
begin
{*
 00506DB4    push        ebx
 00506DB5    mov         ebx,eax
 00506DB7    mov         eax,dword ptr [ebx+40C];TFormOptions.ListBoxUtilisateurs:TListBox
 00506DBD    call        TCustomListBox.GetItemIndex
 00506DC2    inc         eax
 00506DC3    setne       dl
 00506DC6    mov         eax,dword ptr [ebx+4CC];TFormOptions.SpeedButton26:TSpeedButton
 00506DCC    mov         ecx,dword ptr [eax]
 00506DCE    call        dword ptr [ecx+5C];TControl.SetEnabled
 00506DD1    pop         ebx
 00506DD2    ret
*}
end;

//00506DD4
procedure TFormOptions.BitBtn14Click(Sender:TObject);
begin
{*
 00506DD4    push        ebp
 00506DD5    mov         ebp,esp
 00506DD7    push        0
 00506DD9    push        ebx
 00506DDA    mov         ebx,eax
 00506DDC    xor         eax,eax
 00506DDE    push        ebp
 00506DDF    push        506E4E
 00506DE4    push        dword ptr fs:[eax]
 00506DE7    mov         dword ptr fs:[eax],esp
 00506DEA    lea         eax,[ebp-4]
 00506DED    mov         edx,506E64;'Revenir à la liste des utilisateurs par défaut ?'
 00506DF2    call        @LStrLAsg
 00506DF7    push        24
 00506DF9    mov         eax,dword ptr [ebp-4]
 00506DFC    call        @LStrToPChar
 00506E01    mov         edx,eax
 00506E03    mov         ecx,506E98
 00506E08    mov         eax,[00615FEC];^Application:TApplication
 00506E0D    mov         eax,dword ptr [eax]
 00506E0F    call        TApplication.MessageBox
 00506E14    cmp         eax,6
>00506E17    jne         00506E38
 00506E19    call        0049856C
 00506E1E    mov         edx,eax
 00506E20    mov         eax,dword ptr [ebx+40C];TFormOptions.ListBoxUtilisateurs:TListBox
 00506E26    call        TCustomListBox.SetItems
 00506E2B    xor         edx,edx
 00506E2D    mov         eax,dword ptr [ebx+4CC];TFormOptions.SpeedButton26:TSpeedButton
 00506E33    mov         ecx,dword ptr [eax]
 00506E35    call        dword ptr [ecx+5C];TControl.SetEnabled
 00506E38    xor         eax,eax
 00506E3A    pop         edx
 00506E3B    pop         ecx
 00506E3C    pop         ecx
 00506E3D    mov         dword ptr fs:[eax],edx
 00506E40    push        506E55
 00506E45    lea         eax,[ebp-4]
 00506E48    call        @LStrClr
 00506E4D    ret
>00506E4E    jmp         @HandleFinally
>00506E53    jmp         00506E45
 00506E55    pop         ebx
 00506E56    pop         ecx
 00506E57    pop         ebp
 00506E58    ret
*}
end;

//00506EBC
procedure TFormOptions.BitBtn13Click(Sender:TObject);
begin
{*
 00506EBC    push        ebp
 00506EBD    mov         ebp,esp
 00506EBF    push        0
 00506EC1    push        0
 00506EC3    push        0
 00506EC5    push        ebx
 00506EC6    push        esi
 00506EC7    mov         ebx,eax
 00506EC9    xor         eax,eax
 00506ECB    push        ebp
 00506ECC    push        506F9C
 00506ED1    push        dword ptr fs:[eax]
 00506ED4    mov         dword ptr fs:[eax],esp
 00506ED7    push        506FB4;'Supprimer ''
 00506EDC    mov         esi,dword ptr [ebx+40C];TFormOptions.ListBoxUtilisateurs:TListBox
 00506EE2    mov         eax,esi
 00506EE4    call        TCustomListBox.GetItemIndex
 00506EE9    mov         edx,eax
 00506EEB    lea         ecx,[ebp-0C]
 00506EEE    mov         eax,dword ptr [esi+1F0];TListBox.FItems:TStrings
 00506EF4    mov         esi,dword ptr [eax]
 00506EF6    call        dword ptr [esi+0C];TStrings.Get
 00506EF9    mov         eax,dword ptr [ebp-0C]
 00506EFC    call        @LStrToPChar
 00506F01    mov         edx,eax
 00506F03    lea         eax,[ebp-8]
 00506F06    call        @LStrFromPChar
 00506F0B    push        dword ptr [ebp-8]
 00506F0E    push        506FC8;'' ?'
 00506F13    lea         eax,[ebp-4]
 00506F16    mov         edx,3
 00506F1B    call        @LStrCatN
 00506F20    mov         esi,dword ptr [ebx+40C];TFormOptions.ListBoxUtilisateurs:TListBox
 00506F26    mov         eax,esi
 00506F28    call        TCustomListBox.GetItemIndex
 00506F2D    inc         eax
>00506F2E    je          00506F81
 00506F30    mov         eax,dword ptr [esi+1F0];TListBox.FItems:TStrings
 00506F36    mov         edx,dword ptr [eax]
 00506F38    call        dword ptr [edx+14];TStrings.GetCount
 00506F3B    dec         eax
>00506F3C    jle         00506F81
 00506F3E    push        24
 00506F40    mov         eax,dword ptr [ebp-4]
 00506F43    call        @LStrToPChar
 00506F48    mov         edx,eax
 00506F4A    mov         ecx,506FCC
 00506F4F    mov         eax,[00615FEC];^Application:TApplication
 00506F54    mov         eax,dword ptr [eax]
 00506F56    call        TApplication.MessageBox
 00506F5B    cmp         eax,6
>00506F5E    jne         00506F81
 00506F60    mov         eax,esi
 00506F62    call        TCustomListBox.GetItemIndex
 00506F67    mov         edx,eax
 00506F69    mov         eax,dword ptr [esi+1F0];TListBox.FItems:TStrings
 00506F6F    mov         ecx,dword ptr [eax]
 00506F71    call        dword ptr [ecx+44];TStrings.Delete
 00506F74    xor         edx,edx
 00506F76    mov         eax,dword ptr [ebx+4CC];TFormOptions.SpeedButton26:TSpeedButton
 00506F7C    mov         ecx,dword ptr [eax]
 00506F7E    call        dword ptr [ecx+5C];TControl.SetEnabled
 00506F81    xor         eax,eax
 00506F83    pop         edx
 00506F84    pop         ecx
 00506F85    pop         ecx
 00506F86    mov         dword ptr fs:[eax],edx
 00506F89    push        506FA3
 00506F8E    lea         eax,[ebp-0C]
 00506F91    mov         edx,3
 00506F96    call        @LStrArrayClr
 00506F9B    ret
>00506F9C    jmp         @HandleFinally
>00506FA1    jmp         00506F8E
 00506FA3    pop         esi
 00506FA4    pop         ebx
 00506FA5    mov         esp,ebp
 00506FA7    pop         ebp
 00506FA8    ret
*}
end;

//00506FF0
procedure TFormOptions.BitBtn7Click(Sender:TObject);
begin
{*
 00506FF0    push        ebp
 00506FF1    mov         ebp,esp
 00506FF3    xor         ecx,ecx
 00506FF5    push        ecx
 00506FF6    push        ecx
 00506FF7    push        ecx
 00506FF8    push        ecx
 00506FF9    push        ecx
 00506FFA    push        ecx
 00506FFB    push        ecx
 00506FFC    push        ecx
 00506FFD    push        ebx
 00506FFE    push        esi
 00506FFF    mov         esi,eax
 00507001    xor         eax,eax
 00507003    push        ebp
 00507004    push        50716E
 00507009    push        dword ptr fs:[eax]
 0050700C    mov         dword ptr fs:[eax],esp
 0050700F    lea         edx,[ebp-8]
 00507012    mov         eax,dword ptr [esi+34C];TFormOptions.Edit2:TEdit
 00507018    call        TControl.GetText
 0050701D    mov         edx,dword ptr [ebp-8]
 00507020    mov         eax,dword ptr [esi+344];TFormOptions.Periodes:TListBox
 00507026    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 0050702C    mov         ecx,dword ptr [eax]
 0050702E    call        dword ptr [ecx+50];TStrings.IndexOf
 00507031    inc         eax
>00507032    jne         0050713E
 00507038    lea         edx,[ebp-0C]
 0050703B    mov         eax,dword ptr [esi+34C];TFormOptions.Edit2:TEdit
 00507041    call        TControl.GetText
 00507046    mov         edx,dword ptr [ebp-0C]
 00507049    mov         eax,dword ptr [esi+344];TFormOptions.Periodes:TListBox
 0050704F    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 00507055    mov         ecx,dword ptr [eax]
 00507057    call        dword ptr [ecx+34];TStrings.Add
 0050705A    mov         eax,dword ptr [esi+358];TFormOptions.ListBoxSousPeriodes:TListBox
 00507060    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 00507066    mov         edx,dword ptr [eax]
 00507068    call        dword ptr [edx+40];TStrings.Clear
 0050706B    mov         eax,dword ptr [esi+604];TFormOptions.NombreSousPeriodes:TRxSpinEdit
 00507071    call        TRxSpinEdit.GetValue
 00507076    call        @TRUNC
 0050707B    cmp         edx,0
>0050707E    jne         00507085
 00507080    cmp         eax,0FF
>00507085    jbe         0050708C
 00507087    call        @BoundErr
 0050708C    mov         ebx,eax
 0050708E    test        bl,bl
>00507090    jbe         005070E4
 00507092    mov         byte ptr [ebp-1],1
 00507096    lea         edx,[ebp-14]
 00507099    mov         eax,dword ptr [esi+34C];TFormOptions.Edit2:TEdit
 0050709F    call        TControl.GetText
 005070A4    push        dword ptr [ebp-14]
 005070A7    push        507184;' '
 005070AC    lea         edx,[ebp-18]
 005070AF    xor         eax,eax
 005070B1    mov         al,byte ptr [ebp-1]
 005070B4    call        IntToStr
 005070B9    push        dword ptr [ebp-18]
 005070BC    lea         eax,[ebp-10]
 005070BF    mov         edx,3
 005070C4    call        @LStrCatN
 005070C9    mov         edx,dword ptr [ebp-10]
 005070CC    mov         eax,dword ptr [esi+358];TFormOptions.ListBoxSousPeriodes:TListBox
 005070D2    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 005070D8    mov         ecx,dword ptr [eax]
 005070DA    call        dword ptr [ecx+34];TStrings.Add
 005070DD    inc         byte ptr [ebp-1]
 005070E0    dec         bl
>005070E2    jne         00507096
 005070E4    lea         edx,[ebp-1C]
 005070E7    mov         eax,dword ptr [esi+34C];TFormOptions.Edit2:TEdit
 005070ED    call        TControl.GetText
 005070F2    mov         eax,dword ptr [ebp-1C]
 005070F5    mov         edx,dword ptr [esi+358];TFormOptions.ListBoxSousPeriodes:TListBox
 005070FB    mov         edx,dword ptr [edx+1F0];TListBox.FItems:TStrings
 00507101    call        004BA7B0
 00507106    lea         edx,[ebp-20]
 00507109    mov         eax,dword ptr [esi+34C];TFormOptions.Edit2:TEdit
 0050710F    call        TControl.GetText
 00507114    mov         edx,dword ptr [ebp-20]
 00507117    mov         ebx,dword ptr [esi+344];TFormOptions.Periodes:TListBox
 0050711D    mov         eax,dword ptr [ebx+1F0];TListBox.FItems:TStrings
 00507123    mov         ecx,dword ptr [eax]
 00507125    call        dword ptr [ecx+50];TStrings.IndexOf
 00507128    mov         edx,eax
 0050712A    mov         eax,ebx
 0050712C    call        TCustomListBox.SetItemIndex
 00507131    mov         dl,1
 00507133    mov         eax,dword ptr [esi+430];TFormOptions.Edit7:TEdit
 00507139    mov         ecx,dword ptr [eax]
 0050713B    call        dword ptr [ecx+5C];TControl.SetEnabled
 0050713E    xor         eax,eax
 00507140    pop         edx
 00507141    pop         ecx
 00507142    pop         ecx
 00507143    mov         dword ptr fs:[eax],edx
 00507146    push        507175
 0050714B    lea         eax,[ebp-20]
 0050714E    mov         edx,2
 00507153    call        @LStrArrayClr
 00507158    lea         eax,[ebp-18]
 0050715B    call        @LStrClr
 00507160    lea         eax,[ebp-14]
 00507163    mov         edx,4
 00507168    call        @LStrArrayClr
 0050716D    ret
>0050716E    jmp         @HandleFinally
>00507173    jmp         0050714B
 00507175    pop         esi
 00507176    pop         ebx
 00507177    mov         esp,ebp
 00507179    pop         ebp
 0050717A    ret
*}
end;

//00507188
procedure TFormOptions.Edit2Change(Sender:TObject);
begin
{*
 00507188    push        ebp
 00507189    mov         ebp,esp
 0050718B    xor         ecx,ecx
 0050718D    push        ecx
 0050718E    push        ecx
 0050718F    push        ecx
 00507190    push        ecx
 00507191    push        ebx
 00507192    mov         ebx,eax
 00507194    xor         eax,eax
 00507196    push        ebp
 00507197    push        507226
 0050719C    push        dword ptr fs:[eax]
 0050719F    mov         dword ptr fs:[eax],esp
 005071A2    lea         edx,[ebp-8]
 005071A5    mov         eax,dword ptr [ebx+34C];TFormOptions.Edit2:TEdit
 005071AB    call        TControl.GetText
 005071B0    mov         eax,dword ptr [ebp-8]
 005071B3    lea         edx,[ebp-4]
 005071B6    call        Trim
 005071BB    cmp         dword ptr [ebp-4],0
 005071BF    setne       dl
 005071C2    mov         eax,dword ptr [ebx+658];TFormOptions.SpeedButtonAjouterALaListe:TSpeedButton
 005071C8    mov         ecx,dword ptr [eax]
 005071CA    call        dword ptr [ecx+5C];TControl.SetEnabled
 005071CD    lea         edx,[ebp-10]
 005071D0    mov         eax,dword ptr [ebx+34C];TFormOptions.Edit2:TEdit
 005071D6    call        TControl.GetText
 005071DB    mov         eax,dword ptr [ebp-10]
 005071DE    lea         edx,[ebp-0C]
 005071E1    call        Trim
 005071E6    cmp         dword ptr [ebp-0C],0
 005071EA    setne       dl
 005071ED    mov         eax,dword ptr [ebx+604];TFormOptions.NombreSousPeriodes:TRxSpinEdit
 005071F3    mov         ecx,dword ptr [eax]
 005071F5    call        dword ptr [ecx+5C];TControl.SetEnabled
 005071F8    xor         eax,eax
 005071FA    pop         edx
 005071FB    pop         ecx
 005071FC    pop         ecx
 005071FD    mov         dword ptr fs:[eax],edx
 00507200    push        50722D
 00507205    lea         eax,[ebp-10]
 00507208    call        @LStrClr
 0050720D    lea         eax,[ebp-0C]
 00507210    call        @LStrClr
 00507215    lea         eax,[ebp-8]
 00507218    call        @LStrClr
 0050721D    lea         eax,[ebp-4]
 00507220    call        @LStrClr
 00507225    ret
>00507226    jmp         @HandleFinally
>0050722B    jmp         00507205
 0050722D    pop         ebx
 0050722E    mov         esp,ebp
 00507230    pop         ebp
 00507231    ret
*}
end;

//00507234
procedure TFormOptions.PeriodesClick(Sender:TObject);
begin
{*
 00507234    push        ebp
 00507235    mov         ebp,esp
 00507237    push        0
 00507239    push        0
 0050723B    push        0
 0050723D    push        ebx
 0050723E    push        esi
 0050723F    mov         ebx,eax
 00507241    xor         eax,eax
 00507243    push        ebp
 00507244    push        507370
 00507249    push        dword ptr fs:[eax]
 0050724C    mov         dword ptr fs:[eax],esp
 0050724F    mov         eax,dword ptr [ebx+344];TFormOptions.Periodes:TListBox
 00507255    call        TCustomListBox.GetItemIndex
 0050725A    inc         eax
>0050725B    je          00507355
 00507261    mov         esi,dword ptr [ebx+344];TFormOptions.Periodes:TListBox
 00507267    mov         eax,esi
 00507269    call        TCustomListBox.GetItemIndex
 0050726E    mov         edx,eax
 00507270    lea         ecx,[ebp-8]
 00507273    mov         eax,dword ptr [esi+1F0];TListBox.FItems:TStrings
 00507279    mov         esi,dword ptr [eax]
 0050727B    call        dword ptr [esi+0C];TStrings.Get
 0050727E    mov         eax,dword ptr [ebp-8]
 00507281    call        004BA3F8
 00507286    mov         edx,eax
 00507288    mov         eax,dword ptr [ebx+358];TFormOptions.ListBoxSousPeriodes:TListBox
 0050728E    call        TCustomListBox.SetItems
 00507293    mov         eax,dword ptr [ebx+358];TFormOptions.ListBoxSousPeriodes:TListBox
 00507299    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 0050729F    mov         edx,dword ptr [eax]
 005072A1    call        dword ptr [edx+14];TStrings.GetCount
 005072A4    mov         dword ptr [ebp-0C],eax
 005072A7    fild        dword ptr [ebp-0C]
 005072AA    add         esp,0FFFFFFF4
 005072AD    fstp        tbyte ptr [esp]
 005072B0    wait
 005072B1    mov         eax,dword ptr [ebx+604];TFormOptions.NombreSousPeriodes:TRxSpinEdit
 005072B7    call        TRxSpinEdit.SetValue
 005072BC    mov         esi,dword ptr [ebx+344];TFormOptions.Periodes:TListBox
 005072C2    mov         eax,esi
 005072C4    call        TCustomListBox.GetItemIndex
 005072C9    mov         edx,eax
 005072CB    lea         ecx,[ebp-4]
 005072CE    mov         eax,dword ptr [esi+1F0];TListBox.FItems:TStrings
 005072D4    mov         esi,dword ptr [eax]
 005072D6    call        dword ptr [esi+0C];TStrings.Get
 005072D9    mov         eax,dword ptr [ebp-4]
 005072DC    mov         edx,507388;'Trimestres'
 005072E1    call        @LStrCmp
>005072E6    je          00507306
 005072E8    mov         eax,dword ptr [ebp-4]
 005072EB    mov         edx,50739C;'Semestres'
 005072F0    call        @LStrCmp
>005072F5    je          00507306
 005072F7    mov         eax,dword ptr [ebp-4]
 005072FA    mov         edx,5073B0;'Mois'
 005072FF    call        @LStrCmp
>00507304    jne         0050730A
 00507306    xor         edx,edx
>00507308    jmp         0050730C
 0050730A    mov         dl,1
 0050730C    mov         eax,dword ptr [ebx+660];TFormOptions.SpeedButtonSupprimerDeLaListe:TSpeedButton
 00507312    mov         ecx,dword ptr [eax]
 00507314    call        dword ptr [ecx+5C];TControl.SetEnabled
 00507317    mov         eax,dword ptr [ebp-4]
 0050731A    mov         edx,507388;'Trimestres'
 0050731F    call        @LStrCmp
>00507324    je          00507344
 00507326    mov         eax,dword ptr [ebp-4]
 00507329    mov         edx,50739C;'Semestres'
 0050732E    call        @LStrCmp
>00507333    je          00507344
 00507335    mov         eax,dword ptr [ebp-4]
 00507338    mov         edx,5073B0;'Mois'
 0050733D    call        @LStrCmp
>00507342    jne         00507348
 00507344    xor         edx,edx
>00507346    jmp         0050734A
 00507348    mov         dl,1
 0050734A    mov         eax,dword ptr [ebx+430];TFormOptions.Edit7:TEdit
 00507350    mov         ecx,dword ptr [eax]
 00507352    call        dword ptr [ecx+5C];TControl.SetEnabled
 00507355    xor         eax,eax
 00507357    pop         edx
 00507358    pop         ecx
 00507359    pop         ecx
 0050735A    mov         dword ptr fs:[eax],edx
 0050735D    push        507377
 00507362    lea         eax,[ebp-8]
 00507365    mov         edx,2
 0050736A    call        @LStrArrayClr
 0050736F    ret
>00507370    jmp         @HandleFinally
>00507375    jmp         00507362
 00507377    pop         esi
 00507378    pop         ebx
 00507379    mov         esp,ebp
 0050737B    pop         ebp
 0050737C    ret
*}
end;

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
begin
{*
 00507690    push        ebp
 00507691    mov         ebp,esp
 00507693    push        0
 00507695    push        ebx
 00507696    push        esi
 00507697    mov         ebx,eax
 00507699    xor         eax,eax
 0050769B    push        ebp
 0050769C    push        50771E
 005076A1    push        dword ptr fs:[eax]
 005076A4    mov         dword ptr fs:[eax],esp
 005076A7    mov         eax,dword ptr [ebx+358];TFormOptions.ListBoxSousPeriodes:TListBox
 005076AD    call        TCustomListBox.GetItemIndex
 005076B2    inc         eax
>005076B3    je          00507708
 005076B5    mov         eax,dword ptr [ebx+430];TFormOptions.Edit7:TEdit
 005076BB    mov         edx,dword ptr [eax]
 005076BD    call        dword ptr [edx+4C];TGroupBox.GetEnabled
 005076C0    test        al,al
>005076C2    je          00507708
 005076C4    mov         esi,dword ptr [ebx+358];TFormOptions.ListBoxSousPeriodes:TListBox
 005076CA    mov         eax,esi
 005076CC    call        TCustomListBox.GetItemIndex
 005076D1    mov         edx,eax
 005076D3    lea         ecx,[ebp-4]
 005076D6    mov         eax,dword ptr [esi+1F0];TListBox.FItems:TStrings
 005076DC    mov         esi,dword ptr [eax]
 005076DE    call        dword ptr [esi+0C];TStrings.Get
 005076E1    mov         edx,dword ptr [ebp-4]
 005076E4    mov         eax,dword ptr [ebx+430];TFormOptions.Edit7:TEdit
 005076EA    call        TControl.SetText
 005076EF    mov         eax,dword ptr [ebx+430];TFormOptions.Edit7:TEdit
 005076F5    mov         edx,dword ptr [eax]
 005076F7    call        dword ptr [edx+0B0];TWinControl.SetFocus
 005076FD    mov         eax,dword ptr [ebx+430];TFormOptions.Edit7:TEdit
 00507703    call        TCustomEdit.SelectAll
 00507708    xor         eax,eax
 0050770A    pop         edx
 0050770B    pop         ecx
 0050770C    pop         ecx
 0050770D    mov         dword ptr fs:[eax],edx
 00507710    push        507725
 00507715    lea         eax,[ebp-4]
 00507718    call        @LStrClr
 0050771D    ret
>0050771E    jmp         @HandleFinally
>00507723    jmp         00507715
 00507725    pop         esi
 00507726    pop         ebx
 00507727    pop         ecx
 00507728    pop         ebp
 00507729    ret
*}
end;

//0050772C
procedure TFormOptions.Button1Click(Sender:TObject);
begin
{*
 0050772C    push        ebx
 0050772D    push        esi
 0050772E    push        edi
 0050772F    mov         edi,eax
 00507731    mov         eax,dword ptr [edi+444];TFormOptions.CheckListBox1:TCheckListBox
 00507737    mov         eax,dword ptr [eax+1F0];TCheckListBox.FItems:TStrings
 0050773D    mov         edx,dword ptr [eax]
 0050773F    call        dword ptr [edx+14];TStrings.GetCount
 00507742    mov         ebx,eax
 00507744    sub         ebx,1
>00507747    jno         0050774E
 00507749    call        @IntOver
 0050774E    test        ebx,ebx
>00507750    jl          00507768
 00507752    inc         ebx
 00507753    xor         esi,esi
 00507755    mov         eax,dword ptr [edi+444];TFormOptions.CheckListBox1:TCheckListBox
 0050775B    mov         cl,1
 0050775D    mov         edx,esi
 0050775F    call        TCheckListBox.SetChecked
 00507764    inc         esi
 00507765    dec         ebx
>00507766    jne         00507755
 00507768    pop         edi
 00507769    pop         esi
 0050776A    pop         ebx
 0050776B    ret
*}
end;

//0050776C
procedure TFormOptions.Button2Click(Sender:TObject);
begin
{*
 0050776C    push        ebx
 0050776D    push        esi
 0050776E    push        edi
 0050776F    mov         edi,eax
 00507771    mov         eax,dword ptr [edi+444];TFormOptions.CheckListBox1:TCheckListBox
 00507777    mov         eax,dword ptr [eax+1F0];TCheckListBox.FItems:TStrings
 0050777D    mov         edx,dword ptr [eax]
 0050777F    call        dword ptr [edx+14];TStrings.GetCount
 00507782    mov         ebx,eax
 00507784    sub         ebx,1
>00507787    jno         0050778E
 00507789    call        @IntOver
 0050778E    test        ebx,ebx
>00507790    jl          005077A8
 00507792    inc         ebx
 00507793    xor         esi,esi
 00507795    mov         eax,dword ptr [edi+444];TFormOptions.CheckListBox1:TCheckListBox
 0050779B    xor         ecx,ecx
 0050779D    mov         edx,esi
 0050779F    call        TCheckListBox.SetChecked
 005077A4    inc         esi
 005077A5    dec         ebx
>005077A6    jne         00507795
 005077A8    pop         edi
 005077A9    pop         esi
 005077AA    pop         ebx
 005077AB    ret
*}
end;

//005077AC
procedure TFormOptions.Button3Click(Sender:TObject);
begin
{*
 005077AC    push        ebx
 005077AD    push        esi
 005077AE    push        edi
 005077AF    mov         edi,eax
 005077B1    mov         eax,dword ptr [edi+448];TFormOptions.CheckListBox2:TCheckListBox
 005077B7    mov         eax,dword ptr [eax+1F0];TCheckListBox.FItems:TStrings
 005077BD    mov         edx,dword ptr [eax]
 005077BF    call        dword ptr [edx+14];TStrings.GetCount
 005077C2    mov         ebx,eax
 005077C4    sub         ebx,1
>005077C7    jno         005077CE
 005077C9    call        @IntOver
 005077CE    test        ebx,ebx
>005077D0    jl          005077E8
 005077D2    inc         ebx
 005077D3    xor         esi,esi
 005077D5    mov         eax,dword ptr [edi+448];TFormOptions.CheckListBox2:TCheckListBox
 005077DB    mov         cl,1
 005077DD    mov         edx,esi
 005077DF    call        TCheckListBox.SetChecked
 005077E4    inc         esi
 005077E5    dec         ebx
>005077E6    jne         005077D5
 005077E8    pop         edi
 005077E9    pop         esi
 005077EA    pop         ebx
 005077EB    ret
*}
end;

//005077EC
procedure TFormOptions.Button4Click(Sender:TObject);
begin
{*
 005077EC    push        ebx
 005077ED    push        esi
 005077EE    push        edi
 005077EF    mov         edi,eax
 005077F1    mov         eax,dword ptr [edi+448];TFormOptions.CheckListBox2:TCheckListBox
 005077F7    mov         eax,dword ptr [eax+1F0];TCheckListBox.FItems:TStrings
 005077FD    mov         edx,dword ptr [eax]
 005077FF    call        dword ptr [edx+14];TStrings.GetCount
 00507802    mov         ebx,eax
 00507804    sub         ebx,1
>00507807    jno         0050780E
 00507809    call        @IntOver
 0050780E    test        ebx,ebx
>00507810    jl          00507828
 00507812    inc         ebx
 00507813    xor         esi,esi
 00507815    mov         eax,dword ptr [edi+448];TFormOptions.CheckListBox2:TCheckListBox
 0050781B    xor         ecx,ecx
 0050781D    mov         edx,esi
 0050781F    call        TCheckListBox.SetChecked
 00507824    inc         esi
 00507825    dec         ebx
>00507826    jne         00507815
 00507828    pop         edi
 00507829    pop         esi
 0050782A    pop         ebx
 0050782B    ret
*}
end;

//0050782C
procedure TFormOptions.SpeedButtonFermerClick(Sender:TObject);
begin
 close;
end;

//00507834
procedure TFormOptions.SpeedButton17Click(Sender:TObject);
begin
{*
 00507834    push        ebx
 00507835    mov         ebx,eax
 00507837    call        004BA280
 0050783C    mov         edx,eax
 0050783E    mov         eax,dword ptr [ebx+474];TFormOptions.Shape8:TShape
 00507844    mov         eax,dword ptr [eax+12C];TShape.Brush:TBrush
 0050784A    call        TBrush.SetColor
 0050784F    call        004BA280
 00507854    mov         edx,eax
 00507856    mov         eax,dword ptr [ebx+474];TFormOptions.Shape8:TShape
 0050785C    mov         eax,dword ptr [eax+128];TShape.Pen:TPen
 00507862    call        TPen.SetColor
 00507867    pop         ebx
 00507868    ret
*}
end;

//0050786C
procedure TFormOptions.SpeedButton16Click(Sender:TObject);
begin
{*
 0050786C    push        ebx
 0050786D    mov         ebx,eax
 0050786F    mov         eax,dword ptr [ebx+378];TFormOptions.ColorDialog1:TColorDialog
 00507875    mov         edx,dword ptr [eax]
 00507877    call        dword ptr [edx+3C];TColorDialog.Execute
 0050787A    test        al,al
>0050787C    je          005078B2
 0050787E    mov         eax,dword ptr [ebx+378];TFormOptions.ColorDialog1:TColorDialog
 00507884    mov         edx,dword ptr [eax+50];TColorDialog.Color:TColor
 00507887    mov         eax,dword ptr [ebx+474];TFormOptions.Shape8:TShape
 0050788D    mov         eax,dword ptr [eax+12C];TShape.Brush:TBrush
 00507893    call        TBrush.SetColor
 00507898    mov         eax,dword ptr [ebx+378];TFormOptions.ColorDialog1:TColorDialog
 0050789E    mov         edx,dword ptr [eax+50];TColorDialog.Color:TColor
 005078A1    mov         eax,dword ptr [ebx+474];TFormOptions.Shape8:TShape
 005078A7    mov         eax,dword ptr [eax+128];TShape.Pen:TPen
 005078AD    call        TPen.SetColor
 005078B2    pop         ebx
 005078B3    ret
*}
end;

//005078B4
procedure TFormOptions.historiqueDesFichiersClick(Sender:TObject);
begin
{*
 005078B4    push        ebx
 005078B5    mov         ebx,eax
 005078B7    mov         eax,dword ptr [ebx+49C];TFormOptions.historiqueDesFichiers:TCheckBox
 005078BD    mov         edx,dword ptr [eax]
 005078BF    call        dword ptr [edx+0B4];TCustomCheckBox.GetChecked
 005078C5    mov         edx,eax
 005078C7    mov         eax,dword ptr [ebx+5F8];TFormOptions.NombreFichiersHistorique:TRxSpinEdit
 005078CD    mov         ecx,dword ptr [eax]
 005078CF    call        dword ptr [ecx+5C];TControl.SetEnabled
 005078D2    pop         ebx
 005078D3    ret
*}
end;

//005078D4
procedure TFormOptions.CheckBox8Click(Sender:TObject);
begin
{*
 005078D4    push        ebx
 005078D5    mov         ebx,eax
 005078D7    mov         eax,dword ptr [ebx+484];TFormOptions.CheckBox8:TCheckBox
 005078DD    mov         edx,dword ptr [eax]
 005078DF    call        dword ptr [edx+0B4];TCustomCheckBox.GetChecked
 005078E5    mov         edx,eax
 005078E7    mov         eax,dword ptr [ebx+48C];TFormOptions.RadioGroup2:TRadioGroup
 005078ED    mov         ecx,dword ptr [eax]
 005078EF    call        dword ptr [ecx+5C];TControl.SetEnabled
 005078F2    pop         ebx
 005078F3    ret
*}
end;

//005078F4
procedure TFormOptions.RadioGroup3Click(Sender:TObject);
begin
{*
 005078F4    push        ebx
 005078F5    mov         ebx,eax
 005078F7    mov         eax,dword ptr [ebx+494];TFormOptions.RadioGroup3:TRadioGroup
 005078FD    mov         eax,dword ptr [eax+200];TRadioGroup.FItemIndex:Integer
 00507903    sub         eax,1
>00507906    jb          0050790F
>00507908    je          0050792B
 0050790A    dec         eax
>0050790B    je          00507947
>0050790D    jmp         00507961
 0050790F    xor         edx,edx
 00507911    mov         eax,dword ptr [ebx+498];TFormOptions.TabControl1:TTabControl
 00507917    call        TCustomTabControl.SetTabPosition
 0050791C    mov         dl,2
 0050791E    mov         eax,dword ptr [ebx+498];TFormOptions.TabControl1:TTabControl
 00507924    call        TCustomTabControl.SetStyle
 00507929    pop         ebx
 0050792A    ret
 0050792B    xor         edx,edx
 0050792D    mov         eax,dword ptr [ebx+498];TFormOptions.TabControl1:TTabControl
 00507933    call        TCustomTabControl.SetTabPosition
 00507938    mov         dl,1
 0050793A    mov         eax,dword ptr [ebx+498];TFormOptions.TabControl1:TTabControl
 00507940    call        TCustomTabControl.SetStyle
 00507945    pop         ebx
 00507946    ret
 00507947    xor         edx,edx
 00507949    mov         eax,dword ptr [ebx+498];TFormOptions.TabControl1:TTabControl
 0050794F    call        TCustomTabControl.SetStyle
 00507954    mov         dl,1
 00507956    mov         eax,dword ptr [ebx+498];TFormOptions.TabControl1:TTabControl
 0050795C    call        TCustomTabControl.SetTabPosition
 00507961    pop         ebx
 00507962    ret
*}
end;

//00507964
procedure TFormOptions.CheckBox10Click(Sender:TObject);
begin
{*
 00507964    push        ebx
 00507965    mov         ebx,eax
 00507967    mov         eax,dword ptr [ebx+490];TFormOptions.CheckBox10:TCheckBox
 0050796D    mov         edx,dword ptr [eax]
 0050796F    call        dword ptr [edx+0B4];TCustomCheckBox.GetChecked
 00507975    mov         edx,eax
 00507977    mov         eax,dword ptr [ebx+494];TFormOptions.RadioGroup3:TRadioGroup
 0050797D    mov         ecx,dword ptr [eax]
 0050797F    call        dword ptr [ecx+5C];TControl.SetEnabled
 00507982    mov         eax,dword ptr [ebx+490];TFormOptions.CheckBox10:TCheckBox
 00507988    mov         edx,dword ptr [eax]
 0050798A    call        dword ptr [edx+0B4];TCustomCheckBox.GetChecked
 00507990    mov         edx,eax
 00507992    mov         eax,dword ptr [ebx+498];TFormOptions.TabControl1:TTabControl
 00507998    call        TControl.SetVisible
 0050799D    mov         eax,dword ptr [ebx+490];TFormOptions.CheckBox10:TCheckBox
 005079A3    mov         edx,dword ptr [eax]
 005079A5    call        dword ptr [edx+0B4];TCustomCheckBox.GetChecked
 005079AB    mov         edx,eax
 005079AD    mov         eax,dword ptr [ebx+5AC];TFormOptions.CheckBox25:TCheckBox
 005079B3    mov         ecx,dword ptr [eax]
 005079B5    call        dword ptr [ecx+5C];TControl.SetEnabled
 005079B8    pop         ebx
 005079B9    ret
*}
end;

//005079BC
procedure TFormOptions.Edit7Change(Sender:TObject);
begin
{*
 005079BC    push        ebp
 005079BD    mov         ebp,esp
 005079BF    push        0
 005079C1    push        0
 005079C3    push        ebx
 005079C4    push        esi
 005079C5    mov         ebx,eax
 005079C7    xor         eax,eax
 005079C9    push        ebp
 005079CA    push        507A5F
 005079CF    push        dword ptr fs:[eax]
 005079D2    mov         dword ptr fs:[eax],esp
 005079D5    mov         eax,dword ptr [ebx+358];TFormOptions.ListBoxSousPeriodes:TListBox
 005079DB    call        TCustomListBox.GetItemIndex
 005079E0    inc         eax
>005079E1    je          00507A41
 005079E3    lea         edx,[ebp-4]
 005079E6    mov         eax,dword ptr [ebx+430];TFormOptions.Edit7:TEdit
 005079EC    call        TControl.GetText
 005079F1    mov         eax,dword ptr [ebp-4]
 005079F4    push        eax
 005079F5    mov         esi,dword ptr [ebx+358];TFormOptions.ListBoxSousPeriodes:TListBox
 005079FB    mov         eax,esi
 005079FD    call        TCustomListBox.GetItemIndex
 00507A02    mov         edx,eax
 00507A04    mov         eax,dword ptr [esi+1F0];TListBox.FItems:TStrings
 00507A0A    pop         ecx
 00507A0B    mov         esi,dword ptr [eax]
 00507A0D    call        dword ptr [esi+20];TStrings.Put
 00507A10    mov         esi,dword ptr [ebx+344];TFormOptions.Periodes:TListBox
 00507A16    mov         eax,esi
 00507A18    call        TCustomListBox.GetItemIndex
 00507A1D    mov         edx,eax
 00507A1F    lea         ecx,[ebp-8]
 00507A22    mov         eax,dword ptr [esi+1F0];TListBox.FItems:TStrings
 00507A28    mov         esi,dword ptr [eax]
 00507A2A    call        dword ptr [esi+0C];TStrings.Get
 00507A2D    mov         eax,dword ptr [ebp-8]
 00507A30    mov         edx,dword ptr [ebx+358];TFormOptions.ListBoxSousPeriodes:TListBox
 00507A36    mov         edx,dword ptr [edx+1F0];TListBox.FItems:TStrings
 00507A3C    call        004BA7B0
 00507A41    xor         eax,eax
 00507A43    pop         edx
 00507A44    pop         ecx
 00507A45    pop         ecx
 00507A46    mov         dword ptr fs:[eax],edx
 00507A49    push        507A66
 00507A4E    lea         eax,[ebp-8]
 00507A51    call        @LStrClr
 00507A56    lea         eax,[ebp-4]
 00507A59    call        @LStrClr
 00507A5E    ret
>00507A5F    jmp         @HandleFinally
>00507A64    jmp         00507A4E
 00507A66    pop         esi
 00507A67    pop         ebx
 00507A68    pop         ecx
 00507A69    pop         ecx
 00507A6A    pop         ebp
 00507A6B    ret
*}
end;

//00507A6C
procedure TFormOptions.FormKeyPress(Sender:TObject; var Key:Char);
begin
  if (Key = chr($0D)) then
    ModalResult := 1;
end;

//00507A7C
procedure TFormOptions.SpeedButton44Click(Sender:TObject);
begin
{*
 00507A7C    push        ebx
 00507A7D    push        esi
 00507A7E    push        edi
 00507A7F    mov         edi,eax
 00507A81    mov         eax,dword ptr [edi+534];TFormOptions.CheckListBox3:TCheckListBox
 00507A87    mov         eax,dword ptr [eax+1F0];TCheckListBox.FItems:TStrings
 00507A8D    mov         edx,dword ptr [eax]
 00507A8F    call        dword ptr [edx+14];TStrings.GetCount
 00507A92    mov         ebx,eax
 00507A94    sub         ebx,1
>00507A97    jno         00507A9E
 00507A99    call        @IntOver
 00507A9E    test        ebx,ebx
>00507AA0    jl          00507AB8
 00507AA2    inc         ebx
 00507AA3    xor         esi,esi
 00507AA5    mov         eax,dword ptr [edi+534];TFormOptions.CheckListBox3:TCheckListBox
 00507AAB    mov         cl,1
 00507AAD    mov         edx,esi
 00507AAF    call        TCheckListBox.SetChecked
 00507AB4    inc         esi
 00507AB5    dec         ebx
>00507AB6    jne         00507AA5
 00507AB8    pop         edi
 00507AB9    pop         esi
 00507ABA    pop         ebx
 00507ABB    ret
*}
end;

//00507ABC
procedure TFormOptions.SpeedButton45Click(Sender:TObject);
begin
{*
 00507ABC    push        ebx
 00507ABD    push        esi
 00507ABE    push        edi
 00507ABF    mov         edi,eax
 00507AC1    mov         eax,dword ptr [edi+534];TFormOptions.CheckListBox3:TCheckListBox
 00507AC7    mov         eax,dword ptr [eax+1F0];TCheckListBox.FItems:TStrings
 00507ACD    mov         edx,dword ptr [eax]
 00507ACF    call        dword ptr [edx+14];TStrings.GetCount
 00507AD2    mov         ebx,eax
 00507AD4    sub         ebx,1
>00507AD7    jno         00507ADE
 00507AD9    call        @IntOver
 00507ADE    test        ebx,ebx
>00507AE0    jl          00507AF8
 00507AE2    inc         ebx
 00507AE3    xor         esi,esi
 00507AE5    mov         eax,dword ptr [edi+534];TFormOptions.CheckListBox3:TCheckListBox
 00507AEB    xor         ecx,ecx
 00507AED    mov         edx,esi
 00507AEF    call        TCheckListBox.SetChecked
 00507AF4    inc         esi
 00507AF5    dec         ebx
>00507AF6    jne         00507AE5
 00507AF8    pop         edi
 00507AF9    pop         esi
 00507AFA    pop         ebx
 00507AFB    ret
*}
end;

//00507AFC
procedure TFormOptions.UpDown3Click(Sender: TObject; Button: TUDBtnType);
begin
{* 00507AFC    push        ebp
 00507AFD    mov         ebp,esp
 00507AFF    push        0
 00507B01    push        0
 00507B03    push        0
 00507B05    push        0
 00507B07    push        0
 00507B09    push        0
 00507B0B    push        ebx
 00507B0C    push        esi
 00507B0D    push        edi
 00507B0E    mov         ebx,ecx
 00507B10    mov         edi,eax
 00507B12    xor         eax,eax
 00507B14    push        ebp
 00507B15    push        507C23
 00507B1A    push        dword ptr fs:[eax]
 00507B1D    mov         dword ptr fs:[eax],esp
 00507B20    test        bl,bl
>00507B22    jne         00507B85
 00507B24    lea         edx,[ebp-4]
 00507B27    mov         eax,dword ptr [edi+544];TFormOptions.Edit8:TEdit
 00507B2D    call        TControl.GetText
 00507B32    mov         eax,dword ptr [ebp-4]
 00507B35    call        StrToInt
 00507B3A    mov         edx,dword ptr [edi+548];TFormOptions.UpDown3:TUpDown
 00507B40    movsx       edx,word ptr [edx+1FA];TUpDown.FMax:Smallint
 00507B47    cmp         eax,edx
>00507B49    jge         00507B85
 00507B4B    lea         edx,[ebp-8]
 00507B4E    mov         eax,dword ptr [edi+544];TFormOptions.Edit8:TEdit
 00507B54    call        TControl.GetText
 00507B59    mov         eax,dword ptr [ebp-8]
 00507B5C    call        StrToInt
 00507B61    mov         esi,eax
 00507B63    lea         edx,[ebp-0C]
 00507B66    mov         eax,esi
 00507B68    add         eax,1
>00507B6B    jno         00507B72
 00507B6D    call        @IntOver
 00507B72    call        IntToStr
 00507B77    mov         edx,dword ptr [ebp-0C]
 00507B7A    mov         eax,dword ptr [edi+544];TFormOptions.Edit8:TEdit
 00507B80    call        TControl.SetText
 00507B85    cmp         bl,1
>00507B88    jne         00507BEB
 00507B8A    lea         edx,[ebp-10]
 00507B8D    mov         eax,dword ptr [edi+544];TFormOptions.Edit8:TEdit
 00507B93    call        TControl.GetText
 00507B98    mov         eax,dword ptr [ebp-10]
 00507B9B    call        StrToInt
 00507BA0    mov         edx,dword ptr [edi+548];TFormOptions.UpDown3:TUpDown
 00507BA6    movsx       edx,word ptr [edx+1F8];TUpDown.FMin:Smallint
 00507BAD    cmp         eax,edx
>00507BAF    jle         00507BEB
 00507BB1    lea         edx,[ebp-14]
 00507BB4    mov         eax,dword ptr [edi+544];TFormOptions.Edit8:TEdit
 00507BBA    call        TControl.GetText
 00507BBF    mov         eax,dword ptr [ebp-14]
 00507BC2    call        StrToInt
 00507BC7    mov         esi,eax
 00507BC9    lea         edx,[ebp-18]
 00507BCC    mov         eax,esi
 00507BCE    sub         eax,1
>00507BD1    jno         00507BD8
 00507BD3    call        @IntOver
 00507BD8    call        IntToStr
 00507BDD    mov         edx,dword ptr [ebp-18]
 00507BE0    mov         eax,dword ptr [edi+544];TFormOptions.Edit8:TEdit
 00507BE6    call        TControl.SetText
 00507BEB    xor         eax,eax
 00507BED    pop         edx
 00507BEE    pop         ecx
 00507BEF    pop         ecx
 00507BF0    mov         dword ptr fs:[eax],edx
 00507BF3    push        507C2A
 00507BF8    lea         eax,[ebp-18]
 00507BFB    call        @LStrClr
 00507C00    lea         eax,[ebp-14]
 00507C03    mov         edx,2
 00507C08    call        @LStrArrayClr
 00507C0D    lea         eax,[ebp-0C]
 00507C10    call        @LStrClr
 00507C15    lea         eax,[ebp-8]
 00507C18    mov         edx,2
 00507C1D    call        @LStrArrayClr
 00507C22    ret
>00507C23    jmp         @HandleFinally
>00507C28    jmp         00507BF8
 00507C2A    pop         edi
 00507C2B    pop         esi
 00507C2C    pop         ebx
 00507C2D    mov         esp,ebp
 00507C2F    pop         ebp
 00507C30    ret*}
end;

//00507C34
procedure TFormOptions.CheckBox23Click(Sender:TObject);
begin
{*
 00507C34    push        ebx
 00507C35    mov         ebx,eax
 00507C37    mov         eax,dword ptr [ebx+554];TFormOptions.CheckBox23:TCheckBox
 00507C3D    mov         edx,dword ptr [eax]
 00507C3F    call        dword ptr [edx+0B4];TCustomCheckBox.GetChecked
 00507C45    mov         edx,eax
 00507C47    mov         eax,dword ptr [ebx+45C];TFormOptions.RadioGroup1:TRadioGroup
 00507C4D    mov         ecx,dword ptr [eax]
 00507C4F    call        dword ptr [ecx+5C];TControl.SetEnabled
 00507C52    pop         ebx
 00507C53    ret
*}
end;

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
begin
{*
 00507DC0    push        ebp
 00507DC1    mov         ebp,esp
 00507DC3    xor         ecx,ecx
 00507DC5    push        ecx
 00507DC6    push        ecx
 00507DC7    push        ecx
 00507DC8    push        ecx
 00507DC9    push        ecx
 00507DCA    push        ebx
 00507DCB    push        esi
 00507DCC    push        edi
 00507DCD    mov         dword ptr [ebp-4],eax
 00507DD0    xor         eax,eax
 00507DD2    push        ebp
 00507DD3    push        507EBB
 00507DD8    push        dword ptr fs:[eax]
 00507DDB    mov         dword ptr fs:[eax],esp
 00507DDE    mov         eax,dword ptr [ebp-4]
 00507DE1    mov         ebx,dword ptr [eax+578];TFormOptions.OpenDialog1:TOpenDialog
 00507DE7    lea         eax,[ebx+68];TOpenDialog.Title:String
 00507DEA    mov         edx,507ED4;'Sélectionnez le fichier texte contenant la liste des enseignants'
 00507DEF    call        @LStrAsg
 00507DF4    mov         eax,ebx
 00507DF6    mov         edx,dword ptr [eax]
 00507DF8    call        dword ptr [edx+3C];TOpenDialog.Execute
 00507DFB    test        al,al
>00507DFD    je          00507E98
 00507E03    mov         dl,1
 00507E05    mov         eax,[004120B8];TStringList
 00507E0A    call        TObject.Create;TStringList.Create
 00507E0F    mov         esi,eax
 00507E11    lea         edx,[ebp-0C]
 00507E14    mov         eax,ebx
 00507E16    call        TOpenDialog.GetFileName
 00507E1B    mov         edx,dword ptr [ebp-0C]
 00507E1E    mov         eax,esi
 00507E20    mov         ecx,dword ptr [eax]
 00507E22    call        dword ptr [ecx+58];TStrings.LoadFromFile
 00507E25    mov         eax,esi
 00507E27    mov         edx,dword ptr [eax]
 00507E29    call        dword ptr [edx+14];TStringList.GetCount
 00507E2C    sub         eax,1
>00507E2F    jno         00507E36
 00507E31    call        @IntOver
 00507E36    test        eax,eax
>00507E38    jl          00507E8F
 00507E3A    inc         eax
 00507E3B    mov         dword ptr [ebp-8],eax
 00507E3E    xor         ebx,ebx
 00507E40    lea         ecx,[ebp-10]
 00507E43    mov         edx,ebx
 00507E45    mov         eax,esi
 00507E47    mov         edi,dword ptr [eax]
 00507E49    call        dword ptr [edi+0C];TStringList.Get
 00507E4C    mov         edx,dword ptr [ebp-10]
 00507E4F    mov         eax,dword ptr [ebp-4]
 00507E52    mov         eax,dword ptr [eax+40C];TFormOptions.ListBoxUtilisateurs:TListBox
 00507E58    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 00507E5E    mov         ecx,dword ptr [eax]
 00507E60    call        dword ptr [ecx+50];TStrings.IndexOf
 00507E63    inc         eax
>00507E64    jne         00507E89
 00507E66    lea         ecx,[ebp-14]
 00507E69    mov         edx,ebx
 00507E6B    mov         eax,esi
 00507E6D    mov         edi,dword ptr [eax]
 00507E6F    call        dword ptr [edi+0C];TStringList.Get
 00507E72    mov         edx,dword ptr [ebp-14]
 00507E75    mov         eax,dword ptr [ebp-4]
 00507E78    mov         eax,dword ptr [eax+40C];TFormOptions.ListBoxUtilisateurs:TListBox
 00507E7E    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 00507E84    mov         ecx,dword ptr [eax]
 00507E86    call        dword ptr [ecx+34];TStrings.Add
 00507E89    inc         ebx
 00507E8A    dec         dword ptr [ebp-8]
>00507E8D    jne         00507E40
 00507E8F    mov         dl,1
 00507E91    mov         eax,esi
 00507E93    mov         ecx,dword ptr [eax]
 00507E95    call        dword ptr [ecx-4];TStringList.Destroy
 00507E98    xor         eax,eax
 00507E9A    pop         edx
 00507E9B    pop         ecx
 00507E9C    pop         ecx
 00507E9D    mov         dword ptr fs:[eax],edx
 00507EA0    push        507EC2
 00507EA5    lea         eax,[ebp-14]
 00507EA8    mov         edx,2
 00507EAD    call        @LStrArrayClr
 00507EB2    lea         eax,[ebp-0C]
 00507EB5    call        @LStrClr
 00507EBA    ret
>00507EBB    jmp         @HandleFinally
>00507EC0    jmp         00507EA5
 00507EC2    pop         edi
 00507EC3    pop         esi
 00507EC4    pop         ebx
 00507EC5    mov         esp,ebp
 00507EC7    pop         ebp
 00507EC8    ret
*}
end;

//00507F18
procedure TFormOptions.SpeedButtonAjouterListeTypesDeNotesClick(Sender:TObject);
begin
{*
 00507F18    push        ebp
 00507F19    mov         ebp,esp
 00507F1B    xor         ecx,ecx
 00507F1D    push        ecx
 00507F1E    push        ecx
 00507F1F    push        ecx
 00507F20    push        ecx
 00507F21    push        ecx
 00507F22    push        ebx
 00507F23    push        esi
 00507F24    push        edi
 00507F25    mov         dword ptr [ebp-4],eax
 00507F28    xor         eax,eax
 00507F2A    push        ebp
 00507F2B    push        508013
 00507F30    push        dword ptr fs:[eax]
 00507F33    mov         dword ptr fs:[eax],esp
 00507F36    mov         eax,dword ptr [ebp-4]
 00507F39    mov         ebx,dword ptr [eax+578];TFormOptions.OpenDialog1:TOpenDialog
 00507F3F    lea         eax,[ebx+68];TOpenDialog.Title:String
 00507F42    mov         edx,50802C;'Sélectionnez le fichier texte contenant la liste des types de notes'
 00507F47    call        @LStrAsg
 00507F4C    mov         eax,ebx
 00507F4E    mov         edx,dword ptr [eax]
 00507F50    call        dword ptr [edx+3C];TOpenDialog.Execute
 00507F53    test        al,al
>00507F55    je          00507FF0
 00507F5B    mov         dl,1
 00507F5D    mov         eax,[004120B8];TStringList
 00507F62    call        TObject.Create;TStringList.Create
 00507F67    mov         esi,eax
 00507F69    lea         edx,[ebp-0C]
 00507F6C    mov         eax,ebx
 00507F6E    call        TOpenDialog.GetFileName
 00507F73    mov         edx,dword ptr [ebp-0C]
 00507F76    mov         eax,esi
 00507F78    mov         ecx,dword ptr [eax]
 00507F7A    call        dword ptr [ecx+58];TStrings.LoadFromFile
 00507F7D    mov         eax,esi
 00507F7F    mov         edx,dword ptr [eax]
 00507F81    call        dword ptr [edx+14];TStringList.GetCount
 00507F84    sub         eax,1
>00507F87    jno         00507F8E
 00507F89    call        @IntOver
 00507F8E    test        eax,eax
>00507F90    jl          00507FE7
 00507F92    inc         eax
 00507F93    mov         dword ptr [ebp-8],eax
 00507F96    xor         ebx,ebx
 00507F98    lea         ecx,[ebp-10]
 00507F9B    mov         edx,ebx
 00507F9D    mov         eax,esi
 00507F9F    mov         edi,dword ptr [eax]
 00507FA1    call        dword ptr [edi+0C];TStringList.Get
 00507FA4    mov         edx,dword ptr [ebp-10]
 00507FA7    mov         eax,dword ptr [ebp-4]
 00507FAA    mov         eax,dword ptr [eax+310];TFormOptions.typesDeNotes:TListBox
 00507FB0    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 00507FB6    mov         ecx,dword ptr [eax]
 00507FB8    call        dword ptr [ecx+50];TStrings.IndexOf
 00507FBB    inc         eax
>00507FBC    jne         00507FE1
 00507FBE    lea         ecx,[ebp-14]
 00507FC1    mov         edx,ebx
 00507FC3    mov         eax,esi
 00507FC5    mov         edi,dword ptr [eax]
 00507FC7    call        dword ptr [edi+0C];TStringList.Get
 00507FCA    mov         edx,dword ptr [ebp-14]
 00507FCD    mov         eax,dword ptr [ebp-4]
 00507FD0    mov         eax,dword ptr [eax+310];TFormOptions.typesDeNotes:TListBox
 00507FD6    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 00507FDC    mov         ecx,dword ptr [eax]
 00507FDE    call        dword ptr [ecx+34];TStrings.Add
 00507FE1    inc         ebx
 00507FE2    dec         dword ptr [ebp-8]
>00507FE5    jne         00507F98
 00507FE7    mov         dl,1
 00507FE9    mov         eax,esi
 00507FEB    mov         ecx,dword ptr [eax]
 00507FED    call        dword ptr [ecx-4];TStringList.Destroy
 00507FF0    xor         eax,eax
 00507FF2    pop         edx
 00507FF3    pop         ecx
 00507FF4    pop         ecx
 00507FF5    mov         dword ptr fs:[eax],edx
 00507FF8    push        50801A
 00507FFD    lea         eax,[ebp-14]
 00508000    mov         edx,2
 00508005    call        @LStrArrayClr
 0050800A    lea         eax,[ebp-0C]
 0050800D    call        @LStrClr
 00508012    ret
>00508013    jmp         @HandleFinally
>00508018    jmp         00507FFD
 0050801A    pop         edi
 0050801B    pop         esi
 0050801C    pop         ebx
 0050801D    mov         esp,ebp
 0050801F    pop         ebp
 00508020    ret
*}
end;

//00508070
procedure TFormOptions.SpeedButtonSauverListeTypesDeNotesClick(Sender:TObject);
begin
{*
 00508070    push        ebp
 00508071    mov         ebp,esp
 00508073    push        0
 00508075    push        ebx
 00508076    push        esi
 00508077    mov         esi,eax
 00508079    xor         eax,eax
 0050807B    push        ebp
 0050807C    push        5080D9
 00508081    push        dword ptr fs:[eax]
 00508084    mov         dword ptr fs:[eax],esp
 00508087    mov         ebx,dword ptr [esi+588];TFormOptions.SaveDialog1:TSaveDialog
 0050808D    lea         eax,[ebx+68];TSaveDialog.Title:String
 00508090    mov         edx,5080F0;'Sélectionnez le fichier texte où sauver la liste des types de notes'
 00508095    call        @LStrAsg
 0050809A    mov         eax,ebx
 0050809C    mov         edx,dword ptr [eax]
 0050809E    call        dword ptr [edx+3C];TSaveDialog.Execute
 005080A1    test        al,al
>005080A3    je          005080C3
 005080A5    lea         edx,[ebp-4]
 005080A8    mov         eax,ebx
 005080AA    call        TOpenDialog.GetFileName
 005080AF    mov         edx,dword ptr [ebp-4]
 005080B2    mov         eax,dword ptr [esi+310];TFormOptions.typesDeNotes:TListBox
 005080B8    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 005080BE    mov         ecx,dword ptr [eax]
 005080C0    call        dword ptr [ecx+64];TStrings.SaveToFile
 005080C3    xor         eax,eax
 005080C5    pop         edx
 005080C6    pop         ecx
 005080C7    pop         ecx
 005080C8    mov         dword ptr fs:[eax],edx
 005080CB    push        5080E0
 005080D0    lea         eax,[ebp-4]
 005080D3    call        @LStrClr
 005080D8    ret
>005080D9    jmp         @HandleFinally
>005080DE    jmp         005080D0
 005080E0    pop         esi
 005080E1    pop         ebx
 005080E2    pop         ecx
 005080E3    pop         ebp
 005080E4    ret
*}
end;

//00508134
procedure TFormOptions.SpeedButton49Click(Sender:TObject);
begin
{*
 00508134    push        ebp
 00508135    mov         ebp,esp
 00508137    push        0
 00508139    push        ebx
 0050813A    push        esi
 0050813B    mov         esi,eax
 0050813D    xor         eax,eax
 0050813F    push        ebp
 00508140    push        50819D
 00508145    push        dword ptr fs:[eax]
 00508148    mov         dword ptr fs:[eax],esp
 0050814B    mov         ebx,dword ptr [esi+588];TFormOptions.SaveDialog1:TSaveDialog
 00508151    lea         eax,[ebx+68];TSaveDialog.Title:String
 00508154    mov         edx,5081B4;'Sélectionnez le fichier texte où sauver la liste des enseignants'
 00508159    call        @LStrAsg
 0050815E    mov         eax,ebx
 00508160    mov         edx,dword ptr [eax]
 00508162    call        dword ptr [edx+3C];TSaveDialog.Execute
 00508165    test        al,al
>00508167    je          00508187
 00508169    lea         edx,[ebp-4]
 0050816C    mov         eax,ebx
 0050816E    call        TOpenDialog.GetFileName
 00508173    mov         edx,dword ptr [ebp-4]
 00508176    mov         eax,dword ptr [esi+40C];TFormOptions.ListBoxUtilisateurs:TListBox
 0050817C    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 00508182    mov         ecx,dword ptr [eax]
 00508184    call        dword ptr [ecx+64];TStrings.SaveToFile
 00508187    xor         eax,eax
 00508189    pop         edx
 0050818A    pop         ecx
 0050818B    pop         ecx
 0050818C    mov         dword ptr fs:[eax],edx
 0050818F    push        5081A4
 00508194    lea         eax,[ebp-4]
 00508197    call        @LStrClr
 0050819C    ret
>0050819D    jmp         @HandleFinally
>005081A2    jmp         00508194
 005081A4    pop         esi
 005081A5    pop         ebx
 005081A6    pop         ecx
 005081A7    pop         ebp
 005081A8    ret
*}
end;

//005081F8
procedure TFormOptions.SpeedButton55Click(Sender:TObject);
begin
{*
 005081F8    push        ebp
 005081F9    mov         ebp,esp
 005081FB    xor         ecx,ecx
 005081FD    push        ecx
 005081FE    push        ecx
 005081FF    push        ecx
 00508200    push        ecx
 00508201    push        ecx
 00508202    push        ebx
 00508203    push        esi
 00508204    push        edi
 00508205    mov         dword ptr [ebp-4],eax
 00508208    xor         eax,eax
 0050820A    push        ebp
 0050820B    push        5082F3
 00508210    push        dword ptr fs:[eax]
 00508213    mov         dword ptr fs:[eax],esp
 00508216    mov         eax,dword ptr [ebp-4]
 00508219    mov         ebx,dword ptr [eax+578];TFormOptions.OpenDialog1:TOpenDialog
 0050821F    lea         eax,[ebx+68];TOpenDialog.Title:String
 00508222    mov         edx,50830C;'Sélectionnez le fichier texte contenant la liste des matières'
 00508227    call        @LStrAsg
 0050822C    mov         eax,ebx
 0050822E    mov         edx,dword ptr [eax]
 00508230    call        dword ptr [edx+3C];TOpenDialog.Execute
 00508233    test        al,al
>00508235    je          005082D0
 0050823B    mov         dl,1
 0050823D    mov         eax,[004120B8];TStringList
 00508242    call        TObject.Create;TStringList.Create
 00508247    mov         esi,eax
 00508249    lea         edx,[ebp-0C]
 0050824C    mov         eax,ebx
 0050824E    call        TOpenDialog.GetFileName
 00508253    mov         edx,dword ptr [ebp-0C]
 00508256    mov         eax,esi
 00508258    mov         ecx,dword ptr [eax]
 0050825A    call        dword ptr [ecx+58];TStrings.LoadFromFile
 0050825D    mov         eax,esi
 0050825F    mov         edx,dword ptr [eax]
 00508261    call        dword ptr [edx+14];TStringList.GetCount
 00508264    sub         eax,1
>00508267    jno         0050826E
 00508269    call        @IntOver
 0050826E    test        eax,eax
>00508270    jl          005082C7
 00508272    inc         eax
 00508273    mov         dword ptr [ebp-8],eax
 00508276    xor         ebx,ebx
 00508278    lea         ecx,[ebp-10]
 0050827B    mov         edx,ebx
 0050827D    mov         eax,esi
 0050827F    mov         edi,dword ptr [eax]
 00508281    call        dword ptr [edi+0C];TStringList.Get
 00508284    mov         edx,dword ptr [ebp-10]
 00508287    mov         eax,dword ptr [ebp-4]
 0050828A    mov         eax,dword ptr [eax+56C];TFormOptions.ListBoxMatieres:TListBox
 00508290    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 00508296    mov         ecx,dword ptr [eax]
 00508298    call        dword ptr [ecx+50];TStrings.IndexOf
 0050829B    inc         eax
>0050829C    jne         005082C1
 0050829E    lea         ecx,[ebp-14]
 005082A1    mov         edx,ebx
 005082A3    mov         eax,esi
 005082A5    mov         edi,dword ptr [eax]
 005082A7    call        dword ptr [edi+0C];TStringList.Get
 005082AA    mov         edx,dword ptr [ebp-14]
 005082AD    mov         eax,dword ptr [ebp-4]
 005082B0    mov         eax,dword ptr [eax+56C];TFormOptions.ListBoxMatieres:TListBox
 005082B6    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 005082BC    mov         ecx,dword ptr [eax]
 005082BE    call        dword ptr [ecx+34];TStrings.Add
 005082C1    inc         ebx
 005082C2    dec         dword ptr [ebp-8]
>005082C5    jne         00508278
 005082C7    mov         dl,1
 005082C9    mov         eax,esi
 005082CB    mov         ecx,dword ptr [eax]
 005082CD    call        dword ptr [ecx-4];TStringList.Destroy
 005082D0    xor         eax,eax
 005082D2    pop         edx
 005082D3    pop         ecx
 005082D4    pop         ecx
 005082D5    mov         dword ptr fs:[eax],edx
 005082D8    push        5082FA
 005082DD    lea         eax,[ebp-14]
 005082E0    mov         edx,2
 005082E5    call        @LStrArrayClr
 005082EA    lea         eax,[ebp-0C]
 005082ED    call        @LStrClr
 005082F2    ret
>005082F3    jmp         @HandleFinally
>005082F8    jmp         005082DD
 005082FA    pop         edi
 005082FB    pop         esi
 005082FC    pop         ebx
 005082FD    mov         esp,ebp
 005082FF    pop         ebp
 00508300    ret
*}
end;

//0050834C
procedure TFormOptions.SpeedButton56Click(Sender:TObject);
begin
{*
 0050834C    push        ebp
 0050834D    mov         ebp,esp
 0050834F    push        0
 00508351    push        ebx
 00508352    push        esi
 00508353    mov         esi,eax
 00508355    xor         eax,eax
 00508357    push        ebp
 00508358    push        5083B5
 0050835D    push        dword ptr fs:[eax]
 00508360    mov         dword ptr fs:[eax],esp
 00508363    mov         ebx,dword ptr [esi+588];TFormOptions.SaveDialog1:TSaveDialog
 00508369    lea         eax,[ebx+68];TSaveDialog.Title:String
 0050836C    mov         edx,5083CC;'Sélectionnez le fichier texte où sauver la liste des matières'
 00508371    call        @LStrAsg
 00508376    mov         eax,ebx
 00508378    mov         edx,dword ptr [eax]
 0050837A    call        dword ptr [edx+3C];TSaveDialog.Execute
 0050837D    test        al,al
>0050837F    je          0050839F
 00508381    lea         edx,[ebp-4]
 00508384    mov         eax,ebx
 00508386    call        TOpenDialog.GetFileName
 0050838B    mov         edx,dword ptr [ebp-4]
 0050838E    mov         eax,dword ptr [esi+56C];TFormOptions.ListBoxMatieres:TListBox
 00508394    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 0050839A    mov         ecx,dword ptr [eax]
 0050839C    call        dword ptr [ecx+64];TStrings.SaveToFile
 0050839F    xor         eax,eax
 005083A1    pop         edx
 005083A2    pop         ecx
 005083A3    pop         ecx
 005083A4    mov         dword ptr fs:[eax],edx
 005083A7    push        5083BC
 005083AC    lea         eax,[ebp-4]
 005083AF    call        @LStrClr
 005083B4    ret
>005083B5    jmp         @HandleFinally
>005083BA    jmp         005083AC
 005083BC    pop         esi
 005083BD    pop         ebx
 005083BE    pop         ecx
 005083BF    pop         ebp
 005083C0    ret
*}
end;

//0050840C
procedure TFormOptions.SpeedButton54Click(Sender:TObject);
begin
{*
 0050840C    push        ebp
 0050840D    mov         ebp,esp
 0050840F    push        0
 00508411    push        ebx
 00508412    mov         ebx,eax
 00508414    xor         eax,eax
 00508416    push        ebp
 00508417    push        508486
 0050841C    push        dword ptr fs:[eax]
 0050841F    mov         dword ptr fs:[eax],esp
 00508422    lea         eax,[ebp-4]
 00508425    mov         edx,50849C;'Revenir à la liste des matières par défaut ?'
 0050842A    call        @LStrLAsg
 0050842F    push        24
 00508431    mov         eax,dword ptr [ebp-4]
 00508434    call        @LStrToPChar
 00508439    mov         edx,eax
 0050843B    mov         ecx,5084CC
 00508440    mov         eax,[00615FEC];^Application:TApplication
 00508445    mov         eax,dword ptr [eax]
 00508447    call        TApplication.MessageBox
 0050844C    cmp         eax,6
>0050844F    jne         00508470
 00508451    call        004BC3F0
 00508456    mov         edx,eax
 00508458    mov         eax,dword ptr [ebx+56C];TFormOptions.ListBoxMatieres:TListBox
 0050845E    call        TCustomListBox.SetItems
 00508463    xor         edx,edx
 00508465    mov         eax,dword ptr [ebx+598];TFormOptions.SpeedButton53:TSpeedButton
 0050846B    mov         ecx,dword ptr [eax]
 0050846D    call        dword ptr [ecx+5C];TControl.SetEnabled
 00508470    xor         eax,eax
 00508472    pop         edx
 00508473    pop         ecx
 00508474    pop         ecx
 00508475    mov         dword ptr fs:[eax],edx
 00508478    push        50848D
 0050847D    lea         eax,[ebp-4]
 00508480    call        @LStrClr
 00508485    ret
>00508486    jmp         @HandleFinally
>0050848B    jmp         0050847D
 0050848D    pop         ebx
 0050848E    pop         ecx
 0050848F    pop         ebp
 00508490    ret
*}
end;

//005084F0
procedure TFormOptions.Edit9Change(Sender:TObject);
begin
{*
 005084F0    push        ebp
 005084F1    mov         ebp,esp
 005084F3    push        0
 005084F5    push        0
 005084F7    push        ebx
 005084F8    mov         ebx,eax
 005084FA    xor         eax,eax
 005084FC    push        ebp
 005084FD    push        508551
 00508502    push        dword ptr fs:[eax]
 00508505    mov         dword ptr fs:[eax],esp
 00508508    lea         edx,[ebp-8]
 0050850B    mov         eax,dword ptr [ebx+590];TFormOptions.Edit9:TEdit
 00508511    call        TControl.GetText
 00508516    mov         eax,dword ptr [ebp-8]
 00508519    lea         edx,[ebp-4]
 0050851C    call        Trim
 00508521    cmp         dword ptr [ebp-4],0
 00508525    setne       dl
 00508528    mov         eax,dword ptr [ebx+594];TFormOptions.SpeedButton52:TSpeedButton
 0050852E    mov         ecx,dword ptr [eax]
 00508530    call        dword ptr [ecx+5C];TControl.SetEnabled
 00508533    xor         eax,eax
 00508535    pop         edx
 00508536    pop         ecx
 00508537    pop         ecx
 00508538    mov         dword ptr fs:[eax],edx
 0050853B    push        508558
 00508540    lea         eax,[ebp-8]
 00508543    call        @LStrClr
 00508548    lea         eax,[ebp-4]
 0050854B    call        @LStrClr
 00508550    ret
>00508551    jmp         @HandleFinally
>00508556    jmp         00508540
 00508558    pop         ebx
 00508559    pop         ecx
 0050855A    pop         ecx
 0050855B    pop         ebp
 0050855C    ret
*}
end;

//00508560
procedure TFormOptions.SpeedButton52Click(Sender:TObject);
begin
{*
 00508560    push        ebp
 00508561    mov         ebp,esp
 00508563    xor         ecx,ecx
 00508565    push        ecx
 00508566    push        ecx
 00508567    push        ecx
 00508568    push        ecx
 00508569    push        ebx
 0050856A    mov         ebx,eax
 0050856C    xor         eax,eax
 0050856E    push        ebp
 0050856F    push        50861E
 00508574    push        dword ptr fs:[eax]
 00508577    mov         dword ptr fs:[eax],esp
 0050857A    lea         edx,[ebp-8]
 0050857D    mov         eax,dword ptr [ebx+590];TFormOptions.Edit9:TEdit
 00508583    call        TControl.GetText
 00508588    mov         eax,dword ptr [ebp-8]
 0050858B    lea         edx,[ebp-4]
 0050858E    call        Trim
 00508593    cmp         dword ptr [ebp-4],0
>00508597    je          005085FB
 00508599    lea         edx,[ebp-0C]
 0050859C    mov         eax,dword ptr [ebx+590];TFormOptions.Edit9:TEdit
 005085A2    call        TControl.GetText
 005085A7    mov         edx,dword ptr [ebp-0C]
 005085AA    mov         eax,dword ptr [ebx+56C];TFormOptions.ListBoxMatieres:TListBox
 005085B0    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 005085B6    mov         ecx,dword ptr [eax]
 005085B8    call        dword ptr [ecx+50];TStrings.IndexOf
 005085BB    inc         eax
>005085BC    jne         005085E0
 005085BE    lea         edx,[ebp-10]
 005085C1    mov         eax,dword ptr [ebx+590];TFormOptions.Edit9:TEdit
 005085C7    call        TControl.GetText
 005085CC    mov         edx,dword ptr [ebp-10]
 005085CF    mov         eax,dword ptr [ebx+56C];TFormOptions.ListBoxMatieres:TListBox
 005085D5    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 005085DB    mov         ecx,dword ptr [eax]
 005085DD    call        dword ptr [ecx+34];TStrings.Add
 005085E0    xor         edx,edx
 005085E2    mov         eax,dword ptr [ebx+590];TFormOptions.Edit9:TEdit
 005085E8    call        TControl.SetText
 005085ED    mov         eax,dword ptr [ebx+590];TFormOptions.Edit9:TEdit
 005085F3    mov         edx,dword ptr [eax]
 005085F5    call        dword ptr [edx+0B0];TWinControl.SetFocus
 005085FB    xor         eax,eax
 005085FD    pop         edx
 005085FE    pop         ecx
 005085FF    pop         ecx
 00508600    mov         dword ptr fs:[eax],edx
 00508603    push        508625
 00508608    lea         eax,[ebp-10]
 0050860B    mov         edx,3
 00508610    call        @LStrArrayClr
 00508615    lea         eax,[ebp-4]
 00508618    call        @LStrClr
 0050861D    ret
>0050861E    jmp         @HandleFinally
>00508623    jmp         00508608
 00508625    pop         ebx
 00508626    mov         esp,ebp
 00508628    pop         ebp
 00508629    ret
*}
end;

//0050862C
procedure TFormOptions.Edit9Enter(Sender:TObject);
begin
{*
 0050862C    push        ebx
 0050862D    mov         ebx,eax
 0050862F    or          edx,0FFFFFFFF
 00508632    mov         eax,dword ptr [ebx+56C];TFormOptions.ListBoxMatieres:TListBox
 00508638    call        TCustomListBox.SetItemIndex
 0050863D    xor         edx,edx
 0050863F    mov         eax,dword ptr [ebx+598];TFormOptions.SpeedButton53:TSpeedButton
 00508645    mov         ecx,dword ptr [eax]
 00508647    call        dword ptr [ecx+5C];TControl.SetEnabled
 0050864A    pop         ebx
 0050864B    ret
*}
end;

//0050864C
procedure TFormOptions.SpeedButton53Click(Sender:TObject);
begin
{*
 0050864C    push        ebp
 0050864D    mov         ebp,esp
 0050864F    push        0
 00508651    push        0
 00508653    push        0
 00508655    push        ebx
 00508656    push        esi
 00508657    mov         ebx,eax
 00508659    xor         eax,eax
 0050865B    push        ebp
 0050865C    push        50871E
 00508661    push        dword ptr fs:[eax]
 00508664    mov         dword ptr fs:[eax],esp
 00508667    push        508734;'Supprimer ''
 0050866C    mov         esi,dword ptr [ebx+56C];TFormOptions.ListBoxMatieres:TListBox
 00508672    mov         eax,esi
 00508674    call        TCustomListBox.GetItemIndex
 00508679    mov         edx,eax
 0050867B    lea         ecx,[ebp-0C]
 0050867E    mov         eax,dword ptr [esi+1F0];TListBox.FItems:TStrings
 00508684    mov         esi,dword ptr [eax]
 00508686    call        dword ptr [esi+0C];TStrings.Get
 00508689    mov         eax,dword ptr [ebp-0C]
 0050868C    call        @LStrToPChar
 00508691    mov         edx,eax
 00508693    lea         eax,[ebp-8]
 00508696    call        @LStrFromPChar
 0050869B    push        dword ptr [ebp-8]
 0050869E    push        508748;'' ?'
 005086A3    lea         eax,[ebp-4]
 005086A6    mov         edx,3
 005086AB    call        @LStrCatN
 005086B0    mov         esi,dword ptr [ebx+56C];TFormOptions.ListBoxMatieres:TListBox
 005086B6    mov         eax,esi
 005086B8    call        TCustomListBox.GetItemIndex
 005086BD    inc         eax
>005086BE    je          00508703
 005086C0    push        24
 005086C2    mov         eax,dword ptr [ebp-4]
 005086C5    call        @LStrToPChar
 005086CA    mov         edx,eax
 005086CC    mov         ecx,50874C
 005086D1    mov         eax,[00615FEC];^Application:TApplication
 005086D6    mov         eax,dword ptr [eax]
 005086D8    call        TApplication.MessageBox
 005086DD    cmp         eax,6
>005086E0    jne         00508703
 005086E2    mov         eax,esi
 005086E4    call        TCustomListBox.GetItemIndex
 005086E9    mov         edx,eax
 005086EB    mov         eax,dword ptr [esi+1F0];TListBox.FItems:TStrings
 005086F1    mov         ecx,dword ptr [eax]
 005086F3    call        dword ptr [ecx+44];TStrings.Delete
 005086F6    xor         edx,edx
 005086F8    mov         eax,dword ptr [ebx+598];TFormOptions.SpeedButton53:TSpeedButton
 005086FE    mov         ecx,dword ptr [eax]
 00508700    call        dword ptr [ecx+5C];TControl.SetEnabled
 00508703    xor         eax,eax
 00508705    pop         edx
 00508706    pop         ecx
 00508707    pop         ecx
 00508708    mov         dword ptr fs:[eax],edx
 0050870B    push        508725
 00508710    lea         eax,[ebp-0C]
 00508713    mov         edx,3
 00508718    call        @LStrArrayClr
 0050871D    ret
>0050871E    jmp         @HandleFinally
>00508723    jmp         00508710
 00508725    pop         esi
 00508726    pop         ebx
 00508727    mov         esp,ebp
 00508729    pop         ebp
 0050872A    ret
*}
end;

//00508770
procedure TFormOptions.ListBoxMatieresClick(Sender:TObject);
begin
{*
 00508770    push        ebx
 00508771    mov         ebx,eax
 00508773    mov         eax,dword ptr [ebx+56C];TFormOptions.ListBoxMatieres:TListBox
 00508779    call        TCustomListBox.GetItemIndex
 0050877E    inc         eax
 0050877F    setne       dl
 00508782    mov         eax,dword ptr [ebx+598];TFormOptions.SpeedButton53:TSpeedButton
 00508788    mov         ecx,dword ptr [eax]
 0050878A    call        dword ptr [ecx+5C];TControl.SetEnabled
 0050878D    pop         ebx
 0050878E    ret
*}
end;

//00508790
procedure TFormOptions.CheckBox5Click(Sender:TObject);
begin
{*
 00508790    push        ebx
 00508791    mov         ebx,eax
 00508793    mov         eax,dword ptr [ebx+460];TFormOptions.CheckBox5:TCheckBox
 00508799    mov         edx,dword ptr [eax]
 0050879B    call        dword ptr [edx+0B4];TCustomCheckBox.GetChecked
 005087A1    mov         edx,eax
 005087A3    mov         eax,dword ptr [ebx+370];TFormOptions.SpeedButton1:TSpeedButton
 005087A9    mov         ecx,dword ptr [eax]
 005087AB    call        dword ptr [ecx+5C];TControl.SetEnabled
 005087AE    mov         eax,dword ptr [ebx+460];TFormOptions.CheckBox5:TCheckBox
 005087B4    mov         edx,dword ptr [eax]
 005087B6    call        dword ptr [edx+0B4];TCustomCheckBox.GetChecked
 005087BC    mov         edx,eax
 005087BE    mov         eax,dword ptr [ebx+374];TFormOptions.SpeedButton2:TSpeedButton
 005087C4    mov         ecx,dword ptr [eax]
 005087C6    call        dword ptr [ecx+5C];TControl.SetEnabled
 005087C9    mov         eax,dword ptr [ebx+460];TFormOptions.CheckBox5:TCheckBox
 005087CF    mov         edx,dword ptr [eax]
 005087D1    call        dword ptr [edx+0B4];TCustomCheckBox.GetChecked
 005087D7    mov         edx,eax
 005087D9    mov         eax,dword ptr [ebx+37C];TFormOptions.SpeedButton3:TSpeedButton
 005087DF    mov         ecx,dword ptr [eax]
 005087E1    call        dword ptr [ecx+5C];TControl.SetEnabled
 005087E4    mov         eax,dword ptr [ebx+460];TFormOptions.CheckBox5:TCheckBox
 005087EA    mov         edx,dword ptr [eax]
 005087EC    call        dword ptr [edx+0B4];TCustomCheckBox.GetChecked
 005087F2    mov         edx,eax
 005087F4    mov         eax,dword ptr [ebx+380];TFormOptions.SpeedButton4:TSpeedButton
 005087FA    mov         ecx,dword ptr [eax]
 005087FC    call        dword ptr [ecx+5C];TControl.SetEnabled
 005087FF    mov         eax,dword ptr [ebx+460];TFormOptions.CheckBox5:TCheckBox
 00508805    mov         edx,dword ptr [eax]
 00508807    call        dword ptr [edx+0B4];TCustomCheckBox.GetChecked
 0050880D    mov         edx,eax
 0050880F    mov         eax,dword ptr [ebx+38C];TFormOptions.SpeedButton5:TSpeedButton
 00508815    mov         ecx,dword ptr [eax]
 00508817    call        dword ptr [ecx+5C];TControl.SetEnabled
 0050881A    mov         eax,dword ptr [ebx+460];TFormOptions.CheckBox5:TCheckBox
 00508820    mov         edx,dword ptr [eax]
 00508822    call        dword ptr [edx+0B4];TCustomCheckBox.GetChecked
 00508828    mov         edx,eax
 0050882A    mov         eax,dword ptr [ebx+390];TFormOptions.SpeedButton6:TSpeedButton
 00508830    mov         ecx,dword ptr [eax]
 00508832    call        dword ptr [ecx+5C];TControl.SetEnabled
 00508835    mov         eax,dword ptr [ebx+460];TFormOptions.CheckBox5:TCheckBox
 0050883B    mov         edx,dword ptr [eax]
 0050883D    call        dword ptr [edx+0B4];TCustomCheckBox.GetChecked
 00508843    mov         edx,eax
 00508845    mov         eax,dword ptr [ebx+478];TFormOptions.SpeedButton16:TSpeedButton
 0050884B    mov         ecx,dword ptr [eax]
 0050884D    call        dword ptr [ecx+5C];TControl.SetEnabled
 00508850    mov         eax,dword ptr [ebx+460];TFormOptions.CheckBox5:TCheckBox
 00508856    mov         edx,dword ptr [eax]
 00508858    call        dword ptr [edx+0B4];TCustomCheckBox.GetChecked
 0050885E    mov         edx,eax
 00508860    mov         eax,dword ptr [ebx+47C];TFormOptions.SpeedButton17:TSpeedButton
 00508866    mov         ecx,dword ptr [eax]
 00508868    call        dword ptr [ecx+5C];TControl.SetEnabled
 0050886B    pop         ebx
 0050886C    ret
*}
end;

//00508870
procedure TFormOptions.SpeedButtonSupprimerMatieresClick(Sender:TObject);
begin
{*
 00508870    push        ebx
 00508871    mov         ebx,eax
 00508873    push        24
 00508875    mov         ecx,5088A0
 0050887A    mov         edx,5088C4
 0050887F    mov         eax,[00615FEC];^Application:TApplication
 00508884    mov         eax,dword ptr [eax]
 00508886    call        TApplication.MessageBox
 0050888B    cmp         eax,6
>0050888E    jne         0050889B
 00508890    mov         eax,dword ptr [ebx+56C];TFormOptions.ListBoxMatieres:TListBox
 00508896    call        TCustomListBox.Clear
 0050889B    pop         ebx
 0050889C    ret
*}
end;

//00508900
procedure TFormOptions.CouleurFondFenetreInfosDefaultSelect;
begin
{*
 00508900    push        ebx
 00508901    mov         ebx,eax
 00508903    call        004BB8AC
 00508908    mov         edx,eax
 0050890A    mov         eax,dword ptr [ebx+5D0];TFormOptions.CouleurFondFenetreInfos:TColorPickerButton
 00508910    call        TColorPickerButton.SetSelectionColor
 00508915    pop         ebx
 00508916    ret
*}
end;

//00508918
procedure TFormOptions.CouleurNotesEleveDefaultSelect;
begin
{*
 00508918    push        ebx
 00508919    mov         ebx,eax
 0050891B    call        004BBCAC
 00508920    mov         edx,eax
 00508922    mov         eax,dword ptr [ebx+5D4];TFormOptions.CouleurNotesEleve:TColorPickerButton
 00508928    call        TColorPickerButton.SetSelectionColor
 0050892D    pop         ebx
 0050892E    ret
*}
end;

//00508930
procedure TFormOptions.CouleurMinimumClasseDefaultSelect;
begin
{*
 00508930    push        ebx
 00508931    mov         ebx,eax
 00508933    call        004BBD0C
 00508938    mov         edx,eax
 0050893A    mov         eax,dword ptr [ebx+5D8];TFormOptions.CouleurMinimumClasse:TColorPickerButton
 00508940    call        TColorPickerButton.SetSelectionColor
 00508945    pop         ebx
 00508946    ret
*}
end;

//00508948
procedure TFormOptions.CouleurMaximumClasseDefaultSelect;
begin
{*
 00508948    push        ebx
 00508949    mov         ebx,eax
 0050894B    call        004BBCDC
 00508950    mov         edx,eax
 00508952    mov         eax,dword ptr [ebx+5DC];TFormOptions.CouleurMaximumClasse:TColorPickerButton
 00508958    call        TColorPickerButton.SetSelectionColor
 0050895D    pop         ebx
 0050895E    ret
*}
end;

//00508960
procedure TFormOptions.CouleurMoyenneClasseDefaultSelect;
begin
{*
 00508960    push        ebx
 00508961    mov         ebx,eax
 00508963    call        004BBD40
 00508968    mov         edx,eax
 0050896A    mov         eax,dword ptr [ebx+5E0];TFormOptions.CouleurMoyenneClasse:TColorPickerButton
 00508970    call        TColorPickerButton.SetSelectionColor
 00508975    pop         ebx
 00508976    ret
*}
end;

//00508978
procedure TFormOptions.CouleurDebutDegradeDefaultSelect;
begin
{*
 00508978    push        ebx
 00508979    mov         ebx,eax
 0050897B    call        004BBBD8
 00508980    mov         edx,eax
 00508982    mov         eax,dword ptr [ebx+5E4];TFormOptions.CouleurDebutDegrade:TColorPickerButton
 00508988    call        TColorPickerButton.SetSelectionColor
 0050898D    pop         ebx
 0050898E    ret
*}
end;

//00508990
procedure TFormOptions.CouleurFinDegradeDefaultSelect;
begin
{*
 00508990    push        ebx
 00508991    mov         ebx,eax
 00508993    call        004BBBE0
 00508998    mov         edx,eax
 0050899A    mov         eax,dword ptr [ebx+5E8];TFormOptions.CouleurFinDegrade:TColorPickerButton
 005089A0    call        TColorPickerButton.SetSelectionColor
 005089A5    pop         ebx
 005089A6    ret
*}
end;

//005089A8
procedure TFormOptions.CouleurMurGaucheDefaultSelect;
begin
{*
 005089A8    push        ebx
 005089A9    mov         ebx,eax
 005089AB    call        004BBDD0
 005089B0    mov         edx,eax
 005089B2    mov         eax,dword ptr [ebx+5EC];TFormOptions.CouleurMurGauche:TColorPickerButton
 005089B8    call        TColorPickerButton.SetSelectionColor
 005089BD    pop         ebx
 005089BE    ret
*}
end;

//005089C0
procedure TFormOptions.CouleurMurBasDefaultSelect;
begin
{*
 005089C0    push        ebx
 005089C1    mov         ebx,eax
 005089C3    call        004BBD9C
 005089C8    mov         edx,eax
 005089CA    mov         eax,dword ptr [ebx+5F0];TFormOptions.CouleurMurBas:TColorPickerButton
 005089D0    call        TColorPickerButton.SetSelectionColor
 005089D5    pop         ebx
 005089D6    ret
*}
end;

//005089D8
procedure TFormOptions.FormShow(Sender:TObject);
begin
{*
 005089D8    ret
*}
end;

//005089DC
procedure TFormOptions.SpeedButtonCollerListeTypesDeNotesClick(Sender:TObject);
begin
{*
 005089DC    push        ebp
 005089DD    mov         ebp,esp
 005089DF    xor         ecx,ecx
 005089E1    push        ecx
 005089E2    push        ecx
 005089E3    push        ecx
 005089E4    push        ecx
 005089E5    push        ecx
 005089E6    push        ebx
 005089E7    push        esi
 005089E8    push        edi
 005089E9    mov         dword ptr [ebp-4],eax
 005089EC    xor         eax,eax
 005089EE    push        ebp
 005089EF    push        508AC3
 005089F4    push        dword ptr fs:[eax]
 005089F7    mov         dword ptr fs:[eax],esp
 005089FA    call        Clipboard
 005089FF    mov         dx,1
 00508A03    call        TClipboard.HasFormat
 00508A08    test        al,al
>00508A0A    je          00508AA8
 00508A10    mov         dl,1
 00508A12    mov         eax,[004120B8];TStringList
 00508A17    call        TObject.Create;TStringList.Create
 00508A1C    mov         ebx,eax
 00508A1E    call        Clipboard
 00508A23    lea         edx,[ebp-0C]
 00508A26    call        TClipboard.GetAsText
 00508A2B    mov         edx,dword ptr [ebp-0C]
 00508A2E    mov         eax,ebx
 00508A30    mov         ecx,dword ptr [eax]
 00508A32    call        dword ptr [ecx+2C];TStrings.SetTextStr
 00508A35    mov         eax,ebx
 00508A37    mov         edx,dword ptr [eax]
 00508A39    call        dword ptr [edx+14];TStringList.GetCount
 00508A3C    sub         eax,1
>00508A3F    jno         00508A46
 00508A41    call        @IntOver
 00508A46    test        eax,eax
>00508A48    jl          00508A9F
 00508A4A    inc         eax
 00508A4B    mov         dword ptr [ebp-8],eax
 00508A4E    xor         esi,esi
 00508A50    lea         ecx,[ebp-10]
 00508A53    mov         edx,esi
 00508A55    mov         eax,ebx
 00508A57    mov         edi,dword ptr [eax]
 00508A59    call        dword ptr [edi+0C];TStringList.Get
 00508A5C    mov         edx,dword ptr [ebp-10]
 00508A5F    mov         eax,dword ptr [ebp-4]
 00508A62    mov         eax,dword ptr [eax+310];TFormOptions.typesDeNotes:TListBox
 00508A68    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 00508A6E    mov         ecx,dword ptr [eax]
 00508A70    call        dword ptr [ecx+50];TStrings.IndexOf
 00508A73    inc         eax
>00508A74    jne         00508A99
 00508A76    lea         ecx,[ebp-14]
 00508A79    mov         edx,esi
 00508A7B    mov         eax,ebx
 00508A7D    mov         edi,dword ptr [eax]
 00508A7F    call        dword ptr [edi+0C];TStringList.Get
 00508A82    mov         edx,dword ptr [ebp-14]
 00508A85    mov         eax,dword ptr [ebp-4]
 00508A88    mov         eax,dword ptr [eax+310];TFormOptions.typesDeNotes:TListBox
 00508A8E    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 00508A94    mov         ecx,dword ptr [eax]
 00508A96    call        dword ptr [ecx+34];TStrings.Add
 00508A99    inc         esi
 00508A9A    dec         dword ptr [ebp-8]
>00508A9D    jne         00508A50
 00508A9F    mov         dl,1
 00508AA1    mov         eax,ebx
 00508AA3    mov         ecx,dword ptr [eax]
 00508AA5    call        dword ptr [ecx-4];TStringList.Destroy
 00508AA8    xor         eax,eax
 00508AAA    pop         edx
 00508AAB    pop         ecx
 00508AAC    pop         ecx
 00508AAD    mov         dword ptr fs:[eax],edx
 00508AB0    push        508ACA
 00508AB5    lea         eax,[ebp-14]
 00508AB8    mov         edx,3
 00508ABD    call        @LStrArrayClr
 00508AC2    ret
>00508AC3    jmp         @HandleFinally
>00508AC8    jmp         00508AB5
 00508ACA    pop         edi
 00508ACB    pop         esi
 00508ACC    pop         ebx
 00508ACD    mov         esp,ebp
 00508ACF    pop         ebp
 00508AD0    ret
*}
end;

//00508AD4
procedure TFormOptions.SpeedButtonCollerListeEnseignantsClick(Sender:TObject);
begin
{*
 00508AD4    push        ebp
 00508AD5    mov         ebp,esp
 00508AD7    xor         ecx,ecx
 00508AD9    push        ecx
 00508ADA    push        ecx
 00508ADB    push        ecx
 00508ADC    push        ecx
 00508ADD    push        ecx
 00508ADE    push        ebx
 00508ADF    push        esi
 00508AE0    push        edi
 00508AE1    mov         dword ptr [ebp-4],eax
 00508AE4    xor         eax,eax
 00508AE6    push        ebp
 00508AE7    push        508BBB
 00508AEC    push        dword ptr fs:[eax]
 00508AEF    mov         dword ptr fs:[eax],esp
 00508AF2    call        Clipboard
 00508AF7    mov         dx,1
 00508AFB    call        TClipboard.HasFormat
 00508B00    test        al,al
>00508B02    je          00508BA0
 00508B08    mov         dl,1
 00508B0A    mov         eax,[004120B8];TStringList
 00508B0F    call        TObject.Create;TStringList.Create
 00508B14    mov         ebx,eax
 00508B16    call        Clipboard
 00508B1B    lea         edx,[ebp-0C]
 00508B1E    call        TClipboard.GetAsText
 00508B23    mov         edx,dword ptr [ebp-0C]
 00508B26    mov         eax,ebx
 00508B28    mov         ecx,dword ptr [eax]
 00508B2A    call        dword ptr [ecx+2C];TStrings.SetTextStr
 00508B2D    mov         eax,ebx
 00508B2F    mov         edx,dword ptr [eax]
 00508B31    call        dword ptr [edx+14];TStringList.GetCount
 00508B34    sub         eax,1
>00508B37    jno         00508B3E
 00508B39    call        @IntOver
 00508B3E    test        eax,eax
>00508B40    jl          00508B97
 00508B42    inc         eax
 00508B43    mov         dword ptr [ebp-8],eax
 00508B46    xor         esi,esi
 00508B48    lea         ecx,[ebp-10]
 00508B4B    mov         edx,esi
 00508B4D    mov         eax,ebx
 00508B4F    mov         edi,dword ptr [eax]
 00508B51    call        dword ptr [edi+0C];TStringList.Get
 00508B54    mov         edx,dword ptr [ebp-10]
 00508B57    mov         eax,dword ptr [ebp-4]
 00508B5A    mov         eax,dword ptr [eax+40C];TFormOptions.ListBoxUtilisateurs:TListBox
 00508B60    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 00508B66    mov         ecx,dword ptr [eax]
 00508B68    call        dword ptr [ecx+50];TStrings.IndexOf
 00508B6B    inc         eax
>00508B6C    jne         00508B91
 00508B6E    lea         ecx,[ebp-14]
 00508B71    mov         edx,esi
 00508B73    mov         eax,ebx
 00508B75    mov         edi,dword ptr [eax]
 00508B77    call        dword ptr [edi+0C];TStringList.Get
 00508B7A    mov         edx,dword ptr [ebp-14]
 00508B7D    mov         eax,dword ptr [ebp-4]
 00508B80    mov         eax,dword ptr [eax+40C];TFormOptions.ListBoxUtilisateurs:TListBox
 00508B86    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 00508B8C    mov         ecx,dword ptr [eax]
 00508B8E    call        dword ptr [ecx+34];TStrings.Add
 00508B91    inc         esi
 00508B92    dec         dword ptr [ebp-8]
>00508B95    jne         00508B48
 00508B97    mov         dl,1
 00508B99    mov         eax,ebx
 00508B9B    mov         ecx,dword ptr [eax]
 00508B9D    call        dword ptr [ecx-4];TStringList.Destroy
 00508BA0    xor         eax,eax
 00508BA2    pop         edx
 00508BA3    pop         ecx
 00508BA4    pop         ecx
 00508BA5    mov         dword ptr fs:[eax],edx
 00508BA8    push        508BC2
 00508BAD    lea         eax,[ebp-14]
 00508BB0    mov         edx,3
 00508BB5    call        @LStrArrayClr
 00508BBA    ret
>00508BBB    jmp         @HandleFinally
>00508BC0    jmp         00508BAD
 00508BC2    pop         edi
 00508BC3    pop         esi
 00508BC4    pop         ebx
 00508BC5    mov         esp,ebp
 00508BC7    pop         ebp
 00508BC8    ret
*}
end;

//00508BCC
procedure TFormOptions.SpeedButtonCollerListeMatieresClick(Sender:TObject);
begin
{*
 00508BCC    push        ebp
 00508BCD    mov         ebp,esp
 00508BCF    xor         ecx,ecx
 00508BD1    push        ecx
 00508BD2    push        ecx
 00508BD3    push        ecx
 00508BD4    push        ecx
 00508BD5    push        ecx
 00508BD6    push        ebx
 00508BD7    push        esi
 00508BD8    push        edi
 00508BD9    mov         dword ptr [ebp-4],eax
 00508BDC    xor         eax,eax
 00508BDE    push        ebp
 00508BDF    push        508CB3
 00508BE4    push        dword ptr fs:[eax]
 00508BE7    mov         dword ptr fs:[eax],esp
 00508BEA    call        Clipboard
 00508BEF    mov         dx,1
 00508BF3    call        TClipboard.HasFormat
 00508BF8    test        al,al
>00508BFA    je          00508C98
 00508C00    mov         dl,1
 00508C02    mov         eax,[004120B8];TStringList
 00508C07    call        TObject.Create;TStringList.Create
 00508C0C    mov         ebx,eax
 00508C0E    call        Clipboard
 00508C13    lea         edx,[ebp-0C]
 00508C16    call        TClipboard.GetAsText
 00508C1B    mov         edx,dword ptr [ebp-0C]
 00508C1E    mov         eax,ebx
 00508C20    mov         ecx,dword ptr [eax]
 00508C22    call        dword ptr [ecx+2C];TStrings.SetTextStr
 00508C25    mov         eax,ebx
 00508C27    mov         edx,dword ptr [eax]
 00508C29    call        dword ptr [edx+14];TStringList.GetCount
 00508C2C    sub         eax,1
>00508C2F    jno         00508C36
 00508C31    call        @IntOver
 00508C36    test        eax,eax
>00508C38    jl          00508C8F
 00508C3A    inc         eax
 00508C3B    mov         dword ptr [ebp-8],eax
 00508C3E    xor         esi,esi
 00508C40    lea         ecx,[ebp-10]
 00508C43    mov         edx,esi
 00508C45    mov         eax,ebx
 00508C47    mov         edi,dword ptr [eax]
 00508C49    call        dword ptr [edi+0C];TStringList.Get
 00508C4C    mov         edx,dword ptr [ebp-10]
 00508C4F    mov         eax,dword ptr [ebp-4]
 00508C52    mov         eax,dword ptr [eax+56C];TFormOptions.ListBoxMatieres:TListBox
 00508C58    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 00508C5E    mov         ecx,dword ptr [eax]
 00508C60    call        dword ptr [ecx+50];TStrings.IndexOf
 00508C63    inc         eax
>00508C64    jne         00508C89
 00508C66    lea         ecx,[ebp-14]
 00508C69    mov         edx,esi
 00508C6B    mov         eax,ebx
 00508C6D    mov         edi,dword ptr [eax]
 00508C6F    call        dword ptr [edi+0C];TStringList.Get
 00508C72    mov         edx,dword ptr [ebp-14]
 00508C75    mov         eax,dword ptr [ebp-4]
 00508C78    mov         eax,dword ptr [eax+56C];TFormOptions.ListBoxMatieres:TListBox
 00508C7E    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 00508C84    mov         ecx,dword ptr [eax]
 00508C86    call        dword ptr [ecx+34];TStrings.Add
 00508C89    inc         esi
 00508C8A    dec         dword ptr [ebp-8]
>00508C8D    jne         00508C40
 00508C8F    mov         dl,1
 00508C91    mov         eax,ebx
 00508C93    mov         ecx,dword ptr [eax]
 00508C95    call        dword ptr [ecx-4];TStringList.Destroy
 00508C98    xor         eax,eax
 00508C9A    pop         edx
 00508C9B    pop         ecx
 00508C9C    pop         ecx
 00508C9D    mov         dword ptr fs:[eax],edx
 00508CA0    push        508CBA
 00508CA5    lea         eax,[ebp-14]
 00508CA8    mov         edx,3
 00508CAD    call        @LStrArrayClr
 00508CB2    ret
>00508CB3    jmp         @HandleFinally
>00508CB8    jmp         00508CA5
 00508CBA    pop         edi
 00508CBB    pop         esi
 00508CBC    pop         ebx
 00508CBD    mov         esp,ebp
 00508CBF    pop         ebp
 00508CC0    ret
*}
end;

//00508CC4
procedure TFormOptions.SpeedButtonSupprimerEnseignantsClick(Sender:TObject);
begin
{*
 00508CC4    push        ebx
 00508CC5    mov         ebx,eax
 00508CC7    push        24
 00508CC9    mov         ecx,508CF4
 00508CCE    mov         edx,508D18
 00508CD3    mov         eax,[00615FEC];^Application:TApplication
 00508CD8    mov         eax,dword ptr [eax]
 00508CDA    call        TApplication.MessageBox
 00508CDF    cmp         eax,6
>00508CE2    jne         00508CEF
 00508CE4    mov         eax,dword ptr [ebx+40C];TFormOptions.ListBoxUtilisateurs:TListBox
 00508CEA    call        TCustomListBox.Clear
 00508CEF    pop         ebx
 00508CF0    ret
*}
end;

//00508D58
procedure TFormOptions.SpeedButtonSupprimerTypesDeNotesClick(Sender:TObject);
begin
{*
 00508D58    push        ebx
 00508D59    mov         ebx,eax
 00508D5B    push        24
 00508D5D    mov         ecx,508D88
 00508D62    mov         edx,508DAC
 00508D67    mov         eax,[00615FEC];^Application:TApplication
 00508D6C    mov         eax,dword ptr [eax]
 00508D6E    call        TApplication.MessageBox
 00508D73    cmp         eax,6
>00508D76    jne         00508D83
 00508D78    mov         eax,dword ptr [ebx+310];TFormOptions.typesDeNotes:TListBox
 00508D7E    call        TCustomListBox.Clear
 00508D83    pop         ebx
 00508D84    ret
*}
end;

//00508DEC
procedure TFormOptions.SpeedButtonRetablirHistoriqueClick(Sender:TObject);
begin
{*
 00508DEC    push        ebp
 00508DED    mov         ebp,esp
 00508DEF    push        0
 00508DF1    push        ebx
 00508DF2    push        esi
 00508DF3    mov         ebx,eax
 00508DF5    xor         eax,eax
 00508DF7    push        ebp
 00508DF8    push        508E9A
 00508DFD    push        dword ptr fs:[eax]
 00508E00    mov         dword ptr fs:[eax],esp
 00508E03    call        004B9500
 00508E08    mov         edx,eax
 00508E0A    mov         eax,dword ptr [ebx+39C];TFormOptions.ListBoxFichiers:TListBox
 00508E10    call        TCustomListBox.SetItems
 00508E15    mov         eax,dword ptr [ebx+39C];TFormOptions.ListBoxFichiers:TListBox
 00508E1B    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 00508E21    mov         edx,dword ptr [eax]
 00508E23    call        dword ptr [edx+14];TStrings.GetCount
 00508E26    test        eax,eax
>00508E28    je          00508E77
 00508E2A    xor         edx,edx
 00508E2C    mov         eax,dword ptr [ebx+39C];TFormOptions.ListBoxFichiers:TListBox
 00508E32    call        TCustomListBox.SetItemIndex
 00508E37    mov         dl,1
 00508E39    mov         eax,dword ptr [ebx+654];TFormOptions.SpeedButtonSupprimerLaListe:TSpeedButton
 00508E3F    mov         ecx,dword ptr [eax]
 00508E41    call        dword ptr [ecx+5C];TControl.SetEnabled
 00508E44    mov         dl,1
 00508E46    mov         eax,dword ptr [ebx+650];TFormOptions.SpeedButtonViderHistorique:TSpeedButton
 00508E4C    mov         ecx,dword ptr [eax]
 00508E4E    call        dword ptr [ecx+5C];TControl.SetEnabled
 00508E51    lea         ecx,[ebp-4]
 00508E54    mov         eax,dword ptr [ebx+39C];TFormOptions.ListBoxFichiers:TListBox
 00508E5A    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 00508E60    xor         edx,edx
 00508E62    mov         esi,dword ptr [eax]
 00508E64    call        dword ptr [esi+0C];TStrings.Get
 00508E67    mov         edx,dword ptr [ebp-4]
 00508E6A    mov         eax,dword ptr [ebx+5A8];TFormOptions.Label38:TLabel
 00508E70    call        TControl.SetText
>00508E75    jmp         00508E84
 00508E77    xor         edx,edx
 00508E79    mov         eax,dword ptr [ebx+5A8];TFormOptions.Label38:TLabel
 00508E7F    call        TControl.SetText
 00508E84    xor         eax,eax
 00508E86    pop         edx
 00508E87    pop         ecx
 00508E88    pop         ecx
 00508E89    mov         dword ptr fs:[eax],edx
 00508E8C    push        508EA1
 00508E91    lea         eax,[ebp-4]
 00508E94    call        @LStrClr
 00508E99    ret
>00508E9A    jmp         @HandleFinally
>00508E9F    jmp         00508E91
 00508EA1    pop         esi
 00508EA2    pop         ebx
 00508EA3    pop         ecx
 00508EA4    pop         ebp
 00508EA5    ret
*}
end;

//00508EA8
procedure TFormOptions.SpeedButtonViderHistoriqueClick(Sender:TObject);
begin
{*
 00508EA8    push        ebx
 00508EA9    mov         ebx,eax
 00508EAB    mov         eax,dword ptr [ebx+39C];TFormOptions.ListBoxFichiers:TListBox
 00508EB1    call        TCustomListBox.Clear
 00508EB6    xor         edx,edx
 00508EB8    mov         eax,dword ptr [ebx+5A8];TFormOptions.Label38:TLabel
 00508EBE    call        TControl.SetText
 00508EC3    mov         eax,dword ptr [ebx+39C];TFormOptions.ListBoxFichiers:TListBox
 00508EC9    call        TCustomListBox.GetItemIndex
 00508ECE    inc         eax
 00508ECF    setne       dl
 00508ED2    mov         eax,dword ptr [ebx+654];TFormOptions.SpeedButtonSupprimerLaListe:TSpeedButton
 00508ED8    mov         ecx,dword ptr [eax]
 00508EDA    call        dword ptr [ecx+5C];TControl.SetEnabled
 00508EDD    mov         eax,dword ptr [ebx+39C];TFormOptions.ListBoxFichiers:TListBox
 00508EE3    call        TCustomListBox.GetItemIndex
 00508EE8    inc         eax
 00508EE9    setne       dl
 00508EEC    mov         eax,dword ptr [ebx+650];TFormOptions.SpeedButtonViderHistorique:TSpeedButton
 00508EF2    mov         ecx,dword ptr [eax]
 00508EF4    call        dword ptr [ecx+5C];TControl.SetEnabled
 00508EF7    pop         ebx
 00508EF8    ret
*}
end;

//00508EFC
procedure TFormOptions.SpeedButtonSupprimerLaListeClick(Sender:TObject);
begin
{*
 00508EFC    push        ebp
 00508EFD    mov         ebp,esp
 00508EFF    push        0
 00508F01    push        ebx
 00508F02    push        esi
 00508F03    mov         ebx,eax
 00508F05    xor         eax,eax
 00508F07    push        ebp
 00508F08    push        508FDA
 00508F0D    push        dword ptr fs:[eax]
 00508F10    mov         dword ptr fs:[eax],esp
 00508F13    mov         eax,dword ptr [ebx+39C];TFormOptions.ListBoxFichiers:TListBox
 00508F19    call        TCustomListBox.GetItemIndex
 00508F1E    inc         eax
>00508F1F    je          00508F90
 00508F21    mov         esi,dword ptr [ebx+39C];TFormOptions.ListBoxFichiers:TListBox
 00508F27    mov         eax,esi
 00508F29    call        TCustomListBox.GetItemIndex
 00508F2E    mov         edx,eax
 00508F30    mov         eax,dword ptr [esi+1F0];TListBox.FItems:TStrings
 00508F36    mov         ecx,dword ptr [eax]
 00508F38    call        dword ptr [ecx+44];TStrings.Delete
 00508F3B    mov         eax,dword ptr [ebx+39C];TFormOptions.ListBoxFichiers:TListBox
 00508F41    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 00508F47    mov         edx,dword ptr [eax]
 00508F49    call        dword ptr [edx+14];TStrings.GetCount
 00508F4C    test        eax,eax
>00508F4E    je          00508F83
 00508F50    xor         edx,edx
 00508F52    mov         eax,dword ptr [ebx+39C];TFormOptions.ListBoxFichiers:TListBox
 00508F58    call        TCustomListBox.SetItemIndex
 00508F5D    lea         ecx,[ebp-4]
 00508F60    mov         eax,dword ptr [ebx+39C];TFormOptions.ListBoxFichiers:TListBox
 00508F66    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 00508F6C    xor         edx,edx
 00508F6E    mov         esi,dword ptr [eax]
 00508F70    call        dword ptr [esi+0C];TStrings.Get
 00508F73    mov         edx,dword ptr [ebp-4]
 00508F76    mov         eax,dword ptr [ebx+5A8];TFormOptions.Label38:TLabel
 00508F7C    call        TControl.SetText
>00508F81    jmp         00508F90
 00508F83    xor         edx,edx
 00508F85    mov         eax,dword ptr [ebx+5A8];TFormOptions.Label38:TLabel
 00508F8B    call        TControl.SetText
 00508F90    mov         eax,dword ptr [ebx+39C];TFormOptions.ListBoxFichiers:TListBox
 00508F96    call        TCustomListBox.GetItemIndex
 00508F9B    inc         eax
 00508F9C    setne       dl
 00508F9F    mov         eax,dword ptr [ebx+650];TFormOptions.SpeedButtonViderHistorique:TSpeedButton
 00508FA5    mov         ecx,dword ptr [eax]
 00508FA7    call        dword ptr [ecx+5C];TControl.SetEnabled
 00508FAA    mov         eax,dword ptr [ebx+39C];TFormOptions.ListBoxFichiers:TListBox
 00508FB0    call        TCustomListBox.GetItemIndex
 00508FB5    inc         eax
 00508FB6    setne       dl
 00508FB9    mov         eax,dword ptr [ebx+654];TFormOptions.SpeedButtonSupprimerLaListe:TSpeedButton
 00508FBF    mov         ecx,dword ptr [eax]
 00508FC1    call        dword ptr [ecx+5C];TControl.SetEnabled
 00508FC4    xor         eax,eax
 00508FC6    pop         edx
 00508FC7    pop         ecx
 00508FC8    pop         ecx
 00508FC9    mov         dword ptr fs:[eax],edx
 00508FCC    push        508FE1
 00508FD1    lea         eax,[ebp-4]
 00508FD4    call        @LStrClr
 00508FD9    ret
>00508FDA    jmp         @HandleFinally
>00508FDF    jmp         00508FD1
 00508FE1    pop         esi
 00508FE2    pop         ebx
 00508FE3    pop         ecx
 00508FE4    pop         ebp
 00508FE5    ret
*}
end;

//00508FE8
procedure TFormOptions.SpeedButtonAjouterALaListeClick(Sender:TObject);
begin
{*
 00508FE8    push        ebp
 00508FE9    mov         ebp,esp
 00508FEB    xor         ecx,ecx
 00508FED    push        ecx
 00508FEE    push        ecx
 00508FEF    push        ecx
 00508FF0    push        ecx
 00508FF1    push        ecx
 00508FF2    push        ecx
 00508FF3    push        ecx
 00508FF4    push        ecx
 00508FF5    push        ebx
 00508FF6    push        esi
 00508FF7    mov         esi,eax
 00508FF9    xor         eax,eax
 00508FFB    push        ebp
 00508FFC    push        509166
 00509001    push        dword ptr fs:[eax]
 00509004    mov         dword ptr fs:[eax],esp
 00509007    lea         edx,[ebp-8]
 0050900A    mov         eax,dword ptr [esi+34C];TFormOptions.Edit2:TEdit
 00509010    call        TControl.GetText
 00509015    mov         edx,dword ptr [ebp-8]
 00509018    mov         eax,dword ptr [esi+344];TFormOptions.Periodes:TListBox
 0050901E    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 00509024    mov         ecx,dword ptr [eax]
 00509026    call        dword ptr [ecx+50];TStrings.IndexOf
 00509029    inc         eax
>0050902A    jne         00509136
 00509030    lea         edx,[ebp-0C]
 00509033    mov         eax,dword ptr [esi+34C];TFormOptions.Edit2:TEdit
 00509039    call        TControl.GetText
 0050903E    mov         edx,dword ptr [ebp-0C]
 00509041    mov         eax,dword ptr [esi+344];TFormOptions.Periodes:TListBox
 00509047    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 0050904D    mov         ecx,dword ptr [eax]
 0050904F    call        dword ptr [ecx+34];TStrings.Add
 00509052    mov         eax,dword ptr [esi+358];TFormOptions.ListBoxSousPeriodes:TListBox
 00509058    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 0050905E    mov         edx,dword ptr [eax]
 00509060    call        dword ptr [edx+40];TStrings.Clear
 00509063    mov         eax,dword ptr [esi+604];TFormOptions.NombreSousPeriodes:TRxSpinEdit
 00509069    call        TRxSpinEdit.GetValue
 0050906E    call        @TRUNC
 00509073    cmp         edx,0
>00509076    jne         0050907D
 00509078    cmp         eax,0FF
>0050907D    jbe         00509084
 0050907F    call        @BoundErr
 00509084    mov         ebx,eax
 00509086    test        bl,bl
>00509088    jbe         005090DC
 0050908A    mov         byte ptr [ebp-1],1
 0050908E    lea         edx,[ebp-14]
 00509091    mov         eax,dword ptr [esi+34C];TFormOptions.Edit2:TEdit
 00509097    call        TControl.GetText
 0050909C    push        dword ptr [ebp-14]
 0050909F    push        50917C;' '
 005090A4    lea         edx,[ebp-18]
 005090A7    xor         eax,eax
 005090A9    mov         al,byte ptr [ebp-1]
 005090AC    call        IntToStr
 005090B1    push        dword ptr [ebp-18]
 005090B4    lea         eax,[ebp-10]
 005090B7    mov         edx,3
 005090BC    call        @LStrCatN
 005090C1    mov         edx,dword ptr [ebp-10]
 005090C4    mov         eax,dword ptr [esi+358];TFormOptions.ListBoxSousPeriodes:TListBox
 005090CA    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 005090D0    mov         ecx,dword ptr [eax]
 005090D2    call        dword ptr [ecx+34];TStrings.Add
 005090D5    inc         byte ptr [ebp-1]
 005090D8    dec         bl
>005090DA    jne         0050908E
 005090DC    lea         edx,[ebp-1C]
 005090DF    mov         eax,dword ptr [esi+34C];TFormOptions.Edit2:TEdit
 005090E5    call        TControl.GetText
 005090EA    mov         eax,dword ptr [ebp-1C]
 005090ED    mov         edx,dword ptr [esi+358];TFormOptions.ListBoxSousPeriodes:TListBox
 005090F3    mov         edx,dword ptr [edx+1F0];TListBox.FItems:TStrings
 005090F9    call        004BA7B0
 005090FE    lea         edx,[ebp-20]
 00509101    mov         eax,dword ptr [esi+34C];TFormOptions.Edit2:TEdit
 00509107    call        TControl.GetText
 0050910C    mov         edx,dword ptr [ebp-20]
 0050910F    mov         ebx,dword ptr [esi+344];TFormOptions.Periodes:TListBox
 00509115    mov         eax,dword ptr [ebx+1F0];TListBox.FItems:TStrings
 0050911B    mov         ecx,dword ptr [eax]
 0050911D    call        dword ptr [ecx+50];TStrings.IndexOf
 00509120    mov         edx,eax
 00509122    mov         eax,ebx
 00509124    call        TCustomListBox.SetItemIndex
 00509129    mov         dl,1
 0050912B    mov         eax,dword ptr [esi+430];TFormOptions.Edit7:TEdit
 00509131    mov         ecx,dword ptr [eax]
 00509133    call        dword ptr [ecx+5C];TControl.SetEnabled
 00509136    xor         eax,eax
 00509138    pop         edx
 00509139    pop         ecx
 0050913A    pop         ecx
 0050913B    mov         dword ptr fs:[eax],edx
 0050913E    push        50916D
 00509143    lea         eax,[ebp-20]
 00509146    mov         edx,2
 0050914B    call        @LStrArrayClr
 00509150    lea         eax,[ebp-18]
 00509153    call        @LStrClr
 00509158    lea         eax,[ebp-14]
 0050915B    mov         edx,4
 00509160    call        @LStrArrayClr
 00509165    ret
>00509166    jmp         @HandleFinally
>0050916B    jmp         00509143
 0050916D    pop         esi
 0050916E    pop         ebx
 0050916F    mov         esp,ebp
 00509171    pop         ebp
 00509172    ret
*}
end;

//00509180
procedure TFormOptions.SpeedButtonListeParDefautClick(Sender:TObject);
begin
{*
 00509180    push        ebp
 00509181    mov         ebp,esp
 00509183    push        0
 00509185    push        ebx
 00509186    mov         ebx,eax
 00509188    xor         eax,eax
 0050918A    push        ebp
 0050918B    push        5091FE
 00509190    push        dword ptr fs:[eax]
 00509193    mov         dword ptr fs:[eax],esp
 00509196    lea         eax,[ebp-4]
 00509199    mov         edx,509214;'Revenir à la liste des types de périodes par défaut ?'
 0050919E    call        @LStrLAsg
 005091A3    push        24
 005091A5    mov         eax,dword ptr [ebp-4]
 005091A8    call        @LStrToPChar
 005091AD    mov         edx,eax
 005091AF    mov         ecx,50924C
 005091B4    mov         eax,[00615FEC];^Application:TApplication
 005091B9    mov         eax,dword ptr [eax]
 005091BB    call        TApplication.MessageBox
 005091C0    cmp         eax,6
>005091C3    jne         005091E8
 005091C5    call        004B9B44
 005091CA    mov         edx,eax
 005091CC    mov         eax,dword ptr [ebx+344];TFormOptions.Periodes:TListBox
 005091D2    call        TCustomListBox.SetItems
 005091D7    mov         eax,dword ptr [ebx+358];TFormOptions.ListBoxSousPeriodes:TListBox
 005091DD    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 005091E3    mov         edx,dword ptr [eax]
 005091E5    call        dword ptr [edx+40];TStrings.Clear
 005091E8    xor         eax,eax
 005091EA    pop         edx
 005091EB    pop         ecx
 005091EC    pop         ecx
 005091ED    mov         dword ptr fs:[eax],edx
 005091F0    push        509205
 005091F5    lea         eax,[ebp-4]
 005091F8    call        @LStrClr
 005091FD    ret
>005091FE    jmp         @HandleFinally
>00509203    jmp         005091F5
 00509205    pop         ebx
 00509206    pop         ecx
 00509207    pop         ebp
 00509208    ret
*}
end;

//00509270
procedure TFormOptions.SpeedButtonSupprimerDeLaListeClick(Sender:TObject);
begin
{*
 00509270    push        ebp
 00509271    mov         ebp,esp
 00509273    push        0
 00509275    push        0
 00509277    push        0
 00509279    push        ebx
 0050927A    push        esi
 0050927B    mov         ebx,eax
 0050927D    xor         eax,eax
 0050927F    push        ebp
 00509280    push        509369
 00509285    push        dword ptr fs:[eax]
 00509288    mov         dword ptr fs:[eax],esp
 0050928B    push        509380;'Supprimer le type de période : "'
 00509290    mov         esi,dword ptr [ebx+344];TFormOptions.Periodes:TListBox
 00509296    mov         eax,esi
 00509298    call        TCustomListBox.GetItemIndex
 0050929D    mov         edx,eax
 0050929F    lea         ecx,[ebp-8]
 005092A2    mov         eax,dword ptr [esi+1F0];TListBox.FItems:TStrings
 005092A8    mov         esi,dword ptr [eax]
 005092AA    call        dword ptr [esi+0C];TStrings.Get
 005092AD    push        dword ptr [ebp-8]
 005092B0    push        5093AC;'" ?'
 005092B5    lea         eax,[ebp-4]
 005092B8    mov         edx,3
 005092BD    call        @LStrCatN
 005092C2    push        24
 005092C4    mov         eax,dword ptr [ebp-4]
 005092C7    call        @LStrToPChar
 005092CC    mov         edx,eax
 005092CE    mov         ecx,5093B0
 005092D3    mov         eax,[00615FEC];^Application:TApplication
 005092D8    mov         eax,dword ptr [eax]
 005092DA    call        TApplication.MessageBox
 005092DF    cmp         eax,6
>005092E2    jne         0050934E
 005092E4    mov         esi,dword ptr [ebx+344];TFormOptions.Periodes:TListBox
 005092EA    mov         eax,esi
 005092EC    call        TCustomListBox.GetItemIndex
 005092F1    mov         edx,eax
 005092F3    lea         ecx,[ebp-0C]
 005092F6    mov         eax,dword ptr [esi+1F0];TListBox.FItems:TStrings
 005092FC    mov         esi,dword ptr [eax]
 005092FE    call        dword ptr [esi+0C];TStrings.Get
 00509301    mov         eax,dword ptr [ebp-0C]
 00509304    call        004BA964
 00509309    mov         esi,dword ptr [ebx+344];TFormOptions.Periodes:TListBox
 0050930F    mov         eax,esi
 00509311    call        TCustomListBox.GetItemIndex
 00509316    mov         edx,eax
 00509318    mov         eax,dword ptr [esi+1F0];TListBox.FItems:TStrings
 0050931E    mov         ecx,dword ptr [eax]
 00509320    call        dword ptr [ecx+44];TStrings.Delete
 00509323    mov         eax,dword ptr [ebx+358];TFormOptions.ListBoxSousPeriodes:TListBox
 00509329    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 0050932F    mov         edx,dword ptr [eax]
 00509331    call        dword ptr [edx+40];TStrings.Clear
 00509334    xor         edx,edx
 00509336    mov         eax,dword ptr [ebx+660];TFormOptions.SpeedButtonSupprimerDeLaListe:TSpeedButton
 0050933C    mov         ecx,dword ptr [eax]
 0050933E    call        dword ptr [ecx+5C];TControl.SetEnabled
 00509341    xor         edx,edx
 00509343    mov         eax,dword ptr [ebx+430];TFormOptions.Edit7:TEdit
 00509349    call        TControl.SetText
 0050934E    xor         eax,eax
 00509350    pop         edx
 00509351    pop         ecx
 00509352    pop         ecx
 00509353    mov         dword ptr fs:[eax],edx
 00509356    push        509370
 0050935B    lea         eax,[ebp-0C]
 0050935E    mov         edx,3
 00509363    call        @LStrArrayClr
 00509368    ret
>00509369    jmp         @HandleFinally
>0050936E    jmp         0050935B
 00509370    pop         esi
 00509371    pop         ebx
 00509372    mov         esp,ebp
 00509374    pop         ebp
 00509375    ret
*}
end;

end.