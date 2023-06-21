{***********************************************************
* Version Original V0.03 build 1                           *
* Decompiled by HOUIDEF AEK v 3:28 lundi, août 27, 2018    *
* The disassembly process : 100%                           *
************************************************************}
unit _FormImprimer;

interface

uses
Forms, Windows,  SysUtils, Classes, ExtCtrls, Buttons, Dialogs, 
StdCtrls, CheckLst, Tabs, Graphics, UFichierCdn, UBlocTexte,
UImpressionGrilleNotes, Printers ,UBiblio, _FormConfirmerImpression,
UEnregistrement, UImpressionGrilleBilan, UmpressionAppreciation, 
UImpressionGrilleVierge,UViewer;

type
  TFormImprimer = class(TForm)
  published
    Panel2:TPanel;//f2D0
    Bevel2:TBevel;//f2D4
    Image1:TImage;//f2D8
    SpeedButton1:TSpeedButton;//f2DC
    SpeedButton3:TSpeedButton;//f2E0
    SpeedButton4:TSpeedButton;//f2E4
    SpeedButton5:TSpeedButton;//f2E8
    PrinterSetupDialog1:TPrinterSetupDialog;//f2EC
    Notebook1:TNotebook;//f2F0
    Label1:TLabel;//f2F4
    CheckListBoxPeriodes:TCheckListBox;//f2F8
    Label6:TLabel;//f2FC
    Label7:TLabel;//f300
    Label8:TLabel;//f304
    ComboBoxEnteteGauche:TComboBox;//f308
    ComboBoxEnteteCentre:TComboBox;//f30C
    ComboBoxEnteteDroite:TComboBox;//f310
    CheckBoxEnTeteGauche:TCheckBox;//f314
    CheckBoxEnTeteCentre:TCheckBox;//f318
    CheckBoxEnTeteDroite:TCheckBox;//f31C
    Label5:TLabel;//f320
    Label9:TLabel;//f324
    Label10:TLabel;//f328
    ComboBoxBasdepageGauche:TComboBox;//f32C
    ComboBoxBasdepageCentre:TComboBox;//f330
    ComboBoxBasdepageDroite:TComboBox;//f334
    CheckBoxBasdepageGauche:TCheckBox;//f338
    CheckBoxBasdepageCentre:TCheckBox;//f33C
    CheckBoxBasdepageDroite:TCheckBox;//f340
    TabSet1:TTabSet;//f344
    ComboBox1:TComboBox;//f348
    Label2:TLabel;//f34C
    FontDialog1:TFontDialog;//f350
    SpeedButton2:TSpeedButton;//f354
    Label3:TLabel;//f358
    Bevel1:TBevel;//f35C
    Bevel3:TBevel;//f360
    Panel1:TPanel;//f364
    Label4:TLabel;//f368
    CheckBox1:TCheckBox;//f36C
    procedure ComboBox1Change(Sender:TObject);//00526028
    procedure SpeedButton1Click(Sender:TObject);//00525884
    procedure FormKeyPress(Sender:TObject; var Key:Char);//005262E8
    procedure FormDestroy(Sender:TObject);//005263D0
    procedure SpeedButton2Click(Sender:TObject);//00526304
    procedure BitBtn1Click(Sender:TObject);//005257C4
    procedure BitBtnImprimerClick(Sender:TObject);//005250F4
    procedure BitBtn3Click(Sender:TObject);//005250D0
    procedure FormCreate(Sender:TObject);//005252F0
    procedure CheckListBoxPeriodesClickCheck(Sender:TObject);//00525734
    procedure TabSet1Change(Sender: TObject; NewTab: Integer; var AllowChange: Boolean);//00525450
  public
    FFont:TFont;//f370
    FCdn:TFichierCdn;//f374
    FStringList:TStringList;//f378
    destructor Destroy; virtual;//0052561C
    constructor Create(Aowner:TComponent; FichierCdn:TFichierCdn; logo:Timage);//00524C1C
    procedure CopyFromFcdn;//00525464
    procedure DrawContentInCanvas(Id_Periode:dword);//00525794
    procedure ImprGrilleBilan(Id_Periode:dword);//005257AC
    procedure Imprimer_(GrilleType:dword; Id_Periode:dword);//0052588C
    procedure ImprAppreciation(Id_Periode:dword);//005262DC
    procedure ImprGrilleVierge ;//005262F8
  end;
var 
  FormImprimer :TFormImprimer; {gvar_00617E04} 
implementation
   uses _FormOptions;
{$R *.DFM}

//00524C1C
constructor TFormImprimer.Create(Aowner:TComponent; FichierCdn:TFichierCdn; logo:Timage);
var
  I,J:integer;
begin//0
    inherited Create(Aowner);
    FCdn := FichierCdn{d};
    Image1.Picture := logo.Picture;
    FFont := TFont.Create;
    FFont.Name := GetNomPolice();
    FFont.Size := GetTaillePolice();
    Panel1.Color := $E2FFFF;
    Label3.Caption := FFont.Name + ' (' + IntToStr(FFont.Size) + ')';
    FontDialog1.Font.Name := 'Times New Roman';
    FontDialog1.Font.Size := 9;
    CheckListBoxPeriodes.Items := FCdn.GetPeriodeNameList;
    for I := 0 to CheckListBoxPeriodes.Items.Count-1 do //00524D71
    begin//00524D77
	    J:= FCdn.NbrSerieNotes(I+1);
        if (J = 0) then//00524DA6
          CheckListBoxPeriodes.Items.Strings[I] := CheckListBoxPeriodes.Items[I] + ' (aucune série de notes)'
        else//00524DE4
          if (J = 1) then//00524DEA
            CheckListBoxPeriodes.Items.Strings[I] := CheckListBoxPeriodes.Items[I] + ' (1 série de notes)'
          else //00524E25
            CheckListBoxPeriodes.Items.Strings[I] := CheckListBoxPeriodes.Items[I] + ' (' + IntToStr(J) + ' séries de notes)';
    end;//3
    ComboBox1.ItemIndex := 0;
    FStringList := TStringList.Create;
    CopyFromFcdn;
    ComboBoxEnteteGauche.Items := FStringList;
    ComboBoxEnteteCentre.Items := FStringList;
    ComboBoxEnteteDroite.Items := FStringList;
    ComboBoxBasdepageGauche.Items := FStringList;
    ComboBoxBasdepageDroite.Items := FStringList;
    ComboBoxEnteteGauche.text := FCdn.GetMatiereName;
    ComboBoxEnteteCentre.text := FCdn.GetClasseName;
    ComboBoxEnteteDroite.text := FCdn.GetYear;
    ComboBoxBasdepageGauche.text := TimeToStr(Time);
    ComboBoxBasdepageDroite.text := DateToStr(Date);  
end;//0


//005250F4
procedure TFormImprimer.BitBtnImprimerClick(Sender:TObject);
var
 F,I:integer;
begin
  //005250F4
  if (ComboBox1.ItemIndex = 0) then
  begin//1
    //00525109
      F := 0;
      for I := 0 to CheckListBoxPeriodes.Items.Count - 1 do //0052512C
      begin//0052512F
        if (CheckListBoxPeriodes.Checked[I] ) then 
		begin
        F := F+1;
		end;
      end;//3
    
    if (F = 0) then
    begin//00525154
      MessageBoxA(0, 'Aucune période sélectionnée !', 'Carnet de Notes version Personnelle', 16);
      Exit;
    end;//2
    DrawContentInCanvas(F);
  end;
  if (ComboBox1.ItemIndex  = 1) then
  begin//00525183
    F := 0;
      for I := 0 to CheckListBoxPeriodes.Items.Count - 1 do//005251A9
        if (CheckListBoxPeriodes.Checked[I]) then 
			F := F+1;

    
    if (F = 0) then //005251CE
      MessageBoxA(0, 'Aucune période sélectionnée !', 'Carnet de Notes version Personnelle', 16)
	else 
      ImprGrilleBilan(F);
  end;//1
  
  if (ComboBox1.ItemIndex = 2) then
  begin//1
    //005251FF
    F:=0;
      for I := 0 to CheckListBoxPeriodes.Items.Count - 1 do//00525222
        if (CheckListBoxPeriodes.Checked[I]) then //00525225
			F := F + 1;//EBP

   
    if (F = 0) then//0052524A
      MessageBoxA(0, 'Aucune période sélectionnée !', 'Carnet de Notes version Personnelle', 16)
    else 
      ImprAppreciation(F);
  end;//1
  if (ComboBox1.ItemIndex = 3) then //00525285
    ImprGrilleVierge ;

  if (CheckBox1.Checked ) then //0052529E
    Close;
end;

//005250D0
procedure TFormImprimer.BitBtn3Click(Sender:TObject);
begin//0
  //005250D0
  if (Printer.Printers.Count > 0) then//005250E6
     PrinterSetupDialog1.Execute;

end;//0

//005252F0
procedure TFormImprimer.FormCreate(Sender:TObject);
var
  buf:string;
  I:integer;
begin//0
  //005252F0
    //0052530F
    CheckBox1.Checked := GetImpressionFermerBoite;
    TabSet1.Tabs := Notebook1.Pages;
    //EDI := ComboBoxBasdepageCentre;
    if (IsRegistred) then
    begin//2
      //0052534A
        for I := 1 to NbrUtilisateursEnregistres do //00525355
        begin//0052535C
          GetNomUtilisateurEnregistrement(I, buf);
          ComboBoxBasdepageCentre.Items.Add(buf);
        end;//4
    end//2
    else//0052537D
      ComboBoxBasdepageCentre.Items.Add('VERSION NON ENREGISTREE');

    ComboBoxBasdepageCentre.ItemIndex := 0;
    GetBasDePageGauche(buf); //basDePageGauche
    ComboBoxBasdepageGauche.Text := buf;
    GetBasDePageDroite(buf); //basDePageDroite
    ComboBoxBasdepageDroite.Text := buf;
    GetEnTeteGauche(buf); //enTeteGauche
    ComboBoxEnteteGauche.Text := buf;
    GetEnTeteCentre(buf); //enTeteGauche
    ComboBoxEnteteCentre.Text := buf;
    GetEnTeteDroite(buf);
    ComboBoxEnteteDroite.Text := buf;
end;//0


//00525450
procedure TFormImprimer.TabSet1Change(Sender: TObject; NewTab: Integer;var AllowChange: Boolean);
begin
  Notebook1.PageIndex := NewTab;
end;

//00525464
procedure TFormImprimer.CopyFromFcdn;
var
  buf:string;
  I:integer;
begin//0
    FStringList.add(FCdn.GetClasseName);
    FStringList.add(FCdn.GetMatiereName);
    FStringList.add(FCdn.GetEnseignant);
    FStringList.add(FCdn.GetYear);

      for I := 1 to FCdn.NbrePeriodes do//00525563
      begin//3
        //0052556A
        FStringList.add(FCdn.GetPeriodeName(I));
      end;//3
    FStringList.add(DateToStr(Date));
    FStringList.add(TimeToStr(Time));
end;//0

//0052561C
destructor TFormImprimer.Destroy;
begin//0
    SetBasDePageGauche(ComboBoxBasdepageGauche.Text);
    SetBasDePageDroite(ComboBoxBasdepageDroite.Text);
    SetEnTeteGauche(ComboBoxEnteteGauche.Text);
    SetEnTeteCentre(ComboBoxEnteteCentre.Text);
    SetEnTeteDroite(ComboBoxEnteteDroite.Text);
    SetNomPolice(FFont.Name);
    SetTaillePolice(FFont.Size);
    FStringList.destroy;
    inherited Destroy;
end;//0


//00525734
procedure TFormImprimer.CheckListBoxPeriodesClickCheck(Sender:TObject);
var
  I:integer;
begin//0
    for I := 0 to CheckListBoxPeriodes.Items.Count - 1 do//0052575A
    begin//2
      //0052575D
      if (CheckListBoxPeriodes.ItemIndex <> I) then 
      if (CheckListBoxPeriodes.Checked[I] ) then 
		CheckListBoxPeriodes.Checked[I] := False;
    end;//2
end;//0


//00525794
procedure TFormImprimer.DrawContentInCanvas(Id_Periode:dword); //Impression Grille Notes
begin//0
  //00525794
  Imprimer_(0, Id_Periode);
end;//0



//005257AC
procedure TFormImprimer.ImprGrilleBilan(Id_Periode:dword); //Impression Grille Bilan
begin//0
  //005257AC
  Imprimer_(1, Id_Periode);
end;//0


//005257C4
procedure TFormImprimer.BitBtn1Click(Sender:TObject);
begin//0
  {gvar_00617D64}FormOptions := TFormOptions.Create(Self, Image1);
  FormOptions.PageControl1.ActivePage := FormOptions.TabSheet3;
  case ComboBox1.ItemIndex of
    0:
    begin//2
      //00525814
      FormOptions.PageControl2.ActivePage := FormOptions.TabSheet13;
    end;//2
    1:
    begin//2
      //0052582B
      FormOptions.PageControl2.ActivePage := FormOptions.TabSheet14;
    end;//2
    2:
    begin//2
      //00525842
      FormOptions.PageControl2.ActivePage:= FormOptions.TabSheet16;
    end;//2
    3:
    begin//2
      //00525859
      FormOptions.PageControl2.ActivePage := FormOptions.TabSheet15;
    end;//2
  end;//1
  FormOptions.ShowModal;
  FormOptions.Destroy;
end;//0


//00525884
procedure TFormImprimer.SpeedButton1Click(Sender:TObject);
begin
 close;
end;

//0052588C
procedure TFormImprimer.Imprimer_(GrilleType:dword; Id_Periode:dword);
var
 EnteteDePage : TEnteteBasDePage;
 BasDePage : TEnteteBasDePage;
 VImpressionGrilleNotes : TImpressionGrilleNotes;
 VImpressionGrilleBilan : TImpressionGrilleBilan;
 VImpressionAppreciation : TImpressionAppreciation;
 VImpressionGrilleVierge : TImpressionGrilleVierge;
begin//0
    MainForm := TMainForm.Create(self);
	MainForm.parent := self.parent;
	MainForm.GeneratePages;
    if (GrilleType = 0) then
    begin//005258D6
      if (FCdn.NbrSerieNotes(Id_Periode) = 0) then
      begin//005258E8
        MessageBoxA(0, 'Aucune série de notes pour cette période !', 'Carnet de Notes version Personnelle', $10{16});
        Exit;
      end;//3
    end;
    EnteteDePage := TEnteteBasDePage.Create(TBlocTexte.Create(ComboBoxEnteteGauche.Text,CheckBoxEnTeteGauche.Checked),
								     TBlocTexte.Create(ComboBoxEnteteCentre.Text,CheckBoxEnTeteCentre.Checked),
								     TBlocTexte.Create(ComboBoxEnteteDroite.Text,CheckBoxEnTeteDroite.Checked));
    BasDePage := TEnteteBasDePage.Create(TBlocTexte.Create(ComboBoxBasdepageGauche.Text,CheckBoxBasdepageGauche.Checked),
									 TBlocTexte.Create(ComboBoxBasdepageCentre.Text,CheckBoxBasdepageCentre.Checked), 
								     TBlocTexte.Create(ComboBoxBasdepageDroite.Text,CheckBoxBasdepageDroite.Checked));
    case GrilleType of
      0://00525A5C        
        VImpressionGrilleNotes := TImpressionGrilleNotes.Create(FCdn, MainForm.PrintPreview,EnteteDePage , BasDePage, Id_Periode, GetSeriesdeNotes(0), GetNumeroterElevesSeriesDeNotes,FFont);
      1://00525AA1
        VImpressionGrilleBilan := TImpressionGrilleBilan.Create(FCdn, Printer.Canvas,EnteteDePage , BasDePage, Id_Periode, GetSeriesdeNotes(1), GetNumeroterElevesBilans,FFont);
      2://00525AE3
        VImpressionAppreciation := TImpressionAppreciation.Create(FCdn, Printer.Canvas,EnteteDePage , BasDePage, Id_Periode,Nil ,GetNumeroterElevesAppreciations,FFont);
      3://00525B1D        
        VImpressionGrilleVierge := TImpressionGrilleVierge.Create(MainForm.PageBoundsAfterMargin,FCdn, MainForm.PrintPreview,EnteteDePage , BasDePage, 0,GetSeriesdeNotes(2), GetnumeroterElevesGrilleVierge, FFont);
    end;//2
    (*
    FormConfirmerImpression := TFormConfirmerImpression.Create(Self);
    FormConfirmerImpression.FNbrPageMin := 1;
    FormConfirmerImpression.FMinPage := 1;
    case GrilleType of
      0://00525BAC
        FormConfirmerImpression.NbrPage := VImpressionGrilleNotes.GetNbrPage; //Error d'impression & Nbr de page imprimer
      1://00525BC4
        FormConfirmerImpression.NbrPage := VImpressionGrilleBilan.GetNbrPage;
      2://00525BDC
        FormConfirmerImpression.NbrPage := VImpressionAppreciation.GetNbrPage;
      3://00525BF4
        FormConfirmerImpression.NbrPage := VImpressionGrilleVierge.GetNbrPage;
    end;//2
    FormConfirmerImpression.FMaxPage := FormConfirmerImpression.NbrPage;
	
    if (FormConfirmerImpression.NbrPage = 0) then //00525C36
      MessageBoxA(0, 'Impossible d''imprimer. La largeur d''une colonne ne tient pas sur une page !'+#13+#10+'Si vous êtes en mode portrait, essayez le mode paysage.', 'Carnet de Notes version Personnelle', $10{16})
    else
    begin//00525C4E
      if (FormConfirmerImpression.NbrPage = -1) then //00525C57
        MessageBoxA(0, 'Impossible d''imprimer. La hauteur d''une colonne ne tient pas sur une page !'+#13+#10+'Si vous êtes en mode paysage, essayez le mode portrait et/ou une fonte plus petite.', 'Carnet de Notes version Personnelle', $10{16})
      else
      begin//00525C6F
        FormConfirmerImpression.ShowModal;
        if (FormConfirmerImpression.ModalResult = 1) then
        begin//00525C92
          case GrilleType of
            0://00525CAF
              VImpressionGrilleNotes.GeneratePages(FormConfirmerImpression.FMinPage, FormConfirmerImpression.FMaxPage, FormConfirmerImpression.NbrExemplaires, FormConfirmerImpression.RadioGroupParite.ItemIndex, FormConfirmerImpression.CheckBoxOrdreInverse.Checked);
            1://00525D0E
              VImpressionGrilleBilan.sub_0051CAF8(FormConfirmerImpression.FMinPage, FormConfirmerImpression.FMaxPage, FormConfirmerImpression.NbrExemplaires, FormConfirmerImpression.RadioGroupParite.ItemIndex, FormConfirmerImpression.CheckBoxOrdreInverse.Checked);
            2://00525D6D
              VImpressionAppreciation.sub_00521464(FormConfirmerImpression.FMinPage, FormConfirmerImpression.FMaxPage, FormConfirmerImpression.NbrExemplaires, FormConfirmerImpression.RadioGroupParite.ItemIndex, FormConfirmerImpression.CheckBoxOrdreInverse.Checked);
            3://00525DC9
              VImpressionGrilleVierge.GeneratePages(FormConfirmerImpression.FMinPage, FormConfirmerImpression.FMaxPage, FormConfirmerImpression.NbrExemplaires, FormConfirmerImpression.RadioGroupParite.ItemIndex, FormConfirmerImpression.CheckBoxOrdreInverse.Checked);
           end;//5
        end;//4
      end;//3
    end;//2
	*)
	
	case GrilleType of
	 0:VImpressionGrilleNotes.GeneratePages(1,  3, 1, 1, false);
	 //1:
	 //2:
	 3:VImpressionGrilleVierge.GeneratePages(1,  1, 1, 1, false);
	end;
	{
    MainForm.PrintPreview.begindoc;
	MainForm.PrintPreview.Canvas.TextOut(0,0,'Hello');
	MainForm.PrintPreview.enddoc;
	}
	
	MainForm.showmodal();
    //FormConfirmerImpression.Destroy;
	case GrilleType of
	0: VImpressionGrilleNotes.destroy;
	1: VImpressionGrilleBilan.destroy;
	2: VImpressionAppreciation.destroy;
	3: VImpressionGrilleVierge.destroy;
   end;//5
end;

//00526028
procedure TFormImprimer.ComboBox1Change(sender:TObject);
var
   I,lvar_4:integer;
begin//0
    case ComboBox1.ItemIndex of
      0:
      begin//3
        //00526071
        //lvar_8 := FCdn;
		  CheckListBoxPeriodes.Items:=FCdn.GetPeriodeNameList;
          for I := 0 to CheckListBoxPeriodes.Items.count -1 do//005260B2
          begin//5
            //005260B8
            lvar_4 := FCdn.NbrSerieNotes(I + 1) ;
            if (lvar_4 = 0) then //005260E7
              CheckListBoxPeriodes.Items[I ] :=CheckListBoxPeriodes.Items[I] + ' (aucune série de notes)'
            else//00526125
              if (lvar_4 = 1) then //0052612B
                CheckListBoxPeriodes.Items[I] :=CheckListBoxPeriodes.Items[I] + ' (1 série de notes)'
              else //00526166
                CheckListBoxPeriodes.Items[I] := CheckListBoxPeriodes.Items[I] + ' (' + IntToStr(lvar_4) + ' séries de notes)';
          end;//5
      end;//3
      1:
      begin//3
        //005261C6
        CheckListBoxPeriodes.Items.Clear;
        CheckListBoxPeriodes.Items := FCdn.GetPeriodeNameList;
        CheckListBoxPeriodes.Items.Add('Sur l''année');
      end;//3
      2:
      begin//00526207
        CheckListBoxPeriodes.Items := FCdn.GetPeriodeNameList;
      end;//3
      3:
      begin//00526223
        CheckListBoxPeriodes.Items.Clear;
      end;//3
    end;//2
end;//0

//005262DC
procedure TFormImprimer.ImprAppreciation(Id_Periode:dword); //Impression Appreciation
begin//005262DC
  Imprimer_(2, Id_Periode);
end;//0


//005262E8
procedure TFormImprimer.FormKeyPress(Sender:TObject; var Key:Char);
begin//0
  //005262E8
  if (Key = char($1B)) then 
  ModalResult := 2;
end;//0


//005262F8
procedure TFormImprimer.ImprGrilleVierge ; // Impression Grille Vierge 
begin//0
  //005262F8
  Imprimer_(3, 1);
end;//0


//00526304
procedure TFormImprimer.SpeedButton2Click(Sender:TObject);
var
  lvar_4:AnsiString;
  lvar_8:AnsiString;
  lvar_C:AnsiString;
begin//0
  //00526304
    //0052631E
    if (FontDialog1.Execute ) then//0052632D
      FFont := FontDialog1.Font;

    Label3.Caption := FFont.Name + ' (' + IntToStr(FFont.Size) + ')';
end;//0

//005263D0
procedure TFormImprimer.FormDestroy(Sender:TObject);
begin//0
  //005263D0
  SetImpressionFermerBoite(CheckBox1.Checked);
end;//0


end.