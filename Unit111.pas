{***************************************
* Version Original V0.01
* Decompiled by HOUIDEF AEK v 13:31 dimanche 02 Mars 2021
***************************************}
unit Unit111;

interface

uses
Forms, Windows,  SysUtils, Classes, Graphics, Menus, URegistry,Registry,UInclureImpression;

	procedure sub_004B901C(a:AnsiString);//004B901C
	procedure sub_004B90CC(MainMenu:TMainMenu; ItemIndex:dword);//004B90CC
	procedure sub_004B91F0(MainMenu:TMainMenu; ItemIndex:dword; {c:dword;} DrawItem:TMenuDrawItemEvent; Click:TNotifyEvent);//004B91F0
	function GetutiliserHistorique:boolean;//004B9410
	procedure SetutiliserHistorique(a:Boolean);//004B943C
	function GetnbFichiersHistorique:dword;//004B9468 nbFichiersHistorique
	procedure SetnbFichiersHistorique(a:Int64);//004B94A4
	procedure sub_004B94D8(MainMenu:TMainMenu; ItemIndex:dword; DrawItem:TMenuDrawItemEvent; Click:TNotifyEvent);//004B94D8
	function HistoriqueList:TStringList;//sub_004B9500
	procedure sub_004B964C(a:TStrings);//004B964C
	function sub_004B9794:TStringList;//004B9794
	function sub_004B9840:TStringlist;//004B9840
	procedure sub_004B9938(a:TStrings);//004B9938
	function sub_004B9A44:TStringList;//004B9A44
	//function sub_004B9B44:?;//004B9B44
	procedure sub_004B9BBC(a:TColor);//004B9BBC
	procedure SetColorlignesPaires(a:TColor);//004B9BF8
	function GetColorlignesPaires:TColor;//004B9C34
	function GetColorlignesPaires:TColor;//004B9C80
	function sub_004B9CCC:TColor;//004B9CCC
	function sub_004B9CD4:TColor;//004B9CD4
	//function sub_004B9CDC:?;//004B9CDC
	procedure SetcouleurSelection(a:TColor);//004B9CE4
	function GetcouleurSelection:TColor;//004B9D24
	procedure sub_004B9D74(a:Integer);//004B9D74
	procedure sub_004B9DA4(a:Integer);//004B9DA4
	procedure sub_004B9DE4(a:Integer);//004B9DE4
	function sub_004B9E10:integer;//004B9E10
	function sub_004B9E48:integer;//004B9E48
	function sub_004B9EA0:dword;//004B9EA0
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
	procedure sub_004BA288(a:Boolean);//004BA288
	function sub_004BA2B0:boolean;//004BA2B0
	procedure sub_004BA2D8(a:Boolean);//004BA2D8
	function sub_004BA2FC:boolean;//004BA2FC
	procedure sub_004BA320(a:Integer);//004BA320
	procedure sub_004BA354(a:Integer);//004BA354
	function sub_004BA384:dword;//004BA384
	function sub_004BA3C0:dword;//004BA3C0
	function sub_004BA3F8(a:String):TStringlist;//004BA3F8
	//procedure sub_004BA7B0(?:?; ?:TStrings);//004BA7B0
	//procedure sub_004BA964(?:?);//004BA964
	function _GetSeriesdenotes(a:dword):TInclureImpression;//004BAA88
	function GetnumeroterElevesSeriesDeNotes:boolean;//004BAEC4
	procedure sub_004BAEFC(a:Boolean);//004BAEFC
	function sub_004BAF34:boolean;//004BAF34
	procedure sub_004BAF64(a:Boolean);//004BAF64
	procedure sub_004BAF94(a:byte; U:TInclureImpression);//004BAF94
	function GetcolonnesBilanDetaillees:boolean;//004BB35C
	procedure SetcolonnesBilanDetaillee(a:Boolean);//004BB38C
	procedure SettrierMoyennesImpression(a:Integer);//004BB3BC
	function GettrierMoyennesImpression:byte;//004BB3F0
	procedure sub_004BB42C(a:Boolean);//004BB42C
	function sub_004BB458:Boolean;//004BB458
	procedure sub_004BB484(a:Boolean);//004BB484
	procedure sub_004BB4B0(a:Boolean);//004BB4B0
	procedure sub_004BB4E4(a:Boolean);//004BB4E4
	procedure sub_004BB50C(a:Boolean);//004BB50C
	procedure sub_004BB534(a:Integer);//004BB534
	function sub_004BB55C:boolean;//004BB55C
	function sub_004BB588:boolean;//004BB588
	function sub_004BB5BC:boolean;//004BB5BC
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
	function sub_004BB7E8:dword;//004BB7E8
	procedure sub_004BB81C(a:Boolean);//004BB81C
	function sub_004BB84C:boolean;//004BB84C
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
	procedure GetcouleurMin(a:TColor);//004BBC34
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
	function SetlargeurGrilleVierge:byte;//004BC080
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
	function sub_004BC3F0:TStringList;//004BC3F0
	procedure SetMatieres(a:TStrings);//004BC698
	//procedure sub_004BC7A0(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//004BC7A0
	//procedure sub_004BCAA0(?:?; ?:?; ?:?; ?:?);//004BCAA0
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
	//procedure sub_004BD61C(?:?);//004BD61C
	//procedure sub_004BD69C(?:?);//004BD69C
	//procedure sub_004BD71C(?:?);//004BD71C
	function GettaillePolice:byte;//004BD79C
	procedure sub_004BD7D0(var a:string);//004BD7D0
	//procedure SettaillePolice(?:Integer);//004BD82C
	//procedure sub_004BD858(?:?);//004BD858
	procedure SetimpressionFermerBoite(a:Boolean);//004BD8D4
	function GetimpressionFermerBoite:boolean;//004BD904
	procedure SetimpressionRSeriesDeNotes(a:Boolean);//004BD934
	procedure SetimpressionRBilans(a:Boolean);//004BD968
	procedure SetimpressionRAppreciations(a:Boolean);//004BD994
	procedure SetimpressionRGrilleVierge(a:Boolean);//004BD9C8
	function GetimpressionRSeriesDeNotes:boolean;//004BD9F8
	function sub_004BDA2C:boolean;//004BDA2C
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
procedure sub_004B901C(a:AnsiString);
var
  StringList:TStringList;
begin//0
	StringList := HistoriqueList;
	
	if (StringList.IndexOf(LowerCase(a)) + 1 = 0) then //004B905F
	  StringList.Add(LowerCase(a));

	if (StringList.Count > GetnbFichiersHistorique) then //004B908B
	   StringList.Delete(0);
	   
	sub_004B964C(StringList);
end;//0


//004B90CC
procedure sub_004B90CC(MainMenu:TMainMenu; ItemIndex:dword);
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
procedure sub_004B91F0(MainMenu:TMainMenu; ItemIndex:dword; {c:dword;} DrawItem:TMenuDrawItemEvent; Click:TNotifyEvent);
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
	  if (Files.count <> 0) then
	  begin//004B923F
		  for I := 1 to Files.count do //004B9265
		  begin//004B926B
			if (FileExists(Files[I])) then 
			begin
				if (not Find ) then
				begin//004B9290
				  MenuItem := TMenuItem.Create(Nil);
				  MenuItem.Caption := '-';
				   MainMenu.Items.Items[ItemIndex].Insert(MainMenu.Items.Items[ItemIndex].Count, MenuItem);
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
			   
				MainMenu.Items.Items[ItemIndex].Insert(MainMenu.Items.Items[ItemIndex].Count, MenuItem);
			end;
		  end;//5
	  end;//3
	end;//2
end;//0


//004B9410
function GetutiliserHistorique:boolean;
begin//0
  result := GetValueRegBool('utiliserHistorique', true{,0});
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
procedure sub_004B94D8(MainMenu:TMainMenu; ItemIndex:dword; DrawItem:TMenuDrawItemEvent; Click:TNotifyEvent);
begin//0
  sub_004B90CC(MainMenu, ItemIndex);
  sub_004B91F0(MainMenu, ItemIndex, DrawItem, Click);
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
procedure sub_004B964C(a:TStrings);
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
function sub_004B9794:TStringList;
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
	StringList := sub_004B9840;
  end;//1
  Registry.CloseKey;
  Registry.Free;
 result:= StringList;
end;//0

//004B9840
function sub_004B9840:TStringList;
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
procedure sub_004B9938(a:TStrings);
var
  Registry : TRegistry;
begin
  Registry := TRegistry.Create;
  Registry.RootKey :=HKEY_CURRENT_USER;
  if (Registry.KeyExists('Software\Carnet de Notes 2.x\Types de notes')) then
  begin//1
	//004B97D7
	Registry.DeleteKey;
  end;
  Registry.OpenKey('Software\Carnet de Notes 2.x\Types de notes', True);
  for i:=0 to a.count-1 do
	Registry.WriteString(a[i],'');

  Registry.CloseKey;
  Registry.Free;
end;

//004B9A44
function sub_004B9A44:TStringlist;
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
function sub_004B9B44:TStringlist;
var
  Registry : TRegistry;
begin
  Registry := TRegistry.Create;
  Registry.RootKey := HKEY_CURRENT_USER;
  if (Registry.KeyExists('Software\Carnet de Notes 2.x\Periodes')) then
    Registry.DeleteKey;
  Registry.free;
  result := sub_004B9A44();  
end;

//004B9BBC
procedure sub_004B9BBC(a:TColor);
begin
  if(GetColorlignesPaires <> a ) then 
  begin
	SetValueReg1('lignesImpaires',a{,0});
	lignesImpaires := true;
 end;
end;

//004B9BF8
procedure SetColorlignesPaires(a:TColor);
begin
  if(GetColorlignesPaires <> a ) then 
  begin
	SetValueReg1('lignesPaires',a{,0});
	lignesPaires := true;
 end;
end;

//004B9C34
function GetColorlignesPaires:TColor;
begin	  
  if (lignesImpaires) then 
  begin
    gvar_00617CAC:= GetValueRegColor('lignesImpaires', sub_004B9CCC);
	result  := gvar_00617CAC;
  end;
  lignesImpaires := false;
end;//0

//004B9C80
function GetColorlignesPaires:TColor;
begin
	  if (lignesPaires) then 
	  begin
	  gvar_00617CB0 := GetValueRegColor('lignesPaires', sub_004B9CD4);
	  result := gvar_00617CB0;
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
   SetValueReg1('couleurSelection',a{,0});
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
	  gvar_00617CB4 := GetValueRegColor('couleurSelection', $FFFF00);
	  result := gvar_00617CB4;
	  couleurSelection := false;
  end;
  
end;//0

//004B9D74
procedure sub_004B9D74(a:Integer);
begin
  SetValueRegInt('arrondirMoyennes',a{,0});
end;

//004B9DA4
procedure sub_004B9DA4(a:Integer);
begin
if(gvar_00617904  ) then 
 SetValueRegInt('moyennesSur',a{,true})
else 
 SetValueRegInt('moyennesSur',a{,false});
end;

//004B9DE4
procedure sub_004B9DE4(a:Integer);
begin
 SetValueRegInt('trierMoyennes',a{,false})
end;

//004B9E10
function sub_004B9E10:integer; //arrondirMoyennes
begin//0
  //004B9E10
  result := GetValueRegInt('arrondirMoyennes', 0);
end;//0


//004B9E48
function sub_004B9E48:integer; //moyennesSur
begin//0
  //004B9E48
  if (gvar_00617905) then//004B9E52
	 result := GetValueRegInt('moyennesSur',20{, 1});
   else
  if (gvar_00617904 <> 0) then//004B9E6B
	 result:= GetValueRegInt('moyennesSur',20,{, 1});
   
end;//0


//004B9EA0
function sub_004B9EA0:dword;
begin//0
  //004B9EA0
  result := GetValueRegInt('trierMoyennes', 0);
end;//0


//004B9ED4
procedure SetmoyenneParTypeDeNotes(a:Boolean);
begin
 SetValueRegBool('moyenneParTypeDeNotes',a{,0});
end;

//004B9F04
procedure SetmoyennesEcritEtOral(a:Boolean);
begin
  SetValueRegBool('moyennesEcritEtOral',a{,0});
end;

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
  gvar_00617C9C := GetValueRegColor('couleur2Note', sub_004BA26C);
  result :=gvar_00617C9C ;
  end;
  couleur2Note := false;
end;//0


//004BA024
function _Getcouleur3Note:TColor;
begin//0
  //004BA024
  if (couleur3Note) then 
  begin
  gvar_00617CA0 := GetValueRegColor('couleur3Note', sub_004BA274);
  result :=gvar_00617CA0;
  end;
  couleur3Note := false;
end;//0


//004BA070
function _Getcouleur4Note:TColor;
begin//0
  if (couleur4Note) then 
  begin
   gvar_00617CA4 := GetValueRegColor('couleur4Note', sub_004BA27C);
   result := gvar_00617CA4;
  end;
  couleur4Note := false;
end;//0


//004BA0BC
function _Getcouleur5Note:TColor;
begin//0
  //004BA0BC
  if (couleur5Note) then 
  begin
  gvar_00617CA8 := GetValueRegColor('couleur5Note', sub_004BA280);
  result := gvar_00617CA8;
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
begin
 if(_Getcouleur2Note <> a) then 
 begin
   _Getcouleur3Note('couleur3Note',a{,false});
   couleur3Note := true;
 end;
end;

//004BA1EC
procedure Setcouleur4Note(a:TColor);
begin
 if(_Getcouleur4Note <> a) then 
 begin
   _Getcouleur3Note('couleur4Note',a{,false});
   couleur4Note := true;
 end;
end;

//004BA228
procedure Setcouleur5Note(a:TColor);
begin
 if(_Getcouleur5Note <> a) then 
 begin
   _Getcouleur3Note('couleur5Note',a{,false});
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
procedure sub_004BA288(a:Boolean);
begin
 SetValueRegBool('colorationNote',a{,0});
end;

//004BA2B0
function sub_004BA2B0:boolean;
begin//0
   result:= GetValueRegBool('colorationNote', true{,0});
end;//0


//004BA2D8
procedure sub_004BA2D8(a:Boolean);
begin
  SetValueRegBool('fichierBak',a{,0});
end;

//004BA2FC
function sub_004BA2FC:boolean;
begin//0
  //004BA2FC
  result := GetValueRegBool('fichierBak', true{,0});
end;//0


//004BA320
procedure sub_004BA320(a:Integer);
begin
 SetValueRegInt('ongletsGrillesBilans',a{,0});
end;

//004BA354
procedure sub_004BA354(a:Integer);
begin
 SetValueRegInt('ongletsGrillesNotes',a{,0});
end;

//004BA384
function sub_004BA384:dword;
begin//0
  //004BA384
  result := GetValueRegInt('ongletsGrillesBilans', 0{, 0});
end;//0


//004BA3C0
function sub_004BA3C0:dword;
begin//0
  //004BA3C0
 result:=GetValueRegInt('ongletsGrillesNotes', 0{, 0});
end;//0


//004BA3F8
function sub_004BA3F8(a:String):TStringlist;
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

procedure sub_004BA7B0(a:integer; s:TStrings);
var
  lvar_4:integer;
  lvar_8:TStrings;
  lvar_C:;
  lvar_10:AnsiString;
  lvar_14:AnsiString;
  lvar_18:AnsiString;
  lvar_1C:AnsiString;
begin//0
  //004BA7B0
  ECX := 0;
  lvar_8 := s;
  lvar_4 := a;
  EAX := a;
  try
    //004BA7DB
    ECX := a;
    EDX := $4BA8FC;
    lvar_10 := 'Software\Carnet de Notes 2.x\Periodes\' + a;
    EDX := lvar_10;
    EAX := EBX;//EBX
    EAX := EBX.KeyExists(lvar_10);
    if (EAX{EBX.KeyExists(lvar_10)} <> False) then
    begin//2
      //004BA813
      ECX := a;
      EDX := $4BA8FC;
      lvar_14 := 'Software\Carnet de Notes 2.x\Periodes\' + a;
      EDX := lvar_14;
      EAX := EBX;//EBX
      EAX := EBX.DeleteKey(lvar_14);
    end;//2
    ECX := 1;
    EDX := $4BA92C;
    EAX := EBX;//EBX
    EAX := EBX.OpenKey('Software\Carnet de Notes 2.x\Periodes', ECX{True});
    ECX := 0;
    EDX := a;
    EAX := EBX;//EBX
    EBX.WriteString(a, '');
    EAX := EBX;//EBX
    EBX.CloseKey;
    EDX := 3;
    lvar_18 := 'Software\Carnet de Notes 2.x\Periodes\' + a + '\noms';
    EDX := lvar_18;
    ECX := 1;
    EAX := EBX;//EBX
    EAX := EBX.OpenKey(lvar_18, ECX{True});
    EAX := s;
    EAX := s.GetCount;
    ESI := s.GetCount;
    ESI := ESI - 1;//ESI
    if (ESI >= 0) then
    begin//2
      //004BA88C
      ESI := ESI + 1;//ESI
      lvar_C := 0;
      for lvar_C := 0 to ESI - 1 do
      begin//3
        //004BA894
        EDX := lvar_C;
        EAX := s;
        lvar_1C := s.Get(lvar_C{0});
        EDX := lvar_1C;
        ECX := 0;
        EAX := EBX;//EBX
        EBX.WriteString(lvar_1C, '');
      end;//3
    end;//2
    EAX := EBX;//EBX
    EBX.CloseKey;
    EAX := EBX;//EBX
    EBX.Free;
  finally//1
    //004BA8CF
    EDX := 4;
    lvar_4 := '';
  end;//1
end;//0


004BA7B0    push        ebp
004BA7B1    mov         ebp,esp
004BA7B3    xor         ecx,ecx
004BA7B5    push        ecx
004BA7B6    push        ecx
004BA7B7    push        ecx
004BA7B8    push        ecx
004BA7B9    push        ecx
004BA7BA    push        ecx
004BA7BB    push        ecx
004BA7BC    push        ebx
004BA7BD    push        esi
004BA7BE    push        edi
004BA7BF    mov         dword ptr [ebp-8],edx
004BA7C2    mov         dword ptr [ebp-4],eax
004BA7C5    mov         eax,dword ptr [ebp-4]
004BA7C8    call        @LStrAddRef
004BA7CD    xor         eax,eax
004BA7CF    push        ebp
004BA7D0    push        4BA8E5
004BA7D5    push        dword ptr fs:[eax]
004BA7D8    mov         dword ptr fs:[eax],esp
004BA7DB    mov         dl,1
004BA7DD    mov         eax,[00490114];TRegistry
004BA7E2    call        TRegistry.Create;TRegistry.Create
004BA7E7    mov         ebx,eax
004BA7E9    mov         edx,80000001
004BA7EE    mov         eax,ebx
004BA7F0    call        TRegistry.SetRootKey
004BA7F5    lea         eax,[ebp-10]
004BA7F8    mov         ecx,dword ptr [ebp-4]
004BA7FB    mov         edx,4BA8FC;'Software\Carnet de Notes 2.x\Periodes\'
004BA800    call        @LStrCat3
004BA805    mov         edx,dword ptr [ebp-10]
004BA808    mov         eax,ebx
004BA80A    call        TRegistry.KeyExists
004BA80F    test        al,al
>	004BA811    je          004BA82D
004BA813    lea         eax,[ebp-14]
004BA816    mov         ecx,dword ptr [ebp-4]
004BA819    mov         edx,4BA8FC;'Software\Carnet de Notes 2.x\Periodes\'
004BA81E    call        @LStrCat3
004BA823    mov         edx,dword ptr [ebp-14]
004BA826    mov         eax,ebx
004BA828    call        TRegistry.DeleteKey
004BA82D    mov         cl,1
004BA82F    mov         edx,4BA92C;'Software\Carnet de Notes 2.x\Periodes'
004BA834    mov         eax,ebx
004BA836    call        TRegistry.OpenKey
004BA83B    xor         ecx,ecx
004BA83D    mov         edx,dword ptr [ebp-4]
004BA840    mov         eax,ebx
004BA842    call        TRegistry.WriteString
004BA847    mov         eax,ebx
004BA849    call        TRegistry.CloseKey
004BA84E    push        4BA8FC;'Software\Carnet de Notes 2.x\Periodes\'
004BA853    push        dword ptr [ebp-4]
004BA856    push        4BA95C;'\noms'
004BA85B    lea         eax,[ebp-18]
004BA85E    mov         edx,3
004BA863    call        @LStrCatN
004BA868    mov         edx,dword ptr [ebp-18]
004BA86B    mov         cl,1
004BA86D    mov         eax,ebx
004BA86F    call        TRegistry.OpenKey
004BA874    mov         eax,dword ptr [ebp-8]
004BA877    mov         edx,dword ptr [eax]
004BA879    call        dword ptr [edx+14]
004BA87C    mov         esi,eax
004BA87E    sub         esi,1
>	004BA881    jno         004BA888
004BA883    call        @IntOver
004BA888    test        esi,esi
>	004BA88A    jl          004BA8B4
004BA88C    inc         esi
004BA88D    mov         dword ptr [ebp-0C],0
004BA894    lea         ecx,[ebp-1C]
004BA897    mov         edx,dword ptr [ebp-0C]
004BA89A    mov         eax,dword ptr [ebp-8]
004BA89D    mov         edi,dword ptr [eax]
004BA89F    call        dword ptr [edi+0C]
004BA8A2    mov         edx,dword ptr [ebp-1C]
004BA8A5    xor         ecx,ecx
004BA8A7    mov         eax,ebx
004BA8A9    call        TRegistry.WriteString
004BA8AE    inc         dword ptr [ebp-0C]
004BA8B1    dec         esi
>	004BA8B2    jne         004BA894
004BA8B4    mov         eax,ebx
004BA8B6    call        TRegistry.CloseKey
004BA8BB    mov         eax,ebx
004BA8BD    call        TObject.Free
004BA8C2    xor         eax,eax
004BA8C4    pop         edx
004BA8C5    pop         ecx
004BA8C6    pop         ecx
004BA8C7    mov         dword ptr fs:[eax],edx
004BA8CA    push        4BA8EC
004BA8CF    lea         eax,[ebp-1C]
004BA8D2    mov         edx,4
004BA8D7    call        @LStrArrayClr
004BA8DC    lea         eax,[ebp-4]
004BA8DF    call        @LStrClr
004BA8E4    ret
>	004BA8E5    jmp         @HandleFinally
>	004BA8EA    jmp         004BA8CF
004BA8EC    pop         edi
004BA8ED    pop         esi
004BA8EE    pop         ebx
004BA8EF    mov         esp,ebp
004BA8F1    pop         ebp
004BA8F2    ret
end;

//004BA964
procedure sub_004BA964(?:?);
begin
004BA964    push        ebp
004BA965    mov         ebp,esp
004BA967    push        0
004BA969    push        0
004BA96B    push        0
004BA96D    push        ebx
004BA96E    mov         dword ptr [ebp-4],eax
004BA971    mov         eax,dword ptr [ebp-4]
004BA974    call        @LStrAddRef
004BA979    xor         eax,eax
004BA97B    push        ebp
004BA97C    push        4BAA1A
004BA981    push        dword ptr fs:[eax]
004BA984    mov         dword ptr fs:[eax],esp
004BA987    mov         dl,1
004BA989    mov         eax,[00490114];TRegistry
004BA98E    call        TRegistry.Create;TRegistry.Create
004BA993    mov         ebx,eax
004BA995    mov         edx,80000001
004BA99A    mov         eax,ebx
004BA99C    call        TRegistry.SetRootKey
004BA9A1    lea         eax,[ebp-8]
004BA9A4    mov         ecx,dword ptr [ebp-4]
004BA9A7    mov         edx,4BAA30;'Software\Carnet de Notes 2.x\Periodes\'
004BA9AC    call        @LStrCat3
004BA9B1    mov         edx,dword ptr [ebp-8]
004BA9B4    mov         eax,ebx
004BA9B6    call        TRegistry.KeyExists
004BA9BB    test        al,al
>	004BA9BD    je          004BA9D9
004BA9BF    lea         eax,[ebp-0C]
004BA9C2    mov         ecx,dword ptr [ebp-4]
004BA9C5    mov         edx,4BAA30;'Software\Carnet de Notes 2.x\Periodes\'
004BA9CA    call        @LStrCat3
004BA9CF    mov         edx,dword ptr [ebp-0C]
004BA9D2    mov         eax,ebx
004BA9D4    call        TRegistry.DeleteKey
004BA9D9    mov         cl,1
004BA9DB    mov         edx,4BAA60;'Software\Carnet de Notes 2.x\Periodes'
004BA9E0    mov         eax,ebx
004BA9E2    call        TRegistry.OpenKey
004BA9E7    mov         edx,dword ptr [ebp-4]
004BA9EA    mov         eax,ebx
004BA9EC    call        TRegistry.DeleteValue
004BA9F1    mov         eax,ebx
004BA9F3    call        TRegistry.CloseKey
004BA9F8    mov         eax,ebx
004BA9FA    call        TObject.Free
004BA9FF    xor         eax,eax
004BAA01    pop         edx
004BAA02    pop         ecx
004BAA03    pop         ecx
004BAA04    mov         dword ptr fs:[eax],edx
004BAA07    push        4BAA21
004BAA0C    lea         eax,[ebp-0C]
004BAA0F    mov         edx,3
004BAA14    call        @LStrArrayClr
004BAA19    ret
>	004BAA1A    jmp         @HandleFinally
>	004BAA1F    jmp         004BAA0C
004BAA21    pop         ebx
004BAA22    mov         esp,ebp
004BAA24    pop         ebp
004BAA25    ret
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
 result := GetValueRegBool('numeroterElevesSeriesDeNotes', true{,0});
end;//0


//004BAEFC
procedure sub_004BAEFC(a:Boolean);
begin
  SetValueRegBool('numeroterElevesSeriesDeNotes',a{,0});
end;

//004BAF34
function sub_004BAF34:boolean;
begin
 result := GetValueRegBool('numeroterElevesBilans',true{,0});
end;

//004BAF64
procedure sub_004BAF64(a:Boolean);
begin
  SetValueRegBool('numeroterElevesBilans',a{,0});
end;

//004BAF94
procedure sub_004BAF94(a:byte; U:TInclureImpression);
procedure sub_004BAF94(a:integer; b:dword);
var
  lvar_4:;
  lvar_C:;
  lvar_14:;
  lvar_18:;
  lvar_1C:;
  lvar_4:dword;
  lvar_8:TRegistry;
  lvar_C:TRegistry;
  lvar_10:TRegistry;
  lvar_14:AnsiString;
  lvar_18:AnsiString;
  lvar_1C:AnsiString;
begin//0
  //004BAF94
  ECX := 0;
  lvar_1C := ECX;
  lvar_18 := ECX;
  lvar_14 := ECX;
  lvar_4 := b;
  try
    //004BAFB9
    case a of
      0..0:
      begin//3
        //004BB0AC
        EDX := 1;
        EAX := TRegistry.Create;
        lvar_C := TRegistry.Create;
        EDX := $80000001{-2147483647};
        EAX := lvar_C;
        lvar_C.SetRootKey{RootKey}(2147483649);
        EDX := $4BB2DC;
        EAX := lvar_C;
        if (EAX{lvar_C.KeyExists('Software\Carnet de Notes 2.x\Inclure impression\Séries de notes')} <> False) then
        begin//4
          //004BB0D9
          EDX := $4BB2DC;
          EAX := lvar_C;
          EAX := lvar_C.DeleteKey('Software\Carnet de Notes 2.x\Inclure impression\Séries de notes');
        end;//4
        ECX := 1;
        EDX := $4BB2DC;
        EAX := lvar_C;
        EAX := lvar_C.OpenKey('Software\Carnet de Notes 2.x\Inclure impression\Séries de notes', ECX{True});
        EAX := gvar_00617CC0;

{
004BAF94    push        ebp
004BAF95    mov         ebp,esp
004BAF97    add         esp,0FFFFFFE4
004BAF9A    push        ebx
004BAF9B    push        esi
004BAF9C    push        edi
004BAF9D    xor         ecx,ecx
004BAF9F    mov         dword ptr [ebp-1C],ecx
004BAFA2    mov         dword ptr [ebp-18],ecx
004BAFA5    mov         dword ptr [ebp-14],ecx
004BAFA8    mov         dword ptr [ebp-4],edx
004BAFAB    xor         edx,edx
004BAFAD    push        ebp
004BAFAE    push        4BB27C
004BAFB3    push        dword ptr fs:[edx]
004BAFB6    mov         dword ptr fs:[edx],esp
004BAFB9    sub         al,1
>	004BAFBB    jb          004BB0AC
>	004BAFC1    je          004BB189
004BAFC7    dec         al
>	004BAFC9    jne         004BB261
004BAFCF    mov         dl,1
004BAFD1    mov         eax,[00490114];TRegistry
004BAFD6    call        TRegistry.Create;TRegistry.Create
004BAFDB    mov         dword ptr [ebp-8],eax
004BAFDE    mov         edx,80000001
004BAFE3    mov         eax,dword ptr [ebp-8]
004BAFE6    call        TRegistry.SetRootKey
004BAFEB    mov         edx,4BB294;'Software\Carnet de Notes 2.x\Inclure impression\Grille vierge'
004BAFF0    mov         eax,dword ptr [ebp-8]
004BAFF3    call        TRegistry.KeyExists
004BAFF8    test        al,al
>	004BAFFA    je          004BB009
004BAFFC    mov         edx,4BB294;'Software\Carnet de Notes 2.x\Inclure impression\Grille vierge'
004BB001    mov         eax,dword ptr [ebp-8]
004BB004    call        TRegistry.DeleteKey
004BB009    mov         cl,1
004BB00B    mov         edx,4BB294;'Software\Carnet de Notes 2.x\Inclure impression\Grille vierge'
004BB010    mov         eax,dword ptr [ebp-8]
004BB013    call        TRegistry.OpenKey
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
004BB289    ret
}
end;

//004BB35C
function GetcolonnesBilanDetaillees:boolean;
begin
 result := GetValueRegBool('colonnesBilanDetaillees',false{,0});

end;

///004BB38C
procedure SetcolonnesBilanDetaillee(a:Boolean);
begin
 SetValueRegBool('colonnesBilanDetaillees',a{,0});
end;

//004BB3BC
procedure SettrierMoyennesImpression(a:Integer);
begin
 SetValueRegInt('trierMoyennesImpression',a{,0});
end;

//004BB3F0
function GettrierMoyennesImpression:byte;
begin
  result := GetValueRegInt('trierMoyennesImpression',0{,0});

end;

//004BB42C
procedure sub_004BB42C(a:Boolean);
begin
 SetValueRegBool('colorationGrille',a{,0});
end;

//004BB458
function sub_004BB458:Boolean;
begin
 result:= GetValueRegBool('colorationGrille', true);
end;

//004BB484
procedure sub_004BB484(a:Boolean);
begin
  SetValueRegBool('afficherBarreOutils',a{,0});
end;

//004BB4B0
procedure sub_004BB4B0(a:Boolean);
begin
 SetValueRegBool('tailleMaximumAuDemarrage',a{,0});
end;

//004BB4E4
procedure sub_004BB4E4(a:Boolean);
begin
  SetValueRegBool('afficherHeure',a{,0});
end;

//004BB50C
procedure sub_004BB50C(a:Boolean);
begin
  SetValueRegBool('afficherDate',a{,0});
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
 result := GetValueRegBool('afficherBarreOutils', true{,0});
end;//0


//004BB588
function sub_004BB588:boolean;
begin//0
 //004BB588
 result := GetValueRegBool('tailleMaximumAuDemarrage', true {,1});
end;//0


//004BB5BC
function sub_004BB5BC:boolean;
begin//0
 //004BB5BC

 result := GetValueRegBool('afficherHeure', true {,0});
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
function sub_004BB7E8:dword;
begin//0
 result := GetValueRegInt('ongletClasses', 1{, 0});
end;//0

//004BB81C
procedure sub_004BB81C(a:Boolean);
begin
 SetValueRegBool('afficherOngletsClasses', a{,0});
end;

//004BB84C
function sub_004BB84C:boolean;
begin//0
 result := GetValueRegBool('afficherOngletsClasses', true{,0});
end;//0


//004BB87C
function sub_004BB87C:TColor;
begin//0
 result := GetValueRegColor('couleurFenetreInfo', sub_004BB8AC{,0});
end;//0

//004BB8AC
function sub_004BB8AC:TColor;
begin
  result := $0C8FFC8;
end;

//004BB8B4
procedure sub_004BB8B4(a:TColor);
begin
 SetValueReg1('couleurFenetreInfo', a{,0});
end;

//004BB8E0
procedure SetafficherFenetreInfo(a:Boolean);
begin
 SetValueRegBool('afficherFenetreInfo', a{,0});
end;

//004BB90C
procedure SetafficherR(a:Boolean);
begin
 SetValueRegBool('afficherR', a{,0});
end;

//004BB930
function GetafficherFenetreInfo:boolean;
begin//0
 //004BB930
 Result := GetValueRegBool('afficherFenetreInfo', true{,0});
end;//0


//004BB95C
function GetafficherR:Boolean;
begin//0
 //004BB95C
 Result := GetValueRegBool('afficherR', true{,0});
end;//0


//004BB980
procedure SetafficherDatesDeNaissance(a:Boolean);
begin
 SetValueRegBool('afficherDatesDeNaissance', a{,0});
end;

//004BB9B4
function GetafficherDatesDeNaissance:Boolean;
begin//0
 //004BB9B4
 Result := GetValueRegBool('afficherDatesDeNaissance', true{,0});
end;//0


//004BB9E8
procedure Setgraphe3D(a:Boolean);
begin//0
 //004BB9E8
 SetValueRegBool('graphe3D', a {,0});
end;//0


//004BBA0C
function Getgraphe3D:boolean;
begin//0
 //004BBA0C
 result := GetValueRegBool('graphe3D', true{,0});
end;//0


//004BBA30
procedure SetgrapheDegrade(a:Boolean);
begin//0
 //004BBA30
 SetValueRegBool('grapheDegrade', a{,0});
end;//0


//004BBA58
procedure SetgrapheEnCouleur(a:Boolean);
begin//0
 //004BBA58
 SetValueRegBool('grapheEnCouleur', a{,0});
end;//0


//004BBA80
function GetgrapheDegrade:boolean;
begin//0
 //004BBA80
 result := GetValueRegBool('grapheDegrade', true{,0});
end;//0


//004BBAA8
function GetgrapheEnCouleur:boolean;
begin//0
 //004BBAA8
 result := GetValueRegBool('grapheEnCouleur', true{,0});
end;//0


//004BBAD0
procedure SetgrapheLegende(a:Boolean);
begin//0
 SetValueRegBool('grapheLegende', a{,0});
end;//0


//004BBAF8
function GetgrapheLegende:boolean;
begin//0
 result := GetValueRegBool('grapheLegende', true{,0});
end;//0


//004BBB20
procedure SetcouleurDebutDegrade(a:TColor);
begin
 SetValueReg1('couleurDebutDegrade', a{,0});
end;

//004BBB4C
procedure SetcouleurFinDegrade(a:TColor);
begin
 SetValueReg1('couleurFinDegrade', a{,0});
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
  SetValueReg1('couleurEleve', a{,0});
end;

//004BBC10
procedure SetcouleurMax(a:TColor);
begin
 SetValueReg1('couleurMax', a{,0});
end;

//004BBC34
procedure GetcouleurMin(a:TColor);
begin
 SetValueReg1('couleurMin', a{,0});
end;

//004BBC58
procedure SetcouleurMoyenne(a:TColor);
begin
 SetValueReg1('couleurMoyenne', a{,0});
end;

//004BBC80
function GetcouleurEleve:TColor;
begin//0
 result := GetValueRegColor('couleurEleve',  sub_004BBCAC{,0});
end;//0


//004BBCAC
function sub_004BBCAC:TColor;
begin
 result := $00FFFF;
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
function GetcouleurMin:TColor;
begin
result := GetValueRegColor('couleurMin',sub_004BBD0C{,0});
end;

//004BBD0C
function sub_004BBD0C:TColor;
begin
 result := $0000FF;
end;

//004BBD14
function GetcouleurMoyenne:TColor;
begin//0
 result := GetValueRegColor('couleurMoyenne',sub_004BBD40{,0});
end;//0


//004BBD40
function sub_004BBD40:TColor;
begin
result := $80FF80;
end;

//004BBD48
procedure SetcouleurMurBas(a:TColor);
begin
  SetValueReg1('couleurMurBas',a{,0});
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
  SetValueReg1('couleurMurGauche',a{,0});
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
 SetValueRegBool('grapheLigneEleve', a{,0});
end;//0


//004BBE04
procedure SetgrapheLigneMax(a:Boolean);
begin//0
 //004BBE04
 SetValueRegBool('grapheLigneMax', a{,0});
end;//0


//004BBE2C
procedure SetgrapheLigneMin(a:Boolean);
begin//0
 //004BBE2C
 SetValueRegBool('grapheLigneMin', a{,0});
end;//0


//004BBE54
procedure SetgrapheLigneMoyenne(a:Boolean);
begin
SetValueRegBool('grapheLigneMoyenne', a{,0});
end;

//004BBE80
function GetgrapheLigneEleve:boolean;
begin//0
 result := GetValueRegBool('grapheLigneEleve', true{,0});
end;//0


//004BBEAC
function GetgrapheLigneMax:boolean;
begin//0
 result := GetValueRegBool('grapheLigneMax', true{,0});
end;//0


//004BBED4
function GetgrapheLigneMin:boolean;
begin//0
 result := GetValueRegBool('grapheLigneMin', true{,0});
end;//0


//004BBEFC
function GetgrapheLigneMoyenne:boolean;
begin
result := GetValueRegBool('grapheLigneMoyenne', true{,0});
end;

//004BBF28
procedure SetongletsGraphes(a:Integer);
begin
  SetValueRegInt('ongletsGraphes', a{,0});

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
  SetValueRegBool('impressionCouleurNote',a{,0});
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
 result := GetValueRegBool('numeroterElevesGrilleVierge',true{,0});
end;

//004BC050
procedure SetlargeurGrilleVierge(a:Integer);
begin
 SetValueRegInt('largeurGrilleVierge',a{,0});
end;

//004BC080
function SetlargeurGrilleVierge:byte;
begin
 result := GetValueRegInt('largeurGrilleVierge',10{,0});
end;

//004BC0B8
procedure SetimpressionColonneMoyenne(a:Boolean);
begin
  SetValueRegBool('impressionColonneMoyenne',a{,0});
end;

//004BC0EC
function GetimpressionColonneMoyenne:boolean;
begin
  result := GetValueRegBool('impressionColonneMoyenne',false{,0});
end;

//004BC120
procedure SetimpressionColonneClassement(a:Boolean);
begin
 SetValueRegBool('impressionColonneClassement',a{,0});
end;

//004BC154
procedure SetimpressionMoyennesEcritOral(a:Boolean);
begin
 SetValueRegBool('impressionMoyennesEcritOral',a{,0});
end;
//==========================================================================================================
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
 SetValueRegBool('numeroterElevesAppreciations',a{,0});
end;

//004BC228
function GetnumeroterElevesAppreciations:boolean;
begin
	result:= GetValueRegBool('numeroterElevesAppreciations',true{,0});
end;

//004BC260
procedure SetarrondirMoyennesAnnuelles(a:Integer);
begin
 SetValueRegInt('arrondirMoyennesAnnuelles',a{,0});
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
  SetValueRegInt('typeMoyennesAnnuelles',a{,0});
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
    StringList := sub_004BC3F0;
  end;//1
  Registry.Free;
  result := StringList;
end;

//004BC3F0
function sub_004BC3F0:TStringlist;
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
  lvar_4:;
  lvar_8:;
  lvar_C:;
  lvar_4:TStrings;
  lvar_8:;
  lvar_C:AnsiString;
begin//0
  //004BC698
  EDX := 0;
  lvar_C := EDX;
  lvar_4 := a;
  try
    //004BC6B7
    EDX := 1;
    EAX := TRegistry.Create;
    EBX := TRegistry.Create;
    EDX := $80000001{-2147483647};
    EAX := EBX;//EBX
    EBX.SetRootKey{RootKey}(2147483649);
    EDX := $4BC778;
    EAX := EBX;//EBX
    EAX := EBX.KeyExists('Software\Carnet de Notes 2.x\Matieres');
    if (EAX{EBX.KeyExists('Software\Carnet de Notes 2.x\Matieres')} <> False) then
    begin//2
      //004BC6E1
      EDX := $4BC778;
      EAX := EBX;//EBX
      EAX := EBX.DeleteKey('Software\Carnet de Notes 2.x\Matieres');
    end;//2
    ECX := 1;
    EDX := $4BC778;
    EAX := EBX;//EBX
    EAX := EBX.OpenKey('Software\Carnet de Notes 2.x\Matieres', ECX{True});
    EAX := a;
    EAX := a.GetCount;
    ESI := a.GetCount;
    ESI := ESI - 1;//ESI
    if (ESI >= 0) then
    begin//2
      //004BC713
      ESI := ESI + 1;//ESI
      lvar_8 := 0;
      for lvar_8 := 0 to ESI - 1 do
      begin//3
        //004BC71B
        EDX := lvar_8;
        EAX := a;
        lvar_C := a.Get(lvar_8);
        EDX := lvar_C;
        ECX := 0;
        EAX := EBX;//EBX
        EBX.WriteString(lvar_C, '');
      end;//3
    end;//2
    EAX := EBX;//EBX
    EBX.CloseKey;
    EAX := EBX;//EBX
    EBX.Free;
  finally//1
    //004BC756
    lvar_C := '';
  end;//1
end;//0

{
004BC698    push        ebp
004BC699    mov         ebp,esp
004BC69B    add         esp,0FFFFFFF4
004BC69E    push        ebx
004BC69F    push        esi
004BC6A0    push        edi
004BC6A1    xor         edx,edx
004BC6A3    mov         dword ptr [ebp-0C],edx
004BC6A6    mov         dword ptr [ebp-4],eax
004BC6A9    xor         eax,eax
004BC6AB    push        ebp
004BC6AC    push        4BC75F
004BC6B1    push        dword ptr fs:[eax]
004BC6B4    mov         dword ptr fs:[eax],esp
004BC6B7    mov         dl,1
004BC6B9    mov         eax,[00490114];TRegistry
004BC6BE    call        TRegistry.Create;TRegistry.Create
004BC6C3    mov         ebx,eax
004BC6C5    mov         edx,80000001
004BC6CA    mov         eax,ebx
004BC6CC    call        TRegistry.SetRootKey
004BC6D1    mov         edx,4BC778;'Software\Carnet de Notes 2.x\Matieres'
004BC6D6    mov         eax,ebx
004BC6D8    call        TRegistry.KeyExists
004BC6DD    test        al,al
>	004BC6DF    je          004BC6ED
004BC6E1    mov         edx,4BC778;'Software\Carnet de Notes 2.x\Matieres'
004BC6E6    mov         eax,ebx
004BC6E8    call        TRegistry.DeleteKey
004BC6ED    mov         cl,1
004BC6EF    mov         edx,4BC778;'Software\Carnet de Notes 2.x\Matieres'
004BC6F4    mov         eax,ebx
004BC6F6    call        TRegistry.OpenKey
004BC6FB    mov         eax,dword ptr [ebp-4]
004BC6FE    mov         edx,dword ptr [eax]
004BC700    call        dword ptr [edx+14]
004BC703    mov         esi,eax
004BC705    sub         esi,1
>	004BC708    jno         004BC70F
004BC70A    call        @IntOver
004BC70F    test        esi,esi
>	004BC711    jl          004BC73B
004BC713    inc         esi
004BC714    mov         dword ptr [ebp-8],0
004BC71B    lea         ecx,[ebp-0C]
004BC71E    mov         edx,dword ptr [ebp-8]
004BC721    mov         eax,dword ptr [ebp-4]
004BC724    mov         edi,dword ptr [eax]
004BC726    call        dword ptr [edi+0C]
004BC729    mov         edx,dword ptr [ebp-0C]
004BC72C    xor         ecx,ecx
004BC72E    mov         eax,ebx
004BC730    call        TRegistry.WriteString
004BC735    inc         dword ptr [ebp-8]
004BC738    dec         esi
>	004BC739    jne         004BC71B
004BC73B    mov         eax,ebx
004BC73D    call        TRegistry.CloseKey
004BC742    mov         eax,ebx
004BC744    call        TObject.Free
004BC749    xor         eax,eax
004BC74B    pop         edx
004BC74C    pop         ecx
004BC74D    pop         ecx
004BC74E    mov         dword ptr fs:[eax],edx
004BC751    push        4BC766
004BC756    lea         eax,[ebp-0C]
004BC759    call        @LStrClr
004BC75E    ret
>	004BC75F    jmp         @HandleFinally
>	004BC764    jmp         004BC756
004BC766    pop         edi
004BC767    pop         esi
004BC768    pop         ebx
004BC769    mov         esp,ebp
004BC76B    pop         ebp
004BC76C    ret
}
end;

//004BC7A0
procedure sub_004BC7A0(a0:integer; a1:integer; a2:integer; a3:integer; a4:integer; a5:integer; a6:integer; a7:integer; a8:integer);
var
  lvar_4:integer;
  lvar_8:integer;
  lvar_9:;
  lvar_A:;
  lvar_10:AnsiString;
  lvar_14:AnsiString;
  lvar_18:AnsiString;
begin//0
  //004BC7A0
  EBX := 0;
  lvar_18 := EBX;
  lvar_14 := EBX;
  lvar_10 := EBX;
  lvar_9 := a2;
  lvar_8 := a1;
  lvar_4 := a0;
  try
    //004BC7CB
    EAX := a1;
    call(
    
    );
    if (EAX{a1} <> 0) then
    begin//2
      //004BC7DB
      EAX := a1;
      call(
      
      );
      EBX := EAX;//a1
      EBX := EBX - 1;//EBX
      if (EBX >= 0) then
      begin//3
        //004BC804
        EBX := EBX + 1;//EBX
        lvar_A := 0;
        for lvar_A := 0 to EBX - 1 do
        begin//4
          //004BC809
          ECX := 0;
          EDX := 1;
          EAX := TMenuItem.Create(Nil);
          ESI := TMenuItem.Create(Nil);
          EDX := lvar_A;
          EAX := a1;
          call(
          
          );
          EDX := lvar_10;
          EAX := ESI;//ESI
          ESI.SetCaption{Caption}(lvar_10);
          EAX := a4;
          ESI.OnClick := EAX;//a4
          EAX := a3;
          ESI.f84 := EAX;//a3
          EDI := a2;
          EDX := EDI;//a2
          EAX := a0;
          EAX := ;
          EAX := .GetItem{Items}(a2);
          EDX := 0;
          EAX := .GetItem{Items}(a2).GetItem{Items}({0});
          EAX := .GetItem{Items}(a2).GetItem{Items}({0}).GetCount{Count};
          //push EAX
          EDX := EDI;//a2
          EAX := a0;
          EAX := ;
          EAX := .GetItem{Items}(a2);
          EDX := 0;
          EAX := .GetItem{Items}(a2).GetItem{Items}({0});
          ECX := ESI;//ESI
          //pop EDX
          .GetItem{Items}(a2).GetItem{Items}({0}).Insert(.GetItem{Items}(a2).GetItem{Items}({0}).GetCount{Count}{EAX}{EDX}, ESI);
        end;//4
      end;//3
      EAX := a1;
      call(
      .GetItem{Items}(a2).GetItem{Items}({0}).GetCount{Count}{EAX}{EDX}
      );
      EBX := EAX;//a1
      EBX := EBX - 1;//EBX
      if (EBX >= 0) then
      begin//3
        //004BC8AF
        EBX := EBX + 1;//EBX
        lvar_A := 0;
        for lvar_A := 0 to EBX - 1 do
        begin//4
          //004BC8B4
          ECX := 0;
          EDX := 1;
          EAX := TMenuItem.Create(Nil);
          ESI := TMenuItem.Create(Nil);
          EDX := lvar_A;
          EAX := a1;
          call(
          0
          );
          EDX := lvar_14;
          EAX := ESI;//ESI
          ESI.SetCaption{Caption}(lvar_14);
          EAX := a6;
          ESI.OnClick := EAX;//a6
          EAX := a5;
          ESI.f84 := EAX;//a5
          EDI := a2;
          EDX := EDI;//a2
          EAX := a0;
          EAX := ;
          EAX := .GetItem{Items}(a2);
          EDX := 1;
          EAX := .GetItem{Items}(a2).GetItem{Items}({1});
          EAX := .GetItem{Items}(a2).GetItem{Items}({1}).GetCount{Count};
          //push EAX
          EDX := EDI;//a2
          EAX := a0;
          EAX := ;
          EAX := .GetItem{Items}(a2);
          EDX := 1;
          EAX := .GetItem{Items}(a2).GetItem{Items}({1});
          ECX := ESI;//ESI
          //pop EDX
          .GetItem{Items}(a2).GetItem{Items}({1}).Insert(.GetItem{Items}(a2).GetItem{Items}({1}).GetCount{Count}{EAX}{EDX}, ESI);
        end;//4
      end;//3
      ECX := 0;
      EDX := 1;
      EAX := TMenuItem.Create(Nil);
      ESI := TMenuItem.Create(Nil);
      EDX := $4BCA94;
      EAX := ESI;//ESI
      ESI.SetCaption{Caption}('Sur l'année');
      EAX := a6;
      ESI.OnClick := EAX;//a6
      EAX := a5;
      ESI.f84 := EAX;//a5
      EBX := a2;
      EDX := EBX;//a2
      EAX := a0;
      EAX := ;
      EAX := .GetItem{Items}(a2);
      EDX := 1;
      EAX := .GetItem{Items}(a2).GetItem{Items}({1});
      EAX := .GetItem{Items}(a2).GetItem{Items}({1}).GetCount{Count};
      //push EAX
      EDX := EBX;//a2
      EAX := a0;
      EAX := ;
      EAX := .GetItem{Items}(a2);
      EDX := 1;
      EAX := .GetItem{Items}(a2).GetItem{Items}({1});
      ECX := ESI;//ESI
      //pop EDX
      .GetItem{Items}(a2).GetItem{Items}({1}).Insert(.GetItem{Items}(a2).GetItem{Items}({1}).GetCount{Count}{EAX}{EDX}, ESI);
      EAX := a1;
      call(
      .GetItem{Items}(a2).GetItem{Items}({1}).GetCount{Count}{EAX}{EDX}
      );
      EBX := EAX;//a1
      EBX := EBX - 1;//EBX
      if (EBX >= 0) then
      begin//3
        //004BC9D3
        EBX := EBX + 1;//EBX
        lvar_A := 0;
        for lvar_A := 0 to EBX - 1 do
        begin//4
          //004BC9D8
          ECX := 0;
          EDX := 1;
          EAX := TMenuItem.Create(Nil);
          ESI := TMenuItem.Create(Nil);
          EDX := lvar_A;
          EAX := a1;
          call(
          0
          );
          EDX := lvar_18;
          EAX := ESI;//ESI
          ESI.SetCaption{Caption}(lvar_18);
          EAX := a8;
          ESI.OnClick := EAX;//a8
          EAX := a7;
          ESI.f84 := EAX;//a7
          EDI := a2;
          EDX := EDI;//a2
          EAX := a0;
          EAX := ;
          EAX := .GetItem{Items}(a2);
          EDX := 2;
          EAX := .GetItem{Items}(a2).GetItem{Items}({2});
          EAX := .GetItem{Items}(a2).GetItem{Items}({2}).GetCount{Count};
          //push EAX
          EDX := EDI;//a2
          EAX := a0;
          EAX := ;
          EAX := .GetItem{Items}(a2);
          EDX := 2;
          EAX := .GetItem{Items}(a2).GetItem{Items}({2});
          ECX := ESI;//ESI
          //pop EDX
          .GetItem{Items}(a2).GetItem{Items}({2}).Insert(.GetItem{Items}(a2).GetItem{Items}({2}).GetCount{Count}{EAX}{EDX}, ESI);
        end;//4
      end;//3
    end;//2
  finally//1
    //004BCA6C
    EDX := 3;
  end;//1
end;//0
{
004BC7A0    push        ebp
004BC7A1    mov         ebp,esp
004BC7A3    add         esp,0FFFFFFE8
004BC7A6    push        ebx
004BC7A7    push        esi
004BC7A8    push        edi
004BC7A9    xor         ebx,ebx
004BC7AB    mov         dword ptr [ebp-18],ebx
004BC7AE    mov         dword ptr [ebp-14],ebx
004BC7B1    mov         dword ptr [ebp-10],ebx
004BC7B4    mov         byte ptr [ebp-9],cl
004BC7B7    mov         dword ptr [ebp-8],edx
004BC7BA    mov         dword ptr [ebp-4],eax
004BC7BD    xor         eax,eax
004BC7BF    push        ebp
004BC7C0    push        4BCA7A
004BC7C5    push        dword ptr fs:[eax]
004BC7C8    mov         dword ptr fs:[eax],esp
004BC7CB    mov         eax,dword ptr [ebp-8]
004BC7CE    mov         edx,dword ptr [eax]
004BC7D0    call        dword ptr [edx+14]
004BC7D3    test        eax,eax
>	004BC7D5    je          004BCA5F
004BC7DB    mov         eax,dword ptr [ebp-8]
004BC7DE    mov         edx,dword ptr [eax]
004BC7E0    call        dword ptr [edx+14]
004BC7E3    mov         ebx,eax
004BC7E5    sub         ebx,1
>	004BC7E8    jno         004BC7EF
004BC7EA    call        @IntOver
004BC7EF    cmp         ebx,0FF
>	004BC7F5    jbe         004BC7FC
004BC7F7    call        @BoundErr
004BC7FC    test        bl,bl
>	004BC7FE    jb          004BC886
004BC804    inc         ebx
004BC805    mov         byte ptr [ebp-0A],0
004BC809    xor         ecx,ecx
004BC80B    mov         dl,1
004BC80D    mov         eax,[00445740];TMenuItem
004BC812    call        TMenuItem.Create;TMenuItem.Create
004BC817    mov         esi,eax
004BC819    lea         ecx,[ebp-10]
004BC81C    xor         edx,edx
004BC81E    mov         dl,byte ptr [ebp-0A]
004BC821    mov         eax,dword ptr [ebp-8]
004BC824    mov         edi,dword ptr [eax]
004BC826    call        dword ptr [edi+0C]
004BC829    mov         edx,dword ptr [ebp-10]
004BC82C    mov         eax,esi
004BC82E    call        TMenuItem.SetCaption
004BC833    mov         eax,dword ptr [ebp+18]
004BC836    mov         dword ptr [esi+80],eax;TMenuItem.OnClick:TNotifyEvent
004BC83C    mov         eax,dword ptr [ebp+1C]
004BC83F    mov         dword ptr [esi+84],eax;TMenuItem.?f84:TfrxPreview
004BC845    movzx       edi,byte ptr [ebp-9]
004BC849    mov         edx,edi
004BC84B    mov         eax,dword ptr [ebp-4]
004BC84E    mov         eax,dword ptr [eax+28]
004BC851    call        TMenuItem.GetItem
004BC856    xor         edx,edx
004BC858    call        TMenuItem.GetItem
004BC85D    call        TMenuItem.GetCount
004BC862    push        eax
004BC863    mov         edx,edi
004BC865    mov         eax,dword ptr [ebp-4]
004BC868    mov         eax,dword ptr [eax+28]
004BC86B    call        TMenuItem.GetItem
004BC870    xor         edx,edx
004BC872    call        TMenuItem.GetItem
004BC877    mov         ecx,esi
004BC879    pop         edx
004BC87A    call        TMenuItem.Insert
004BC87F    inc         byte ptr [ebp-0A]
004BC882    dec         bl
>	004BC884    jne         004BC809
004BC886    mov         eax,dword ptr [ebp-8]
004BC889    mov         edx,dword ptr [eax]
004BC88B    call        dword ptr [edx+14]
004BC88E    mov         ebx,eax
004BC890    sub         ebx,1
>	004BC893    jno         004BC89A
004BC895    call        @IntOver
004BC89A    cmp         ebx,0FF
>	004BC8A0    jbe         004BC8A7
004BC8A2    call        @BoundErr
004BC8A7    test        bl,bl
>	004BC8A9    jb          004BC93B
004BC8AF    inc         ebx
004BC8B0    mov         byte ptr [ebp-0A],0
004BC8B4    xor         ecx,ecx
004BC8B6    mov         dl,1
004BC8B8    mov         eax,[00445740];TMenuItem
004BC8BD    call        TMenuItem.Create;TMenuItem.Create
004BC8C2    mov         esi,eax
004BC8C4    lea         ecx,[ebp-14]
004BC8C7    xor         edx,edx
004BC8C9    mov         dl,byte ptr [ebp-0A]
004BC8CC    mov         eax,dword ptr [ebp-8]
004BC8CF    mov         edi,dword ptr [eax]
004BC8D1    call        dword ptr [edi+0C]
004BC8D4    mov         edx,dword ptr [ebp-14]
004BC8D7    mov         eax,esi
004BC8D9    call        TMenuItem.SetCaption
004BC8DE    mov         eax,dword ptr [ebp+10]
004BC8E1    mov         dword ptr [esi+80],eax;TMenuItem.OnClick:TNotifyEvent
004BC8E7    mov         eax,dword ptr [ebp+14]
004BC8EA    mov         dword ptr [esi+84],eax;TMenuItem.?f84:TfrxPreview
004BC8F0    movzx       edi,byte ptr [ebp-9]
004BC8F4    mov         edx,edi
004BC8F6    mov         eax,dword ptr [ebp-4]
004BC8F9    mov         eax,dword ptr [eax+28]
004BC8FC    call        TMenuItem.GetItem
004BC901    mov         edx,1
004BC906    call        TMenuItem.GetItem
004BC90B    call        TMenuItem.GetCount
004BC910    push        eax
004BC911    mov         edx,edi
004BC913    mov         eax,dword ptr [ebp-4]
004BC916    mov         eax,dword ptr [eax+28]
004BC919    call        TMenuItem.GetItem
004BC91E    mov         edx,1
004BC923    call        TMenuItem.GetItem
004BC928    mov         ecx,esi
004BC92A    pop         edx
004BC92B    call        TMenuItem.Insert
004BC930    inc         byte ptr [ebp-0A]
004BC933    dec         bl
>	004BC935    jne         004BC8B4
004BC93B    xor         ecx,ecx
004BC93D    mov         dl,1
004BC93F    mov         eax,[00445740];TMenuItem
004BC944    call        TMenuItem.Create;TMenuItem.Create
004BC949    mov         esi,eax
004BC94B    mov         edx,4BCA94;'Sur l'année'
004BC950    mov         eax,esi
004BC952    call        TMenuItem.SetCaption
004BC957    mov         eax,dword ptr [ebp+10]
004BC95A    mov         dword ptr [esi+80],eax;TMenuItem.OnClick:TNotifyEvent
004BC960    mov         eax,dword ptr [ebp+14]
004BC963    mov         dword ptr [esi+84],eax;TMenuItem.?f84:TfrxPreview
004BC969    xor         ebx,ebx
004BC96B    mov         bl,byte ptr [ebp-9]
004BC96E    mov         edx,ebx
004BC970    mov         eax,dword ptr [ebp-4]
004BC973    mov         eax,dword ptr [eax+28]
004BC976    call        TMenuItem.GetItem
004BC97B    mov         edx,1
004BC980    call        TMenuItem.GetItem
004BC985    call        TMenuItem.GetCount
004BC98A    push        eax
004BC98B    mov         edx,ebx
004BC98D    mov         eax,dword ptr [ebp-4]
004BC990    mov         eax,dword ptr [eax+28]
004BC993    call        TMenuItem.GetItem
004BC998    mov         edx,1
004BC99D    call        TMenuItem.GetItem
004BC9A2    mov         ecx,esi
004BC9A4    pop         edx
004BC9A5    call        TMenuItem.Insert
004BC9AA    mov         eax,dword ptr [ebp-8]
004BC9AD    mov         edx,dword ptr [eax]
004BC9AF    call        dword ptr [edx+14]
004BC9B2    mov         ebx,eax
004BC9B4    sub         ebx,1
>	004BC9B7    jno         004BC9BE
004BC9B9    call        @IntOver
004BC9BE    cmp         ebx,0FF
>	004BC9C4    jbe         004BC9CB
004BC9C6    call        @BoundErr
004BC9CB    test        bl,bl
>	004BC9CD    jb          004BCA5F
004BC9D3    inc         ebx
004BC9D4    mov         byte ptr [ebp-0A],0
004BC9D8    xor         ecx,ecx
004BC9DA    mov         dl,1
004BC9DC    mov         eax,[00445740];TMenuItem
004BC9E1    call        TMenuItem.Create;TMenuItem.Create
004BC9E6    mov         esi,eax
004BC9E8    lea         ecx,[ebp-18]
004BC9EB    xor         edx,edx
004BC9ED    mov         dl,byte ptr [ebp-0A]
004BC9F0    mov         eax,dword ptr [ebp-8]
004BC9F3    mov         edi,dword ptr [eax]
004BC9F5    call        dword ptr [edi+0C]
004BC9F8    mov         edx,dword ptr [ebp-18]
004BC9FB    mov         eax,esi
004BC9FD    call        TMenuItem.SetCaption
004BCA02    mov         eax,dword ptr [ebp+8]
004BCA05    mov         dword ptr [esi+80],eax;TMenuItem.OnClick:TNotifyEvent
004BCA0B    mov         eax,dword ptr [ebp+0C]
004BCA0E    mov         dword ptr [esi+84],eax;TMenuItem.?f84:TfrxPreview
004BCA14    movzx       edi,byte ptr [ebp-9]
004BCA18    mov         edx,edi
004BCA1A    mov         eax,dword ptr [ebp-4]
004BCA1D    mov         eax,dword ptr [eax+28]
004BCA20    call        TMenuItem.GetItem
004BCA25    mov         edx,2
004BCA2A    call        TMenuItem.GetItem
004BCA2F    call        TMenuItem.GetCount
004BCA34    push        eax
004BCA35    mov         edx,edi
004BCA37    mov         eax,dword ptr [ebp-4]
004BCA3A    mov         eax,dword ptr [eax+28]
004BCA3D    call        TMenuItem.GetItem
004BCA42    mov         edx,2
004BCA47    call        TMenuItem.GetItem
004BCA4C    mov         ecx,esi
004BCA4E    pop         edx
004BCA4F    call        TMenuItem.Insert
004BCA54    inc         byte ptr [ebp-0A]
004BCA57    dec         bl
>	004BCA59    jne         004BC9D8
004BCA5F    xor         eax,eax
004BCA61    pop         edx
004BCA62    pop         ecx
004BCA63    pop         ecx
004BCA64    mov         dword ptr fs:[eax],edx
004BCA67    push        4BCA81
004BCA6C    lea         eax,[ebp-18]
004BCA6F    mov         edx,3
004BCA74    call        @LStrArrayClr
004BCA79    ret
>	004BCA7A    jmp         @HandleFinally
>	004BCA7F    jmp         004BCA6C
004BCA81    pop         edi
004BCA82    pop         esi
004BCA83    pop         ebx
004BCA84    mov         esp,ebp
004BCA86    pop         ebp
004BCA87    ret         18
}
end;

//004BCAA0
procedure sub_004BCAA0(a:integer; b:integer; c:integer; d:integer);
var
  lvar_4:;
  lvar_5:;
  lvar_C:;
  lvar_D:;
  lvar_14:;
  lvar_18:;
  lvar_4:integer;
  lvar_5:;
  lvar_C:;
  lvar_D:;
  lvar_14:AnsiString;
  lvar_18:AnsiString;
begin//0
  //004BCAA0
  ECX := 0;
  lvar_14 := ECX;
  lvar_18 := ECX;
  lvar_5 := b;
  lvar_4 := a;
  try
    //004BCAC5
    EAX := sub_00497908;
    lvar_C := sub_00497908;
    EAX := lvar_C;
    call();
    if (EAX{lvar_C} <> 0) then
    begin//2
      //004BCADD
      EAX := lvar_C;
      call( );
      EAX := EAX - 1;//EAX
      if (EAX >= 0) then
      begin//3
        //004BCB03
        EAX := EAX + 1;//EAX
        lvar_D := EAX;
        EBX := 0;
        for EBX := 1 to EAX do
        begin//4
          //004BCB09
          ESI := TMenuItem.Create(Nil);
          EDX := EBX;//EBX
          EAX := lvar_C;
          call('lecteur ');
          EDX := 3;
          lvar_14 :=  + lvar_18 + ':';
          EDX := lvar_14;
          EAX := ESI;//ESI
          ESI.tCaption{Caption}(lvar_14);
          EAX := d;
          ESI.OnClick := EAX;//d
{
004BCAA0    push        ebp
004BCAA1    mov         ebp,esp
004BCAA3    add         esp,0FFFFFFE8
004BCAA6    push        ebx
004BCAA7    push        esi
004BCAA8    push        edi
004BCAA9    xor         ecx,ecx
004BCAAB    mov         dword ptr [ebp-14],ecx
004BCAAE    mov         dword ptr [ebp-18],ecx
004BCAB1    mov         byte ptr [ebp-5],dl
004BCAB4    mov         dword ptr [ebp-4],eax
004BCAB7    xor         eax,eax
004BCAB9    push        ebp
004BCABA    push        4BCBAC
004BCABF    push        dword ptr fs:[eax]
004BCAC2    mov         dword ptr fs:[eax],esp
004BCAC5    call        00497908
004BCACA    mov         dword ptr [ebp-0C],eax
004BCACD    mov         eax,dword ptr [ebp-0C]
004BCAD0    mov         edx,dword ptr [eax]
004BCAD2    call        dword ptr [edx+14]
004BCAD5    test        eax,eax
>	004BCAD7    je          004BCB91
004BCADD    mov         eax,dword ptr [ebp-0C]
004BCAE0    mov         edx,dword ptr [eax]
004BCAE2    call        dword ptr [edx+14]
004BCAE5    sub         eax,1
>	004BCAE8    jno         004BCAEF
004BCAEA    call        @IntOver
004BCAEF    cmp         eax,0FF
>	004BCAF4    jbe         004BCAFB
004BCAF6    call        @BoundErr
004BCAFB    test        al,al
>	004BCAFD    jb          004BCB91
004BCB03    inc         eax
004BCB04    mov         byte ptr [ebp-0D],al
004BCB07    mov         bl,0
004BCB09    xor         ecx,ecx
004BCB0B    mov         dl,1
004BCB0D    mov         eax,[00445740];TMenuItem
004BCB12    call        TMenuItem.Create;TMenuItem.Create
004BCB17    mov         esi,eax
004BCB19    push        4BCBC4;'lecteur '
004BCB1E    lea         ecx,[ebp-18]
004BCB21    xor         edx,edx
004BCB23    mov         dl,bl
004BCB25    mov         eax,dword ptr [ebp-0C]
004BCB28    mov         edi,dword ptr [eax]
004BCB2A    call        dword ptr [edi+0C]
004BCB2D    push        dword ptr [ebp-18]
004BCB30    push        4BCBD8;':'
004BCB35    lea         eax,[ebp-14]
004BCB38    mov         edx,3
004BCB3D    call        @LStrCatN
004BCB42    mov         edx,dword ptr [ebp-14]
004BCB45    mov         eax,esi
004BCB47    call        TMenuItem.SetCaption
004BCB4C    mov         eax,dword ptr [ebp+8]
004BCB4F    mov         dword ptr [esi+80],eax;TMenuItem.OnClick:TNotifyEvent
004BCB55    mov         eax,dword ptr [ebp+0C]
004BCB58    mov         dword ptr [esi+84],eax;TMenuItem.?f84:TfrxPreview
004BCB5E    xor         eax,eax
004BCB60    mov         al,bl
004BCB62    mov         dword ptr [esi+0C],eax;TMenuItem.Tag:Integer
004BCB65    mov         eax,dword ptr [ebp-4]
004BCB68    mov         eax,dword ptr [eax+28]
004BCB6B    xor         edx,edx
004BCB6D    call        TMenuItem.GetItem
004BCB72    xor         edx,edx
004BCB74    mov         dl,byte ptr [ebp-5]
004BCB77    call        TMenuItem.GetItem
004BCB7C    xor         edx,edx
004BCB7E    mov         dl,bl
004BCB80    mov         ecx,esi
004BCB82    call        TMenuItem.Insert
004BCB87    inc         ebx
004BCB88    dec         byte ptr [ebp-0D]
>	004BCB8B    jne         004BCB09
004BCB91    xor         eax,eax
004BCB93    pop         edx
004BCB94    pop         ecx
004BCB95    pop         ecx
004BCB96    mov         dword ptr fs:[eax],edx
004BCB99    push        4BCBB3
004BCB9E    lea         eax,[ebp-18]
004BCBA1    mov         edx,2
004BCBA6    call        @LStrArrayClr
004BCBAB    ret
>	004BCBAC    jmp         @HandleFinally
>	004BCBB1    jmp         004BCB9E
004BCBB3    pop         edi
004BCBB4    pop         esi
004BCBB5    pop         ebx
004BCBB6    mov         esp,ebp
004BCBB8    pop         ebp
004BCBB9    ret         8
}
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
 result := GetValueRegBool('afficherNomEnseignantOnglets', false{,0});
end;//0


//004BCDE8
procedure SetafficherNomEnseignantOnglets(a:Boolean);
begin
   SetValueRegBool('afficherNomEnseignantOnglets',a{,0});
end;

//004BCE20
function GetafficherMatiereOnglets:boolean;
begin//0
 //004BCE20
	result := GetValueRegBool('afficherMatiereOnglets', false{,0});
end;//0


//004BCE50
procedure SetafficherMatiereOnglets(a:Boolean);
begin
	SetValueRegBool('afficherMatiereOnglets',a{,0});
end;

//004BCE80
function GetNomsbulletins:TStringlist;
var 
  StringList: TStringList;
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
 GetValueRegBool('impressionDatesDeNaissanceSeriesDeNotes',true{,0});

end;
//004BD1FC
function GetimpressionDatesDeNaissanceBilans:boolean;
begin
	GetValueRegBool('impressionDatesDeNaissanceBilans',true{,0});
end;

//004BD238
function GetimpressionDatesDeNaissanceAppreciations:boolean;
begin
	GetValueRegBool('impressionDatesDeNaissanceAppreciations',true{,0});
end;

//004BD278
function GetimpressionDatesDeNaissanceGrilleVierge:boolean;
begin
	GetValueRegBool('impressionDatesDeNaissanceGrilleVierge',true{,0});
end;

//004BD2B8
procedure SetimpressionDatesDeNaissanceSeriesDeNotes(a:Boolean);
begin
	SetValueRegBool('impressionDatesDeNaissanceSeriesDeNotes',a{,0});
end;

//004BD2F8
procedure SetimpressionDatesDeNaissanceBilans(a:Boolean);
begin
   SetValueRegBool('impressionDatesDeNaissanceBilans',a{,0});
end;

//004BD334
procedure SetimpressionDatesDeNaissanceAppreciations(a:Boolean);
begin
   SetValueRegBool('impressionDatesDeNaissanceAppreciations',a{,0});
end;

//004BD374
procedure SetimpressionDatesDeNaissanceGrilleVierge(a:Boolean);
begin
   SetValueRegBool('impressionDatesDeNaissanceGrilleVierge',a{,0});
end;

//004BD3B4
procedure sub_004BD3B4(var a:string);
begin//0
 //004BD3B4
 sub_0049733C('basDePageGauche', '', '\Options', a);
end;//0


//004BD3FC
procedure sub_004BD3FC(var a:string);
begin//0
 //004BD3FC
 sub_0049733C('basDePageDroite', '', '\Options', a);
end;//0


//004BD444
procedure sub_004BD444(var a:string);
begin//0
 //004BD444
 sub_0049733C('enTeteGauche', '', '\Options', a);
end;//0


//004BD48C
procedure sub_004BD48C(var a:string);
begin//0
 //004BD48C
 sub_0049733C('enTeteCentre', '', '\Options', a);
end;//0


//004BD4D4
procedure sub_004BD4D4(var a:string);
begin//0
 //004BD4D4
 sub_0049733C('enTeteDroite', '', '\Options', a);
end;//0

//004BD51C
procedure sub_004BD51C(a:string);
var
  lvar_4:string;
begin//0
  //004BD51C
  try
    //004BD539
    sub_00497660('basDePageGauche', a, '\Options');
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
    sub_00497660('basDePageDroite', a, '\Options');
  finally//1
    //004BD5DA
    lvar_4 := '';
  end;//1
end;//0


//004BD61C
procedure sub_004BD61C(a:string);
var
  lvar_4:string;
begin//0
  //004BD61C
  try
    //004BD639
    sub_00497660('enTeteGauche', a, '\Options');
  finally//1
    //004BD65A
    lvar_4 := '';
  end;//1
end;//0


//004BD69C
procedure sub_004BD69C(a:integer);
var
  lvar_4:integer;
begin//0
  //004BD69C
  try
    //004BD6B9
    sub_00497660('enTeteCentre', a, '\Options');
  finally//1
    //004BD6DA
    lvar_4 := '';
  end;//1
end;//0

//004BD71C
procedure sub_004BD71C(a:integer);
var
  lvar_4:string;
begin//0
  //004BD71C
  try
    //004BD739
    sub_00497660('enTeteDroite', a, '\Options');
  finally//1
    //004BD75A
    lvar_4 := '';
  end;//1
end;//0


///004BD79C
function GettaillePolice:byte;
begin
 result := GetValueRegInt('taillePolice',9{,0});
end;

///004BD7D0
procedure sub_004BD7D0(var a:string);
begin
  sub_0049733C('nomPolice','Times New Roman','\Options',a{,0});
end;

//004BD82C
procedure SettaillePolice(a:Integer);
begin
 SetValueRegInt('taillePolice',a {,false});
end;

//004BD858
procedure sub_004BD858(a:integer);
var
  lvar_4:string;
begin//0
  //004BD858
  try
    //004BD875
    sub_00497660('nomPolice', a, '\Options');
  finally//1
    //004BD896
    lvar_4 := '';
  end;//1
end;//0


//004BD8D4
procedure SetimpressionFermerBoite(a:Boolean);
begin
  SetValueRegBool('impressionFermerBoite', a{,0});
end;

//004BD904
function GetimpressionFermerBoite:boolean;
begin//0
	result := GetValueRegBool('impressionFermerBoite', true{,0});
end;//0


//004BD934
procedure SetimpressionRSeriesDeNotes(a:Boolean);
begin
	SetValueRegBool('impressionRSeriesDeNotes',a{,0});
end;

//004BD968
procedure SetimpressionRBilans(a:Boolean);
begin
	SetValueRegBool('impressionRBilans',a{,0});
end;

//004BD994
procedure SetimpressionRAppreciations(a:Boolean);
begin
	SetValueRegBool('impressionRAppreciations',a{,0});
end;

//004BD9C8
procedure SetimpressionRGrilleVierge(a:Boolean);
begin
	SetValueRegBool('impressionRGrilleVierge',a{,0});
end;

//004BD9F8
function GetimpressionRSeriesDeNotes:boolean;
begin
	result := GetValueRegBool('impressionRSeriesDeNotes', true{,0});
end;

//004BDA2C
function sub_004BDA2C:boolean;
begin
	result := GetValueRegBool('impressionRBilans', true{,0});
end;

//004BDA58
function GetimpressionRAppreciations:boolean;
begin
	result := GetValueRegBool('impressionRAppreciations', true{,0});
end;

//004BDA8C
function GetimpressionRGrilleVierge:boolean;
begin
	result := GetValueRegBool('impressionRGrilleVierge', true{,0});
end;

end.