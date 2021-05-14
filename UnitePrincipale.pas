//=======================================
//  Crée par Houidef Aek
//  Decompiled by HOUIDEF AEK le : mercredi 7 mars 2018     01:34:51
//=======================================
unit UnitePrincipale;
interface      
uses
Forms, Windows,  SysUtils, Classes, Menus, Dialogs, ExtCtrls, Controls, ComCtrls, frstatus, uTiler,
ShellAPI,URegistry,Unit111,UEnregistrement,_FormAProposDe, _FormEnregistrement,_FormRappelSauvegarde,
_FormCreerBulletins,_FormFusionner,_FormPatientez,_Unit146,_FormNouvelleVersionDisponible,UFichierCdn;
type
  TFormCarnetDeNotes2 = class(TForm)
  published
    MainMenuPrincipal:TMainMenu;//f2D0
    Classe1:TMenuItem;//f2D4
    Ouvrir1:TMenuItem;//f2D8
    Nouvelle1:TMenuItem;//f2DC
    N1:TMenuItem;//f2E0
    Quitter1:TMenuItem;//f2E4
    OpenDialog1:TOpenDialog;//f2E8
    Options1:TMenuItem;//f2EC
    N2:TMenuItem;//f2F0
    Fentres1:TMenuItem;//f2F4
    Toutfermer1:TMenuItem;//f2F8
    Mosaqueverticale1:TMenuItem;//f2FC
    Mosaquehorizontale1:TMenuItem;//f300
    Cascade1:TMenuItem;//f304
    Rorganiserlesicnes1:TMenuItem;//f308
    Toutrduire1:TMenuItem;//f30C
    N3:TMenuItem;//f310
    Timer1:TTimer;//f314
    Aide1:TMenuItem;//f318
    Aproposde1:TMenuItem;//f31C
    Logo:TImage;//f320
    ImageListeGlyphsBoutons:TImageList;//f324
    Conseilsdedmarrage1:TMenuItem;//f328
    AidedeCarnetdeNotes1:TMenuItem;//f32C
    N4:TMenuItem;//f330
    Outils1:TMenuItem;//f334
    Fusionnerplusieursfichiers1:TMenuItem;//f338
    N6:TMenuItem;//f33C
    Rcuprerunfichierbak1:TMenuItem;//f340
    SaveDialog1:TSaveDialog;//f344
    Sauvegardervosfichiers1:TMenuItem;//f348
    TabControl2:TTabControl;//f34C
    Enregistrement1:TMenuItem;//f350
    N7:TMenuItem;//f354
    Crerlesbulletinsdeslves1:TMenuItem;//f358
    N8:TMenuItem;//f35C
    Calculatrice1:TMenuItem;//f360
    Fichierlisezmoi1:TMenuItem;//f364
    Formulairedenregistrement1:TMenuItem;//f368
    SaveDialog2:TSaveDialog;//f36C
    OpenDialog2:TOpenDialog;//f370
    BarreDeStatut:TFriendlyStatusBar;//f374
    BarreDeProgression:TProgressBar;//f378
    OngletsClasses:TTabControl;//f37C
    ControlBar1:TControlBar;//f380
    ToolBarreDeBoutons:TToolBar;//f384
    ToolButtonNouvelleClasse:TToolButton;//f388
    ToolButtonOuvrirClasse:TToolButton;//f38C
    ToolButtonSeparateur1:TToolButton;//f390
    ToolButtonImprimer:TToolButton;//f394
    ToolButtonSauver:TToolButton;//f398
    ToolButtonSeparateur2:TToolButton;//f39C
    ToolButtonConfigurer:TToolButton;//f3A0
    ToolButtonSeparateur3:TToolButton;//f3A4
    ToolButtonQuitter:TToolButton;//f3A8
    Tiler1:TTiler;//f3AC
    procedure Enregistrement1Click(Sender:TObject);//0060D3CC
    procedure Crerlesbulletinsdeslves1Click(Sender:TObject);//0060D404
    procedure Calculatrice1Click(Sender:TObject);//0060D438
    procedure OngletsClassesChange(Sender: TObject);//0060D2D8
    procedure Fusionnerplusieursfichiers1Click(Sender:TObject);//0060CBA0
    procedure Rcuprerunfichierbak1Click(Sender:TObject);//0060CC78
    procedure Sauvegardervosfichiers1Click(Sender:TObject);//0060D008
    procedure Formulairedenregistrement1Click(Sender:TObject);//0060D580
    procedure FormShow(Sender:TObject);//0060D628
    procedure ouvrirFichier(Sender:TObject);//0060D62C //modifier
    procedure Fichierlisezmoi1Click(Sender:TObject);//0060D4D8
    procedure ToolButtonSauverClick(Sender:TObject);//0060D478
    procedure ToolButtonImprimerClick(Sender:TObject);//0060D490
    procedure ToolButton9Click(Sender:TObject);//0060D4A8   //modifier
    procedure Mosaquehorizontale1Click(Sender:TObject);//0060C188
    procedure Toutfermer1Click(Sender:TObject);//0060C12C
    procedure Cascade1Click(Sender:TObject);//0060C1A8
    procedure Mosaqueverticale1Click(Sender:TObject);//0060C198
    procedure Ouvrir1Click(Sender:TObject);//0060B9EC
    procedure FormCreate(Sender:TObject);//0060BD00
    procedure Options1Click(Sender:TObject);//0060BFC0
    procedure Quitter1Click(Sender:TObject);//0060B818
    procedure Rorganiserlesicnes1Click(Sender:TObject);//0060C1B0
    procedure FormCloseQuery(Sender:TObject; var CanClose:Boolean);//0060C9CC
    procedure Nouvelle1Click(Sender:TObject);//0060C9A8
    procedure AidedeCarnetdeNotes1Click(Sender:TObject);//0060CB50
    procedure Conseilsdedmarrage1Click(Sender:TObject);//0060CB10
    procedure Timer1Timer(Sender:TObject);//0060C28C
    procedure Fentres1Click(Sender:TObject);//0060C1FC
    procedure Toutrduire1Click(Sender:TObject);//0060C1B8
    procedure Aproposde1Click(Sender:TObject);//0060C968
  public
    f3B0:byte;//f3B0
    procedure sub_0060CABC; dynamic;//0060CABC
    procedure sub_0060CC64; dynamic;//0060CC64
    procedure sub_0060D048; dynamic;//0060D048
    function sub_0060B820(FileName:TFileName):Boolean;//0060B820
    procedure sub_0060B904(s:String);//0060B904
  end;
var
   FormCarnetDeNotes2:TFormCarnetDeNotes2;
implementation
	uses _FormConseilsDemarrage,_FormOptions,UniteFeuilleClasse;
{$R *.DFM}

//0060B818
procedure TFormCarnetDeNotes2.Quitter1Click(Sender:TObject);
begin
 //0060B818
 Close;
end;
//0060B820
function TFormCarnetDeNotes2.sub_0060B820(FileName:TFileName):Boolean;
var
  I:integer;  BFileName:ShortString;
begin//0
  //0060B820
  Result := False;
    //0060B855
	for I:=0 to MDIChildCount - 1 do 
    begin//0060B86F
      TFeuilleClasse(MDIChildren[I]).sub_00539DA4(BFileName);
      if (LowerCase( BFileName) = LowerCase(FileName)) then result := true; //0060B8BC
    end;
 
end;
//0060B904
procedure TFormCarnetDeNotes2.sub_0060B904(s:string);
var
  FileName:shortstring;
  I:integer;
begin//0
  //0060B904
    //0060B938
	  for I:=0 to MDIChildCount do 
	  begin
      //0060B950
        TFeuilleClasse(MDIChildren[I]).sub_00539DA4(FileName);
		if (LowerCase(s) = LowerCase(FileName)) then//0060B99D
				MDIChildren[I].BringToFront;

      end;

end;//0

//0060B9EC
procedure TFormCarnetDeNotes2.Ouvrir1Click(Sender:TObject);
var I:integer;
begin
 //0060B9EC
 OpenDialog1.Title := 'Ouvrir un fichier Carnet de Notes';
 OpenDialog1.Filter := 'Fichier Carnet de Notes *.cdn|*.cdn';
 if (Sender is TMenuItem) then 
 begin
	if(TMenuItem(Sender).caption = '&Ouvrir ...' )then 
    begin//0060BA5D
		if (sub_0060B820({Sender}'') = false) then //0060BA6B
		  FeuilleClasse := TFeuilleClasse.Create(Self, Handle, Logo, {Sender}'')
		else 
		  sub_0060B904({Sender}'');
		Exit;
    end
    else if (OpenDialog1.Execute) then
    begin//0060BAB3
        if (OpenDialog1.Files.Count - 1 >= 0) then
        begin //0060BAD3
          for I := 0 to OpenDialog1.Files.Count do
          begin//0060BAD9
            if (sub_0060B820(OpenDialog1.Files[I]) = false) then//0060BAFA
              FeuilleClasse := TFeuilleClasse.Create(Self, Handle, Logo, OpenDialog1.Files[I])
            else //0060BB30
              sub_0060B904(OpenDialog1.Files[I]);
            OpenDialog1.InitialDir := ExtractFilePath(OpenDialog1.Files[I]);
          end;//5
          Exit;
        end;//4
    end;//3
 end
 else 
 if (OpenDialog1.Execute ) then
 begin//0060BB9B
    if (OpenDialog1.Files.Count >= 1) then
    begin//0060BBBB
        for I := 0 to OpenDialog1.Files.Count - 1 do
        begin//0060BBC1
          if (sub_0060B820(OpenDialog1.Files[I]) = false) then //0060BBE2
            FeuilleClasse := TFeuilleClasse.Create(Self, Handle ,logo , OpenDialog1.Files[I])
          else//0060BC18
            sub_0060B904(OpenDialog1.Files[I]);
          OpenDialog1.InitialDir := ExtractFilePath(OpenDialog1.Files[I]);
        end;//4
    end;
end;
end;
//0060BD00
procedure TFormCarnetDeNotes2.FormCreate(Sender:TObject);
//var
begin//0
  //0060BD00
    if (FileExists(ExtractFilePath(ParamStr(0)) + 'logo.bmp') ) then
    begin//2
      //0060BD77
      try
        //0060BD85
        Logo.Picture.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'logo.bmp');
      except//0060BDCD
      end;//3
    end;//2
    f3B0 := 1;
    SetValueRegChemin(ExtractFilePath(ParamStr(0)));
    if (GettailleMaximumAuDemarrage) then
    begin//0060BE24
      WindowState := wsMaximized; //2
    end;//2
    //_AddToMainMenu(MainMenuPrincipal, 0, 255, Self, Ouvrir1Click);
    ToolBarreDeBoutons.Visible := sub_004BB55C;
    ToolButtonSauver.Enabled := False;
    ToolButtonImprimer.Enabled := False;
    Caption := 'Carnet de Notes version Personnelle 2.9a';
    if (sub_00498A40 = false) then
    begin//2
      //0060BE92
      Caption := Caption + ' - Version non enregistrée';
    end;//2
    OpenDialog1.InitialDir := ExtractFilePath(ParamStr(0));
    Timer1.Enabled := True;
end;//0
//0060BFC0
procedure TFormCarnetDeNotes2.Options1Click(Sender:TObject);
var 
  FormOptions:TFormOptions; 
  I:integer;
begin
  //0060BFC0
  FormOptions := TFormOptions.Create(Self, Logo);
  FormOptions.ShowModal;
  FormOptions.Destroy;
  ToolBarreDeBoutons.Visible:=sub_004BB55C;
  //AddToMainMenuWithDelete(MainMenuPrincipal, 0, ?, Self);
  for I:= 1 to MDIChildCount do begin
      //0060C03F
      //AddToMainMenuWithDelete(MDIChildren[I-1], 0, ?, Self);
      SendMessageA(MDIChildren[I-1].Handle, 1045, 0, 0);
      SendMessageA(MDIChildren[I-1].Handle, 1032, 0, 0);
      SendMessageA(MDIChildren[I-1].Handle, 1029, 0, 0);
      SendMessageA(MDIChildren[I-1].Handle, 1035, 0, 0);
      SendMessageA(MDIChildren[I-1].Handle, 1028, 0, 0);
      SendMessageA(MDIChildren[I-1].Handle, 1027, 0, 0);
  end;//1
  SendMessageA(Handle, 1041, 0, 0);
end;
//0060C12C
procedure TFormCarnetDeNotes2.Toutfermer1Click(Sender:TObject);
var 
  I:integer;
begin//0
  //0060C12C
    for I:=0 to MDIChildCount - 1 do //0060C155
      MDIChildren[I].Close;
      
  ToolButtonSauver.Enabled := False;
  ToolButtonImprimer.Enabled := False;
end;//0

//0060C188
procedure TFormCarnetDeNotes2.Mosaquehorizontale1Click(Sender:TObject);
begin
 TileMode:=tbHorizontal;
 Tile;
end;
//0060C198
procedure TFormCarnetDeNotes2.Mosaqueverticale1Click(Sender:TObject);
begin
 TileMode:= tbVertical;
 Tile;
end;
//0060C1A8
procedure TFormCarnetDeNotes2.Cascade1Click(Sender:TObject);
begin
 //0060C1A8
 Cascade;
end;
//0060C1B0
procedure TFormCarnetDeNotes2.Rorganiserlesicnes1Click(Sender:TObject);
begin
 //0060C1B0
 ArrangeIcons;
end;
//0060C1B8
procedure TFormCarnetDeNotes2.Toutrduire1Click(Sender:TObject);
var
 I:integer;
begin
  //0060C1B8
  for I:=1 to MDIChildCount do 
    MDIChildren[I - 1].WindowState := wsMinimized;
 
end;
//0060C1FC
procedure TFormCarnetDeNotes2.Fentres1Click(Sender:TObject);
begin
  //0060C1FC
  Mosaqueverticale1.Enabled := (MDIChildCount <> 0);
  Mosaquehorizontale1.Enabled := (MDIChildCount <> 0);
  Cascade1.Enabled := (MDIChildCount <> 0);
  Rorganiserlesicnes1.Enabled := (MDIChildCount <> 0);
  Toutrduire1.Enabled :=(MDIChildCount <> 0);
  Toutfermer1.Enabled := (MDIChildCount <> 0);
end;
//0060C28C
procedure TFormCarnetDeNotes2.Timer1Timer(Sender: TObject);
var
  I,k:integer;
  buf,buf0,buf1,buf2,lvar_14:string;
  searchResult : TSearchRec;
  lvar_4: TStringlist;

begin
  //0060C28C
  //0060C28C
  //EDX := TSearchRec;
    //0060C2C2
    if (f3B0 <> 0) then
    begin//2
      //0060C2CF
      f3B0 := 0;
      Timer1.Interval := 1000;
      if (ParamCount <> 0) then
      begin//3
        //0060C2F3
          for I := 1 to ParamCount do  //0060C300
          begin//5
            //0060C308
            if (FileExists(ParamStr(I))) then 
			begin
				buf :=GetCurrentDir;//GetCurrentDirectoryA(260, buf);
				if (buf[Length(buf) - 1] = '\') then//0060C36A
				  buf0 := ''
				else//0060C374
				  buf0 := '\';
				 FindFirst(ParamStr(I), $3F{63}, searchResult);
				FindClose(searchResult);
				FeuilleClasse{EAX} := TFeuilleClasse.Create(Self, Handle, {buf2 + buf0 + searchResult.Name,} Logo, searchResult.Name);
			end;
          end;//5
      end//3
      else
      begin//3
        //0060C427
        sub_004BB60C;
        case ParamCount of
          1:
          begin//5
            //0060C43D
            lvar_4 := GetDerniersfichiers;
            FormPatientez{gvar_00617C64} := TFormPatientez.Create(Self);
            FormPatientez.ProgressBar1.Position := 0;
            FormPatientez.caption := 'Ouverture de vos fichiers ... patientez';
            FormPatientez.ProgressBar1.Max := lvar_4.count;
            FormPatientez.ProgressBar1.Min := 0;
            FormPatientez.ProgressBar1.Step := 1;
            if ( lvar_4.count <> 0) then//0060C4D3
              FormPatientez.Show;

              
              for I := 0 to lvar_4.count-1 do //0060C4F5
              begin//7
                //0060C4FB
                FormPatientez.ProgressBar1.StepIt;
                Application.ProcessMessages;
                if (FileExists( lvar_4[I])) then 
                FeuilleClasse := TFeuilleClasse.Create(Self,Handle, {'', lvar_28C,} Logo,lvar_4[I]);
              end;//7
            
            if (FormPatientez.Showing) then//0060C582 
              FormPatientez.Hide;
            FormPatientez.Destroy;
          end;//5
          2:
          begin//5
            //0060C59E
            Ouvrir1Click(Sender);
          end;//5
        end;//4
      end;//3
      if (sub_00501C44) then
      begin//3
        //0060C5B0
        FormConseilsDemarrage := TFormConseilsDemarrage.Create(Self, Logo);
        FormConseilsDemarrage.ShowModal;
        FormConseilsDemarrage.Destroy;
      end;//3
      K := 0;
      if (sub_004BB668) then
      begin//3
        //0060C5F5
        if (sub_004BB728 = 0) then
        begin//0060C5FE
          if (sub_004BB75C >= 10) then
          begin//0060C60D
            sub_004BB790(1);
            K := 1;
          end//5
          else//0060C618
            sub_004BB790(sub_004BB75C + 1);
        end//4
        else//0060C635
          K := 1;
      end//3
      else//0060C639
        sub_004BB790(1);
      if (K <> 0) then
      begin//3
        //0060C644
        if (HistoriqueList(*(sub_00501C44, $3E8{1000})*).Count <> 0) then
        begin//4
          //0060C652
          FormRappelSauvegarde{gvar_006182F4} := TFormRappelSauvegarde.Create(Self,Logo);
          FormRappelSauvegarde.ShowModal;
          FormRappelSauvegarde.Destroy;
        end;//4
      end;//3
      if (sub_004BB6C8) then
      begin//0060C695
        if ({sub_004B6350('http://www.carnetdenotes.com/versioninfo.txt', lvar_14, lvar_14) <> 0}false) then
        begin//4
          //0060C6A9
          FormNouvelleVersionDisponible{gvar_006184D8} := TFormNouvelleVersionDisponible.Create(Self,lvar_14);
          FormNouvelleVersionDisponible.ShowModal;
          FormNouvelleVersionDisponible.Destroy;
        end;//4
      end;//3
    end;//2
    //EBX := BarreDeStatut;
    if (sub_004BB5E4) then//0060C6EF
      BarreDeStatut.Panels.Items[0].Text := FormatDateTime('dddd d mmmm yyyy', Date)
    else//0060C727
      BarreDeStatut.Panels.Items[0].Text := '';
    BarreDeStatut.Panels.Items[0].Width := BarreDeStatut.Canvas.TextWidth(BarreDeStatut.Panels.Items[0].Text) + 10;
    
    if (GetafficherHeure) then//0060C77D
      BarreDeStatut.Panels.Items[1].Text := FormatDateTime('h "h" nn "mn" ss "s"', Time)
    else//0060C7B8
      BarreDeStatut.Panels.Items[1].Text := '';
    BarreDeStatut.Panels.Items[1].Width := BarreDeStatut.Canvas.TextWidth(BarreDeStatut.Panels.Items[1].Text) + 10;
    try
      //0060C81C
      for I:=0 to MDIChildCount - 1 do//0060C834
        SendMessageA(MDIChildren [I].Handle, $40A{1034}, 0, 0);
        
    except//2
      //0060C866
    end;//2
end;
//0060C968
procedure TFormCarnetDeNotes2.Aproposde1Click(Sender:TObject);
begin//0
  //0060C968
  {gvar_006182DC} FormAProposDe:= TFormAProposDe.Create(Self,Logo);
  FormAProposDe.ShowModal;
  FormAProposDe.Destroy;
end;//0*)

//0060C9A8
procedure TFormCarnetDeNotes2.Nouvelle1Click(Sender:TObject);
begin//0060C9A8
  FeuilleClasse := TFeuilleClasse.Create(Self, Handle, Logo, '');
end;

//0060C9CC
procedure TFormCarnetDeNotes2.FormCloseQuery(Sender:TObject; var CanClose:Boolean);
var
  I:integer;
  FileName:ShortString;
begin//0
  //0060C9CC
    //0060C9F0

    Timer1.Enabled := False;
    StringList := TStringList.Create;
      for I:=0 to  MDIChildCount-1 do //0060CA23
      begin	  //0060CA23
        TFeuilleClasse(MDIChildren[I]).sub_00539DA4(FileName);
        StringList.Add(FileName);
      end;

    SetDerniersfichiers(StringList);
    StringList.Destroy;

       for I:=0 to  MDIChildCount-1 do //0060CA7D
        //0060CA7D
        MDIChildren[I].Close;

    CanClose := True;

end;//0

//0060CABC
procedure TFormCarnetDeNotes2.sub_0060CABC;
var
 I:integer;
begin//0
  //0060CABC

    for I:=0 to MDIChildCount-1 do //0060CAE5
    SendMessageA(MDIChildren[I].Handle, $40D{1037}, 0, 0);
   
end;//0

//0060CB10
procedure TFormCarnetDeNotes2.Conseilsdedmarrage1Click(Sender:TObject);
var
 FormConseilsDemarrage:TFormConseilsDemarrage;
begin
  //0060CB10
  FormConseilsDemarrage := TFormConseilsDemarrage.Create(Self,logo);
  FormConseilsDemarrage.ShowModal;
  FormConseilsDemarrage.Destroy;
end;
//0060CB50
procedure TFormCarnetDeNotes2.AidedeCarnetdeNotes1Click(Sender:TObject);
begin
 //0060CB50
 ShellExecuteA(GetDesktopWindow, 'open', 'http://www.carnetdenotes.com/html/aide.html', '', '', 1);
end;
//0060CBA0
procedure TFormCarnetDeNotes2.Fusionnerplusieursfichiers1Click(Sender:TObject);
begin//0
  //0060CBA0
    //0060CBBD
    FormFusionner{gvar_006182E4} := TFormFusionner.Create(Self, Logo);
    FormFusionner.ShowModal;
    if (FormFusionner.ModalResult = 1) then
    begin //0060CBE9
      
      if (FormFusionner.f36C <> '') then
      begin//0060CBF4
        if (FormFusionner.CheckBoxOuvrir.Checked ) then
        begin//0060CC08
         
          
          TFeuilleClasse.Create(Self, FormFusionner.Handle, Logo,FormFusionner.f36C);
        end;//4
      end;//3
    end;//2
    FormFusionner.Destroy;
 
end;//0

//0060CC64
procedure TFormCarnetDeNotes2.sub_0060CC64;
begin//0
  //0060CC64
  //AddToMainMenuWithDelete(MainMenuPrincipal, 0, Self, Ouvrir1Click);
end;//0

//0060CC78
procedure TFormCarnetDeNotes2.Rcuprerunfichierbak1Click(Sender:TObject);var FichierCdn : TFichierCdn;
begin//0
  //0060CC78
    //0060CC9A
    OpenDialog1.FileName := '';
    OpenDialog1.DefaultExt := 'bak';
    OpenDialog1.Filter := 'Fichiers de sauvegarde Carnet de Notes|*.bak';
    if (OpenDialog1.Execute) then
    begin//2
      //0060CCD1
      FichierCdn := TFichierCdn.Create(OpenDialog1.FileName{, 0, 0, 0});
      if (FichierCdn.f948) then
      begin//3
        //0060CCFF
        SaveDialog1.Title := 'Enregistrer le fichier de sauvegarde "' + ExtractFileName(OpenDialog1.FileName) + '"';
        if (SaveDialog1.Execute) then
        begin//4
          //0060CD47

          FichierCdn.sub_004C01F8(SaveDialog1.FileName, false, '', 0);
       
          Application.MessageBox(PChar('Le fichier "' + ExtractFileName(OpenDialog1.FileName) + '" a été récupéré avec succés.'),'Carnet de Notes version Personnelle' , $40{64});
        end;//4
      end//3
      else
      begin//3
        //0060CDB6
        Application.MessageBox(PChar('Le fichier "' + ExtractFileName(OpenDialog1.FileName) + '" n''est pas un fichier Carnet de Notes valide. Impossible de récupérer ce fichier.'), 
									'Carnet de Notes version Personnelle', $10{16});
      end;//3
      FichierCdn.Destroy;
    end;//2
    OpenDialog1.FileName := '';
    OpenDialog1.DefaultExt := 'cdn';
    OpenDialog1.Filter := 'Fichiers Carnet de Notes|*.cdn';
end;//0
//0060D008
procedure TFormCarnetDeNotes2.Sauvegardervosfichiers1Click(Sender:TObject);
begin//0
  //0060D008
  {gvar_006182F4} FormRappelSauvegarde:= TFormRappelSauvegarde.Create(Self,Logo);
  FormRappelSauvegarde.ShowModal;
  FormRappelSauvegarde.Destroy;
end;//0
//0060D048
procedure TFormCarnetDeNotes2.sub_0060D048;
var
  I:integer;
  Buf,buf0,buf1,lvar_4:string;
  filename:shortstring;
begin//0
  //0060D048
    //0060D07E
    OngletsClasses.Visible := sub_004BB84C;
    case sub_004BB7E8 of
      0:
      begin//3
        //0060D0A5
        OngletsClasses.TabPosition := tpTop; //0
        OngletsClasses.Style := tsFlatButtons; //2
      end;//3
      1:
      begin//3
        //0060D0B9
        OngletsClasses.TabPosition := tpTop;//0
        OngletsClasses.Style := tsButtons; //1
      end;//3
      2:
      begin//3
        //0060D0CD
        OngletsClasses.Style := tsTabs;//0
        OngletsClasses.TabPosition:= tpBottom; //1
      end;//3
    end;//2
    OngletsClasses.Tabs.Clear;
    TabControl2.Tabs.Clear;

      for I:=0 to MDIChildCount - 1 do //0060D117
	  begin
        //0060D117
        if (GetafficherMatiereOnglets) then
        begin//4
          //0060D120
          TFeuilleClasse(MDIChildren[I]).sub_0053DDF4(buf0);
          TFeuilleClasse(MDIChildren[I]).sub_0053F8FC(buf1);
          lvar_4 := buf0 + ' - ' + buf1;
        end//4
        else//0060D184
          TFeuilleClasse(MDIChildren[I]).sub_0053DDF4(buf);
        
        if (GetafficherNomEnseignantOnglets) then
        begin//4
          //0060D1AF
          TFeuilleClasse(MDIChildren[I]).sub_0053DE0C(buf);
          lvar_4 := lvar_4 + ' - ' + buf;
        end;//4
        OngletsClasses.Tabs.Add(lvar_4);
         TFeuilleClasse(MDIChildren[I]).sub_00539DA4(Filename);
        TabControl2.Tabs.Add(Filename);
        
     // end;
    end;//2
    OngletsClasses.TabIndex := MDIChildCount - 1;
    TabControl2.TabIndex := MDIChildCount - 1;

end;//0

//0060D2D8
procedure TFormCarnetDeNotes2.OngletsClassesChange(Sender: TObject);
var
  FileName:Shortstring;
  I:integer;
begin//0
  //0060D2D8

    //0060D2FF
    TabControl2.TabIndex := OngletsClasses.TabIndex;
    
	  for I:=0 to MDIChildCount-1 do //0060D32F
	  begin
		TFeuilleClasse(MDIChildren[I]).sub_00539DA4(FileName);
      if (FileName = TabControl2.Tabs[TabControl2.TabIndex]) then
      begin//3
        //0060D387
        MDIChildren[I].BringToFront;
        //Exit;
        //Break;
      end;//3
     end;

end;//0
//0060D3CC
procedure TFormCarnetDeNotes2.Enregistrement1Click(Sender:TObject);
begin//0
  //0060D3CC
  FormEnregistrement{gvar_006182EC} := TFormEnregistrement.Create(Self);
  FormEnregistrement.ShowModal;
  FormEnregistrement.Destroy;
end;//0

//0060D404
procedure TFormCarnetDeNotes2.Crerlesbulletinsdeslves1Click(Sender:TObject);
begin//0
  //0060D404
  Showmessage('FormCreerBulletins');
  FormCreerBulletins{gvar_006184D0} := TFormCreerBulletins.Create(self);
  FormCreerBulletins.ShowModal;
  FormCreerBulletins.Destroy;
end;//0

//0060D438
procedure TFormCarnetDeNotes2.Calculatrice1Click(Sender:TObject);
begin
 //0060D438
 ShellExecuteA(Handle, 'open', 'calc.exe', '', '', 1);
end;
//0060D478
procedure TFormCarnetDeNotes2.ToolButtonSauverClick(Sender:TObject);
begin//0
  //0060D478
  TFeuilleClasse(ActiveMDIChild).Enregistrer1Click(Sender);
end;//0

//0060D490
procedure TFormCarnetDeNotes2.ToolButtonImprimerClick(Sender:TObject);
begin//0
  //0060D490
  TFeuilleClasse(ActiveMDIChild).Imprimer1Click(Sender);
end;//0

//0060D4A8
procedure TFormCarnetDeNotes2.ToolButton9Click(Sender:TObject);
begin//0
  //0060D4A8
  if (MDIChildCount <> 0) then //0060D4B9r
   TFeuilleClasse(ActiveMDIChild).Options1Click(Sender)
  else 
      Options1Click(Sender);
end;//0

//0060D4D8
procedure TFormCarnetDeNotes2.Fichierlisezmoi1Click(Sender:TObject);
begin
 //0060D4D8
  ShellExecuteA(0,'open',PChar(ExtractfilePath(ParamStr(0))+'lisezmoi.txt'),'','',3); 
end;
//0060D580
procedure TFormCarnetDeNotes2.Formulairedenregistrement1Click(Sender:TObject);
begin
//0060D580
	ShellExecuteA(0,'open',PChar(ExtractfilePath(ParamStr(0))+'commander.txt'),'','',3); 
end;
//0060D628
procedure TFormCarnetDeNotes2.FormShow(Sender:TObject);
begin
 //0060D628
end;
//0060D62C
procedure TFormCarnetDeNotes2.ouvrirFichier(Sender:TObject);

begin//0
  //0060D62C
    FeuilleClasse := TFeuilleClasse.Create(Self, Handle, {Sender,} Logo,'');
end;//0

end.
