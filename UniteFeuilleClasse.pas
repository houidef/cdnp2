{***************************************
* Version Original V0.01
* Decompiled by HOUIDEF AEK v.20:21 dimanche 18 mars 2018
***************************************}
unit UniteFeuilleClasse;

interface

uses
Forms, Windows,  SysUtils, Classes, Menus, Dialogs, ExtCtrls, ComCtrls, Buttons, Tabs, StdCtrls, Chart, Printers,
 Grids, UFichierCdn, _TGrilleEleves,_TGrilleNotes,_TGrilleMoyennes,_TGrilleBilan, _TGrilleElevesGraphe,_FormImprimer,
 unit111,_FormHint,_FormModifierEleve,_FormListe, Series,_FormCreerListeEleves,_FormSupprimerSerie,_FormBilanEleve,
 _FormReorganiser,_FormCollerAppreciations, _FormInformationsSeries,_FormClonerFichier,Unit49,_FormImporterSeries,
 UEnregistrement,_FormPointsPlusMoins,_FormTransformerSeries,_FormUtilitairesSeries,_FormImprimerGraphe,
 _FormNouvelleSerieDeNotes,Clipbrd,_FormExportation,_FormCreerDisquettes,_FormAppreciations,
 _FormTypeImportation;

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
    FichierCdn:TFichierCdn;//FichierCdn //f4D4
    f4D8:HWND;//f4D8
    GrilleNotesCarnetDeNotes:TGrilleNotesCarnetDeNotes;//f4E0
    GrilleElevesCarnetDeNotes:TGrilleElevesCarnetDeNotes;//f4E4
    GrilleElevesGrapheCarnetDeNotes:TGrilleElevesGrapheCarnetDeNotes;//f4E8
    GrilleMoyennesCarnetDeNotes:TGrilleMoyennesCarnetDeNotes;//f4EC
    GrilleBilanCarnetDeNotes:TGrilleBilanCarnetDeNotes;//f4F0
    f4F4:Integer;//f4F4
    f4F8:Integer;//f4F8
    f4FC:byte;//f4FC
    procedure sub_00539F78(var Msg:TMsg); Message 1025;//00539F78
    procedure sub_0053A074(var Msg:TMsg); Message 1026;//0053A074
    procedure sub_0053FA60(var Msg:TMsg); Message 1027;//0053FA60
    procedure sub_0053F9FC(var Msg:TMsg); Message 1028;//0053F9FC
    procedure sub_0053A0C0(var Msg:TMsg); Message 1029;//0053A0C0
    procedure sub_0053A140(var Msg:TMsg); Message 1030;//0053A140
    procedure sub_0053C9E4(var Msg:TMsg); Message 1031;//0053C9E4
    procedure sub_0053CA38(var Msg:TMsg); Message 1032;//0053CA38
    procedure sub_0053CAFC(var Msg:TMsg); Message 1033;//0053CAFC
    procedure sub_0053CB34(var Msg:TMsg); Message 1034;//0053CB34
    procedure sub_0053CD90(var Msg:TMsg); Message 1035;//0053CD90
    procedure sub_0053D148(var Msg:TMsg); Message 1036;//0053D148
    procedure sub_0053D6F4(var Msg:TMsg); Message 1037;//0053D6F4
    procedure sub_0053E410(var Msg:TMsg); Message 1042;//0053E410
    procedure sub_0053E44C(var Msg:TMsg); Message $413{1043};//0053E44C
    procedure sub_0053F7DC(var Msg:TMsg); Message 1040;//0053F7DC
    constructor Create(AOwner: TComponent;Handle : HWND; Logo:TImage; FileName:String);//00539894
	procedure sub_00539DA4(var Value:ShortString);//00539DA4
	procedure sub_0053F8FC(var a:string);//0053F8FC
    procedure sub_0053DDF4(Y:ShortString);//0053DDF4
    procedure sub_0053DE0C(var Y:String);//0053DE0C
  end;
   
const
  gvar_00617903 = 255;    

    
    
var
   FeuilleClasse: TFeuilleClasse;
implementation
   uses UnitePrincipale,_FormNouvelleClasse;
{$R *.DFM}

//00539894                            
constructor TFeuilleClasse.Create(AOwner: TComponent;Handle : HWND; Logo:TImage; FileName:String);
var
  //FormNouvelleClasse2  : TFormNouvelleClasse;
  R,I:integer;
  Splitter : TSplitter;
begin
  //00539894..005398CF : rien
	R:=0;
    f4D8 := Handle;//FileName1 := FileName;
	self.logo := Logo;//f4D0 := d
    FichierCdn := TFichierCdn.Create(FileName{, 0, 0});
    if (FichierCdn.f948) then
    begin//00539906
      if (FileName = '') then
      begin//0053990C
        FormNouvelleClasse  := TFormNouvelleClasse.Create(Self, Logo, 'Nouvelle classe'{, f4D0}); 
		FormNouvelleClasse.ShowModal;
        if (FormNouvelleClasse.ModalResult <> 1) then R:=1; //00539950
        FormNouvelleClasse.Destroy;
      end;//3
    end//2
    else R:=2; //00539962

	if(R-1 < 0) then //Cas 1 : Nouvelle classe
      begin//005399AE
        inherited Create(AOwner);	   		
        WindowState := wsMaximized; 
        TabControlGrillesNotes.Tabs := FichierCdn.sub_004BEA4C; 
        TabControlGrillesBilan.Tabs := FichierCdn.sub_004BEA4C;
        TabControlGraphes.Tabs := FichierCdn.sub_004BEA4C;
        TabControlGrillesBilan.Tabs.Add('Sur l''année');
        f4FC := 1;
		for I:=1 to FichierCdn.sub_004BE9E0 do//00539A3C   // Nbre Periodes
        begin
            if (FichierCdn.sub_004BEAD0(I) > 0) then // if Nbre des Modules dans chaque Periode > 0
            begin//00539A49
              f4FC := I;//EBX
              Break;
            end//6
        end;
        TabControlGrillesNotes.TabIndex := f4FC - 1;
        GrilleElevesCarnetDeNotes := TGrilleElevesCarnetDeNotes.Create(PanelEleves, Self,f4FC, FichierCdn); 
        GrilleNotesCarnetDeNotes := TGrilleNotesCarnetDeNotes.Create(PanelNotes, Self,f4FC, FichierCdn); 
        GrilleMoyennesCarnetDeNotes := TGrilleMoyennesCarnetDeNotes.Create(PanelMoyennes, Self,f4FC, FichierCdn);//erreur ici
        GrilleBilanCarnetDeNotes := TGrilleBilanCarnetDeNotes.Create(TabControlGrillesBilan,  Self,f4FC, FichierCdn);
        GrilleElevesGrapheCarnetDeNotes := TGrilleElevesGrapheCarnetDeNotes.Create(PanelElevesGraphe, Self,0,FichierCdn);   //supprimer 0
        Splitter := TSplitter.Create(TabControlGrillesNotes);
        Splitter.Parent :=TabControlGrillesNotes;
        Splitter.Left := Panel2.Left + 1;
        Splitter.Align := Panel2.Align;
		TabSet1.Tabs.text := Notebook1.Pages.text; //bug in : TabSet1.Tabs := Notebook1.Pages;
        Notebook1.PageIndex := TabSet1.TabIndex; 
		//unit111
        {sub_004B901C(FileName); 
        if (GetutiliserHistorique) then //00539BC7
          sub_004B91F0(MainMenuPrincipal, 0, ?, Self); //unit111
        

        sub_004BC7A0(MainMenuPrincipal, TabControlGrillesNotes.Tabs, 4, Self, sub_00539DFC, Self, sub_00539EF4, Self, sub_0053F190);
        sub_004BCAA0(MainMenuPrincipal, 14, 4, Self);
		}
		SendMessageA(Handle, 1035, 0, 0);
        SendMessageA(Handle, 1030, 0, 0);
        SendMessageA(Handle, 1038, 0, 0);
        //SendMessageA(f4D8, 1041, 0, 0);}
        SpeedButtonEgaliserPanneauClick(Self);
		FormCarnetDeNotes2.ToolButtonImprimer.enabled := (FormCarnetDeNotes2.MDIChildCount <> 0 );
		FormCarnetDeNotes2.ToolButtonSauver.enabled := (FormCarnetDeNotes2.MDIChildCount <> 0 );
			
      end
	else if(R-1 = 0) then //00539CBE
            Exit
	    else 
        begin
          R:=R-1;	  
	      if(R = 0) then
	       MessageBoxA(0, PChar('Le fichier ' + FileName + ' n''est pas un fichier Carnet de Notes valide.'), 'Carnet de Notes version Personnelle', 16);
        end;//2

end;

//00539DA4
procedure TFeuilleClasse.sub_00539DA4(var Value:ShortString);
begin//0
    //00539DBD
	//TFeuilleClasse.f4D4:TFichierCdn
    //FichierCdn.FileName;//sub_004BE974(Self.FileName, lvar_4);
	Value := FichierCdn.FileName;
end;

//00539F78
procedure TFeuilleClasse.sub_00539F78(var Msg:TMsg);
var 
 lvar_1C :TGridRect;
begin//0
  //00539F78
  if ((GrilleNotesCarnetDeNotes <> Nil) and (GrilleElevesCarnetDeNotes <> Nil) and (GrilleMoyennesCarnetDeNotes <> Nil)) then //00539F8E
  begin//1
        //00539FA8
        if (FichierCdn.sub_004BEAD0(f4FC) > 0) then
        begin//00539FBD
         { if (Msg.wParam = -1) then//00539FC5
            lvar_1C.Left := 0
          else//00539FCC
            lvar_1C.Left := Msg.wParam;
       
          lvar_1C.Top := Msg.message;
          if (Msg.wParam = -1) then//00539FDB
            lvar_1C.Right  := FichierCdn.sub_004BEAD0(f4FC)- 1
          else//0053A001
            lvar_1C.Right := Msg.wParam;
          lvar_1C.Bottom := Msg.message;
          if (Msg.message <> 0) then//0053A010
            GrilleNotesCarnetDeNotes.Selection := lvar_1C;}
			
			if (Msg.message <> 0) then
			begin
			  lvar_1C.Left := 0;
			  lvar_1C.Top := Msg.message;
			  
			  if (Msg.wParam = -1) then//00539FDB
				lvar_1C.Right  := FichierCdn.sub_004BEAD0(f4FC)- 1
			  else//0053A001
				lvar_1C.Right := Msg.wParam;
				
			  lvar_1C.Bottom := Msg.message;
			  GrilleNotesCarnetDeNotes.Selection := lvar_1C;			
		
			end;//4
		end;
		

		if (Msg.message <> 0) then
        begin//0053A024		
          lvar_1C.Left := 0;
          lvar_1C.Top := Msg.message;
          lvar_1C.Right := 3;
          lvar_1C.Bottom := Msg.message;
          GrilleMoyennesCarnetDeNotes.Selection := lvar_1C;
          lvar_1C.Left := 1;
          lvar_1C.Top := Msg.message;
          lvar_1C.Right := 1;
          lvar_1C.Bottom := Msg.message;
          GrilleElevesCarnetDeNotes.Selection := lvar_1C;
        end;//4
  end;//1
end;//0

//0053A074
procedure TFeuilleClasse.sub_0053A074(var Msg:TMsg);
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
procedure TFeuilleClasse.sub_0053A0C0(var Msg:TMsg);
begin//0
  //0053A0C0
  if ((GrilleNotesCarnetDeNotes <> Nil) and (GrilleElevesCarnetDeNotes = Nil) and (GrilleMoyennesCarnetDeNotes = Nil) and (GrilleBilanCarnetDeNotes = Nil)) then
  begin//1
    //0053A0CD
    GrilleNotesCarnetDeNotes.Invalidate;
    GrilleElevesCarnetDeNotes.Invalidate;
    GrilleMoyennesCarnetDeNotes.Invalidate;
    GrilleBilanCarnetDeNotes.Invalidate;
    SendMessageA(GrilleElevesGrapheCarnetDeNotes.Handle, 1027, TabControlGraphes.TabIndex + 1, 0);
  end;//1
end;//0


//0053A140
procedure TFeuilleClasse.sub_0053A140(var Msg:TMsg);
var
   buf :string;
   I:integer;
begin//0
  //0053A140
  try
    //0053A197
	I := FichierCdn.sub_004BEA58;
    case I of
      0:
      begin//0053A1B7
        FichierCdn.sub_004BE8FC(buf);
        Label2.Caption :=  buf + ' - aucun élève';
      end;//3
      1:
      begin//0053A1F2
        FichierCdn.sub_004BE8FC(buf);
        Label2.Caption := buf + ' - 1 élève';
      end;//3
    end;//2
    FichierCdn.sub_004BE8FC(buf);
    Label2.Caption := buf + ' - ' + IntToStr(I) + ' élèves';
    FichierCdn.sub_004BE8FC(buf);
    //FichierCdn.sub_004BE974(lvar_124); eq FichierCdn.FileName
    Caption := buf + ' - ' + ExtractFileName(FichierCdn.FileName);
    Bevel2.Width := Canvas.TextWidth(Label2.Caption) + 10;
    Label1.Left := Label2.Left + Label2.Width + 15;
    Bevel1.Left := Label1.Left - 5;
    Label3.Left := Label1.Left + Label1.Width + 15;
    Bevel3.Left := Label3.Left - 5;
    //SendMessageA(f4D8, 1041, 0, 0);
  finally//0053A3E9
  end;//1
end;//0


//0053A470
procedure TFeuilleClasse.Quitter1Click(Sender:TObject);
begin
 //FormCarnetDeNotes2.Quitter1Click(Sender);
end;

//0053A480
procedure TFeuilleClasse.Fermer1Click(Sender:TObject);
begin
 Close;
end;

//0053A488
procedure TFeuilleClasse.Ouvrir1Click(Sender:TObject);
begin
 //FormCarnetDeNotes2.Ouvrir1Click(Sender);
end;

//0053A498
procedure TFeuilleClasse.Enregistrer1Click(Sender:TObject);
var
 FileName:ShortString;
begin//0
  //0053A498
    //0053A4CC

    if (FichierCdn<> nil) then
    begin//2
      //0053A4DF
      sub_00539DA4(FileName);
      if(MessageBoxA(0, PChar('Le fichier "' + ExtractFileName(FileName) + '" que vous allez enregistrer est au format d''une ancienne version de Carnet de Notes.' + #10 + #13 + #10 + #13 + 'Si vous confirmez, il sera enregistré au nouveau format mais ne pourra plus être relu par l''ancienne version.' + #10 + #13 + #10 + #13 + 'Voulez vous enregistrer ce fichier ?'), 'Carnet de Notes version Personnelle', $14{20})= 7) then Exit;
       
    end;//2

    sub_00539DA4(FileName);
    if (FileName = 'Nouvelle classe') then//0053A595
      Enregistrersous1Click(Sender)
    else//0053A5A0   sub_00539DA4(FileName);
      FichierCdn.sub_004C01F8(FileName, 0, '', 0);

    SendMessageA(Handle, $406{1030}, 0, 0);
    sub_00539DA4(FileName);
    if (FileName <> 'Nouvelle classe') then
    begin//2
      //0053A612
      //sub_00539DA4(lvar_10C);
      sub_004B901C(FileName);

      if (GetutiliserHistorique ) then
      begin//3
        //0053A644
        //sub_004B94D8(MainMenuPrincipal, 0, ECX, Self,  Ouvrir1Click);
        SendMessageA( f4D8, $410{1040}, 0, 0);
      end;//3
    end;//2

end;//0


//0053A814
procedure TFeuilleClasse.Enregistrersous1Click(Sender:TObject);
var
  Buf: ShortString;
  FileName : ShortString;
  lvar_4 : PChar;
begin//0
  //0053A814
    if (FichierCdn.f949 <> 0) then
    begin//2
      //0053A858
      sub_00539DA4(FileName);
	  
      lvar_4 := PChar('Le fichier "' + ExtractFileName(FileName) + '" que vous allez enregistrer est au format d''une ancienne version de Carnet de Notes.' + #10 + #13 + #10 + #13 + 'Si vous confirmez, il sera enregistré au nouveau format mais ne pourra plus être relu par l''ancienne version.' + #10 + #13 + #10 + #13 + 'Voulez vous enregistrer ce fichier ?');
      if (MessageBoxA(0, lvar_4, 'Carnet de Notes version Personnelle', 20) = 7) then Exit;
    end;//2
    sub_00539DA4(FileName);
    SaveDialog1.FileName := FileName;
    SaveDialog1.Title := 'Enregistrer sous ...';
    SaveDialog1.Filter := 'Fichier Carnet de Notes *.cdn |*.cdn';
    if (SaveDialog1.Execute) then
    begin//2
      //0053A940
      FichierCdn.sub_004C01F8(SaveDialog1.FileName, 0, '', 0);
      SendMessageA(Handle, $406{1030}, 0, 0);
    end;//2
	exit;
    sub_00539DA4(Buf);
    if (Buf <> 'Nouvelle classe') then
    begin//2
      //0053A9A5
      sub_00539DA4(Buf);
      sub_004B901C(Buf);
      
      if (GetutiliserHistorique) then
      begin//0053A9D7
        sub_004B94D8(MainMenuPrincipal, 0, {ECX,} {Self}Nil,Ouvrir1Click);
        SendMessageA(f4D8, $410{1040}, 0, 0);
      end;//3
    end;//2
end;//0


//0053ABFC
procedure TFeuilleClasse.Ajouter1Click(Sender:TObject);
begin//0
  //0053ABFC

    //0053AC49
    if (FichierCdn.sub_004C4790 < gvar_00617903) then
    begin//2
      //0053AC62
      if (FichierCdn.sub_004BEA58 > 0) then
      begin//3
        //0053AC75
        FormNouvelleSerieDeNotes{gvar_00617D74} := TFormNouvelleSerieDeNotes.Create(Self, FichierCdn, logo, 'Nouvelle série de notes');
        FormNouvelleSerieDeNotes.TabControl1.TabIndex := f4FC - 1;
        FormNouvelleSerieDeNotes.ShowModal;
        if (FormNouvelleSerieDeNotes.ModalResult = 1) then
        begin//4
          //0053ACE5
          //EAX := (FormNouvelleSerieDeNotes.RadioGroupEcritOuOral.ItemIndex = 1);
          FichierCdn.sub_004BF7F0(FormNouvelleSerieDeNotes.f334, 
								  FormNouvelleSerieDeNotes.ComboBox1.text, 
								  FormNouvelleSerieDeNotes.ComboBox5.text, 
								  FormNouvelleSerieDeNotes.ComboBox2.text, 
								  {FormNouvelleSerieDeNotes.f338}'', 
								  DateToStr(FormNouvelleSerieDeNotes.DateTimePicker1.Date), 
								  FormNouvelleSerieDeNotes.Edit3.text, 
								  FormNouvelleSerieDeNotes.ComboBoxTypesDeNotes.text,'');
          f4FC := FormNouvelleSerieDeNotes.f334;
          FichierCdn.sub_004C63C8;
          TabSet1.TabIndex := 0;
          SendMessageA(GrilleNotesCarnetDeNotes.Handle, $403{1027}, f4FC, 0);
          SendMessageA(GrilleMoyennesCarnetDeNotes.Handle, $408{1032}, f4FC, 0);
          SendMessageA(GrilleBilanCarnetDeNotes.Handle, $403{1027}, TabControlGrillesBilan.TabIndex + 1, 0);
          SendMessageA(Handle, $40E{1038}, 0, 0);
          TabControlGrillesNotes.TabIndex := f4FC - 1;
          SendMessageA(Handle, $401{1025}, 1, FichierCdn.sub_004BEAD0(f4FC) - 1);
          GrilleNotesCarnetDeNotes.TopRow := 1;
          GrilleNotesCarnetDeNotes.LeftCol := 1;
          //GrilleNotesCarnetDeNotes.LeftCol := ESI;
          GrilleNotesCarnetDeNotes.SetFocus;
          keybd_event($26{38}, 0, 0, 0);
          keybd_event($26{38}, 0, 2, 0);
        end;//4
        FormNouvelleSerieDeNotes.Destroy;
        Exit;
      end;//3
    end;//2
    if (sub_00498A40 = false) then//0053AFEE
      Application.MessageBox('Impossible d''ajouter une série de notes. Le nombre de séries de notes est limité à 3 pour la version non enregistrée.','Carnet de Notes version Personnelle' ,$40{64})
    else
    Application.MessageBox(PChar('Impossible d''ajouter une série de notes. Le nombre de séries de notes est limité à ' + IntToStr(255{gvar_00617903}) + '.'), 'Carnet de Notes version Personnelle', $40{64});
end;//0


//0053B1EC
procedure TFeuilleClasse.Supprimer1Click(Sender:TObject);
var
  I:integer;
begin//0
  //0053B1EC

  if (FichierCdn.sub_004C4790 > 0) then
  begin//0053B207

    {gvar_00617D84}FormSupprimerSerie:= TFormSupprimerSerie.Create(Self, FichierCdn,logo); 
    FormSupprimerSerie.ShowModal;



      for I := 1 to FichierCdn.sub_004BE9E0 do//0053B252
        FichierCdn.sub_004C4784(I, true);
      


    SendMessageA(GrilleNotesCarnetDeNotes.Handle, $403{1027}, f4FC, 0);
    SendMessageA(GrilleMoyennesCarnetDeNotes.Handle, $408{1032}, f4FC, 0);
    SendMessageA(GrilleBilanCarnetDeNotes.Handle, $403{1027},TabControlGrillesBilan.TabIndex + 1 , 0);
    SendMessageA(Handle, $40E{1038}, 0, 0);
     FormSupprimerSerie.Destroy;
  end;//1
end;//0

//0053B308
procedure TFeuilleClasse.Sriedenotes1Click(Sender:TObject);
begin//0
  //0053B308
  Ajouter1.Enabled := (FichierCdn.sub_004BEA58<> 0);
  Supprimer1.Enabled := (FichierCdn.sub_004C4790 <> 0);
  Rorganiser1.Enabled := (FichierCdn.sub_004C4790 <> 0);
  Utilitaires1.Enabled := (FichierCdn.sub_004C4790 >= 2);
  Transformer1.Enabled := (FichierCdn.sub_004C4790 <> 0);
  Informationssurlessriesdenotes1.Enabled := (FichierCdn.sub_004BEA58 <> 0);
  Importerdepuisunfichier1.Enabled := (FichierCdn.sub_004BEA58 <> 0);
end;//0


//0053B3AC
procedure TFeuilleClasse.Options1Click(Sender:TObject);
begin//0
  //0053B3AC
  FormCarnetDeNotes2.Options1Click(Sender);
  FichierCdn.sub_004C63C8;
  
	SendMessageA(GrilleBilanCarnetDeNotes.Handle, $403{1027},TabControlGrillesBilan.TabIndex +1 , 0);
	SendMessageA(GrilleNotesCarnetDeNotes.Handle, $403{1027}, f4FC, 0);
	SendMessageA(GrilleMoyennesCarnetDeNotes.Handle, $408{1032},f4FC , 0);
	SendMessageA(Handle, $40B{1035}, 0, 0);
end;//0

//0053B450
procedure TFeuilleClasse.Informations1Click(Sender:TObject);
begin//0
  //0053B450

    //0053B492
    FormNouvelleClasse{gvar_00617E64} := TFormNouvelleClasse.Create(Self, {FichierCdn,}logo, 'Informations sur la classe');
    FormNouvelleClasse.ShowModal;
    if (FormNouvelleClasse.ModalResult = 1) then
    begin//2
      //0053B4E0
      FichierCdn.sub_004BEFD0(FormNouvelleClasse.EditClasse.Text);
      FichierCdn.sub_004BF004(FormNouvelleClasse.EditEtablissement.Text);
      FichierCdn.sub_004BF038(FormNouvelleClasse.ComboBoxMatiere.Text);
      FichierCdn.sub_004BF0A0(FormNouvelleClasse.EditRemarque.Text);
      FichierCdn.sub_004BF06C(FormNouvelleClasse.EditAnneeScolaire.Text);
      FichierCdn.sub_004C3920(FormNouvelleClasse.ComboBoxUtilisateurs.Items[FormNouvelleClasse.ComboBoxUtilisateurs.ItemIndex]);
    end;//2
    FormNouvelleClasse.Destroy;
    SendMessageA(Handle, $406{1030}, 0, 0);

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
    
    FichierCdn.sub_004BE8FC(buf);
    FormCreerListeEleves{gvar_00617DCC} := TFormCreerListeEleves.Create(Self,buf,logo);
    FormCreerListeEleves.ShowModal;
    if (FormCreerListeEleves.ModalResult = 1) then
    begin//0053B780
      //FichierCdn.sub_004BF64C(FormCreerListeEleves.f318);
      
      lvar_8 := FichierCdn.sub_004BEAC4;
      
        for I := 1 to FichierCdn.sub_004BEA58  do //0053B7BE
        begin//0053B7C6
           
          //FichierCdn.sub_004C8C2C(lvar_8.indexof(FormCreerListeEleves.f318[I - 1]) + 1, FormCreerListeEleves.f31C[I - 1]);
        end;//4
      
      
        
        for I := 1 to FichierCdn.sub_004BEA58 do //0053B882
        begin//4
          //0053B88A  
          //FichierCdn.sub_004C8DF8(lvar_8.indexof(FormCreerListeEleves.f318[I - 1]) , FormCreerListeEleves.f320[lvar_8.indexof(FormCreerListeEleves.f318[I - 1])  + 1] = 'R');
        end;//4
      
      FichierCdn.sub_004C63C8;
      SendMessageA(GrilleElevesCarnetDeNotes.Handle, $404{1028}, 0, 0);
      SendMessageA(GrilleElevesGrapheCarnetDeNotes.Handle, $404{1028}, 0, 0);
      SendMessageA(GrilleNotesCarnetDeNotes.Handle, $403{1027}, f4FC, 0);
      SendMessageA(GrilleMoyennesCarnetDeNotes.Handle, $408{1032}, f4FC, 0);
      SendMessageA(GrilleBilanCarnetDeNotes.Handle, $403{1027}, TabControlGrillesBilan.TabIndex + 1, 0);
    end;//2;
    FormCreerListeEleves.Destroy;
    SendMessageA(Handle, $406{1030}, 0, 0);
    SendMessageA(Handle, $40B{1035}, 0, 0);

end;//0

//0053BA50
procedure TFeuilleClasse.Listedeslves1Click(Sender:TObject);
begin//0
  //0053BA50
  Modifier1.Enabled := (FichierCdn.sub_004BEA58 = 0);
  CopierdanslePressePapiers1.Enabled := (FichierCdn.sub_004BEA58 > 0);

  Ajouterunlve1.Enabled := (FichierCdn.sub_004BEA58 - 1 - $31 < 0);
  Supprimerunlve1.Enabled := (FichierCdn.sub_004BEA58 > 0);
  Modifierlenomdunlve1.Enabled := (FichierCdn.sub_004BEA58 > 0);

  //0053BAE6

  if (FichierCdn.sub_004BEA58 <> 0) Or (Clipboard.HasFormat(1) = False) then //0053BAFC
   CollerdepuislePressePapiers2.Enabled := false
  else//0053BB00
    CollerdepuislePressePapiers2.Enabled := true;
  //0053BB1B
  if (Clipboard.HasFormat(1) = False) Or (FichierCdn.sub_004BEA58 <= 0) then//0053BB2E
    CollerlesdatesdenaissancesdepuislePressePapiers1.Enabled  := false
  else//0053BB32
    CollerlesdatesdenaissancesdepuislePressePapiers1.Enabled := true;

 
end;//0


//0053BB44
procedure TFeuilleClasse.TabControlGrillesNotesChange(Sender:TObject);
begin
  //0053BB44
  {if (gvar_00617CE8.Visible) then
  begin//0053BB54
    gvar_00617CE8.Hide;
  end;//1}
    
  if (GrilleNotesCarnetDeNotes <> Nil) and (GrilleElevesCarnetDeNotes <> Nil) and(GrilleMoyennesCarnetDeNotes <> Nil) then 
  begin
	  f4FC := TabControlGrillesNotes.TabIndex + 1;
	  SendMessageA(GrilleNotesCarnetDeNotes.Handle, 1027, f4FC, 0);
	  SendMessageA(GrilleElevesCarnetDeNotes.Handle, 1027, f4FC, 0);
	  SendMessageA(GrilleMoyennesCarnetDeNotes.Handle, 1032, f4FC, 0);
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
    
      for I := 1 to FichierCdn.sub_004BEA58 do //0053BCBA
      begin//3
        //0053BCBE
        FichierCdn.sub_004BEA64(I, buf);
        lvar_8 := lvar_8 + buf + #13 + #10;
      end;//3
    
    Clipboard.SetTextBuf(PChar(lvar_8));

end;//0

//0053BD58
procedure TFeuilleClasse.Ajouterunlve1Click(Sender:TObject);
//var

begin//0
  //0053BD58..0053BD80
   
    {gvar_00617CF8}FormModifierEleve := TFormModifierEleve.Create(Self, '', '', false,'Ajouter un élève');
    FormModifierEleve.ShowModal;
    if (FormModifierEleve.ModalResult = 1) then
    begin//2
      //0053BDC4
	  with FormModifierEleve do 
      FichierCdn.sub_004C14C8(EditNomPrenom_FormModifier.Text, EditDateDeNaissance_FormModifier.Text, '1',CheckBoxRedoublant_FormModifier.Checked);
      FichierCdn.sub_004C63C8;
      SendMessageA(GrilleNotesCarnetDeNotes.Handle, $403{1027}, f4FC, 0);
      SendMessageA(GrilleMoyennesCarnetDeNotes.Handle, $408{1032}, f4FC, 0);
      SendMessageA(GrilleElevesCarnetDeNotes.Handle, $404{1028}, 0, 0);
      SendMessageA(GrilleElevesGrapheCarnetDeNotes.Handle, $404{1028}, 0, 0);
      SendMessageA(GrilleBilanCarnetDeNotes.Handle, $403{1027},TabControlGrillesBilan.TabIndex + 1 , 0);
      SendMessageA(Handle, $406{1030}, 0, 0);
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
        FichierCdn.sub_004C1158(FormListeEleves.ListeEleves.ItemIndex + 1);
        FichierCdn.sub_004C63C8;
        SendMessageA(GrilleNotesCarnetDeNotes.Handle, $403{1027}, f4FC, 0);
        SendMessageA(GrilleMoyennesCarnetDeNotes.Handle, $408{1032}, f4FC, 0);
        SendMessageA(GrilleElevesCarnetDeNotes.Handle, $404{1028}, 0, 0);
        SendMessageA(GrilleElevesGrapheCarnetDeNotes.Handle, $404{1028}, 0, 0);
        SendMessageA(GrilleBilanCarnetDeNotes.Handle, $403{1027},TabControlGrillesBilan.TabIndex + 1 , 0);
        SendMessageA(Handle, $406{1030}, 0, 0);
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
      FichierCdn.sub_004C8BB8(FormListeEleves.ListeEleves.ItemIndex + 1, buf);

      FormModifierEleve{gvar_00617CF8} := TFormModifierEleve.Create(Self, FormListeEleves.ListeEleves.Items[FormListeEleves.ListeEleves.ItemIndex],
												 buf, 
												 FichierCdn.sub_004C8E50(FormListeEleves.ListeEleves.ItemIndex + 1),
												 'Modifier les informations de l''élève');
      FormModifierEleve.ShowModal;
      if (FormModifierEleve.ModalResult = 1) then
      begin//3
        //0053C357
        //lvar_10C := FormModifierEleve.EditDateDeNaissance_FormModifier.Text;
        //EAX := FormModifierEleve.CheckBoxRedoublant_FormModifier.Checked;
        //lvar_210 := FormModifierEleve.EditNomPrenom_FormModifier.Text;
        //FichierCdn.sub_004C1954(FormListeEleves.ListeEleves.ItemIndex + 1, lvar_20C, lvar_108);
        SendMessageA(GrilleNotesCarnetDeNotes.Handle, $403{1027}, f4FC, 0);
        SendMessageA(GrilleMoyennesCarnetDeNotes.Handle, $408{1032}, f4FC, 0);
        SendMessageA(GrilleElevesCarnetDeNotes.Handle, $404{1028}, 0, 0);
        SendMessageA(GrilleElevesGrapheCarnetDeNotes.Handle, $404{1028}, 0, 0);
        SendMessageA(GrilleBilanCarnetDeNotes.Handle, $403{1027},TabControlGrillesBilan.TabIndex + 1 , 0);
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
 
  FichierCdn.sub_004C63C8;
  SendMessageA(GrilleNotesCarnetDeNotes.Handle, $403{1027}, f4FC, 0);
  SendMessageA(GrilleMoyennesCarnetDeNotes.Handle, $408{1032}, f4FC, 0);
  SendMessageA(GrilleBilanCarnetDeNotes.Handle, $403{1027}, TabControlGrillesBilan.TabIndex + 1 , 0);
  SendMessageA(Handle, $40E{1038}, 0, 0);
end;//0

//0053C638
procedure TFeuilleClasse.Imprimer1Click(Sender:TObject);
var
 buf :string;
begin
  //0053C638
  try
    //0053C65A
    FormImprimer{gvar_00617E04} := TFormImprimer.Create(Self, FichierCdn , logo{f4D0});
    FichierCdn.sub_004BE8FC(buf);
    FormImprimer.Caption := 'Imprimer (' + buf + ')';
    FormImprimer.ShowModal;
    FormImprimer.Destroy;
  finally//0053C6F0
   // EDX := 2;
  end;//1
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
    f4F8 := PanelNotes.Width;
    Panel2.Width := Panel2.Width + PanelNotes.Width;
    SpeedButtonNotes.Enabled := False;
    Exit;
  end;//1
 
  Panel2.Width := Panel2.Width - f4F8;
  SpeedButtonNotes.Enabled := True;

end;

//0053C7D0
procedure TFeuilleClasse.SpeedButtonNotesClick(Sender:TObject);
begin
  //0053C7D0

  if (PanelMoyennes.Width <> 0) then
  begin//1
    //0053C7E0
    f4F4 := PanelMoyennes.Width;
    Panel2.Width := Panel4.Width;
    PanelMoyennes.Width := 0;
    SpeedButtonMoyennes.Enabled := False;
    Exit;
  end;//1
  Panel2.Width := Panel4.Width + f4F4;
  PanelMoyennes.Width := f4F4;
  SpeedButtonMoyennes.Enabled := True;

end;

//0053C858
procedure TFeuilleClasse.TabControlGrillesBilanChange;
begin//0
  //0053C858
  SendMessageA(GrilleBilanCarnetDeNotes.Handle, $403{1027}, TabControlGrillesBilan.TabIndex + 1 , 0);
end;//0


//0053C88C
procedure TFeuilleClasse.TabSet1Click(Sender:TObject);
begin
  //0053C88C
  //gvar_00617CE8:TFormHint
  if (FormHint.Visible <> False) then FormHint.Hide; //0053C89C
  Notebook1.PageIndex := TabSet1.TabIndex;
  case TabSet1.TabIndex of
    0:
    begin//0053C8E2
      SendMessageA(GrilleNotesCarnetDeNotes.Handle, 1027, TabControlGrillesNotes.TabIndex + 1 , 0);
      SendMessageA(GrilleMoyennesCarnetDeNotes.Handle, 1032, TabControlGrillesNotes.TabIndex + 1, 0);
      SendMessageA(Handle, 1038, 0, 0);
    end;
    1:
    begin//0053C956
      SendMessageA(GrilleBilanCarnetDeNotes.Handle, 1027,TabControlGrillesBilan.TabIndex + 1 , 0);
      SendMessageA(Handle, 1038, 0, 1);
    end;//2
    2:
    begin//0053C99C
      SendMessageA(GrilleElevesGrapheCarnetDeNotes.Handle, 1027, TabControlGraphes.TabIndex + 1 , 0);
      SendMessageA(Handle, 1038, 0, 1);
    end;//2
  end;//1

end;

//0053C9E4
procedure TFeuilleClasse.sub_0053C9E4(var Msg:TMsg);
begin//0
  //0053C9E4
  if (Msg.message <> 0) then//0053C9F0
    SendMessageA(GrilleMoyennesCarnetDeNotes.Handle, $408{1032}, Msg.message, Msg.wParam)
  else 
    SendMessageA(GrilleMoyennesCarnetDeNotes.Handle, $408{1032}, f4FC, Msg.wParam);

end;//0

//0053CA38
procedure TFeuilleClasse.sub_0053CA38(var Msg:TMsg);
begin//0
  //0053CA38

  if (GrilleNotesCarnetDeNotes <> Nil) then//0053CA49
    SendMessageA(GrilleNotesCarnetDeNotes.Handle, $403{1027}, Msg.message, 0);
  
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
procedure TFeuilleClasse.sub_0053CAFC(var Msg:TMsg);
begin//0
  //0053CAFC
  ImageFeuVert.Visible := FichierCdn.sub_004C3954 Xor true;
  ImageFeuRouge.Visible := FichierCdn.sub_004C3954;
end;//0



//0053CB34
procedure TFeuilleClasse.sub_0053CB34(var Msg:TMsg);
begin//0
  //0053CB34
  case sub_004BA3C0 of
    0: //0053CB4C
      TabControlGrillesNotes.TabPosition := tpTop; //0

    1://0053CB5B
      TabControlGrillesNotes.TabPosition := tpLeft; //2

    2://0053CB6A
      TabControlGrillesNotes.TabPosition := tpRight; //3
    3: //0053CB79
      TabControlGrillesNotes.TabPosition := tpBottom; //1
  end;//1

  case sub_004BA384 of
    0://0053CB9B
      TabControlGrillesBilan.TabPosition := tpTop;
   
    1://0053CBAA
      TabControlGrillesBilan.TabPosition := tpLeft;
    
    2://0053CBB9
      TabControlGrillesBilan.TabPosition := tpRight;
    
    3://0053CBC8
      TabControlGrillesBilan.TabPosition := tpBottom;
    
  end;//1

  case GetongletsGraphes of
    0://0053CBEA
      TabControlGraphes.TabPosition := tpTop;
      
    1://0053CBF9
      TabControlGraphes.TabPosition := tpLeft;
      
    2: //0053CC08
      
      TabControlGraphes.TabPosition := tpRight;
      
    3:
      //0053CC17
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
    FichierCdn.sub_004BF64C(StringList);
    FichierCdn.sub_004C63C8;
    SendMessageA(GrilleElevesCarnetDeNotes.Handle, $404{1028}, 0, 0);
    SendMessageA(GrilleElevesGrapheCarnetDeNotes.Handle, $404{1028}, 0, 0);
    SendMessageA(GrilleNotesCarnetDeNotes.Handle, $403{1027}, f4FC, 0);
    SendMessageA(GrilleMoyennesCarnetDeNotes.Handle, $408{1032}, f4FC, 0);
    SendMessageA(GrilleBilanCarnetDeNotes.Handle, $403{1027}, TabControlGrillesBilan.TabIndex + 1, 0);
    SendMessageA(Handle, $406{1030}, 0, 0);
    SendMessageA(Handle, $40B{1035}, 0, 0);
    StringList.Destroy;
end;//0

//0053CD78
procedure TFeuilleClasse.Toutenregistrer1Click(Sender:TObject);
begin//0
  //0053CD78
  SendMessageA(f4D8, $40C{1036}, 0, 0);
end;//0


//0053CD90
procedure TFeuilleClasse.sub_0053CD90(var Msg:TMsg);
var
  FileName:shortstring;
  buf:string;
begin//0
  //0053CD90
    //0053CDC1
    if (FichierCdn.f949 <> 0) then
    begin//2
      //0053CDD4
      sub_00539DA4(FileName);
      
      if (MessageBoxA(0, PChar('Le fichier "' + ExtractFileName(FileName) + '" que vous allez enregistrer est au format d''une ancienne version de Carnet de Notes.' + #10 + #13 + #10 + #13 + 'Si vous confirmez, il sera enregistré au nouveau format mais ne pourra plus être relu par l''ancienne version.' + #10 + #13 + #10 + #13 + 'Voulez vous enregistrer ce fichier ?'), 'Carnet de Notes version Personnelle', $14{20}) = 7) then Exit;
    end;//2
    sub_00539DA4(FileName);
    if (FileName = 'Nouvelle classe') then
    begin//2
      //0053CE8A
      SaveDialog1.FileName := '';
      SaveDialog1.Title := 'Enregistrer sous ...';
      SaveDialog1.Filter := 'Fichier Carnet de Notes *.cdn |*.cdn';
      if (SaveDialog1.Execute) then
      begin//3
        //0053CECD
        FichierCdn.sub_004C01F8(SaveDialog1.FileName, 0, '', 0);
      end;//3
    end//2
    else
    begin//2
      //0053CEFA
      sub_00539DA4(FileName);
      FichierCdn.sub_004C01F8(FileName, 0, '', 0); //{$53D144}
    end;//2
    SendMessageA(Handle, $406{1030}, 0, 0);
end;//0



//0053D148
procedure TFeuilleClasse.sub_0053D148(var Msg:TMsg);
var
 I,lvar_10,lvar_C:integer;
 buf,lvar_8:string;
begin//0
  //0053D148
    //0053D16A
    if (Msg.wParam = 0) then
    begin//2
      //0053D174

      Label1.Left := Label2.Left + Label2.Width + 15;
      Bevel1.Left := Label1.Left - 5;
      
   
      FichierCdn.sub_004BE9EC(f4FC, buf);
	  I:=FichierCdn.sub_004BEAD0(f4FC);
	  lvar_C := FichierCdn.sub_004BEA58;
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
      I := FichierCdn.sub_004C4790;
   
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
      Exit;
    end;//2
    Label1.Visible :=False;
    Label3.Visible :=False;
    Bevel1.Visible :=False;
    Bevel3.Visible :=False;
	 //0053D57D
 
end;//0

//0053D6F4
procedure TFeuilleClasse.sub_0053D6F4(var Msg:TMsg);
var
  
  GridRect:TGridRect;
begin//0
  //0053D6F4
  if (GrilleNotesCarnetDeNotes <> Nil) then
  begin//1
    //0053D70A
    if (GrilleElevesCarnetDeNotes <> Nil) then
    begin//2
      //0053D717
      if (FichierCdn.sub_004BEAD0(f4FC) > 0) then
      begin//3
        //0053D72C
        if (Msg.wParam = -1) then//0053D734
          GridRect.left := 0
        else//0053D73B
          GridRect.left := Msg.wParam;
        
        GridRect.Top := Msg.message;
        if (Msg.wParam = -1) then
        begin//4
          //0053D74A
          GridRect.Right := FichierCdn.sub_004BEAD0(f4FC) - 1;
        end//4
        else
        begin//4
          //0053D770
          GridRect.Right := Msg.wParam;
        end;//4
        GridRect.Bottom := Msg.message;
        if (Msg.message <> 0) then
        begin//4
          //0053D77F
          GrilleNotesCarnetDeNotes.Selection := GridRect;
        end;//4
      end;//3
      
      if (Msg.message <> 0) then
      begin//3
        //0053D793
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
  FileName:shortstring;
  S:TStringlist;
begin//0
  //0053D7C0
    //0053D806
    if ((Sender is TMenuItem) ) then
    begin//2
      //0053D81B
      if (FichierCdn.sub_004C3954) then
      begin//3
        //0053D82A
        sub_00539DA4(FileName);
        Application.MessageBox(PChar('Le fichier "' + ExtractFileName(FileName) + '" a été modifié. Vous devez l''enregistrer avant de pouvoir le copier sur disquette.'),'Carnet de Notes version Personnelle' , $40{64});
      end//3
	  else 
	  begin
		  (*lvar_C := 0;
		  lvar_22 := Handle;
		  lvar_1E := 2;
		  sub_00539DA4(FileName);
		  ECX := $53DA44;
		 
		  lvar_1A := PChar(FileName + #0);
		  S := sub_00497908;
		  S[];
		  
		  sub_00539DA4(FileName);
		  lvar_16 := PChar(lvar_138 + ':\' + ExtractFileName(FileName) + #0);
		  lvar_12 := $40{64};
		  
		  EAX := SHFileOperationA(lvar_22);*)
	  end;
    end;//2
	//0053D970
 
end;//0

//0053DA54
procedure TFeuilleClasse.Envoyerlefichierpourcourrierlectronique1Click(Sender:TObject);
//var
begin//0
  showmessage('Envoyerlefichierpourcourrierlectronique1Click');
  //0053DA54
    //0053DA87
    (*
    ESI := GetMem(24);
    EBX := ESI;//ESI
    EAX := 0;
    ? := EAX;//EAX
     := 2;
    EAX := 0;
    ? := EAX;//EAX
    EAX := EDI;//Self
    sub_00539DA4(lvar_134);
     := ;
    EAX := lvar_4;
    EAX := PChar(lvar_4);
    ? := EAX;//PChar(lvar_4)
    EAX := 0;
    ? := EAX;//EAX
    EAX := 0;
    ? := EAX;//EAX
    lvar_34 := 0;
    EAX := EDI;//Self
    sub_00539DA4(FileName);
    lvar_30 := PChar('Envoi du fichier Carnet de Notes : ' + ExtractFileName(FileName));
    lvar_2C := 0;
    lvar_28 := 0;
    lvar_24 := 0;
    lvar_20 := 0;
    lvar_1C := 0;
    lvar_18 := 0;
    lvar_14 := 0;
    lvar_10 := 0;
    lvar_C := 1;
    lvar_8 := ESI;
    EDX := $18{24};
    EAX := ESI;//ESI
    FreeMem(ESI);
    *)
    if ({sub_005329D4(0, 0, lvar_34, 11, 0) <> 0}false) then
    begin//2
      //0053DB7F
      Application.MessageBox('Impossible de lancer votre logiciel de courrier électronique depuis Carnet de Notes.'+#13+#10+'Il est conseillé de le lancer normalement depuis votre menu Démarrer.','Carnet de Notes version Personnelle' , $10{16});
    end;//2
end;//0

//0053DCB8
procedure TFeuilleClasse.Crerlesdisquettespourlescollgues1Click(Sender:TObject);
begin//0
  //0053DCB8
  FormCreerDisquettes{gvar_00617D6C} := TFormCreerDisquettes.Create(Self, logo,FichierCdn);
  FormCreerDisquettes.ShowModal;
  FormCreerDisquettes.Destroy;
end;//0

//0053DD00
procedure TFeuilleClasse.Informationssurlessriesdenotes1Click(Sender:TObject);
begin//0
  //0053DD00
  FormInformationsSeriesDeNotes{gvar_00617D8C} := TFormInformationsSeriesDeNotes.Create(Self, FichierCdn, Logo);
  FormInformationsSeriesDeNotes.ShowModal;
  FormInformationsSeriesDeNotes.Destroy;
  SendMessageA(GrilleNotesCarnetDeNotes.Handle, $403{1027}, f4FC, 0);
  SendMessageA(GrilleMoyennesCarnetDeNotes.Handle, $408{1032}, f4FC, 0);
  SendMessageA(GrilleBilanCarnetDeNotes.Handle, $403{1027}, TabControlGrillesBilan.TabIndex + 1 , 0);
end;//0


//0053DDC4
procedure TFeuilleClasse.Fusionnerplusieursfichiers1Click(Sender:TObject);
begin//0
  //0053DDC4
  FormCarnetDeNotes2{gvar_006184E0}.Fusionnerplusieursfichiers1Click(Sender);
end;//0


//0053DDD4
procedure TFeuilleClasse.Rcuprerunfichierbak1Click(Sender:TObject);
begin//0
  //0053DDD4
  FormCarnetDeNotes2.Rcuprerunfichierbak1Click(Sender);
end;//0


//0053DDE4
procedure TFeuilleClasse.Sauvegardervosfichiers1Click(Sender:TObject);
begin//0
  //0053DDE4
  FormCarnetDeNotes2.Sauvegardervosfichiers1Click(Sender);
end;//0

//0053DDF4
procedure TFeuilleClasse.sub_0053DDF4(Y:ShortString);
begin//0
  //0053DDF4
  FichierCdn.sub_004BE8FC(Y);
end;//0


//0053DE0C
procedure TFeuilleClasse.sub_0053DE0C(var Y:String);
begin//0
  //0053DE0C
  FichierCdn.sub_004C3908(Y);
end;//0


//0053DE24
procedure TFeuilleClasse.FormActivate(Sender:TObject);
var
  buf :shortstring;
begin//0
  //0053DE24
    //0053DE43
    sub_00539DA4(buf);
    FormCarnetDeNotes2.OngletsClasses.TabIndex := FormCarnetDeNotes2.TabControl2.Tabs.IndexOf(buf);
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
    f4FC := FormUtilitairesSeries.fF28;
    TabControlGrillesNotes.TabIndex :=FormUtilitairesSeries.fF28 - 1;
    FichierCdn.sub_004C63C8;
    SendMessageA(GrilleNotesCarnetDeNotes.Handle, $403{1027}, f4FC, 0);
    SendMessageA(GrilleMoyennesCarnetDeNotes.Handle, $408{1032}, f4FC, 0);
    SendMessageA(GrilleBilanCarnetDeNotes.Handle, $403{1027}, TabControlGrillesBilan.TabIndex+1, 0);
    SendMessageA(Handle, $40E, f4FC, 0);
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
    FormInformationsSeriesDeNotes.ListBoxSeries.ItemIndex := FichierCdn.sub_004BEAD0(k) - 1;
    FormInformationsSeriesDeNotes.ListBoxSeriesClick(Sender);
    FormInformationsSeriesDeNotes.ShowModal;
    FormInformationsSeriesDeNotes.Destroy;
    FichierCdn.sub_004C63C8;
    SendMessageA(GrilleNotesCarnetDeNotes.Handle, $403{1027}, f4FC, 0);
    SendMessageA(GrilleMoyennesCarnetDeNotes.Handle, $408{1032}, f4FC, 0);
    SendMessageA(GrilleBilanCarnetDeNotes.Handle, $403{1027}, TabControlGrillesBilan.TabIndex+1 , 0);
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
    f4FC := FormTransformerSeries.f318;
    TabControlGrillesNotes.TabIndex := FormTransformerSeries.f318 - 1;
    FichierCdn.sub_004C63C8;
    SendMessageA(GrilleNotesCarnetDeNotes.Handle, $403{1027}, f4FC, 0);
    SendMessageA(GrilleMoyennesCarnetDeNotes.Handle, $408{1032}, f4FC, 0);
    SendMessageA(GrilleBilanCarnetDeNotes.Handle, $403{1027},TabControlGrillesBilan.TabIndex + 1 , 0);
    SendMessageA(Handle, $40E{1038}, f4FC, 0);
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
    FormInformationsSeriesDeNotes.ListBoxSeries.ItemIndex := FichierCdn.sub_004BEAD0(FormTransformerSeries.f318) - 1;
    FormInformationsSeriesDeNotes.ListBoxSeriesClick(Sender);
    FormInformationsSeriesDeNotes.ShowModal;
    FormInformationsSeriesDeNotes.Destroy;
    FichierCdn.sub_004C63C8;
    SendMessageA(GrilleNotesCarnetDeNotes.Handle, $403{1027}, f4FC, 0);
    SendMessageA(GrilleMoyennesCarnetDeNotes.Handle, $408{1032}, f4FC, 0);
    SendMessageA(GrilleBilanCarnetDeNotes.Handle, $403{1027},TabControlGrillesBilan.TabIndex + 1 , 0);
  end;//1
end;//0

//0053E400
procedure TFeuilleClasse.Crerlesbulletinsdeslves1Click(Sender:TObject);
begin

 FormCarnetDeNotes2.Crerlesbulletinsdeslves1Click(Self);

end;

//0053E410
procedure TFeuilleClasse.sub_0053E410(var Msg:TMsg);
begin//0
  //0053E410
 // showmessage('Width:'+inttostr(Msg.message));
  PanelEleves.Width := Msg.message + 2;
  PanelElevesGraphe.Width := Msg.message + 2;
end;//0


//0053E44C
procedure TFeuilleClasse.sub_0053E44C(var Msg:TMsg);
var
   lvar_C,lvar_14,lvar_10,lvar_18,I:integer;
   buf : string;
   lvar_158,lvar_28 :real;
begin//0
  //0053E44C

    //0053E46F
    
    lvar_C := Msg.wParam;
    lvar_10 := Msg.message;
    lvar_14 := FichierCdn.sub_004BEAD0(lvar_10);
    if (lvar_14 > 0) then
    begin//0053E4AB
      Chart1.Visible := True;
      Chart1.View3D := Getgraphe3D;
      //Chart1..Visible := GetgrapheLegende;
      if (GetgrapheLegende) then
      begin//3
        //0053E4F2
        lvar_18 := 0;
        
		  for I := 1 to lvar_14 do //0053E502
          try
            //0053E51A
            FichierCdn.sub_004BEF5C(lvar_10, I ,lvar_C, buf);
            //EAX := lvar_38;
            lvar_18 := lvar_18 + 1;
          except//5
            on E:Exception do
            begin//0053E59D
            end;//6
          end;//5//0053E5B5
    
        //Chart1..Visible := (lvar_18 <> 0);
      end;//3
	  (*
      Chart1..Visible := GetgrapheDegrade;
      Chart1..StartColor :=GetcouleurDebutDegrade;
      Chart1..EndColor := GetcouleurFinDegrade;
      Chart1..SetColor := _GetcouleurMurGauche;
      Chart1..Color := GetcouleurMurBas;
      Chart1.Monochrome := GetgrapheEnCouleur Xor true;*)
      Chart1.RemoveAllSeries;
	  Chart1.AddSeries(TLineSeries.Create(Chart1));
	  Chart1.AddSeries(TLineSeries.Create(Chart1));
	  Chart1.AddSeries(TLineSeries.Create(Chart1));
	  Chart1.AddSeries(TLineSeries.Create(Chart1));
	  
      (*Chart1.Series[0].ShowInLegend := GetgrapheLigneEleve;
      Chart1.Series[1].ShowInLegend := GetgrapheLigneMin;
      Chart1.Series[2].ShowInLegend := GetgrapheLigneMax;
      Chart1.Series[3].ShowInLegend := GetgrapheLigneMoyenne;*)
    end//2
    else
    begin//0053E71C
      Chart1.Visible := False;
    end;//2


	  for I := 1 to lvar_14 do //0053E743
      try
        //0053E75B

        if (GetgrapheLigneEleve) then
        begin//4
          //0053E768
          FichierCdn.sub_004BEF5C(lvar_10, I, lvar_C, buf);
          lvar_158 := sub_004B9E48 * StrToFloat(buf);
          
          fichiercdn.sub_004BED2C( lvar_10, I, buf);
          lvar_28 := lvar_158 / StrToFloat(buf);
          
          FichierCdn.sub_004BED04( lvar_10, Buf, I);

          Chart1.Series[0].AddXY(I, lvar_28, buf, GetcouleurEleve); // 0053E8B1 
          FichierCdn.sub_004BEA64(lvar_C, buf);
          Chart1.Series[0].Title := buf;
          Chart1.Series[0].SeriesColor := GetcouleurEleve;
          TLineSeries(Chart1.Series[0]).LinePen.Width := 2;
        end;//4

        if (GetgrapheLigneMin) then
        begin//4
          //0053E967
          //FichierCdn.sub_004C3958(lvar_10, buf, I);
          //lvar_158 := sub_004B9E48 * StrToFloat(buf);
          FichierCdn.sub_004BED2C( lvar_10, I, buf);
          lvar_28 := lvar_158 / StrToFloat(buf);
          FichierCdn.sub_004BED04(lvar_10, buf, I);
          //Chart1.Series[1}.AddXY(, 0, lvar_170, GetcouleurMin);
          
          Chart1.Series[1].Title := 'Minimum de la classe';
          //Chart1.Series[1].SeriesColor := GetcouleurMin;
          
          TLineSeries(Chart1.Series[1]).LinePen.Width := 2;
        end;//4

        if (GetgrapheLigneMax) then
        begin//4
          //0053EB30
          
          //FichierCdn.sub_004C3B54(lvar_10, buf, I);
          
          //lvar_158 := sub_004B9E48 * StrToFloat(buf);
          
          FichierCdn.sub_004BED2C( lvar_10, I, buf);
           
          lvar_28 := lvar_158 / StrToFloat(buf);
          
          FichierCdn.sub_004BED04( lvar_10, buf, I);
          
          //Chart1.Series[2].AddXY(, 0, lvar_17C, GetcouleurMax);
          
          Chart1.Series[2].Title := 'Maximum de la classe';
          
          //Chart1.Series[2].SeriesColor := GetcouleurMax;
         
          TLineSeries(Chart1.Series[2]).LinePen.Width  := 2;
        end;//4
        if (GetgrapheLigneMoyenne) then
        begin//4
          //0053ECF9
          
          FichierCdn.sub_004C40D4(lvar_10, buf, I);
          
          lvar_158 := sub_004B9E48 * StrToFloat(buf);
          
          FichierCdn.sub_004BED2C( lvar_10, I, buf);
          
          lvar_28 := lvar_158 / StrToFloat(buf);
          
          FichierCdn.sub_004BED04( lvar_10, buf, I);
          
          Chart1.Series[3].AddXY(I, lvar_28, buf, GetcouleurMoyenne);
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
  //0053EF88
  SendMessageA(GrilleElevesGrapheCarnetDeNotes.Handle, $403{1027}, TabControlGraphes.TabIndex + 1, 0);
end;//0


//0053EFBC
procedure TFeuilleClasse.PopupMenu1Popup(Sender:TObject);
begin//0
  //0053EFBC
  
  Grapheen3D1.Checked := Getgraphe3D;
  Grapheendgrad1.Checked := GetgrapheDegrade;
  Grapheendgrad1.Enabled :=GetgrapheEnCouleur;
  Grapheencouleur1.Checked := GetgrapheEnCouleur;
  Afficherlalgende1.Checked := GetgrapheLegende
  //AfficherligneElve1.Checked := GetgrapheLigneEleve;
  //AfficherligneMinimum1.Checked := GetgrapheLigneMin;
  //AfficherligneMaximum1.Checked := GetgrapheLigneMax;
  //AfficherligneMoyenne1.Checked := GetgrapheLigneMoyenne;
end;//0


//0053F064
procedure TFeuilleClasse.Grapheen3D1Click(Sender:TObject);
begin//0
  //0053F064
  Setgraphe3D(Getgraphe3D Xor true);
  SendMessageA(GrilleElevesGrapheCarnetDeNotes.Handle, $403{1027}, TabControlGraphes.TabIndex + 1 , 0);
end;//0


//0053F0A4
procedure TFeuilleClasse.Grapheendgrad1Click(Sender:TObject);
begin//0
  //0053F0A4
  SetgrapheDegrade(GetgrapheDegrade Xor true);
  SendMessageA(GrilleElevesGrapheCarnetDeNotes.Handle, $403{1027},TabControlGraphes.TabIndex + 1 , 0);
end;//0


//0053F0E4
procedure TFeuilleClasse.Grapheencouleur1Click(Sender:TObject);
begin//0
  //0053F0E4
  SetgrapheEnCouleur(GetgrapheEnCouleur Xor true);
  SendMessageA(GrilleElevesGrapheCarnetDeNotes.Handle, $403{1027},TabControlGraphes.TabIndex +1 , 0);
end;//0


//0053F124
procedure TFeuilleClasse.Afficherlalgende1Click(Sender:TObject);
begin//0
  //0053F124
  SetgrapheLegende(GetgrapheLegende Xor true);
  SendMessageA(GrilleElevesGrapheCarnetDeNotes.Handle, $403{1027},TabControlGraphes.TabIndex +1, 0);
end;//0


//0053F164
procedure TFeuilleClasse.Formatbitmapbmp1Click(Sender:TObject);
begin//0
  //0053F164
  Chart1.CopyToClipboardBitmap;
end;//0


//0053F170
procedure TFeuilleClasse.FormatMetafilewmf1Click(Sender:TObject);
begin//0
  //0053F170
  Chart1.CopyToClipboardMetafile(False);
end;//0


//0053F180
procedure TFeuilleClasse.Formatenhancedmetafileemf1Click(Sender:TObject);
begin//0
  //0053F180
  Chart1.CopyToClipboardMetafile(True);
end;//0

//0053F214
procedure TFeuilleClasse.Exporter2Click(Sender:TObject);
begin//0
  //0053F214

    //0053F22E
    SaveDialog1.FileName := '';
    SaveDialog1.Title := 'Exporter le graphe';
    SaveDialog1.Filter := 'Fichier Bitmap *.bmp|*.bmp|Fichier Metafile *.wmf|*.wmf|Fichier Enhanced Metafile *.emf|*.emf';
    if (SaveDialog1.Execute) then
    begin//2
      //0053F271
      case SaveDialog1.FilterIndex of
        1:
        begin//4
          //0053F287
          Chart1.SaveToBitmapFile(SaveDialog1.FileName);
        end;//4
        2:
        begin//4
          //0053F2A5
          Chart1.SaveToMetafile(SaveDialog1.FileName);
        end;//4
        3:
        begin//4
          //0053F2C3
          Chart1.SaveToMetafileEnh(SaveDialog1.FileName);
        end;//4
      end;//3
    end;//2

end;//0


//0053F38C
procedure TFeuilleClasse.Imprimer2Click(Sender:TObject);
var
  buf:string;
begin//0
  //0053F38C

    //0053F3A2
  

    
    GrilleElevesGrapheCarnetDeNotes.sub_004F6080(buf);
    
    
    FormImprimerGraphe{gvar_00617E74} := TFormImprimerGraphe.Create(Self, Chart1, logo, buf);
    FormImprimerGraphe.ShowModal;
    FormImprimerGraphe.Destroy;

end;//0

//0053F418
procedure TFeuilleClasse.AfficherligneElve1Click(Sender:TObject);
begin//0
  //0053F418
  SetgrapheLigneEleve(GetgrapheLigneEleve Xor true);
  SendMessageA(GrilleElevesGrapheCarnetDeNotes.Handle, $403{1027},TabControlGraphes.TabIndex + 1 , 0);
end;//0

//0053F458
procedure TFeuilleClasse.AfficherligneMinimum1Click(Sender:TObject);
begin//0
  //0053F458
  SetgrapheLigneMin(GetgrapheLigneMin Xor true);
  SendMessageA(GrilleElevesGrapheCarnetDeNotes.Handle, $403{1027},TabControlGraphes.TabIndex + 1 , 0);
end;//0

//0053F498
procedure TFeuilleClasse.AfficherligneMaximum1Click(Sender:TObject);
begin//0
  //0053F498
  SetgrapheLigneMax(GetgrapheLigneMax Xor true);
  SendMessageA(GrilleElevesGrapheCarnetDeNotes.Handle, $403{1027},TabControlGraphes.TabIndex + 1 , 0);
end;//0

//0053FileName1
procedure TFeuilleClasse.AfficherligneMoyenne1Click(Sender:TObject);
begin//0
  //0053F4D8
  SetgrapheLigneMoyenne(GetgrapheLigneMoyenne Xor true);
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

  if (FichierCdn.sub_004BEA58 = 0) Or (FichierCdn.sub_004BEAD0(f4FC) <= 0) then//0053F5BE
    Apprciationsdesbulletins1.Enabled := false
  else//0053F5C2
    Apprciationsdesbulletins1.Enabled := true;
  
  //0053F5D6
  if (FichierCdn.sub_004BEA58 = 0) Or (FichierCdn.sub_004BEAD0(f4FC) <= 0) then//0053F5EB
    Pointsenplusouenmoins1.Enabled := false
  else//0053F5EF
    Pointsenplusouenmoins1.Enabled := true;
  
  //0053F603
  if (FichierCdn.sub_004BEA58 = 0) Or (FichierCdn.sub_004BEAD0(f4FC) <= 0) then//0053F618
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
    for I := 1 to FichierCdn.sub_004BE9E0 do //0053F647
    begin//2
      //0053F64C
      FichierCdn.sub_004C4784(I, true);
    end;//2
  
  FichierCdn.sub_004C63C8;
  case TabSet1.TabIndex of
    0:
    begin//2
      //0053F68E
      SendMessageA(GrilleNotesCarnetDeNotes.Handle, $403{1027},TabControlGrillesNotes.TabIndex + 1, 0);
      SendMessageA(GrilleMoyennesCarnetDeNotes.Handle, $408{1032},TabControlGrillesNotes.TabIndex + 1 , 0);
    end;//2
    1://0053F6EC
      SendMessageA(GrilleBilanCarnetDeNotes.Handle, $403{1027}, TabControlGrillesBilan.TabIndex + 1, 0);
    2://0053F71C
      SendMessageA(GrilleElevesGrapheCarnetDeNotes.Handle, $403{1027}, TabControlGraphes.TabIndex + 1, 0);
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
  //0053F794
 
  FormCollerAppreciations{gvar_00617E7C} := TFormCollerAppreciations.Create(Self, logo, FichierCdn);
 
  FormCollerAppreciations.ShowModal;
  FormCollerAppreciations.Destroy;
end;//0

//0053F7DC
procedure TFeuilleClasse.sub_0053F7DC;
var
  I:integer;
begin//0
  //0053F7DC

    for I := 1 to FichierCdn.sub_004BE9E0 do//0053F7F4
    begin//2
      //0053F7F9
      FichierCdn.sub_004C4784(I, true);
    end;//2
  
  FichierCdn.sub_004C63C8;
end;//0

//0053F820
procedure TFeuilleClasse.FormShow(Sender:TObject);
begin//0
  //0053F820
  Enregistrersous1.Visible := FichierCdn.sub_004C6680;
  Modifier1.Visible := FichierCdn.sub_004C6680;
  Importer1.Visible := FichierCdn.sub_004C6680;
  CollerdepuislePressePapiers2.Visible := FichierCdn.sub_004C6680;
  N11.Visible := FichierCdn.sub_004C6680;
  N6.Visible := FichierCdn.sub_004C6680;
  Ajouterunlve1.Visible := FichierCdn.sub_004C6680;
  Supprimerunlve1.Visible := FichierCdn.sub_004C6680;
  Modifierlenomdunlve1.Visible := FichierCdn.sub_004C6680;
  Crerlesdisquettespourlescollgues1.Enabled := False;
  Crerlesdisquettespourlescollgues1.Visible := False;
end;//0

//0053F8FC
procedure TFeuilleClasse.sub_0053F8FC(var a:string);
begin//0
  //0053F8FC
  FichierCdn.sub_004BE92C(a);
end;//0


//0053F914
procedure TFeuilleClasse.Pointsenplusouenmoins1Click(Sender:TObject);
begin//0
  //0053F914
  FormPointsPlusMoins{gvar_00617DC4} := TFormPointsPlusMoins.Create(Self, FichierCdn, Logo);
  FormPointsPlusMoins.ShowModal;
  FormPointsPlusMoins.Destroy;
  FichierCdn.sub_004C63C8;
  SendMessageA(GrilleMoyennesCarnetDeNotes.Handle, $408{1032}, f4FC, 0);
  SendMessageA(GrilleBilanCarnetDeNotes.Handle, $403{1027},TabControlGrillesBilan.TabIndex + 1 , 0);
end;//0

//0053F9B4
procedure TFeuilleClasse.Bilanlve1Click(Sender:TObject);
begin//0
  //0053F9B4

   {gvar_00617E84}FormBilanEleve := TFormBilanEleve.Create(Self, logo,FichierCdn);
 
  FormBilanEleve.ShowModal;

  FormBilanEleve.Destroy;
end;//0

//0053F9FC
procedure TFeuilleClasse.sub_0053F9FC(var Msg:TMsg);
begin//0
  //0053F9FC
  SendMessageA(GrilleElevesCarnetDeNotes.Handle, 1028, Msg.message, Msg.wParam);
  SendMessageA(GrilleElevesGrapheCarnetDeNotes.Handle, 1028, Msg.message, Msg.wParam);
  SendMessageA(GrilleBilanCarnetDeNotes.Handle, 1028, Msg.message, Msg.wParam);
end;//0


//0053FA60
procedure TFeuilleClasse.sub_0053FA60(var Msg:TMsg);
begin//0
  //0053FA60
  FichierCdn.sub_004C63C8;
  SendMessageA(GrilleBilanCarnetDeNotes.Handle, 1027, TabControlGrillesBilan.TabIndex +1, Msg.wParam);
end;//0


//0053FAA4
procedure TFeuilleClasse.CarnetdeNotes1Click(Sender:TObject);
var
  FichierCdn2 : TFichierCdn;
begin//0
  //0053FAA4

    //0053FAC1

    if (FichierCdn.sub_004C4790 < gvar_00617903) then
    begin//2
      //0053FADA
      FormCarnetDeNotes2.OpenDialog1.Title := 'Informations sur la série de notes à importer';
      FormCarnetDeNotes2.OpenDialog1.Filter := 'Fichier Carnet de Notes *.cdn|*.cdn';
      if (FormCarnetDeNotes2.OpenDialog1.Execute) then
      begin//3
        //0053FB28
        FichierCdn2 := TFichierCdn.Create(FormCarnetDeNotes2.OpenDialog1.FileName{, 1, 0, 0});
        if (FichierCdn2.f948) then
        begin//4
          //0053FB61
          
          if (sub_00497B4C(FichierCdn2.sub_004BEAC4, FichierCdn.sub_004BEAC4)) then
          begin//5
            //0053FB82
            
            FormImporterSeries{gvar_00617D94} := TFormImporterSeries.Create(Self, FichierCdn,FichierCdn2 , logo, 0);
            FormImporterSeries.ShowModal;
            FichierCdn2.sub_004C63C8;
            SendMessageA(GrilleNotesCarnetDeNotes.Handle, $403{1027}, f4FC, 0);
            SendMessageA(GrilleMoyennesCarnetDeNotes.Handle, $408{1032}, f4FC, 0);
            SendMessageA(GrilleBilanCarnetDeNotes.Handle, $403{1027}, TabControlGrillesBilan.TabIndex + 1, 0);
            SendMessageA(Handle, $40E{1038}, 0, 0);
            FormImporterSeries.Destroy;
          end//5
          else
          begin//5
            //0053FC55
          
            Application.MessageBox('Carnet de Notes version Personnelle', 'Les classes n''ont pas la même liste d''élèves. Impossible d''importer depuis ce fichier.', $10{16});
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
    if (sub_00498A40 = false) then
    begin//2
      //0053FCDA
      Application.MessageBox('Impossible d''importer une série de notes. Le nombre de séries de notes est limité à 3 pour la version non enregistrée.','Carnet de Notes version Personnelle' , $40{64});
    end
	else 
    Application.MessageBox(PChar('Impossible d''importer une série de notes. Le nombre de séries de notes est limité à ' + IntToStr({gvar_00617903}255) + '.'),'Carnet de Notes version Personnelle' , $40{64});

end;

//0053FFBC
procedure TFeuilleClasse.Texte1Click(Sender:TObject);
var
  I,lvar_5:integer;
  StringList1:TStringList;
begin//0
  //0053FFBC
    //00540016

    if (FichierCdn.sub_004C4790 < gvar_00617903) then
    begin//2
      //0054002F
      FormCarnetDeNotes2.OpenDialog1.Title := 'Informations sur la série de notes à importer';
      FormCarnetDeNotes2.OpenDialog1.Filter := 'Tous les fichiers *.*|*.*';
      if (FormCarnetDeNotes2.OpenDialog1.Execute) then
      begin//3
        //0054007D
        
        FormNouvelleSerieDeNotes{gvar_00617D74} := TFormNouvelleSerieDeNotes.Create(Self, FichierCdn, logo, 'Informations sur la série de notes à importer');
        
        FormNouvelleSerieDeNotes.TabControl1.TabIndex := f4FC - 1;

        FormNouvelleSerieDeNotes.ShowModal;

        if (FormNouvelleSerieDeNotes.ModalResult = 1) then
        begin//4
          //005400ED

          FichierCdn.sub_004BF7F0(FormNouvelleSerieDeNotes.f334, FormNouvelleSerieDeNotes.ComboBox1.Text, 
								  FormNouvelleSerieDeNotes.ComboBox5.Text, FormNouvelleSerieDeNotes.ComboBox2.Text, 
								  FormNouvelleSerieDeNotes.f338, 
								  DateToStr(FormNouvelleSerieDeNotes.DateTimePicker1.Date), 
								  FormNouvelleSerieDeNotes.Edit3.Text, 
								  FormNouvelleSerieDeNotes.ComboBoxTypesDeNotes.Text,''{ 
								  FormNouvelleSerieDeNotes.RadioGroupEcritOuOral.ItemIndex = 1});
          
          StringList1 := TStringList.Create;;
          StringList1.add(FormCarnetDeNotes2.OpenDialog1.FileName);
          
          
          
          lvar_5 := FichierCdn.sub_004BEAD0(FormNouvelleSerieDeNotes.f334);
            for I := 1 to FichierCdn.sub_004BEA58 do //005402F0
            begin//6
              //005402F5

              if (StringList1.count >= I) then
              begin//7
                //00540305
                
                FichierCdn.sub_004C1074(FormNouvelleSerieDeNotes.f334, lvar_5, I, StringList1[I - 1]);
              end//7
              else
              begin//7
                //00540369
                FichierCdn.sub_004C1074(FormNouvelleSerieDeNotes.f334, lvar_5, I, '');
              end;//7
            
          end;//6
          
          StringList1.Free;
         
          f4FC := FormNouvelleSerieDeNotes.f334;
          
          FichierCdn.sub_004C63C8;
          TabSet1.TabIndex := 0;
          SendMessageA(GrilleNotesCarnetDeNotes.Handle, $403{1027}, f4FC, 0);
          SendMessageA(GrilleMoyennesCarnetDeNotes.Handle, $408{1032}, f4FC, 0);          
          SendMessageA(GrilleBilanCarnetDeNotes.Handle, $403{1027},TabControlGrillesBilan.TabIndex + 1 , 0);
          SendMessageA(Handle, $40E{1038}, 0, 0);
          TabControlGrillesNotes.TabIndex := f4FC - 1;

          SendMessageA(Handle, $401{1025}, 1, FichierCdn.sub_004BEAD0(f4FC) - 1);
          GrilleNotesCarnetDeNotes.TopRow := 1;
          GrilleNotesCarnetDeNotes.LeftCol := 1;
          GrilleNotesCarnetDeNotes.LeftCol := FichierCdn.sub_004BEAD0(f4FC) - 1;
          GrilleNotesCarnetDeNotes.SetFocus;
          keybd_event($26{38}, 0, 0, 0);
          keybd_event($26{38}, 0, 2, 0);
        end;//4
        FormNouvelleSerieDeNotes.Destroy;
        Exit;
      end;//3
    end;//2
    
    if (sub_00498A40 = false) then
    begin//2
      //00540530
      Application.MessageBox('Impossible d''importer une série de notes. Le nombre de séries de notes est limité à 3 pour la version non enregistrée.','Carnet de Notes version Personnelle' , $40{64});
      Exit;
    end;//2

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
  //00540780
    //005407A4
    FormCarnetDeNotes2.OpenDialog1.Title := 'Importer la liste des élèves';
    FormCarnetDeNotes2.OpenDialog1.Filter := 'Fichier Carnet de Notes *.cdn|*.cdn';
    if (FormCarnetDeNotes2.OpenDialog1.Execute) then
    begin//2
      //005407F2
      FichierCdn1 := TFichierCdn.Create(FormCarnetDeNotes2.OpenDialog1.FileName{, 1, 0, 0});
      if (FichierCdn1.f948) then
      begin//3
        if (FichierCdn1.sub_004BEA58 > 0) then//0054082F
        begin//4
          //0054083F
          StringList1 := TStringList.Create;  
            for I := 1 to FichierCdn1.sub_004BEA58 do//0054085E
            begin//6
              //00540863
              FichierCdn1.sub_004C8BB8(I, buf);
              StringList1.add(buf);
            end;//6
         
          StringList2 := TStringList.Create;
          
            for I := 1 to FichierCdn1.sub_004BEA58 do//005408BC
              //005408C1
              if (FichierCdn1.sub_004C8E50(I)) then//005408DC
                StringList2.add('R')
              else//005408EB
                StringList2.add('');
              

          

          FichierCdn1.sub_004BE8FC(buf);
          FormTypeImportation{gvar_00617DAC} := TFormTypeImportation.Create(Self, FichierCdn1.sub_004BEAC4, StringList1, StringList2, buf);
          
          FormTypeImportation.ShowModal;

          if (FormTypeImportation.ModalResult = 1) then
          begin//5
            //0054096A
            if (FormTypeImportation.RadioGroup1.ItemIndex = 0) then
            begin//6
              //00540980
              if (FichierCdn.sub_004BEA58 > 0) then
              begin//7
                //00540996
                for I := 1 to FichierCdn.sub_004BEA58 do
                begin//8
                  //00540996
                  FichierCdn.sub_004C1158(1);
                end;//8
              end;//7
            end;//6
              for I := 1 to FormTypeImportation.CheckListBox1.Items.Count do //005409CB
              begin//7
                //005409D0
                if (FormTypeImportation.CheckListBox1.Checked[I - 1] = False) then Continue;
                if (FichierCdn.sub_004BEA58 < $32{50}) then
                begin//8
                  //00540A0C
                 
                  //call(lvar_124 = 'R');
                  //n'est pas terminé
                  FichierCdn.sub_004C14C8(FormTypeImportation.f2F0[I - 1], FormTypeImportation.f2F4[I - 1], '1' , (FormTypeImportation.f2F8[I - 1] = 'R'));
                end//8
                else
                begin//8
                  //00540ADE
                  Application.MessageBox(PChar('Vous avez atteint le nombre maximum d''élèves (' + IntToStr($32{50}) + ') autorisé dans Carnet de Notes.' + #10 + #13 + #10 + #13 + 'L''importation est interrompue à "' + FormTypeImportation.CheckListBox1.Items[I - 1] + '".'), 'Carnet de Notes version Personnelle', $10{16});
                  Break;
                end;//8
              end;//7
            FormTypeImportation.Destroy;
            FichierCdn.sub_004C63C8;
            SendMessageA(GrilleElevesCarnetDeNotes.Handle, $404{1028}, 0, 0);
            SendMessageA(GrilleElevesGrapheCarnetDeNotes.Handle, $404{1028}, 0, 0);
            SendMessageA(GrilleNotesCarnetDeNotes.Handle, $403{1027}, f4FC, 0);
            SendMessageA(GrilleMoyennesCarnetDeNotes.Handle, $408{1032}, f4FC, 0);
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
  //00540ED4
    //00540EF7
    FormCarnetDeNotes2.OpenDialog1.Title := 'Importer la liste des élèves';
    FormCarnetDeNotes2.OpenDialog1.Filter := 'Tous les fichiers *.*|*.*';
    if (FormCarnetDeNotes2.OpenDialog1.Execute) then
    begin//2
      //00540F45
      lvar_C := TStringList.Create;
      lvar_8 := TStringList.Create;
	  lvar_8.LoadFromFile(FormCarnetDeNotes2.OpenDialog1.FileName);
        for I := 0 to lvar_8.count - 1 do //00540F9B
        begin//4
          //00540F9E
          if (Trim(lvar_8[I]) <> '') then 
		  begin
			  lvar_C.add(lvar_8[I]);
		  end;
        end;//4
      lvar_8.Destroy;
      lvar_10 := TStringList.Create;
        for I := 0 to lvar_C.count - 1 do//00540FFF
        begin//4
          //00540FFF
          lvar_10.add('');
        end;//4
      end;//3
      lvar_14 := TStringList.Create;
      
        for I := 0 to lvar_C.count - 1 do //00541029
        begin//4
          //00541029
          lvar_14.add('');
        end;//4

      //push lvar_C
      //push lvar_10
      //push lvar_14
      //lvar_28 := FormCarnetDeNotes2.OpenDialog1.FileName;
      
      FormTypeImportation{gvar_00617DAC} := TFormTypeImportation.Create(Self, lvar_14, lvar_10, lvar_C,FormCarnetDeNotes2.OpenDialog1.FileName);
      FormTypeImportation.ShowModal;
      if (FormTypeImportation.ModalResult = 1) then
      begin//3
        //00541095
        if (FormTypeImportation.RadioGroup1.ItemIndex = 0) then
        begin//4
          //005410AB
            for I := 1 to FichierCdn.sub_004BEA58 do //005410C1
              //005410C1
              FichierCdn.sub_004C1158(1);
            
        end;//4
          for I := 1 to FormTypeImportation.CheckListBox1.Items.Count do//005410F6
          begin//5
            //005410FB
           
            if (FormTypeImportation.CheckListBox1.Checked[I - 1] = False) then Continue;
            if (FichierCdn.sub_004BEA58 < 50) then
            begin//6
              //00541137
              (*EDX := I - 1;//EDX
              EAX := FormTypeImportation.f2F8;
              call(5510260);
              EAX := ( = 'R');
              //push EAX
              EDX := I - 1;//EDX
              EAX := FormTypeImportation.f2F4;
              call(= 'R');
              EDX := ;
               := ;
              //push EAX
              EDX := ESI;//ESI
              EDX := EDX - 1;//EDX
              EAX := gvar_00617DAC;
              EAX := gvar_00617DAC.f2F0;
              call();
              EDX := ;
              ECX := $FF{255};
               := ;
              f4D4.sub_004C14C8(lvar_230, {ECX}{0}, lvar_230{0}, {0});*)
            end//6
            else
            begin//6
              //00541203
              Application.MessageBox(PChar(FormTypeImportation.CheckListBox1.Items[I - 1] + IntToStr(50) + ') autorisé dans Carnet de Notes.' + #10 + #13 + #10 + #13 + 'L''importation est interrompue à "' + 'Carnet de Notes version Personnelle' + '".'), 'Carnet de Notes version Personnelle' , $10);
              Break;
            end;//6
          end;//5
        FormTypeImportation.Destroy;
        FichierCdn.sub_004C63C8;
        SendMessageA(GrilleElevesCarnetDeNotes.Handle, $404{1028}, 0, 0);
        SendMessageA(GrilleElevesGrapheCarnetDeNotes.Handle, $404{1028}, 0, 0);
        SendMessageA(GrilleNotesCarnetDeNotes.Handle, $403{1027}, f4FC, 0);
        SendMessageA(GrilleMoyennesCarnetDeNotes.Handle, $408{1032}, f4FC, 0);
        SendMessageA(GrilleBilanCarnetDeNotes.Handle, $403{1027},TabControlGrillesBilan.TabIndex + 1 , 0);
        SendMessageA(Handle, $406{1030}, 0, 0);
        SendMessageA(Handle, $40B{1035}, 0, 0);
      end;//3
      //005413AF
	  lvar_C.destroy;
      lvar_10.Free;
      lvar_14.Free;
end;//0

//0054155C
procedure TFeuilleClasse.FormClose(Sender:TObject; var Action:TCloseAction);
var
   buf:string;
   FileNamex : shortstring;
   k:integer;
begin//0
  //0054155C
    //00541597
    if (FichierCdn.sub_004C3954) then
    begin//2
      //005415A6

      FichierCdn.sub_004BE8FC(buf);

      if (MessageBoxA(Handle, PChar('Le fichier de la classe de "' + buf + '" a été modifié. Voulez vous le sauver avant de quitter ?'), 'Carnet de Notes version Personnelle', $24{36}) = 6) then
      begin//3
        //00541601
        Enregistrer1Click(Sender);
      end;//3
    end;//2
    sub_00539DA4(FileNamex);
    {ECX := ;
    ECX := ECX + 1;//ECX}
    if (FileNamex <> 'Nouvelle classe') then
    begin//2
      //0054162F
      sub_00539DA4(FileNamex);
      sub_004B901C(FileNamex);
      if (GetutiliserHistorique) then
      begin//3
        //00541661  
        //sub_004B94D8(MainMenuPrincipal, 0, ECX, Self,  Ouvrir1Click); //006159A0A1
        SendMessageA(f4D8, $410{1040}, 0, 0);
      end;//3
    end;//2
    if (FormCarnetDeNotes2.MDIChildCount - 1 <= 0) then
    begin//2
      //00541693
      FormCarnetDeNotes2.OngletsClasses.Tabs.Clear;
    end//2
    else
    begin//2
      //005416A8
      sub_00539DA4(FileNamex);
	  k:= FormCarnetDeNotes2.TabControl2.Tabs.IndexOf(FileNamex);
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
  //00541888
    //0054189F
    StringList := TStringList.Create;
    StringList.Text := Clipboard.AsText;
    FichierCdn.sub_004BF544(StringList);
    FichierCdn.sub_004C63C8;
    SendMessageA(GrilleElevesCarnetDeNotes.Handle, $404{1028}, 0, 0);
    SendMessageA(GrilleElevesGrapheCarnetDeNotes.Handle, $404{1028}, 0, 0);
    SendMessageA(Handle, $406{1030}, 0, 0);
    SendMessageA(Handle, $40B{1035}, 0, 0);
    StringList.Destroy;
end;//0

//00541968
procedure TFeuilleClasse.Clnerlefichier1Click(Sender:TObject);
var
  lvar_4 : TStringList;
  I:integer;
begin//0
  //00541968

    //00541986

    FormClonerFichier{gvar_00617E9C} := TFormClonerFichier.Create(Self, Logo, FichierCdn);
    
    FormClonerFichier.ShowModal;

    if (FormClonerFichier.sub_00538384) then
    begin//2
      //005419C9      
      lvar_4 := FormClonerFichier.sub_00538394;

        for I := 0 to lvar_4.count - 1 do //005419F0 capacity
        begin//4
          //005419F3
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
      if (FichierCdn2.f948) then
      begin//3
        //00541AEA
        FormImporterSeries{gvar_00617D94 }:= TFormImporterSeries.Create(Self,FichierCdn,FichierCdn2,logo, 1);
        FormImporterSeries.ShowModal;
        if (FormImporterSeries.ModalResult = 1) then
        begin//4
          //00541B34
          FichierCdn.sub_004C63C8;
          SendMessageA(GrilleNotesCarnetDeNotes.Handle, $403{1027}, f4FC, 0);
          SendMessageA(GrilleMoyennesCarnetDeNotes.Handle, $408{1032}, f4FC, 0);
          SendMessageA(GrilleBilanCarnetDeNotes.Handle, $403{1027},TabControlGrillesBilan.TabIndex + 1 , 0);
          SendMessageA(Handle, $40E{1038}, 0, 0);
        end;//4
        FormImporterSeries.Destroy;
      end//3
      else
      begin//3
        //00541BD5
        Application.MessageBox(PChar('Le fichier "' + ExtractFileName(FormCarnetDeNotes2.OpenDialog1.FileName) + '" n''est pas un fichier Carnet de Notes valide. Impossible de copier depuis ce fichier.'), 'Carnet de Notes version Personnelle', $10{16});
      end;//3
      FichierCdn2.Destroy;
	  
    end;//2

end;//0

end.