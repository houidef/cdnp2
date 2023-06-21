{***********************************************************
* Version Original V0.03 build 1                           *
* Decompiled by HOUIDEF AEK v 12:20 mercredi, août 29, 2018*
* The disassembly process : 100%                           *
************************************************************}
unit UniteFeuilleClasse;

interface

uses
Forms, Windows,  SysUtils, Classes, Menus, Dialogs, ExtCtrls, ComCtrls, Buttons, Tabs, StdCtrls, Chart, Printers,
 Grids, UFichierCdn, _TGrilleEleves,_TGrilleNotes,_TGrilleMoyennes,_TGrilleBilan, _TGrilleElevesGraphe,_FormImprimer,
 UBiblio,_FormHint,_FormModifierEleve,_FormListe, Series,_FormCreerListeEleves,_FormSupprimerSerie,_FormBilanEleve,
 _FormReorganiser,_FormCollerAppreciations, _FormInformationsSeries,_FormClonerFichier,UWindow,_FormImporterSeries,
 UEnregistrement,_FormPointsPlusMoins,_FormTransformerSeries,_FormUtilitairesSeries,_FormImprimerGraphe,
 _FormNouvelleSerieDeNotes,Clipbrd,_FormExportation,_FormCreerDisquettes,_FormAppreciations,
 _FormTypeImportation,ShellAPI;

type
  TFeuilleClasse = class(TForm)
  published
    MainMenuPrincipal:TMainMenu;//f2D0
    SaveDialog1:TSaveDialog;//f2D4
    Notebook1:TNotebook;//f2D8
    Sriedenotes1:TMenuItem;//f2DC
    Listedeslves1:TMenuItem;//f2E0
    Ajouter1:TMenuItem;//f2E4
    Supprimer1:TMenuItem;//f2E8
    Modifier1:TMenuItem;//f2EC
    CopierdanslePressePapiers1:TMenuItem;//f2F0
    Classe1:TMenuItem;//f2F4
    Nouvelle1:TMenuItem;//f2F8
    Ouvrir1:TMenuItem;//f2FC
    Fermer1:TMenuItem;//f300
    N1:TMenuItem;//f304
    Options1:TMenuItem;//f308
    N2:TMenuItem;//f30C
    Enregistrer1:TMenuItem;//f310
    Enregistrersous1:TMenuItem;//f314
    N3:TMenuItem;//f318
    Quitter1:TMenuItem;//f31C
    N4:TMenuItem;//f320
    Informations1:TMenuItem;//f324
    TabControlGrillesNotes:TTabControl;//f328
    N5:TMenuItem;//f32C
    Exporter1:TMenuItem;//f330
    Imprimer1:TMenuItem;//f334
    Configurerlimpression1:TMenuItem;//f338
    N7:TMenuItem;//f33C
    Panel2:TPanel;//f340
    N6:TMenuItem;//f344
    Ajouterunlve1:TMenuItem;//f348
    Supprimerunlve1:TMenuItem;//f34C
    Modifierlenomdunlve1:TMenuItem;//f350
    N8:TMenuItem;//f354
    Rorganiser1:TMenuItem;//f358
    PrinterSetupDialog1:TPrinterSetupDialog;//f35C
    Vues1:TMenuItem;//f360
    Panel4:TPanel;//f364
    SpeedButtonMoyennes:TSpeedButton;//f368
    SpeedButtonNotes:TSpeedButton;//f36C
    PanelMoyennes:TPanel;//f370
    SpeedButtonEgaliserPanneau:TSpeedButton;//f374
    Grilledenotes1:TMenuItem;//f378
    Grilledebilan1:TMenuItem;//f37C
    CollerdepuislePressePapiers2:TMenuItem;//f380
    N11:TMenuItem;//f384
    Importer1:TMenuItem;//f388
    TabControlGrillesBilan:TTabControl;//f38C
    Toutenregistrer1:TMenuItem;//f390
    Panel1:TPanel;//f394
    TabSet1:TTabSet;//f398
    Label1:TLabel;//f39C
    Bevel1:TBevel;//f3A0
    Bevel2:TBevel;//f3A4
    Label2:TLabel;//f3A8
    ImageFeuVert:TImage;//f3AC
    ImageFeuRouge:TImage;//f3B0
    N9:TMenuItem;//f3B4
    Copierlefichiersurdisquette1:TMenuItem;//f3B8
    Envoyerlefichierpourcourrierlectronique1:TMenuItem;//f3BC
    Crerlesdisquettespourlescollgues1:TMenuItem;//f3C0
    N10:TMenuItem;//f3C4
    Informationssurlessriesdenotes1:TMenuItem;//f3C8
    N12:TMenuItem;//f3CC
    Importerdepuisunfichier1:TMenuItem;//f3D0
    Outils1:TMenuItem;//f3D4
    N13:TMenuItem;//f3D8
    Fusionnerplusieursfichiers1:TMenuItem;//f3DC
    Rcuprerunfichierbak1:TMenuItem;//f3E0
    N14:TMenuItem;//f3E4
    Sauvegardervosfichiers1:TMenuItem;//f3E8
    N15:TMenuItem;//f3EC
    Utilitaires1:TMenuItem;//f3F0
    N16:TMenuItem;//f3F4
    Transformer1:TMenuItem;//f3F8
    Crerlesbulletinsdeslves1:TMenuItem;//f3FC
    PanelElevesNotes:TPanel;//f400
    PanelEleves:TPanel;//f404
    PanelNotes:TPanel;//f408
    Label3:TLabel;//f40C
    Bevel3:TBevel;//f410
    PanelElevesGraphe:TPanel;//f414
    TabControlGraphes:TTabControl;//f418
    Chart1:TChart;//f41C
    PopupMenu1:TPopupMenu;//f420
    Grapheen3D1:TMenuItem;//f424
    Grapheendgrad1:TMenuItem;//f428
    Grapheencouleur1:TMenuItem;//f42C
    N18:TMenuItem;//f430
    CollerdanslePressePapiers1:TMenuItem;//f434
    Exporter2:TMenuItem;//f438
    Imprimer2:TMenuItem;//f43C
    Afficherlalgende1:TMenuItem;//f440
    Formatbitmapbmp1:TMenuItem;//f444
    FormatMetafilewmf1:TMenuItem;//f448
    Formatenhancedmetafileemf1:TMenuItem;//f44C
    TurboMenuGraphes1:TMenuItem;//f450
    N17:TMenuItem;//f454
    Graphes1:TMenuItem;//f458
    CollerdanslePressePapiers2:TMenuItem;//f45C
    Formatbitmapbmp2:TMenuItem;//f460
    Formatmetafilewmf2:TMenuItem;//f464
    FormatEnhancedMetafileemf2:TMenuItem;//f468
    Exporter3:TMenuItem;//f46C
    Imprimer3:TMenuItem;//f470
    Graphes2:TMenuItem;//f474
    AfficherligneElve1:TMenuItem;//f478
    AfficherligneMinimum1:TMenuItem;//f47C
    AfficherligneMaximum1:TMenuItem;//f480
    AfficherligneMoyenne1:TMenuItem;//f484
    N19:TMenuItem;//f488
    N20:TMenuItem;//f48C
    Calculatrice1:TMenuItem;//f490
    Apprciationsdesbulletins1:TMenuItem;//f494
    SpeedButtonRecalculerMoyennes:TSpeedButton;//f498
    CollerlesapprciationsdanslePressePapiers1:TMenuItem;//f49C
    N22:TMenuItem;//f4A0
    N21:TMenuItem;//f4A4
    Pointsenplusouenmoins1:TMenuItem;//f4A8
    Bilanlve1:TMenuItem;//f4AC
    N23:TMenuItem;//f4B0
    CarnetdeNotes1:TMenuItem;//f4B4
    Texte1:TMenuItem;//f4B8
    depuisunefichierCarnetdeNotes1:TMenuItem;//f4BC
    depuisunfichiertexte1:TMenuItem;//f4C0
    CollerlesdatesdenaissancesdepuislePressePapiers1:TMenuItem;//f4C4
    Clnerlefichier1:TMenuItem;//f4C8
    ClnerdessriesdenotespartirdunfichierCarnetdeNotes1:TMenuItem;//f4CC
    procedure AfficherligneMoyenne1Click(Sender:TObject);//0053FileName1
    procedure AfficherligneMaximum1Click(Sender:TObject);//0053F498
    procedure AfficherligneMinimum1Click(Sender:TObject);//0053F458
    procedure Calculatrice1Click(Sender:TObject);//0053F518
    procedure SpeedButtonRecalculerMoyennesClick(Sender:TObject);//0053F62C
    procedure Outils1Click(Sender:TObject);//0053F598
    procedure Apprciationsdesbulletins1Click(Sender:TObject);//0053F528
    procedure FormatMetafilewmf1Click(Sender:TObject);//0053F170
    procedure Formatbitmapbmp1Click(Sender:TObject);//0053F164
    procedure Afficherlalgende1Click(Sender:TObject);//0053F124
    procedure Formatenhancedmetafileemf1Click(Sender:TObject);//0053F180
    procedure AfficherligneElve1Click(Sender:TObject);//0053F418
    procedure Imprimer2Click(Sender:TObject);//0053F38C
    procedure Exporter2Click(Sender:TObject);//0053F214
    procedure FormClose(Sender:TObject; var Action:TCloseAction);//0054155C
    procedure depuisunfichiertexte1Click(Sender:TObject);//00540ED4
    procedure depuisunefichierCarnetdeNotes1Click(Sender:TObject);//00540780
    procedure FormDestroy(Sender:TObject);//0054181C
    procedure ClnerdessriesdenotespartirdunfichierCarnetdeNotes1Click(Sender:TObject);//00541A48
    procedure Clnerlefichier1Click(Sender:TObject);//00541968
    procedure CollerlesdatesdenaissancesdepuislePressePapiers1Click(Sender:TObject);//00541888
    procedure FormShow(Sender:TObject);//0053F820
    procedure CollerlesapprciationsdanslePressePapiers1Click(Sender:TObject);//0053F794
    procedure Graphes1Click(Sender:TObject);//0053F750
    procedure Pointsenplusouenmoins1Click(Sender:TObject);//0053F914
    procedure Texte1Click(Sender:TObject);//0053FFBC
    procedure CarnetdeNotes1Click(Sender:TObject);//0053FAA4
    procedure Bilanlve1Click(Sender:TObject);//0053F9B4
    procedure Grapheencouleur1Click(Sender:TObject);//0053F0E4
    procedure Listedeslves1Click(Sender:TObject);//0053BA50
    procedure Exporter1Click(Sender:TObject);//0053BC2C
    procedure Modifier1Click(Sender:TObject);//0053B6E4
    procedure Options1Click(Sender:TObject);//0053B3AC
    procedure Informations1Click(Sender:TObject);//0053B450
    procedure CopierdanslePressePapiers1Click(Sender:TObject);//0053BC74
    procedure Rorganiser1Click(Sender:TObject);//0053C560
    procedure Imprimer1Click(Sender:TObject);//0053C638
    procedure Modifierlenomdunlve1Click(Sender:TObject);//0053C1EC
    procedure Ajouterunlve1Click(Sender:TObject);//0053BD58
    procedure Supprimerunlve1Click(Sender:TObject);//0053BF78
    procedure Quitter1Click(Sender:TObject);//0053A470
    procedure Fermer1Click(Sender:TObject);//0053A480
    procedure TabControlGrillesBilanChange(Sender:TObject);//0053C858
    procedure TabSet1Click(Sender:TObject);//0053C88C
    procedure TabControlGrillesNotesChange(Sender:TObject);//0053BB44
    procedure Ouvrir1Click(Sender:TObject);//0053A488
    procedure Supprimer1Click(Sender:TObject);//0053B1EC
    procedure Sriedenotes1Click(Sender:TObject);//0053B308
    procedure Ajouter1Click(Sender:TObject);//0053ABFC
    procedure Enregistrer1Click(Sender:TObject);//0053A498
    procedure Enregistrersous1Click(Sender:TObject);//0053A814
    procedure Sauvegardervosfichiers1Click(Sender:TObject);//0053DDE4
    procedure FormActivate(Sender:TObject);//0053DE24
    procedure Utilitaires1Click(Sender:TObject);//0053DED8
    procedure Informationssurlessriesdenotes1Click(Sender:TObject);//0053DD00
    procedure Fusionnerplusieursfichiers1Click(Sender:TObject);//0053DDC4
    procedure Rcuprerunfichierbak1Click(Sender:TObject);//0053DDD4
    procedure PopupMenu1Popup(Sender:TObject);//0053EFBC
    procedure Grapheen3D1Click(Sender:TObject);//0053F064
    procedure Grapheendgrad1Click(Sender:TObject);//0053F0A4
    procedure Transformer1Click(Sender:TObject);//0053E16C
    procedure Crerlesbulletinsdeslves1Click(Sender:TObject);//0053E400
    procedure TabControlGraphesChange(Sender:TObject);//0053EF88
    procedure Crerlesdisquettespourlescollgues1Click(Sender:TObject);//0053DCB8
    procedure CollerdepuislePressePapiers2Click(Sender:TObject);//0053CC28
    procedure SpeedButtonNotesClick(Sender:TObject);//0053C7D0
    procedure Nouvelle1Click(Sender:TObject);//0053C750
    procedure SpeedButtonEgaliserPanneauClick(Sender:TObject);//0053CA68
    procedure SpeedButtonMoyennesClick(Sender:TObject);//0053C760
    procedure Copierlefichiersurdisquette1Click(Sender:TObject);//0053D7C0
    procedure Envoyerlefichierpourcourrierlectronique1Click(Sender:TObject);//0053DA54
    procedure Configurerlimpression1Click(Sender:TObject);//0053C72C
    procedure Toutenregistrer1Click(Sender:TObject);//0053CD78
  public
    logo : Timage;//FFileName:string;// f4D0:dword;//f4D0
    FichierCdn:TFichierCdn;//f4D4
    HFormCarnetDeNotes2:HWND;//f4D8
    GrilleNotesCarnetDeNotes:TGrilleNotesCarnetDeNotes;//f4E0
    GrilleElevesCarnetDeNotes:TGrilleElevesCarnetDeNotes;//f4E4
    GrilleElevesGrapheCarnetDeNotes:TGrilleElevesGrapheCarnetDeNotes;//f4E8
    GrilleMoyennesCarnetDeNotes:TGrilleMoyennesCarnetDeNotes;//f4EC
    GrilleBilanCarnetDeNotes:TGrilleBilanCarnetDeNotes;//f4F0
    PanelWidth:Integer;//f4F4
    PanelWidth2:Integer;//f4F8
    FIdPeriode:byte;//f4FC
    procedure EvSelectionGrille(var Msg:TMsg); Message $401;//00539F78
    procedure EvScrollBarsGrille(var Msg:TMsg); Message $402;//0053A074
    procedure EvenemtsFile(var Msg:TMsg); Message $403;//0053FA60
    procedure EvenemtsChangeGrille(var Msg:TMsg); Message $404;//0053F9FC
    procedure EvenemtsGrilleInvalidate(var Msg:TMsg); Message $405;//0053A0C0
    procedure EvEleve(var Msg:TMsg); Message $406;//0053A140
    procedure EvenemtsGrilleMoyennesCarnetDeNotes(var Msg:TMsg); Message $408;//0053C9E4
    procedure EvenemtsCreerGrilleNotesCarnetDeNotes(var Msg:TMsg); Message $409;//0053CA38
    procedure EvenemtsFeuVertRouge(var Msg:TMsg); Message $40A;//0053CAFC
    procedure EvenemtsPositionsGrilles(var Msg:TMsg); Message $40B;//0053CB34
    procedure EvenemtsSave(var Msg:TMsg); Message $40D;//0053CD90
    procedure EvenemtsStatutNote(var Msg:TMsg); Message $40E;//0053D148
    procedure EvenemtsGrilleElevesPostions(var Msg:TMsg); Message $40F;//0053D6F4
    procedure EvenemtsPanelEleves_ElevesGraphe(var Msg:TMsg); Message $412;//0053E410
    procedure EvenemtsChart(var Msg:TMsg); Message $413;//0053E44C
    procedure EvenemtsFichierInit(var Msg:TMsg); Message $415;//0053F7DC
    constructor Create(AOwner: TComponent;Handle : HWND; Logo:TImage; FileName:String);//00539894
	function GetFileName():string;//00539DA4
	procedure GetMatiereName(var a:string);//0053F8FC
    procedure GetClasseName(var Y:String);//0053DDF4
    procedure GetEnseignant(var Y:String);//0053DE0C
	procedure AddItemGrillesNotes(Item:TObject);
	procedure AddItemGraphes(Item:TObject);
	procedure AddItemGrillesBilan(Item:TObject);
  end;

var
   FeuilleClasse: TFeuilleClasse;
implementation
   uses UnitePrincipale,_FormNouvelleClasse,smapi,constantes,URegistry;
{$R *.DFM}

//00539894                            
constructor TFeuilleClasse.Create(AOwner: TComponent;Handle : HWND; Logo:TImage; FileName:String);
var
  I:integer;
  Splitter : TSplitter;
  CreateFile:Boolean;
begin
	CreateFile := false;
    HFormCarnetDeNotes2 := Handle;//Parent
	self.logo := Logo;//f4D0 := d
    FichierCdn := TFichierCdn.Create(FileName{, 0, 0});
    if (FichierCdn.Succes) then
    begin//00539906
      if (FileName = '') then
      begin//0053990C
        FormNouvelleClasse  := TFormNouvelleClasse.Create(Self,FichierCdn, 'Nouvelle classe', Logo,true); 
		FormNouvelleClasse.ShowModal;
        if (FormNouvelleClasse.ModalResult = 1) then CreateFile := true; //00539950
        FormNouvelleClasse.Destroy;
      end//3
	  else 
	    CreateFile := true;
    end
	else 
	begin//00539962
	  MessageBoxA(0, PChar('Le fichier ' + FileName + ' n''est pas un fichier Carnet de Notes valide.'), 'Carnet de Notes version Personnelle', 16);
      exit;
	end;

	if(CreateFile) then 
      begin//005399AE
        inherited Create(AOwner);
        WindowState := wsMaximized; 
        TabControlGrillesNotes.Tabs := FichierCdn.GetPeriodeNameList; 
        TabControlGrillesBilan.Tabs := FichierCdn.GetPeriodeNameList;
        TabControlGraphes.Tabs := FichierCdn.GetPeriodeNameList;
        TabControlGrillesBilan.Tabs.Add('Sur l''année');
		//chercher le nombre de periode
        FIdPeriode := 1;
		for I:=1 to FichierCdn.NbrePeriodes do//00539A3C   // Nbre Periodes
        begin
            if (FichierCdn.NbrSerieNotes(I) > 0) then 
            begin//00539A49
              FIdPeriode := I;
              Break;
            end//6
        end;
        TabControlGrillesNotes.TabIndex := FIdPeriode - 1;
        GrilleElevesCarnetDeNotes := TGrilleElevesCarnetDeNotes.Create(PanelEleves, Self,FIdPeriode, FichierCdn); 
        GrilleNotesCarnetDeNotes := TGrilleNotesCarnetDeNotes.Create(PanelNotes, Self,FIdPeriode, FichierCdn); 
        GrilleMoyennesCarnetDeNotes := TGrilleMoyennesCarnetDeNotes.Create(PanelMoyennes, Self,FIdPeriode, FichierCdn);//erreur ici
        GrilleBilanCarnetDeNotes := TGrilleBilanCarnetDeNotes.Create(TabControlGrillesBilan,  Self,FIdPeriode, FichierCdn);
        GrilleElevesGrapheCarnetDeNotes := TGrilleElevesGrapheCarnetDeNotes.Create(PanelElevesGraphe, Self,0,FichierCdn);   //supprimer 0
        Splitter := TSplitter.Create(TabControlGrillesNotes);
        Splitter.Parent :=TabControlGrillesNotes;
        Splitter.Left := Panel2.Left + 1;
        Splitter.Align := Panel2.Align;
		TabSet1.Tabs := Notebook1.Pages; 
        Notebook1.PageIndex := TabSet1.TabIndex; 
        AddHistorique(FileName); 
        if (GetUtiliserHistorique) then //00539BC7
          _AddHistroiqueToMainMenu(MainMenuPrincipal, 0, Self,Ouvrir1Click); 
        AddToMenu1(MainMenuPrincipal, TabControlGrillesNotes.Tabs, 4, Self, AddItemGrillesNotes, Self, AddItemGrillesBilan, Self, AddItemGraphes);
        AddToMenu2(MainMenuPrincipal, 14, 4, Self,Copierlefichiersurdisquette1Click);
		SendMessageA(self.Handle, $40B, 0, 0);
        SendMessageA(self.Handle, $406, 0, 0);
        SendMessageA(self.Handle, $40E, 0, 0);
        SendMessageA(HFormCarnetDeNotes2, $411, 0, 0);
        SpeedButtonEgaliserPanneauClick(Self);
		FormCarnetDeNotes2.ToolButtonImprimer.enabled := (FormCarnetDeNotes2.MDIChildCount <> 0 );
		FormCarnetDeNotes2.ToolButtonSauver.enabled := (FormCarnetDeNotes2.MDIChildCount <> 0 );
      end;
	
end;

//00539DA4
function TFeuilleClasse.GetFileName():String;
begin//0
	Result := FichierCdn.GetFileName;
end;

//00539F78
procedure TFeuilleClasse.EvSelectionGrille(var Msg:TMsg);
var 
 GridRect1 :TGridRect;
begin//0
  //00539F78
  if ((GrilleNotesCarnetDeNotes <> Nil) and (GrilleElevesCarnetDeNotes <> Nil) and (GrilleMoyennesCarnetDeNotes <> Nil)) then //00539F8E
  begin//1
        //00539FA8
        if (FichierCdn.NbrSerieNotes(FIdPeriode) > 0) then
        begin//00539FBD
         { if (Msg.wParam = -1) then//00539FC5
            GridRect1.Left := 0
          else//00539FCC
            GridRect1.Left := Msg.wParam;
          }
			if (Msg.message <> 0) then
			begin
			  GridRect1.Left := 0;
			  GridRect1.Top := Msg.message;
			  if (Msg.wParam = -1) then//00539FDB
				GridRect1.Right  := FichierCdn.NbrSerieNotes(FIdPeriode)- 1
			  else//0053A001
				GridRect1.Right := Msg.wParam;
			  GridRect1.Bottom := Msg.message;
			  GrilleNotesCarnetDeNotes.Selection := GridRect1;			
			end;//4
		end;
		if (Msg.message <> 0) then
        begin//0053A024		
          GridRect1.Left := 0;
          GridRect1.Top := Msg.message;
          GridRect1.Right := 3;
          GridRect1.Bottom := Msg.message;
          GrilleMoyennesCarnetDeNotes.Selection := GridRect1;
          GridRect1.Left := 1;
          GridRect1.Top := Msg.message;
          GridRect1.Right := 1;
          GridRect1.Bottom := Msg.message;
          GrilleElevesCarnetDeNotes.Selection := GridRect1;
        end;//4
  end;//1
end;//0

//0053A074
procedure TFeuilleClasse.EvScrollBarsGrille(var Msg:TMsg);
begin//0
  //0053A074
  if ((GrilleNotesCarnetDeNotes <> Nil) and (GrilleElevesCarnetDeNotes <> Nil) and (GrilleMoyennesCarnetDeNotes  <> Nil))  then
  begin//0053A084
    GrilleNotesCarnetDeNotes.TopRow := Msg.message;
    GrilleMoyennesCarnetDeNotes.TopRow := Msg.message;
    GrilleElevesCarnetDeNotes.TopRow := Msg.message;
  end;//1
end;//0


//0053A0C0
procedure TFeuilleClasse.EvenemtsGrilleInvalidate(var Msg:TMsg);
begin//0
  //0053A0C0
  if ((GrilleNotesCarnetDeNotes <> Nil) and (GrilleElevesCarnetDeNotes = Nil) and (GrilleMoyennesCarnetDeNotes = Nil) and (GrilleBilanCarnetDeNotes = Nil)) then
  begin//1
    //0053A0CD
	showmessage('Invalidate');
    GrilleNotesCarnetDeNotes.Invalidate;
    GrilleElevesCarnetDeNotes.Invalidate;
    GrilleMoyennesCarnetDeNotes.Invalidate;
    GrilleBilanCarnetDeNotes.Invalidate;
    SendMessageA(GrilleElevesGrapheCarnetDeNotes.Handle, 1027, TabControlGraphes.TabIndex + 1, 0);
  end;//1
end;//0


//0053A140
procedure TFeuilleClasse.EvEleve(var Msg:TMsg);
var
   NbreEleves:integer;
begin//0
	NbreEleves := FichierCdn.NbreEleves;
    case NbreEleves of
      0: Label2.Caption :=  FichierCdn.GetClasseName + ' - aucun élève';
      1: Label2.Caption := FichierCdn.GetClasseName + ' - 1 élève';
    end;//2
    Label2.Caption := FichierCdn.GetClasseName + ' - ' + IntToStr(NbreEleves) + ' élèves';
    Caption := FichierCdn.GetClasseName + ' - ' + ExtractFileName(FichierCdn.GetFileName);
    Bevel2.Width := Canvas.TextWidth(Label2.Caption) + 10;
    Label1.Left := Label2.Left + Label2.Width + 15;
    Bevel1.Left := Label1.Left - 5;
    Label3.Left := Label1.Left + Label1.Width + 15;
    Bevel3.Left := Label3.Left - 5;
    //SendMessageA(HFormCarnetDeNotes2, $411, 0, 0);
end;//0


//0053A470
procedure TFeuilleClasse.Quitter1Click(Sender:TObject);
begin
 FormCarnetDeNotes2.Quitter1Click(Sender);
end;

//0053A480
procedure TFeuilleClasse.Fermer1Click(Sender:TObject);
begin
 Close;
end;

//0053A488
procedure TFeuilleClasse.Ouvrir1Click(Sender:TObject);
begin
  FormCarnetDeNotes2.Ouvrir1Click(Sender);
end;

//0053A498
procedure TFeuilleClasse.Enregistrer1Click(Sender:TObject);
var
 FileName:String;
begin//0
    if (FichierCdn.OldVersion <> false) then
    begin//2
      //0053A4DF
      if(MessageBoxA(0, PChar('Le fichier "' + ExtractFileName(GetFileName) + '" que vous allez enregistrer est au format d''une ancienne version de Carnet de Notes.' + #10 + #13 + #10 + #13 + 'Si vous confirmez, il sera enregistré au nouveau format mais ne pourra plus être relu par l''ancienne version.' + #10 + #13 + #10 + #13 + 'Voulez vous enregistrer ce fichier ?'), 'Carnet de Notes version Personnelle', $14{20})= 7) then Exit;
    end;//2
    if (GetFileName = 'Nouvelle classe') then//0053A595
      Enregistrersous1Click(Sender)
    else//0053A5A0  
      FichierCdn.SaveToFile__(GetFileName, false, '', 0);

    SendMessageA(Handle, $406, 0, 0);
    if (GetFileName <> 'Nouvelle classe') then
    begin//2
      //0053A612
      AddHistorique(GetFileName);
      if (GetUtiliserHistorique ) then
      begin//3
        //0053A644
        RefreshHistroqiueMainMenu(MainMenuPrincipal, 0, Self,  Ouvrir1Click);
        SendMessageA( HFormCarnetDeNotes2, $410, 0, 0);
      end;//3
    end;//2
end;//0


//0053A814
procedure TFeuilleClasse.Enregistrersous1Click(Sender:TObject);
var
  Buf: String;
  FileName : String;
  lvar_4 : PChar;
begin//0
  //0053A814
    if (FichierCdn.OldVersion <> false) then
    begin//2
      //0053A858
      lvar_4 := PChar('Le fichier "' + ExtractFileName(GetFileName) + '" que vous allez enregistrer est au format d''une ancienne version de Carnet de Notes.' + #10 + #13 + #10 + #13 + 'Si vous confirmez, il sera enregistré au nouveau format mais ne pourra plus être relu par l''ancienne version.' + #10 + #13 + #10 + #13 + 'Voulez vous enregistrer ce fichier ?');
      if (MessageBoxA(0, lvar_4, 'Carnet de Notes version Personnelle', 20) = 7) then Exit;
    end;//2
    SaveDialog1.FileName := GetFileName;
    SaveDialog1.Title := 'Enregistrer sous ...';
    SaveDialog1.Filter := 'Fichier Carnet de Notes *.cdn |*.cdn';
    if (SaveDialog1.Execute) then
    begin//2
      //0053A940
      FichierCdn.SaveToFile__(SaveDialog1.FileName, false, '', 0);
      SendMessageA(Handle, $406, 0, 0);
    end;//2
    if (GetFileName <> 'Nouvelle classe') then
    begin//2
      //0053A9A5
      AddHistorique(GetFileName);
      if (GetUtiliserHistorique) then
      begin//0053A9D7
        RefreshHistroqiueMainMenu(MainMenuPrincipal, 0, Self,Ouvrir1Click);
        SendMessageA(HFormCarnetDeNotes2, $410, 0, 0);
      end;//3
    end;//2
end;//0
//0053ABFC
procedure TFeuilleClasse.Ajouter1Click(Sender:TObject);
var
 ESI : integer;
begin//0
  //0053ABFC
    //0053AC49
    if (FichierCdn.IndexModule < gvar_00617903) then
    begin//2
      //0053AC62
      if (FichierCdn.NbreEleves > 0) then
      begin//3
        //0053AC75
        FormNouvelleSerieDeNotes{gvar_00617D74} := TFormNouvelleSerieDeNotes.Create(Self, FichierCdn, logo, 'Nouvelle série de notes');
        FormNouvelleSerieDeNotes.TabControl1.TabIndex := FIdPeriode - 1;
        FormNouvelleSerieDeNotes.ShowModal;
        if (FormNouvelleSerieDeNotes.ModalResult = 1) then
        begin//4
          //0053ACE5
          //EAX := (FormNouvelleSerieDeNotes.RadioGroupEcritOuOral.ItemIndex = 1);
          FichierCdn.SetData_V1(FormNouvelleSerieDeNotes.f334, 
								  FormNouvelleSerieDeNotes.ComboBox1.text, 
								  FormNouvelleSerieDeNotes.ComboBox5.text, 
								  FormNouvelleSerieDeNotes.ComboBox2.text, 
								  FormNouvelleSerieDeNotes.f338, 
								  DateToStr(FormNouvelleSerieDeNotes.DateTimePicker1.Date), 
								  FormNouvelleSerieDeNotes.Edit3.text, 
								  FormNouvelleSerieDeNotes.ComboBoxTypesDeNotes.text,false);
          FIdPeriode := FormNouvelleSerieDeNotes.f334;
          FichierCdn.Initialisation;
          TabSet1.TabIndex := 0;
          SendMessageA(GrilleNotesCarnetDeNotes.Handle, $403, FIdPeriode, 0);
          SendMessageA(GrilleMoyennesCarnetDeNotes.Handle, $408, FIdPeriode, 0);
          SendMessageA(GrilleBilanCarnetDeNotes.Handle, $403, TabControlGrillesBilan.TabIndex + 1, 0);
          SendMessageA(Handle, $40E, 0, 0);
          TabControlGrillesNotes.TabIndex := FIdPeriode - 1;
		  ESI := FichierCdn.NbrSerieNotes(FIdPeriode) - 1;
          SendMessageA(Handle, $401, 1, ESI);
          GrilleNotesCarnetDeNotes.TopRow := 1;
          GrilleNotesCarnetDeNotes.LeftCol := 1;
          GrilleNotesCarnetDeNotes.LeftCol := ESI;
          GrilleNotesCarnetDeNotes.SetFocus;
          keybd_event($26{38}, 0, 0, 0);
          keybd_event($26{38}, 0, 2, 0);
        end;//4
        FormNouvelleSerieDeNotes.Destroy;
        Exit;
      end;//3
    end;//2
    if (IsRegistred = false) then//0053AFEE
      Application.MessageBox('Impossible d''ajouter une série de notes. Le nombre de séries de notes est limité à 3 pour la version non enregistrée.','Carnet de Notes version Personnelle' ,$40{64})
    else
    Application.MessageBox(PChar('Impossible d''ajouter une série de notes. Le nombre de séries de notes est limité à ' + IntToStr(gvar_00617903) + '.'), 'Carnet de Notes version Personnelle', $40{64});
end;//0


//0053B1EC
procedure TFeuilleClasse.Supprimer1Click(Sender:TObject);
var
  I:integer;
begin//0
  //0053B1EC
  if (FichierCdn.IndexModule > 0) then
  begin//0053B207
	{gvar_00617D84}FormSupprimerSerie:= TFormSupprimerSerie.Create(Self, FichierCdn,logo); 
	FormSupprimerSerie.ShowModal;
	for I := 1 to FichierCdn.NbrePeriodes do//0053B252
		FichierCdn.SetPeriodeTraiteList_H01(I, true);
	SendMessageA(GrilleNotesCarnetDeNotes.Handle, $403, FIdPeriode, 0);
	SendMessageA(GrilleMoyennesCarnetDeNotes.Handle, $408, FIdPeriode, 0);
	SendMessageA(GrilleBilanCarnetDeNotes.Handle, $403,TabControlGrillesBilan.TabIndex + 1 , 0);
	SendMessageA(Handle, $40E, 0, 0);
	FormSupprimerSerie.Destroy;
  end;//1
end;//0

//0053B308
procedure TFeuilleClasse.Sriedenotes1Click(Sender:TObject);
begin//0
  //0053B308
  Ajouter1.Enabled := (FichierCdn.NbreEleves<> 0);
  Supprimer1.Enabled := (FichierCdn.IndexModule <> 0);
  Rorganiser1.Enabled := (FichierCdn.IndexModule <> 0);
  Utilitaires1.Enabled := (FichierCdn.IndexModule >= 2);
  Transformer1.Enabled := (FichierCdn.IndexModule <> 0);
  Informationssurlessriesdenotes1.Enabled := (FichierCdn.NbreEleves <> 0);
  Importerdepuisunfichier1.Enabled := (FichierCdn.NbreEleves <> 0);
end;//0


//0053B3AC
procedure TFeuilleClasse.Options1Click(Sender:TObject);
begin//0
	//0053B3AC
	FormCarnetDeNotes2.Options1Click(Sender);
	FichierCdn.Initialisation;
	SendMessageA(GrilleBilanCarnetDeNotes.Handle, $403,TabControlGrillesBilan.TabIndex +1 , 0);
	SendMessageA(GrilleNotesCarnetDeNotes.Handle, $403, FIdPeriode, 0);
	SendMessageA(GrilleMoyennesCarnetDeNotes.Handle, $408,FIdPeriode , 0);
	SendMessageA(Handle, $40B, 0, 0);
end;//0

//0053B450
procedure TFeuilleClasse.Informations1Click(Sender:TObject);
begin//0
  //0053B450
    //0053B492
    FormNouvelleClasse{gvar_00617E64} := TFormNouvelleClasse.Create(Self, FichierCdn, 'Informations sur la classe',logo,false);
    FormNouvelleClasse.ShowModal;
    if (FormNouvelleClasse.ModalResult = 1) then
    begin//2
      //0053B4E0
      FichierCdn.SetClasseName(FormNouvelleClasse.EditClasse.Text);
      FichierCdn.SetEtablissment(FormNouvelleClasse.EditEtablissement.Text);
      FichierCdn.SetMatiere(FormNouvelleClasse.ComboBoxMatiere.Text);
      FichierCdn.SetRemarque(FormNouvelleClasse.EditRemarque.Text);
      FichierCdn.SetYear(FormNouvelleClasse.EditAnneeScolaire.Text);
      FichierCdn.SetEnseignant(FormNouvelleClasse.ComboBoxUtilisateurs.Items[FormNouvelleClasse.ComboBoxUtilisateurs.ItemIndex]);
    end;//2
    FormNouvelleClasse.Destroy;
    SendMessageA(Handle, $406, 0, 0);
end;//0

//0053B6E4
procedure TFeuilleClasse.Modifier1Click(Sender:TObject);
var
 buf:string;
 I:integer;
 lvar_8:TStringList;
begin//0
  //0053B6E4
    //0053B71D
    FormCreerListeEleves{gvar_00617DCC} := TFormCreerListeEleves.Create(Self,FichierCdn.GetClasseName,logo);
    FormCreerListeEleves.ShowModal;
    if (FormCreerListeEleves.ModalResult = 1) then
    begin//0053B780
		FichierCdn.CreerListeEleves(FormCreerListeEleves.f318);
		lvar_8 := FichierCdn.GetEleveList;
		for I := 1 to FichierCdn.NbreEleves  do //0053B7BE
		begin//0053B7C6
		  FichierCdn.Set_DateNais(lvar_8.indexof(FormCreerListeEleves.f318[I - 1]) + 1, FormCreerListeEleves.f31C[I - 1]);
		end;//4
        for I := 1 to FichierCdn.NbreEleves do //0053B882
        begin//4
          //0053B88A  
          FichierCdn.SetRedoublants_(lvar_8.indexof(FormCreerListeEleves.f318[I - 1]) + 1 , FormCreerListeEleves.f320[lvar_8.indexof(FormCreerListeEleves.f318[I - 1])] = 'R');
        end;//4
      FichierCdn.Initialisation;
      SendMessageA(GrilleElevesCarnetDeNotes.Handle, $404, 0, 0);
      SendMessageA(GrilleElevesGrapheCarnetDeNotes.Handle, $404, 0, 0);
      SendMessageA(GrilleNotesCarnetDeNotes.Handle, $403, FIdPeriode, 0);
      SendMessageA(GrilleMoyennesCarnetDeNotes.Handle, $408, FIdPeriode, 0);
      SendMessageA(GrilleBilanCarnetDeNotes.Handle, $403, TabControlGrillesBilan.TabIndex + 1, 0);
    end;//2;
    FormCreerListeEleves.Destroy;
    SendMessageA(Handle, $406, 0, 0);
    SendMessageA(Handle, $40B, 0, 0);
end;//0

//0053BA50
procedure TFeuilleClasse.Listedeslves1Click(Sender:TObject);
begin//0
  //0053BA50
  Modifier1.Enabled := (FichierCdn.NbreEleves = 0);
  CopierdanslePressePapiers1.Enabled := (FichierCdn.NbreEleves > 0);
  Ajouterunlve1.Enabled := (FichierCdn.NbreEleves - 1 - $31 < 0);
  Supprimerunlve1.Enabled := (FichierCdn.NbreEleves > 0);
  Modifierlenomdunlve1.Enabled := (FichierCdn.NbreEleves > 0);
  //0053BAE6
  if (FichierCdn.NbreEleves <> 0) Or (Clipboard.HasFormat(1) = False) then //0053BAFC
   CollerdepuislePressePapiers2.Enabled := false
  else//0053BB00
    CollerdepuislePressePapiers2.Enabled := true;
  //0053BB1B
  if (Clipboard.HasFormat(1) = False) Or (FichierCdn.NbreEleves <= 0) then//0053BB2E
    CollerlesdatesdenaissancesdepuislePressePapiers1.Enabled  := false
  else//0053BB32
    CollerlesdatesdenaissancesdepuislePressePapiers1.Enabled := true;
end;//0


//0053BB44
procedure TFeuilleClasse.TabControlGrillesNotesChange(Sender:TObject);
begin
  //0053BB44
  if (FormHint.Visible) then //0053BB54
    FormHint.Hide;
    
  if (GrilleNotesCarnetDeNotes <> Nil) and (GrilleElevesCarnetDeNotes <> Nil) and(GrilleMoyennesCarnetDeNotes <> Nil) then 
  begin
	  FIdPeriode := TabControlGrillesNotes.TabIndex + 1;
	  SendMessageA(GrilleNotesCarnetDeNotes.Handle, 1027, FIdPeriode, 0);
	  SendMessageA(GrilleElevesCarnetDeNotes.Handle, 1027, FIdPeriode, 0);
	  SendMessageA(GrilleMoyennesCarnetDeNotes.Handle, 1032, FIdPeriode, 0);
	  SendMessageA(Handle, 1038, 0, 0);
  end;

end;

//0053BC2C
procedure TFeuilleClasse.Exporter1Click(Sender:TObject);
begin//0
  //0053BC2C
  FormExportation{gvar_00617DBC} := TFormExportation.Create(Self,logo,FichierCdn);
  FormExportation.ShowModal;
  FormExportation.Destroy;
end;//0


//0053BC74
procedure TFeuilleClasse.CopierdanslePressePapiers1Click(Sender:TObject);
var
  I:integer;
  buf,lvar_8:string;
begin
  //0053BC74
    //0053BC97
    Clipboard.Clear;
    lvar_8 := '';
      for I := 1 to FichierCdn.NbreEleves do //0053BCBA
      begin//3
        //0053BCBE
        lvar_8 := lvar_8 + FichierCdn.GetEleveName(I) + #13 + #10;
      end;//3
    
    Clipboard.SetTextBuf(PChar(lvar_8));
end;//0

//0053BD58
procedure TFeuilleClasse.Ajouterunlve1Click(Sender:TObject);
begin//0
  //0053BD58..0053BD80
    {gvar_00617CF8}FormModifierEleve := TFormModifierEleve.Create(Self, '', '', false,'Ajouter un élève');
    FormModifierEleve.ShowModal;
    if (FormModifierEleve.ModalResult = 1) then
    begin//2
      //0053BDC4
	  with FormModifierEleve do 
      FichierCdn.InsertItem_V00(EditNomPrenom_FormModifier.Text, EditDateDeNaissance_FormModifier.Text, '1',CheckBoxRedoublant_FormModifier.Checked);
	  FichierCdn.Initialisation;
      SendMessageA(GrilleNotesCarnetDeNotes.Handle, $403, FIdPeriode, 0);
      SendMessageA(GrilleMoyennesCarnetDeNotes.Handle, $408, FIdPeriode, 0);
      SendMessageA(GrilleElevesCarnetDeNotes.Handle, $404, 0, 0);
      SendMessageA(GrilleElevesGrapheCarnetDeNotes.Handle, $404, 0, 0);
      SendMessageA(GrilleBilanCarnetDeNotes.Handle, $403,TabControlGrillesBilan.TabIndex + 1 , 0);
      SendMessageA(Handle, $406, 0, 0);
    end;//2
    FormModifierEleve.Destroy;
end;//0


//0053BF78
procedure TFeuilleClasse.Supprimerunlve1Click(Sender:TObject);
begin//0
  //0053BF78
    //0053BF91
    {gvar_00617DD4}FormListeEleves := TFormListeEleves.Create(Self, {f4D0}logo, FichierCdn,'Choisir l''élève à supprimer');
    FormListeEleves.ShowModal;
    if (FormListeEleves.ModalResult = 1) then
    begin//2
      //0053BFDD
      if(Application.MessageBox(PChar('Supprimer "' + FormListeEleves.ListeEleves.Items[FormListeEleves.ListeEleves.ItemIndex] + '" de la liste des élèves ?'),
									'Suppression d''un élève', $24{36})= 6) then
      begin//3//0053C046
        FichierCdn.DeleteItem_V00(FormListeEleves.ListeEleves.ItemIndex + 1);
        FichierCdn.Initialisation;
        SendMessageA(GrilleNotesCarnetDeNotes.Handle, $403, FIdPeriode, 0);
        SendMessageA(GrilleMoyennesCarnetDeNotes.Handle, $408, FIdPeriode, 0);
        SendMessageA(GrilleElevesCarnetDeNotes.Handle, $404, 0, 0);
        SendMessageA(GrilleElevesGrapheCarnetDeNotes.Handle, $404, 0, 0);
        SendMessageA(GrilleBilanCarnetDeNotes.Handle, $403,TabControlGrillesBilan.TabIndex + 1 , 0);
        SendMessageA(Handle, $406, 0, 0);
      end;//3
    end;//2
    FormListeEleves.Destroy;
 
end;//0


//0053C1EC
procedure TFeuilleClasse.Modifierlenomdunlve1Click(Sender:TObject);
var
  buf:string;
begin//0
  //0053C1EC
    //0053C21B
    FormListeEleves{gvar_00617DD4} := TFormListeEleves.Create(Self, logo, FichierCdn, 'Choisir le nom à modifier');  
    FormListeEleves.ShowModal;
    if (FormListeEleves.ModalResult = 1) then
    begin//2
      //0053C267
      buf:=FichierCdn.GetDateNais(FormListeEleves.ListeEleves.ItemIndex + 1);

      FormModifierEleve{gvar_00617CF8} := TFormModifierEleve.Create(Self, FormListeEleves.ListeEleves.Items[FormListeEleves.ListeEleves.ItemIndex],
												 buf, 
												 FichierCdn.IsRedoublant(FormListeEleves.ListeEleves.ItemIndex + 1),
												 'Modifier les informations de l''élève');
      FormModifierEleve.ShowModal;
      if (FormModifierEleve.ModalResult = 1) then
      begin//3
        //0053C357
        FichierCdn.DeleteItem_V01(FormListeEleves.ListeEleves.ItemIndex + 1, FormModifierEleve.EditNomPrenom_FormModifier.Text,FormModifierEleve.CheckBoxRedoublant_FormModifier.Checked, FormModifierEleve.EditDateDeNaissance_FormModifier.Text);
        SendMessageA(GrilleNotesCarnetDeNotes.Handle, $403, FIdPeriode, 0);
        SendMessageA(GrilleMoyennesCarnetDeNotes.Handle, $408, FIdPeriode, 0);
        SendMessageA(GrilleElevesCarnetDeNotes.Handle, $404, 0, 0);
        SendMessageA(GrilleElevesGrapheCarnetDeNotes.Handle, $404, 0, 0);
        SendMessageA(GrilleBilanCarnetDeNotes.Handle, $403,TabControlGrillesBilan.TabIndex + 1 , 0);
      end;//3
      FormModifierEleve.Destroy;
    end;//2
    FormListeEleves.Destroy;
end;//0

//0053C560
procedure TFeuilleClasse.Rorganiser1Click(Sender:TObject);
begin//0
  //0053C560
  FormReorganiser{gvar_00617D7C} := TFormReorganiser.Create(Self, logo,FichierCdn);
  FormReorganiser.ShowModal;
  FormReorganiser.Destroy;
  FichierCdn.Initialisation;
  SendMessageA(GrilleNotesCarnetDeNotes.Handle, $403{1027}, FIdPeriode, 0);
  SendMessageA(GrilleMoyennesCarnetDeNotes.Handle, $408{1032}, FIdPeriode, 0);
  SendMessageA(GrilleBilanCarnetDeNotes.Handle, $403{1027}, TabControlGrillesBilan.TabIndex + 1 , 0);
  SendMessageA(Handle, $40E{1038}, 0, 0);
end;//0

//0053C638
procedure TFeuilleClasse.Imprimer1Click(Sender:TObject);
var
 buf :string;
begin
  //0053C638
    //0053C65A
    FormImprimer{gvar_00617E04} := TFormImprimer.Create(Self, FichierCdn , logo{f4D0});
    FormImprimer.Caption := 'Imprimer (' + FichierCdn.GetClasseName + ')';
    FormImprimer.ShowModal;
    FormImprimer.Destroy;
  //0053C6F0
end;

//0053C72C
procedure TFeuilleClasse.Configurerlimpression1Click(Sender:TObject);
begin//0
  //0053C72C;
  if (Printer.Printers.Count > 0) then
  begin//0053C742
    PrinterSetupDialog1.Execute;
  end;//1
end;

//0053C750
procedure TFeuilleClasse.Nouvelle1Click(Sender:TObject);
begin//0
  //0053C750
  FormCarnetDeNotes2.Nouvelle1Click(Sender);
end;

//0053C760
procedure TFeuilleClasse.SpeedButtonMoyennesClick(Sender:TObject);
begin
  //0053C760
  if (PanelNotes.Width <> 0) then
  begin//1
    //0053C770
    PanelWidth2 := PanelNotes.Width;
    Panel2.Width := Panel2.Width + PanelNotes.Width;
    SpeedButtonNotes.Enabled := False;
  end//1
  else 
  begin
	Panel2.Width := Panel2.Width - PanelWidth2;
	SpeedButtonNotes.Enabled := True;
  end;
end;

//0053C7D0
procedure TFeuilleClasse.SpeedButtonNotesClick(Sender:TObject);
begin
  //0053C7D0
  if (PanelMoyennes.Width <> 0) then
  begin//1
    //0053C7E0
    PanelWidth := PanelMoyennes.Width;
    Panel2.Width := Panel4.Width;
    PanelMoyennes.Width := 0;
    SpeedButtonMoyennes.Enabled := False;
  end//1
  else begin
	Panel2.Width := Panel4.Width + PanelWidth;
	PanelMoyennes.Width := PanelWidth;
	SpeedButtonMoyennes.Enabled := True;
  end;
end;

//0053C858
procedure TFeuilleClasse.TabControlGrillesBilanChange;
begin//0
  //0053C858
  SendMessageA(GrilleBilanCarnetDeNotes.Handle, $403, TabControlGrillesBilan.TabIndex + 1 , 0);
end;//0


//0053C88C
procedure TFeuilleClasse.TabSet1Click(Sender:TObject);
begin
  //0053C88C
  if (FormHint.Visible <> False) then FormHint.Hide; //0053C89C
  Notebook1.PageIndex := TabSet1.TabIndex;
  case TabSet1.TabIndex of
    0:
    begin//0053C8E2
      SendMessageA(GrilleNotesCarnetDeNotes.Handle, $403, TabControlGrillesNotes.TabIndex + 1 , 0);
      SendMessageA(GrilleMoyennesCarnetDeNotes.Handle, $408, TabControlGrillesNotes.TabIndex + 1, 0);
      SendMessageA(Handle, $40E, 0, 0);
    end;
    1:
    begin//0053C956
      SendMessageA(GrilleBilanCarnetDeNotes.Handle, $403,TabControlGrillesBilan.TabIndex + 1 , 0);
      SendMessageA(Handle, $40E, 0, 1);
    end;//2
    2:
    begin//0053C99C
      SendMessageA(GrilleElevesGrapheCarnetDeNotes.Handle, $403, TabControlGraphes.TabIndex + 1 , 0);
      SendMessageA(Handle, $40E, 0, 1);
    end;//2
  end;//1
end;

//0053C9E4
procedure TFeuilleClasse.EvenemtsGrilleMoyennesCarnetDeNotes(var Msg:TMsg);
begin//0
  //0053C9E4
  if (Msg.message <> 0) then//0053C9F0
    SendMessageA(GrilleMoyennesCarnetDeNotes.Handle, $408, Msg.message, Msg.wParam)
  else 
    SendMessageA(GrilleMoyennesCarnetDeNotes.Handle, $408, FIdPeriode, Msg.wParam);
end;//0

//0053CA38
procedure TFeuilleClasse.EvenemtsCreerGrilleNotesCarnetDeNotes(var Msg:TMsg);
begin//0
  //0053CA38
  if (GrilleNotesCarnetDeNotes <> Nil) then//0053CA49
    SendMessageA(GrilleNotesCarnetDeNotes.Handle, $403, Msg.message, 0);
end;//0

//0053CA68
procedure TFeuilleClasse.SpeedButtonEgaliserPanneauClick(Sender:TObject);
var
 x,SumWidth :integer;
 y:integer;
begin
  //0053CA68
  SumWidth := Panel4.Width + PanelNotes.Width + PanelMoyennes.Width;
  x := TRUNC(SumWidth/ 2) ;
  PanelNotes.Width:=x;
  Panel2.Width := SumWidth - x {PanelNotes.Width};
  SpeedButtonNotes.Enabled := True;
  SpeedButtonMoyennes.Enabled := True;
end;

//0053CAFC
procedure TFeuilleClasse.EvenemtsFeuVertRouge(var Msg:TMsg);
begin//0
  //0053CAFC
  ImageFeuVert.Visible := FichierCdn.IsModified Xor true;
  ImageFeuRouge.Visible := FichierCdn.IsModified;
end;//0


//0053CB34
procedure TFeuilleClasse.EvenemtsPositionsGrilles(var Msg:TMsg);
begin//0
  //0053CB34
  case GetOngletsGrillesNotes of
    0: //0053CB4C
      TabControlGrillesNotes.TabPosition := tpTop; //0
    1://0053CB5B
      TabControlGrillesNotes.TabPosition := tpLeft; //2
    2://0053CB6A
      TabControlGrillesNotes.TabPosition := tpRight; //3
    3: //0053CB79
      TabControlGrillesNotes.TabPosition := tpBottom; //1
  end;//1

  case GetOngletsGrillesBilans of
    0://0053CB9B
      TabControlGrillesBilan.TabPosition := tpTop;
    1://0053CBAA
      TabControlGrillesBilan.TabPosition := tpLeft;
    2://0053CBB9
      TabControlGrillesBilan.TabPosition := tpRight;
    3://0053CBC8
      TabControlGrillesBilan.TabPosition := tpBottom;
  end;//1
  case GetOngletsGraphes_ of
    0://0053CBEA
      TabControlGraphes.TabPosition := tpTop;
    1://0053CBF9
      TabControlGraphes.TabPosition := tpLeft;
    2: //0053CC08
      TabControlGraphes.TabPosition := tpRight;
    3: //0053CC17
      TabControlGraphes.TabPosition := tpBottom;
  end;//1
end;//0


//0053CC28
procedure TFeuilleClasse.CollerdepuislePressePapiers2Click(Sender:TObject);
var
  StringList:TStringList;
begin//0
  //0053CC28
    //0053CC3F
    StringList := TStringList.Create;
    StringList.Text := Clipboard.AsText;
    FichierCdn.CreerListeEleves(StringList);
    FichierCdn.Initialisation;
    SendMessageA(GrilleElevesCarnetDeNotes.Handle, $404, 0, 0);
    SendMessageA(GrilleElevesGrapheCarnetDeNotes.Handle, $404, 0, 0);
    SendMessageA(GrilleNotesCarnetDeNotes.Handle, $403, FIdPeriode, 0);
    SendMessageA(GrilleMoyennesCarnetDeNotes.Handle, $408, FIdPeriode, 0);
    SendMessageA(GrilleBilanCarnetDeNotes.Handle, $403, TabControlGrillesBilan.TabIndex + 1, 0);
    SendMessageA(Handle, $406, 0, 0);
    SendMessageA(Handle, $40B, 0, 0);
    StringList.Destroy;
end;//0

//0053CD78
procedure TFeuilleClasse.Toutenregistrer1Click(Sender:TObject);
begin//0
  //0053CD78
  SendMessageA(HFormCarnetDeNotes2, $40C, 0, 0);
end;//0


//0053CD90
procedure TFeuilleClasse.EvenemtsSave(var Msg:TMsg);
var
  FileName:string;
  buf:string;
begin//0
    if (FichierCdn.OldVersion) then
    begin//2
      //0053CDD4
      if (MessageBoxA(0, PChar('Le fichier "' + ExtractFileName(GetFileName) + '" que vous allez enregistrer est au format d''une ancienne version de Carnet de Notes.' + #10 + #13 + #10 + #13 + 'Si vous confirmez, il sera enregistré au nouveau format mais ne pourra plus être relu par l''ancienne version.' + #10 + #13 + #10 + #13 + 'Voulez vous enregistrer ce fichier ?'), 'Carnet de Notes version Personnelle', $14{20}) = 7) then Exit;
    end;//2
    if (GetFileName = 'Nouvelle classe') then
    begin//2
      //0053CE8A
      SaveDialog1.FileName := '';
      SaveDialog1.Title := 'Enregistrer sous ...';
      SaveDialog1.Filter := 'Fichier Carnet de Notes *.cdn |*.cdn';
      if (SaveDialog1.Execute) then
      begin//3
        //0053CECD
        FichierCdn.SaveToFile__(SaveDialog1.FileName, false, '', 0);
      end;//3
    end//2
    else
    begin//2
      //0053CEFA
      FichierCdn.SaveToFile__(GetFileName, false, '', 0); //{$53D144}
    end;//2
    SendMessageA(Handle, $406, 0, 0);
end;//0


//0053D148
procedure TFeuilleClasse.EvenemtsStatutNote(var Msg:TMsg);
var
 I,lvar_10,lvar_C:integer;
 buf,lvar_8:string;
begin//0
    if (Msg.wParam = 0) then
    begin//2
      //0053D174
      Label1.Left := Label2.Left + Label2.Width + 15;
      Bevel1.Left := Label1.Left - 5;
      buf := FichierCdn.GetPeriodeName(FIdPeriode);
	  I:=FichierCdn.NbrSerieNotes(FIdPeriode);
	  lvar_C := FichierCdn.NbreEleves;
      lvar_10 := lvar_C *  I;
      case lvar_10 of
        0:
        begin//4
          //0053D220
          lvar_8 := 'Aucune note';
        end;//4
        1:
        begin//4
          //0053D22F
          lvar_8 := 'Une note';
        end;//4
      end;//3
      lvar_8 := IntToStr(lvar_10) + ' notes';
      case I  of
        0:
        begin//4
          //0053D26A
          Label1.Caption := buf + ' : aucune série de notes';
        end;//4
        1:
        begin//4
          //0053D290
          Label1.Caption := buf + ' : 1 série de notes';
        end;//4
      end;//3
      Label1.Caption := buf + ' : ' + IntToStr(I) + ' séries de notes';
      Label1.Caption := Label1.Caption + ' - ' + lvar_8;
      I := FichierCdn.IndexModule;
      case I of
        0:
        begin//4
          //0053D34F
          Label3.Caption := 'Sur l''année : aucune série de notes';
        end;//4
        1:
        begin//4
          //0053D361
          Label3.Caption := 'Sur l''année : 1 série de notes';
        end;//4
      end;//3
      Label3.Caption := 'Sur l''année : ' + IntToStr(I ) + ' séries de notes';
       lvar_10 := I * lvar_C;
      case lvar_10 of
        0:
        begin//4
          //0053D3CB
          lvar_8 := 'Aucune note';
        end;//4
        1:
        begin//4
          //0053D3DA
          lvar_8 := 'Une note';
        end;//4
      end;//3      
      Label3.Caption := Label3.Caption + ' - ' + IntToStr(lvar_10) + ' notes';
      Label3.Left := Label1.Left + Label1.Width + 15;
      Bevel3.Left := Label3.Left - 5;
      Bevel1.Width := Canvas.TextWidth(Label1.Caption) + 13;
      Bevel3.Width := Canvas.TextWidth(Label3.Caption) + 13;
      Label1.Visible :=True;
      Label3.Visible :=True;
      Bevel1.Visible :=True;
      Bevel3.Visible :=True;
    end//2
	else 
	begin
		Label1.Visible :=False;
		Label3.Visible :=False;
		Bevel1.Visible :=False;
		Bevel3.Visible :=False;
	end;
	 //0053D57D
 
end;//0

//0053D6F4
procedure TFeuilleClasse.EvenemtsGrilleElevesPostions(var Msg:TMsg);
var
  GridRect:TGridRect;
begin//0
  if (GrilleNotesCarnetDeNotes <> Nil) then
  begin//0053D70A
    if (GrilleElevesCarnetDeNotes <> Nil) then
    begin//0053D717
      if (FichierCdn.NbrSerieNotes(FIdPeriode) > 0) then
      begin//0053D72C
        if (Msg.wParam = -1) then//0053D734
          GridRect.left := 0
        else//0053D73B
          GridRect.left := Msg.wParam;
        GridRect.Top := Msg.message;
        if (Msg.wParam = -1) then
        begin//4
          //0053D74A
          GridRect.Right := FichierCdn.NbrSerieNotes(FIdPeriode) - 1;
        end//4
        else
        begin//0053D770
          GridRect.Right := Msg.wParam;
        end;//4
        GridRect.Bottom := Msg.message;
        if (Msg.message <> 0) then
        begin//0053D77F
          GrilleNotesCarnetDeNotes.Selection := GridRect;
        end;//4
      end;//3
      if (Msg.message <> 0) then
      begin//0053D793
        GridRect.Left := 1;
        GridRect.Top := Msg.message;
        GridRect.Right := 1;
        GridRect.Bottom := Msg.message;
        GrilleElevesCarnetDeNotes.Selection := GridRect;
      end;//3
    end;//2
  end;//1
end;//0

//0053D7C0
procedure TFeuilleClasse.Copierlefichiersurdisquette1Click(Sender:TObject);
var
  FileName:string;
  Info: TSHFileOpStruct;
begin//0
  //0053D7C0
    //0053D806
    if ((Sender is TMenuItem) ) then
    begin//2
      //0053D81B
      if (FichierCdn.IsModified) then
      begin//3
        //0053D82A
        Application.MessageBox(PChar('Le fichier "' + ExtractFileName(GetFileName) + '" a été modifié. Vous devez l''enregistrer avant de pouvoir le copier sur disquette.'),'Carnet de Notes version Personnelle' , $40{64});
      end//3
	  else 
	  begin
	    with Info do
		begin
		  fAnyOperationsAborted := false;
		  Wnd := Handle;
		  wFunc := FO_COPY{2};
		  pFrom := PChar(GetFileName + #0);
		  pTo := PChar(GetDrives_[tag] + ':\' + ExtractFileName(GetFileName) + #0);
		  fFlags := $40{64};
		  SHFileOperationA(Info);
		end;
	  end;
    end;//2
	//0053D970
end;//0

//0053DA54
procedure TFeuilleClasse.Envoyerlefichierpourcourrierlectronique1Click(Sender:TObject);
var
  recPointer : lpMapiFileDesc;
  buf : String;
  lpMessage  : lpMapiMessage; 
  FileName : string;
begin//0
  //0053DA54
    //0053DA87
    GetMem(recPointer,24); //ESI
	recPointer.ulReserved := 0;
	recPointer.flFlags := 2;
	recPointer.nPosition := 0;
    recPointer.lpszPathName := PChar(GetFileName);
	recPointer.lpszFileName := 0;
	recPointer.lpFileType := 0;
	lpMessage.lpszSubject  := PChar('Envoi du fichier Carnet de Notes : ' + ExtractFileName(GetFileName)); //30
    lpMessage.lpszNoteText := 0;
    lpMessage.lpszMessageType := 0;
    lpMessage.lpszDateReceived := 0;
    lpMessage.lpszConversationID := 0;
    lpMessage.flFlags:= 0;
    lpMessage.lpOriginator := 0;
    lpMessage.nRecipCount := 0;
    lpMessage.lpRecips := 0;
    lpMessage.nFileCount := 1;
    lpMessage.lpFiles := recPointer;
    FreeMem(recPointer);
    if (ProcSendEmail(0, 0, lpMessage, 11, 0) <> 0) then
    begin//2
      //0053DB7F
      Application.MessageBox('Impossible de lancer votre logiciel de courrier électronique depuis Carnet de Notes.'+#13+#10+'Il est conseillé de le lancer normalement depuis votre menu Démarrer.','Carnet de Notes version Personnelle' , $10{16});
    end;//2
end;//0

//0053DCB8
procedure TFeuilleClasse.Crerlesdisquettespourlescollgues1Click(Sender:TObject);
begin//0
  FormCreerDisquettes{gvar_00617D6C} := TFormCreerDisquettes.Create(Self, logo,FichierCdn);
  FormCreerDisquettes.ShowModal;
  FormCreerDisquettes.Destroy;
end;//0

//0053DD00
procedure TFeuilleClasse.Informationssurlessriesdenotes1Click(Sender:TObject);
begin//0
  FormInformationsSeriesDeNotes{gvar_00617D8C} := TFormInformationsSeriesDeNotes.Create(Self, FichierCdn, Logo);
  FormInformationsSeriesDeNotes.ShowModal;
  FormInformationsSeriesDeNotes.Destroy;
  SendMessageA(GrilleNotesCarnetDeNotes.Handle, $403, FIdPeriode, 0);
  SendMessageA(GrilleMoyennesCarnetDeNotes.Handle, $408, FIdPeriode, 0);
  SendMessageA(GrilleBilanCarnetDeNotes.Handle, $403, TabControlGrillesBilan.TabIndex + 1 , 0);
end;//0


//0053DDC4
procedure TFeuilleClasse.Fusionnerplusieursfichiers1Click(Sender:TObject);
begin//0
  FormCarnetDeNotes2{gvar_006184E0}.Fusionnerplusieursfichiers1Click(Sender);
end;//0


//0053DDD4
procedure TFeuilleClasse.Rcuprerunfichierbak1Click(Sender:TObject);
begin//0
  FormCarnetDeNotes2.Rcuprerunfichierbak1Click(Sender);
end;//0


//0053DDE4
procedure TFeuilleClasse.Sauvegardervosfichiers1Click(Sender:TObject);
begin//0
  FormCarnetDeNotes2.Sauvegardervosfichiers1Click(Sender);
end;//0

//0053DDF4
procedure TFeuilleClasse.GetClasseName(var Y:String);
begin//0
  y:= FichierCdn.GetClasseName;
end;//0


//0053DE0C
procedure TFeuilleClasse.GetEnseignant(var Y:String);
begin//0
  y:=FichierCdn.GetEnseignant();
end;//0


//0053DE24
procedure TFeuilleClasse.FormActivate(Sender:TObject);
begin//0
    FormCarnetDeNotes2.OngletsClasses.TabIndex := FormCarnetDeNotes2.TabControl2.Tabs.IndexOf(GetFileName);
    FormCarnetDeNotes2.TabControl2.TabIndex := FormCarnetDeNotes2.OngletsClasses.TabIndex;
end;//0

//0053DED8
procedure TFeuilleClasse.Utilitaires1Click(Sender:TObject);
var
  Checked:boolean;
  k:integer;
begin//0
  //0053DED8
  checked:=false;
  k:=0;
  FormUtilitairesSeries{gvar_00617D9C} := TFormUtilitairesSeries.Create(Self, FichierCdn, logo);
  FormUtilitairesSeries.ShowModal;
  if (FormUtilitairesSeries.ModalResult = 1) then
  begin//1
    //0053DF2B
    FIdPeriode := FormUtilitairesSeries.fF28;
    TabControlGrillesNotes.TabIndex :=FormUtilitairesSeries.fF28 - 1;
    FichierCdn.Initialisation;
    SendMessageA(GrilleNotesCarnetDeNotes.Handle, $403{1027}, FIdPeriode, 0);
    SendMessageA(GrilleMoyennesCarnetDeNotes.Handle, $408{1032}, FIdPeriode, 0);
    SendMessageA(GrilleBilanCarnetDeNotes.Handle, $403{1027}, TabControlGrillesBilan.TabIndex+1, 0);
    SendMessageA(Handle, $40E, FIdPeriode, 0);
    k := FormUtilitairesSeries.fF28;
    checked := FormUtilitairesSeries.CheckBox3.Checked;
  end;//1

  FormUtilitairesSeries.Destroy;
  if (checked ) then
  begin//1
    //0053E035
    FormInformationsSeriesDeNotes{gvar_00617D8C} := TFormInformationsSeriesDeNotes.Create(Self, FichierCdn, logo);
    FormInformationsSeriesDeNotes.TabControl1.TabIndex := k -1;
    FormInformationsSeriesDeNotes.TabControl1Change(Sender);
    FormInformationsSeriesDeNotes.ListBoxSeries.ItemIndex := FichierCdn.NbrSerieNotes(k) - 1;
    FormInformationsSeriesDeNotes.ListBoxSeriesClick(Sender);
    FormInformationsSeriesDeNotes.ShowModal;
    FormInformationsSeriesDeNotes.Destroy;
    FichierCdn.Initialisation;
    SendMessageA(GrilleNotesCarnetDeNotes.Handle, $403, FIdPeriode, 0);
    SendMessageA(GrilleMoyennesCarnetDeNotes.Handle, $408, FIdPeriode, 0);
    SendMessageA(GrilleBilanCarnetDeNotes.Handle, $403, TabControlGrillesBilan.TabIndex+1 , 0);
  end;//1
end;//0

//0053E16C
procedure TFeuilleClasse.Transformer1Click(Sender:TObject);
var
  checked:boolean;
  k:integer;
begin//0
  //0053E16C
  checked := false;
  k:=0;
  FormTransformerSeries{gvar_00617DA4} := TFormTransformerSeries.Create(Self, FichierCdn, logo);
  FormTransformerSeries.ShowModal;
  if (FormTransformerSeries.ModalResult = 1) then
  begin//1
    //0053E1BF
    FIdPeriode := FormTransformerSeries.f318;
    TabControlGrillesNotes.TabIndex := FormTransformerSeries.f318 - 1;
    FichierCdn.Initialisation;
    SendMessageA(GrilleNotesCarnetDeNotes.Handle, $403, FIdPeriode, 0);
    SendMessageA(GrilleMoyennesCarnetDeNotes.Handle, $408, FIdPeriode, 0);
    SendMessageA(GrilleBilanCarnetDeNotes.Handle, $403,TabControlGrillesBilan.TabIndex + 1 , 0);
    SendMessageA(Handle, $40E, FIdPeriode, 0);
    k := FormTransformerSeries.f318;
    checked := FormTransformerSeries.CheckBox3.Checked;
  end;//1
  FormTransformerSeries.Destroy;
  if (checked ) then
  begin//1
    //0053E2C9
    FormInformationsSeriesDeNotes{gvar_00617D8C} := TFormInformationsSeriesDeNotes.Create(Self, FichierCdn, logo);
    FormInformationsSeriesDeNotes.TabControl1.TabIndex := k - 1;
    FormInformationsSeriesDeNotes.TabControl1Change(self);
    FormInformationsSeriesDeNotes.ListBoxSeries.ItemIndex := FichierCdn.NbrSerieNotes(FormTransformerSeries.f318) - 1;
    FormInformationsSeriesDeNotes.ListBoxSeriesClick(Sender);
    FormInformationsSeriesDeNotes.ShowModal;
    FormInformationsSeriesDeNotes.Destroy;
    FichierCdn.Initialisation;
    SendMessageA(GrilleNotesCarnetDeNotes.Handle, $403, FIdPeriode, 0);
    SendMessageA(GrilleMoyennesCarnetDeNotes.Handle, $408, FIdPeriode, 0);
    SendMessageA(GrilleBilanCarnetDeNotes.Handle, $403,TabControlGrillesBilan.TabIndex + 1 , 0);
  end;//1
end;//0

//0053E400
procedure TFeuilleClasse.Crerlesbulletinsdeslves1Click(Sender:TObject);
begin
 FormCarnetDeNotes2.Crerlesbulletinsdeslves1Click(Self);
end;

//0053E410
procedure TFeuilleClasse.EvenemtsPanelEleves_ElevesGraphe(var Msg:TMsg);
begin//0053E410
  PanelEleves.Width := Msg.message + 2;
  PanelElevesGraphe.Width := Msg.message + 2;
end;//0


//0053E44C
procedure TFeuilleClasse.EvenemtsChart(var Msg:TMsg);
var
   lvar_C,lvar_14,lvar_10,lvar_18,I:integer;
   buf : string;
   lvar_158,lvar_28 :real;
begin//0
    lvar_C := Msg.wParam;
    lvar_10 := Msg.message;
    lvar_14 := FichierCdn.NbrSerieNotes(lvar_10);
    if (lvar_14 > 0) then
    begin//0053E4AB
      Chart1.Visible := True;
      Chart1.View3D := Getgraphe3D;
      Chart1.Legend.Visible := GetGrapheLegende;
      if (GetGrapheLegende) then
      begin//3
        //0053E4F2
        lvar_18 := 0;
		  for I := 1 to lvar_14 do //0053E502
          try
            //0053E51A
            buf := FichierCdn.Get_Sum(lvar_10, I ,lvar_C);
            //EAX := lvar_38;
            lvar_18 := lvar_18 + 1;
          except//5
            on E:Exception do
            begin//0053E59D
            end;//6
          end;//5//0053E5B5
        Chart1.legend.Visible := (lvar_18 <> 0);
      end;//3
      Chart1.Gradient.Visible := GetGrapheDegrade;
      Chart1.Gradient.StartColor :=GetcouleurDebutDegrade;
      Chart1.Gradient.EndColor := GetcouleurFinDegrade;
      Chart1.LeftWall.Color := GetColorMurGauche;
      Chart1.BottomWall.Color := GetCouleurMurBas;
      Chart1.Monochrome := GetGrapheEnCouleur Xor true;
      Chart1.RemoveAllSeries;
	  Chart1.AddSeries(TLineSeries.Create(Chart1));
	  Chart1.AddSeries(TLineSeries.Create(Chart1));
	  Chart1.AddSeries(TLineSeries.Create(Chart1));
	  Chart1.AddSeries(TLineSeries.Create(Chart1));
      Chart1.Series[0].ShowInLegend := GetGrapheLigneEleve;
      Chart1.Series[1].ShowInLegend := GetGrapheLigneMin;
      Chart1.Series[2].ShowInLegend := GetGrapheLigneMax;
      Chart1.Series[3].ShowInLegend := GetgrapheLigneMoyenne;
    end//2
    else
    begin//0053E71C
      Chart1.Visible := False;
    end;//2
	  for I := 1 to lvar_14 do //0053E743
      try
        //0053E75B
        if (GetGrapheLigneEleve) then
        begin//4
          //0053E768
          lvar_158 := GetMoyennesSur * StrToFloat(FichierCdn.Get_Sum(lvar_10, I, lvar_C));
          lvar_28 := lvar_158 / StrToFloat(fichiercdn.GetDateNoteSur( lvar_10, I));
          Chart1.Series[0].AddXY(I, lvar_28, FichierCdn.GetTitleModule( lvar_10, I), GetCouleurEleve); // 0053E8B1 
          Chart1.Series[0].Title := FichierCdn.GetEleveName(lvar_C);
          Chart1.Series[0].SeriesColor := GetCouleurEleve;
          TLineSeries(Chart1.Series[0]).LinePen.Width := 2;
        end;//4
        if (GetGrapheLigneMin) then
        begin//4
          //0053E967
          lvar_158 := GetMoyennesSur * StrToFloat(FichierCdn.GetMinNote__(lvar_10, I));
          lvar_28 := lvar_158 / StrToFloat(FichierCdn.GetDateNoteSur( lvar_10, I));
          Chart1.Series[1].AddXY(I, lvar_28, FichierCdn.GetTitleModule(lvar_10, I), GetCouleurMin);
          Chart1.Series[1].Title := 'Minimum de la classe';
          Chart1.Series[1].SeriesColor := GetCouleurMin;
          TLineSeries(Chart1.Series[1]).LinePen.Width := 2;
        end;//4
        if (GetGrapheLigneMax) then
        begin//4
          //0053EB30
          lvar_158 := GetMoyennesSur * StrToFloat(FichierCdn.GetMaxNote__(lvar_10, I));
          lvar_28 := lvar_158 / StrToFloat(FichierCdn.GetDateNoteSur( lvar_10, I));
          Chart1.Series[2].AddXY(I, lvar_28, FichierCdn.GetTitleModule( lvar_10, I), GetcouleurMax);
          Chart1.Series[2].Title := 'Maximum de la classe';
          Chart1.Series[2].SeriesColor := GetcouleurMax;
          TLineSeries(Chart1.Series[2]).LinePen.Width  := 2;
        end;//4
        if (GetgrapheLigneMoyenne) then
        begin//4
          lvar_158 := GetMoyennesSur * StrToFloat(FichierCdn.GetMoyenne___(lvar_10, I));
          lvar_28 := lvar_158 / StrToFloat(FichierCdn.GetDateNoteSur( lvar_10, I));
          Chart1.Series[3].AddXY(I, lvar_28, FichierCdn.GetTitleModule( lvar_10, I), GetcouleurMoyenne);
          Chart1.Series[3].Title := 'Moyenne de la classe';
          Chart1.Series[3].SeriesColor := GetcouleurMoyenne;
          TLineSeries(Chart1.Series[3]).LinePen.Width := 2;
        end;//4
      except//3
        on E:EConvertError do
        begin//0053EED0
        end;//4
      end;//3
end;//0

//0053EF88
procedure TFeuilleClasse.TabControlGraphesChange(Sender:TObject);
begin//0
  SendMessageA(GrilleElevesGrapheCarnetDeNotes.Handle, $403{1027}, TabControlGraphes.TabIndex + 1, 0);
end;//0


//0053EFBC
procedure TFeuilleClasse.PopupMenu1Popup(Sender:TObject);
begin//0
  Grapheen3D1.Checked := Getgraphe3D;
  Grapheendgrad1.Checked := GetGrapheDegrade;
  Grapheendgrad1.Enabled :=GetGrapheEnCouleur;
  Grapheencouleur1.Checked := GetGrapheEnCouleur;
  Afficherlalgende1.Checked := GetGrapheLegende;
  AfficherligneElve1.Checked := GetGrapheLigneEleve;
  AfficherligneMinimum1.Checked := GetGrapheLigneMin;
  AfficherligneMaximum1.Checked := GetGrapheLigneMax;
  AfficherligneMoyenne1.Checked := GetgrapheLigneMoyenne;
end;//0


//0053F064
procedure TFeuilleClasse.Grapheen3D1Click(Sender:TObject);
begin//0
  Setgraphe3D(not Getgraphe3D);
  SendMessageA(GrilleElevesGrapheCarnetDeNotes.Handle, $403, TabControlGraphes.TabIndex + 1 , 0);
end;//0


//0053F0A4
procedure TFeuilleClasse.Grapheendgrad1Click(Sender:TObject);
begin//0
  SetgrapheDegrade(not GetGrapheDegrade);
  SendMessageA(GrilleElevesGrapheCarnetDeNotes.Handle, $403,TabControlGraphes.TabIndex + 1 , 0);
end;//0


//0053F0E4
procedure TFeuilleClasse.Grapheencouleur1Click(Sender:TObject);
begin//0
  SetgrapheEnCouleur(not GetGrapheEnCouleur);
  SendMessageA(GrilleElevesGrapheCarnetDeNotes.Handle, $403,TabControlGraphes.TabIndex +1 , 0);
end;//0


//0053F124
procedure TFeuilleClasse.Afficherlalgende1Click(Sender:TObject);
begin//0
  SetGrapheLegende(not GetGrapheLegende);
  SendMessageA(GrilleElevesGrapheCarnetDeNotes.Handle, $403,TabControlGraphes.TabIndex +1, 0);
end;//0


//0053F164
procedure TFeuilleClasse.Formatbitmapbmp1Click(Sender:TObject);
begin//0
  Chart1.CopyToClipboardBitmap;
end;//0


//0053F170
procedure TFeuilleClasse.FormatMetafilewmf1Click(Sender:TObject);
begin//0
  Chart1.CopyToClipboardMetafile(False);
end;//0


//0053F180
procedure TFeuilleClasse.Formatenhancedmetafileemf1Click(Sender:TObject);
begin//0
  Chart1.CopyToClipboardMetafile(True);
end;//0

//0053F214
procedure TFeuilleClasse.Exporter2Click(Sender:TObject);
begin//0
    SaveDialog1.FileName := '';
    SaveDialog1.Title := 'Exporter le graphe';
    SaveDialog1.Filter := 'Fichier Bitmap *.bmp|*.bmp|Fichier Metafile *.wmf|*.wmf|Fichier Enhanced Metafile *.emf|*.emf';
    if (SaveDialog1.Execute) then
    begin//0053F271
      case SaveDialog1.FilterIndex of
        1: Chart1.SaveToBitmapFile(SaveDialog1.FileName);
        2: Chart1.SaveToMetafile(SaveDialog1.FileName);
        3: Chart1.SaveToMetafileEnh(SaveDialog1.FileName);
      end;//3
    end;//2
end;//0


//0053F38C
procedure TFeuilleClasse.Imprimer2Click(Sender:TObject);
begin//0
    FormImprimerGraphe{gvar_00617E74} := TFormImprimerGraphe.Create(Self, Chart1, logo, GrilleElevesGrapheCarnetDeNotes.GetTitleCaption);
    FormImprimerGraphe.ShowModal;
    FormImprimerGraphe.Destroy;
end;//0

//0053F418
procedure TFeuilleClasse.AfficherligneElve1Click(Sender:TObject);
begin//0
  //0053F418
  SetGrapheLigneEleve(GetGrapheLigneEleve Xor true);
  SendMessageA(GrilleElevesGrapheCarnetDeNotes.Handle, $403,TabControlGraphes.TabIndex + 1 , 0);
end;//0

//0053F458
procedure TFeuilleClasse.AfficherligneMinimum1Click(Sender:TObject);
begin//0
  //0053F458
  SetGrapheLigneMin__(GetGrapheLigneMin Xor true);
  SendMessageA(GrilleElevesGrapheCarnetDeNotes.Handle, $403,TabControlGraphes.TabIndex + 1 , 0);
end;//0

//0053F498
procedure TFeuilleClasse.AfficherligneMaximum1Click(Sender:TObject);
begin//0
  //0053F498
  SetGrapheLigneMax(GetGrapheLigneMax Xor true);
  SendMessageA(GrilleElevesGrapheCarnetDeNotes.Handle, $403{1027},TabControlGraphes.TabIndex + 1 , 0);
end;//0

//0053FileName1
procedure TFeuilleClasse.AfficherligneMoyenne1Click(Sender:TObject);
begin//0
  //0053F4D8
  SetGrapheLigneMoyenne(GetgrapheLigneMoyenne Xor true);
  SendMessageA(GrilleElevesGrapheCarnetDeNotes.Handle, $403{1027},TabControlGraphes.TabIndex + 1 , 0);
end;//0

//0053F518
procedure TFeuilleClasse.Calculatrice1Click(Sender:TObject);
begin//0
  //0053F518
  FormCarnetDeNotes2.Calculatrice1Click(Sender);
end;//0


//0053F528
procedure TFeuilleClasse.Apprciationsdesbulletins1Click(Sender:TObject);
begin//0
  //0053F528
  FormAppreciations{gvar_00617DB4} := TFormAppreciations.Create(Self,FichierCdn); 
  FormAppreciations.ShowModal;
  SendMessageA(GrilleBilanCarnetDeNotes.Handle, $403{1027},TabControlGrillesBilan.TabIndex + 1 , 0);
  FormAppreciations.Destroy;
end;//0

//0053F598
procedure TFeuilleClasse.Outils1Click(Sender:TObject);
begin//0
  //0053F598
  //0053F5A9

  if (FichierCdn.NbreEleves = 0) Or (FichierCdn.NbrSerieNotes(FIdPeriode) <= 0) then//0053F5BE
    Apprciationsdesbulletins1.Enabled := false
  else//0053F5C2
    Apprciationsdesbulletins1.Enabled := true;
  
  //0053F5D6
  if (FichierCdn.NbreEleves = 0) Or (FichierCdn.NbrSerieNotes(FIdPeriode) <= 0) then//0053F5EB
    Pointsenplusouenmoins1.Enabled := false
  else//0053F5EF
    Pointsenplusouenmoins1.Enabled := true;
  
  //0053F603
  if (FichierCdn.NbreEleves = 0) Or (FichierCdn.NbrSerieNotes(FIdPeriode) <= 0) then//0053F618
   CollerlesapprciationsdanslePressePapiers1.Enabled := false
  else//0053F61C
    CollerlesapprciationsdanslePressePapiers1.Enabled := true;

end;//0

//0053F62C
procedure TFeuilleClasse.SpeedButtonRecalculerMoyennesClick(Sender:TObject);
var
 I:integer;
begin//0
  //0053F62C
    for I := 1 to FichierCdn.NbrePeriodes do //0053F647
      FichierCdn.SetPeriodeTraiteList_H01(I, true);
  FichierCdn.Initialisation;
  case TabSet1.TabIndex of
    0:
    begin//2
      //0053F68E
      SendMessageA(GrilleNotesCarnetDeNotes.Handle, $403,TabControlGrillesNotes.TabIndex + 1, 0);
      SendMessageA(GrilleMoyennesCarnetDeNotes.Handle, $408,TabControlGrillesNotes.TabIndex + 1 , 0);
    end;//2
    1://0053F6EC
      SendMessageA(GrilleBilanCarnetDeNotes.Handle, $403, TabControlGrillesBilan.TabIndex + 1, 0);
    2://0053F71C
      SendMessageA(GrilleElevesGrapheCarnetDeNotes.Handle, $403, TabControlGraphes.TabIndex + 1, 0);
  end;//1
end;//0


//0053F750
procedure TFeuilleClasse.Graphes1Click(Sender:TObject);
begin//0
  //0053F750
  CollerdanslePressePapiers2.Enabled := Chart1.Visible;
  Exporter3.Enabled := Chart1.Visible;
  Imprimer3.Enabled := Chart1.Visible;
end;//0

//0053F794
procedure TFeuilleClasse.CollerlesapprciationsdanslePressePapiers1Click(Sender:TObject);
begin//0
  FormCollerAppreciations{gvar_00617E7C} := TFormCollerAppreciations.Create(Self, logo, FichierCdn);
  FormCollerAppreciations.ShowModal;
  FormCollerAppreciations.Destroy;
end;//0

//0053F7DC
procedure TFeuilleClasse.EvenemtsFichierInit(var Msg:TMsg);
var
  I:integer;
begin//0
    for I := 1 to FichierCdn.NbrePeriodes do//0053F7F4
      FichierCdn.SetPeriodeTraiteList_H01(I, true);
  FichierCdn.Initialisation;
end;//0

//0053F820
procedure TFeuilleClasse.FormShow(Sender:TObject);
begin//0
  //0053F820
  Enregistrersous1.Visible := FichierCdn.IsVersionPersonnelle;
  Modifier1.Visible := FichierCdn.IsVersionPersonnelle;
  Importer1.Visible := FichierCdn.IsVersionPersonnelle;
  CollerdepuislePressePapiers2.Visible := FichierCdn.IsVersionPersonnelle;
  N11.Visible := FichierCdn.IsVersionPersonnelle;
  N6.Visible := FichierCdn.IsVersionPersonnelle;
  Ajouterunlve1.Visible := FichierCdn.IsVersionPersonnelle;
  Supprimerunlve1.Visible := FichierCdn.IsVersionPersonnelle;
  Modifierlenomdunlve1.Visible := FichierCdn.IsVersionPersonnelle;
  Crerlesdisquettespourlescollgues1.Enabled := False;
  Crerlesdisquettespourlescollgues1.Visible := False;
end;//0

//0053F8FC
procedure TFeuilleClasse.GetMatiereName(var a:string);
begin//0
  //0053F8FC
  a:= FichierCdn.GetMatiereName();
end;//0


//0053F914
procedure TFeuilleClasse.Pointsenplusouenmoins1Click(Sender:TObject);
begin//0
  //0053F914
  FormPointsPlusMoins{gvar_00617DC4} := TFormPointsPlusMoins.Create(Self, FichierCdn, Logo);
  FormPointsPlusMoins.ShowModal;
  FormPointsPlusMoins.Destroy;
  FichierCdn.Initialisation;
  SendMessageA(GrilleMoyennesCarnetDeNotes.Handle, $408{1032}, FIdPeriode, 0);
  SendMessageA(GrilleBilanCarnetDeNotes.Handle, $403{1027},TabControlGrillesBilan.TabIndex + 1 , 0);
end;//0

//0053F9B4
procedure TFeuilleClasse.Bilanlve1Click(Sender:TObject);
begin//0
   {gvar_00617E84}FormBilanEleve := TFormBilanEleve.Create(Self, logo,FichierCdn);
  FormBilanEleve.ShowModal;
  FormBilanEleve.Destroy;
end;//0

//0053F9FC
procedure TFeuilleClasse.EvenemtsChangeGrille(var Msg:TMsg);
begin//0
  //0053F9FC
  SendMessageA(GrilleElevesCarnetDeNotes.Handle, 1028, Msg.message, Msg.wParam);
  SendMessageA(GrilleElevesGrapheCarnetDeNotes.Handle, 1028, Msg.message, Msg.wParam);
  SendMessageA(GrilleBilanCarnetDeNotes.Handle, 1028, Msg.message, Msg.wParam);
end;//0


//0053FA60
procedure TFeuilleClasse.EvenemtsFile(var Msg:TMsg);
begin//0
  FichierCdn.Initialisation;
  SendMessageA(GrilleBilanCarnetDeNotes.Handle, 1027, TabControlGrillesBilan.TabIndex +1, Msg.wParam);
end;//0


//0053FAA4
procedure TFeuilleClasse.CarnetdeNotes1Click(Sender:TObject);
var
  FichierCdn2 : TFichierCdn;
begin//0
    if (FichierCdn.IndexModule < gvar_00617903) then
    begin//2
      //0053FADA
      FormCarnetDeNotes2.OpenDialog1.Title := 'Informations sur la série de notes à importer';
      FormCarnetDeNotes2.OpenDialog1.Filter := 'Fichier Carnet de Notes *.cdn|*.cdn';
      if (FormCarnetDeNotes2.OpenDialog1.Execute) then
      begin//3
        //0053FB28
        FichierCdn2 := TFichierCdn.Create(FormCarnetDeNotes2.OpenDialog1.FileName{, 1, 0, 0});
        if (FichierCdn2.Succes) then
        begin//4
          //0053FB61
          if (Comparer2List(FichierCdn2.GetEleveList, FichierCdn.GetEleveList)) then
          begin//5
            //0053FB82
            FormImporterSeries{gvar_00617D94} := TFormImporterSeries.Create(Self, FichierCdn,FichierCdn2 , logo, 0);
            FormImporterSeries.ShowModal;
            FichierCdn2.Initialisation;
            SendMessageA(GrilleNotesCarnetDeNotes.Handle, $403{1027}, FIdPeriode, 0);
            SendMessageA(GrilleMoyennesCarnetDeNotes.Handle, $408{1032}, FIdPeriode, 0);
            SendMessageA(GrilleBilanCarnetDeNotes.Handle, $403{1027}, TabControlGrillesBilan.TabIndex + 1, 0);
            SendMessageA(Handle, $40E{1038}, 0, 0);
            FormImporterSeries.Destroy;
          end//5
          else
          begin//5
            //0053FC55
            Application.MessageBox('Les classes n''ont pas la même liste d''élèves. Impossible d''importer depuis ce fichier.','Carnet de Notes version Personnelle', $10{16});
          end;//5
        end//4
        else
        begin//4
          //0053FC6F
          Application.MessageBox(PChar('Le fichier "' + ExtractFileName(FormCarnetDeNotes2.OpenDialog1.FileName) + '" n''est pas un fichier Carnet de Notes valide. Impossible d''importer depuis ce fichier.'),'Carnet de Notes version Personnelle' , $10{16});
        end;//4
        FichierCdn2.Destroy;
        Exit;
      end;//3
    end;//2
    if (IsRegistred = false) then
    begin//2
      //0053FCDA
      Application.MessageBox('Impossible d''importer une série de notes. Le nombre de séries de notes est limité à 3 pour la version non enregistrée.','Carnet de Notes version Personnelle' , $40{64});
    end
	else 
    Application.MessageBox(PChar('Impossible d''importer une série de notes. Le nombre de séries de notes est limité à ' + IntToStr(gvar_00617903) + '.'),'Carnet de Notes version Personnelle' , $40{64});
end;

//0053FFBC
procedure TFeuilleClasse.Texte1Click(Sender:TObject);
var
  I,lvar_5:integer;
  StringList1:TStringList;
begin//0
  //0053FFBC
    //00540016
    if (FichierCdn.IndexModule < gvar_00617903) then
    begin//2
      //0054002F
      FormCarnetDeNotes2.OpenDialog1.Title := 'Informations sur la série de notes à importer';
      FormCarnetDeNotes2.OpenDialog1.Filter := 'Tous les fichiers *.*|*.*';
      if (FormCarnetDeNotes2.OpenDialog1.Execute) then
      begin//3
        //0054007D
        FormNouvelleSerieDeNotes{gvar_00617D74} := TFormNouvelleSerieDeNotes.Create(Self, FichierCdn, logo, 'Informations sur la série de notes à importer');
        FormNouvelleSerieDeNotes.TabControl1.TabIndex := FIdPeriode - 1;
        FormNouvelleSerieDeNotes.ShowModal;
        if (FormNouvelleSerieDeNotes.ModalResult = 1) then
        begin//4
          //005400ED
          FichierCdn.SetData_V1(FormNouvelleSerieDeNotes.f334, FormNouvelleSerieDeNotes.ComboBox1.Text, 
								  FormNouvelleSerieDeNotes.ComboBox5.Text, FormNouvelleSerieDeNotes.ComboBox2.Text, 
								  FormNouvelleSerieDeNotes.f338, 
								  DateToStr(FormNouvelleSerieDeNotes.DateTimePicker1.Date), 
								  FormNouvelleSerieDeNotes.Edit3.Text, 
								  FormNouvelleSerieDeNotes.ComboBoxTypesDeNotes.Text,false{ 
								  FormNouvelleSerieDeNotes.RadioGroupEcritOuOral.ItemIndex = 1});
          StringList1 := TStringList.Create;;
          StringList1.add(FormCarnetDeNotes2.OpenDialog1.FileName);
          lvar_5 := FichierCdn.NbrSerieNotes(FormNouvelleSerieDeNotes.f334);
            for I := 1 to FichierCdn.NbreEleves do //005402F0
            begin//6
              //005402F5
              if (StringList1.count >= I) then//00540305
                FichierCdn.SetAbs(FormNouvelleSerieDeNotes.f334, lvar_5, I, StringList1[I - 1])
              else//00540369
                FichierCdn.SetAbs(FormNouvelleSerieDeNotes.f334, lvar_5, I, '');
          end;//6
          StringList1.Free;
          FIdPeriode := FormNouvelleSerieDeNotes.f334;
          FichierCdn.Initialisation;
          TabSet1.TabIndex := 0;
          SendMessageA(GrilleNotesCarnetDeNotes.Handle, $403{1027}, FIdPeriode, 0);
          SendMessageA(GrilleMoyennesCarnetDeNotes.Handle, $408{1032}, FIdPeriode, 0);          
          SendMessageA(GrilleBilanCarnetDeNotes.Handle, $403{1027},TabControlGrillesBilan.TabIndex + 1 , 0);
          SendMessageA(Handle, $40E{1038}, 0, 0);
          TabControlGrillesNotes.TabIndex := FIdPeriode - 1;
          SendMessageA(Handle, $401{1025}, 1, FichierCdn.NbrSerieNotes(FIdPeriode) - 1);
          GrilleNotesCarnetDeNotes.TopRow := 1;
          GrilleNotesCarnetDeNotes.LeftCol := 1;
          GrilleNotesCarnetDeNotes.LeftCol := FichierCdn.NbrSerieNotes(FIdPeriode) - 1;
          GrilleNotesCarnetDeNotes.SetFocus;
          keybd_event($26{38}, 0, 0, 0);
          keybd_event($26{38}, 0, 2, 0);
        end;//4
        FormNouvelleSerieDeNotes.Destroy;
        Exit;
      end;//3
    end;//2
    if (IsRegistred = false) then//00540530
		Application.MessageBox('Impossible d''importer une série de notes. Le nombre de séries de notes est limité à 3 pour la version non enregistrée.','Carnet de Notes version Personnelle' , $40{64})
	else
		Application.MessageBox(PChar('Impossible d''importer une série de notes. Le nombre de séries de notes est limité à ' + IntToStr(gvar_00617903) + '.'),'Carnet de Notes version Personnelle' , $40{64});
	//005405AA
end;//0

//00540780
procedure TFeuilleClasse.depuisunefichierCarnetdeNotes1Click(Sender:TObject);
var
  FichierCdn1:TFichierCdn;
  I:integer;
  Buf:string;
  StringList1,Stringlist2:TStringlist;
begin//0
    FormCarnetDeNotes2.OpenDialog1.Title := 'Importer la liste des élèves';
    FormCarnetDeNotes2.OpenDialog1.Filter := 'Fichier Carnet de Notes *.cdn|*.cdn';
    if (FormCarnetDeNotes2.OpenDialog1.Execute) then
    begin//2
      //005407F2
      FichierCdn1 := TFichierCdn.Create(FormCarnetDeNotes2.OpenDialog1.FileName{, 1, 0, 0});
      if (FichierCdn1.Succes) then
      begin//3
        if (FichierCdn1.NbreEleves > 0) then//0054082F
        begin//4
          //0054083F
          StringList1 := TStringList.Create;  
            for I := 1 to FichierCdn1.NbreEleves do//0054085E
            begin//6
              //00540863
              StringList1.add(FichierCdn1.GetDateNais(I));
            end;//6
          StringList2 := TStringList.Create;
            for I := 1 to FichierCdn1.NbreEleves do//005408BC
              //005408C1
              if (FichierCdn1.IsRedoublant(I)) then//005408DC
                StringList2.add('R')
              else//005408EB
                StringList2.add('');
          FormTypeImportation{gvar_00617DAC} := TFormTypeImportation.Create(Self, FichierCdn1.GetEleveList, StringList1, StringList2, FichierCdn1.GetClasseName());
          FormTypeImportation.ShowModal;
          if (FormTypeImportation.ModalResult = 1) then
          begin//5
            //0054096A
            if (FormTypeImportation.RadioGroup1.ItemIndex = 0) then
            begin//6
              //00540980
              if (FichierCdn.NbreEleves > 0) then
              begin//7
                //00540996
                for I := 1 to FichierCdn.NbreEleves do
                begin//8
                  //00540996
                  FichierCdn.DeleteItem_V00(1);
                end;//8
              end;//7
            end;//6
              for I := 1 to FormTypeImportation.CheckListBox1.Items.Count do //005409CB
              begin//7
                //005409D0
                if (FormTypeImportation.CheckListBox1.Checked[I - 1] = False) then Continue;
                if (FichierCdn.NbreEleves < $32{50}) then
                begin//8
                  //00540A0C
                  //call(lvar_124 = 'R');
                  //n'est pas terminé
                  FichierCdn.InsertItem_V00(FormTypeImportation.f2F0[I - 1], FormTypeImportation.f2F4[I - 1], '1' , (FormTypeImportation.f2F8[I - 1] = 'R'));
                end//8
                else
                begin//8
                  //00540ADE
                  Application.MessageBox(PChar('Vous avez atteint le nombre maximum d''élèves (' + IntToStr($32{50}) + ') autorisé dans Carnet de Notes.' + #10 + #13 + #10 + #13 + 'L''importation est interrompue à "' + FormTypeImportation.CheckListBox1.Items[I - 1] + '".'), 'Carnet de Notes version Personnelle', $10{16});
                  Break;
                end;//8
              end;//7
            FormTypeImportation.Destroy;
            FichierCdn.Initialisation;
            SendMessageA(GrilleElevesCarnetDeNotes.Handle, $404{1028}, 0, 0);
            SendMessageA(GrilleElevesGrapheCarnetDeNotes.Handle, $404{1028}, 0, 0);
            SendMessageA(GrilleNotesCarnetDeNotes.Handle, $403{1027}, FIdPeriode, 0);
            SendMessageA(GrilleMoyennesCarnetDeNotes.Handle, $408{1032}, FIdPeriode, 0);
            SendMessageA(GrilleBilanCarnetDeNotes.Handle, $403{1027}, TabControlGrillesBilan.TabIndex + 1, 0);
            SendMessageA(Handle, $406{1030}, 0, 0);
            SendMessageA(Handle, $40B{1035}, 0, 0);
          end;//5
          StringList1.Free;
          StringList2.Free;
          Exit;
        end;//4
      end;//3
      Application.MessageBox(PChar('Impossible d''importer la liste depuis le fichier "' + FormCarnetDeNotes2.OpenDialog1.FileName + '"'), 'Carnet de Notes version Personnelle', $10{16});
    end;//2
	//00540CFB
end;//0

//00540ED4
procedure TFeuilleClasse.depuisunfichiertexte1Click(Sender:TObject);
var
  lvar_C,lvar_8,lvar_10,lvar_14 : TStringList;
  I:integer;
begin//0
  //00540ED4..00540EF7
    FormCarnetDeNotes2.OpenDialog1.Title := 'Importer la liste des élèves';
    FormCarnetDeNotes2.OpenDialog1.Filter := 'Tous les fichiers *.*|*.*';
    if (FormCarnetDeNotes2.OpenDialog1.Execute) then
    begin//2
      //00540F45
		lvar_C := TStringList.Create;
		lvar_8 := TStringList.Create;
		lvar_8.LoadFromFile(FormCarnetDeNotes2.OpenDialog1.FileName);
		for I := 0 to lvar_8.count - 1 do //00540F9B
		  if (Trim(lvar_8[I]) <> '') then 
			  lvar_C.add(lvar_8[I]);
		lvar_8.Destroy;
		lvar_10 := TStringList.Create;
		for I := 0 to lvar_C.count - 1 do//00540FFF
		  lvar_10.add('');
		lvar_14 := TStringList.Create;
        for I := 0 to lvar_C.count - 1 do //00541029
          lvar_14.add('');
		FormTypeImportation{gvar_00617DAC} := TFormTypeImportation.Create(Self, lvar_14, lvar_10, lvar_C,FormCarnetDeNotes2.OpenDialog1.FileName);
		FormTypeImportation.ShowModal;
		if (FormTypeImportation.ModalResult = 1) then
		begin//3
			//00541095
			if (FormTypeImportation.RadioGroup1.ItemIndex = 0) then//005410AB
				for I := 1 to FichierCdn.NbreEleves do //005410C1
				  FichierCdn.DeleteItem_V00(1);
			  for I := 1 to FormTypeImportation.CheckListBox1.Items.Count do//005410F6
			  begin//5
				//005410FB
				if (FormTypeImportation.CheckListBox1.Checked[I - 1] = False) then Continue;
				if (FichierCdn.NbreEleves < 50) then
				begin//6
				  //00541137
				  (*
				  FormTypeImportation.f2F8[I - 1] = 'R';
				  FormTypeImportation.f2F4[I - 1]= 'R';
				  FichierCdn.InsertItem_V00(FormTypeImportation.f2F0[I - 1], '', lvar_230{0}, false);
				  *)
				end//6
				else
				begin//6
				  //00541203
				  Application.MessageBox(PChar(FormTypeImportation.CheckListBox1.Items[I - 1] + IntToStr(50) + ') autorisé dans Carnet de Notes.' + #10 + #13 + #10 + #13 + 'L''importation est interrompue à "' + 'Carnet de Notes version Personnelle' + '".'), 'Carnet de Notes version Personnelle' , $10);
				  Break;
				end;//6
			  end;//5
			FormTypeImportation.Destroy;
			FichierCdn.Initialisation;
			SendMessageA(GrilleElevesCarnetDeNotes.Handle, $404{1028}, 0, 0);
			SendMessageA(GrilleElevesGrapheCarnetDeNotes.Handle, $404{1028}, 0, 0);
			SendMessageA(GrilleNotesCarnetDeNotes.Handle, $403{1027}, FIdPeriode, 0);
			SendMessageA(GrilleMoyennesCarnetDeNotes.Handle, $408{1032}, FIdPeriode, 0);
			SendMessageA(GrilleBilanCarnetDeNotes.Handle, $403{1027},TabControlGrillesBilan.TabIndex + 1 , 0);
			SendMessageA(Handle, $406{1030}, 0, 0);
			SendMessageA(Handle, $40B{1035}, 0, 0);
		end;//3
		//005413AF
		lvar_C.destroy;
		lvar_10.Free;
		lvar_14.Free;
	end;//2
end;//0

//0054155C
procedure TFeuilleClasse.FormClose(Sender:TObject; var Action:TCloseAction);
var
   buf:string;
   FileNamex : string;
   k:integer;
begin//0
    if (FichierCdn.IsModified) then
    begin//005415A6
      if (MessageBoxA(Handle, PChar('Le fichier de la classe de "' + FichierCdn.GetClasseName() + '" a été modifié. Voulez vous le sauver avant de quitter ?'), 'Carnet de Notes version Personnelle', $24{36}) = 6) then
      begin//00541601
        Enregistrer1Click(Sender);
      end;//3
    end;//2
    if (GetFileName <> 'Nouvelle classe') then
    begin//2
      //0054162F
      AddHistorique(GetFileName);
      if (GetUtiliserHistorique) then
      begin//00541661  
        RefreshHistroqiueMainMenu(MainMenuPrincipal, 0, Self,  Ouvrir1Click); //006159A0A1
        SendMessageA(HFormCarnetDeNotes2, $410, 0, 0);
      end;//3
    end;//2
    if (FormCarnetDeNotes2.MDIChildCount - 1 <= 0) then
    begin//00541693
      FormCarnetDeNotes2.OngletsClasses.Tabs.Clear;
    end//2
    else
    begin//2
      //005416A8
	  k:= FormCarnetDeNotes2.TabControl2.Tabs.IndexOf(GetFileName);
      if ( k<> -1) then
      begin//3
        //005416E6
        FormCarnetDeNotes2.OngletsClasses.Tabs.Delete(k);
        FormCarnetDeNotes2.TabControl2.Tabs.Delete(k);
      end;//3
    end;//2
    FormCarnetDeNotes2.ToolButtonSauver.Enabled := (FormCarnetDeNotes2.MDIChildCount - 1 <> 0);
    FormCarnetDeNotes2.ToolButtonImprimer.Enabled := (FormCarnetDeNotes2.MDIChildCount - 1 <> 0);
    Action := caFree; //2
end;//0

//0054181C
procedure TFeuilleClasse.FormDestroy(Sender:TObject);
begin//0
  //0054181C
  try
    //00541832
    if (GrilleElevesCarnetDeNotes <> Nil) then //0054183B
      FreeAndNil(GrilleElevesCarnetDeNotes);
    if (GrilleMoyennesCarnetDeNotes <> Nil) then//0054184F
      FreeAndNil(GrilleMoyennesCarnetDeNotes);
    if (GrilleBilanCarnetDeNotes <> Nil) then 
      FreeAndNil(GrilleBilanCarnetDeNotes);
  except//1
    //0054187D
  end;//1
end;//0

//00541888
procedure TFeuilleClasse.CollerlesdatesdenaissancesdepuislePressePapiers1Click(Sender:TObject);
var 
  StringList:TStringList;
begin//0
    StringList := TStringList.Create;
    StringList.Text := Clipboard.AsText;
    FichierCdn.SetPeriodeTraiteList(StringList);
    FichierCdn.Initialisation;
    SendMessageA(GrilleElevesCarnetDeNotes.Handle, $404, 0, 0);
    SendMessageA(GrilleElevesGrapheCarnetDeNotes.Handle, $404, 0, 0);
    SendMessageA(Handle, $406, 0, 0);
    SendMessageA(Handle, $40B, 0, 0);
    StringList.Destroy;
end;//0

//00541968
procedure TFeuilleClasse.Clnerlefichier1Click(Sender:TObject);
var
  lvar_4 : TStringList;
  I:integer;
begin//0
    FormClonerFichier{gvar_00617E9C} := TFormClonerFichier.Create(Self, Logo, FichierCdn);
    FormClonerFichier.ShowModal;
    if (FormClonerFichier.sub_00538384) then
    begin//005419C9      
      lvar_4 := FormClonerFichier.sub_00538394;
        for I := 0 to lvar_4.count - 1 do //005419F0 capacity
        begin//005419F3
          FormCarnetDeNotes2.ouvrirFichier(TObject(lvar_4[I]));
        end;//4
    end;//2
    FormClonerFichier.Destroy;
end;//0

//00541A48
procedure TFeuilleClasse.ClnerdessriesdenotespartirdunfichierCarnetdeNotes1Click(Sender:TObject);
var
 FichierCdn2:TFichierCdn;
begin//0
  //00541A48
    //00541A63
    FormCarnetDeNotes2.OpenDialog1.Title := 'Ouvrir un fichier Carnet de Notes';
    FormCarnetDeNotes2.OpenDialog1.Filter := 'Fichier Carnet de Notes *.cdn|*.cdn';
    if (FormCarnetDeNotes2.OpenDialog1.Execute) then
    begin//2
      //00541AB1
      FichierCdn2:= TFichierCdn.Create(FormCarnetDeNotes2.OpenDialog1.FileName{, 1, 0, 0});
      if (FichierCdn2.Succes) then
      begin//3
        //00541AEA
        FormImporterSeries{gvar_00617D94 }:= TFormImporterSeries.Create(Self,FichierCdn,FichierCdn2,logo, 1);
        FormImporterSeries.ShowModal;
        if (FormImporterSeries.ModalResult = 1) then
        begin//4
          //00541B34
          FichierCdn.Initialisation;
          SendMessageA(GrilleNotesCarnetDeNotes.Handle, $403, FIdPeriode, 0);
          SendMessageA(GrilleMoyennesCarnetDeNotes.Handle, $408, FIdPeriode, 0);
          SendMessageA(GrilleBilanCarnetDeNotes.Handle, $403,TabControlGrillesBilan.TabIndex + 1 , 0);
          SendMessageA(Handle, $40E, 0, 0);
        end;//4
        FormImporterSeries.Destroy;
      end//3
      else
      begin//00541BD5
        Application.MessageBox(PChar('Le fichier "' + ExtractFileName(FormCarnetDeNotes2.OpenDialog1.FileName) + '" n''est pas un fichier Carnet de Notes valide. Impossible de copier depuis ce fichier.'), 'Carnet de Notes version Personnelle', $10{16});
      end;//3
      FichierCdn2.Destroy;
    end;//2
end;//0
procedure TFeuilleClasse.AddItemGrillesNotes(Item:TObject);
begin//0
  //00539DFC
  if (Item is TMenuItem) then
  begin//1
    //00539E17
    TabSet1.TabIndex := 0;
	showmessage('------1');
    Notebook1.PageIndex := TabSet1.TabIndex;
	showmessage('------2');
    TabControlGrillesNotes.TabIndex :=  TMenuItem(Item).MenuIndex;
    FIdPeriode := TabControlGrillesNotes.TabIndex + 1;
    SendMessageA(GrilleNotesCarnetDeNotes.Handle, $403, FIdPeriode, 0);
    SendMessageA(GrilleElevesCarnetDeNotes.Handle, $403, FIdPeriode, 0);
    SendMessageA(GrilleMoyennesCarnetDeNotes.Handle, $408, FIdPeriode, 0);
    SendMessageA(Handle, $40E, 0, 0);
  end;//1
end;//0

procedure TFeuilleClasse.AddItemGraphes(Item:TObject);
begin//0
  //0053F190
  if (Item is TMenuItem) then
  begin//0053F1A7
    TabSet1.TabIndex := 2;
	showmessage('------3');
    Notebook1.PageIndex := TabSet1.TabIndex;
	showmessage('------4');
    TabControlGraphes.TabIndex := TMenuItem(Item).MenuIndex;
    SendMessageA(GrilleElevesGrapheCarnetDeNotes.Handle, $403,TabControlGraphes.TabIndex + 1 , 0);
  end;//1
end;//0

procedure TFeuilleClasse.AddItemGrillesBilan(Item:TObject);
begin//0
  //00539EF4
  if (Item is TMenuItem) then
  begin//1
    //00539F0B
    TabSet1.TabIndex := 1;
	showmessage('------5');
    Notebook1.PageIndex := TabSet1.TabIndex;
	showmessage('------6');
    TabControlGrillesBilan.TabIndex := TMenuItem(Item).MenuIndex;
    SendMessageA(GrilleBilanCarnetDeNotes.Handle, $403, TabControlGrillesBilan.TabIndex + 1, 0);
  end;//1
end;//0


end.