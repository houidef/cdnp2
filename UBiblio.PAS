{***********************************************************
* Version Original V0.03 build 1                           *
* Decompiled by HOUIDEF AEK v 12:20 mercredi, août 29, 2018*
* The disassembly process : 60%                            *
************************************************************}
unit UBiblio;

interface

uses
Forms, Windows,  SysUtils, Classes, Graphics, Menus, dialogs, URegistry,Registry,UInclureImpression,Constantes;

	procedure AddHistorique(Historique:AnsiString);//004B901C
	procedure DeleteHistoriqueFromMainMenu(MainMenu:TMainMenu; ItemIndex:dword);//004B90CC
	procedure _AddHistroiqueToMainMenu(MainMenu:TMainMenu; ItemIndex:dword;  S:TObject; Click:TNotifyEvent);//004B91F0
	function GetUtiliserHistorique:boolean;//004B9410
	procedure SetUtiliserHistorique(a:Boolean);//004B943C
	function GetnbFichiersHistorique:dword;//004B9468 nbFichiersHistorique
	procedure SetnbFichiersHistorique(a:Int64);//004B94A4
	procedure RefreshHistroqiueMainMenu(MainMenu:TMainMenu; ItemIndex:dword; S:TObject; Click:TNotifyEvent);//004B94D8
	function GetHistorique:TStringList;//004B9500
	procedure SetHistorique(a:TStrings);//004B964C
	function GetTypesdenotes:TStringList;//004B9794
	function _GetDefaultTypesdeNotes:TStringlist;//004B9840
	procedure SetTypesdenotes(a:TStrings);//004B9938
	function GetPeriodes:TStringList;//004B9A44
	function _GetPeriodes:TStringList;//004B9B44
	procedure SetlignesImpaires(a:TColor);//004B9BBC
	procedure SetColorlignesPaires(Value:TColor);//004B9BF8
	function GetColorlignesImpaires:TColor;//004B9C34
	function GetColorlignesPaires:TColor;//004B9C80
	function YallowColor:TColor;//004B9CCC
	function CielColor:TColor;//004B9CD4
	function BlueColor:TColor;//004B9CDC
	procedure SetcouleurSelection(a:TColor);//004B9CE4
	function GetcouleurSelection:TColor;//004B9D24
	procedure SetarrondirMoyennes(a:Integer);//004B9D74
	procedure SetmoyennesSur(a:Integer);//004B9DA4
	procedure SetTrierMoyennes(a:Integer);//004B9DE4
	function GetArrondirMoyennes:integer;//004B9E10
	function GetMoyennesSur:integer;//004B9E48
	function GetTrierMoyennes:dword;//004B9EA0
	procedure SetMoyenneParTypeDeNotes(a:Boolean);//004B9ED4
	procedure SetMoyennesEcritEtOral(a:Boolean);//004B9F04
	function GetmoyenneParTypeDeNotes:boolean;//004B9F30
	function GetmoyennesEcritEtOral:boolean;//004B9F60
	function GetColor1Note:TColor;//004B9F8C
	function GetColor2Note:TColor;//004B9FD8
	function GetColor3Note:TColor;//004BA024
	function GetColor4Note:TColor;//004BA070
	function GetColor5Note:TColor;//004BA0BC
	function GetColorMurGauche:TColor;//004BA108
	procedure SetcColor1Note(a:TColor);//004BA138
	procedure SetColor2Note(a:TColor);//004BA174
	procedure SetColor3Note(a:TColor);//004BA1B0
	procedure SetColor4Note(a:TColor);//004BA1EC
	procedure SetColor5Note(a:TColor);//004BA228
	function RedColor:TColor;//004BA264
	function BlackColor:TColor;//004BA26C
	function GreenColor:TColor;//004BA274
	function DarkBlackColor:TColor;//004BA27C
	function LightRedColor:TColor;//004BA280
	procedure SetColorationNote(a:Boolean);//004BA288
	function GetColorationNote:boolean;//004BA2B0
	procedure SetFileBak(a:Boolean);//004BA2D8
	function GetFileBak:boolean;//004BA2FC
	procedure SetOngletsGrillesBilans(a:Integer);//004BA320
	procedure SetOngletsGrillesNotes(a:Integer);//004BA354
	function GetOngletsGrillesBilans:dword;//004BA384
	function GetOngletsGrillesNotes:dword;//004BA3C0
	function __GetPeriodes(a:String):TStringlist;//004BA3F8
	procedure __SetPeriodes(a:string; b:TStrings);//004BA7B0
	procedure __SetPeriodes_v(Value:string);//004BA964
	function GetSeriesdeNotes(a:dword):TInclureImpression;//004BAA88
	function GetNumeroterElevesSeriesDeNotes:boolean;//004BAEC4
	procedure SetNumeroterElevesSeriesDeNotes(a:Boolean);//004BAEFC
	function GetNumeroterElevesBilans:boolean;//004BAF34
	procedure SetNumeroterElevesBilans(a:Boolean);//004BAF64
	procedure SetSeriesdeNotes(a:byte; U:TInclureImpression);//004BAF94
	function GetcolonnesBilanDetaillees:boolean;//004BB35C
	procedure SetcolonnesBilanDetaillee(a:Boolean);//004BB38C
	procedure SettrierMoyennesImpression(a:Integer);//004BB3BC
	function GettrierMoyennesImpression:byte;//004BB3F0
	procedure SetcolorationGrille(a:Boolean);//004BB42C
	function GetColorationGrille:Boolean;//004BB458
	procedure SetAfficherBarreOutils(a:Boolean);//004BB484
	procedure SetTailleMaximumAuDemarrage(a:Boolean);//004BB4B0
	procedure SetAfficherHeure(a:Boolean);//004BB4E4
	procedure SetAfficherDate(a:Boolean);//004BB50C
	procedure SetAuDemarrage(a:Integer);//004BB534
	function GetAfficherBarreOutils:boolean;//004BB55C
	function GetTailleMaximumAuDemarrage:boolean;//004BB588
	function GetAfficherHeure:boolean;//004BB5BC
	function GetAfficherDate:boolean;//004BB5E4
	function GetAuDemarrage:dword;//004BB60C
	procedure SetRappelSauvegarde(a:Boolean);//004BB63C
	function GetRappelSauvegarde:boolean;//004BB668
	procedure SetRappelMiseAJourDisponible(a:Boolean);//004BB694
	function GetRappelMiseAJourDisponible:boolean;//004BB6C8
	procedure SetFrequenceRappel(a:Integer);//004BB6FC
	function GetFrequenceRappel:dword;//004BB728
	function GetNumeroRappel:dword;//004BB75C
	procedure SetNumeroRappel(x:dword);//004BB790
	procedure SetOngletClasses(a:Integer);//004BB7BC
	function GetOngletClasses:dword;//004BB7E8
	procedure SetAfficherOngletsClasses(a:Boolean);//004BB81C
	function GetAfficherOngletsClasses:boolean;//004BB84C
	function GetcouleurFenetreInfo:TColor;//004BB87C
	function sub_004BB8AC:TColor;//004BB8AC
	procedure SetCouleurFenetreInfo(a:TColor);//004BB8B4
	procedure SetafficherFenetreInfo(a:Boolean);//004BB8E0
	procedure SetAfficherR(a:Boolean);//004BB90C
	function GetAfficherFenetreInfo:boolean;//004BB930
	function GetAfficherR:Boolean;//004BB95C
	procedure SetAfficherDatesDeNaissance(a:Boolean);//004BB980
	function GetAfficherDatesDeNaissance:Boolean;//004BB9B4
	procedure Setgraphe3D(a:Boolean);//004BB9E8
	function Getgraphe3D:boolean;//004BBA0C
	procedure SetgrapheDegrade(a:Boolean);//004BBA30
	procedure SetgrapheEnCouleur(a:Boolean);//004BBA58
	function GetGrapheDegrade:boolean;//004BBA80
	function GetGrapheEnCouleur:boolean;//004BBAA8
	procedure SetGrapheLegende(a:Boolean);//004BBAD0
	function GetGrapheLegende:boolean;//004BBAF8
	procedure SetcouleurDebutDegrade(a:TColor);//004BBB20
	procedure SetcouleurFinDegrade(a:TColor);//004BBB4C
	function GetcouleurDebutDegrade:TColor;//004BBB78
	function GetcouleurFinDegrade:TColor;//004BBBA8
	function sub_004BBBD8:TColor;//004BBBD8
	function sub_004BBBE0:TColor;//004BBBE0
	procedure SetcouleurEleve(a:TColor);//004BBBE8
	procedure SetcouleurMax(a:TColor);//004BBC10
	procedure SetcouleurMin(a:TColor);//004BBC34
	procedure SetcouleurMoyenne(a:TColor);//004BBC58
	function GetCouleurEleve:TColor;//004BBC80
	function sub_004BBCAC:TColor;//004BBCAC
	function GetcouleurMax:TColor;//004BBCB4
	function sub_004BBCDC:TColor;//004BBCDC
	function GetCouleurMin:TColor;//004BBCE4
	function sub_004BBD0C:TColor;//004BBD0C
	function sub_004BBD14:TColor;//004BBD14
	function sub_004BBD40:TColor;//004BBD40
	procedure SetCouleurMurBas(a:TColor);//004BBD48
	function GetCouleurMurBas:TColor;//004BBD70
	function sub_004BBD9C:TColor;//004BBD9C
	procedure SetCouleurMurGauche(a:TColor);//004BBDA4
	function sub_004BBDD0:TColor;//004BBDD0
	procedure SetGrapheLigneEleve(a:Boolean);//004BBDD8
	procedure SetGrapheLigneMax(a:Boolean);//004BBE04
	procedure SetGrapheLigneMin__(a:Boolean);//004BBE2C
	procedure SetGrapheLigneMoyenne(a:Boolean);//004BBE54
	function GetGrapheLigneEleve:boolean;//004BBE80
	function GetGrapheLigneMax:boolean;//004BBEAC
	function GetGrapheLigneMin:boolean;//004BBED4
	function GetgrapheLigneMoyenne:boolean;//004BBEFC
	procedure SetOngletsGraphes_(a:Integer);//004BBF28
	function GetOngletsGraphes_:dword;//004BBF54
	procedure SetimpressionCouleurNote_(a:Boolean);//004BBF88
	function GetimpressionCouleurNote_:boolean;//004BBFB8
	procedure SetnumeroterElevesGrilleVierge(a:Boolean);//004BBFE8
	function GetnumeroterElevesGrilleVierge:boolean;//004BC01C
	procedure SetLargeurGrilleVierge(a:Integer);//004BC050
	function GetlargeurGrilleVierge:byte;//004BC080
	procedure SetimpressionColonneMoyenne(a:Boolean);//004BC0B8
	function GetimpressionColonneMoyenne:boolean;//004BC0EC
	procedure SetimpressionColonneClassement(a:Boolean);//004BC120
	procedure SetImpressionMoyennesEcritOral(a:Boolean);//004BC154
	function GetimpressionMoyennesEcritOral:boolean;//004BC188
	function GetImpressionColonneClassement:boolean;//004BC1BC
	procedure SetNumeroterElevesAppreciations(a:Boolean);//004BC1F0
	function GetNumeroterElevesAppreciations:boolean;//004BC228
	procedure SetArrondirMoyennesAnnuelles(a:Integer);//004BC260
	function GetArrondirMoyennesAnnuelles:dword;//004BC298
	procedure SetTypeMoyennesAnnuelles(a:Integer);//004BC2D8
	function GettypeMoyennesAnnuelles:dword;//004BC30C
	function GetMatieres:TStringList;//004BC348
	function GetDefaultMatieres:TStringList;//004BC3F0
	procedure SetMatieres(a:TStrings);//004BC698
	procedure AddToMenu1(a:TMainMenu; b:TStrings; c:dword; d:pointer; e:TNotifyEvent; f:pointer; g:TNotifyEvent; h:pointer; k:TNotifyEvent);//004BC7A0
	procedure AddToMenu2(a:TMainMenu; b:dword; c:dword; d:TObject; z:TNotifyEvent);//004BCAA0
	procedure SetDerniersfichiers(StringList:TStringList);//004BCBDC
	function GetDerniersfichiers:TStringlist;//004BCD14
	function GetAfficherNomEnseignantOnglets:boolean;//004BCDB0
	procedure SetAfficherNomEnseignantOnglets(a:Boolean);//004BCDE8
	function GetAfficherMatiereOnglets:boolean;//004BCE20
	procedure SetAfficherMatiereOnglets(a:Boolean);//004BCE50
	function GetNomsbulletins:TStringList;//004BCE80
	function GetNomsbulletins_xx(a:String):TStringList;//004BCF84
	function GetImpressionDatesDeNaissanceSeriesDeNotes:boolean;//004BD1BC
	function GetImpressionDatesDeNaissanceBilans:boolean;//004BD1FC
	function GetImpressionDatesDeNaissanceAppreciations:boolean;//004BD238
	function GetImpressionDatesDeNaissanceGrilleVierge:boolean;//004BD278
	procedure SetImpressionDatesDeNaissanceSeriesDeNotes(a:Boolean);//004BD2B8
	procedure SetImpressionDatesDeNaissanceBilans(a:Boolean);//004BD2F8
	procedure SetImpressionDatesDeNaissanceAppreciations(a:Boolean);//004BD334
	procedure SetImpressionDatesDeNaissanceGrilleVierge(a:Boolean);//004BD374
	procedure GetBasDePageGauche(var a:string);//004BD3B4
	procedure GetBasDePageDroite(var a:string);//004BD3FC
	procedure GetEnTeteGauche(var a:string);//004BD444
	procedure GetEnTeteCentre(var a:string);//004BD48C
	procedure GetEnTeteDroite(var a:string);//004BD4D4
	procedure SetBasDePageGauche(a:string);//004BD51C
	procedure SetBasDePageDroite(a:string);//004BD59C
	procedure SetEnTeteGauche(a:string);//004BD61C
	procedure SetEnTeteCentre(a:string);//004BD69C
	procedure SetEnTeteDroite(a:string);//004BD71C
	function GetTaillePolice:byte;//004BD79C
	function GetNomPolice():string;//004BD7D0
	procedure SetTaillePolice(a:Integer);//004BD82C
	procedure SetNomPolice(a:string);//004BD858
	procedure SetImpressionFermerBoite(a:Boolean);//004BD8D4
	function GetImpressionFermerBoite:boolean;//004BD904
	procedure SetImpressionRSeriesDeNotes(a:Boolean);//004BD934
	procedure SetImpressionRBilans(a:Boolean);//004BD968
	procedure SetImpressionRAppreciations(a:Boolean);//004BD994
	procedure SetImpressionRGrilleVierge(a:Boolean);//004BD9C8
	function GetImpressionRSeriesDeNotes:boolean;//004BD9F8
	function GetImpressionRBilans:boolean;//004BDA2C
	function GetImpressionRAppreciations:boolean;//004BDA58
	function GetimpressionRGrilleVierge:boolean;//004BDA8C
    var 
	   //gvar_00617C94 : integer;
	   Color1Note : integer;
	   couleur1Note : boolean; //gvar_00617CB8
	   couleur2Note : boolean; //gvar_00617CB9
	   couleur3Note : boolean; //gvar_00617CBA
	   couleur4Note : boolean; //gvar_00617CBB
	   couleur5Note : boolean; //gvar_00617CBC
	   lignesPaires : boolean; //gvar_00617CBD
	   lignesImpaires : boolean; //gvar_00617CBE
	   couleurSelection : boolean; //gvar_00617CBF
implementation

//004B901C
procedure AddHistorique(Historique:AnsiString);
var
  StringList:TStringList;
begin//0
	StringList := GetHistorique;
	if (StringList.IndexOf(LowerCase(Historique)) + 1 = 0) then//004B905F
	  StringList.Add(LowerCase(Historique));
	if (StringList.Count > GetnbFichiersHistorique) then//004B908B
	  StringList.Delete(0);
	SetHistorique(StringList);
end;//0

//004B90CC
procedure DeleteHistoriqueFromMainMenu(MainMenu:TMainMenu; ItemIndex:dword);
var 
  Item,I : integer;
begin//0
  //search item of '&Quitter'
	Item := MainMenu.Items.Items[ItemIndex].Count;
	for I := 0 to MainMenu.Items.Items[ItemIndex].Count - 1 do //004B9121
		if (MainMenu.Items.Items[ItemIndex].Items[I].Caption = '&Quitter') then//004B9150
				Item := I;
  //delete after '&Quitter'
	for I := Item+1 to MainMenu.Items.Items[ItemIndex].Count - 1 do //004B91AF
		MainMenu.Items.Items[ItemIndex].Delete(Item + 1);
end;

//004B91F0
procedure _AddHistroiqueToMainMenu(MainMenu:TMainMenu; ItemIndex:dword;  S:TObject; Click:TNotifyEvent);
var
  Historiques:TStringList;
  lvar_D,I :integer;
  MenuItem : TMenuItem;
begin//0
  //004B91F0
	if (GetUtiliserHistorique) then // utiliser Historique
	begin //004B9223
	  lvar_D := 0;
	  Historiques := GetHistorique;
	  if (Historiques.count <> 0) then
	  begin//004B923F
		  for I := 0 to Historiques.count-1 do //004B9265
		  begin//004B926B
			if (FileExists(Historiques[I])) then 
			begin
				if (lvar_D = 0) then
				begin//004B9290
				  MenuItem := TMenuItem.Create(Nil);
				  MenuItem.Caption := '-';
				   MainMenu.Items.Items[ItemIndex].Insert(MainMenu.Items.Items[ItemIndex].Count, MenuItem);
				  lvar_D := 1;
				end;//6
				MenuItem := TMenuItem.Create(Nil);
				MenuItem.Caption := Historiques[I];
				MenuItem.OnClick := Click;
				//MenuItem.f84 := S;
				if (I <= 9) then//004B931C
				  MenuItem.ShortCut := TextToShortCut('Alt+' + IntToStr(I))
				else //004B934B
				  MenuItem.ShortCut := TextToShortCut('Ctrl+' + IntToStr(I - 10));
				MainMenu.Items.Items[ItemIndex].Insert(MainMenu.Items.Items[ItemIndex].Count, MenuItem);
			end;
		  end;//5
	  end;//3
	end;//2
end;//0


//004B9410
function GetUtiliserHistorique:boolean;
begin//0
  result := GetValueRegBool('utiliserHistorique', true{,0});
end;//0


//004B943C
procedure SetUtiliserHistorique(a:Boolean);
begin//0
  SetValueRegBool('utiliserHistorique', a{,false});
end;//0


//004B9468
function GetnbFichiersHistorique:dword;
begin//0
  result := GetValueRegInt('nbFichiersHistorique', 5, false);
end;//0

//004B94A4
procedure SetnbFichiersHistorique(a:Int64);
begin
  SetValueRegInt('nbFichiersHistorique',a,false);
end;

//004B94D8  
procedure RefreshHistroqiueMainMenu(MainMenu:TMainMenu; ItemIndex:dword; S:TObject; Click:TNotifyEvent);
begin//0
  DeleteHistoriqueFromMainMenu(MainMenu, ItemIndex);
  _AddHistroiqueToMainMenu(MainMenu, ItemIndex, S, Click);
end;//0

//004B9500
function GetHistorique:TStringList;
var
 StrList,ResStrList :TStringList;
 Registry:TRegistry;
 I:integer;
begin//0
	ResStrList := TStringList.Create;
	StrList := TStringList.Create;
	Registry := TRegistry.Create;
	Registry.RootKey := HKEY_CURRENT_USER;
	if (Registry.KeyExists('Software\Carnet de Notes 2.x\Historique')) then
	begin//2
	  //004B9566
	  Registry.OpenKey('Software\Carnet de Notes 2.x\Historique', True);
	  Registry.GetValueNames(StrList);
		for I := 0 to StrList.Count - 1 do //004B9592   
		  if (FileExists(StrList[I])) then 
			ResStrList.Add(StrList[I]);
	end;//2
	Registry.CloseKey;
	Registry.Free;
	StrList.Destroy;
	result := ResStrList;
end;//0

//004B964C
procedure SetHistorique(a:TStrings);
var
 Registry:TRegistry;
 I:integer;
begin//0
	Registry := TRegistry.Create;
	Registry.RootKey := HKEY_CURRENT_USER;
	if (Registry.KeyExists('Software\Carnet de Notes 2.x\Historique')) then //004B9697
		Registry.DeleteKey('Software\Carnet de Notes 2.x\Historique');
	Registry.OpenKey('Software\Carnet de Notes 2.x\Historique', True);
	for I := 0 to a.Count - 1 do//004B96CB
	begin//004B96CE
		if (I > GetnbFichiersHistorique - 1) then Continue;
		if (FileExists(a[I]) = False) then Continue;
		Registry.WriteString(LowerCase(a[I]), '');
	end;//3
	Registry.CloseKey;
	Registry.Free;
end;//0


//004B9794
function GetTypesdenotes:TStringList;
var
 StringList:TStringList;
 Registry : TRegistry;
begin//0
  StringList := TStringList.Create;
  StringList.Sorted := True;
  Registry := TRegistry.Create;
  Registry.RootKey := HKEY_CURRENT_USER;
  if (Registry.KeyExists('Software\Carnet de Notes 2.x\Types de notes')) then
  begin//004B97D7
	Registry.OpenKey('Software\Carnet de Notes 2.x\Types de notes', True);
	Registry.GetValueNames(StringList);
  end//1
  else//004B97F0
	StringList := _GetDefaultTypesdeNotes;
  Registry.CloseKey;
  Registry.Free;
  result:= StringList;
end;//0

//004B9840
function _GetDefaultTypesdeNotes:TStringList;
var
  StringList:TStringList;
begin//0
  //004B9840
  StringList := TStringList.Create;
  with StringList do 
  begin
	Sorted := True;
	Add('Contrôle en classe');
	Add('Devoir à la maison');
	Add('Test en classe');
	Add('Oral');
	Add('Comportement');
	Add('Travaux pratiques');
  end;
  result := StringList;
end;//0

//004B9938
procedure SetTypesdenotes(a:TStrings);
var
  I:integer;
  Registry:TRegistry;
begin//0
    Registry := TRegistry.Create;
    Registry.RootKey := HKEY_CURRENT_USER;
    if (Registry.KeyExists('Software\Carnet de Notes 2.x\Types de notes')) then//004B9981
      Registry.DeleteKey('Software\Carnet de Notes 2.x\Types de notes');
    Registry.OpenKey('Software\Carnet de Notes 2.x\Types de notes', True);
      for I := 0 to  a.Count - 1 do//004B99B3
        Registry.WriteString(a[I], '');
    Registry.CloseKey;
    Registry.Free;
end;//0

//004B9A44
function GetPeriodes:TStringlist;
var 
  StringList:TStringList;
  Registry:TRegistry;
begin//0
  StringList := TStringList.Create;
  Registry := TRegistry.Create;
  Registry.RootKey := HKEY_CURRENT_USER;
  if (Registry.KeyExists('Software\Carnet de Notes 2.x\Periodes')) then
  begin//1
    //004B9A7F
    Registry.OpenKey('Software\Carnet de Notes 2.x\Periodes', True);
    Registry.GetValueNames(StringList);
    Registry.CloseKey;
  end;//1
  StringList.Insert(0, 'Trimestres');
  StringList.Insert(1, 'Semestres');
  StringList.Insert(2, 'Mois');
  Registry.Free;
  result := StringList;
end;//0

//004B9B44
function _GetPeriodes:TStringList;
var
Reg : TRegistry;
begin//0
  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  if (Reg.KeyExists('Software\Carnet de Notes 2.x\Periodes')) then//004B9B6F
    Reg.DeleteKey('Software\Carnet de Notes 2.x\Periodes');
  Reg.Free;
  result := GetPeriodes;
end;//0

//004B9BBC
procedure SetlignesImpaires(a:TColor);
begin//0
  if (a <> GetColorlignesImpaires) then
  begin
	SetValueRegColor_('lignesImpaires', a);
	lignesImpaires := true;
  end;
end;//0

//004B9BF8
procedure SetColorlignesPaires(Value:TColor);
begin//0
  if (Value = GetColorlignesPaires) then Exit;
  SetValueRegColor_('lignesPaires', Value{,false});
  lignesPaires := true;
end;//0

procedure SetValueRegColor_(a:AnsiString; b:dword);
var
  Registry : TRegistry;
begin//0
    Registry := TRegistry.Create;
    Registry.RootKey := HKEY_CURRENT_USER;
    Registry.OpenKey('Software\Carnet de Notes 2.x\Options', True);
    Registry.WriteInteger(a, b);
    Registry.CloseKey;
    Registry.Free;
end;//0

//004B9C34
function GetColorlignesImpaires:TColor;
begin	  
  //004B9C34
 // if (lignesImpaires = 0) then Exit;
  result {gvar_00617CAC}:= GetValueRegColor('lignesImpaires', YallowColor);
 // lignesImpaires := 0;
  end;//0

//004B9C80
  function GetColorlignesPaires:TColor;
  begin
		//004B9C80
	  //if (lignesPaires = 0) then Exit;
	  result{gvar_00617CB0} := GetValueRegColor('lignesPaires', CielColor);
	  //result := gvar_00617CB0;
	  //lignesPaires := 0;
  end;//0

//004B9CCC
function YallowColor:TColor;
begin//0
  result := $E2FFFF;
end;//0

//004B9CD4
function CielColor:TColor;
begin//004B9CD4
  result := $F4FFE1;
end;//0

//004B9CDC
function BlueColor:TColor;
begin
 result := $0FFFF00;
end;

//004B9CE4
procedure SetcouleurSelection(a:TColor);
begin//0
  if (a <> GetcouleurSelection) then 
  begin
	SetValueRegColor_('couleurSelection', a{,0});
	couleurSelection := true;
  end;
end;//0

//004B9D24
function GetcouleurSelection:TColor;
var
 gvar_00617CB4:TColor;
begin//0
  //004B9D24
  //if (couleurSelection = 0) then Exit;
  gvar_00617CB4 := GetValueRegColor('couleurSelection', $FFFF00);
  result := gvar_00617CB4;
  //couleurSelection := 0;
end;//0

//004B9D74
procedure SetarrondirMoyennes(a:Integer);
begin//0
  //004B9D74
  SetValueRegInt('arrondirMoyennes', a, False);
end;//0


//004B9DA4
procedure SetmoyennesSur(a:Integer);
begin//0
  if (gvar_00617904 <> 0) then//004B9DAF
    SetValueRegInt('moyennesSur', a,true)
  else
    SetValueRegInt('moyennesSur', a,false);
end;//0


//004B9DE4
procedure SetTrierMoyennes(a:Integer);
begin//0
  SetValueRegInt('trierMoyennes', a,false);
end;//0


//004B9E10
function GetArrondirMoyennes:integer; //arrondirMoyennes
begin//0
  result := GetValueRegInt('arrondirMoyennes', 0,false);
end;//0


//004B9E48
function GetMoyennesSur:integer; //moyennesSur
begin//0
  if (gvar_00617905 <> 0) then//004B9E52
	 result := GetValueRegInt('moyennesSur',20, true)
   else
  if (gvar_00617904 <> 0) then//004B9E6B
	 result:= GetValueRegInt('moyennesSur',20, true)
  else 
   result := GetValueRegInt('moyennesSur',20, false);
end;//0


//004B9EA0
function GetTrierMoyennes:dword; //Classement
begin//0
  result := GetValueRegInt('trierMoyennes', 0,false);
end;//0


//004B9ED4
procedure SetMoyenneParTypeDeNotes(a:Boolean);
begin//0
  SetValueRegBool('moyenneParTypeDeNotes', a{,0});
end;//0


//004B9F04
procedure SetMoyennesEcritEtOral(a:Boolean);
begin//0
  SetValueRegBool('moyennesEcritEtOral', a{,0});
end;//0


//004B9F30
function GetmoyenneParTypeDeNotes:boolean;
begin
 result := GetValueRegBool('moyenneParTypeDeNotes', false{,0});
end;

//004B9F60
function GetmoyennesEcritEtOral:boolean;
begin
 result := GetValueRegBool('moyennesEcritEtOral', false{,0});
end;

//004B9F8C
function GetColor1Note:TColor;
begin//0
  //004B9F8C
  if (couleur1Note) then 
  begin
	Color1Note := GetValueRegColor('couleur1Note', RedColor);
	Result := Color1Note;
	couleur1Note := false;
  end
  else 
  Result := Color1Note;
end;//0


//004B9FD8
function GetColor2Note:TColor;
begin//0
  //004B9FD8
  //if (couleur2Note <> 0) then 
  {Color2Note} result := GetValueRegColor('couleur2Note', BlackColor);
  //couleur2Note := 0;
end;//0


//004BA024
function GetColor3Note:TColor;
begin//0
  //004BA024
  //if (couleur3Note = 0) then Exit;
  {Color3Note}result := GetValueRegColor('couleur3Note', GreenColor);
  //couleur3Note := 0;
end;//0


//004BA070
function GetColor4Note:TColor;
begin//0
  //004BA070
  //if (couleur4Note = 0) then Exit;
  {Color4Note} result := GetValueRegColor('couleur4Note', DarkBlackColor);
  //couleur4Note := 0;
  
end;//0


//004BA0BC
function GetColor5Note:TColor;
begin//0
  //004BA0BC
  //if (couleur5Note = 0) then Exit;
  {Color5Note}result := GetValueRegColor('couleur5Note', LightRedColor);
  //couleur5Note := 0;
end;//0


//004BA108
function GetColorMurGauche:TColor;
begin
 result := GetValueRegColor('couleurMurGauche', sub_004BBDD0);
end;

//004BA138
procedure SetcColor1Note(a:TColor);
begin//0
  //004BA138
  //push EBX
  if (a <> GetColor1Note) then 
  begin
	SetValueRegColor_('couleur1Note', a{,0});
	couleur1Note := true;
  end;
end;//0


//004BA174
procedure SetColor2Note(a:TColor);
begin//0
  //004BA174
  if (a <> GetColor2Note) then 
  begin
	SetValueRegColor_('couleur2Note', a{,false});
	couleur2Note := true;
  end;
end;//0

//004BA1B0
procedure SetColor3Note(a:TColor);
begin//0
  //004BA1B0
  if (a = GetColor3Note) then Exit;
  SetValueRegColor_('couleur3Note', a{,false});
  couleur3Note := true;
end;//0

//004BA1EC
procedure SetColor4Note(a:TColor);
begin//0
  //004BA1EC
  if (a = GetColor4Note) then Exit;
  SetValueRegColor_('couleur4Note', a{,false});
  couleur4Note := true;
end;//0


//004BA228
procedure SetColor5Note(a:TColor);
begin//0
  if (a = GetColor5Note) then Exit;
  SetValueRegColor_('couleur5Note', a{,false});
  couleur5Note := true;
end;//0


//004BA264
function RedColor:TColor;
begin
 result := $0FF;
end;

//004BA26C
function BlackColor:TColor;
begin
 result := $0C00000;
end;

//004BA274
function GreenColor:TColor;
begin
 result := $8000;
end;

//004BA27C
function DarkBlackColor:TColor;
begin
  result := 0;
end;

//004BA280
function LightRedColor:TColor;
begin
 result := $0FFFF;
end;

//004BA288
procedure SetColorationNote(a:Boolean);
begin//0
  //004BA288
  SetValueRegBool('colorationNote', a{,false});
end;//0

//004BA2B0
function GetColorationNote:boolean;
begin//0
   result:= GetValueRegBool('colorationNote', true{,0});
end;//0

//004BA2D8
procedure SetFileBak(a:Boolean);
begin//0
  SetValueRegBool('fichierBak', a{,false});
end;//0

//004BA2FC
function GetFileBak:boolean;
begin//0
  //004BA2FC
  result := GetValueRegBool('fichierBak', true{,0});
end;//0

//004BA320
procedure SetOngletsGrillesBilans(a:Integer);
begin//0
  SetValueRegInt('ongletsGrillesBilans', a, False);
end;//0

//004BA354
procedure SetOngletsGrillesNotes(a:Integer);
begin//0
  SetValueRegInt('ongletsGrillesNotes', a, False);
end;//0

//004BA384
function GetOngletsGrillesBilans:dword;
begin//0
  result := GetValueRegInt('ongletsGrillesBilans', 0, false);
end;//0

//004BA3C0
function GetOngletsGrillesNotes:dword;
begin//0
 result:=GetValueRegInt('ongletsGrillesNotes', 0, false);
end;//0


//004BA3F8
function __GetPeriodes(a:String):TStringlist;
var
 S:TStringList;
 R:TRegistry;
begin//
	S := TStringList.Create;
	R := TRegistry.Create;
	R.RootKey :=HKEY_CURRENT_USER;
	if (R.KeyExists('Software\Carnet de Notes 2.x\Periodes\' + a + '\noms')) then
	begin//2
	  //004BA46C
	  R.OpenKey('Software\Carnet de Notes 2.x\Periodes\' + a + '\noms', True);
	  R.GetValueNames(S);
	  R.CloseKey;
	end//2
	else
	begin//2
	  //004BA4A7
	  if (a = 'Trimestres') then
	  begin//3
		//004BA4B6
		S.Add('Premier trimestre');
		S.Add('Deuxième trimestre');
		S.Add('Troisième trimestre');
	  end//3
	  else
	  begin//3
		//004BA4DF
		if (a = 'Semestres') then
		begin//4
		  //004BA4EE
		  S.Add('Premier semestre');
		  S.Add('Deuxième semestre');
		end//4
		else
		begin//4
		  //004BA50B
		  if (a = 'Mois') then
		  begin//5
			//004BA51E
			S.Add('Septembre');
			S.Add('Octobre');
			S.Add('Novembre');
			S.Add('Décembre');
			S.Add('Janvier');
			S.Add('Février');
			S.Add('Mars');
			S.Add('Avril');
			S.Add('Mai');
			S.Add('Juin');
			S.Add('Juillet');
			S.Add('Août');
		  end;//5
		end;//4
	  end;//3
	end;//2
	R.Free;
	result := S;
end;
	//004BA5C
procedure __SetPeriodes(a:string; b:TStrings);
var
 Registry:TRegistry;
 I:integer;
begin//0
    Registry := TRegistry.Create;
    Registry.RootKey := HKEY_CURRENT_USER;
    if (Registry.KeyExists('Software\Carnet de Notes 2.x\Periodes\' + a)) then
    begin//2
      //004BA813
      Registry.DeleteKey('Software\Carnet de Notes 2.x\Periodes\' + a);
    end;//2

    Registry.OpenKey('Software\Carnet de Notes 2.x\Periodes', True);
    Registry.WriteString(a, '');
    Registry.CloseKey;
    Registry.OpenKey('Software\Carnet de Notes 2.x\Periodes\' + a + '\noms', True);
      //004BA88C
      for I := 0 to b.Count - 1 do
      begin//3
        //004BA894
        Registry.WriteString(b[I], '');
      end;//3
    Registry.CloseKey; 
    Registry.Free;
end;//0

//004BA964
procedure __SetPeriodes_v(Value:string);
var
  Reg : TRegistry;
begin//0
    Reg := TRegistry.Create;
    Reg.RootKey := HKEY_CURRENT_USER;
    if (Reg.KeyExists('Software\Carnet de Notes 2.x\Periodes\' + Value)) then
      Reg.DeleteKey('Software\Carnet de Notes 2.x\Periodes\' + Value);
    Reg.OpenKey('Software\Carnet de Notes 2.x\Periodes', True);
    Reg.DeleteValue(Value);
    Reg.CloseKey;
    Reg.Free;
end;//0

///004BAA88
function GetSeriesdeNotes(a:dword):TInclureImpression;
var
 Registry:TRegistry;
 I:integer;
begin//0
   case a of
	 0:
	 begin//3
	   //004BABE0
	   if ({gvar_00617CC0 }InclureImpression = Nil) then //004BABE9
		 {gvar_00617CC0}InclureImpression := TInclureImpression.Create(a);
	   
	   Registry := TRegistry.Create;
	   Registry.RootKey := HKEY_CURRENT_USER;
	   if (Registry.KeyExists('Software\Carnet de Notes 2.x\Inclure impression\Séries de notes')) then
	   begin//4
		 //004BAC2D
		 Registry.OpenKey('Software\Carnet de Notes 2.x\Inclure impression\Séries de notes', True);

			for I:=0 to InclureImpression.f8.count - 1 do 
			begin//004BAC5B
				try//004BAC74
				  InclureImpression.fC[I] := Registry.ReadBool(InclureImpression.f8[I]);
				except//004BACBA
				  InclureImpression.fC[I] := true;
				end;//6
			end;

		 Registry.CloseKey;
	   end;//4
	   Registry.Free;
	  // ESI := InclureImpression;
	  result := InclureImpression;
	 end;//3
	 1:
	 begin//3
	   //004BACFC
	   if ({gvar_00617CC4}InclureImpression1 = Nil) then
	   begin//4
		 //004BAD05
		 {gvar_00617CC4}InclureImpression1 := TInclureImpression.Create(a);
		 
	   end;//4
	   Registry := TRegistry.Create;;
	   Registry.RootKey := HKEY_CURRENT_USER;
	   if (Registry.KeyExists('Software\Carnet de Notes 2.x\Inclure impression\Bilans')) then
	   begin//004BAD42
		 Registry.OpenKey('Software\Carnet de Notes 2.x\Inclure impression\Bilans', True);

		   for I := 0 to InclureImpression1.f8.count - 1 do //004BAD6B
		   begin//004BAD76
			 InclureImpression1.fC[I] := Registry.ReadBool(InclureImpression1.f8[I]);
		   end;//6
		 
		 Registry.CloseKey;
	   end;//4
	   Registry.Free;
	   //ESI := gvar_00617CC4;
	   result := InclureImpression1;
	 end;//3
	 2:
	 begin//3
	   //004BAAC4
	   if ({gvar_00617CC8}InclureImpression2 = Nil) then
	   begin//4
		 //004BAACD
		 {gvar_00617CC8}InclureImpression2 := TInclureImpression.Create(a);
		 
	   end;//4
	   Registry := TRegistry.Create;
	   Registry.RootKey := HKEY_CURRENT_USER;
	   if (Registry.KeyExists('Software\Carnet de Notes 2.x\Inclure impression\Grille vierge')) then
	   begin//004BAB11;
		 Registry.OpenKey('Software\Carnet de Notes 2.x\Inclure impression\Grille vierge', True);
			for I:=0 to InclureImpression2.f8.count - 1 do 
			begin //004BAB3F
				try//004BAB58
				  InclureImpression2.fC[I] := Registry.ReadBool(InclureImpression2.f8[I])
				except//004BAB9E
				  InclureImpression2.fC[I] := true;
				end;//6
			end;
		 Registry.CloseKey;
	   end;//4
	   Registry.Free;
	   //ESI := gvar_00617CC8;
	   result := InclureImpression2;
	 end;//3
   end;//2
end;//0

//004BAEC4
function GetNumeroterElevesSeriesDeNotes:boolean;
begin//0
 result := GetValueRegBool('numeroterElevesSeriesDeNotes', true{,0});
end;//0

//004BAEFC
procedure SetNumeroterElevesSeriesDeNotes(a:Boolean);
begin
  SetValueRegBool('numeroterElevesSeriesDeNotes',a{,0});
end;

//004BAF34
function GetNumeroterElevesBilans:boolean;
begin
 result := GetValueRegBool('numeroterElevesBilans',true{,0});
end;

//004BAF64
procedure SetNumeroterElevesBilans(a:Boolean);
begin//0
  SetValueRegBool('numeroterElevesBilans', a{,false});
end;//0

//004BAF94
procedure SetSeriesdeNotes(a:byte; U:TInclureImpression);
var
lvar_C : TRegistry;
begin
  //004BAF94
    //004BAFB9
    case a of
      0:
      begin//3
        //004BB0AC
        lvar_C := TRegistry.Create;
        lvar_C.RootKey := HKEY_CURRENT_USER;
        if (lvar_C.KeyExists('Software\Carnet de Notes 2.x\Inclure impression\Séries de notes')) then
        begin//4
          //004BB0D9
          lvar_C.DeleteKey('Software\Carnet de Notes 2.x\Inclure impression\Séries de notes');
        end;//4
        lvar_C.OpenKey('Software\Carnet de Notes 2.x\Inclure impression\Séries de notes', True);
        //gvar_00617CC0;
	   end;
	end;

{
004BB018    mov         eax,[00617CC8];gvar_00617CC8:TInclureImpression
004BB01D    mov         eax,dword ptr [eax+8]
004BB020    mov         edx,dword ptr [eax]
004BB022    call        dword ptr [edx+14]
004BB025    mov         esi,eax
004BB027    sub         esi,1
>	004BB02A    jno         004BB031
004BB02C    call        @IntOver
004BB031    test        esi,esi
>	004BB033    jl          004BB097
004BB035    inc         esi
004BB036    xor         ebx,ebx
004BB038    mov         eax,dword ptr [ebp-4]
004BB03B    mov         eax,dword ptr [eax+0C]
004BB03E    cmp         ebx,dword ptr [eax-4]
>	004BB041    jb          004BB048
004BB043    call        @BoundErr
004BB048    mov         al,byte ptr [eax+ebx]
004BB04B    mov         edx,dword ptr ds:[617CC8];gvar_00617CC8:TInclureImpression
004BB051    mov         edx,dword ptr [edx+0C]
004BB054    cmp         ebx,dword ptr [edx-4]
>	004BB057    jb          004BB05E
004BB059    call        @BoundErr
004BB05E    mov         byte ptr [edx+ebx],al
004BB061    lea         ecx,[ebp-14]
004BB064    mov         eax,[00617CC8];gvar_00617CC8:TInclureImpression
004BB069    mov         eax,dword ptr [eax+8]
004BB06C    mov         edx,ebx
004BB06E    mov         edi,dword ptr [eax]
004BB070    call        dword ptr [edi+0C]
004BB073    mov         edx,dword ptr [ebp-14]
004BB076    mov         eax,[00617CC8];gvar_00617CC8:TInclureImpression
004BB07B    mov         eax,dword ptr [eax+0C]
004BB07E    cmp         ebx,dword ptr [eax-4]
>	004BB081    jb          004BB088
004BB083    call        @BoundErr
004BB088    mov         cl,byte ptr [eax+ebx]
004BB08B    mov         eax,dword ptr [ebp-8]
004BB08E    call        TRegistry.WriteBool
004BB093    inc         ebx
004BB094    dec         esi
>	004BB095    jne         004BB038
004BB097    mov         eax,dword ptr [ebp-8]
004BB09A    call        TRegistry.CloseKey
004BB09F    mov         eax,dword ptr [ebp-8]
004BB0A2    call        TObject.Free
>	004BB0A7    jmp         004BB261
004BB0AC    mov         dl,1
004BB0AE    mov         eax,[00490114];TRegistry
004BB0B3    call        TRegistry.Create;TRegistry.Create
004BB0B8    mov         dword ptr [ebp-0C],eax
004BB0BB    mov         edx,80000001
004BB0C0    mov         eax,dword ptr [ebp-0C]
004BB0C3    call        TRegistry.SetRootKey
004BB0C8    mov         edx,4BB2DC;'Software\Carnet de Notes 2.x\Inclure impression\Séries de notes'
004BB0CD    mov         eax,dword ptr [ebp-0C]
004BB0D0    call        TRegistry.KeyExists
004BB0D5    test        al,al
>	004BB0D7    je          004BB0E6
004BB0D9    mov         edx,4BB2DC;'Software\Carnet de Notes 2.x\Inclure impression\Séries de notes'
004BB0DE    mov         eax,dword ptr [ebp-0C]
004BB0E1    call        TRegistry.DeleteKey
004BB0E6    mov         cl,1
004BB0E8    mov         edx,4BB2DC;'Software\Carnet de Notes 2.x\Inclure impression\Séries de notes'
004BB0ED    mov         eax,dword ptr [ebp-0C]
004BB0F0    call        TRegistry.OpenKey
004BB0F5    mov         eax,[00617CC0];gvar_00617CC0:TInclureImpression
004BB0FA    mov         eax,dword ptr [eax+8]
004BB0FD    mov         edx,dword ptr [eax]
004BB0FF    call        dword ptr [edx+14]
004BB102    mov         esi,eax
004BB104    sub         esi,1
>	004BB107    jno         004BB10E
004BB109    call        @IntOver
004BB10E    test        esi,esi
>	004BB110    jl          004BB174
004BB112    inc         esi
004BB113    xor         ebx,ebx
004BB115    mov         eax,dword ptr [ebp-4]
004BB118    mov         eax,dword ptr [eax+0C]
004BB11B    cmp         ebx,dword ptr [eax-4]
>	004BB11E    jb          004BB125
004BB120    call        @BoundErr
004BB125    mov         al,byte ptr [eax+ebx]
004BB128    mov         edx,dword ptr ds:[617CC0];gvar_00617CC0:TInclureImpression
004BB12E    mov         edx,dword ptr [edx+0C]
004BB131    cmp         ebx,dword ptr [edx-4]
>	004BB134    jb          004BB13B
004BB136    call        @BoundErr
004BB13B    mov         byte ptr [edx+ebx],al
004BB13E    lea         ecx,[ebp-18]
004BB141    mov         eax,[00617CC0];gvar_00617CC0:TInclureImpression
004BB146    mov         eax,dword ptr [eax+8]
004BB149    mov         edx,ebx
004BB14B    mov         edi,dword ptr [eax]
004BB14D    call        dword ptr [edi+0C]
004BB150    mov         edx,dword ptr [ebp-18]
004BB153    mov         eax,[00617CC0];gvar_00617CC0:TInclureImpression
004BB158    mov         eax,dword ptr [eax+0C]
004BB15B    cmp         ebx,dword ptr [eax-4]
>	004BB15E    jb          004BB165
004BB160    call        @BoundErr
004BB165    mov         cl,byte ptr [eax+ebx]
004BB168    mov         eax,dword ptr [ebp-0C]
004BB16B    call        TRegistry.WriteBool
004BB170    inc         ebx
004BB171    dec         esi
>	004BB172    jne         004BB115
004BB174    mov         eax,dword ptr [ebp-0C]
004BB177    call        TRegistry.CloseKey
004BB17C    mov         eax,dword ptr [ebp-0C]
004BB17F    call        TObject.Free
>	004BB184    jmp         004BB261
004BB189    mov         dl,1
004BB18B    mov         eax,[00490114];TRegistry
004BB190    call        TRegistry.Create;TRegistry.Create
004BB195    mov         dword ptr [ebp-10],eax
004BB198    mov         edx,80000001
004BB19D    mov         eax,dword ptr [ebp-10]
004BB1A0    call        TRegistry.SetRootKey
004BB1A5    mov         edx,4BB324;'Software\Carnet de Notes 2.x\Inclure impression\Bilans'
004BB1AA    mov         eax,dword ptr [ebp-10]
004BB1AD    call        TRegistry.KeyExists
004BB1B2    test        al,al
>	004BB1B4    je          004BB1C3
004BB1B6    mov         edx,4BB324;'Software\Carnet de Notes 2.x\Inclure impression\Bilans'
004BB1BB    mov         eax,dword ptr [ebp-10]
004BB1BE    call        TRegistry.DeleteKey
004BB1C3    mov         cl,1
004BB1C5    mov         edx,4BB324;'Software\Carnet de Notes 2.x\Inclure impression\Bilans'
004BB1CA    mov         eax,dword ptr [ebp-10]
004BB1CD    call        TRegistry.OpenKey
004BB1D2    mov         eax,[00617CC4];gvar_00617CC4:TInclureImpression
004BB1D7    mov         eax,dword ptr [eax+8]
004BB1DA    mov         edx,dword ptr [eax]
004BB1DC    call        dword ptr [edx+14]
004BB1DF    mov         esi,eax
004BB1E1    sub         esi,1
>	004BB1E4    jno         004BB1EB
004BB1E6    call        @IntOver
004BB1EB    test        esi,esi
>	004BB1ED    jl          004BB251
004BB1EF    inc         esi
004BB1F0    xor         ebx,ebx
004BB1F2    mov         eax,dword ptr [ebp-4]
004BB1F5    mov         eax,dword ptr [eax+0C]
004BB1F8    cmp         ebx,dword ptr [eax-4]
>	004BB1FB    jb          004BB202
004BB1FD    call        @BoundErr
004BB202    mov         al,byte ptr [eax+ebx]
004BB205    mov         edx,dword ptr ds:[617CC4];gvar_00617CC4:TInclureImpression
004BB20B    mov         edx,dword ptr [edx+0C]
004BB20E    cmp         ebx,dword ptr [edx-4]
>	004BB211    jb          004BB218
004BB213    call        @BoundErr
004BB218    mov         byte ptr [edx+ebx],al
004BB21B    lea         ecx,[ebp-1C]
004BB21E    mov         eax,[00617CC4];gvar_00617CC4:TInclureImpression
004BB223    mov         eax,dword ptr [eax+8]
004BB226    mov         edx,ebx
004BB228    mov         edi,dword ptr [eax]
004BB22A    call        dword ptr [edi+0C]
004BB22D    mov         edx,dword ptr [ebp-1C]
004BB230    mov         eax,[00617CC4];gvar_00617CC4:TInclureImpression
004BB235    mov         eax,dword ptr [eax+0C]
004BB238    cmp         ebx,dword ptr [eax-4]
>	004BB23B    jb          004BB242
004BB23D    call        @BoundErr
004BB242    mov         cl,byte ptr [eax+ebx]
004BB245    mov         eax,dword ptr [ebp-10]
004BB248    call        TRegistry.WriteBool
004BB24D    inc         ebx
004BB24E    dec         esi
>	004BB24F    jne         004BB1F2
004BB251    mov         eax,dword ptr [ebp-10]
004BB254    call        TRegistry.CloseKey
004BB259    mov         eax,dword ptr [ebp-10]
004BB25C    call        TObject.Free
004BB261    xor         eax,eax
004BB263    pop         edx
004BB264    pop         ecx
004BB265    pop         ecx
004BB266    mov         dword ptr fs:[eax],edx
004BB269    push        4BB283
004BB26E    lea         eax,[ebp-1C]
004BB271    mov         edx,3
004BB276    call        @LStrArrayClr
004BB27B    ret
>	004BB27C    jmp         @HandleFinally
>	004BB281    jmp         004BB26E
004BB283    pop         edi
004BB284    pop         esi
004BB285    pop         ebx
004BB286    mov         esp,ebp
004BB288    pop         ebp
004BB289    ret*}
end;

//004BB35C
function GetcolonnesBilanDetaillees:boolean;
begin
 result := GetValueRegBool('colonnesBilanDetaillees',false{,0});
end;

///004BB38C
procedure SetcolonnesBilanDetaillee(a:Boolean);
begin//0
  //004BB38C
  SetValueRegBool('colonnesBilanDetaillees', a{,false});
end;//0


//004BB3BC
procedure SettrierMoyennesImpression(a:Integer);
begin//0
  //004BB3BC
  SetValueRegInt('trierMoyennesImpression', a, False);
end;//0


//004BB3F0
function GettrierMoyennesImpression:byte;
begin
  result := GetValueRegInt('trierMoyennesImpression',0,false);

end;

//004BB42C
procedure SetcolorationGrille(a:Boolean);
begin//0
  //004BB42C
  SetValueRegBool('colorationGrille', a{,false});
end;//0


//004BB458
function GetColorationGrille:Boolean;
begin
 result:= GetValueRegBool('colorationGrille', true);
end;

//004BB484
procedure SetAfficherBarreOutils(a:Boolean);
begin//0
  //004BB484
  SetValueRegBool('afficherBarreOutils', a{,false});
end;//0

//004BB4B0
procedure SetTailleMaximumAuDemarrage(a:Boolean);
begin//0
  SetValueRegBool('tailleMaximumAuDemarrage', a{,false});
end;//0

//004BB4E4
procedure SetAfficherHeure(a:Boolean);
begin//0
  SetValueRegBool('afficherHeure', a{,false});
end;//0


//004BB50C
procedure SetAfficherDate(a:Boolean);
begin//0
  SetValueRegBool('afficherDate', a{,false});
end;//0

//004BB534
procedure SetAuDemarrage(a:Integer);
begin
	SetValueRegInt('auDemarrage',a ,true);
end;

//004BB55C
function GetAfficherBarreOutils:boolean;
begin//0
 result := GetValueRegBool('afficherBarreOutils', true{,0});
end;//0


//004BB588
function GetTailleMaximumAuDemarrage:boolean;
begin//0
 result := GetValueRegBool('tailleMaximumAuDemarrage', true {,1});
end;//0


//004BB5BC
function GetAfficherHeure:boolean;
begin//0
 result := GetValueRegBool('afficherHeure', true {,0});
end;//0


//004BB5E4
function GetAfficherDate:boolean;
begin//0
 result := GetValueRegBool('afficherDate', true{,false});
end;//0

//004BB60C
function GetAuDemarrage:dword;
begin//0
 result := GetValueRegInt('auDemarrage', 0, true);
end;//0

//004BB63C
procedure SetRappelSauvegarde(a:Boolean);
begin
  SetValueRegBool('rappelSauvegarde', a{, true});
end;

//004BB668
function GetRappelSauvegarde:boolean;
begin//0
 Result := GetValueRegBool('rappelSauvegarde', true{,true});
end;//0


//004BB694
procedure SetRappelMiseAJourDisponible(a:Boolean);
begin//0
  SetValueRegBool('rappelMiseAJourDisponible', a{,true});
end;//0


//004BB6C8
function GetRappelMiseAJourDisponible:boolean;
begin//0
 result := GetValueRegBool('rappelMiseAJourDisponible', true{,1});
end;//0


//004BB6FC
procedure SetFrequenceRappel(a:Integer);
begin
 SetValueRegInt('frequenceRappel', a, true);
end;

//004BB728
function GetFrequenceRappel:dword;
begin//0
 result := GetValueRegInt('frequenceRappel', 0, true);
end;//0

//004BB75C
function GetNumeroRappel:dword;
begin//0
 result := GetValueRegInt('numeroRappel', 1, true);
end;//0

//end;

//004BB790
procedure SetNumeroRappel(x:dword);
begin//0
 SetValueRegInt('numeroRappel', x,true);
end;//0


//004BB7BC
procedure SetOngletClasses(a:Integer);
begin//0
  SetValueRegInt('ongletClasses', a, False);
end;//0


//004BB7E8
function GetOngletClasses:dword;
begin//0
 result := GetValueRegInt('ongletClasses', 1, false);
end;//0

//end;

//004BB81C
procedure SetAfficherOngletsClasses(a:Boolean);
begin//0
  SetValueRegBool('afficherOngletsClasses', a{,false});
end;//0


//004BB84C
function GetAfficherOngletsClasses:boolean;
begin//0
 result := GetValueRegBool('afficherOngletsClasses', true{,0});
end;//0


//004BB87C
function GetcouleurFenetreInfo:TColor;
begin//0
 result := GetValueRegColor('couleurFenetreInfo', sub_004BB8AC{,0});
end;//0

//004BB8AC
function sub_004BB8AC:TColor;
begin
	result := $0C8FFC8;
end;

//004BB8B4
procedure SetCouleurFenetreInfo(a:TColor);
begin//0
  SetValueRegColor_('couleurFenetreInfo', a{,false});
end;//0


//004BB8E0
procedure SetafficherFenetreInfo(a:Boolean);
begin//0
  SetValueRegBool('afficherFenetreInfo', a{,false});
end;//0


//004BB90C
procedure SetAfficherR(a:Boolean);
begin//0
  SetValueRegBool('afficherR', a{,false});
end;//0


//004BB930
function GetAfficherFenetreInfo:boolean;
begin//0
 Result := GetValueRegBool('afficherFenetreInfo', true{,0});
end;//0


//004BB95C
function GetAfficherR:Boolean;
begin//0
 Result := GetValueRegBool('afficherR', true{,0});
end;//0


//004BB980
procedure SetAfficherDatesDeNaissance(a:Boolean);
begin//0
  SetValueRegBool('afficherDatesDeNaissance', a{,false});
end;//0


//004BB9B4
function GetAfficherDatesDeNaissance:Boolean;
begin//0
 Result := GetValueRegBool('afficherDatesDeNaissance', true{,0});
end;//0


//004BB9E8
procedure Setgraphe3D(a:Boolean);
begin//0
 SetValueRegBool('graphe3D', a {,0});
end;//0


//004BBA0C
function Getgraphe3D:boolean;
begin//0
 result := GetValueRegBool('graphe3D', true{,0});
end;//0


//004BBA30
procedure SetgrapheDegrade(a:Boolean);
begin//0
 SetValueRegBool('grapheDegrade', a{,0});
end;//0


//004BBA58
procedure SetgrapheEnCouleur(a:Boolean);
begin//0
 SetValueRegBool('grapheEnCouleur', a{,0});
end;//0


//004BBA80
function GetGrapheDegrade:boolean;
begin//0
 result := GetValueRegBool('grapheDegrade', true{,0});
end;//0


//004BBAA8
function GetGrapheEnCouleur:boolean;
begin//0
 result := GetValueRegBool('grapheEnCouleur', true{,0});
end;//0


//004BBAD0
procedure SetGrapheLegende(a:Boolean);
begin//0
 SetValueRegBool('grapheLegende', a{,0});
end;//0

//004BBAF8
function GetGrapheLegende:boolean;
begin//0
 result := GetValueRegBool('grapheLegende', true{,0});
end;//0

//004BBB20
procedure SetcouleurDebutDegrade(a:TColor);
begin//0
  //004BBB20
  SetValueRegColor_('couleurDebutDegrade', a{,false});
end;//0

//004BBB4C
procedure SetcouleurFinDegrade(a:TColor);
begin//0
  SetValueRegColor_('couleurFinDegrade', a{,false});
end;//0


//004BBB78
function GetcouleurDebutDegrade:TColor;
begin//0
  result := GetValueRegColor('couleurDebutDegrade', sub_004BBBD8);
end;//0


//004BBBA8
function GetcouleurFinDegrade:TColor;
begin//0
  result := GetValueRegColor('couleurFinDegrade', sub_004BBBE0);
end;//0

//004BBBD8
function sub_004BBBD8:TColor;
begin
	result := $0FFFF80;
end;

//004BBBE0
function sub_004BBBE0:TColor;
begin
	result := $0FF8080;
end;

//004BBBE8
procedure SetcouleurEleve(a:TColor);
begin//0
  SetValueRegColor_('couleurEleve', a{,false});
end;//0


//004BBC10
procedure SetcouleurMax(a:TColor);
begin//0
  SetValueRegColor_('couleurMax', a{,false});
end;//0

//004BBC34
procedure SetcouleurMin(a:TColor);
begin//0
  SetValueRegColor_('couleurMin', a{,false});
end;//0


//004BBC58
procedure SetcouleurMoyenne(a:TColor);
begin//0
  SetValueRegColor_('couleurMoyenne', a{,false});
end;//0


//004BBC80
function GetCouleurEleve:TColor;
begin//0
 result := GetValueRegColor('couleurEleve',  sub_004BBCAC{,0});
end;//0


//004BBCAC
function sub_004BBCAC:TColor;
begin
	result := $0FFFF;
end;

//004BBCB4
function GetcouleurMax:TColor;
begin
 result := GetValueRegColor('couleurMax',  sub_004BBCDC{,0});
end;

//004BBCDC
function sub_004BBCDC:TColor;
begin
result := $0FF0000;
end;

//004BBCE4
function GetCouleurMin:TColor;
begin
result := GetValueRegColor('couleurMin',sub_004BBD0C{,0});
end;

//004BBD0C
function sub_004BBD0C:TColor;
begin
 result := $0FF;
end;

//004BBD14
function sub_004BBD14:TColor;
begin//0
 result := GetValueRegColor('couleurMoyenne',sub_004BBD40{,0});
end;//0


//004BBD40
function sub_004BBD40:TColor;
begin
	result := $80FF80;
end;

//004BBD48
procedure SetCouleurMurBas(a:TColor);
begin//0
  SetValueRegColor_('couleurMurBas', a{,false});
end;//0


//004BBD70
function GetCouleurMurBas:TColor;
begin
 result := GetValueRegColor('couleurMurBas',sub_004BBD9C);
end;

//004BBD9C
function sub_004BBD9C:TColor;
begin
	result := $0FFFFFF;
end;

//004BBDA4
procedure SetCouleurMurGauche(a:TColor);
begin//0
  SetValueRegColor_('couleurMurGauche', a{,false});
end;//0


//004BBDD0
function sub_004BBDD0:TColor;
begin
	result := $0FFFFFF;
end;

//004BBDD8
procedure SetGrapheLigneEleve(a:Boolean);
begin//0
 SetValueRegBool('grapheLigneEleve', a{,0});
end;//0


//004BBE04
procedure SetGrapheLigneMax(a:Boolean);
begin//0
 SetValueRegBool('grapheLigneMax', a{,0});
end;//0


//004BBE2C
procedure SetGrapheLigneMin__(a:Boolean);
begin//0
 SetValueRegBool('grapheLigneMin', a{,0});
end;//0


//004BBE54
procedure SetGrapheLigneMoyenne(a:Boolean);
begin
SetValueRegBool('grapheLigneMoyenne', a{,0});
end;

//004BBE80
function GetGrapheLigneEleve:boolean;
begin//0
 //004BBE80
 result := GetValueRegBool('grapheLigneEleve', true{,0});
end;//0

//004BBEAC
function GetGrapheLigneMax:boolean;
begin//0
 //004BBEAC
 result := GetValueRegBool('grapheLigneMax', true{,0});
end;//0

//004BBED4
function GetGrapheLigneMin:boolean;
begin//0
 result := GetValueRegBool('grapheLigneMin', true{,0});
end;//0


//004BBEFC
function GetgrapheLigneMoyenne:boolean;
begin
result := GetValueRegBool('grapheLigneMoyenne', true{,0});
end;

//004BBF28
procedure SetOngletsGraphes_(a:Integer);
begin//0
  SetValueRegInt('ongletsGraphes', a, False);
end;//0

//004BBF54
function GetOngletsGraphes_:dword;
begin//0
 //004BBF54
 result := GetValueRegInt('ongletsGraphes', 0, false);
end;//0

//004BBF88
procedure SetimpressionCouleurNote_(a:Boolean);
begin
  SetValueRegBool('impressionCouleurNote',a{,0});
end;

//004BBFB8
function GetimpressionCouleurNote_:boolean;
begin
 result := GetValueRegBool('impressionCouleurNote',false{,false});
end;

//004BBFE8
procedure SetnumeroterElevesGrilleVierge(a:Boolean);
begin//0
  SetValueRegBool('numeroterElevesGrilleVierge', a{,false});
end;//0


//004BC01C
function GetnumeroterElevesGrilleVierge:boolean;
begin
 result := GetValueRegBool('numeroterElevesGrilleVierge',true{,0});
end;

//004BC050
procedure SetLargeurGrilleVierge(a:Integer);
begin//0
  //004BC050
  SetValueRegInt('largeurGrilleVierge', a, False);
end;//0


//004BC080
function GetlargeurGrilleVierge:byte;
begin
 result := GetValueRegInt('largeurGrilleVierge',10,false);
end;

//004BC0B8
procedure SetimpressionColonneMoyenne(a:Boolean);
begin//0
  //004BC0B8
  SetValueRegBool('impressionColonneMoyenne', a {, false});
end;//0


//004BC0EC
function GetimpressionColonneMoyenne:boolean;
begin
  result := GetValueRegBool('impressionColonneMoyenne',false{,0});
end;

//004BC120
procedure SetimpressionColonneClassement(a:Boolean);
begin//0
  //004BC120
  SetValueRegBool('impressionColonneClassement', a{,false});
end;//0


//004BC154
procedure SetImpressionMoyennesEcritOral(a:Boolean);
begin//0
  SetValueRegBool('impressionMoyennesEcritOral', a{,false});
end;//0


//004BC188
function GetimpressionMoyennesEcritOral:boolean;
begin
result := GetValueRegBool('impressionMoyennesEcritOral',true{,false});
end;

//004BC1BC
function GetImpressionColonneClassement:boolean;
begin
  result := GetValueRegBool('impressionColonneClassement',true{,false});
end;

//004BC1F0
procedure SetNumeroterElevesAppreciations(a:Boolean);
begin//0
  SetValueRegBool('numeroterElevesAppreciations', a{,false});
end;//0


//004BC228
function GetNumeroterElevesAppreciations:boolean;
begin
	result:= GetValueRegBool('numeroterElevesAppreciations',true{,0});
end;

//004BC260
procedure SetArrondirMoyennesAnnuelles(a:Integer);
begin//0
  //004BC260
  SetValueRegInt('arrondirMoyennesAnnuelles', a, False);
end;//0

//004BC298
function GetArrondirMoyennesAnnuelles:dword;
begin//0
 //004BC298
 result := GetValueRegInt('arrondirMoyennesAnnuelles', 0, false);
end;//0

//004BC2D8
procedure SetTypeMoyennesAnnuelles(a:Integer);
begin//0
  SetValueRegInt('typeMoyennesAnnuelles', a, False);
end;//0


//004BC30C
function GettypeMoyennesAnnuelles:dword;
begin//0
 result := GetValueRegInt('typeMoyennesAnnuelles', 0, false);
end;//0


//004BC348
function GetMatieres:TStringList;
var
  StringList : TStringList;
  Registry : TRegistry;
begin//0
  //004BC348
  StringList := TStringList.Create;
  StringList.Sorted := True;
  Registry := TRegistry.Create;
  Registry.RootKey:= HKEY_CURRENT_USER;
  if (Registry.KeyExists('Software\Carnet de Notes 2.x\Matieres')) then
  begin//1
    //004BC38B
    Registry.OpenKey('Software\Carnet de Notes 2.x\Matieres', True);
    Registry.GetValueNames(StringList);
    Registry.CloseKey;
  end//1
  else
  begin//1
    //004BC3AB
    StringList := GetDefaultMatieres;
  end;//1
  Registry.Free;
  result := StringList;
end;

//004BC3F0
function GetDefaultMatieres:TStringlist;
var
  Registry:TRegistry;
  Stringlist:TStringlist;
begin//0
  //004BC3F0
  Registry := TRegistry.Create;
  Registry.RootKey:=HKEY_CURRENT_USER;
  if (Registry.KeyExists('Software\Carnet de Notes 2.x\Matieres')) then
  begin//1
    //004BC41B
    Registry.DeleteKey('Software\Carnet de Notes 2.x\Matieres');
  end;//1
  Registry.Free;
  StringList := TStringList.Create;
  StringList.Sorted:=True;
  StringList.Add('Allemand');
  StringList.Add('Anglais');
  StringList.Add('Arts Plastiques');
  StringList.Add('E.P.S');
  StringList.Add('Espagnol');
  StringList.Add('Français');
  StringList.Add('Grec');
  StringList.Add('Histoire - Géographie');
  StringList.Add('Latin');
  StringList.Add('Mathématiques');
  StringList.Add('Musique');
  StringList.Add('S.E.S');
  StringList.Add('Sciences de la Vie et de la Terre');
  StringList.Add('Sciences Physiques');
  StringList.Add('Tahitien');
  StringList.Add('Technologie');
  result := StringList;//EBX
end;//0

//004BC698
procedure SetMatieres(a:TStrings);
var
  Registry : TRegistry;
  I:integer;
begin//0
  //004BC698
    //004BC6B7
    Registry := TRegistry.Create;
    Registry.RootKey :=  HKEY_CURRENT_USER;
    if (Registry.KeyExists('Software\Carnet de Notes 2.x\Matieres')) then//004BC6E1
      Registry.DeleteKey('Software\Carnet de Notes 2.x\Matieres');

    Registry.OpenKey('Software\Carnet de Notes 2.x\Matieres', True);
      for I := 0 to a.Count - 1 do//004BC713
      begin//3
        //004BC71B
        Registry.WriteString(a[I], '');
      end;//3
    Registry.CloseKey;
    Registry.Free;
    //004BC756
end;//0


//004BC7A0
procedure AddToMenu1(a:TMainMenu; b:TStrings; c:dword; d:pointer; e:TNotifyEvent; f:pointer; g:TNotifyEvent; h:pointer; k:TNotifyEvent);
var
  I:integer;
  MItm:TMenuItem;
begin//0
  //004BC7A0
    //004BC7CB
    if (b.Count <> 0) then
    begin//2
      //004BC7DB
        for I := 0 to b.Count - 1 do//004BC804
        begin//4
          //004BC809
          MItm := TMenuItem.Create(Nil);
          MItm.Caption := b[I];
          MItm.OnClick := e;
          //MItm.f84 := d;
          a.Items.Items[c].Items[0].Insert(a.Items.Items[c].Items[0].Count, MItm);
        end;//4
        
        for I := 0 to b.Count - 1 do//004BC8AF
        begin//4
          //004BC8B4
          MItm := TMenuItem.Create(Nil);
          MItm.Caption := b[I];
          MItm.OnClick := g;
         // MItm.f84 := f;
          a.Items.Items[c].Items[1].Insert(a.Items.Items[c].Items[1].Count, MItm);
        end;//4
      MItm := TMenuItem.Create(Nil);
      MItm.Caption := 'Sur l''année';
      MItm.OnClick := g;
      //MItm.f84 := f;
     // EAX := a.Items.Items[c].Count;
      a.Items.Items[c].Items[1].Insert(a.Items.Items[c].Items[1].Count, MItm);
        
        for I := 0 to b.Count - 1 do//004BC9D3
        begin//4
          //004BC9D8
          MItm := TMenuItem.Create(Nil);
          MItm.Caption := b[I];
          MItm.OnClick := k;
          //MItm.f84 := h;
          a.Items.Items[c].Items[2].Insert(a.Items.Items[c].Items[2].Count, MItm);
        end;//4
      end;//3
    //004BCA6C
end;//0

//004BCAA0
procedure AddToMenu2(a:TMainMenu; b:dword; c:dword; d:TObject; z:TNotifyEvent);
var
  MnItm : TMenuItem;
  I :integer;
  lvar_C:TStringlist;
begin//0
    lvar_C := GetDrives_;
    if (lvar_C.count <> 0) then
    begin//2
      //004BCADD
        for I := 1 to lvar_C.count - 1 do//004BCB03
        begin//4
          //004BCB09
          MnItm := TMenuItem.Create(Nil);
          MnItm.Caption := 'lecteur ' + lvar_C[I] + ':';
          MnItm.OnClick := z;
         // MnItm.f84 := d;
          MnItm.Tag := I;
          a.Items.Items[0].Items[b].Insert(I, MnItm);
        end;//4
      end;//3
    //004BCB9E
end;//0

//004BCBDC
procedure SetDerniersfichiers(StringList:TStringList);
var
Registry : TRegistry;
I:integer;
begin//0
 //004BCBDC
   //004BCBFA
   Registry := TRegistry.Create;
   Registry.RootKey := HKEY_CURRENT_USER;
   if (Registry.KeyExists('Software\Carnet de Notes 2.x\Derniers fichiers')) then//004BCC27
	 Registry.DeleteKey('Software\Carnet de Notes 2.x\Derniers fichiers');
   Registry.OpenKey('Software\Carnet de Notes 2.x\Derniers fichiers', True);
	 for I := 0 to StringList.Count - 1 do//004BCC5B
	   if (FileExists(StringList[I]) ) then 
	   Registry.WriteString(LowerCase(StringList[I]), '');
   Registry.CloseKey;
   Registry.Free;
end;//0

//004BCD14
function GetDerniersfichiers:TStringlist;
var
 StringList : TStringList;
 Registry : TRegistry;
begin//0
 StringList := TStringList.Create;
 Registry := TRegistry.Create;
 Registry.RootKey := HKEY_CURRENT_USER;
 if (Registry.KeyExists('Software\Carnet de Notes 2.x\Derniers fichiers') ) then
 begin//1
   //004BCD4E
   Registry.OpenKey('Software\Carnet de Notes 2.x\Derniers fichiers', True);
   Registry.GetValueNames(StringList);
 end;//1
 Registry.CloseKey;
 Registry.Free;
 result := StringList;
end;//0

//004BCDB0
function GetAfficherNomEnseignantOnglets:boolean;
begin//0
 result := GetValueRegBool('afficherNomEnseignantOnglets', false{,0});
end;//0

//004BCDE8
procedure SetAfficherNomEnseignantOnglets(a:Boolean);
begin
   SetValueRegBool('afficherNomEnseignantOnglets',a{,0});
end;

//004BCE20
function GetAfficherMatiereOnglets:boolean;
begin//0
 result := GetValueRegBool('afficherMatiereOnglets', false{,0});
end;//0

//004BCE50
procedure SetAfficherMatiereOnglets(a:Boolean);
begin
 SetValueRegBool('afficherMatiereOnglets',a{,0});
end;

//004BCE80
function GetNomsbulletins:TStringlist;
var 
  StrList :TStringList;
  Registry : TRegistry;
begin//0
  //004BCE80
  StrList := TStringList.Create;
  Registry := TRegistry.Create;
  Registry.RootKey := HKEY_CURRENT_USER;
  if (Registry.KeyExists('Software\Carnet de Notes 2.x\Noms bulletins')) then
  begin//1
    //004BCEBB
    Registry.OpenKey('Software\Carnet de Notes 2.x\Noms bulletins', True);
    Registry.GetValueNames(StrList);
    Registry.CloseKey;
  end;//1
  StrList.Insert(0, 'Bulletins par défaut');
  StrList.Insert(1, 'Nouveaux bulletins du collège');
  Registry.Free;
  result := StrList;//ESI
end;//0

//004BCF84
function GetNomsbulletins_xx(a:String):TStringList;
var
Registry: TRegistry;
StringList : TStringList;
begin//0
   StringList := TStringList.Create;
   Registry := TRegistry.Create;
   Registry.RootKey := HKEY_CURRENT_USER;
   if (Registry.KeyExists('Software\Carnet de Notes 2.x\Noms bulletins\' + a + '\noms')) then
   begin//004BCFF8
	 Registry.OpenKey('Software\Carnet de Notes 2.x\Noms bulletins\' + a + '\noms', True);
	 Registry.GetValueNames(StringList);
	 Registry.CloseKey;
   end//2
   else
   begin//004BD030
	 if (a = 'Bulletins par défaut') then
	 begin//004BD03F
	   StringList.Add('Appréciations');
	 end//3
	 else
	 begin//004BD04D
	   if (a = 'Nouveaux bulletins du collège') then
	   begin//004BD05C
		 StringList.Add('Appréciations générales');
		 StringList.Add('Progrès et efforts');
		 StringList.Add('Conseils pour progresser');
	   end;//4
	 end;//3
   end;//2
   Registry.Free;
 result := StringList;//ESI
end;//0

function GetImpressionDatesDeNaissanceSeriesDeNotes:boolean;
begin
 GetValueRegBool('impressionDatesDeNaissanceSeriesDeNotes',true{,0});

end;
//004BD1FC
function GetImpressionDatesDeNaissanceBilans:boolean;
begin
	GetValueRegBool('impressionDatesDeNaissanceBilans',true{,0});
end;

//004BD238
function GetImpressionDatesDeNaissanceAppreciations:boolean;
begin
	GetValueRegBool('impressionDatesDeNaissanceAppreciations',true{,0});
end;

//004BD278
function GetImpressionDatesDeNaissanceGrilleVierge:boolean;
begin
	GetValueRegBool('impressionDatesDeNaissanceGrilleVierge',true{,0});
end;

//004BD2B8
procedure SetImpressionDatesDeNaissanceSeriesDeNotes(a:Boolean);
begin
	SetValueRegBool('impressionDatesDeNaissanceSeriesDeNotes',a{,0});
end;

//004BD2F8
procedure SetImpressionDatesDeNaissanceBilans(a:Boolean);
begin
   SetValueRegBool('impressionDatesDeNaissanceBilans',a{,0});
end;

//004BD334
procedure SetImpressionDatesDeNaissanceAppreciations(a:Boolean);
begin
   SetValueRegBool('impressionDatesDeNaissanceAppreciations',a{,0});
end;

//004BD374
procedure SetImpressionDatesDeNaissanceGrilleVierge(a:Boolean);
begin
   SetValueRegBool('impressionDatesDeNaissanceGrilleVierge',a{,0});
end;

//004BD3B4
procedure GetBasDePageGauche(var a:string);
begin//0
 //004BD3B4
 GetValueRegString('basDePageGauche', '', '\Options', a);
end;//0

//004BD3FC
procedure GetBasDePageDroite(var a:string);
begin//0
 GetValueRegString('basDePageDroite', '', '\Options', a);
end;//0

//004BD444
procedure GetEnTeteGauche(var a:string);
begin//0
 GetValueRegString('enTeteGauche', '', '\Options', a);
end;//0

//004BD48C
procedure GetEnTeteCentre(var a:string);
begin//0
 GetValueRegString('enTeteCentre', '', '\Options', a);
end;//0

//004BD4D4
procedure GetEnTeteDroite(var a:string);
begin//0
 //004BD4D4
 GetValueRegString('enTeteDroite', '', '\Options', a);
end;//0

//004BD51C
procedure SetBasDePageGauche(a:string);
begin//0
  //004BD51C
    SetValueRegString('basDePageGauche', a, '\Options');
end;//0

//004BD59C
procedure SetBasDePageDroite(a:string);
begin//0
    SetValueRegString('basDePageDroite', a, '\Options');
end;//0

//004BD61C
procedure SetEnTeteGauche(a:string);
begin//0
    SetValueRegString('enTeteGauche', a, '\Options');
end;//0

//004BD69C
procedure SetEnTeteCentre(a:string);
begin//0
    SetValueRegString('enTeteCentre', a, '\Options');
end;//0

//004BD71C
procedure SetEnTeteDroite(a:string);
begin//0
    SetValueRegString('enTeteDroite', a, '\Options');
end;//0

///004BD79C
function GetTaillePolice:byte;
begin
 result := GetValueRegInt('taillePolice',9,false);
end;

///004BD7D0
function GetNomPolice():string;
begin
  GetValueRegString('nomPolice','Times New Roman','\Options',result{,0});
end;

//004BD82C
procedure SetTaillePolice(a:Integer);
begin//0
  SetValueRegInt('taillePolice', a, False);
end;//0


//004BD858
procedure SetNomPolice(a:string);
begin//0
    SetValueRegString('nomPolice', a, '\Options');
end;//0

//004BD8D4
procedure SetImpressionFermerBoite(a:Boolean);
begin//0
  SetValueRegBool('impressionFermerBoite', a{,false});
end;//0


//004BD904
function GetImpressionFermerBoite:boolean;
begin//0
 result := GetValueRegBool('impressionFermerBoite', true{,0});
end;//0


//004BD934
procedure SetImpressionRSeriesDeNotes(a:Boolean);
begin
 SetValueRegBool('impressionRSeriesDeNotes',a{,0});
end;

//004BD968
procedure SetImpressionRBilans(a:Boolean);
begin
 SetValueRegBool('impressionRBilans',a{,0});
end;

//004BD994
procedure SetImpressionRAppreciations(a:Boolean);
begin
 SetValueRegBool('impressionRAppreciations',a{,0});
end;

//004BD9C8
procedure SetImpressionRGrilleVierge(a:Boolean);
begin
 SetValueRegBool('impressionRGrilleVierge',a{,0});
end;

//004BD9F8
function GetImpressionRSeriesDeNotes:boolean;
begin
result := GetValueRegBool('impressionRSeriesDeNotes', true{,0});
end;

//004BDA2C
function GetImpressionRBilans:boolean;
begin
result := GetValueRegBool('impressionRBilans', true{,0});
end;

//004BDA58
function GetImpressionRAppreciations:boolean;
begin
result := GetValueRegBool('impressionRAppreciations', true{,0});
end;

//004BDA8C
function GetimpressionRGrilleVierge:boolean;
begin
result := GetValueRegBool('impressionRGrilleVierge', true{,0});
end;
INITIALIZATION
Finalization
  SetHistorique(GetHistorique);
end.