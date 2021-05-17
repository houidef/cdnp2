{***************************************
* Version Original V0.01
* Decompiled by Houidef AEK v 13:31 dimanche 02 Mars 2021
***************************************}
unit Unit111;

interface

uses
Forms, Windows,  SysUtils, Classes, Graphics, Menus, URegistry,Registry,UInclureImpression,Constantes,Dialogs;

	procedure AddHistorique(a:AnsiString);//004B901C
	procedure DeleteFromMainMenu(MainMenu:TMainMenu; ItemIndex:dword);//004B90CC
	procedure _AddToMainMenu(MainMenu:TMainMenu; ItemIndex:dword; {c:dword;} DrawItem:TMenuDrawItemEvent; Click:TNotifyEvent);//004B91F0
	function GetutiliserHistorique:boolean;//004B9410
	procedure SetutiliserHistorique(a:Boolean);//004B943C
	function GetnbFichiersHistorique:dword;//004B9468 nbFichiersHistorique
	procedure SetnbFichiersHistorique(a:Int64);//004B94A4
	procedure AddToMainMenuWithDelete(MainMenu:TMainMenu; ItemIndex:dword; DrawItem:TMenuDrawItemEvent; Click:TNotifyEvent);//004B94D8
	function HistoriqueList:TStringList;//sub_004B9500
	procedure SetHistorique(a:TStrings);//004B964C
	function GetTypesdenotes:TStringList;//004B9794
	function _GetTypesdenotes:TStringlist;//004B9840
	procedure SetTypesdenotes(a:TStrings);//004B9938
	function GetPeriodes:TStringList;//004B9A44
	function _GetPeriodes:TStringList;//004B9B44
	procedure SetlignesImpaires(a:TColor);//004B9BBC
	procedure SetColorlignesPaires(a:TColor);//004B9BF8
	function GetColorlignesImpaires:TColor;//004B9C34
	function GetColorlignesPaires:TColor;//004B9C80
	function sub_004B9CCC:TColor;//004B9CCC
	function sub_004B9CD4:TColor;//004B9CD4
	function sub_004B9CDC:TColor;//004B9CDC
	procedure SetcouleurSelection(a:TColor);//004B9CE4
	function GetcouleurSelection:TColor;//004B9D24
	procedure SetarrondirMoyennes(a:Integer);//004B9D74
	procedure SetmoyennesSur(a:Integer);//004B9DA4
	procedure SettrierMoyennes(a:Integer);//004B9DE4
	function GetarrondirMoyennes:integer;//004B9E10
	function GetmoyennesSur:integer;//004B9E48
	function GettrierMoyennes:dword;//004B9EA0
	procedure SetmoyenneParTypeDeNotes(a:Boolean);//004B9ED4
	procedure SetmoyennesEcritEtOral(a:Boolean);//004B9F04
	function GetmoyenneParTypeDeNotes:boolean;//004B9F30
	function GetmoyennesEcritEtOral:boolean;//004B9F60
	function _Getcouleur1Note:TColor;//004B9F8C
	function _Getcouleur2Note:TColor;//004B9FD8
	function _Getcouleur3Note:TColor;//004BA024
	function _Getcouleur4Note:TColor;//004BA070
	function _Getcouleur5Note:TColor;//004BA0BC
	function _GetcouleurMurGauche:TColor;//004BA108
	procedure Setcouleur1Note(a:TColor);//004BA138
	procedure Setcouleur2Note(a:TColor);//004BA174
	procedure Setcouleur3Note(a:TColor);//004BA1B0
	procedure Setcouleur4Note(a:TColor);//004BA1EC
	procedure Setcouleur5Note(a:TColor);//004BA228
	function sub_004BA264:TColor;//004BA264
	function sub_004BA26C:TColor;//004BA26C
	function sub_004BA274:TColor;//004BA274
	function sub_004BA27C:TColor;//004BA27C
	function sub_004BA280:TColor;//004BA280
	procedure SetcolorationNote(a:Boolean);//004BA288
	function GetcolorationNote:boolean;//004BA2B0
	procedure SetfichierBak(a:Boolean);//004BA2D8
	function GetfichierBak:boolean;//004BA2FC
	procedure SetongletsGrillesBilans(a:Integer);//004BA320
	procedure SetongletsGrillesNotes(a:Integer);//004BA354
	function GetongletsGrillesBilans:dword;//004BA384
	function GetongletsGrillesNotes:dword;//004BA3C0
	function __GetPeriodes(a:String):TStringlist;//004BA3F8
	procedure __SetPeriodes(a:String; s:TStrings);//004BA7B0
	procedure __SetPeriodes_v(a:String);//004BA964
	function _GetSeriesdenotes(a:dword):TInclureImpression;//004BAA88
	function GetnumeroterElevesSeriesDeNotes:boolean;//004BAEC4
	procedure SetnumeroterElevesSeriesDeNotes(a:Boolean);//004BAEFC
	function GetnumeroterElevesBilans:boolean;//004BAF34
	procedure SetnumeroterElevesBilans(a:Boolean);//004BAF64
	procedure SetSeriesdenotes(a:byte; U:TInclureImpression);//004BAF94
	function GetcolonnesBilanDetaillees:boolean;//004BB35C
	procedure SetcolonnesBilanDetaillee(a:Boolean);//004BB38C
	procedure SettrierMoyennesImpression(a:Integer);//004BB3BC
	function GettrierMoyennesImpression:byte;//004BB3F0
	procedure SetcolorationGrille(a:Boolean);//004BB42C
	function GetcolorationGrille:Boolean;//004BB458
	procedure sub_004BB484(a:Boolean);//004BB484
	procedure sub_004BB4B0(a:Boolean);//004BB4B0
	procedure sub_004BB4E4(a:Boolean);//004BB4E4
	procedure sub_004BB50C(a:Boolean);//004BB50C
	procedure sub_004BB534(a:Integer);//004BB534
	function sub_004BB55C:boolean;//004BB55C
	function GettailleMaximumAuDemarrage:boolean;//004BB588
	function GetafficherHeure:boolean;//004BB5BC
	function sub_004BB5E4:boolean;//004BB5E4
	function sub_004BB60C:dword;//004BB60C
	procedure sub_004BB63C(a:Boolean);//004BB63C
	function sub_004BB668:boolean;//004BB668
	procedure sub_004BB694(a:Boolean);//004BB694
	function sub_004BB6C8:boolean;//004BB6C8
	procedure sub_004BB6FC(a:Integer);//004BB6FC
	function sub_004BB728:dword;//004BB728
	function sub_004BB75C:dword;//004BB75C
	procedure sub_004BB790(x:dword);//004BB790
	procedure sub_004BB7BC(a:Integer);//004BB7BC
	function OngletsClassesStyle:dword;//004BB7E8
	procedure sub_004BB81C(a:Boolean);//004BB81C
	function OngletsClassesVisible:boolean;//004BB84C
	function sub_004BB87C:TColor;//004BB87C
	function sub_004BB8AC:TColor;//004BB8AC
	procedure sub_004BB8B4(a:TColor);//004BB8B4
	procedure SetafficherFenetreInfo(a:Boolean);//004BB8E0
	procedure SetafficherR(a:Boolean);//004BB90C
	function GetafficherFenetreInfo:boolean;//004BB930
	function GetafficherR:Boolean;//004BB95C
	procedure SetafficherDatesDeNaissance(a:Boolean);//004BB980
	function GetafficherDatesDeNaissance:Boolean;//004BB9B4
	procedure Setgraphe3D(a:Boolean);//004BB9E8
	function Getgraphe3D:boolean;//004BBA0C
	procedure SetgrapheDegrade(a:Boolean);//004BBA30
	procedure SetgrapheEnCouleur(a:Boolean);//004BBA58
	function GetgrapheDegrade:boolean;//004BBA80
	function GetgrapheEnCouleur:boolean;//004BBAA8
	procedure SetgrapheLegende(a:Boolean);//004BBAD0
	function GetgrapheLegende:boolean;//004BBAF8
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
	function GetcouleurEleve:TColor;//004BBC80
	function sub_004BBCAC:TColor;//004BBCAC
	function GetcouleurMax:TColor;//004BBCB4
	function sub_004BBCDC:TColor;//004BBCDC
	function GetcouleurMin:TColor;//004BBCE4
	function sub_004BBD0C:TColor;//004BBD0C
	function GetcouleurMoyenne:TColor;//004BBD14
	function sub_004BBD40:TColor;//004BBD40
	procedure SetcouleurMurBas(a:TColor);//004BBD48
	function GetcouleurMurBas:TColor;//004BBD70
	function sub_004BBD9C:TColor;//004BBD9C
	procedure SetcouleurMurGauche(a:TColor);//004BBDA4
	function sub_004BBDD0:TColor;//004BBDD0
	procedure SetgrapheLigneEleve(a:Boolean);//004BBDD8
	procedure SetgrapheLigneMax(a:Boolean);//004BBE04
	procedure SetgrapheLigneMin(a:Boolean);//004BBE2C
	procedure SetgrapheLigneMoyenne(a:Boolean);//004BBE54
	function GetgrapheLigneEleve:boolean;//004BBE80
	function GetgrapheLigneMax:boolean;//004BBEAC
	function GetgrapheLigneMin:boolean;//004BBED4
	function GetgrapheLigneMoyenne:boolean;//004BBEFC
	procedure SetongletsGraphes(a:Integer);//004BBF28
	function GetongletsGraphes:dword;//004BBF54
	procedure SetimpressionCouleurNote(a:Boolean);//004BBF88
	function GetimpressionCouleurNote:boolean;//004BBFB8
	procedure SetnumeroterElevesGrilleVierge(a:Boolean);//004BBFE8
	function GetnumeroterElevesGrilleVierge:boolean;//004BC01C
	procedure SetlargeurGrilleVierge(a:Integer);//004BC050
	function GetlargeurGrilleVierge:byte;//004BC080
	procedure SetimpressionColonneMoyenne(a:Boolean);//004BC0B8
	function GetimpressionColonneMoyenne:boolean;//004BC0EC
	procedure SetimpressionColonneClassement(a:Boolean);//004BC120
	procedure SetimpressionMoyennesEcritOral(a:Boolean);//004BC154
	function GetimpressionMoyennesEcritOral:boolean;//004BC188
	function GetimpressionColonneClassement:boolean;//004BC1BC
	procedure SetnumeroterElevesAppreciations(a:Boolean);//004BC1F0
	function GetnumeroterElevesAppreciations:boolean;//004BC228
	procedure SetarrondirMoyennesAnnuelles(a:Integer);//004BC260
	function GetarrondirMoyennesAnnuelles:dword;//004BC298
	procedure SettypeMoyennesAnnuelles(a:Integer);//004BC2D8
	function GettypeMoyennesAnnuelles:dword;//004BC30C
	function GetMatieres:TStringList;//004BC348
	function _GetMatieres:TStringList;//004BC3F0
	procedure SetMatieres(a:TStrings);//004BC698
	procedure sub_004BC7A0(MainMenu:TMainMenu; tabs:TStringlist; ItemIndex:integer; index1:integer; Event1:TNotifyEvent; index2:integer; Event2:TNotifyEvent; index3:integer; Event3:TNotifyEvent);//004BC7A0
	procedure EventCopierlefichiersurdisquette(MainMenu:TMainMenu; index:integer; c:integer; Event:TNotifyEvent);//004BCAA0
	procedure SetDerniersfichiers(StringList:TStringList);//004BCBDC
	function GetDerniersfichiers:TStringlist;//004BCD14
	function GetafficherNomEnseignantOnglets:boolean;//004BCDB0
	procedure SetafficherNomEnseignantOnglets(a:Boolean);//004BCDE8
	function GetafficherMatiereOnglets:boolean;//004BCE20
	procedure SetafficherMatiereOnglets(a:Boolean);//004BCE50
	function GetNomsbulletins:TStringList;//004BCE80
	function SetNomsbulletins(a:String):TStringList;//004BCF84
	function GetimpressionDatesDeNaissanceSeriesDeNotes:boolean;//004BD1BC
	function GetimpressionDatesDeNaissanceBilans:boolean;//004BD1FC
	function GetimpressionDatesDeNaissanceAppreciations:boolean;//004BD238
	function GetimpressionDatesDeNaissanceGrilleVierge:boolean;//004BD278
	procedure SetimpressionDatesDeNaissanceSeriesDeNotes(a:Boolean);//004BD2B8
	procedure SetimpressionDatesDeNaissanceBilans(a:Boolean);//004BD2F8
	procedure SetimpressionDatesDeNaissanceAppreciations(a:Boolean);//004BD334
	procedure SetimpressionDatesDeNaissanceGrilleVierge(a:Boolean);//004BD374
	procedure sub_004BD3B4(var a:string);//004BD3B4
	procedure sub_004BD3FC(var a:string);//004BD3FC
	procedure sub_004BD444(var a:string);//004BD444
	procedure sub_004BD48C(var a:string);//004BD48C
	procedure sub_004BD4D4(var a:string);//004BD4D4
	//procedure sub_004BD51C(?:?);//004BD51C
	//procedure sub_004BD59C(?:?);//004BD59C
	procedure SetenTeteGauche(value:string);//004BD61C
	procedure SetenTeteCentre(value:string);//004BD69C
	procedure SetenTeteDroite(Value : string);//004BD71C
	function GettaillePolice:byte;//004BD79C
	procedure GetnomPolice(var a:string);//004BD7D0
	procedure SettaillePolice(a:Integer);//004BD82C
	procedure SetnomPolice(value:string);//004BD858
	procedure SetimpressionFermerBoite(a:Boolean);//004BD8D4
	function GetimpressionFermerBoite:boolean;//004BD904
	procedure SetimpressionRSeriesDeNotes(a:Boolean);//004BD934
	procedure SetimpressionRBilans(a:Boolean);//004BD968
	procedure SetimpressionRAppreciations(a:Boolean);//004BD994
	procedure SetimpressionRGrilleVierge(a:Boolean);//004BD9C8
	function GetimpressionRSeriesDeNotes:boolean;//004BD9F8
	function GetimpressionRBilans:boolean;//004BDA2C
	function GetimpressionRAppreciations:boolean;//004BDA58
	function GetimpressionRGrilleVierge:boolean;//004BDA8C
    var 
	   DefaultColor : TColor;
	   couleur1Note : boolean = true; //gvar_00617CB8
	   couleur2Note : boolean = true; //gvar_00617CB9
	   couleur3Note : boolean = true; //gvar_00617CBA
	   couleur4Note : boolean = true; //gvar_00617CBB
	   couleur5Note : boolean = true; //gvar_00617CBC
	   lignesPaires : boolean = true; //gvar_00617CBD
	   lignesImpaires : boolean = true; //gvar_00617CBE
	   couleurSelection : boolean = true; //gvar_00617CBF
implementation

//004B901C
procedure AddHistorique(a:AnsiString);
var
  StringList:TStringList;
begin//0
	StringList := HistoriqueList;
	
	if (StringList.IndexOf(LowerCase(a)) + 1 = 0) then //004B905F
	  StringList.Add(LowerCase(a));

	if (StringList.Count > GetnbFichiersHistorique) then //004B908B
	   StringList.Delete(0);
	   
	SetHistorique(StringList);
end;//0


//004B90CC
procedure DeleteFromMainMenu(MainMenu:TMainMenu; ItemIndex:dword);
var 
  J,I : integer;
begin//0
  //004B90CC
  J := MainMenu.Items.Items[ItemIndex].Count;

	for I := 0 to MainMenu.Items.Items[ItemIndex].Count - 1 do //004B9121
	  if (MainMenu.Items.Items[ItemIndex].Items[I].Caption = '&Quitter') then//004B9150
		J := I;
	 
  if (MainMenu.Items.Items[ItemIndex].Count - 1 <> J) then 
	for I := 1 to J do //004B91AF
	  MainMenu.Items.Items[ItemIndex].Delete(J + 1);
  
end;

//004B91F0
procedure _AddToMainMenu(MainMenu:TMainMenu; ItemIndex:dword; {c:dword;} DrawItem:TMenuDrawItemEvent; Click:TNotifyEvent);
var
  Files:TStringList;
  I :integer;
  Find : boolean;
  MenuItem : TMenuItem;
begin//0
  //004B91F0
	if (GetutiliserHistorique) then // utiliser Historique
	begin //004B9223
	  Find := false;
	  Files := HistoriqueList;
	  for I := 0 to Files.count-1 do //004B9265
		  begin//004B926B
			if (FileExists(Files[I])) then 
			begin
				if (not Find ) then
				begin//004B9290
				  MenuItem := TMenuItem.Create(Nil);
				  MenuItem.Caption := '-';
				  MainMenu.Items[0].add(MenuItem);
				  Find := true;
				end;//6
				MenuItem := TMenuItem.Create(Nil);
				MenuItem.Caption := Files[I];
				MenuItem.OnClick := Click;
				MenuItem.OnDrawItem := DrawItem;
				
				if (I <= 9) then//004B931C
				  MenuItem.ShortCut := TextToShortCut('Alt+' + IntToStr(I))
				else //004B934B
				  MenuItem.ShortCut := TextToShortCut('Ctrl+' + IntToStr(I - 10));
				MainMenu.Items[0].add(MenuItem);
			end;
		  end;//5
	end;//2
end;//0


//004B9410
function GetutiliserHistorique:boolean;
begin//0
  result := GetValueRegBool('utiliserHistorique', true{,false});
end;//0


//004B943C
procedure SetutiliserHistorique(a:Boolean);
begin
  SetValueRegBool('utiliserHistorique', a);
end;

//004B9468
function GetnbFichiersHistorique:dword;
begin//0
  //004B9468
  result := GetValueRegInt('nbFichiersHistorique', 5{, 0});
end;//0


//004B94A4
procedure SetnbFichiersHistorique(a:Int64);
begin
  SetValueRegInt('nbFichiersHistorique',a{,false});
end;

//004B94D8  
procedure AddToMainMenuWithDelete(MainMenu:TMainMenu; ItemIndex:dword; DrawItem:TMenuDrawItemEvent; Click:TNotifyEvent);
begin//0
  DeleteFromMainMenu(MainMenu, ItemIndex);
  _AddToMainMenu(MainMenu, ItemIndex, DrawItem, Click);
end;//0

//004B9500
function HistoriqueList:TStringList; //sub_004B9500
var
 StringList,lvar_4 :TStringList;
 Registry:TRegistry;
 I:integer;
begin//0
	lvar_4 := TStringList.Create;
	StringList := TStringList.Create;
	Registry := TRegistry.Create;
	Registry.RootKey := HKEY_CURRENT_USER;
	if (Registry.KeyExists('Software\Carnet de Notes 2.x\Historique')) then
	begin//2
	  //004B9566
	  Registry.OpenKey('Software\Carnet de Notes 2.x\Historique', True);
	  Registry.GetValueNames(StringList);
		for I := 0 to StringList.Count - 1 do //004B9592   
		  if (FileExists(StringList[I])) then 
			lvar_4.Add(StringList[I]);
	end;//2
	Registry.CloseKey;
	Registry.Free;
	StringList.Destroy;
	result := lvar_4;
end;//0

//004B964C
procedure SetHistorique(a:TStrings);
var
 Registry:TRegistry;
 I:integer;
begin//0
  //004B964C..004B966A
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
  //004B9794
  StringList := TStringList.Create;
  StringList.Sorted := True;
  Registry := TRegistry.Create;
  Registry.RootKey :=HKEY_CURRENT_USER;
  if (Registry.KeyExists('Software\Carnet de Notes 2.x\Types de notes')) then
  begin//1
	//004B97D7
	Registry.OpenKey('Software\Carnet de Notes 2.x\Types de notes', True);
	Registry.GetValueNames(StringList);
  end//1
  else
  begin//1
	//004B97F0
	StringList := _GetTypesdenotes;
  end;//1
  Registry.CloseKey;
  Registry.Free;
 result:= StringList;
end;//0

//004B9840
function _GetTypesdenotes:TStringList;
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
  Registry : TRegistry;
  i: integer;
begin
  Registry := TRegistry.Create;
  Registry.RootKey :=HKEY_CURRENT_USER;
  if (Registry.KeyExists('Software\Carnet de Notes 2.x\Types de notes')) then
  begin//1
	//004B97D7
	Registry.DeleteKey('Software\Carnet de Notes 2.x\Types de notes');
  end;
  Registry.OpenKey('Software\Carnet de Notes 2.x\Types de notes', True);
  for i:=0 to a.count-1 do
	Registry.WriteString(a[i],'');

  Registry.CloseKey;
  Registry.Free;
end;

//004B9A44
function GetPeriodes:TStringlist;
var 
  StringList:TStringList;
  Registry:TRegistry;
begin//0
  //004B9A44
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
  result := StringList;//ESI
end;//0



//004B9B44
function _GetPeriodes:TStringlist;
var
  Registry : TRegistry;
begin
  Registry := TRegistry.Create;
  Registry.RootKey := HKEY_CURRENT_USER;
  if (Registry.KeyExists('Software\Carnet de Notes 2.x\Periodes')) then
    Registry.DeleteKey('Software\Carnet de Notes 2.x\Periodes');
  Registry.free;
  result := GetPeriodes();  
end;

//004B9BBC
procedure SetlignesImpaires(a:TColor);
begin
  if(GetColorlignesImpaires <> a ) then 
  begin
	SetValueReg1('lignesImpaires',a{,false});
	lignesImpaires := true;
 end;
end;

//004B9BF8
procedure SetColorlignesPaires(a:TColor);
begin
  if(GetColorlignesPaires <> a ) then 
  begin
	SetValueReg1('lignesPaires',a{,false});
	lignesPaires := true;
 end;
end;

//004B9C34
function GetColorlignesImpaires:TColor;
begin	  
  if (lignesImpaires) then 
  begin
    {gvar_00617CAC} result:= GetValueRegColor('lignesImpaires', sub_004B9CCC);
	//result  := gvar_00617CAC;
  end;
  lignesImpaires := false;
end;//0

//004B9C80
function GetColorlignesPaires:TColor;
begin
	  if (lignesPaires) then 
	  begin
	  {gvar_00617CB0} result := GetValueRegColor('lignesPaires', sub_004B9CD4);
	 // result := gvar_00617CB0;
	  end;
	  lignesPaires := false;
end;//0

//004B9CCC
function sub_004B9CCC:TColor;
begin//0
  result := $E2FFFF;
end;//0

//004B9CD4
function sub_004B9CD4:TColor;
begin//004B9CD4
  result := $F4FFE1;
end;//0

//004B9CDC
function sub_004B9CDC:TColor;
begin
  result := $0FFFF00;
end;

//004B9CE4
procedure SetcouleurSelection(a:TColor);
begin
 if(GetcouleurSelection<>a)then
 begin
   SetValueReg1('couleurSelection',a{,false});
   couleurSelection := true;
 end;
end;

//004B9D24
function GetcouleurSelection:TColor;
var
 gvar_00617CB4:TColor;
begin//0
  //004B9D24
  if (couleurSelection) then 
  begin
	  {gvar_00617CB4} result := GetValueRegColor('couleurSelection', $FFFF00);
	  //result := gvar_00617CB4;
	  couleurSelection := false;
  end;
  
end;//0

//004B9D74
procedure SetarrondirMoyennes(a:Integer);
begin
  SetValueRegInt('arrondirMoyennes',a{,false});
end;

//004B9DA4
procedure SetmoyennesSur(a:Integer);
begin
if(gvar_00617904  ) then 
 SetValueRegInt('moyennesSur',a{,true})
else 
 SetValueRegInt('moyennesSur',a{,false});
end;

//004B9DE4
procedure SettrierMoyennes(a:Integer);
begin
 SetValueRegInt('trierMoyennes',a{,false})
end;

//004B9E10
function GetarrondirMoyennes:integer; //arrondirMoyennes
begin//0
  //004B9E10
  result := GetValueRegInt('arrondirMoyennes', 0);
end;//0


//004B9E48
function GetmoyennesSur:integer; //moyennesSur
begin//0
  //004B9E48
  if (gvar_00617905) then//004B9E52
	 result := GetValueRegInt('moyennesSur',20{, 1})
   else
  if (gvar_00617904) then//004B9E6B
	 result:= GetValueRegInt('moyennesSur',20,{, 1});
   
end;//0


//004B9EA0
function GettrierMoyennes:dword;
begin//0
  //004B9EA0
  result := GetValueRegInt('trierMoyennes', 0);
end;//0


//004B9ED4
procedure SetmoyenneParTypeDeNotes(a:Boolean);
begin
 SetValueRegBool('moyenneParTypeDeNotes',a{,false});
end;

//004B9F04
procedure SetmoyennesEcritEtOral(a:Boolean);
begin
  SetValueRegBool('moyennesEcritEtOral',a{,false});
end;

//004B9F30
function GetmoyenneParTypeDeNotes:boolean;
begin
 result := GetValueRegBool('moyenneParTypeDeNotes', false{,false});
end;

//004B9F60
function GetmoyennesEcritEtOral:boolean;
begin
 result := GetValueRegBool('moyennesEcritEtOral', false{,false});
end;

//004B9F8C
function _Getcouleur1Note:TColor;
begin//0
  //004B9F8C
  if (couleur1Note) then 
  begin
	DefaultColor := GetValueRegColor('couleur1Note', sub_004BA264);
	Result := DefaultColor;
	couleur1Note := false;
  end
  else 
	Result := DefaultColor;
end;//0


//004B9FD8
function _Getcouleur2Note:TColor;
begin//0
  //004B9FD8
  if (couleur2Note) then 
  begin
  {gvar_00617C9C}result := GetValueRegColor('couleur2Note', sub_004BA26C);
  //result :=gvar_00617C9C ;
  end;
  couleur2Note := false;
end;//0


//004BA024
function _Getcouleur3Note:TColor;
begin//0
  //004BA024
  if (couleur3Note) then 
  begin
  {gvar_00617CA0}result := GetValueRegColor('couleur3Note', sub_004BA274);
  //result :=gvar_00617CA0;
  end;
  couleur3Note := false;
end;//0


//004BA070
function _Getcouleur4Note:TColor;
begin//0
  if (couleur4Note) then 
  begin
   {gvar_00617CA4}result := GetValueRegColor('couleur4Note', sub_004BA27C);
   //result := gvar_00617CA4;
  end;
  couleur4Note := false;
end;//0


//004BA0BC
function _Getcouleur5Note:TColor;
begin//0
  //004BA0BC
  if (couleur5Note) then 
  begin
  {gvar_00617CA8}result := GetValueRegColor('couleur5Note', sub_004BA280);
  //result := gvar_00617CA8;
  end;
  couleur5Note := false;
 
end;//0


//004BA108
function _GetcouleurMurGauche:TColor;
begin
 result := GetValueRegColor('couleurMurGauche', sub_004BBDD0);
end;

//004BA138
procedure Setcouleur1Note(a:TColor);
begin
 if(_Getcouleur1Note <> a) then 
 begin
   SetValueReg1('couleur1Note',a{,false});
   couleur1Note := true;
 end;
end;

//004BA174
procedure Setcouleur2Note(a:TColor);
begin
 if(_Getcouleur2Note <> a) then 
 begin
   SetValueReg1('couleur2Note',a{,false});
   couleur2Note := true;
 end;
end;

//004BA1B0
procedure Setcouleur3Note(a:TColor);
begin
 if(_Getcouleur2Note <> a) then 
 begin
   SetValueReg1('couleur3Note',a{,false});//00497438
   couleur3Note := true;
 end;
end;

//004BA1EC
procedure Setcouleur4Note(a:TColor);
begin
 if(_Getcouleur4Note <> a) then 
 begin
   SetValueReg1('couleur4Note',a{,false});
   couleur4Note := true;
 end;
end;

//004BA228
procedure Setcouleur5Note(a:TColor);
begin
 if(_Getcouleur5Note <> a) then 
 begin
   SetValueReg1('couleur5Note',a{,false});
   couleur5Note := true;
 end;
end;

//004BA264
function sub_004BA264:TColor;
begin
 result := $00000FF;
end;

//004BA26C
function sub_004BA26C:TColor;
begin
 result := $0C00000;
 
end;

//004BA274
function sub_004BA274:TColor;
begin
 result := $008000;
end;

//004BA27C
function sub_004BA27C:TColor;
begin
  result := 0;
end;

//004BA280
function sub_004BA280:TColor;
begin
 result := $00FFFF;
end;

//004BA288
procedure SetcolorationNote(a:Boolean);
begin
 SetValueRegBool('colorationNote',a{,false});
end;

//004BA2B0
function GetcolorationNote:boolean;
begin//0
   result:= GetValueRegBool('colorationNote', true{,false});
end;//0


//004BA2D8
procedure SetfichierBak(a:Boolean);
begin
  SetValueRegBool('fichierBak',a{,false});
end;

//004BA2FC
function GetfichierBak:boolean;
begin//0
  //004BA2FC
  result := GetValueRegBool('fichierBak', true{,false});
end;//0


//004BA320
procedure SetongletsGrillesBilans(a:Integer);
begin
 SetValueRegInt('ongletsGrillesBilans',a{,false});
end;

//004BA354
procedure SetongletsGrillesNotes(a:Integer);
begin
 SetValueRegInt('ongletsGrillesNotes',a{,false});
end;

//004BA384
function GetongletsGrillesBilans:dword;
begin//0
  //004BA384
  result := GetValueRegInt('ongletsGrillesBilans', 0{, 0});
end;//0


//004BA3C0
function GetongletsGrillesNotes:dword;
begin//0
  //004BA3C0
 result:=GetValueRegInt('ongletsGrillesNotes', 0{, 0});
end;//0


//004BA3F8
function __GetPeriodes(a:String):TStringlist;
var
 S:TStringList;
 R:TRegistry;
begin//
	//004BA3F
	//004BA41C
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
end;
	//004BA5C

procedure __SetPeriodes(a:string; s:TStrings);
var
  i : integer;
  R : TRegistry;
begin//0
  //004BA7B0
  try
    //004BA7DB
	R := TRegistry.Create;
	R.RootKey :=HKEY_CURRENT_USER;
    if (R.KeyExists('Software\Carnet de Notes 2.x\Periodes\' + a)) then
    begin//2
      //004BA813
      R.DeleteKey('Software\Carnet de Notes 2.x\Periodes\' + a);
    end;//2
    R.OpenKey('Software\Carnet de Notes 2.x\Periodes', True);
    R.WriteString(a, '');
    R.CloseKey;
   R.OpenKey('Software\Carnet de Notes 2.x\Periodes\' + a + '\noms', True);
      //004BA88C
      for i := 0 to s.Count - 1 do
      begin//3
        //004BA894
        R.WriteString(s[i], '');
      end;//3
    R.CloseKey;
    R.Free;
  finally//1
    //004BA8CF
   // lvar_4 := '';
  end;//1
end;//0

//004BA964
procedure __SetPeriodes_v(a:string);
var
 R : TRegistry;
begin//0
  //004BA964
  try
    //004BA987
    R := TRegistry.Create;
	R.RootKey :=HKEY_CURRENT_USER;
    if (R.KeyExists('Software\Carnet de Notes 2.x\Periodes\' + a)) then
    begin//2
      //004BA9BF
      R.DeleteKey('Software\Carnet de Notes 2.x\Periodes\' + a);
    end;//2
    R.OpenKey('Software\Carnet de Notes 2.x\Periodes', True);
    R.DeleteValue(a);
    R.CloseKey;
    R.Free;
  finally//1
    //004BAA0C
    //EDX := 3;
  end;//1
end;

///004BAA88
function _GetSeriesdenotes(a:dword):TInclureImpression;
var
 Registry:TRegistry;
 I:integer;
begin//0
 //004BAA88
   //004BAAAC
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
function GetnumeroterElevesSeriesDeNotes:boolean;
begin//0
 //004BAEC4
 result := GetValueRegBool('numeroterElevesSeriesDeNotes', true{,false});
end;//0


//004BAEFC
procedure SetnumeroterElevesSeriesDeNotes(a:Boolean);
begin
  SetValueRegBool('numeroterElevesSeriesDeNotes',a{,false});
end;

//004BAF34
function GetnumeroterElevesBilans:boolean;
begin
 result := GetValueRegBool('numeroterElevesBilans',true{,false});
end;

//004BAF64
procedure SetnumeroterElevesBilans(a:Boolean);
begin
  SetValueRegBool('numeroterElevesBilans',a{,false});
end;

//004BAF94
procedure SetSeriesdenotes(a:byte; U:TInclureImpression);
var
  Registry : TRegistry;
  i:integer;
begin//0
  //004BAF94
  try
    //004BAFB9
    case a of
      0:
      begin//3
        //004BB0AC
       Registry := TRegistry.Create;
	   Registry.RootKey := HKEY_CURRENT_USER;
        
        if (Registry.KeyExists('Software\Carnet de Notes 2.x\Inclure impression\Grille vierge')) then
        begin//4
          //004BB0D9
          Registry.DeleteKey('Software\Carnet de Notes 2.x\Inclure impression\Grille vierge');
        end;//4
        Registry.OpenKey('Software\Carnet de Notes 2.x\Inclure impression\Grille vierge', True);
        {gvar_00617CC0};
		for I := 0 to U.f8.Count - 1 do
		      Registry.WriteBool(U.f8[i],  U.FC[I]);
	  end;
      1:
      begin//3
        //004BB0AC
       Registry := TRegistry.Create;
	   Registry.RootKey := HKEY_CURRENT_USER;
        
        if (Registry.KeyExists('Software\Carnet de Notes 2.x\Inclure impression\Séries de notes')) then
        begin//4
          //004BB0D9
          Registry.DeleteKey('Software\Carnet de Notes 2.x\Inclure impression\Séries de notes');
        end;//4
        Registry.OpenKey('Software\Carnet de Notes 2.x\Inclure impression\Séries de notes', True);
        //EAX := gvar_00617CC0;
		for I := 0 to U.f8.Count - 1 do
		      Registry.WriteBool(U.f8[i],  U.FC[I]);
	  end;
      2:
      begin//3
        //004BB0AC
       Registry := TRegistry.Create;
	   Registry.RootKey := HKEY_CURRENT_USER;
        
        if (Registry.KeyExists('Software\Carnet de Notes 2.x\Inclure impression\Bilans')) then
        begin//4
          //004BB0D9
          Registry.DeleteKey('Software\Carnet de Notes 2.x\Inclure impression\Bilans');
        end;//4
        Registry.OpenKey('Software\Carnet de Notes 2.x\Inclure impression\Bilans', True);
        //EAX := gvar_00617CC0;
		for I := 0 to U.f8.Count - 1 do
		      Registry.WriteBool(U.f8[i],  U.FC[I]);
	  end;
      
	end;
	finally
	end;

end;

//004BB35C
function GetcolonnesBilanDetaillees:boolean;
begin
 result := GetValueRegBool('colonnesBilanDetaillees',false{,false});

end;

///004BB38C
procedure SetcolonnesBilanDetaillee(a:Boolean);
begin
 SetValueRegBool('colonnesBilanDetaillees',a{,false});
end;

//004BB3BC
procedure SettrierMoyennesImpression(a:Integer);
begin
 SetValueRegInt('trierMoyennesImpression',a{,false});
end;

//004BB3F0
function GettrierMoyennesImpression:byte;
begin
  result := GetValueRegInt('trierMoyennesImpression',0{,false});

end;

//004BB42C
procedure SetcolorationGrille(a:Boolean);
begin
 SetValueRegBool('colorationGrille',a{,false});
end;

//004BB458
function GetcolorationGrille:Boolean;
begin
 result:= GetValueRegBool('colorationGrille', true);
end;

//004BB484
procedure sub_004BB484(a:Boolean);
begin
  SetValueRegBool('afficherBarreOutils',a{,false});
end;

//004BB4B0
procedure sub_004BB4B0(a:Boolean);
begin
 SetValueRegBool('tailleMaximumAuDemarrage',a{,false});
end;

//004BB4E4
procedure sub_004BB4E4(a:Boolean);
begin
  SetValueRegBool('afficherHeure',a{,false});
end;

//004BB50C
procedure sub_004BB50C(a:Boolean);
begin
  SetValueRegBool('afficherDate',a{,false});
end;

//004BB534
procedure sub_004BB534(a:Integer);
begin
	SetValueRegInt('auDemarrage',a {,true});
end;

//004BB55C
function sub_004BB55C:boolean;
begin//0
 //004BB55C
 result := GetValueRegBool('afficherBarreOutils', true{,false});
end;//0


//004BB588
function GettailleMaximumAuDemarrage:boolean;
begin//0
 //004BB588
 result := GetValueRegBool('tailleMaximumAuDemarrage', true {,1});
end;//0


//004BB5BC
function GetafficherHeure:boolean;
begin//0
 //004BB5BC

 result := GetValueRegBool('afficherHeure', true {,false});
end;//0


//004BB5E4
function sub_004BB5E4:boolean;
begin//0
 //004BB5E4
 result := GetValueRegBool('afficherDate', true{,false});
end;//0


//004BB60C
function sub_004BB60C:dword;
begin//0
 //004BB60C
 result := GetValueRegInt('auDemarrage', 0{, 1});
end;//0


//004BB63C
procedure sub_004BB63C(a:Boolean);
begin
  SetValueRegBool('rappelSauvegarde', a{, true});

end;

//004BB668
function sub_004BB668:boolean;
begin//0
 //004BB668
 Result := GetValueRegBool('rappelSauvegarde', true{,true});
end;//0


//004BB694
procedure sub_004BB694(a:Boolean);
begin
 SetValueRegBool('rappelMiseAJourDisponible', a{, true});
end;

//004BB6C8
function sub_004BB6C8:boolean;
begin//0
 //004BB6C8
 result := GetValueRegBool('rappelMiseAJourDisponible', true{,1});
end;//0


//004BB6FC
procedure sub_004BB6FC(a:Integer);
begin
 SetValueRegInt('frequenceRappel', a{, true});
end;

//004BB728
function sub_004BB728:dword;
begin//0
 //004BB728
 result := GetValueRegInt('frequenceRappel', 0{, true});
end;//0

//004BB75C
function sub_004BB75C:dword;
begin//0
 //004BB75C
 result := GetValueRegInt('numeroRappel', 1{, 1});
end;//0

//end;

//004BB790
procedure sub_004BB790(x:dword);
begin//0
 //004BB790
 SetValueRegInt('numeroRappel', x{,1});
end;//0


//004BB7BC
procedure sub_004BB7BC(a:Integer);
begin
 SetValueRegInt('ongletClasses', a{,1});
end;

//004BB7E8
function OngletsClassesStyle:dword;
begin//0
 result := GetValueRegInt('ongletClasses', 1{, 0});
end;//0

//004BB81C
procedure sub_004BB81C(a:Boolean);
begin
 SetValueRegBool('afficherOngletsClasses', a{,false});
end;

//004BB84C
function OngletsClassesVisible:boolean;
begin//0
 result := GetValueRegBool('afficherOngletsClasses', true{,false});
end;//0


//004BB87C
function sub_004BB87C:TColor;
begin//0
 result := GetValueRegColor('couleurFenetreInfo', sub_004BB8AC{,false});
end;//0

//004BB8AC
function sub_004BB8AC:TColor;
begin
  result := $0C8FFC8;
end;

//004BB8B4
procedure sub_004BB8B4(a:TColor);
begin
 SetValueReg1('couleurFenetreInfo', a{,false});
end;

//004BB8E0
procedure SetafficherFenetreInfo(a:Boolean);
begin
 SetValueRegBool('afficherFenetreInfo', a{,false});
end;

//004BB90C
procedure SetafficherR(a:Boolean);
begin
 SetValueRegBool('afficherR', a{,false});
end;

//004BB930
function GetafficherFenetreInfo:boolean;
begin//0
 //004BB930
 Result := GetValueRegBool('afficherFenetreInfo', true{,false});
end;//0


//004BB95C
function GetafficherR:Boolean;
begin//0
 //004BB95C
 Result := GetValueRegBool('afficherR', true{,false});
end;//0


//004BB980
procedure SetafficherDatesDeNaissance(a:Boolean);
begin
 SetValueRegBool('afficherDatesDeNaissance', a{,false});
end;

//004BB9B4
function GetafficherDatesDeNaissance:Boolean;
begin//0
 //004BB9B4
 Result := GetValueRegBool('afficherDatesDeNaissance', true{,false});
end;//0


//004BB9E8
procedure Setgraphe3D(a:Boolean);
begin//0
 //004BB9E8
 SetValueRegBool('graphe3D', a {,false});
end;//0


//004BBA0C
function Getgraphe3D:boolean;
begin//0
 //004BBA0C
 result := GetValueRegBool('graphe3D', true{,false});
end;//0


//004BBA30
procedure SetgrapheDegrade(a:Boolean);
begin//0
 //004BBA30
 SetValueRegBool('grapheDegrade', a{,false});
end;//0


//004BBA58
procedure SetgrapheEnCouleur(a:Boolean);
begin//0
 //004BBA58
 SetValueRegBool('grapheEnCouleur', a{,false});
end;//0


//004BBA80
function GetgrapheDegrade:boolean;
begin//0
 //004BBA80
 result := GetValueRegBool('grapheDegrade', true{,false});
end;//0


//004BBAA8
function GetgrapheEnCouleur:boolean;
begin//0
 //004BBAA8
 result := GetValueRegBool('grapheEnCouleur', true{,false});
end;//0


//004BBAD0
procedure SetgrapheLegende(a:Boolean);
begin//0
 SetValueRegBool('grapheLegende', a{,false});
end;//0


//004BBAF8
function GetgrapheLegende:boolean;
begin//0
 result := GetValueRegBool('grapheLegende', true{,false});
end;//0


//004BBB20
procedure SetcouleurDebutDegrade(a:TColor);
begin
 SetValueReg1('couleurDebutDegrade', a{,false});
end;

//004BBB4C
procedure SetcouleurFinDegrade(a:TColor);
begin
 SetValueReg1('couleurFinDegrade', a{,false});
end;

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
begin
  SetValueReg1('couleurEleve', a{,false});
end;

//004BBC10
procedure SetcouleurMax(a:TColor);
begin
 SetValueReg1('couleurMax', a{,false});
end;

//004BBC34
procedure SetcouleurMin(a:TColor);
begin
 SetValueReg1('couleurMin', a{,false});
end;

//004BBC58
procedure SetcouleurMoyenne(a:TColor);
begin
 SetValueReg1('couleurMoyenne', a{,false});
end;

//004BBC80
function GetcouleurEleve:TColor;
begin//0
 result := GetValueRegColor('couleurEleve',  sub_004BBCAC{,false});
end;//0


//004BBCAC
function sub_004BBCAC:TColor;
begin
 result := $00FFFF;
end;

//004BBCB4
function GetcouleurMax:TColor;
begin
 result := GetValueRegColor('couleurMax',  sub_004BBCDC{,false});
end;

//004BBCDC
function sub_004BBCDC:TColor;
begin
 result := $0FF0000;
end;

//004BBCE4
function GetcouleurMin:TColor;
begin
result := GetValueRegColor('couleurMin',sub_004BBD0C{,false});
end;

//004BBD0C
function sub_004BBD0C:TColor;
begin
 result := $0000FF;
end;

//004BBD14
function GetcouleurMoyenne:TColor;
begin//0
 result := GetValueRegColor('couleurMoyenne',sub_004BBD40{,false});
end;//0


//004BBD40
function sub_004BBD40:TColor;
begin
result := $80FF80;
end;

//004BBD48
procedure SetcouleurMurBas(a:TColor);
begin
  SetValueReg1('couleurMurBas',a{,false});
end;

//004BBD70
function GetcouleurMurBas:TColor;
begin
 result := GetValueRegColor('couleurMurBas',sub_004BBD9C);
end;

//004BBD9C
function sub_004BBD9C:TColor;
begin
result := $0FFFFFF;
end;

//004BBDA4
procedure SetcouleurMurGauche(a:TColor);
begin
  SetValueReg1('couleurMurGauche',a{,false});
end;

//004BBDD0
function sub_004BBDD0:TColor;
begin
result := $0FFFFFF;
end;

//004BBDD8
procedure SetgrapheLigneEleve(a:Boolean);
begin//0
 //004BBDD8
 SetValueRegBool('grapheLigneEleve', a{,false});
end;//0


//004BBE04
procedure SetgrapheLigneMax(a:Boolean);
begin//0
 //004BBE04
 SetValueRegBool('grapheLigneMax', a{,false});
end;//0


//004BBE2C
procedure SetgrapheLigneMin(a:Boolean);
begin//0
 //004BBE2C
 SetValueRegBool('grapheLigneMin', a{,false});
end;//0


//004BBE54
procedure SetgrapheLigneMoyenne(a:Boolean);
begin
SetValueRegBool('grapheLigneMoyenne', a{,false});
end;

//004BBE80
function GetgrapheLigneEleve:boolean;
begin//0
 result := GetValueRegBool('grapheLigneEleve', true{,false});
end;//0


//004BBEAC
function GetgrapheLigneMax:boolean;
begin//0
 result := GetValueRegBool('grapheLigneMax', true{,false});
end;//0


//004BBED4
function GetgrapheLigneMin:boolean;
begin//0
 result := GetValueRegBool('grapheLigneMin', true{,false});
end;//0


//004BBEFC
function GetgrapheLigneMoyenne:boolean;
begin
result := GetValueRegBool('grapheLigneMoyenne', true{,false});
end;

//004BBF28
procedure SetongletsGraphes(a:Integer);
begin
  SetValueRegInt('ongletsGraphes', a{,false});

end;

//004BBF54
function GetongletsGraphes:dword;
begin//0
 //004BBF54
 result := GetValueRegInt('ongletsGraphes', 0{, 0});
end;//0

//004BBF88
procedure SetimpressionCouleurNote(a:Boolean);
begin
  SetValueRegBool('impressionCouleurNote',a{,false});
end;

//004BBFB8
function GetimpressionCouleurNote:boolean;
begin
 result := GetValueRegBool('impressionCouleurNote',false{,false});
end;
//================================================================================================================

//004BBFE8
procedure SetnumeroterElevesGrilleVierge(a:Boolean);
begin
  SetValueRegBool('numeroterElevesGrilleVierge',a{,false});
end;

//004BC01C
function GetnumeroterElevesGrilleVierge:boolean;
begin
 result := GetValueRegBool('numeroterElevesGrilleVierge',true{,false});
end;

//004BC050
procedure SetlargeurGrilleVierge(a:Integer);
begin
 SetValueRegInt('largeurGrilleVierge',a{,false});
end;

//004BC080
function GetlargeurGrilleVierge:byte;
begin
 result := GetValueRegInt('largeurGrilleVierge',10{,false});
end;

//004BC0B8
procedure SetimpressionColonneMoyenne(a:Boolean);
begin
  SetValueRegBool('impressionColonneMoyenne',a{,false});
end;

//004BC0EC
function GetimpressionColonneMoyenne:boolean;
begin
  result := GetValueRegBool('impressionColonneMoyenne',false{,false});
end;

//004BC120
procedure SetimpressionColonneClassement(a:Boolean);
begin
 SetValueRegBool('impressionColonneClassement',a{,false});
end;

//004BC154
procedure SetimpressionMoyennesEcritOral(a:Boolean);
begin
 SetValueRegBool('impressionMoyennesEcritOral',a{,false});
end;

//004BC188
function GetimpressionMoyennesEcritOral:boolean;
begin
result := GetValueRegBool('impressionMoyennesEcritOral',true{,false});
end;

//004BC1BC
function GetimpressionColonneClassement:boolean;
begin
  result := GetValueRegBool('impressionColonneClassement',true{,false});
end;

//004BC1F0
procedure SetnumeroterElevesAppreciations(a:Boolean);
begin
 SetValueRegBool('numeroterElevesAppreciations',a{,false});
end;

//004BC228
function GetnumeroterElevesAppreciations:boolean;
begin
	result:= GetValueRegBool('numeroterElevesAppreciations',true{,false});
end;

//004BC260
procedure SetarrondirMoyennesAnnuelles(a:Integer);
begin
 SetValueRegInt('arrondirMoyennesAnnuelles',a{,false});
end;

//004BC298
function GetarrondirMoyennesAnnuelles:dword;
begin//0
 //004BC298
 result := GetValueRegInt('arrondirMoyennesAnnuelles', 0{, 0});
end;//0


//004BC2D8
procedure SettypeMoyennesAnnuelles(a:Integer);
begin
  SetValueRegInt('typeMoyennesAnnuelles',a{,false});
end;

//004BC30C
function GettypeMoyennesAnnuelles:dword;
begin//0
 //004BC30C
 result := GetValueRegInt('typeMoyennesAnnuelles', 0{, 0});
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
    StringList := _GetMatieres;
  end;//1
  Registry.Free;
  result := StringList;
end;

//004BC3F0
function _GetMatieres:TStringlist;
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
   i:integer;
begin//0
  //004BC698
  try
    //004BC6B7
    Registry := TRegistry.Create;
    Registry.RootKey:=HKEY_CURRENT_USER;
    if (Registry.KeyExists('Software\Carnet de Notes 2.x\Matieres')) then
    begin//2
      //004BC6E1
      Registry.DeleteKey('Software\Carnet de Notes 2.x\Matieres');
    end;//2
    Registry.OpenKey('Software\Carnet de Notes 2.x\Matieres', True);
      //004BC713
      for I := 0 to a.Count - 1 do
      begin//3
        //004BC71B
        Registry.WriteString(a[I], '');
      end;//3
    Registry.CloseKey;
    Registry.Free;
  finally//1
    //004BC756
   // lvar_C := '';
  end;//1

end;

//004BC7A0
procedure sub_004BC7A0(MainMenu:TMainMenu; tabs:TStringlist; ItemIndex:integer; index1:integer; Event1:TNotifyEvent; index2:integer; Event2:TNotifyEvent; index3:integer; Event3:TNotifyEvent);
var
 MenuItem : TMenuItem;
 i : integer;
begin//0
  //004BC7A0
  try
        //004BC804
        for i := 0 to Tabs.count - 1 do
        begin//4
          //004BC809
          MenuItem := TMenuItem.Create(Nil);
          MenuItem.Caption := Tabs[i];
          MenuItem.OnClick := Event1;
          MenuItem.tag := index1;
		  MainMenu.Items[ItemIndex].Items[0].Insert( MainMenu.Items[ItemIndex].Items[0].count,MenuItem);
        end;//4
    //  EAX := Tabs[MainMenu.Items[ItemIndex].Items[0].Insert( MainMenu.Items[ItemIndex].Items[0].count];
        //004BC8AF
        for i := 0 to Tabs.count - 1 do
        begin//4
          //004BC8B4
          MenuItem := TMenuItem.Create(Nil);
          MenuItem.Caption := Tabs[i];
          MenuItem.OnClick := Event2;
          MenuItem.tag := index2;
          MainMenu.Items[ItemIndex].Items[0].Insert( MainMenu.Items[ItemIndex].Items[0].count,MenuItem);
        end;//4
      MenuItem := TMenuItem.Create(Nil);
      MenuItem.Caption:='Sur l''année';
      MenuItem.OnClick := Event2;
      MenuItem.tag := index2;
      MainMenu.Items[ItemIndex].Items[1].Insert( MainMenu.Items[ItemIndex].Items[1].count,MenuItem);
    //  EAX := Tabs[MainMenu.Items[ItemIndex].Items[1].Insert( MainMenu.Items[ItemIndex].Items[1].count];
        //004BC9D3
        for i := 0 to Tabs.count - 1 do
        begin//4
          //004BC9D8
          MenuItem := TMenuItem.Create(Nil);
          MenuItem.Caption := Tabs[i];
          MenuItem.OnClick := Event3;
          MenuItem.tag := index3;
          MainMenu.Items[ItemIndex].Items[2].Insert( MainMenu.Items[ItemIndex].Items[2].count,MenuItem);
        end;//4
  finally//1
    //004BCA6C
  end;//1

end;

//004BCAA0
procedure EventCopierlefichiersurdisquette(MainMenu:TMainMenu; index:integer; c:integer; Event:TNotifyEvent);
var
  i:integer;
  str : TStringList;
  MenuItem : TMenuItem;
begin//0
  //004BCAA0
    //004BCAC5
    str := GetLogDrives;
        for I := 0 to str.count-1 do
        begin//4
          //004BCB09
          MenuItem := TMenuItem.Create(Nil);
          MenuItem.Caption := 'lecteur ' + str[I] + ':';
          MenuItem.OnClick := Event;
		  //MenuItem.f84 := c;
		  MenuItem.Tag := c;
		  MainMenu.Items[0].Items[index].Add(MenuItem);
		end;
end;

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
 //004BCD14
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
function GetafficherNomEnseignantOnglets:boolean;
begin//0
 //004BCDB0
 result := GetValueRegBool('afficherNomEnseignantOnglets', false{,false});
end;//0


//004BCDE8
procedure SetafficherNomEnseignantOnglets(a:Boolean);
begin
   SetValueRegBool('afficherNomEnseignantOnglets',a{,false});
end;

//004BCE20
function GetafficherMatiereOnglets:boolean;
begin//0
 //004BCE20
	result := GetValueRegBool('afficherMatiereOnglets', false{,false});
end;//0


//004BCE50
procedure SetafficherMatiereOnglets(a:Boolean);
begin
	SetValueRegBool('afficherMatiereOnglets',a{,false});
end;

//004BCE80
function GetNomsbulletins:TStringlist;
var 
  StringList: TStringList;
  Registry : TRegistry;
begin//0
  //004BCE80
  StringList := TStringList.Create;
  Registry := TRegistry.Create;
  Registry.RootKey := HKEY_CURRENT_USER;
  if (Registry.KeyExists('Software\Carnet de Notes 2.x\Noms bulletins')) then
  begin//1
    //004BCEBB
    Registry.OpenKey('Software\Carnet de Notes 2.x\Noms bulletins', True);
    Registry.GetValueNames(StringList);
    Registry.CloseKey;
  end;//1
  StringList.Insert(1, 'Nouveaux bulletins du collège');
  Registry.Free;
  result := StringList;
end;//0

//004BCF84
function SetNomsbulletins(a:String):TStringList;
var
Registry: TRegistry;
StringList : TStringList;
begin//0
 //004BCF84

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

function GetimpressionDatesDeNaissanceSeriesDeNotes:boolean;
begin
 GetValueRegBool('impressionDatesDeNaissanceSeriesDeNotes',true{,false});

end;
//004BD1FC
function GetimpressionDatesDeNaissanceBilans:boolean;
begin
	GetValueRegBool('impressionDatesDeNaissanceBilans',true{,false});
end;

//004BD238
function GetimpressionDatesDeNaissanceAppreciations:boolean;
begin
	GetValueRegBool('impressionDatesDeNaissanceAppreciations',true{,false});
end;

//004BD278
function GetimpressionDatesDeNaissanceGrilleVierge:boolean;
begin
	GetValueRegBool('impressionDatesDeNaissanceGrilleVierge',true{,false});
end;

//004BD2B8
procedure SetimpressionDatesDeNaissanceSeriesDeNotes(a:Boolean);
begin
	SetValueRegBool('impressionDatesDeNaissanceSeriesDeNotes',a{,false});
end;

//004BD2F8
procedure SetimpressionDatesDeNaissanceBilans(a:Boolean);
begin
   SetValueRegBool('impressionDatesDeNaissanceBilans',a{,false});
end;

//004BD334
procedure SetimpressionDatesDeNaissanceAppreciations(a:Boolean);
begin
   SetValueRegBool('impressionDatesDeNaissanceAppreciations',a{,false});
end;

//004BD374
procedure SetimpressionDatesDeNaissanceGrilleVierge(a:Boolean);
begin
   SetValueRegBool('impressionDatesDeNaissanceGrilleVierge',a{,false});
end;

//004BD3B4
procedure sub_004BD3B4(var a:string);
begin//0
 //004BD3B4
 GetValueRegString('basDePageGauche', '', '\Options', a);
end;//0


//004BD3FC
procedure sub_004BD3FC(var a:string);
begin//0
 //004BD3FC
 GetValueRegString('basDePageDroite', '', '\Options', a);
end;//0


//004BD444
procedure sub_004BD444(var a:string);
begin//0
 //004BD444
 GetValueRegString('enTeteGauche', '', '\Options', a);
end;//0


//004BD48C
procedure sub_004BD48C(var a:string);
begin//0
 //004BD48C
 GetValueRegString('enTeteCentre', '', '\Options', a);
end;//0


//004BD4D4
procedure sub_004BD4D4(var a:string);
begin//0
 //004BD4D4
 GetValueRegString('enTeteDroite', '', '\Options', a);
end;//0

//004BD51C
procedure sub_004BD51C(a:string);
var
  lvar_4:string;
begin//0
  //004BD51C
  try
    //004BD539
    SetValueRegString('basDePageGauche', a, '\Options');
  finally//1
    //004BD55A
    lvar_4 := '';
  end;//1
end;//0

//004BD59C
procedure sub_004BD59C(a:string);
var
  lvar_4:string;
begin//0
  //004BD59C
  try
    SetValueRegString('basDePageDroite', a, '\Options');
  finally//1
    //004BD5DA
    lvar_4 := '';
  end;//1
end;//0

//004BD61C
procedure SetenTeteGauche(value:string);
begin//0
    SetValueRegString('enTeteGauche', value, '\Options');
end;//0


//004BD69C
procedure SetenTeteCentre(Value:string);
begin//0
    SetValueRegString('enTeteCentre', Value, '\Options');
end;//0

//004BD71C
procedure SetenTeteDroite(Value:string);
begin//0
    SetValueRegString('enTeteDroite', Value, '\Options');
end;//0


///004BD79C
function GettaillePolice:byte;
begin
 result := GetValueRegInt('taillePolice',9{,false});
end;

///004BD7D0
procedure GetnomPolice(var a:string);
begin
  GetValueRegString('nomPolice','Times New Roman','\Options',a{,false});
end;

//004BD82C
procedure SettaillePolice(a:Integer);
begin
 SetValueRegInt('taillePolice',a {,false});
end;

//004BD858
procedure SetnomPolice(value:string);
begin//0
    SetValueRegString('nomPolice', value, '\Options');
end;//0


//004BD8D4
procedure SetimpressionFermerBoite(a:Boolean);
begin
  SetValueRegBool('impressionFermerBoite', a{,false});
end;

//004BD904
function GetimpressionFermerBoite:boolean;
begin//0
	result := GetValueRegBool('impressionFermerBoite', true{,false});
end;//0


//004BD934
procedure SetimpressionRSeriesDeNotes(a:Boolean);
begin
	SetValueRegBool('impressionRSeriesDeNotes',a{,false});
end;

//004BD968
procedure SetimpressionRBilans(a:Boolean);
begin
	SetValueRegBool('impressionRBilans',a{,false});
end;

//004BD994
procedure SetimpressionRAppreciations(a:Boolean);
begin
	SetValueRegBool('impressionRAppreciations',a{,false});
end;

//004BD9C8
procedure SetimpressionRGrilleVierge(a:Boolean);
begin
	SetValueRegBool('impressionRGrilleVierge',a{,false});
end;

//004BD9F8
function GetimpressionRSeriesDeNotes:boolean;
begin
	result := GetValueRegBool('impressionRSeriesDeNotes', true{,false});
end;

//004BDA2C
function GetimpressionRBilans:boolean;
begin
	result := GetValueRegBool('impressionRBilans', true{,false});
end;

//004BDA58
function GetimpressionRAppreciations:boolean;
begin
	result := GetValueRegBool('impressionRAppreciations', true{,false});
end;

//004BDA8C
function GetimpressionRGrilleVierge:boolean;
begin
	result := GetValueRegBool('impressionRGrilleVierge', true{,false});
end;

end.