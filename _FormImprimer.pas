{***********************************************************
* Version Original V0.03 build 1                           *
* Decompiled by HOUIDEF AEK v 3:28 lundi, août 27, 2018    *
* The disassembly process : 100%                           *
************************************************************}
unit _FormImprimer;

interface

uses
Forms, Windows,  SysUtils, Classes, ExtCtrls, Buttons, Dialogs, StdCtrls, CheckLst, Tabs, Graphics, UFichierCdn,Unit173,
UImpressionGrilleNotes,Printers,Unit111, _FormConfirmerImpression,UEnregistrement;

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
    f370:TFont;//f370
    f374:TFichierCdn;//f374
    f378:TStringList;//f378
    destructor Destroy; virtual;//0052561C
    constructor Create(Aowner:TComponent; FichierCdn:TFichierCdn; logo:Timage);//00524C1C
    procedure sub_00525464;//00525464
    procedure sub_00525794(a:dword);//00525794
    procedure sub_005257AC(a:dword);//005257AC
    procedure sub_0052588C(a:dword; b:dword);//0052588C
    procedure sub_005262DC(a:dword);//005262DC
    procedure sub_005262F8;//005262F8
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
  buf : string;
begin//0
  //00524C1C
    //00524C52
    inherited Create(Aowner);
    f374 := FichierCdn{d};
    Image1.Picture := logo.Picture;
    f370 := TFont.Create;
    GetnomPolice(buf);
    f370.Name := buf;
    f370.Size := GettaillePolice();
    Panel1.Color := $E2FFFF;
    Label3.Caption := f370.Name + ' (' + IntToStr(f370.Size) + ')';
    FontDialog1.Font.Name := 'Times New Roman';
    FontDialog1.Font.Size := 9;
    CheckListBoxPeriodes.Items := f374.sub_004BEA4C;
    for I := 0 to CheckListBoxPeriodes.Items.Count-1 do //00524D71
    begin//00524D77
	    J:= f374.GetNbreModules(I+1);
        if (J = 0) then//00524DA6
          CheckListBoxPeriodes.Items.Strings[I] := CheckListBoxPeriodes.Items[I] + ' (aucune série de notes)'
        else//00524DE4
          if (J = 1) then//00524DEA
            CheckListBoxPeriodes.Items.Strings[I] := CheckListBoxPeriodes.Items[I] + ' (1 série de notes)'
          else //00524E25
            CheckListBoxPeriodes.Items.Strings[I] := CheckListBoxPeriodes.Items[I] + ' (' + IntToStr(J) + ' séries de notes)';
    end;//3
    ComboBox1.ItemIndex := 0;
    f378 := TStringList.Create;
    sub_00525464;
    ComboBoxEnteteGauche.Items := f378;
    ComboBoxEnteteCentre.Items := f378;
    ComboBoxEnteteDroite.Items := f378;
    ComboBoxBasdepageGauche.Items := f378;
    ComboBoxBasdepageDroite.Items := f378;
    f374.sub_004BE92C(buf);
    ComboBoxEnteteGauche.text := buf;
    ComboBoxEnteteCentre.text :=f374.GetClasseName;
    f374.sub_004BE944(buf);
    ComboBoxEnteteDroite.text := buf;
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
    sub_00525794(F);
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
      sub_005257AC(F);
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
      sub_005262DC(F);
  end;//1
  if (ComboBox1.ItemIndex = 3) then
  begin//1//00525285
    //sub_005262F8;
  end;//1

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
    CheckBox1.Checked := GetimpressionFermerBoite;
    TabSet1.Tabs := Notebook1.Pages;
    //EDI := ComboBoxBasdepageCentre;
    if (sub_00498A40) then
    begin//2
      //0052534A
        for I := 1 to sub_00498B20 do //00525355
        begin//0052535C
          sub_004986C0(I, buf);
          ComboBoxBasdepageCentre.Items.Add(buf);
        end;//4
    end//2
    else//0052537D
      ComboBoxBasdepageCentre.Items.Add('VERSION NON ENREGISTREE');

    ComboBoxBasdepageCentre.ItemIndex := 0;
    sub_004BD3B4(buf); //basDePageGauche
    ComboBoxBasdepageGauche.Text := buf;
    sub_004BD3FC(buf); //basDePageDroite
    ComboBoxBasdepageDroite.Text := buf;
    sub_004BD444(buf); //enTeteGauche
    ComboBoxEnteteGauche.Text := buf;
    sub_004BD48C(buf); //enTeteGauche
    ComboBoxEnteteCentre.Text := buf;
    sub_004BD4D4(buf);
    ComboBoxEnteteDroite.Text := buf;
end;//0


//00525450
procedure TFormImprimer.TabSet1Change(Sender: TObject; NewTab: Integer;var AllowChange: Boolean);
begin
  Notebook1.PageIndex := NewTab;
end;

//00525464
procedure TFormImprimer.sub_00525464;
var
  buf:string;
  I:integer;
begin//0
  //00525464
    f378.add(f374.GetClasseName);
    f374.sub_004BE92C(buf);
    f378.add(buf);
    f374.sub_004C3908(buf);
    f378.add(buf);
    f374.sub_004BE944(buf);
    f378.add(buf);

      for I := 1 to f374.GetNbrePeriodes do//00525563
      begin//3
        //0052556A
        f374.sub_004BE9EC(I, buf);
        f378.add(buf);
      end;//3

    f378.add(DateToStr(Date));
    f378.add(TimeToStr(Time));

    //005255F5
end;//0

//0052561C
destructor TFormImprimer.Destroy;
begin//0
  //0052561C
    //00525640
    {sub_004BD51C(ComboBoxBasdepageGauche.Text);
    sub_004BD59C(ComboBoxBasdepageDroite.Text);
    SetenTeteGauche(ComboBoxEnteteGauche.Text);
    SetenTeteCentre(ComboBoxEnteteCentre.Text);
    SetenTeteDroite(ComboBoxEnteteDroite.Text);
    SetnomPolice(f370.Name);
    SettaillePolice(f370.Size);
    EDX := 1;
    f378.call();}
    inherited Destroy;

end;//0


//00525734
procedure TFormImprimer.CheckListBoxPeriodesClickCheck(Sender:TObject);
var
  I:integer;
begin//0
  //00525734


    for I := 0 to CheckListBoxPeriodes.Items.Count - 1 do//0052575A
    begin//2
      //0052575D

      if (CheckListBoxPeriodes.ItemIndex <> I) then 
      if (CheckListBoxPeriodes.Checked[I] ) then 
		CheckListBoxPeriodes.Checked[I] := False;
    end;//2

end;//0


//00525794
procedure TFormImprimer.sub_00525794(a:dword);
begin//0
  //00525794
  sub_0052588C(0, a);
end;//0



//005257AC
procedure TFormImprimer.sub_005257AC(a:dword);
begin//0
  //005257AC
  sub_0052588C(1, a);
end;//0


//005257C4
procedure TFormImprimer.BitBtn1Click(Sender:TObject);
begin//0
  //005257C4

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
procedure TFormImprimer.sub_0052588C(a:dword; b:dword);
var
 EnteteDePage : TEnteteBasDePage;
 BasDePage : TEnteteBasDePage;
 lvar_18,lvar_1C,lvar_20,lvar_24 : TImpressionGrilleNotes;
begin//0
 //0052588C
    //005258BE
    if (a = 0) then
    begin//005258D6
      if (f374.GetNbreModules(b) = 0) then
      begin//005258E8
        MessageBoxA(0, 'Aucune série de notes pour cette période !', 'Carnet de Notes version Personnelle', $10{16});
        Exit;
      end;//3
    end;//2
    EnteteDePage := TEnteteBasDePage.Create(TBlocTexte.Create(ComboBoxEnteteGauche.Text,CheckBoxEnTeteGauche.Checked),
								     TBlocTexte.Create(ComboBoxEnteteCentre.Text,CheckBoxEnTeteCentre.Checked),
								     TBlocTexte.Create(ComboBoxEnteteDroite.Text,CheckBoxEnTeteDroite.Checked));
    BasDePage := TEnteteBasDePage.Create(TBlocTexte.Create(ComboBoxBasdepageGauche.Text,CheckBoxBasdepageGauche.Checked),
									 TBlocTexte.Create(ComboBoxBasdepageCentre.Text,CheckBoxBasdepageCentre.Checked), 
								     TBlocTexte.Create(ComboBoxBasdepageDroite.Text,CheckBoxBasdepageDroite.Checked));
    case a of
      0://00525A5C        
        lvar_18 := TImpressionGrilleNotes.Create(f374, Printer.Canvas,EnteteDePage , BasDePage, b, _GetSeriesdenotes(0), GetnumeroterElevesSeriesDeNotes,f370);
      (*1://00525AA1
        lvar_1C := TImpressionGrilleBilan.Create(f374, Printer.Canvas,EnteteDePage , BasDePage, b, _GetSeriesdenotes(1), GetnumeroterElevesBilans,f370);

      2://00525AE3
        lvar_20 := TImpressionAppreciation.Create(f374, Printer.Canvas,EnteteDePage , BasDePage, b, GetnumeroterElevesAppreciations);

      3://00525B1D        
        lvar_24 := TImpressionGrilleVierge.Create(f374, Printer.Canvas,EnteteDePage , BasDePage, _GetSeriesdenotes(2), GetnumeroterElevesGrilleVierge, GetnumeroterElevesGrilleVierge);*)

    end;//2

    {gvar_00617DF4}FormConfirmerImpression := TFormConfirmerImpression.Create(Self);
    FormConfirmerImpression.f30C := 1;
    FormConfirmerImpression.f314 := 1;
    case a of
      0://00525BAC
        FormConfirmerImpression.f310 := lvar_18.sub_00519A90; //Error d'impression & Nbr de page imprimer
      1://00525BC4
        FormConfirmerImpression.f310 := lvar_1C.sub_00519A90;
      2://00525BDC
        FormConfirmerImpression.f310 := lvar_20.sub_00519A90;
      3://00525BF4
        FormConfirmerImpression.f310 := lvar_24.sub_00519A90;
    end;//2
    FormConfirmerImpression.f318 := FormConfirmerImpression.f310;
    if (FormConfirmerImpression.f310 = 0) then //00525C36
      MessageBoxA(0, 'Impossible d''imprimer. La largeur d''une colonne ne tient pas sur une page !'+#13+#10+'Si vous êtes en mode portrait, essayez le mode paysage.', 'Carnet de Notes version Personnelle', $10{16})
    else
    begin//00525C4E
      if (FormConfirmerImpression.f310 = -1) then //00525C57
        MessageBoxA(0, 'Impossible d''imprimer. La hauteur d''une colonne ne tient pas sur une page !'+#13+#10+'Si vous êtes en mode paysage, essayez le mode portrait et/ou une fonte plus petite.', 'Carnet de Notes version Personnelle', $10{16})
      else
      begin//00525C6F
        FormConfirmerImpression.ShowModal;
        if (FormConfirmerImpression.ModalResult = 1) then
        begin//00525C92
		   
          case a of
            0://00525CAF
              lvar_18.sub_0051BD4C(FormConfirmerImpression.f314, FormConfirmerImpression.f318, FormConfirmerImpression.f31C, FormConfirmerImpression.RadioGroupParite.ItemIndex, FormConfirmerImpression.CheckBoxOrdreInverse.Checked);
            {1://00525D0E
              lvar_1C.sub_0051CAF8(FormConfirmerImpression.f314, FormConfirmerImpression.f318, FormConfirmerImpression.f31C, FormConfirmerImpression.RadioGroupParite.ItemIndex, FormConfirmerImpression.CheckBoxOrdreInverse.Checked);
            2://00525D6D
              lvar_20.sub_00521464(FormConfirmerImpression.f314, FormConfirmerImpression.f318, FormConfirmerImpression.f31C, FormConfirmerImpression.RadioGroupParite.FItemIndex, FormConfirmerImpression.CheckBoxOrdreInverse.Checked);
            3://00525DC9
              lvar_24.sub_00524130(FormConfirmerImpression.f314, FormConfirmerImpression.f318, FormConfirmerImpression.f31C, FormConfirmerImpression.RadioGroupParite.ItemIndex, FormConfirmerImpression.CheckBoxOrdreInverse.Checked);
          }end;//5
        end;//4
      end;//3
    end;//2
	lvar_18.Destroy; //I add this line
    FormConfirmerImpression.Destroy;
end;

//00526028
procedure TFormImprimer.ComboBox1Change(sender:TObject);
var
   I,lvar_4:integer;
begin//0
  //00526028
    //00526048

    case ComboBox1.ItemIndex of
      0:
      begin//3
        //00526071
        
        //lvar_8 := f374;
		  CheckListBoxPeriodes.Items:=f374.sub_004BEA4C;
          for I := 0 to CheckListBoxPeriodes.Items.count -1 do//005260B2
          begin//5
            //005260B8
            lvar_4 := f374.GetNbreModules(I + 1) ;
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
        CheckListBoxPeriodes.Items := f374.sub_004BEA4C;
        CheckListBoxPeriodes.Items.Add('Sur l''année');
      end;//3
      2:
      begin//3
        //00526207
        CheckListBoxPeriodes.Items := f374.sub_004BEA4C;
        
      end;//3
      3:
      begin//3
        //00526223
        CheckListBoxPeriodes.Items.Clear;
      end;//3
    end;//2

    //00526241

end;//0

//005262DC
procedure TFormImprimer.sub_005262DC(a:dword);
begin//005262DC
  sub_0052588C(2, a);
end;//0


//005262E8
procedure TFormImprimer.FormKeyPress(Sender:TObject; var Key:Char);
begin//0
  //005262E8
  if (Key = char($1B)) then 
  ModalResult := 2;
end;//0


//005262F8
procedure TFormImprimer.sub_005262F8;
begin//0
  //005262F8
  sub_0052588C(3, 1);
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
      f370 := FontDialog1.Font;

    Label3.Caption := f370.Name + ' (' + IntToStr(f370.Size) + ')';

    //00526395

end;//0

//005263D0
procedure TFormImprimer.FormDestroy(Sender:TObject);
begin//0
  //005263D0
  SetimpressionFermerBoite(CheckBox1.Checked);
end;//0


end.