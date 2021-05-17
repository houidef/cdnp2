{***********************************************************
* Version Original V0.03 build 1                           *
* Decompiled by Houidef AEK v 2021-05-16 @ 05:36 PM        *
* The disassembly process : 90%                           *
************************************************************}
unit UFichierCdn;

interface

uses
  Forms,SysUtils, Classes, UPeriodes, Dialogs, FFluxCdn, Grids, Windows, unit111, UTypeBulletins, UEleves,UEnregistrement;

type
  TFichierCdn = class(TObject)
  protected
    FFluxCdn:TFluxCdn;//f4
    FModified:boolean;//f8
    FFileName:TFileName;//fC
    TypeVersion:string;//f10
    CarnetNotesVersion:string;//f110
    Signature:string;//f210
    Enseignant:string;//f310
    ClasseName:string;//f410
    FEtablissment:string;//f510
    FMatiere:string;//f610
    FYear:string;//f710
    FRemarque:string;//f810
    SArrondirMoyennes:integer;//f910   
    SArrondirMoyennesAnnuelles:integer;//f911    
    StypeMoyennesAnnuelles:integer;//f912    //typeMoyennesAnnuelles
    STypeBulletins:TTypeBulletins;//f914
    SPeriodes:TPeriodes;//f918
    SEleves:TEleves; //f91C
    FNbrModules:TStringList;//f920
    FData:TStringGrid;//f924
    f928:TStringList;//f928
    FAppreciations:TStringList;//f92C
    FDateNais:TStringList;//f930
    FInfoEleve:TStringList;//f934
    FRedoublant:TStringList;//f938
    FClasses:TStringList;//f93C
    FAttributs0:TStringList;//f940
    FAttributs:TStringList;//f944
 public
    Succes:boolean;//f948
    OldVersion:Boolean;//f949
    constructor Create(filename:TFilename{; y:pointer; z:pointer; t:pointer});//004BE7C8
    function EleveCount:integer;//004BEA58
    procedure GetEleveName__(iEleve:dword; var b:string);//004BEA64
    function IsEtablissementVersion:Boolean;//004C6654
    function IsOldVersion___(FFluxCdn:TFluxCdn;CarnetNotesVersion:string) :boolean; //old CarnetNotesVersion of carnetdenote//004C66A8
    procedure readCdn(filename:TFileName; b:integer);//004C6E9C // preaser fichier Cdn
    procedure OpenFile{(a:pointer; b:pointer; c:pointer; d:pointer)};//004C8280
    procedure GetElevDateNais(a:dword; var b:string);//004C8BB8
    procedure SaveCdnOldVersion(FFluxCdn:TFluxCdn);//004BE5E0
    function GetClasseName():string;//004BE8FC
    function GetEtablissment() : string;//004BE914
    function GetMatiereName() : string;//004BE92C
    function GetYear() : string;//004BE944
    function GetRemarque() : string;//004BE95C
    function __GetFileName() : string;//004BE974
    function GetTypePeriode() : string;//004BE988
    function GetNbrePeriodes:integer;//004BE9E0
    function GetPeriodName(iPeriod:dword) : string;//004BE9EC
    function GetPeriodesList_:TStringList;//004BEA4C
    function EleveLists:TStringList;//004BEAC4
    function GetNbreModules(y:byte):integer;//004BEAD0
    function sub_004BEB40(I:dword; J:dword):TStrings;//004BEB40
    procedure sub_004BEC04(Periode:dword; ACol:dword; ARow:dword;var data:string);//004BEC04
    procedure _readCompteMoy(Periode:dword; var NameModule:string; NumModule:integer);//004BED04 Determine le Nom de Module
    procedure GetStrNoteSur(Periode:dword; ARow:dword; var S:string);//004BED2C
    procedure GetStrCoeff(Periode:dword; ARow:dword; var S:string);//004BED7C
    procedure GetStrComptMoy(Periode:dword; ARow:dword; var S:string);//004BEDCC
    procedure GetStrDate(Periode:dword; ARow:dword; var S:string);//004BEE1C
    procedure GetStrCommentaire(Periode:dword; ARow:dword; var S:string);//004BEE6C
    procedure GetStrTypeNote(Periode:dword; ARow:dword; var S:string);//004BEEBC
    procedure GetStrOraleEcrit(Periode:dword; ARow:dword; var S:string);//004BEF0C
    procedure _GetStrNote(Periode:dword; ACol:dword; ARow:dword; var data:string);//004BEF5C
    procedure SetFileName(a:shortString);//004BEF84
    procedure setClasseName(a:String);//004BEFD0
    procedure setEtablissment(a:String);//004BF004
    procedure setMatiere(a:String);//004BF038
    procedure SetYear(a:String);//004BF06C
    procedure setRemarque(a:String);//004BF0A0
    procedure init;//004BF0D4
    procedure SetAutreInfo(TypeBulletins:String; TypePeriode:string);//004BF258
    procedure sub_004BF544(StringList:TStringList);//004BF544
    procedure SetEleveListsV(a:TStringList);//004BF64C
    procedure AddColone(iPeriode:dword; b:string; intitule:string; d:string; e:string; f:string; g:string; h:string; ii:boolean);//004BF7F0
    procedure sub_004BFC58(a:dword; b:dword);//004BFC58
    procedure sub_004BFD68(index1:integer; index2:integer; index3:integer);//004BFD68
    procedure sub_004C0070(a:dword);//004C0070
    procedure sub_004C0134(a:dword);//004C0134
    procedure SaveCdn(a:AnsiString; iOldVersion:boolean; c:string; BulletinsDefaut:boolean);//004C01F8   sauvgrader fichier 
    procedure _SetStrNote(Periode:dword; ACol:dword; ARow:dword; Value:string);//004C0C88
    procedure _SetStrNote0(periode:dword; ACol:dword; e:string);//004C0E24
    procedure _SetStrNote16(periode:dword; ACol:dword; c:string);//004C0E5C
    procedure _SetStrNote15(Periode:dword; ACol :dword; d:string);//004C0EC8
    procedure _SetStrNote17(Periode:dword; ACol:dword; d:string);//004C0F34
    function _SetStrNote13(a:dword; b:dword; c:string):dword;//004C0FA0
    procedure sub_004C1074(Periode:dword; ACol:dword; ARow:dword; data:string);//004C1074
    procedure DeleteEleve(a:dword);//004C1158
    procedure sub_004C14C8(b:String; c:string; d:string; a:boolean);//004C14C8
    procedure sub_004C1954(a:integer; b:string; c:boolean;d:string);//004C1954
    procedure sub_004C213C(Periode:dword; ARow:dword; var Moy:string);//004C213C
    procedure GetStrMoyArrendit(a:String; {b:Integer;}  ArrendirMoyennes:dword; var Moy:string);//004C2410
    procedure GetStrNoteFromFile(Periode:dword; ARow:dword; ArrondirMoyennes:dword; var RMoy:string);//004C2AF4
    procedure sub_004C2B38(Periode:dword; ARow:dword; var c:string);//004C2B38
    procedure GetAppreciations(a:dword; b:dword; c:dword;var d:string);//004C2C00
    procedure GetStrNoteAsFloat(Periode:dword; ARow:dword; ArrondirMoyennes:dword; var Moy:string);//004C2D10
    procedure sub_004C2E60(str:string; B:byte; J:integer; buf:string);//004C2E60
    function sub_004C3134(a:byte):TStringList;//004C3134
    procedure sub_004C32B4(a:integer; b:integer; c:integer;d:integer;e:string);//004C32B4
    procedure sub_004C3678(index1:integer; index2:integer; str:string);//004C3678
    procedure sub_004C3798(b:dword; c:dword; d:string; e:dword);//004C3798
    function GetEnseignant() : string;//004C3908
    procedure SetEnseignant(a:string);//004C3920
    function IsModified:boolean;//004C3954
    procedure __GetStrMin(Periode:dword; var s:string; ACol:dword);//004C3958
    procedure __GetStrMax(Periode:dword; var s:string; ACol:dword);//004C3B54
    procedure sub_004C3D1C(Periode:dword; ACol:dword; var c:string);//004C3D1C
    procedure sub_004C3EA4(Periode:dword; ACol:dword;var b:string);//004C3EA4
    procedure __GetStrMoy(Periode:dword;var b:string; ACol:dword);//004C40D4
    procedure sub_004C42D4(Periode:dword; ACol:dword; var s:string);//004C42D4
    procedure sub_004C451C(Periode:dword; ACol:dword; var s:string);//004C451C
    function sub_004C4778(Periode:dword):boolean;//004C4778
    procedure sub_004C4784(Periode:dword;b:boolean);//004C4784
    function sub_004C4790:dword;//004C4790
    procedure sub_004C47E8(index1:integer; index2:integer; str:string);//004C47E8
    procedure sub_004C48BC(index1:integer; index2:integer; str:string);//004C48BC
    procedure sub_004C4990(index1:integer; index2:integer);//004C4990
    procedure sub_004C4B20(index1:integer; index2:integer);//004C4B20
    procedure sub_004C4CBC(a:TStringList);//004C4CBC
    procedure SetTypePeriode__(a:string);//004C4CC8
    function sub_004C4D44:dword;//004C4D44
    function sub_004C5078(a:integer; b:integer; c:integer;d:integer;e:integer):Tstrings;//004C5078
    procedure GetStrMinMoy(Periode:dword; ARow:dword; var S:String);//004C5404
    procedure sub_004C56C0(a:integer; b:integer; c:string);//004C56C0
    procedure SetAttributs0(periode:dword; ACol:dword; c:dword;s:string);//004C5E04
    procedure GetAttributs0(Periode:dword; ACol:dword; Info:dword; var d:string);//004C5F08
    procedure SetAttributs1(a:dword; b:dword; c:dword; d:Boolean);//004C5FF8
    function GetAttributs1(periode:dword; ACol:dword; info:dword):Boolean;//004C6030
    procedure SetStrMoy(Periode:dword; ARow:dword; Valeur:string);//004C6080
    procedure GetStrMoy(Periode:dword; ARow:dword; var Valeur:string);//004C6144
    procedure SetAttributs2(Periode:dword; ARow:dword; c:boolean);//004C61E4
    function GetAttributs2(a:dword; b:dword):boolean;//004C62E8
    procedure defaultAttributs;//004C63C8
    procedure sub_004C64CC(a:string; J:integer; b:string);//004C64CC
    function IsPersonnelleVersion:Boolean;//004C6680
    procedure NewFile;//004C8880
    function sub_004C8AD8:dword;//004C8AD8
    function sub_004C8AE0:dword;//004C8AE0
    function BulletinsCount:dword;//004C8AE8
    procedure GetBulletinsName__(a:dword; var b:String);//004C8AF4
    procedure GetTypeBulletins_(var a:string);//004C8B54
    function sub_004C8BAC():TStrings;//004C8BAC
    procedure AddElevDateNais(a:integer; str:string);//004C8C2C
    procedure GetInfoEleve(a:dword; var b:String);//004C8CB8
    function GetClassesCount:dword;//004C8D68
    procedure GetClasses(a:dword; var b:String);//004C8D84
    procedure SetElevR(a:dword; b:boolean);//004C8DF8
    function sub_004C8E50( b:dword):boolean;//004C8E50
    function sub_004C8EC8(a:integer; b:integer; c:boolean):integer;//004C8EC8
    procedure GetStr0Arrondir(Periode:dword; ARow:dword; Arrondir:dword; var s:string);//004C8F6C
    procedure GetStr0(Periode:dword; ARow:dword; var s:string);//004C8FB0
    procedure GetStrArrondir(Periode:dword; ARow:dword; Arrondir:dword; var s:string);//004C9280
    procedure GetStr(Periode:dword; ARow:dword; var s:string);//004C92C4
    procedure sub_004C9594(a:integer; b:integer; buf:string);//004C9594
    procedure sub_004C9708(a:integer; b:integer; buf:string);//004C9708
	end;

implementation

//004BE5E0
procedure TFichierCdn.SaveCdnOldVersion(FFluxCdn:TFluxCdn);
var
  buf:string;
  I:integer;
begin//0
    FFluxCdn._write('Carnet de notes');
    FFluxCdn._write('1.0');
    FFluxCdn._write(GetClasseName);
    FFluxCdn._write(FEtablissment);
    FFluxCdn._write(GetMatiereName);
    FFluxCdn._write(GetYear);
    FFluxCdn._write('Fichier créé par la version 2.0 pour ceux qui veulent rester à la 1.0 ...');
    FFluxCdn._write(IntToStr(EleveCount ));
      for I := 1 to EleveCount do //004BE6E2
      begin//004BE6E9
        GetEleveName__(I, buf);
        FFluxCdn._write( buf);
      end;//3
    for I := 1 to 19 do
    begin//004BE720
      FFluxCdn._write('0');
    end;//2
    FFluxCdn.Destroy;
end;//0


//004BE7C8
constructor TFichierCdn.Create(filename:TFilename{; y:pointer; z:pointer; t:pointer});
begin//0
	FFileName := FileName;
    inherited Create;
    OpenFile{(filename, y, z, t)};
end;

//004BE8FC
function TFichierCdn.GetClasseName():string;
begin
 result:=ClasseName;
end;

//004BE914
function TFichierCdn.GetEtablissment() : string;
begin//0
  //004BE914
  result := FEtablissment;
end;//0


//004BE92C
function TFichierCdn.GetMatiereName() : string;
begin//0
  result := FMatiere;
end;//0



//004BE944
function TFichierCdn.GetYear() : string;
begin//0
  result := FYear;
end;//0


//004BE95C
function TFichierCdn.GetRemarque() : string;
begin//0
  result := FRemarque;
end;//0


//004BE974
function TFichierCdn.__GetFileName():string;
begin//0
  //004BE974
  result := FFileName;
end;//0

//004BE988
function TFichierCdn.GetTypePeriode() : string;
var
  buf:string;
begin//0
  //004BE988
    SPeriodes.GetTypePeriode_(buf);
    result := buf;
end;//0


//004BE9E0
function TFichierCdn.GetNbrePeriodes:integer; //Nbre Periodes
begin
  //004BE9E0
  result := SPeriodes.GetNbrePeriodes;
end;

//004BE9EC
function TFichierCdn.GetPeriodName(iPeriod:dword) : string;
var
  buf:string;
begin//0
  //004BE9EC
    SPeriodes.GetPeriodName(iPeriod, buf);
     result:=buf;
end;//0

//004BEA4C
function TFichierCdn.GetPeriodesList_:TStringList;
begin//0
  //004BEA4C
  Result := SPeriodes.sub_004B6D34;
end;//0


//004BEA58
function TFichierCdn.EleveCount:integer;
begin
  result := SEleves.EleveCount;
end;

//004BEA64
procedure TFichierCdn.GetEleveName__(iEleve:dword; var b:string);
begin//0
  //004BEA64
    SEleves.EleveItem(iEleve, b);
	//b:=SEleves[iEleve-1];
end;

//004BEAC4
function TFichierCdn.EleveLists:TStringList;
begin//0
  //004BEAC4
  result := SEleves.EleveLists;
end;//0


//004BEAD0
function TFichierCdn.GetNbreModules(y:byte):integer; //Nbre des Modules dans chaque Periode
begin//0
  //004BEAD0..004BEAE9
    result :=  StrToInt(FNbrModules[y - 1]);
end;

//004BEB40
function TFichierCdn.sub_004BEB40(I:dword; J:dword):TStrings;
var
  k,lvar_C:Integer;
begin//0
  //004BEB40
  try
    //004BEB62
    lvar_C := 0;
      for k := 1 to I - 1 do //004BEB79
      begin//004BEB7E
        lvar_C := lvar_C +StrToInt(FNbrModules[k - 1]);
      end;//3
    result := FData.Cols[lvar_C- 1 + J];   
  finally//004BEBE9
  end;//1
end;

//004BEC04
procedure TFichierCdn.sub_004BEC04(Periode:dword; ACol:dword; ARow:dword;var data:string);
var
  I: integer;
  Somme : integer;
  Temp : integer;
begin//0
  //004BEC04
  try
    //004BEC26
    Somme := 0;
      for I := 1 to Periode - 1 do //004BEC47
      begin//3
        //004BEC4E
        Temp := StrToInt(FNbrModules[I - 1]);
        Somme := Temp + Somme;
      end;//3
    data := FData.Cells[Somme - 1 + ACol, ARow];
  finally//004BECE3
  end;//1

end;

//004BED04
procedure TFichierCdn._readCompteMoy(Periode:dword; var NameModule:string; NumModule:integer); // Nom de Module
begin//0
  sub_004BEC04(Periode, NumModule, 0, NameModule);
end;

//004BED2C
procedure TFichierCdn.GetStrNoteSur(Periode:dword; ARow:dword;var S:string);
begin//0
  //004BED2C
  sub_004BEC04(Periode, ARow, EleveCount + $0B {gvar_006178FB},S );
end;//0


//004BED7C
procedure TFichierCdn.GetStrCoeff(Periode:dword; ARow:dword; var S:string);
begin//0
  //004BED7C
  sub_004BEC04(Periode, ARow, EleveCount + $0C {gvar_006178FC},S );
end;//0

//004BEDCC
procedure TFichierCdn.GetStrComptMoy(Periode:dword; ARow:dword; var S:string);
begin//0
  //004BEDCC
  sub_004BEC04(Periode, ARow, EleveCount + $0D{gvar_006178FD},S );
end;//0


//004BEE1C
procedure TFichierCdn.GetStrDate(Periode:dword; ARow:dword; var S:string);
begin//0
  //004BEE1C
  sub_004BEC04(Periode, ARow, EleveCount + $0E {gvar_006178FE}, S);
end;//0


//004BEE6C
procedure TFichierCdn.GetStrCommentaire(Periode:dword; ARow:dword; var S:string);
begin
 sub_004BEC04(Periode, ARow, EleveCount + $0F {gvar_006178FF}, S);

end;

//004BEEBC
procedure TFichierCdn.GetStrTypeNote(Periode:dword; ARow:dword; var S:string);
begin
 sub_004BEC04(Periode, ARow, EleveCount + $10 {gvar_00617900}, S);
end;

//004BEF0C
procedure TFichierCdn.GetStrOraleEcrit(Periode:dword; ARow:dword; var S:string);
begin
 sub_004BEC04(Periode, ARow, EleveCount + $11 {gvar_00617901}, S);
end;

//004BEF5C
procedure TFichierCdn._GetStrNote(Periode:dword; ACol:dword; ARow:dword;var data:string);
begin//0
  //004BEF5C
  sub_004BEC04(Periode, ACol, ARow, data);
end;

//004BEF84
procedure TFichierCdn.SetFileName(a:shortString);
begin//0
    FFileName := a;
end;//0

//004BEFD0
procedure TFichierCdn.setClasseName(a:String);
begin//0
  //004BEFD0
  FModified := true;
  ClasseName := a;
end;//0


//004BF004
procedure TFichierCdn.setEtablissment(a:String);
begin//0
  //004BF004
  FModified := true;
  FEtablissment := a;
end;//0


//004BF038
procedure TFichierCdn.setMatiere(a:String);
begin//0
  //004BF038
  FModified := true;
  FMatiere := a;
end;//0


//004BF06C
procedure TFichierCdn.SetYear(a:String);
begin//0
  //004BF06C
  FModified := true;
  FYear := a;
end;//0


//004BF0A0
procedure TFichierCdn.setRemarque(a:String);
begin//0
  //004BF0A0
  FModified := true;
  FRemarque := a;
end;//0


//004BF0D4
procedure TFichierCdn.init;
var
 I,J,K:integer;
begin//0
  //004BF0D4
  FAttributs.Clear;
    for I := 1 to 2 * GetNbrePeriodes  do  //004BF0FF
    begin//2
      //004BF0FF
      for J := 1 to 50 do
      begin//3
        //004BF104
        FAttributs.Add('1');
      end;//3
    end;//2
  FAttributs0.Clear;
    for I := 1 to sub_004C4790 do //004BF138
    begin//2
      //004BF138
      for J := 1 to 14 do
      begin//3
        //004BF13D
        FAttributs0.Add('1');
      end;//3
    end;//2
  FNbrModules.Clear;
    for I := 1 to GetNbrePeriodes do //004BF171
    begin//2
      //004BF171
      FNbrModules.Add('0');
    end;//2
  f928.Clear;
  FAppreciations.Clear;
  FDateNais.Clear;
  FRedoublant.Clear;
  FInfoEleve.Clear;
    for K := 1 to GetNbrePeriodes do //004BF1CE
    begin//2
      //004BF1CE
      for I := 1 to 50 do
      begin//3
        //004BF1D3
        f928.Add('');
        for J := 1 to BulletinsCount do
        begin//4
          //004BF1EF
          FAppreciations.Add('');
        end;//4
      end;//3
    end;//2
  for I := 1 to 50 do
  begin//1
    //004BF20A
    FDateNais.Add('');
    FInfoEleve.Add('1');
    FRedoublant.Add('');
  end;//1
  FModified := true;
end;//0


//004BF258
procedure TFichierCdn.SetAutreInfo(TypeBulletins:String; TypePeriode:string);
var
 I,J,K:integer;
begin//0
  //004BF258
    //004BF2BE
    SPeriodes.SetTypePeriode__(TypePeriode);
    SPeriodes.SetPeriodes(__GetPeriodes(TypePeriode));
    STypeBulletins.SetTypeBulletins(TypeBulletins);
    STypeBulletins.AddNomBulletinsList(SetNomsbulletins(TypeBulletins));
    FNbrModules.Clear;
    //call();
      for I := 1 to __GetPeriodes(TypePeriode).count do //004BF384
      begin//3
        //004BF387
        FNbrModules.Add('0');
      end;//3
    f928.Clear;
    FAppreciations.Clear;
    FDateNais.Clear;
    FRedoublant.Clear;
    FInfoEleve.Clear;
    FAttributs0.Clear;
    FAttributs.Clear;
    //call();
      for I := 1 to 2 * __GetPeriodes(TypePeriode).count do //004BF418
      begin//3
        //004BF41B
        for J := 1 to 50 do
        begin//4
          //004BF420
         FAttributs.Add('1');
        end;//4
      end;//3
      //004BF448
      for I := 1 to sub_004C4790 do
      begin//3
        //004BF44B
        for J:= 1 to 14 do
        begin//4
          //004BF450
          FAttributs0.Add('1');
        end;//4
      end;//3
   // call();
      //004BF48D
      for I := 1 to __GetPeriodes(TypePeriode).count  do
      begin//3
        for J := 1 to 50 do //004BF490
        begin//4
          //004BF495
          f928.Add('');
          for K := 1 to BulletinsCount do
          begin//5
            //004BF4B1
            FAppreciations.Add('');
          end;//5
        end;//4
      end;//3
    for I := 1 to 50 do
    begin//2
      //004BF4CE
      FDateNais.Add('');
      FInfoEleve.Add('1');
      FRedoublant.Add('');
    end;//2
    FModified := true;
	//004BF50C
end;//0

//004BF544
procedure TFichierCdn.sub_004BF544(StringList:TStringList);
var
 k,I:integer;
begin//0
  //004BF544
    //004BF568
    if (StringList.Count < EleveCount) then//004BF582
      k := StringList.Count
    else//004BF58C
      k := EleveCount;

      for I := 0 to k - 1 do //004BF5A8
      begin//3
        //004BF5B0
        FDateNais[I] := Copy(StringList[I], 0, 10);
      end;//3
    
    FModified := true;
      for I := 1 to GetNbrePeriodes do //004BF5FB
      begin//3
        //004BF600
        SPeriodes.sub_004B6E84(I, true);
      end;//3
end;//0


//004BF64C
procedure TFichierCdn.SetEleveListsV(a:TStringList);
var
 I,J,K:integer;
begin//0
  //004BF64C
  SEleves.CopyEleve(a);
  FAttributs.Clear;
    //004BF689
    for J := 1 to 2 * GetNbrePeriodes  do
    begin//2
      //004BF689
      for I := 1 to 50 do
      begin//3
        //004BF68E
        FAttributs.Add('1');
      end;//3
    end;//2
  FAttributs0.Clear;
    
    for I := 1 to sub_004C4790 do //004BF6C2
    begin//2
      //004BF6C2
      for J := 1 to 14 do
      begin//3
        //004BF6C7
        FAttributs0.Add('1');
      end;//3
    end;//2
  f928.Clear;
  FAppreciations.Clear;
  FDateNais.Clear;
  FRedoublant.Clear;
  FInfoEleve.Clear;
    for I := 1 to GetNbrePeriodes do //004BF727
    begin//2
      //004BF727
      //call(a);
      for J := 1 to a.count do
      begin//3
        //004BF735
        f928.Add('');
       
        for K := 1 to BulletinsCount do
        begin//4
          //004BF751
          FAppreciations.Add('');
        end;//4
      end;//3
 // call(a);

    for J := 1 to a.count do //004BF775
    begin//2
      //004BF775
      FDateNais.Add('');
      FInfoEleve.Add('1');
      FRedoublant.Add('');
    end;//2
  end;//1
  FModified := true;
    for I := 1 to GetNbrePeriodes do //004BF7B9
    begin//2
      //004BF7BE
      SPeriodes.sub_004B6E84(I, true);
    end;//2
 
end;//0

//004BF7F0
procedure TFichierCdn.AddColone(iPeriode:dword; b:string; intitule:string; d:string; e:string; f:string; g:string; h:string; ii:boolean);
var
  Sum0,I,J,Sum1 : integer;
begin//0
  //004BF7F0
    //004BF8B6
    Sum0 := 0;
    for I := 1 to GetNbrePeriodes do //004BF8D7
        Sum0 := Sum0 + GetNbreModules(I) ;
    
	FData.ColCount := Sum0 + 1;
    FData.RowCount := EleveCount + $12{gvar_00617902};
    Sum1 := 0;
    for I := 1 to iPeriode do  //004BF94B
        Sum1 := Sum1 + GetNbreModules(I);

    if(Sum1> Sum0)then 
        //004BF989
        for I := Sum0 to Sum1 - 1 do //004BF97F
          FData.Cols[I] := FData.Cols[I-1]
    else
        for I:=0 to Sum0 do //004BF9B8
          FData.Cols[I] := FData.Cols[I-1];
    
	FData.Cols[Sum1].Clear;
    FData.Cells[Sum1, 0] := intitule;
     
    I := EleveCount;
    FData.Cells[Sum1, $0B {gvar_006178FB} + I] :=  d;
    FData.Cells[Sum1, $0C {gvar_006178FC} + I] :=  e;
    FData.Cells[Sum1, $0D {gvar_006178FD} + I] :=  f;
    FData.Cells[Sum1, $0E {gvar_006178FE} + I] :=  g;
    FData.Cells[Sum1, $0F {gvar_006178FF} + I] :=  h;
    FData.Cells[Sum1, $10 {gvar_00617900} + I] :=  h;
    if (ii ) then//004BFB61
      FData.Cells[Sum1,  $11{gvar_00617901} + I] := 'Oral'
    else //004BFB85
      FData.Cells[Sum1,  $11{gvar_00617901} + I] :=  'Ecrit';

    sub_004C0070(iPeriode);
    FModified := true;
    SPeriodes.sub_004B6E84(iPeriode, true);
    FAttributs0.Clear;      
      for J := 1 to sub_004C4790 do//004BFBE3
        for I := 1 to 14 do//004BFBE8
          FAttributs0.Add('1');
end;//0

//004BFC58
procedure TFichierCdn.sub_004BFC58(a:dword; b:dword);
var
  I,J:integer;
  buf:string;
begin//0
  //004BFC58
  FData.Cols[b - 1].Clear;
  if (FData.ColCount - 2 - (b - 1) >= 0) then
  begin//1
    //004BFCB9
   // EDX := EDX + 1;//EDX

    for I := 1 to FData.ColCount - 2 do
    begin//2
      //004BFCC0
      FData.Cols[I] := FData.Cols[I + 1];
    end;//2
  end;//1
  FData.ColCount := FData.ColCount - 1;
  sub_004C0134(a);
  FModified := true;
  SPeriodes.sub_004B6E84(a, true);
  FAttributs0.Clear;
    for J := 1 to sub_004C4790 do //004BFD34
    begin//2
      //004BFD38
      for I := 1 to 14 do
      begin//3
        //004BFD3A
        FAttributs0.Add('1');
      end;//3
    end;//2
  
end;//0

//004BFD68
procedure TFichierCdn.sub_004BFD68(index1:integer; index2:integer; index3:integer);
begin
{ 004BFD68    push        ebp
 004BFD69    mov         ebp,esp
 004BFD6B    add         esp,0FFFFF7EC
 004BFD71    push        ebx
 004BFD72    push        esi
 004BFD73    push        edi
 004BFD74    xor         ebx,ebx
 004BFD76    mov         dword ptr [ebp-814],ebx
 004BFD7C    mov         dword ptr [ebp-710],ebx
 004BFD82    mov         byte ptr [ebp-2],cl
 004BFD85    mov         byte ptr [ebp-1],dl
 004BFD88    mov         esi,eax
 004BFD8A    xor         eax,eax
 004BFD8C    push        ebp
 004BFD8D    push        4C004C
 004BFD92    push        dword ptr fs:[eax]
 004BFD95    mov         dword ptr fs:[eax],esp
 004BFD98    mov         dl,1
 004BFD9A    mov         eax,[004120B8];TStringList
 004BFD9F    call        TObject.Create;TStringList.Create
 004BFDA4    mov         dword ptr [ebp-8],eax
 004BFDA7    mov         eax,esi
 004BFDA9    call        TFichierCdn.EleveCount
 004BFDAE    test        al,al
>004BFDB0    jbe         004BFDF1
 004BFDB2    mov         byte ptr [ebp-9],al
 004BFDB5    mov         bl,1
 004BFDB7    push        ebx
 004BFDB8    lea         eax,[ebp-810]
 004BFDBE    push        eax
 004BFDBF    mov         cl,byte ptr [ebp-2]
 004BFDC2    mov         dl,byte ptr [ebp-1]
 004BFDC5    mov         eax,esi
 004BFDC7    call        004BEF5C
 004BFDCC    lea         edx,[ebp-810]
 004BFDD2    lea         eax,[ebp-710]
 004BFDD8    call        @LStrFromString
 004BFDDD    mov         edx,dword ptr [ebp-710]
 004BFDE3    mov         eax,dword ptr [ebp-8]
 004BFDE6    mov         ecx,dword ptr [eax]
 004BFDE8    call        dword ptr [ecx+34];TStringList.Add
 004BFDEB    inc         ebx
 004BFDEC    dec         byte ptr [ebp-9]
>004BFDEF    jne         004BFDB7
 004BFDF1    lea         eax,[ebp-109]
 004BFDF7    push        eax
 004BFDF8    mov         cl,byte ptr [ebp-2]
 004BFDFB    mov         dl,byte ptr [ebp-1]
 004BFDFE    mov         eax,esi
 004BFE00    call        004BED04
 004BFE05    lea         eax,[ebp-209]
 004BFE0B    push        eax
 004BFE0C    mov         cl,byte ptr [ebp-2]
 004BFE0F    mov         dl,byte ptr [ebp-1]
 004BFE12    mov         eax,esi
 004BFE14    call        004BED2C
 004BFE19    lea         eax,[ebp-309]
 004BFE1F    push        eax
 004BFE20    mov         cl,byte ptr [ebp-2]
 004BFE23    mov         dl,byte ptr [ebp-1]
 004BFE26    mov         eax,esi
 004BFE28    call        004BED7C
 004BFE2D    lea         eax,[ebp-409]
 004BFE33    push        eax
 004BFE34    mov         cl,byte ptr [ebp-2]
 004BFE37    mov         dl,byte ptr [ebp-1]
 004BFE3A    mov         eax,esi
 004BFE3C    call        004BEDCC
 004BFE41    lea         eax,[ebp-509]
 004BFE47    push        eax
 004BFE48    mov         cl,byte ptr [ebp-2]
 004BFE4B    mov         dl,byte ptr [ebp-1]
 004BFE4E    mov         eax,esi
 004BFE50    call        004BEE1C
 004BFE55    lea         eax,[ebp-609]
 004BFE5B    push        eax
 004BFE5C    mov         cl,byte ptr [ebp-2]
 004BFE5F    mov         dl,byte ptr [ebp-1]
 004BFE62    mov         eax,esi
 004BFE64    call        004BEE6C
 004BFE69    lea         eax,[ebp-709]
 004BFE6F    push        eax
 004BFE70    mov         cl,byte ptr [ebp-2]
 004BFE73    mov         dl,byte ptr [ebp-1]
 004BFE76    mov         eax,esi
 004BFE78    call        004BEEBC
 004BFE7D    lea         eax,[ebp-810]
 004BFE83    push        eax
 004BFE84    mov         cl,byte ptr [ebp-2]
 004BFE87    mov         dl,byte ptr [ebp-1]
 004BFE8A    mov         eax,esi
 004BFE8C    call        004BEF0C
 004BFE91    lea         eax,[ebp-810]
 004BFE97    mov         edx,4C005C;'Oral'
 004BFE9C    xor         ecx,ecx
 004BFE9E    mov         cl,byte ptr [eax]
 004BFEA0    inc         ecx
 004BFEA1    call        @AStrCmp
 004BFEA6    sete        al
 004BFEA9    lea         edx,[ebp-209]
 004BFEAF    push        edx
 004BFEB0    lea         edx,[ebp-309]
 004BFEB6    push        edx
 004BFEB7    lea         edx,[ebp-409]
 004BFEBD    push        edx
 004BFEBE    lea         edx,[ebp-509]
 004BFEC4    push        edx
 004BFEC5    lea         edx,[ebp-609]
 004BFECB    push        edx
 004BFECC    lea         edx,[ebp-709]
 004BFED2    push        edx
 004BFED3    push        eax
 004BFED4    lea         ecx,[ebp-109]
 004BFEDA    mov         dl,byte ptr [ebp+8]
 004BFEDD    mov         eax,esi
 004BFEDF    call        004BF7F0
 004BFEE4    mov         byte ptr [ebp-4],0
 004BFEE8    xor         eax,eax
 004BFEEA    mov         al,byte ptr [ebp-1]
 004BFEED    sub         eax,1
>004BFEF0    jno         004BFEF7
 004BFEF2    call        @IntOver
 004BFEF7    cmp         eax,0FF
>004BFEFC    jbe         004BFF03
 004BFEFE    call        @BoundErr
 004BFF03    test        al,al
>004BFF05    jbe         004BFF3D
 004BFF07    mov         byte ptr [ebp-9],al
 004BFF0A    mov         bl,1
 004BFF0C    mov         edx,ebx
 004BFF0E    mov         eax,esi
 004BFF10    call        004BEAD0
 004BFF15    and         eax,0FF
 004BFF1A    xor         edx,edx
 004BFF1C    mov         dl,byte ptr [ebp-4]
 004BFF1F    add         eax,edx
>004BFF21    jno         004BFF28
 004BFF23    call        @IntOver
 004BFF28    cmp         eax,0FF
>004BFF2D    jbe         004BFF34
 004BFF2F    call        @BoundErr
 004BFF34    mov         byte ptr [ebp-4],al
 004BFF37    inc         ebx
 004BFF38    dec         byte ptr [ebp-9]
>004BFF3B    jne         004BFF0C
 004BFF3D    xor         eax,eax
 004BFF3F    mov         al,byte ptr [ebp-2]
 004BFF42    xor         edx,edx
 004BFF44    mov         dl,byte ptr [ebp-4]
 004BFF47    add         eax,edx
>004BFF49    jno         004BFF50
 004BFF4B    call        @IntOver
 004BFF50    cmp         eax,0FF
>004BFF55    jbe         004BFF5C
 004BFF57    call        @BoundErr
 004BFF5C    mov         byte ptr [ebp-2],al
 004BFF5F    mov         cl,byte ptr [ebp-2]
 004BFF62    mov         dl,byte ptr [ebp-1]
 004BFF65    mov         eax,esi
 004BFF67    call        004BFC58
 004BFF6C    mov         dl,byte ptr [ebp+8]
 004BFF6F    mov         eax,esi
 004BFF71    call        004BEAD0
 004BFF76    mov         byte ptr [ebp-3],al
 004BFF79    mov         eax,esi
 004BFF7B    call        TFichierCdn.EleveCount
 004BFF80    test        al,al
>004BFF82    jbe         004BFFD6
 004BFF84    mov         byte ptr [ebp-9],al
 004BFF87    mov         bl,1
 004BFF89    push        ebx
 004BFF8A    lea         ecx,[ebp-814]
 004BFF90    xor         edx,edx
 004BFF92    mov         dl,bl
 004BFF94    sub         edx,1
>004BFF97    jno         004BFF9E
 004BFF99    call        @IntOver
 004BFF9E    mov         eax,dword ptr [ebp-8]
 004BFFA1    mov         edi,dword ptr [eax]
 004BFFA3    call        dword ptr [edi+0C];TStringList.Get
 004BFFA6    mov         edx,dword ptr [ebp-814]
 004BFFAC    lea         eax,[ebp-810]
 004BFFB2    mov         ecx,0FF
 004BFFB7    call        @LStrToString
 004BFFBC    lea         eax,[ebp-810]
 004BFFC2    push        eax
 004BFFC3    mov         cl,byte ptr [ebp-3]
 004BFFC6    mov         dl,byte ptr [ebp+8]
 004BFFC9    mov         eax,esi
 004BFFCB    call        004C1074
 004BFFD0    inc         ebx
 004BFFD1    dec         byte ptr [ebp-9]
>004BFFD4    jne         004BFF89
 004BFFD6    mov         byte ptr [esi+8],1
 004BFFDA    mov         cl,1
 004BFFDC    mov         dl,byte ptr [ebp-1]
 004BFFDF    mov         eax,dword ptr [esi+918]
 004BFFE5    call        004B6E84
 004BFFEA    mov         dl,1
 004BFFEC    mov         eax,dword ptr [ebp-8]
 004BFFEF    mov         ecx,dword ptr [eax]
 004BFFF1    call        dword ptr [ecx-4];TStringList.Destroy
 004BFFF4    mov         eax,dword ptr [esi+940]
 004BFFFA    mov         edx,dword ptr [eax]
 004BFFFC    call        dword ptr [edx+40]
 004BFFFF    mov         eax,esi
 004C0001    call        004C4790
 004C0006    test        al,al
>004C0008    jbe         004C0028
 004C000A    mov         byte ptr [ebp-9],al
 004C000D    mov         bl,0E
 004C000F    mov         edx,4C006C;'1'
 004C0014    mov         eax,dword ptr [esi+940]
 004C001A    mov         ecx,dword ptr [eax]
 004C001C    call        dword ptr [ecx+34]
 004C001F    dec         bl
>004C0021    jne         004C000F
 004C0023    dec         byte ptr [ebp-9]
>004C0026    jne         004C000D
 004C0028    xor         eax,eax
 004C002A    pop         edx
 004C002B    pop         ecx
 004C002C    pop         ecx
 004C002D    mov         dword ptr fs:[eax],edx
 004C0030    push        4C0053
 004C0035    lea         eax,[ebp-814]
 004C003B    call        @LStrClr
 004C0040    lea         eax,[ebp-710]
 004C0046    call        @LStrClr
 004C004B    ret
}
end;

//004C0070
procedure TFichierCdn.sub_004C0070(a:dword);
begin//0
  //004C0070

    //004C008E
    FNbrModules[a - 1] :=  IntToStr(StrToInt(FNbrModules[a - 1]) + 1);
    FModified := true;
    SPeriodes.sub_004B6E84(a, true);

end;//0

//004C0134
procedure TFichierCdn.sub_004C0134(a:dword);
begin//0
  //004C0134
    //004C0152
    FNbrModules[a - 1] := IntToStr(StrToInt(FNbrModules[a - 1]) - 1);
    FModified := true;
    SPeriodes.sub_004B6E84(a, true);
	//004C01D9
 
end;//0

//004C01F8
procedure TFichierCdn.SaveCdn(a:AnsiString; iOldVersion:boolean; c:string; BulletinsDefaut:boolean);
var
  FFluxCdn :TFluxCdn;
  buf :string;
  I,J,K:integer;
  Nomsbulletins:TStringList;
begin//0
  //004C01F8..004C023F
    try
      //004C024D
      GetTypeBulletins_(buf);
      if (buf <> 'Bulletins par défaut') then//004C0271
        BulletinsDefaut := false;
     
      if (GetfichierBak) then//004C027E
        RenameFile(a, ChangeFileExt(a, '.bak'));

      FFluxCdn := TFluxCdn.Create(a, $FFFF);
      if (iOldVersion) then//004C02BB
        SaveCdnOldVersion(FFluxCdn)
      else
      begin//004C02C9
        if (C = '') then//004C02D2
          if (IsPersonnelleVersion) then//004C02DD
            FFluxCdn._write('Carnet de notes')
          else//004C02ED
            FFluxCdn._write('Carnet de Notes')
        else
        begin//004C02FD
          FFluxCdn._write(c);
        end;//4
        FFluxCdn._write('2.3');
        FFluxCdn._write(GetEnseignant);
        FFluxCdn._write(GetClasseName);
        FFluxCdn._write(GetEtablissment);
        FFluxCdn._write(GetMatiereName);
        FFluxCdn._write(GetYear);
        FFluxCdn._write(GetRemarque);
        FFluxCdn._write(GetTypePeriode);
        buf := IntToStr(GetNbrePeriodes);
        FFluxCdn._write( buf);
        for I := 1 to GetNbrePeriodes do//004C0425
        begin//004C042C
            FFluxCdn._write( GetPeriodName(I));
        end;//5
        
        FFluxCdn._write( IntToStr(EleveCount));
        for I := 1 to EleveCount do  //004C049A
        begin//004C04A1
            GetEleveName__(I, buf);
            FFluxCdn._write( buf);
        end;//5
        
        for I := 1 to GetNbrePeriodes do //004C04D7
        begin//004C04DE
            FFluxCdn._write(IntToStr(GetNbreModules(I)));
            if (GetNbreModules(I) <= 0) then Continue;
            for J := 1 to GetNbreModules(I) do
            begin//004C0536
              _readCompteMoy(I, buf, J);
              FFluxCdn._write( buf);
              if (EleveCount > 0) then
              begin//004C0564
                for K := 1 to EleveCount do
                begin//004C056B
                  _GetStrNote(I, J, K, buf);
                  FFluxCdn._write( buf);
                end;//8
              end;//7
              for K := 1 to 9 do
              begin//004C059E
                FFluxCdn._write('');
              end;//7
              GetStrNoteSur(I, J, buf);
              FFluxCdn._write( buf);
              GetStrCoeff(I, J, buf);
              FFluxCdn._write( buf);
              GetStrComptMoy(I, J, buf);
              FFluxCdn._write( buf);
              GetStrDate(I, J, buf);
              FFluxCdn._write( buf);
              GetStrCommentaire(I, J, buf);
              FFluxCdn._write( buf);
              GetStrTypeNote(I, J, buf);
              FFluxCdn._write( buf);
              GetStrOraleEcrit(I, J ,buf);
              FFluxCdn._write( buf);
            end;//6
        end;//4

        for I := 1 to GetNbrePeriodes do //004C06C9
        begin//004C06D0
            for J := 1 to EleveCount do
            begin //004C06E2
              sub_004C2B38(I, J, buf);
              FFluxCdn._write( buf);
            end;//6
        end;//5
        FFluxCdn._write( IntToStr(GetClassesCount));
        for I := 1 to GetClassesCount do //004C075C
        begin//004C0763
            GetClasses(I, buf);
            FFluxCdn._write( buf);
        end;//5
		
		////=====================================
        if (BulletinsDefaut = false) then
        begin//004C0794
          GetTypeBulletins_(buf);
          FFluxCdn._write( buf);
          FFluxCdn._write( IntToStr(BulletinsCount));

          for I := 1 to BulletinsCount do //004C07FB
          begin//004C0802
              GetBulletinsName__(I, buf);
              FFluxCdn._write( buf);
          end;//6
        end//4
        else
        begin//004C082E
		  Buf :=  'Nouveaux bulletins du collège';
          FFluxCdn._write(Buf);
          Nomsbulletins := SetNomsbulletins(Buf);
          FFluxCdn._write(IntToStr(Nomsbulletins.count));
          for I := 1 to Nomsbulletins.count do //004C08B8
          begin//004C08BF
              FFluxCdn._write(Nomsbulletins[I - 1]);
          end;//6
          FreeAndNil(Nomsbulletins);
        end;//4
          for I := 1 to GetNbrePeriodes do //004C0920
          begin//004C0927
            for J := 1 to EleveCount do
            begin//004C093D
              if (BulletinsDefaut = false) then
              begin//004C0943
                for K := 1 to BulletinsCount do
                begin//004C0955
                  GetAppreciations(I, J, K, buf);
                  FFluxCdn._write( buf);
                end;//8
              end//7
              else
              begin//004C0986
                GetAppreciations(I, J, 1, buf);
                FFluxCdn._write(buf);
                FFluxCdn._write('');
                FFluxCdn._write('');
              end;//7
            end;//6
          end;//5
        
          for I := 1 to EleveCount do //004C09EA
          begin//004C09F1
            GetElevDateNais(I, buf);
            FFluxCdn._write( buf);
            GetInfoEleve(I, buf);
            FFluxCdn._write( buf);
            if (sub_004C8E50(I) ) then
            begin//004C0A3D
              FFluxCdn._write('R');
            end//6
            else
            begin//004C0A4D
              FFluxCdn._write('');
            end;//6
          end;//5
        
        buf := IntToStr(sub_004C4D44);
        FFluxCdn._write( buf);
        buf := IntToStr(sub_004C8AD8);

        FFluxCdn._write( buf);
        buf := IntToStr(sub_004C8AE0);
        FFluxCdn._write( buf);
        FFluxCdn.Destroy;
      end;//3
      SetFileName(a);
      OldVersion := false;
      FModified := false;
    except//004C0B44
      MessageBoxA(0, PChar('Erreur dans l''enregistrement du fichier ' + a), 'Carnet de Notes version Personnelle', 16);
    end;//2
end;//0


//004C0C88
procedure TFichierCdn._SetStrNote(Periode:dword; ACol:dword; ARow:dword; Value:string);
var
  Modules,I :integer;
  lvar_110:string;
begin//0
  //004C0C88
    Modules := 0;
      for I := 1 to Periode - 1 do //004C0CF7
      begin//004C0CFE
        Modules := StrToInt(FNbrModules[I - 1]) + Modules;
      end;//3
   
    if (FModified = false) then
    begin//004C0D52
      lvar_110 := FData.Cells[Modules - 1 + ACol, ARow];
      FModified := (lvar_110 = Value) Xor true;
    end;//2
    FData.Cells[Modules - 1 + ACol, ARow] :=  Value;
end;//0


//004C0E24
procedure TFichierCdn._SetStrNote0(periode:dword; ACol:dword; e:string);
begin//0
  //004C0E24
  _SetStrNote(periode, ACol, 0, e);
end;//0

//004C0E5C
procedure TFichierCdn._SetStrNote16(periode:dword; ACol:dword; c:string);
begin//0
  //004C0E5C
  _SetStrNote(periode, ACol,EleveCount + $0F{gvar_006178FF},c );
end;//0


//004C0EC8
procedure TFichierCdn._SetStrNote15(Periode:dword; ACol :dword; d:string);
begin//0
  //004C0EC8
  _SetStrNote(Periode, ACol,EleveCount +  $0E {gvar_006178FE} , d);
end;//0

//004C0F34
procedure TFichierCdn._SetStrNote17(Periode:dword; ACol:dword; d:string);
begin//0
  //004C0F34
  _SetStrNote(Periode, ACol,EleveCount + $10 {gvar_00617900} , d);
end;//0


//004C0FA0
function TFichierCdn._SetStrNote13(a:dword; b:dword; c:string):dword;
var
  buf:string;
  I:integer;
begin//0
  //004C0FA0
  GetStrComptMoy(a, b, buf);
  if (buf <> c) then
  begin//1
    //004C0FF2
      for I := 1 to EleveCount do //004C0FFF
      begin//3
        //004C1003
        SetAttributs2(a, I, true);
      end;//3
    
  end;//1
  _SetStrNote(a, b, EleveCount + $0D{gvar_006178FD} , c);
  SPeriodes.sub_004B6E84(a, true);
end;//0

//004C1074                          
procedure TFichierCdn.sub_004C1074(Periode:dword; ACol:dword; ARow:dword; data:string);
var
  lvar_102:string;
  lvar_204:string;
  I :integer;
begin//0
  //004C1074
  //ECX := d[1] + 1;//ECX
  lvar_102 := data;
  //lvar_2 := ACol;
  //lvar_1 := Periode;
  for I := 1 to 7 do
  begin//004C109C
    _GetStrNote(Periode, ACol, ARow, lvar_204);
    //ECX := lvar_204[1] + 1;
    //EAX := (lvar_204 = lvar_102) Xor true;
    //push EAX
    //SetAttributs1(Periode, ACol);
  end;//1
  _GetStrNote(Periode, ACol, ARow, lvar_204);
  //ECX := lvar_204 + 1;
  SetAttributs2(Periode, ARow, (lvar_204 = lvar_102) Xor true);
  //_SetStrNote(Periode, ACol, ARow);
  SPeriodes.sub_004B6E84(Periode, true);

end;

//004C1158
procedure TFichierCdn.DeleteEleve(a:dword);
var
   I,J,K:integer;
   StringList:TStringList;
begin//0
  //004C1158
    //004C1179
    StringList := TStringList.Create;  
      k := sub_004C4790 ;
      for I := 1 to sub_004C4790  do //004C119C
      begin//004C11A6
        StringList.Clear;
        StringList.addstrings(FData.Cols[I - 1]);
		StringList.delete(a);
        FData.Cols[I - 1].Clear;
        for J := 1 to StringList.count do//004C1206
          FData.Cells[I - 1, J - 1] :=  StringList[k];
      end;//3
    StringList.destroy;
    FData.RowCount := FData.RowCount - 1;
    SEleves.DeleteEleve(a);
      for I := 1 to GetNbrePeriodes do //004C12A0
      begin//004C12AA
        f928.Delete(EleveCount * (I - 1) + a - 1);
        for J := 1 to BulletinsCount do//004C1308
          FAppreciations.Delete(BulletinsCount * (a - 1) + (I - 1) * EleveCount * BulletinsCount);
      end;//3
    FDateNais.Delete(a - 1);
    FRedoublant.Delete(a - 1);
    FInfoEleve.Delete(a - 1);
    FModified := true;
      //004C13D8
      for I := 1 to GetNbrePeriodes do//004C13E2
        SPeriodes.sub_004B6E84(I, true);
    FAttributs.Clear;
      for I := 1 to 2 * GetNbrePeriodes do//004C142C
      begin //004C142F
        for J := 1 to EleveCount do//004C1442
          FAttributs.Add('1');
      end;//3
    FAttributs0.Clear;
      for I := 1 to sub_004C4790 do //004C1475
      begin//004C1478
        for J := 1 to 14 do
        begin//004C147D
          FAttributs0.Add('1');
        end;//4
      end;//3
end;//0


//004C14C8
procedure TFichierCdn.sub_004C14C8(b:String; c:string; d:string; a:boolean);
var
I,J,K,index:integer;
StringList,lvar_18:TStringList;
begin//0
  //004C14C8..004C1534
    if (EleveCount >= 50) then Exit;
    FData.RowCount := FData.RowCount + 1;
    SEleves.AddEleve(b); //ajouter l''eleve
    StringList := SEleves.EleveLists;
    index := StringList.indexof(b);
    lvar_18 := TStringList.Create;
      for I := 1 to sub_004C4790 do //004C15CF
      begin//004C15D9
        lvar_18.clear;
        lvar_18.addStrings(FData.Cols[I - 1]);//
        lvar_18.insert(index + 1,'abs');
        FData.Cols[I - 1].Clear;
        for J := 1 to lvar_18.count do//004C1646
          FData.Cells[I - 1, J - 1] := lvar_18[J];
      end;//3
      for I := 1 to GetNbrePeriodes do//004C16B3
      begin//004C16BD
        f928.Insert(EleveCount * (I - 1)+ index, '');
        for J := 1 to BulletinsCount do //004C171A
          FAppreciations.Insert(BulletinsCount * index + (J - 1) + (I - 1) * EleveCount * BulletinsCount, '');
      end;//3
    FDateNais.Insert(index, c);
    if (a) then //004C17DD
      FRedoublant.Insert(index, 'R')
    else//004C17F2
      FRedoublant.Insert(index, '');

    FInfoEleve.Insert(index, d);
    FModified := true;
      for I := 1 to GetNbrePeriodes do//004C1845
        SPeriodes.sub_004B6E84(I, true);

    lvar_18.destroy;
    FAttributs.Clear;
      for I := 1 to 2 * GetNbrePeriodes do  //004C1899
        for J := 1 to EleveCount do //004C189C
          FAttributs.Add('1');
    
    FAttributs0.Clear;
      for I := 1 to sub_004C4790 do//004C18E5
        for J := 1 to 14 do//004C18EA
          FAttributs0.Add('1');

end;//0

//004C1954
procedure TFichierCdn.sub_004C1954(a:integer; b:string; c:boolean;d:string);
var
  I:integer;
begin//0
  //004C1954
  (*ESI := c;
  ECX := ECX + 1;//ECX
  lvar_228 := c;
  ESI := d;
  ECX := ECX + 1;//ECX
  lvar_124 := d{ECX};
  lvar_1 := b;
  EBX := a;
  try*)
    //004C19D2
   (* SEleves.DeleteEleve(b);
    SEleves.AddEleve(buf);
    lvar_C := Eleves.EleveLists.indexof(buf);
    
    ESI := 0;

      for I := 1 to GetNbrePeriodes(a)  do //004C1A40
      begin//3
        //004C1A4A
        ESI := ESI + StrToInt(FNbrModules[I-1]);
      end;//3
    
    lvar_20 := TStringList.Create;
      for lvar_10 := 1 to ESI do //004C1A9B
      begin//3
        //004C1AA5
        lvar_20.clear;
        ESI := lvar_10 - 1;//ESI
        lvar_20.AddStrings(FData.Cols[lvar_10 - 1]);
        lvar_20.move(b,lvar_C + 1);
        FData.Cols[ESI].Clear;
        for I := 1 to lvar_20.count do
        begin//4
          //004C1B12
          FData.Cells[lvar_10 - 1, I - 1] := lvar_20[I - 1];
        end;//4
      end;//3
    lvar_20.clear;
    
      for I := 1 to a.EleveCount  do //004C1B83
      begin//3
        //004C1B8B
        if (I <> b) then Continue;
        a.GetElevDateNais(I, buf);
		lvar_20.Add(buf);
      end;//3
    FDateNais.Clear;
    FDateNais.AddStrings(lvar_20);
    FDateNais.Insert(lvar_C, lvar_340);
    lvar_20.clear;

      for I := 1 to a.EleveCount  do //004C1C2B
      begin//3
        //004C1C33
        if (I <> b) then 
        if (sub_004C8E50(a, I) ) then//004C1C56
          lvar_20.Add('R')
        else//004C1C65
          lvar_20.add('');
      end;//3
   
    FRedoublant.Clear;
    FRedoublant.AddStrings(lvar_20);
    if (e <> 0) then//004C1C94
      FRedoublant.Insert(lvar_C, 'R')
    else//004C1CA9
      FRedoublant.Insert(lvar_C, '');
	  
    lvar_20.clear;
   
      for I := 1 to GetNbrePeriodes(a) do //004C1CD5
      begin//3
        //004C1CDF
        if (a.BulletinsCount > 0) then 
        for J := 1 to a.BulletinsCount do
        begin//4
          //004C1CF9
          a.GetAppreciations(I, b, J, buf);
          lvar_20.Add(buf);
        end;//4
      end;//3
     EDI:=0;
      for I := 1 to GetNbrePeriodes(a) do //004C1D6D
      begin//3
        //004C1D77
          for ESI := 1 to a.BulletinsCount do //004C1D8E
          begin//5
            //004C1D8E
            lvar_1C := (b - 1) * a.BulletinsCount + ((I - 1) *  a.BulletinsCount * a.BulletinsCount) - EDI;//EAX - 0

            FAppreciations.Delete(lvar_1C);
          end;//5        
        EDI := EDI + a.BulletinsCount;
      end;//3
  
      for lvar_14 := 1 to GetNbrePeriodes(a) do  //004C1E4D
      begin//3
        //004C1E57
       
        for lvar_18 := 1 to a.BulletinsCount  do
        begin//4
          //004C1E75
          
          EDI := a.BulletinsCount;
         
          EDI := EDI * lvar_C;
          EAX := lvar_18 - 1;//EAX
          EDI := EDI + EAX;//EDI + (EAX)
          
          EAX := a.EleveCount;
          
          EDX := lvar_14 - 1;//EDX
          EDX_EAX := EDX * EAX;//EDX * a.EleveCount And $FF{255}
          
          EAX := a.BulletinsCount;
          
          EDX := EDX * EAX;//EDX * a.EleveCount And $FF{255}{EAX} * (a.BulletinsCount And $FF{255})
          EDI := EDI + EDX;//EDI + EDX * a.EleveCount And $FF{255}{EAX} * (a.BulletinsCount And $FF{255})
          lvar_1C := EDI;
          EDX := 0;
          EAX := lvar_20;
          call();
          ECX := lvar_348;
          EDX := lvar_1C;
          EAX := ;
          call();
          EDX := 0;
          EAX := lvar_20;
          call();
        end;//4
      end;//3
    
    EAX := lvar_20;
    call();

      for lvar_14 := 1 to GetNbrePeriodes(a)  do //004C1F47
      begin//3
        //004C1F51
        //push EAX
        EDX := lvar_14;
        ECX := b;
        EAX := EBX;//a
        a.sub_004C2B38(lvar_14, b, lvar_33C);
         := ;
        EDX := lvar_34C;
        EAX := lvar_20;
        call();
      end;//3
    
      for I := 1 to GetNbrePeriodes(a)  do //004C1FA9
      begin//3
        //004C1FB3
        f928.Delete( a.EleveCount + (b - 1) - (I - 1)* a.EleveCount);
      end;//3
   

      for lvar_14 := 1 to GetNbrePeriodes(a)  do //004C202C
      begin//3
        //004C2036

        f928.Insert((lvar_14 - 1) * a.EleveCount + lvar_C, lvar_20[0]);
        lvar_20.delete(0);

      end;//3
    
     := 1;
   
      
      for I := 1 to GetNbrePeriodes(a)  do //004C20AF
      //004C20B9
        SPeriodes.sub_004B6E84(I, true);
      
 
    a.defaultAttributs;
    lvar_20.destroy;*)
    
	//004C20FC
  
end;//0

//004C213C
procedure TFichierCdn.sub_004C213C(Periode:dword; ARow:dword; var Moy:string); //moyenne brute
var
  I : integer;
  Coefficient,NoteSur,Valeur,Total, Somme: real;
  buf: string;
begin//0
  //004C213C..004C2179
    if (GetAttributs2(Periode, ARow)) then
    begin//004C218F
      Total := 0;
      Somme := 0;        
        for I := 1 to GetNbreModules(Periode) do  //004C21BF
        begin//004C21C9
          GetStrComptMoy(Periode, I, buf);
          if (buf = 'oui') then
          begin//004C2208
            try//004C2216
              GetStrCoeff(Periode, I, buf);
              Coefficient := StrToFloat(buf);
              GetStrNoteSur(Periode, I, buf);
              NoteSur := StrToFloat(buf); 
              _GetStrNote(Periode, I, ARow, buf);
			  Valeur := StrToFloat(buf); 
              Total := Valeur * Coefficient + Total;
              Somme := NoteSur * Coefficient + Somme;
            except//6
              on E:EConvertError do
              begin//004C2321
			    //....
				showmessage('ERROR1');
              end;//7
              on E:EMathError do
              begin//004C2328
			  //....
			    showmessage('ERROR2');
              end;//7
            end;//6
          end;//5
        end;//4
	  
      if (Somme<> 0) then //004C234E
        Moy := FloatToStrF(GetmoyennesSur * (Total / Somme), {2}ffFixed, 18, 2)
      else//004C239D
        Moy := '';
      //showmessage(Format('Moy %s',[Moy]));
      SetStrMoy(Periode, ARow,Moy); //save Moyenne
      SetAttributs2(Periode, ARow, false);
    end//2
	else
      GetStrMoy(Periode, ARow, Moy);
end;//0


//004C2410
procedure TFichierCdn.GetStrMoyArrendit(a:String; {b:Integer;} ArrendirMoyennes:dword; var Moy:string);
var
  lvar_20:real;
  lvar_30: Extended;
  buf:string;
begin//0
//004C2410
   try
      //004C2458
      lvar_20 := StrToFloat(a);
      case ArrendirMoyennes of
        0: Moy := a; //004C24A0 ne pas arrendir
        1:
        begin//004C24B3
          lvar_30 := 1;//INT(lvar_20 * 10);
          if (ROUND(lvar_20 * 10 * 10) = 0) then
          begin//004C24F6
            if (lvar_30 / 10 = 0) then//004C250F
              Moy := FloatToStrF(lvar_30 / 10,ffFixed{2}, 18, 0)
			else
            Moy := FloatToStrF(lvar_30 / 10,ffFixed{2}, 18, 1);
          end
		  else
          if ((ROUND(lvar_20 * 10 * 10) - 1) - 4 < 0) then//004C2592
            Moy:= FloatToStrF(lvar_30 / 10,ffFixed{2}, 18, 1)
		  else  
            Moy := FloatToStrF((lvar_30 + 1) / 10,ffFixed{2}, 18, 1);
        end;//4
       (* 2:
        begin//004C2618
          if (ROUND(lvar_20 * 100 - TRUNC(lvar_20) * 100) - 13 < 0) then
          begin///004C2669
            d := FloatToStrF(TRUNC(lvar_20),ffFixed{2}, 18, 0);
            Exit;
          end;//5
          if ((ROUND(lvar_20 * 100 - TRUNC(lvar_20) * 100) -13) - 25 < 0) then
          begin//004C26C1
            d := FloatToStrF(TRUNC(lvar_20) + 0.25,ffFixed{2}, 18, 2);
            Exit;
          end;//5
          if ((ROUND(lvar_20 * 100 - TRUNC(lvar_20) * 100)  -38) - 25 < 0) then
          begin//004C2722
            d := FloatToStrF(TRUNC(lvar_20) + 0.5,ffFixed{2}, 18, 1);
            Exit;
          end;//5
          if ((ROUND(lvar_20 * 100 - TRUNC(lvar_20) * 100)  -63) - 25 < 0) then
          begin//004C2783
            d := FloatToStrF(TRUNC(lvar_20) + 0.75,ffFixed{2}, 18, 2);
            Exit;
          end;//5
          if (ROUND(lvar_20 * 100 - TRUNC(lvar_20) * 100) -88 - 12 < 0) then
          begin//004C27E6
            d := FloatToStrF(TRUNC(lvar_20) + 1,ffFixed{2}, 18, 0);
            Exit;
          end;//5
        end;//4
        3:
        begin//004C2841
          if (ROUND(lvar_20 * 100 - TRUNC(lvar_20) * 100)  - 25 < 0) then
          begin//004C2892
            d := FloatToStrF(TRUNC(lvar_20),ffFixed{2}, 18, 0);
            Exit;
          end;//5
          if (ROUND(lvar_20 * 100 - TRUNC(lvar_20) * 100) -25 - 50 < 0) then
          begin//004C28EA
            d := FloatToStrF(TRUNC(lvar_20) + 0.5,ffFixed{2}, 18, 1);
            Exit;
          end;//5
          if (ROUND(lvar_20 * 100 - TRUNC(lvar_20) * 100) -75 - 25 < 0) then
          begin//004C294D
            d := FloatToStrF(TRUNC(lvar_20) + 1,ffFixed{2}, 18, 0);
            Exit;
          end;//5
        end;//4
        4:
        begin//004C29A8
          GetStrMoyArrendit(a,3,buf);
          if (GetStrMoyArrendit(buf) < lvar_20) then
          begin//004C2A04
            d := FloatToStrF(lvar_20 + 0.5,ffFixed{2}, 18, 1);
            Exit;
          end;//5
          GetStrMoyArrendit(a,3,d);
        end;//4*)
      end;//3
    except//2
      on E:EConvertError do
      begin//3
        //004C2A77
         Moy := '';//'Error_Convert';
      end;//3
      on E:EMathError do
      begin//3
        //004C2A7F
        Moy := '';//'Error_Math';
      end;//3
    end;//2
end;//0

//004C2AF4
procedure TFichierCdn.GetStrNoteFromFile(Periode:dword; ARow:dword; ArrondirMoyennes:dword; var RMoy:string);
begin//0
  //004C2AF4
  sub_004C213C(Periode, ARow,RMoy); //calculer la moyenne brute
  GetStrMoyArrendit(RMoy, ArrondirMoyennes,RMoy); // Arrondir la Moyenne
end;

//004C2B38
procedure TFichierCdn.sub_004C2B38(Periode:dword; ARow:dword; var c:string);
var
  count:integer;
begin//0
  //004C2B38..004C2B5C
    count :=byte(EleveCount) * (Periode - 1) + ARow - 1;
    if (count >= f928.Count) then
    begin//004C2BAB
      f928.Insert(count, '');
    end;//2
    c := f928[count];
end;//0

//004C2C00
procedure TFichierCdn.GetAppreciations(a:dword; b:dword; c:dword;var d:string);
var
 I:integer;
begin//0
  //004C2C00..004C2C24
    I:=BulletinsCount * (b - 1) + (c - 1) + EleveCount * (a - 1) * BulletinsCount;
    if (I >= FAppreciations.Count) then
    begin//2
      //004C2CBA
      FAppreciations.Insert(I, '');
    end;//2
    d := FAppreciations[I];
end;//0


//004C2D10
procedure TFichierCdn.GetStrNoteAsFloat(Periode:dword; ARow:dword; ArrondirMoyennes:dword; var Moy:string);
var
  lvar_101,lvar_20C : string;
begin//0
  //004C2D10
  try
    //004C2D45
    GetStrNoteFromFile(Periode, ARow, ArrondirMoyennes, Moy);
    try//004C2D6A
      sub_004C2B38(Periode, ARow, lvar_20C);
      Moy := FloatToStrF(StrToFloat(Moy) {+StrToFloat(lvar_20C)}, ffFixed{2}, 18, 2);
    except//2
      on E:EConvertError do
      begin//3
        //004C2E11
        Moy := 'error Convert';
      end;//3
    end;//2
  finally//004C2E31
  end;//1
end;//0


//004C2E60
procedure TFichierCdn.sub_004C2E60(str:string; B:byte; J:integer; buf:string);
begin
{ 004C2E60    push        ebp
 004C2E61    mov         ebp,esp
 004C2E63    add         esp,0FFFFFCA0
 004C2E69    push        ebx
 004C2E6A    push        esi
 004C2E6B    push        edi
 004C2E6C    xor         ebx,ebx
 004C2E6E    mov         dword ptr [ebp-35C],ebx
 004C2E74    mov         dword ptr [ebp-358],ebx
 004C2E7A    mov         dword ptr [ebp-354],ebx
 004C2E80    mov         dword ptr [ebp-350],ebx
 004C2E86    mov         esi,edx
 004C2E88    lea         edi,[ebp-14C]
 004C2E8E    push        ecx
 004C2E8F    xor         ecx,ecx
 004C2E91    mov         cl,byte ptr [esi]
 004C2E93    inc         ecx
 004C2E94    rep movs    byte ptr [edi],byte ptr [esi]
 004C2E96    pop         ecx
 004C2E97    mov         byte ptr [ebp-5],cl
 004C2E9A    mov         dword ptr [ebp-4],eax
 004C2E9D    xor         eax,eax
 004C2E9F    push        ebp
 004C2EA0    push        4C311C
 004C2EA5    push        dword ptr fs:[eax]
 004C2EA8    mov         dword ptr fs:[eax],esp
 004C2EAB    xor         eax,eax
 004C2EAD    mov         dword ptr [ebp-38],eax
 004C2EB0    mov         dword ptr [ebp-34],eax
 004C2EB3    mov         word ptr [ebp-30],ax
 004C2EB7    xor         eax,eax
 004C2EB9    mov         dword ptr [ebp-48],eax
 004C2EBC    mov         dword ptr [ebp-44],eax
 004C2EBF    mov         word ptr [ebp-40],ax
 004C2EC3    mov         dl,byte ptr [ebp-5]
 004C2EC6    mov         eax,dword ptr [ebp-4]
 004C2EC9    call        004BEAD0
 004C2ECE    and         eax,0FF
 004C2ED3    test        eax,eax
>004C2ED5    jle         004C309B
 004C2EDB    mov         dword ptr [ebp-4C],eax
 004C2EDE    mov         dword ptr [ebp-0C],1
 004C2EE5    lea         eax,[ebp-24C]
 004C2EEB    push        eax
 004C2EEC    mov         ebx,dword ptr [ebp-0C]
 004C2EEF    cmp         ebx,0FF
>004C2EF5    jbe         004C2EFC
 004C2EF7    call        @BoundErr
 004C2EFC    mov         ecx,ebx
 004C2EFE    mov         dl,byte ptr [ebp-5]
 004C2F01    mov         eax,dword ptr [ebp-4]
 004C2F04    call        004BEDCC
 004C2F09    lea         eax,[ebp-24C]
 004C2F0F    mov         edx,4C312C;'oui'
 004C2F14    xor         ecx,ecx
 004C2F16    mov         cl,byte ptr [eax]
 004C2F18    inc         ecx
 004C2F19    call        @AStrCmp
>004C2F1E    jne         004C308F
 004C2F24    lea         eax,[ebp-34C]
 004C2F2A    push        eax
 004C2F2B    mov         eax,dword ptr [ebp-0C]
 004C2F2E    cmp         eax,0FF
>004C2F33    jbe         004C2F3A
 004C2F35    call        @BoundErr
 004C2F3A    mov         ecx,ebx
 004C2F3C    mov         dl,byte ptr [ebp-5]
 004C2F3F    mov         eax,dword ptr [ebp-4]
 004C2F42    call        004BEEBC
 004C2F47    lea         eax,[ebp-34C]
 004C2F4D    lea         edx,[ebp-14C]
 004C2F53    xor         ecx,ecx
 004C2F55    mov         cl,byte ptr [eax]
 004C2F57    inc         ecx
 004C2F58    call        @AStrCmp
>004C2F5D    jne         004C308F
 004C2F63    xor         eax,eax
 004C2F65    push        ebp
 004C2F66    push        4C3063
 004C2F6B    push        dword ptr fs:[eax]
 004C2F6E    mov         dword ptr fs:[eax],esp
 004C2F71    lea         eax,[ebp-24C]
 004C2F77    push        eax
 004C2F78    mov         eax,dword ptr [ebp-0C]
 004C2F7B    cmp         eax,0FF
>004C2F80    jbe         004C2F87
 004C2F82    call        @BoundErr
 004C2F87    mov         ecx,ebx
 004C2F89    mov         dl,byte ptr [ebp-5]
 004C2F8C    mov         eax,dword ptr [ebp-4]
 004C2F8F    call        004BED7C
 004C2F94    lea         edx,[ebp-24C]
 004C2F9A    lea         eax,[ebp-350]
 004C2FA0    call        @LStrFromString
 004C2FA5    mov         eax,dword ptr [ebp-350]
 004C2FAB    call        GetStrMoyArrendit
 004C2FB0    fstp        tbyte ptr [ebp-18]
 004C2FB3    wait
 004C2FB4    lea         eax,[ebp-24C]
 004C2FBA    push        eax
 004C2FBB    mov         eax,dword ptr [ebp-0C]
 004C2FBE    cmp         eax,0FF
>004C2FC3    jbe         004C2FCA
 004C2FC5    call        @BoundErr
 004C2FCA    mov         ecx,ebx
 004C2FCC    mov         dl,byte ptr [ebp-5]
 004C2FCF    mov         eax,dword ptr [ebp-4]
 004C2FD2    call        004BED2C
 004C2FD7    lea         edx,[ebp-24C]
 004C2FDD    lea         eax,[ebp-354]
 004C2FE3    call        @LStrFromString
 004C2FE8    mov         eax,dword ptr [ebp-354]
 004C2FEE    call        StrToFloat
 004C2FF3    fstp        tbyte ptr [ebp-28]
 004C2FF6    wait
 004C2FF7    mov         al,byte ptr [ebp+0C]
 004C2FFA    push        eax
 004C2FFB    lea         eax,[ebp-24C]
 004C3001    push        eax
 004C3002    mov         eax,dword ptr [ebp-0C]
 004C3005    cmp         eax,0FF
>004C300A    jbe         004C3011
 004C300C    call        @BoundErr
 004C3011    mov         ecx,ebx
 004C3013    mov         dl,byte ptr [ebp-5]
 004C3016    mov         eax,dword ptr [ebp-4]
 004C3019    call        004BEF5C
 004C301E    lea         edx,[ebp-24C]
 004C3024    lea         eax,[ebp-358]
 004C302A    call        @LStrFromString
 004C302F    mov         eax,dword ptr [ebp-358]
 004C3035    call        GetStrMoyArrendit
 004C303A    fld         tbyte ptr [ebp-18]
 004C303D    fmulp       st(1),st
 004C303F    fld         tbyte ptr [ebp-38]
 004C3042    faddp       st(1),st
 004C3044    fstp        tbyte ptr [ebp-38]
 004C3047    wait
 004C3048    fld         tbyte ptr [ebp-28]
 004C304B    fld         tbyte ptr [ebp-18]
 004C304E    fmulp       st(1),st
 004C3050    fld         tbyte ptr [ebp-48]
 004C3053    faddp       st(1),st
 004C3055    fstp        tbyte ptr [ebp-48]
 004C3058    wait
 004C3059    xor         eax,eax
 004C305B    pop         edx
 004C305C    pop         ecx
 004C305D    pop         ecx
 004C305E    mov         dword ptr fs:[eax],edx
>004C3061    jmp         004C308F
>004C3063    jmp         @HandleOnException
 004C3068    dd          2
 004C306C    dd          00409B50;EConvertError
 004C3070    dd          004C307C
 004C3074    dd          004098E0;EMathError
 004C3078    dd          004C3083
 004C307C    call        @DoneExcept
>004C3081    jmp         004C308F
 004C3083    call        @DoneExcept
>004C3088    jmp         004C308F
 004C308A    call        @DoneExcept
 004C308F    inc         dword ptr [ebp-0C]
 004C3092    dec         dword ptr [ebp-4C]
>004C3095    jne         004C2EE5
 004C309B    fld         tbyte ptr [ebp-48]
 004C309E    fcomp       dword ptr ds:[4C3130];0:Single
 004C30A4    fnstsw      al
 004C30A6    sahf
>004C30A7    je          004C30F8
 004C30A9    call        004B9E48
 004C30AE    mov         dword ptr [ebp-360],eax
 004C30B4    fild        dword ptr [ebp-360]
 004C30BA    fld         tbyte ptr [ebp-38]
 004C30BD    fld         tbyte ptr [ebp-48]
 004C30C0    fdivp       st(1),st
 004C30C2    fmulp       st(1),st
 004C30C4    add         esp,0FFFFFFF4
 004C30C7    fstp        tbyte ptr [esp]
 004C30CA    wait
 004C30CB    lea         eax,[ebp-35C]
 004C30D1    push        eax
 004C30D2    mov         ecx,2
 004C30D7    mov         edx,12
 004C30DC    mov         al,2
 004C30DE    call        FloatToStrF
 004C30E3    mov         edx,dword ptr [ebp-35C]
 004C30E9    mov         eax,dword ptr [ebp+8]
 004C30EC    mov         ecx,0FF
 004C30F1    call        @LStrToString
>004C30F6    jmp         004C30FE
 004C30F8    mov         eax,dword ptr [ebp+8]
 004C30FB    mov         byte ptr [eax],0
 004C30FE    xor         eax,eax
 004C3100    pop         edx
 004C3101    pop         ecx
 004C3102    pop         ecx
 004C3103    mov         dword ptr fs:[eax],edx
 004C3106    push        4C3123
 004C310B    lea         eax,[ebp-35C]
 004C3111    mov         edx,4
 004C3116    call        @LStrArrayClr
 004C311B    ret
>004C311C    jmp         @HandleFinally
>004C3121    jmp         004C310B
 004C3123    pop         edi
 004C3124    pop         esi
 004C3125    pop         ebx
 004C3126    mov         esp,ebp
 004C3128    pop         ebp
 004C3129    ret         8}
end;

//004C3134
function TFichierCdn.sub_004C3134(a: byte):TStringList;
begin
{ 004C3134    push        ebp
 004C3135    mov         ebp,esp
 004C3137    add         esp,0FFFFFECC
 004C313D    push        ebx
 004C313E    push        esi
 004C313F    xor         ecx,ecx
 004C3141    mov         dword ptr [ebp-134],ecx
 004C3147    mov         dword ptr [ebp-30],ecx
 004C314A    mov         byte ptr [ebp-1],dl
 004C314D    mov         esi,eax
 004C314F    xor         eax,eax
 004C3151    push        ebp
 004C3152    push        4C32A5
 004C3157    push        dword ptr fs:[eax]
 004C315A    mov         dword ptr fs:[eax],esp
 004C315D    mov         eax,esi
 004C315F    call        004BE9E0
 004C3164    xor         edx,edx
 004C3166    mov         dl,al
 004C3168    cmp         edx,0FF
>004C316E    jbe         004C3175
 004C3170    call        @BoundErr
 004C3175    mov         al,1
 004C3177    lea         ecx,[ebp-2C]
 004C317A    mov         ah,20
 004C317C    call        @SetRange
 004C3181    mov         al,byte ptr [ebp-1]
 004C3184    and         eax,0FF
 004C3189    bt          dword ptr [ebp-2C],eax
>004C318D    jae         004C31FC
 004C318F    mov         dl,1
 004C3191    mov         eax,[004120B8];TStringList
 004C3196    call        TObject.Create;TStringList.Create
 004C319B    mov         dword ptr [ebp-8],eax
 004C319E    mov         dl,1
 004C31A0    mov         eax,dword ptr [ebp-8]
 004C31A3    call        TStringList.SetSorted
 004C31A8    mov         eax,dword ptr [ebp-8]
 004C31AB    mov         byte ptr [eax+19],0;TStringList.FDuplicates:TDuplicates
 004C31AF    mov         dl,byte ptr [ebp-1]
 004C31B2    mov         eax,esi
 004C31B4    call        004BEAD0
 004C31B9    test        al,al
>004C31BB    jbe         004C31F4
 004C31BD    mov         byte ptr [ebp-9],al
 004C31C0    mov         bl,1
 004C31C2    lea         eax,[ebp-130]
 004C31C8    push        eax
 004C31C9    mov         ecx,ebx
 004C31CB    mov         dl,byte ptr [ebp-1]
 004C31CE    mov         eax,esi
 004C31D0    call        004BEEBC
 004C31D5    lea         edx,[ebp-130]
 004C31DB    lea         eax,[ebp-30]
 004C31DE    call        @LStrFromString
 004C31E3    mov         edx,dword ptr [ebp-30]
 004C31E6    mov         eax,dword ptr [ebp-8]
 004C31E9    mov         ecx,dword ptr [eax]
 004C31EB    call        dword ptr [ecx+34];TStringList.Add
 004C31EE    inc         ebx
 004C31EF    dec         byte ptr [ebp-9]
>004C31F2    jne         004C31C2
 004C31F4    mov         ebx,dword ptr [ebp-8]
>004C31F7    jmp         004C3284
 004C31FC    mov         dl,1
 004C31FE    mov         eax,[004120B8];TStringList
 004C3203    call        TObject.Create;TStringList.Create
 004C3208    mov         dword ptr [ebp-8],eax
 004C320B    mov         dl,1
 004C320D    mov         eax,dword ptr [ebp-8]
 004C3210    call        TStringList.SetSorted
 004C3215    mov         eax,dword ptr [ebp-8]
 004C3218    mov         byte ptr [eax+19],0;TStringList.FDuplicates:TDuplicates
 004C321C    mov         eax,esi
 004C321E    call        004BE9E0
 004C3223    test        al,al
>004C3225    jbe         004C3281
 004C3227    mov         byte ptr [ebp-9],al
 004C322A    mov         byte ptr [ebp-2],1
 004C322E    mov         dl,byte ptr [ebp-2]
 004C3231    mov         eax,esi
 004C3233    call        004BEAD0
 004C3238    test        al,al
>004C323A    jbe         004C3279
 004C323C    mov         byte ptr [ebp-0A],al
 004C323F    mov         bl,1
 004C3241    lea         eax,[ebp-130]
 004C3247    push        eax
 004C3248    mov         ecx,ebx
 004C324A    mov         dl,byte ptr [ebp-2]
 004C324D    mov         eax,esi
 004C324F    call        004BEEBC
 004C3254    lea         edx,[ebp-130]
 004C325A    lea         eax,[ebp-134]
 004C3260    call        @LStrFromString
 004C3265    mov         edx,dword ptr [ebp-134]
 004C326B    mov         eax,dword ptr [ebp-8]
 004C326E    mov         ecx,dword ptr [eax]
 004C3270    call        dword ptr [ecx+34];TStringList.Add
 004C3273    inc         ebx
 004C3274    dec         byte ptr [ebp-0A]
>004C3277    jne         004C3241
 004C3279    inc         byte ptr [ebp-2]
 004C327C    dec         byte ptr [ebp-9]
>004C327F    jne         004C322E
 004C3281    mov         ebx,dword ptr [ebp-8]
 004C3284    xor         eax,eax
 004C3286    pop         edx
 004C3287    pop         ecx
 004C3288    pop         ecx
 004C3289    mov         dword ptr fs:[eax],edx
 004C328C    push        4C32AC
 004C3291    lea         eax,[ebp-134]
 004C3297    call        @LStrClr
 004C329C    lea         eax,[ebp-30]
 004C329F    call        @LStrClr
 004C32A4    ret
>004C32A5    jmp         @HandleFinally
>004C32AA    jmp         004C3291
 004C32AC    mov         eax,ebx
 004C32AE    pop         esi
 004C32AF    pop         ebx
 004C32B0    mov         esp,ebp
 004C32B2    pop         ebp
 004C32B3    ret}
end;

//004C32B4
procedure TFichierCdn.sub_004C32B4(a:integer; b:integer; c:integer;d:integer;e:string);
begin
{*
 004C32B4    push        ebp
 004C32B5    mov         ebp,esp
 004C32B7    add         esp,0FFFFFE8C
 004C32BD    push        ebx
 004C32BE    push        esi
 004C32BF    push        edi
 004C32C0    xor         ebx,ebx
 004C32C2    mov         dword ptr [ebp-174],ebx
 004C32C8    mov         dword ptr [ebp-170],ebx
 004C32CE    mov         dword ptr [ebp-16C],ebx
 004C32D4    mov         dword ptr [ebp-168],ebx
 004C32DA    mov         dword ptr [ebp-160],ebx
 004C32E0    mov         dword ptr [ebp-5C],ebx
 004C32E3    mov         byte ptr [ebp-6],cl
 004C32E6    mov         byte ptr [ebp-5],dl
 004C32E9    mov         dword ptr [ebp-4],eax
 004C32EC    xor         eax,eax
 004C32EE    push        ebp
 004C32EF    push        4C3660
 004C32F4    push        dword ptr fs:[eax]
 004C32F7    mov         dword ptr fs:[eax],esp
 004C32FA    mov         al,byte ptr [ebp+0C]
 004C32FD    sub         al,1
>004C32FF    jb          004C330C
>004C3301    je          004C3429
>004C3307    jmp         004C362F
 004C330C    xor         eax,eax
 004C330E    mov         dword ptr [ebp-10],eax
 004C3311    mov         dword ptr [ebp-0C],eax
 004C3314    mov         word ptr [ebp-8],ax
 004C3318    mov         byte ptr [ebp-52],0
 004C331C    mov         eax,dword ptr [ebp-4]
 004C331F    call        004BE9E0
 004C3324    test        al,al
>004C3326    jbe         004C33B3
 004C332C    mov         byte ptr [ebp-54],al
 004C332F    mov         byte ptr [ebp-51],1
 004C3333    xor         eax,eax
 004C3335    push        ebp
 004C3336    push        4C338E
 004C333B    push        dword ptr fs:[eax]
 004C333E    mov         dword ptr fs:[eax],esp
 004C3341    mov         al,byte ptr [ebp-6]
 004C3344    push        eax
 004C3345    lea         eax,[ebp-15C]
 004C334B    push        eax
 004C334C    mov         cl,byte ptr [ebp-5]
 004C334F    mov         dl,byte ptr [ebp-51]
 004C3352    mov         eax,dword ptr [ebp-4]
 004C3355    call        004C2D10
 004C335A    lea         edx,[ebp-15C]
 004C3360    lea         eax,[ebp-5C]
 004C3363    call        @LStrFromString
 004C3368    mov         eax,dword ptr [ebp-5C]
 004C336B    call        GetStrMoyArrendit
 004C3370    fld         tbyte ptr [ebp-10]
 004C3373    faddp       st(1),st
 004C3375    fstp        tbyte ptr [ebp-10]
 004C3378    wait
 004C3379    add         byte ptr [ebp-52],1
>004C337D    jae         004C3384
 004C337F    call        @IntOver
 004C3384    xor         eax,eax
 004C3386    pop         edx
 004C3387    pop         ecx
 004C3388    pop         ecx
 004C3389    mov         dword ptr fs:[eax],edx
>004C338C    jmp         004C33AB
>004C338E    jmp         @HandleOnException
 004C3393    dd          1
 004C3397    dd          00409B50;EConvertError
 004C339B    dd          004C339F
 004C339F    call        @DoneExcept
>004C33A4    jmp         004C33AB
 004C33A6    call        @DoneExcept
 004C33AB    inc         byte ptr [ebp-51]
 004C33AE    dec         byte ptr [ebp-54]
>004C33B1    jne         004C3333
 004C33B3    cmp         byte ptr [ebp-52],0
>004C33B7    je          004C341E
 004C33B9    mov         eax,dword ptr [ebp+8]
 004C33BC    push        eax
 004C33BD    xor         eax,eax
 004C33BF    mov         al,byte ptr [ebp-52]
 004C33C2    mov         dword ptr [ebp-164],eax
 004C33C8    fild        dword ptr [ebp-164]
 004C33CE    fld         tbyte ptr [ebp-10]
 004C33D1    fdivrp      st(1),st
 004C33D3    add         esp,0FFFFFFF4
 004C33D6    fstp        tbyte ptr [esp]
 004C33D9    wait
 004C33DA    lea         eax,[ebp-160]
 004C33E0    push        eax
 004C33E1    mov         ecx,2
 004C33E6    mov         edx,12
 004C33EB    mov         al,2
 004C33ED    call        FloatToStrF
 004C33F2    mov         edx,dword ptr [ebp-160]
 004C33F8    lea         eax,[ebp-15C]
 004C33FE    mov         ecx,0FF
 004C3403    call        @LStrToString
 004C3408    lea         edx,[ebp-15C]
 004C340E    mov         cl,byte ptr [ebp+10]
 004C3411    mov         eax,dword ptr [ebp-4]
 004C3414    call        004C2410
>004C3419    jmp         004C362F
 004C341E    mov         eax,dword ptr [ebp+8]
 004C3421    mov         byte ptr [eax],0
>004C3424    jmp         004C362F
 004C3429    xor         eax,eax
 004C342B    mov         dword ptr [ebp-10],eax
 004C342E    mov         dword ptr [ebp-0C],eax
 004C3431    mov         word ptr [ebp-8],ax
 004C3435    xor         eax,eax
 004C3437    mov         dword ptr [ebp-50],eax
 004C343A    mov         dword ptr [ebp-4C],eax
 004C343D    mov         word ptr [ebp-48],ax
 004C3441    mov         eax,dword ptr [ebp-4]
 004C3444    call        004BE9E0
 004C3449    test        al,al
>004C344B    jbe         004C35B4
 004C3451    mov         byte ptr [ebp-54],al
 004C3454    mov         byte ptr [ebp-51],1
 004C3458    mov         dl,byte ptr [ebp-51]
 004C345B    mov         eax,dword ptr [ebp-4]
 004C345E    call        004BEAD0
 004C3463    test        al,al
>004C3465    jbe         004C35A8
 004C346B    mov         byte ptr [ebp-55],al
 004C346E    mov         byte ptr [ebp-53],1
 004C3472    lea         eax,[ebp-15C]
 004C3478    push        eax
 004C3479    mov         cl,byte ptr [ebp-53]
 004C347C    mov         dl,byte ptr [ebp-51]
 004C347F    mov         eax,dword ptr [ebp-4]
 004C3482    call        004BEDCC
 004C3487    lea         eax,[ebp-15C]
 004C348D    mov         edx,4C3670;'oui'
 004C3492    xor         ecx,ecx
 004C3494    mov         cl,byte ptr [eax]
 004C3496    inc         ecx
 004C3497    call        @AStrCmp
>004C349C    jne         004C359C
 004C34A2    xor         eax,eax
 004C34A4    push        ebp
 004C34A5    push        4C357F
 004C34AA    push        dword ptr fs:[eax]
 004C34AD    mov         dword ptr fs:[eax],esp
 004C34B0    mov         al,byte ptr [ebp-5]
 004C34B3    push        eax
 004C34B4    lea         eax,[ebp-15C]
 004C34BA    push        eax
 004C34BB    mov         cl,byte ptr [ebp-53]
 004C34BE    mov         dl,byte ptr [ebp-51]
 004C34C1    mov         eax,dword ptr [ebp-4]
 004C34C4    call        004BEF5C
 004C34C9    lea         edx,[ebp-15C]
 004C34CF    lea         eax,[ebp-168]
 004C34D5    call        @LStrFromString
 004C34DA    mov         eax,dword ptr [ebp-168]
 004C34E0    call        GetStrMoyArrendit
 004C34E5    fstp        tbyte ptr [ebp-20]
 004C34E8    wait
 004C34E9    lea         eax,[ebp-15C]
 004C34EF    push        eax
 004C34F0    mov         cl,byte ptr [ebp-53]
 004C34F3    mov         dl,byte ptr [ebp-51]
 004C34F6    mov         eax,dword ptr [ebp-4]
 004C34F9    call        004BED2C
 004C34FE    lea         edx,[ebp-15C]
 004C3504    lea         eax,[ebp-16C]
 004C350A    call        @LStrFromString
 004C350F    mov         eax,dword ptr [ebp-16C]
 004C3515    call        GetStrMoyArrendit
 004C351A    fstp        tbyte ptr [ebp-40]
 004C351D    wait
 004C351E    lea         eax,[ebp-15C]
 004C3524    push        eax
 004C3525    mov         cl,byte ptr [ebp-53]
 004C3528    mov         dl,byte ptr [ebp-51]
 004C352B    mov         eax,dword ptr [ebp-4]
 004C352E    call        004BED7C
 004C3533    lea         edx,[ebp-15C]
 004C3539    lea         eax,[ebp-170]
 004C353F    call        @LStrFromString
 004C3544    mov         eax,dword ptr [ebp-170]
 004C354A    call        GetStrMoyArrendit
 004C354F    fstp        tbyte ptr [ebp-30]
 004C3552    wait
 004C3553    fld         tbyte ptr [ebp-20]
 004C3556    fld         tbyte ptr [ebp-30]
 004C3559    fmulp       st(1),st
 004C355B    fld         tbyte ptr [ebp-10]
 004C355E    faddp       st(1),st
 004C3560    fstp        tbyte ptr [ebp-10]
 004C3563    wait
 004C3564    fld         tbyte ptr [ebp-40]
 004C3567    fld         tbyte ptr [ebp-30]
 004C356A    fmulp       st(1),st
 004C356C    fld         tbyte ptr [ebp-50]
 004C356F    faddp       st(1),st
 004C3571    fstp        tbyte ptr [ebp-50]
 004C3574    wait
 004C3575    xor         eax,eax
 004C3577    pop         edx
 004C3578    pop         ecx
 004C3579    pop         ecx
 004C357A    mov         dword ptr fs:[eax],edx
>004C357D    jmp         004C359C
>004C357F    jmp         @HandleOnException
 004C3584    dd          1
 004C3588    dd          004094F8;Exception
 004C358C    dd          004C3590
 004C3590    call        @DoneExcept
>004C3595    jmp         004C359C
 004C3597    call        @DoneExcept
 004C359C    inc         byte ptr [ebp-53]
 004C359F    dec         byte ptr [ebp-55]
>004C35A2    jne         004C3472
 004C35A8    inc         byte ptr [ebp-51]
 004C35AB    dec         byte ptr [ebp-54]
>004C35AE    jne         004C3458
 004C35B4    fld         tbyte ptr [ebp-50]
 004C35B7    fcomp       dword ptr ds:[4C3674];0:Single
 004C35BD    fnstsw      al
 004C35BF    sahf
>004C35C0    je          004C3629
 004C35C2    mov         eax,dword ptr [ebp+8]
 004C35C5    push        eax
 004C35C6    call        004B9E48
 004C35CB    mov         dword ptr [ebp-164],eax
 004C35D1    fild        dword ptr [ebp-164]
 004C35D7    fld         tbyte ptr [ebp-10]
 004C35DA    fld         tbyte ptr [ebp-50]
 004C35DD    fdivp       st(1),st
 004C35DF    fmulp       st(1),st
 004C35E1    add         esp,0FFFFFFF4
 004C35E4    fstp        tbyte ptr [esp]
 004C35E7    wait
 004C35E8    lea         eax,[ebp-174]
 004C35EE    push        eax
 004C35EF    mov         ecx,2
 004C35F4    mov         edx,12
 004C35F9    mov         al,2
 004C35FB    call        FloatToStrF
 004C3600    mov         edx,dword ptr [ebp-174]
 004C3606    lea         eax,[ebp-15C]
 004C360C    mov         ecx,0FF
 004C3611    call        @LStrToString
 004C3616    lea         edx,[ebp-15C]
 004C361C    mov         cl,byte ptr [ebp+10]
 004C361F    mov         eax,dword ptr [ebp-4]
 004C3622    call        004C2410
>004C3627    jmp         004C362F
 004C3629    mov         eax,dword ptr [ebp+8]
 004C362C    mov         byte ptr [eax],0
 004C362F    xor         eax,eax
 004C3631    pop         edx
 004C3632    pop         ecx
 004C3633    pop         ecx
 004C3634    mov         dword ptr fs:[eax],edx
 004C3637    push        4C3667
 004C363C    lea         eax,[ebp-174]
 004C3642    mov         edx,4
 004C3647    call        @LStrArrayClr
 004C364C    lea         eax,[ebp-160]
 004C3652    call        @LStrClr
 004C3657    lea         eax,[ebp-5C]
 004C365A    call        @LStrClr
 004C365F    ret
>004C3660    jmp         @HandleFinally
>004C3665    jmp         004C363C
 004C3667    pop         edi
 004C3668    pop         esi
 004C3669    pop         ebx
 004C366A    mov         esp,ebp
 004C366C    pop         ebp
 004C366D    ret         0C}

end;

//004C3678
procedure TFichierCdn.sub_004C3678(index1:integer; index2:integer; str:string);
begin
{ 004C3678    push        ebp
 004C3679    mov         ebp,esp
 004C367B    add         esp,0FFFFFDF4
 004C3681    push        ebx
 004C3682    push        esi
 004C3683    push        edi
 004C3684    xor         ebx,ebx
 004C3686    mov         dword ptr [ebp-20C],ebx
 004C368C    mov         esi,dword ptr [ebp+8]
 004C368F    lea         edi,[ebp-108]
 004C3695    push        ecx
 004C3696    xor         ecx,ecx
 004C3698    mov         cl,byte ptr [esi]
 004C369A    inc         ecx
 004C369B    rep movs    byte ptr [edi],byte ptr [esi]
 004C369D    pop         ecx
 004C369E    mov         byte ptr [ebp-1],cl
 004C36A1    mov         ebx,edx
 004C36A3    mov         esi,eax
 004C36A5    xor         eax,eax
 004C36A7    push        ebp
 004C36A8    push        4C3785
 004C36AD    push        dword ptr fs:[eax]
 004C36B0    mov         dword ptr fs:[eax],esp
 004C36B3    mov         eax,esi
 004C36B5    call        TFichierCdn.EleveCount
 004C36BA    and         eax,0FF
 004C36BF    xor         edx,edx
 004C36C1    mov         dl,bl
 004C36C3    sub         edx,1
>004C36C6    jno         004C36CD
 004C36C8    call        @IntOver
 004C36CD    imul        edx
>004C36CF    jno         004C36D6
 004C36D1    call        @IntOver
 004C36D6    xor         edx,edx
 004C36D8    mov         dl,byte ptr [ebp-1]
 004C36DB    sub         edx,1
>004C36DE    jno         004C36E5
 004C36E0    call        @IntOver
 004C36E5    add         eax,edx
>004C36E7    jno         004C36EE
 004C36E9    call        @IntOver
 004C36EE    mov         dword ptr [ebp-8],eax
 004C36F1    lea         eax,[ebp-208]
 004C36F7    push        eax
 004C36F8    mov         cl,byte ptr [ebp-1]
 004C36FB    mov         edx,ebx
 004C36FD    mov         eax,esi
 004C36FF    call        004C2B38
 004C3704    lea         eax,[ebp-208]
 004C370A    lea         edx,[ebp-108]
 004C3710    xor         ecx,ecx
 004C3712    mov         cl,byte ptr [eax]
 004C3714    inc         ecx
 004C3715    call        @AStrCmp
>004C371A    je          004C376C
 004C371C    lea         eax,[ebp-20C]
 004C3722    lea         edx,[ebp-108]
 004C3728    call        @LStrFromString
 004C372D    mov         ecx,dword ptr [ebp-20C]
 004C3733    mov         edx,dword ptr [ebp-8]
 004C3736    mov         eax,dword ptr [esi+928]
 004C373C    mov         edi,dword ptr [eax]
 004C373E    call        dword ptr [edi+54]
 004C3741    mov         edx,dword ptr [ebp-8]
 004C3744    add         edx,1
>004C3747    jno         004C374E
 004C3749    call        @IntOver
 004C374E    mov         eax,dword ptr [esi+928]
 004C3754    mov         ecx,dword ptr [eax]
 004C3756    call        dword ptr [ecx+44]
 004C3759    mov         byte ptr [esi+8],1
 004C375D    mov         cl,1
 004C375F    mov         edx,ebx
 004C3761    mov         eax,dword ptr [esi+918]
 004C3767    call        004B6E84
 004C376C    xor         eax,eax
 004C376E    pop         edx
 004C376F    pop         ecx
 004C3770    pop         ecx
 004C3771    mov         dword ptr fs:[eax],edx
 004C3774    push        4C378C
 004C3779    lea         eax,[ebp-20C]
 004C377F    call        @LStrClr
 004C3784    ret
>004C3785    jmp         @HandleFinally
>004C378A    jmp         004C3779
 004C378C    pop         edi
 004C378D    pop         esi
 004C378E    pop         ebx
 004C378F    mov         esp,ebp
 004C3791    pop         ebp
 004C3792    ret         4}
end;

//004C3798
procedure TFichierCdn.sub_004C3798(b:dword; c:dword; d:string; e:dword);
var
  buf:string;
  K:integer;
begin//0
  //004C3798
    GetAppreciations(b, c, e, buf);
    if (buf <> d) then
    begin//2
      //004C3806
      K := BulletinsCount * (c - 1) + (e - 1) + (b - 1) * EleveCount * BulletinsCount;
      FAppreciations.insert(K,buf);
      FAppreciations.delete(K + 1);
      FModified := true;
      SPeriodes.sub_004B6E84(b, True);
    end;//2
end;//0


//004C3908
function TFichierCdn.GetEnseignant() : string;
begin//0
  //004C3908
  result := Enseignant;
end;//0


//004C3920
procedure TFichierCdn.SetEnseignant(a:String);
begin//0
  //004C3920
  Enseignant := a;
  FModified := true;
end;//0


//004C3954
function TFichierCdn.IsModified:boolean;
begin
   result := FModified;
end;

//004C3958
procedure TFichierCdn.__GetStrMin(Periode:dword; var s:string; ACol:dword);
var
 buf :string;
 lvar_2C,lvar_24,I,ARow,counter :integer;
 Min,Res:real;
begin//0
  //004C3958
    //004C398C
    if (GetAttributs1(Periode, ACol, 1) ) then
    begin//2
      //004C39A4
      //lvar_28 := 0;
      GetStrNoteSur(Periode, ACol, buf);
      Min := StrToFloat(buf);
      if (EleveCount  > 0) then
      begin//3
        //004C39ED
        I := EleveCount;
        ARow := 1;
		repeat
        try
          //004C3A05
          _GetStrNote(Periode, ACol, ARow, buf);
          Res := StrToFloat(buf);
          if (Res < Min) then
          begin//5
            //004C3A57
            Min := Res;
            //lvar_C := lvar_1C;
            //lvar_8 := lvar_18;
          end;//5
          Counter := Counter + 1;
        except//4
          on E:EConvertError do
          begin//5
            //004C3A91
          end;//5
        end;//4
        ARow := ARow + 1;
        I := I - 1;
         until (I=0);//004C3AA9
        
      end;//3
      if (Counter > 0) then
      begin//3
        //004C3AAF
        //EAX := lvar_8;
        s := FloatToStr(Min);
      end//3
      else
      begin//3
        //004C3ADA
        s := '';
      end;//3
      SetAttributs0(Periode, ACol, 8,s);
      SetAttributs1(Periode, ACol,1,false);
    end//2
	else
    GetAttributs0(Periode, ACol, 8, s);
    //004C3B29
end;//0

//004C3B54
procedure TFichierCdn.__GetStrMax(Periode:dword; var s:string; ACol:dword);
var
 I,lvar_24,lvar_28:integer;
 Max,Res:real;
 buf:string;
begin//0
  //004C3B54
    //004C3B82
   
    if (GetAttributs1(Periode, ACol, 2)) then
    begin//2
      //004C3B9A
      {lvar_28 := 0;
      lvar_10 := 0;
      lvar_C := 0;
      lvar_8 := 0;}
	  Max := 0;
      if (EleveCount > 0) then
      begin//3
        //004C3BC0
        I := EleveCount;
        lvar_24 := 1;
		repeat
        try
          //004C3BD8
          _GetStrNote(Periode, ACol, lvar_24, buf);
          Res := StrToFloat(buf);
          if (Res > Max) then
          begin//5
            //004C3C24
            Max := Res;
           { lvar_C := lvar_1C;
            lvar_8 := lvar_18;}
          end;//5
          lvar_28 := lvar_28 + 1;
        except//4
          on E:EConvertError do
          begin//5
            //004C3C5E
          end;//5
        end;//4
        lvar_24 := lvar_24 + 1;
        I := I - 1;
        until(I = 0);//004C3C76
        
      end;//3
      if (lvar_28 > 0) then
      begin//3
        //004C3C7C
        s := FloatToStr(Max);
      end//3
      else
      begin//3
        //004C3CA7
        s := '';
      end;//3
      SetAttributs0(Periode, ACol, 9, s);
      SetAttributs1(Periode, ACol,2,false);
    end//2
	else
    GetAttributs0(Periode, ACol, 9,s);
    //004C3CF6
end;//0

//004C3D1C
procedure TFichierCdn.sub_004C3D1C(Periode:dword; ACol:dword; var c:string);
var
  lvar_10,I:integer;
  buf:string;
begin//0
  //004C3D1C..004C3D4A
    lvar_10 := 0;
    if (GetAttributs1(Periode, ACol, 5)) then
    begin///004C3D62
	  for I:=1 to EleveCount-1 do 
      begin//004C3D7C
        try//004C3D94
          _GetStrNote(Periode, ACol, I, buf);
          lvar_10 := lvar_10 + 1;
        except//4
          on E:EConvertError do
          begin//004C3DF7
          end;//5
        end;//4
      end;//3
	  //004C3E0F
      c := FloatToStr(lvar_10);
      //EAX := c;
      //SetAttributs0(Periode, ACol, 12);
      SetAttributs1(Periode, ACol, 5, false);
      
    end
	else 
    GetAttributs0(Periode, ACol, 12, c);
end;//0


//004C3EA4
procedure TFichierCdn.sub_004C3EA4(Periode:dword; ACol:dword; var b:string);
var
 I,J,K,N:integer;
 Moy:real;
 buf:string;
begin//0
  //004C3EA4
    //004C3ED8
    if (GetAttributs1(Periode, ACol, 6)) then
    begin//2
      //004C3EF0
      N := 0;
      K := 0;
      GetStrNoteSur(Periode, ACol, buf);
      Moy := StrToFloat(buf) / 2;
      if (EleveCount  > 0) then
      begin//3
        //004C3F44
        I := EleveCount;
        J := 1;
		repeat
        try
          //004C3F5C

          _GetStrNote(Periode, ACol, J, buf);
          if (StrToFloat(buf) <Moy) then
          begin//5
            //004C3FA7
            K := K + 1;
          end;//5
          N := N + 1;
        except//4
          on E:EConvertError do
          begin//5
            //004C3FD8
          end;//5
        end;//4
        J := J + 1;
        I := I - 1;
		until(I = 0);//004C3FF0
      end;//3
      if (N > 0) then
      begin//3
        //004C3FF6
        b := FloatToStrF(K / N * 100,ffFixed{2}, $12{18}, 2)+ ' %';
      end//3
      else
      begin//3
        //004C4048
        b := '';
      end;//3
      SetAttributs0(Periode, ACol, 13, b);
      SetAttributs1(Periode, ACol,6,false);
    end//2
    else
    GetAttributs0(Periode, ACol, 13, b);

    //004C4097
end;//0

//004C40D4
procedure TFichierCdn.__GetStrMoy(Periode:dword;var b:string; ACol:dword);
var
   lvar_18,I:integer;
   lvar_10 :real;
   buf:string;
begin//0
  //004C40D4
    if (GetAttributs1(Periode, ACol, 4)) then // 4:Moyenne peut Calculer
    begin//2
      //004C411A
      lvar_10 := 0;
      lvar_18 := 0;

		for I:= 1 to EleveCount do //004C4140 
        try//004C4158
          _GetStrNote(Periode, ACol, I, buf);
          lvar_10 := StrToFloat(buf) + lvar_10;
          lvar_18 := lvar_18 + 1;
        except//4
          on E:EConvertError do
          begin//004C41C2
          end;//5
        end;//4
      try
        //004C41E8
        if (lvar_18 > 0) then//004C41EE
          b := FloatToStrF(lvar_10 / lvar_18, ffFixed{2}, 18, 2)
        else//004C422A
          b := '';
      except//3
        on E:EConvertError do
        begin//004C4253
          b := '';
        end;//4
        on E:EMathError do
        begin//004C425B
          b := '';
        end;//4
      end;//3
      //EAX := b;
      //push EAX
      //SetAttributs0(a, c, 11);
      //SetAttributs1(a, c, 4, false);
    end
	else 
    GetAttributs0(Periode, ACol, 11, b);
end;//0

//004C42D4
procedure TFichierCdn.sub_004C42D4(Periode:dword; ACol:dword; var s:string);
var
  I,N,lvar_34:integer;
  lvar_20,lvar_30:real;
  buf:string;
begin//0
  //004C42D4

    //004C4302

    if (GetAttributs1(Periode, ACol, 3)) then
    begin//2
      //004C431A
      lvar_20 := 0;
      {lvar_1C := 0;
      lvar_18 := 0;}
      lvar_30 := 0;
      {lvar_2C := 0;
      lvar_28 := 0;}
      N := 0;

      if (EleveCount  > 0) then
      begin//3
        //004C434C
        I := EleveCount;
        lvar_34 := 1;
		repeat
        try
          //004C4364
          _GetStrNote(Periode, ACol, lvar_34, buf);
          lvar_20 := lvar_20 + StrToFloat(buf);
          lvar_30 := StrToFloat(buf) * StrToFloat(buf) + lvar_30;
          N := N + 1;
        except//4
          on E:EConvertError do
          begin//5
            //004C43EE
          end;//5
          on E:EMathError do
          begin//5
            //004C43F5
          end;//5
        end;//4
        lvar_34 := lvar_34 + 1;
        I := I - 1;
		until(I=0);//004C440D
      end;//3
      try
        //004C441B
        if (N > 0) then
        begin//4
          //004C4421
          s := FloatToStrF(Sqrt(lvar_30 / N - lvar_20 * lvar_20 / (N * N)),{2}ffFixed, $12{18}, 2 );
        end//4
        else
        begin//4
          //004C4473
          s := '';
        end;//4
      except//3
        on E:EConvertError do
        begin//4
          //004C449C
          s := '';
        end;//4
        on E:EMathError do
        begin//4
          //004C44A4
          s := '';
        end;//4
      end;//3
      SetAttributs0(Periode, ACol, 10, s);
      SetAttributs1(Periode, ACol,3,false);
    end//2
	else
    GetAttributs0(Periode, ACol, 10, s);

    //004C44F8

end;//0

//004C451C
procedure TFichierCdn.sub_004C451C(Periode:dword; ACol:dword; var s:string);
var
 I,J,K,N :integer;
 buf:string;
 Val:real;
begin//0
  //004C451C
    //004C4550
    if (GetAttributs1(Periode, ACol, 7) ) then
    begin//2
      //004C4568
      N := 0;
      K:= 0;
      try
        //004C4580
        //push EAX

        __GetStrMoy(Periode, buf, ACol);

        Val := StrToFloat(buf);

        if (EleveCount > 0) then
        begin//4
          //004C45C4
          I := EleveCount ;
          J := 1;
          repeat
		  try
            //004C45DC

            _GetStrNote(Periode, ACol, J, buf);

            if (Val > StrToFloat(buf)) then
            begin//6
              //004C4627
              K := K + 1;
            end;//6
            N := N + 1;
          except//5
            on E:EConvertError do
            begin//6
              //004C4658
            end;//6
          end;//5
          J := J + 1;
          I := I - 1;
		  until(I = 0);//004C4670
        end;//4
        if (N > 0) then
        begin//4
          //004C4676
          s := FloatToStrF(K / N * 100,ffFixed{2}, $12{18}, 2)+ ' %';
        end//4
        else
        begin//4
          //004C46C8
          s := '';
        end;//4
      except//3
        on E:EConvertError do
        begin//4
          //004C46E9
          s := '';
        end;//4
      end;//3
      SetAttributs0(Periode, ACol, 14, s);
      SetAttributs1(Periode, ACol,7,false);
    end//2
	else
    GetAttributs0(Periode, ACol, 14, s);

    //004C473D

end;//0

//004C4778
function TFichierCdn.sub_004C4778(Periode:dword):boolean;
begin//0
  //004C4778
  result := SPeriodes.sub_004B6EA8(Periode);
end;//0


//004C4784
procedure TFichierCdn.sub_004C4784(Periode:dword;b:boolean);
begin//0
  //004C4784
  SPeriodes.sub_004B6E84(Periode, b);
end;//0


//004C4790
function TFichierCdn.sub_004C4790:dword;
var
  I:integer;
begin//0
  //004C4790
  result := 0;
    for I := 1 to GetNbrePeriodes do //004C47A7
      result := result  + GetNbreModules(I);

end;//0


//004C47E8
procedure TFichierCdn.sub_004C47E8(index1:integer; index2:integer; str:string);
begin
{ 004C47E8    push        ebp
 004C47E9    mov         ebp,esp
 004C47EB    add         esp,0FFFFFDFC
 004C47F1    push        ebx
 004C47F2    push        esi
 004C47F3    push        edi
 004C47F4    mov         esi,dword ptr [ebp+8]
 004C47F7    lea         edi,[ebp-103]
 004C47FD    push        ecx
 004C47FE    xor         ecx,ecx
 004C4800    mov         cl,byte ptr [esi]
 004C4802    inc         ecx
 004C4803    rep movs    byte ptr [edi],byte ptr [esi]
 004C4805    pop         ecx
 004C4806    mov         byte ptr [ebp-2],cl
 004C4809    mov         byte ptr [ebp-1],dl
 004C480C    mov         esi,eax
 004C480E    lea         eax,[ebp-204]
 004C4814    push        eax
 004C4815    mov         cl,byte ptr [ebp-2]
 004C4818    mov         dl,byte ptr [ebp-1]
 004C481B    mov         eax,esi
 004C481D    call        004BED7C
 004C4822    lea         eax,[ebp-204]
 004C4828    lea         edx,[ebp-103]
 004C482E    xor         ecx,ecx
 004C4830    mov         cl,byte ptr [eax]
 004C4832    inc         ecx
 004C4833    call        @AStrCmp
>004C4838    je          004C4861
 004C483A    mov         eax,esi
 004C483C    call        TFichierCdn.EleveCount
 004C4841    mov         ebx,eax
 004C4843    test        bl,bl
>004C4845    jbe         004C4861
 004C4847    mov         byte ptr [ebp-3],1
 004C484B    push        1
 004C484D    mov         cl,byte ptr [ebp-3]
 004C4850    mov         dl,byte ptr [ebp-1]
 004C4853    mov         eax,esi
 004C4855    call        004C61E4
 004C485A    inc         byte ptr [ebp-3]
 004C485D    dec         bl
>004C485F    jne         004C484B
 004C4861    mov         eax,esi
 004C4863    call        TFichierCdn.EleveCount
 004C4868    and         eax,0FF
 004C486D    mov         edx,dword ptr ds:[615B2C];^gvar_006178FC
 004C4873    movzx       edx,byte ptr [edx]
 004C4876    add         eax,edx
>004C4878    jno         004C487F
 004C487A    call        @IntOver
 004C487F    cmp         eax,0FF
>004C4884    jbe         004C488B
 004C4886    call        @BoundErr
 004C488B    push        eax
 004C488C    lea         eax,[ebp-103]
 004C4892    push        eax
 004C4893    mov         cl,byte ptr [ebp-2]
 004C4896    mov         dl,byte ptr [ebp-1]
 004C4899    mov         eax,esi
 004C489B    call        004C0C88
 004C48A0    mov         cl,1
 004C48A2    mov         dl,byte ptr [ebp-1]
 004C48A5    mov         eax,dword ptr [esi+918]
 004C48AB    call        004B6E84
 004C48B0    pop         edi
 004C48B1    pop         esi
 004C48B2    pop         ebx
 004C48B3    mov         esp,ebp
 004C48B5    pop         ebp
 004C48B6    ret         4}
end;

//004C48BC
procedure TFichierCdn.sub_004C48BC(index1:integer; index2:integer; str:string);
begin
{ 004C48BC    push        ebp
 004C48BD    mov         ebp,esp
 004C48BF    add         esp,0FFFFFDFC
 004C48C5    push        ebx
 004C48C6    push        esi
 004C48C7    push        edi
 004C48C8    mov         esi,dword ptr [ebp+8]
 004C48CB    lea         edi,[ebp-103]
 004C48D1    push        ecx
 004C48D2    xor         ecx,ecx
 004C48D4    mov         cl,byte ptr [esi]
 004C48D6    inc         ecx
 004C48D7    rep movs    byte ptr [edi],byte ptr [esi]
 004C48D9    pop         ecx
 004C48DA    mov         byte ptr [ebp-2],cl
 004C48DD    mov         byte ptr [ebp-1],dl
 004C48E0    mov         esi,eax
 004C48E2    lea         eax,[ebp-204]
 004C48E8    push        eax
 004C48E9    mov         cl,byte ptr [ebp-2]
 004C48EC    mov         dl,byte ptr [ebp-1]
 004C48EF    mov         eax,esi
 004C48F1    call        004BED2C
 004C48F6    lea         eax,[ebp-204]
 004C48FC    lea         edx,[ebp-103]
 004C4902    xor         ecx,ecx
 004C4904    mov         cl,byte ptr [eax]
 004C4906    inc         ecx
 004C4907    call        @AStrCmp
>004C490C    je          004C4935
 004C490E    mov         eax,esi
 004C4910    call        TFichierCdn.EleveCount
 004C4915    mov         ebx,eax
 004C4917    test        bl,bl
>004C4919    jbe         004C4935
 004C491B    mov         byte ptr [ebp-3],1
 004C491F    push        1
 004C4921    mov         cl,byte ptr [ebp-3]
 004C4924    mov         dl,byte ptr [ebp-1]
 004C4927    mov         eax,esi
 004C4929    call        004C61E4
 004C492E    inc         byte ptr [ebp-3]
 004C4931    dec         bl
>004C4933    jne         004C491F
 004C4935    mov         eax,esi
 004C4937    call        TFichierCdn.EleveCount
 004C493C    and         eax,0FF
 004C4941    mov         edx,dword ptr ds:[615B30];^gvar_006178FB
 004C4947    movzx       edx,byte ptr [edx]
 004C494A    add         eax,edx
>004C494C    jno         004C4953
 004C494E    call        @IntOver
 004C4953    cmp         eax,0FF
>004C4958    jbe         004C495F
 004C495A    call        @BoundErr
 004C495F    push        eax
 004C4960    lea         eax,[ebp-103]
 004C4966    push        eax
 004C4967    mov         cl,byte ptr [ebp-2]
 004C496A    mov         dl,byte ptr [ebp-1]
 004C496D    mov         eax,esi
 004C496F    call        004C0C88
 004C4974    mov         cl,1
 004C4976    mov         dl,byte ptr [ebp-1]
 004C4979    mov         eax,dword ptr [esi+918]
 004C497F    call        004B6E84
 004C4984    pop         edi
 004C4985    pop         esi
 004C4986    pop         ebx
 004C4987    mov         esp,ebp
 004C4989    pop         ebp
 004C498A    ret         4}
end;

//004C4990
procedure TFichierCdn.sub_004C4990(index1:integer; index2:integer);
begin
{ 004C4990    push        ebp
 004C4991    mov         ebp,esp
 004C4993    add         esp,0FFFFFFEC
 004C4996    push        ebx
 004C4997    push        esi
 004C4998    push        edi
 004C4999    xor         ebx,ebx
 004C499B    mov         dword ptr [ebp-14],ebx
 004C499E    mov         byte ptr [ebp-1],cl
 004C49A1    mov         ebx,edx
 004C49A3    mov         esi,eax
 004C49A5    xor         eax,eax
 004C49A7    push        ebp
 004C49A8    push        4C4B06
 004C49AD    push        dword ptr fs:[eax]
 004C49B0    mov         dword ptr fs:[eax],esp
 004C49B3    mov         dl,1
 004C49B5    mov         eax,[004120B8];TStringList
 004C49BA    call        TObject.Create;TStringList.Create
 004C49BF    mov         dword ptr [ebp-8],eax
 004C49C2    xor         ecx,ecx
 004C49C4    mov         cl,byte ptr [ebp-1]
 004C49C7    add         ecx,1
>004C49CA    jno         004C49D1
 004C49CC    call        @IntOver
 004C49D1    cmp         ecx,0FF
>004C49D7    jbe         004C49DE
 004C49D9    call        @BoundErr
 004C49DE    mov         edx,ebx
 004C49E0    mov         eax,esi
 004C49E2    call        004BEB40
 004C49E7    mov         edx,eax
 004C49E9    mov         eax,dword ptr [ebp-8]
 004C49EC    mov         ecx,dword ptr [eax]
 004C49EE    call        dword ptr [ecx+3C];TStrings.AddStrings
 004C49F1    xor         eax,eax
 004C49F3    mov         dword ptr [ebp-0C],eax
 004C49F6    xor         eax,eax
 004C49F8    mov         al,bl
 004C49FA    sub         eax,1
>004C49FD    jno         004C4A04
 004C49FF    call        @IntOver
 004C4A04    test        eax,eax
>004C4A06    jle         004C4A42
 004C4A08    mov         dword ptr [ebp-10],eax
 004C4A0B    mov         ebx,1
 004C4A10    lea         ecx,[ebp-14]
 004C4A13    mov         edx,ebx
 004C4A15    sub         edx,1
>004C4A18    jno         004C4A1F
 004C4A1A    call        @IntOver
 004C4A1F    mov         eax,dword ptr [esi+920]
 004C4A25    mov         edi,dword ptr [eax]
 004C4A27    call        dword ptr [edi+0C]
 004C4A2A    mov         eax,dword ptr [ebp-14]
 004C4A2D    call        StrToInt
 004C4A32    add         dword ptr [ebp-0C],eax
>004C4A35    jno         004C4A3C
 004C4A37    call        @IntOver
 004C4A3C    inc         ebx
 004C4A3D    dec         dword ptr [ebp-10]
>004C4A40    jne         004C4A10
 004C4A42    mov         edx,dword ptr [ebp-0C]
 004C4A45    sub         edx,1
>004C4A48    jno         004C4A4F
 004C4A4A    call        @IntOver
 004C4A4F    movzx       edi,byte ptr [ebp-1]
 004C4A53    add         edx,edi
>004C4A55    jno         004C4A5C
 004C4A57    call        @IntOver
 004C4A5C    mov         ebx,dword ptr [esi+924]
 004C4A62    mov         eax,ebx
 004C4A64    call        TStringGrid.GetCols
 004C4A69    mov         ecx,eax
 004C4A6B    mov         edx,edi
 004C4A6D    add         edx,dword ptr [ebp-0C]
>004C4A70    jno         004C4A77
 004C4A72    call        @IntOver
 004C4A77    mov         eax,ebx
 004C4A79    call        TStringGrid.SetCols
 004C4A7E    mov         edx,dword ptr [ebp-0C]
 004C4A81    sub         edx,1
>004C4A84    jno         004C4A8B
 004C4A86    call        @IntOver
 004C4A8B    xor         eax,eax
 004C4A8D    mov         al,byte ptr [ebp-1]
 004C4A90    add         edx,eax
>004C4A92    jno         004C4A99
 004C4A94    call        @IntOver
 004C4A99    mov         ecx,dword ptr [ebp-8]
 004C4A9C    mov         eax,dword ptr [esi+924]
 004C4AA2    call        TStringGrid.SetCols
 004C4AA7    mov         dl,1
 004C4AA9    mov         eax,dword ptr [ebp-8]
 004C4AAC    mov         ecx,dword ptr [eax]
 004C4AAE    call        dword ptr [ecx-4];TStringList.Destroy
 004C4AB1    mov         byte ptr [esi+8],1
 004C4AB5    mov         eax,dword ptr [esi+940]
 004C4ABB    mov         edx,dword ptr [eax]
 004C4ABD    call        dword ptr [edx+40]
 004C4AC0    mov         eax,esi
 004C4AC2    call        004C4790
 004C4AC7    and         eax,0FF
 004C4ACC    test        eax,eax
>004C4ACE    jle         004C4AF0
 004C4AD0    mov         dword ptr [ebp-10],eax
 004C4AD3    mov         ebx,0E
 004C4AD8    mov         edx,4C4B1C;'1'
 004C4ADD    mov         eax,dword ptr [esi+940]
 004C4AE3    mov         ecx,dword ptr [eax]
 004C4AE5    call        dword ptr [ecx+34]
 004C4AE8    dec         ebx
>004C4AE9    jne         004C4AD8
 004C4AEB    dec         dword ptr [ebp-10]
>004C4AEE    jne         004C4AD3
 004C4AF0    xor         eax,eax
 004C4AF2    pop         edx
 004C4AF3    pop         ecx
 004C4AF4    pop         ecx
 004C4AF5    mov         dword ptr fs:[eax],edx
 004C4AF8    push        4C4B0D
 004C4AFD    lea         eax,[ebp-14]
 004C4B00    call        @LStrClr
 004C4B05    ret
>004C4B06    jmp         @HandleFinally
>004C4B0B    jmp         004C4AFD
 004C4B0D    pop         edi
 004C4B0E    pop         esi
 004C4B0F    pop         ebx
 004C4B10    mov         esp,ebp
 004C4B12    pop         ebp
 004C4B13    ret}
end;

//004C4B20
procedure TFichierCdn.sub_004C4B20(index1:integer; index2:integer);
begin
{ 004C4B20    push        ebp
 004C4B21    mov         ebp,esp
 004C4B23    add         esp,0FFFFFFEC
 004C4B26    push        ebx
 004C4B27    push        esi
 004C4B28    push        edi
 004C4B29    xor         ebx,ebx
 004C4B2B    mov         dword ptr [ebp-14],ebx
 004C4B2E    mov         byte ptr [ebp-1],cl
 004C4B31    mov         ebx,edx
 004C4B33    mov         esi,eax
 004C4B35    xor         eax,eax
 004C4B37    push        ebp
 004C4B38    push        4C4CA0
 004C4B3D    push        dword ptr fs:[eax]
 004C4B40    mov         dword ptr fs:[eax],esp
 004C4B43    mov         dl,1
 004C4B45    mov         eax,[004120B8];TStringList
 004C4B4A    call        TObject.Create;TStringList.Create
 004C4B4F    mov         dword ptr [ebp-8],eax
 004C4B52    xor         ecx,ecx
 004C4B54    mov         cl,byte ptr [ebp-1]
 004C4B57    sub         ecx,1
>004C4B5A    jno         004C4B61
 004C4B5C    call        @IntOver
 004C4B61    cmp         ecx,0FF
>004C4B67    jbe         004C4B6E
 004C4B69    call        @BoundErr
 004C4B6E    mov         edx,ebx
 004C4B70    mov         eax,esi
 004C4B72    call        004BEB40
 004C4B77    mov         edx,eax
 004C4B79    mov         eax,dword ptr [ebp-8]
 004C4B7C    mov         ecx,dword ptr [eax]
 004C4B7E    call        dword ptr [ecx+3C];TStrings.AddStrings
 004C4B81    xor         eax,eax
 004C4B83    mov         dword ptr [ebp-0C],eax
 004C4B86    xor         eax,eax
 004C4B88    mov         al,bl
 004C4B8A    sub         eax,1
>004C4B8D    jno         004C4B94
 004C4B8F    call        @IntOver
 004C4B94    test        eax,eax
>004C4B96    jle         004C4BD2
 004C4B98    mov         dword ptr [ebp-10],eax
 004C4B9B    mov         ebx,1
 004C4BA0    lea         ecx,[ebp-14]
 004C4BA3    mov         edx,ebx
 004C4BA5    sub         edx,1
>004C4BA8    jno         004C4BAF
 004C4BAA    call        @IntOver
 004C4BAF    mov         eax,dword ptr [esi+920]
 004C4BB5    mov         edi,dword ptr [eax]
 004C4BB7    call        dword ptr [edi+0C]
 004C4BBA    mov         eax,dword ptr [ebp-14]
 004C4BBD    call        StrToInt
 004C4BC2    add         dword ptr [ebp-0C],eax
>004C4BC5    jno         004C4BCC
 004C4BC7    call        @IntOver
 004C4BCC    inc         ebx
 004C4BCD    dec         dword ptr [ebp-10]
>004C4BD0    jne         004C4BA0
 004C4BD2    mov         edx,dword ptr [ebp-0C]
 004C4BD5    sub         edx,1
>004C4BD8    jno         004C4BDF
 004C4BDA    call        @IntOver
 004C4BDF    movzx       edi,byte ptr [ebp-1]
 004C4BE3    add         edx,edi
>004C4BE5    jno         004C4BEC
 004C4BE7    call        @IntOver
 004C4BEC    mov         ebx,dword ptr [esi+924]
 004C4BF2    mov         eax,ebx
 004C4BF4    call        TStringGrid.GetCols
 004C4BF9    mov         ecx,eax
 004C4BFB    mov         edx,dword ptr [ebp-0C]
 004C4BFE    sub         edx,2
>004C4C01    jno         004C4C08
 004C4C03    call        @IntOver
 004C4C08    add         edx,edi
>004C4C0A    jno         004C4C11
 004C4C0C    call        @IntOver
 004C4C11    mov         eax,ebx
 004C4C13    call        TStringGrid.SetCols
 004C4C18    mov         edx,dword ptr [ebp-0C]
 004C4C1B    sub         edx,1
>004C4C1E    jno         004C4C25
 004C4C20    call        @IntOver
 004C4C25    xor         eax,eax
 004C4C27    mov         al,byte ptr [ebp-1]
 004C4C2A    add         edx,eax
>004C4C2C    jno         004C4C33
 004C4C2E    call        @IntOver
 004C4C33    mov         ecx,dword ptr [ebp-8]
 004C4C36    mov         eax,dword ptr [esi+924]
 004C4C3C    call        TStringGrid.SetCols
 004C4C41    mov         dl,1
 004C4C43    mov         eax,dword ptr [ebp-8]
 004C4C46    mov         ecx,dword ptr [eax]
 004C4C48    call        dword ptr [ecx-4];TStringList.Destroy
 004C4C4B    mov         byte ptr [esi+8],1
 004C4C4F    mov         eax,dword ptr [esi+940]
 004C4C55    mov         edx,dword ptr [eax]
 004C4C57    call        dword ptr [edx+40]
 004C4C5A    mov         eax,esi
 004C4C5C    call        004C4790
 004C4C61    and         eax,0FF
 004C4C66    test        eax,eax
>004C4C68    jle         004C4C8A
 004C4C6A    mov         dword ptr [ebp-10],eax
 004C4C6D    mov         ebx,0E
 004C4C72    mov         edx,4C4CB8;'1'
 004C4C77    mov         eax,dword ptr [esi+940]
 004C4C7D    mov         ecx,dword ptr [eax]
 004C4C7F    call        dword ptr [ecx+34]
 004C4C82    dec         ebx
>004C4C83    jne         004C4C72
 004C4C85    dec         dword ptr [ebp-10]
>004C4C88    jne         004C4C6D
 004C4C8A    xor         eax,eax
 004C4C8C    pop         edx
 004C4C8D    pop         ecx
 004C4C8E    pop         ecx
 004C4C8F    mov         dword ptr fs:[eax],edx
 004C4C92    push        4C4CA7
 004C4C97    lea         eax,[ebp-14]
 004C4C9A    call        @LStrClr
 004C4C9F    ret
>004C4CA0    jmp         @HandleFinally
>004C4CA5    jmp         004C4C97
 004C4CA7    pop         edi
 004C4CA8    pop         esi
 004C4CA9    pop         ebx
 004C4CAA    mov         esp,ebp
 004C4CAC    pop         ebp
 004C4CAD    ret}
end;

//004C4CBC
procedure TFichierCdn.sub_004C4CBC(a:TStringlist);
begin//0
  //004C4CBC
  SPeriodes.SetPeriodes(a);
end;//0


//004C4CC8
procedure TFichierCdn.SetTypePeriode__(a:string);
begin//0
    SPeriodes.SetTypePeriode__(a);
end;//0

//004C4D44
function TFichierCdn.sub_004C4D44:dword;
begin//0
  //004C4D44
  result := SArrondirMoyennes;
end;//0


//004C5078
function TFichierCdn.sub_004C5078(a:integer; b:integer; c:integer;d:integer;e:integer):Tstrings;
begin
{ 004C5078    push        ebp
 004C5079    mov         ebp,esp
 004C507B    add         esp,0FFFFFEA8
 004C5081    push        ebx
 004C5082    push        esi
 004C5083    push        edi
 004C5084    xor         ebx,ebx
 004C5086    mov         dword ptr [ebp-158],ebx
 004C508C    mov         dword ptr [ebp-150],ebx
 004C5092    mov         dword ptr [ebp-154],ebx
 004C5098    mov         dword ptr [ebp-148],ebx
 004C509E    mov         dword ptr [ebp-14C],ebx
 004C50A4    mov         dword ptr [ebp-24],ebx
 004C50A7    mov         byte ptr [ebp-9],cl
 004C50AA    mov         dword ptr [ebp-8],edx
 004C50AD    mov         dword ptr [ebp-4],eax
 004C50B0    xor         eax,eax
 004C50B2    push        ebp
 004C50B3    push        4C53A0
 004C50B8    push        dword ptr fs:[eax]
 004C50BB    mov         dword ptr fs:[eax],esp
 004C50BE    xor         ecx,ecx
 004C50C0    mov         dl,1
 004C50C2    mov         eax,[004B8694];TQSort
 004C50C7    call        TComponent.Create;TQSort.Create
 004C50CC    mov         dword ptr [ebp-1C],eax
 004C50CF    mov         eax,dword ptr [ebp-1C]
 004C50D2    mov         edx,dword ptr [ebp-4]
 004C50D5    mov         dword ptr [eax+2C],edx;TQSort.?f2C:dword
 004C50D8    mov         dword ptr [eax+28],4C4D4C;TQSort.Compare:TCompareEvent
 004C50DF    mov         eax,dword ptr [ebp-1C]
 004C50E2    mov         edx,dword ptr [ebp-4]
 004C50E5    mov         dword ptr [eax+34],edx;TQSort.?f34:dword
 004C50E8    mov         dword ptr [eax+30],4C4FA0;TQSort.Swap:TSwapEvent
 004C50EF    mov         dl,1
 004C50F1    mov         eax,[004120B8];TStringList
 004C50F6    call        TObject.Create;TStringList.Create
 004C50FB    mov         esi,eax
 004C50FD    mov         dl,1
 004C50FF    mov         eax,[004120B8];TStringList
 004C5104    call        TObject.Create;TStringList.Create
 004C5109    mov         dword ptr [ebp-18],eax
 004C510C    mov         eax,dword ptr [ebp-4]
 004C510F    call        004BE9E0
 004C5114    xor         edx,edx
 004C5116    mov         dl,al
 004C5118    cmp         edx,0FF
>004C511E    jbe         004C5125
 004C5120    call        @BoundErr
 004C5125    mov         al,1
 004C5127    lea         ecx,[ebp-44]
 004C512A    mov         ah,20
 004C512C    call        @SetRange
 004C5131    mov         eax,dword ptr [ebp-8]
 004C5134    cmp         eax,0FF
>004C5139    ja          004C513F
 004C513B    bt          dword ptr [ebp-44],eax
 004C513F    setb        al
 004C5142    xor         al,1
 004C5144    mov         byte ptr [ebp-1D],al
 004C5147    mov         eax,dword ptr [ebp-4]
 004C514A    call        TFichierCdn.EleveCount
 004C514F    xor         ebx,ebx
 004C5151    mov         bl,al
 004C5153    test        ebx,ebx
>004C5155    jle         004C52B8
 004C515B    mov         dword ptr [ebp-10],1
 004C5162    cmp         byte ptr [ebp-1D],0
>004C5166    jne         004C5216
 004C516C    mov         al,byte ptr [ebp+10]
 004C516F    push        eax
 004C5170    lea         eax,[ebp-144]
 004C5176    push        eax
 004C5177    mov         ecx,dword ptr [ebp-10]
 004C517A    cmp         ecx,0FF
>004C5180    jbe         004C5187
 004C5182    call        @BoundErr
 004C5187    mov         edx,dword ptr [ebp-8]
 004C518A    cmp         edx,0FF
>004C5190    jbe         004C5197
 004C5192    call        @BoundErr
 004C5197    mov         eax,dword ptr [ebp-4]
 004C519A    call        004C2D10
 004C519F    lea         edx,[ebp-144]
 004C51A5    lea         eax,[ebp-24]
 004C51A8    call        @LStrFromString
 004C51AD    cmp         dword ptr [ebp-24],0
>004C51B1    je          004C52AE
 004C51B7    lea         ecx,[ebp-144]
 004C51BD    mov         edx,dword ptr [ebp-10]
 004C51C0    cmp         edx,0FF
>004C51C6    jbe         004C51CD
 004C51C8    call        @BoundErr
 004C51CD    mov         eax,dword ptr [ebp-4]
 004C51D0    call        TFichierCdn.GetEleveName__
 004C51D5    lea         edx,[ebp-144]
 004C51DB    lea         eax,[ebp-14C]
 004C51E1    call        @LStrFromString
 004C51E6    push        dword ptr [ebp-14C]
 004C51EC    push        4C53BC;' -> '
 004C51F1    push        dword ptr [ebp-24]
 004C51F4    lea         eax,[ebp-148]
 004C51FA    mov         edx,3
 004C51FF    call        @LStrCatN
 004C5204    mov         edx,dword ptr [ebp-148]
 004C520A    mov         eax,esi
 004C520C    mov         ecx,dword ptr [eax]
 004C520E    call        dword ptr [ecx+34];TStringList.Add
>004C5211    jmp         004C52AE
 004C5216    mov         al,byte ptr [ebp+0C]
 004C5219    push        eax
 004C521A    mov         al,byte ptr [ebp+8]
 004C521D    push        eax
 004C521E    lea         eax,[ebp-144]
 004C5224    push        eax
 004C5225    mov         edx,dword ptr [ebp-10]
 004C5228    cmp         edx,0FF
>004C522E    jbe         004C5235
 004C5230    call        @BoundErr
 004C5235    mov         cl,byte ptr [ebp+10]
 004C5238    mov         eax,dword ptr [ebp-4]
 004C523B    call        004C32B4
 004C5240    lea         edx,[ebp-144]
 004C5246    lea         eax,[ebp-24]
 004C5249    call        @LStrFromString
 004C524E    cmp         dword ptr [ebp-24],0
>004C5252    je          004C52AE
 004C5254    lea         ecx,[ebp-144]
 004C525A    mov         edx,dword ptr [ebp-10]
 004C525D    cmp         edx,0FF
>004C5263    jbe         004C526A
 004C5265    call        @BoundErr
 004C526A    mov         eax,dword ptr [ebp-4]
 004C526D    call        TFichierCdn.GetEleveName__
 004C5272    lea         edx,[ebp-144]
 004C5278    lea         eax,[ebp-154]
 004C527E    call        @LStrFromString
 004C5283    push        dword ptr [ebp-154]
 004C5289    push        4C53BC;' -> '
 004C528E    push        dword ptr [ebp-24]
 004C5291    lea         eax,[ebp-150]
 004C5297    mov         edx,3
 004C529C    call        @LStrCatN
 004C52A1    mov         edx,dword ptr [ebp-150]
 004C52A7    mov         eax,esi
 004C52A9    mov         ecx,dword ptr [eax]
 004C52AB    call        dword ptr [ecx+34];TStringList.Add
 004C52AE    inc         dword ptr [ebp-10]
 004C52B1    dec         ebx
>004C52B2    jne         004C5162
 004C52B8    mov         eax,esi
 004C52BA    mov         edx,dword ptr [eax]
 004C52BC    call        dword ptr [edx+14];TStringList.GetCount
 004C52BF    mov         ecx,eax
 004C52C1    cmp         ecx,0FFFF
>004C52C7    jbe         004C52CE
 004C52C9    call        @BoundErr
 004C52CE    mov         edx,esi
 004C52D0    mov         eax,dword ptr [ebp-1C]
 004C52D3    call        004B8B48
 004C52D8    cmp         byte ptr [ebp-9],0
>004C52DC    jne         004C52F8
 004C52DE    mov         ecx,4C53CC;'Classement ascendant'
 004C52E3    xor         edx,edx
 004C52E5    mov         eax,esi
 004C52E7    mov         ebx,dword ptr [eax]
 004C52E9    call        dword ptr [ebx+54];TStringList.Insert
 004C52EC    mov         edx,esi
 004C52EE    mov         eax,dword ptr [ebp-18]
 004C52F1    mov         ecx,dword ptr [eax]
 004C52F3    call        dword ptr [ecx+3C];TStrings.AddStrings
>004C52F6    jmp         004C5364
 004C52F8    mov         eax,esi
 004C52FA    mov         edx,dword ptr [eax]
 004C52FC    call        dword ptr [edx+14];TStringList.GetCount
 004C52FF    mov         ebx,eax
 004C5301    sub         ebx,1
>004C5304    jno         004C530B
 004C5306    call        @IntOver
 004C530B    test        ebx,ebx
>004C530D    jl          004C5355
 004C530F    inc         ebx
 004C5310    mov         dword ptr [ebp-14],0
 004C5317    mov         eax,esi
 004C5319    mov         edx,dword ptr [eax]
 004C531B    call        dword ptr [edx+14];TStringList.GetCount
 004C531E    mov         edx,eax
 004C5320    sub         edx,1
>004C5323    jno         004C532A
 004C5325    call        @IntOver
 004C532A    sub         edx,dword ptr [ebp-14]
>004C532D    jno         004C5334
 004C532F    call        @IntOver
 004C5334    lea         ecx,[ebp-158]
 004C533A    mov         eax,esi
 004C533C    mov         edi,dword ptr [eax]
 004C533E    call        dword ptr [edi+0C];TStringList.Get
 004C5341    mov         edx,dword ptr [ebp-158]
 004C5347    mov         eax,dword ptr [ebp-18]
 004C534A    mov         ecx,dword ptr [eax]
 004C534C    call        dword ptr [ecx+34];TStringList.Add
 004C534F    inc         dword ptr [ebp-14]
 004C5352    dec         ebx
>004C5353    jne         004C5317
 004C5355    mov         ecx,4C53EC;'Classement descendant'
 004C535A    xor         edx,edx
 004C535C    mov         eax,dword ptr [ebp-18]
 004C535F    mov         ebx,dword ptr [eax]
 004C5361    call        dword ptr [ebx+54];TStringList.Insert
 004C5364    mov         dl,1
 004C5366    mov         eax,esi
 004C5368    mov         ecx,dword ptr [eax]
 004C536A    call        dword ptr [ecx-4];TStringList.Destroy
 004C536D    mov         dl,1
 004C536F    mov         eax,dword ptr [ebp-1C]
 004C5372    mov         ecx,dword ptr [eax]
 004C5374    call        dword ptr [ecx-4];TComponent.Destroy
 004C5377    mov         ebx,dword ptr [ebp-18]
 004C537A    xor         eax,eax
 004C537C    pop         edx
 004C537D    pop         ecx
 004C537E    pop         ecx
 004C537F    mov         dword ptr fs:[eax],edx
 004C5382    push        4C53A7
 004C5387    lea         eax,[ebp-158]
 004C538D    mov         edx,5
 004C5392    call        @LStrArrayClr
 004C5397    lea         eax,[ebp-24]
 004C539A    call        @LStrClr
 004C539F    ret
>004C53A0    jmp         @HandleFinally
>004C53A5    jmp         004C5387
 004C53A7    mov         eax,ebx
 004C53A9    pop         edi
 004C53AA    pop         esi
 004C53AB    pop         ebx
 004C53AC    mov         esp,ebp
 004C53AE    pop         ebp
 004C53AF    ret         0C}
end;

//004C5404
procedure TFichierCdn.GetStrMinMoy(Periode:dword; ARow:dword; var S:String); //Determiner la Note la plus basse de la période
var
 I,NumModule,MoyennesSur,lvar_38:integer;
 var1,var2,Note,NoteBasse : real;
 lvar_30 , lvar_20 :real;
 Buf:string;
begin//0
  //004C5404..004C544A
    MoyennesSur := GetmoyennesSur; //moyennesSur
	lvar_38 := 0;
	//1- Determiner le NumModule !
    for I:=1 to  GetNbreModules(Periode) do //lvar_34
    begin//004C548F
      try
        //004C54A7
        _GetStrNote(Periode, I, ARow, Buf);
        Var1 := StrToFloat(Buf);
        GetStrNoteSur(Periode, I, Buf);
        Var2 := StrToInt(Buf);
        Note := Var1 / Var2 * MoyennesSur;
        if ({MoyennesSur}NoteBasse > Note) then
        begin//004C554F
          NoteBasse := Note;
          {lvar_C := lvar_1C;
          index := lvar_18;}
          NumModule := I;
        end;//4
        lvar_38 := lvar_38 + 1;
      except//3
        on E:EConvertError do
        begin//004C558F
        end;//4
      end;//3
    end;//2
	//004C55A7
    if (lvar_38 <> 0) then
    begin//004C55B1
      _readCompteMoy(Periode, Buf, NumModule);
      S := FloatToStrF(NoteBasse,ffFixed{2}, 18, 2) + '/' + IntToStr(GetmoyennesSur) + ' (' + Buf + ')';
    end
	else 
    S := '';//??????
end;//0


//004C56C0
procedure TFichierCdn.sub_004C56C0(a:integer; b:integer; c:string);
begin
{*
 004C56C0    push        ebp
 004C56C1    mov         ebp,esp
 004C56C3    add         esp,0FFFFFE98
 004C56C9    push        ebx
 004C56CA    push        esi
 004C56CB    push        edi
 004C56CC    xor         ebx,ebx
 004C56CE    mov         dword ptr [ebp-15C],ebx
 004C56D4    mov         dword ptr [ebp-160],ebx
 004C56DA    mov         dword ptr [ebp-164],ebx
 004C56E0    mov         dword ptr [ebp-168],ebx
 004C56E6    mov         dword ptr [ebp-158],ebx
 004C56EC    mov         dword ptr [ebp-48],ebx
 004C56EF    mov         byte ptr [ebp-6],cl
 004C56F2    mov         byte ptr [ebp-5],dl
 004C56F5    mov         dword ptr [ebp-4],eax
 004C56F8    xor         eax,eax
 004C56FA    push        ebp
 004C56FB    push        4C593D
 004C5700    push        dword ptr fs:[eax]
 004C5703    mov         dword ptr fs:[eax],esp
 004C5706    xor         eax,eax
 004C5708    mov         dword ptr [ebp-38],eax
 004C570B    xor         eax,eax
 004C570D    mov         dword ptr [ebp-3C],eax
 004C5710    call        004B9E48
 004C5715    mov         dword ptr [ebp-44],eax
 004C5718    fild        dword ptr [ebp-44]
 004C571B    fstp        tbyte ptr [ebp-30]
 004C571E    wait
 004C571F    xor         eax,eax
 004C5721    mov         dword ptr [ebp-10],eax
 004C5724    mov         dword ptr [ebp-0C],eax
 004C5727    mov         word ptr [ebp-8],ax
 004C572B    mov         dl,byte ptr [ebp-5]
 004C572E    mov         eax,dword ptr [ebp-4]
 004C5731    call        004BEAD0
 004C5736    and         eax,0FF
 004C573B    test        eax,eax
>004C573D    jle         004C585B
 004C5743    mov         dword ptr [ebp-40],eax
 004C5746    mov         dword ptr [ebp-34],1
 004C574D    xor         eax,eax
 004C574F    push        ebp
 004C5750    push        4C5832
 004C5755    push        dword ptr fs:[eax]
 004C5758    mov         dword ptr fs:[eax],esp
 004C575B    mov         al,byte ptr [ebp-6]
 004C575E    push        eax
 004C575F    lea         eax,[ebp-148]
 004C5765    push        eax
 004C5766    mov         ebx,dword ptr [ebp-34]
 004C5769    cmp         ebx,0FF
>004C576F    jbe         004C5776
 004C5771    call        @BoundErr
 004C5776    mov         ecx,ebx
 004C5778    mov         dl,byte ptr [ebp-5]
 004C577B    mov         eax,dword ptr [ebp-4]
 004C577E    call        004BEF5C
 004C5783    lea         edx,[ebp-148]
 004C5789    lea         eax,[ebp-48]
 004C578C    call        @LStrFromString
 004C5791    mov         eax,dword ptr [ebp-48]
 004C5794    call        GetStrMoyArrendit
 004C5799    fstp        tbyte ptr [ebp-154]
 004C579F    wait
 004C57A0    lea         eax,[ebp-148]
 004C57A6    push        eax
 004C57A7    mov         eax,dword ptr [ebp-34]
 004C57AA    cmp         eax,0FF
>004C57AF    jbe         004C57B6
 004C57B1    call        @BoundErr
 004C57B6    mov         ecx,ebx
 004C57B8    mov         dl,byte ptr [ebp-5]
 004C57BB    mov         eax,dword ptr [ebp-4]
 004C57BE    call        004BED2C
 004C57C3    lea         edx,[ebp-148]
 004C57C9    lea         eax,[ebp-158]
 004C57CF    call        @LStrFromString
 004C57D4    mov         eax,dword ptr [ebp-158]
 004C57DA    call        StrToInt
 004C57DF    mov         dword ptr [ebp-44],eax
 004C57E2    fild        dword ptr [ebp-44]
 004C57E5    fld         tbyte ptr [ebp-154]
 004C57EB    fdivrp      st(1),st
 004C57ED    fld         tbyte ptr [ebp-30]
 004C57F0    fmulp       st(1),st
 004C57F2    fstp        tbyte ptr [ebp-20]
 004C57F5    wait
 004C57F6    fld         tbyte ptr [ebp-20]
 004C57F9    fld         tbyte ptr [ebp-10]
 004C57FC    fcompp
 004C57FE    fnstsw      al
 004C5800    sahf
>004C5801    jae         004C581D
 004C5803    mov         eax,dword ptr [ebp-20]
 004C5806    mov         dword ptr [ebp-10],eax
 004C5809    mov         eax,dword ptr [ebp-1C]
 004C580C    mov         dword ptr [ebp-0C],eax
 004C580F    mov         ax,word ptr [ebp-18]
 004C5813    mov         word ptr [ebp-8],ax
 004C5817    mov         eax,dword ptr [ebp-34]
 004C581A    mov         dword ptr [ebp-3C],eax
 004C581D    add         dword ptr [ebp-38],1
>004C5821    jno         004C5828
 004C5823    call        @IntOver
 004C5828    xor         eax,eax
 004C582A    pop         edx
 004C582B    pop         ecx
 004C582C    pop         ecx
 004C582D    mov         dword ptr fs:[eax],edx
>004C5830    jmp         004C584F
>004C5832    jmp         @HandleOnException
 004C5837    dd          1
 004C583B    dd          00409B50;EConvertError
 004C583F    dd          004C5843
 004C5843    call        @DoneExcept
>004C5848    jmp         004C584F
 004C584A    call        @DoneExcept
 004C584F    inc         dword ptr [ebp-34]
 004C5852    dec         dword ptr [ebp-40]
>004C5855    jne         004C574D
 004C585B    cmp         dword ptr [ebp-38],0
>004C585F    je          004C5911
 004C5865    mov         ax,word ptr [ebp-8]
 004C5869    push        eax
 004C586A    push        dword ptr [ebp-0C]
 004C586D    push        dword ptr [ebp-10]
 004C5870    lea         eax,[ebp-160]
 004C5876    push        eax
 004C5877    mov         ecx,2
 004C587C    mov         edx,12
 004C5881    mov         al,2
 004C5883    call        FloatToStrF
 004C5888    push        dword ptr [ebp-160]
 004C588E    push        4C5958;'/'
 004C5893    call        004B9E48
 004C5898    lea         edx,[ebp-164]
 004C589E    call        IntToStr
 004C58A3    push        dword ptr [ebp-164]
 004C58A9    push        4C5964;' ('
 004C58AE    lea         eax,[ebp-148]
 004C58B4    push        eax
 004C58B5    mov         ecx,dword ptr [ebp-3C]
 004C58B8    cmp         ecx,0FF
>004C58BE    jbe         004C58C5
 004C58C0    call        @BoundErr
 004C58C5    mov         dl,byte ptr [ebp-5]
 004C58C8    mov         eax,dword ptr [ebp-4]
 004C58CB    call        004BED04
 004C58D0    lea         edx,[ebp-148]
 004C58D6    lea         eax,[ebp-168]
 004C58DC    call        @LStrFromString
 004C58E1    push        dword ptr [ebp-168]
 004C58E7    push        4C5970;')'
 004C58EC    lea         eax,[ebp-15C]
 004C58F2    mov         edx,6
 004C58F7    call        @LStrCatN
 004C58FC    mov         edx,dword ptr [ebp-15C]
 004C5902    mov         eax,dword ptr [ebp+8]
 004C5905    mov         ecx,0FF
 004C590A    call        @LStrToString
>004C590F    jmp         004C5917
 004C5911    mov         eax,dword ptr [ebp+8]
 004C5914    mov         byte ptr [eax],0
 004C5917    xor         eax,eax
 004C5919    pop         edx
 004C591A    pop         ecx
 004C591B    pop         ecx
 004C591C    mov         dword ptr fs:[eax],edx
 004C591F    push        4C5944
 004C5924    lea         eax,[ebp-168]
 004C592A    mov         edx,5
 004C592F    call        @LStrArrayClr
 004C5934    lea         eax,[ebp-48]
 004C5937    call        @LStrClr
 004C593C    ret
>004C593D    jmp         @HandleFinally
>004C5942    jmp         004C5924
 004C5944    pop         edi
 004C5945    pop         esi
 004C5946    pop         ebx
 004C5947    mov         esp,ebp
 004C5949    pop         ebp
 004C594A    ret         4
*}
end;

//004C5E04
procedure TFichierCdn.SetAttributs0(periode:dword; ACol:dword; c:dword;s:string);
var
  K,I :integer;
begin//0
  //004C5E04
    //004C5E3E
     K:=0;	
      for I := 1 to periode - 1 do//004C5E52
      begin//3
        //004C5E57
        K := K + GetNbreModules(I);
      end;//3
    K := K + ACol;
    FAttributs0[14 * (K - 1) + c - 1] := s;
end;//0


//004C5F08
procedure TFichierCdn.GetAttributs0(Periode:dword; ACol:dword; Info:dword; var d:string);
var
  sum:dword;
  I:integer;
begin//0
  //004C5F08..004C5F29
    sum := 0;
       //Determiner l'index(periode,ACol,Info) = 14*(ACol-1)+14*sum(ACol-1,1,Periode-1)+Info - 1
      for I := 1 to Periode - 1 do//004C5F44
        sum := sum + GetNbreModules(I);
    d := FAttributs0[14 * (sum + ACol - 1) + Info - 1];
end;//0


//004C5FF8
procedure TFichierCdn.SetAttributs1(a:dword; b:dword; c:dword; d:boolean);
begin//0
  //004C5FF8 
  if (d ) then  SetAttributs0(a, b, c,'1')                //004C6007
  else  SetAttributs0(a, b, c,'0');
end;//0



//004C6030
function TFichierCdn.GetAttributs1(periode:dword; ACol:dword; info:dword):Boolean;
var
  buf:String;
begin//0
  //004C6030
  GetAttributs0(periode, ACol, info, buf);
  result := (buf = '1');
end;//0


//004C6080
procedure TFichierCdn.SetStrMoy(Periode:dword; ARow:dword; Valeur:string);
begin//0
  //004C6080
    FAttributs[(Periode - 1) * EleveCount + ARow - 1] := Valeur;
end;//0


//004C6144
procedure TFichierCdn.GetStrMoy(Periode:dword; ARow:dword; var Valeur:string);
begin//0
  //004C6144
    Valeur := FAttributs[EleveCount * (Periode - 1) + ARow - 1];
end;//0


//004C61E4
procedure TFichierCdn.SetAttributs2(Periode:dword; ARow:dword; c:boolean);
begin//004C61E4
  if (c) then
  begin//004C621D
    FAttributs[EleveCount * (Periode - 1) + GetNbrePeriodes * EleveCount + ARow - 1] := '1';
  end
  else
  FAttributs[EleveCount * (Periode - 1) + GetNbrePeriodes * EleveCount + ARow - 1] := '0';
end;//0


//004C62E8
function TFichierCdn.GetAttributs2(a:dword; b:dword):boolean;
begin//0
  //004C62E8..004C630B
    result := (FAttributs[EleveCount * (a - 1) + GetNbrePeriodes*EleveCount + b - 1] = '1');
end;//0


//004C63C8
procedure TFichierCdn.defaultAttributs;
var
 I,J,K,P:integer;
begin//0
  //004C63C8
 // for I:=1 to 16 do  {ESI}
  begin
	  for P:=1 to GetNbrePeriodes  do
	  begin//004C63E8
		//for J:=1 to 255 do  {EDI}
		for K:=1 to GetNbreModules(P)  do
		begin//004C640F
		  SetAttributs1(P,K,1, true);
		end;//2
	  end;//1
	  for P:=1 to GetNbrePeriodes  do
	  for K:=1 to EleveCount  do
	  begin//004C6473
		begin//004C648B
		  SetAttributs2(P, K, true);
		end;//2
	  end;//1
  end;
end;


//004C64CC
procedure TFichierCdn.sub_004C64CC(a:string; J:integer; b:string);
begin
{ 004C64CC    push        ebp
 004C64CD    mov         ebp,esp
 004C64CF    add         esp,0FFFFFDD4
 004C64D5    push        ebx
 004C64D6    push        esi
 004C64D7    push        edi
 004C64D8    xor         ebx,ebx
 004C64DA    mov         dword ptr [ebp-22C],ebx
 004C64E0    mov         dword ptr [ebp-128],ebx
 004C64E6    mov         esi,edx
 004C64E8    lea         edi,[ebp-124]
 004C64EE    push        ecx
 004C64EF    xor         ecx,ecx
 004C64F1    mov         cl,byte ptr [esi]
 004C64F3    inc         ecx
 004C64F4    rep movs    byte ptr [edi],byte ptr [esi]
 004C64F6    pop         ecx
 004C64F7    mov         byte ptr [ebp-5],cl
 004C64FA    mov         dword ptr [ebp-4],eax
 004C64FD    xor         eax,eax
 004C64FF    push        ebp
 004C6500    push        4C6641
 004C6505    push        dword ptr fs:[eax]
 004C6508    mov         dword ptr fs:[eax],esp
 004C650B    xor         eax,eax
 004C650D    mov         dword ptr [ebp-20],eax
 004C6510    mov         dword ptr [ebp-1C],eax
 004C6513    mov         word ptr [ebp-18],ax
 004C6517    xor         eax,eax
 004C6519    mov         dword ptr [ebp-10],eax
 004C651C    mov         eax,dword ptr [ebp-4]
 004C651F    call        004BE9E0
 004C6524    and         eax,0FF
 004C6529    test        eax,eax
>004C652B    jle         004C65D5
 004C6531    mov         dword ptr [ebp-24],eax
 004C6534    mov         dword ptr [ebp-0C],1
 004C653B    xor         eax,eax
 004C653D    push        ebp
 004C653E    push        4C65AC
 004C6543    push        dword ptr fs:[eax]
 004C6546    mov         dword ptr fs:[eax],esp
 004C6549    mov         al,byte ptr [ebp-5]
 004C654C    push        eax
 004C654D    lea         eax,[ebp-228]
 004C6553    push        eax
 004C6554    mov         ecx,dword ptr [ebp-0C]
 004C6557    cmp         ecx,0FF
>004C655D    jbe         004C6564
 004C655F    call        @BoundErr
 004C6564    lea         edx,[ebp-124]
 004C656A    mov         eax,dword ptr [ebp-4]
 004C656D    call        004C2E60
 004C6572    lea         edx,[ebp-228]
 004C6578    lea         eax,[ebp-128]
 004C657E    call        @LStrFromString
 004C6583    mov         eax,dword ptr [ebp-128]
 004C6589    call        GetStrMoyArrendit
 004C658E    fld         tbyte ptr [ebp-20]
 004C6591    faddp       st(1),st
 004C6593    fstp        tbyte ptr [ebp-20]
 004C6596    wait
 004C6597    add         dword ptr [ebp-10],1
>004C659B    jno         004C65A2
 004C659D    call        @IntOver
 004C65A2    xor         eax,eax
 004C65A4    pop         edx
 004C65A5    pop         ecx
 004C65A6    pop         ecx
 004C65A7    mov         dword ptr fs:[eax],edx
>004C65AA    jmp         004C65C9
>004C65AC    jmp         @HandleOnException
 004C65B1    dd          1
 004C65B5    dd          00409B50;EConvertError
 004C65B9    dd          004C65BD
 004C65BD    call        @DoneExcept
>004C65C2    jmp         004C65C9
 004C65C4    call        @DoneExcept
 004C65C9    inc         dword ptr [ebp-0C]
 004C65CC    dec         dword ptr [ebp-24]
>004C65CF    jne         004C653B
 004C65D5    cmp         dword ptr [ebp-10],0
>004C65D9    je          004C6617
 004C65DB    fild        dword ptr [ebp-10]
 004C65DE    fld         tbyte ptr [ebp-20]
 004C65E1    fdivrp      st(1),st
 004C65E3    add         esp,0FFFFFFF4
 004C65E6    fstp        tbyte ptr [esp]
 004C65E9    wait
 004C65EA    lea         eax,[ebp-22C]
 004C65F0    push        eax
 004C65F1    mov         ecx,2
 004C65F6    mov         edx,12
 004C65FB    mov         al,2
 004C65FD    call        FloatToStrF
 004C6602    mov         edx,dword ptr [ebp-22C]
 004C6608    mov         eax,dword ptr [ebp+8]
 004C660B    mov         ecx,0FF
 004C6610    call        @LStrToString
>004C6615    jmp         004C661D
 004C6617    mov         eax,dword ptr [ebp+8]
 004C661A    mov         byte ptr [eax],0
 004C661D    xor         eax,eax
 004C661F    pop         edx
 004C6620    pop         ecx
 004C6621    pop         ecx
 004C6622    mov         dword ptr fs:[eax],edx
 004C6625    push        4C6648
 004C662A    lea         eax,[ebp-22C]
 004C6630    call        @LStrClr
 004C6635    lea         eax,[ebp-128]
 004C663B    call        @LStrClr
 004C6640    ret
>004C6641    jmp         @HandleFinally
>004C6646    jmp         004C662A
 004C6648    pop         edi
 004C6649    pop         esi
 004C664A    pop         ebx
 004C664B    mov         esp,ebp
 004C664D    pop         ebp
 004C664E    ret         4*}
end;

//004C6654
function TFichierCdn.IsEtablissementVersion:Boolean;
begin
 result := (TypeVersion = 'Etablissement');
end;

//004C6680
function TFichierCdn.IsPersonnelleVersion:Boolean;
begin//0
  //004C6680
  result := (TypeVersion = 'Personnelle');
end;//0


//004C66A8
function TFichierCdn.IsOldVersion___(FFluxCdn:TFluxCdn;CarnetNotesVersion:string) : boolean;
var
 user : TStringList;
 I,J,NbrEleves,Periodes : integer;
 buf,buf0,buf1,buf2,buf3,buf4,buf5,buf6,buf7,buf8:string;
begin//0
  //004C66A8
//  ECX := $186{390};
  try
    //004C66E0
    if      (CarnetNotesVersion <> 'bêta 2') and (CarnetNotesVersion <> 'bêta 3') 
		and (CarnetNotesVersion <> 'bêta 4') and (CarnetNotesVersion <> 'bêta 5') 
		and (CarnetNotesVersion <> 'bêta 6') and (CarnetNotesVersion <> '1.0') then
              begin//7
                //004C676A
                Exit;
              end;//7
    try
      //004C677F
      TypeVersion := 'Personnelle';
	  ClasseName := FFluxCdn._Read();
      FEtablissment := FFluxCdn._Read();
      FMatiere := FFluxCdn._Read();
      FYear := FFluxCdn._Read();
      FRemarque := FFluxCdn._Read();
	  NbrEleves := StrToInt(FFluxCdn._Read());
      FData.FixedRows := 0; ;
      FData.RowCount := NbrEleves + $12{gvar_00617902};
      FData.ColCount := 1 ;
      FNbrModules := TStringList.Create;
      for I := 1 to 12 do
      begin//3
        //004C68B3
        FNbrModules.add('0');
      end;//3
      f928 := TStringList.Create;
      FAppreciations := TStringList.Create;
      FDateNais := TStringList.Create;
      FRedoublant := TStringList.Create;
      //f928 := TStringList.Create;
      FInfoEleve := TStringList.Create;
	  FClasses := TStringList.Create;
      FClasses.Add('classe');
      for I := 1 to 3 do
      begin//3
        //004C6946
        for J := 1 to NbrEleves do
        begin//4
          //004C694D
          f928.Add('');
		  FClasses.Add('');
        end;//4
      end;//3
        //004C6977
        for J := 1 to NbrEleves do
        begin//4
          //004C6977
          FDateNais.Add('');
		  FInfoEleve.Add('');
		  FRedoublant.Add('');
        end;//4
        //004C69A9
        for J := 1 to NbrEleves do
        begin//4
          //004C69A9
		  SEleves.AddEleve(FFluxCdn._read);
        end;//4
      
      Periodes := StrToInt(FFluxCdn._read());
      FAttributs0 := TStringList.Create;
        //004C6A2D
        for I := 1 to Periodes do
        begin//4
          //004C6A2D
          for J := 1 to 14 do
          begin//5
            //004C6A31
            FAttributs0.Add('1');
          end;//5
        end;//4
      FAttributs := TStringList.Create;
      for I := 1 to 6 do//004C6A60
        for J := 1 to NbrEleves do
          FAttributs.Add('1');
        //004C6A8B
        for I := 1 to Periodes do
        begin//4
          //004C6A8F
		  Buf0 := FFluxCdn._Read(); 
		  Buf1 := FFluxCdn._Read(); 
		  Buf2 := FFluxCdn._Read(); 
		  Buf3 := FFluxCdn._Read(); 
		  Buf4 := FFluxCdn._Read(); 
		  Buf5 := FFluxCdn._Read(); 
		  Buf7 := FFluxCdn._Read(); 
		  Buf8 := FFluxCdn._Read(); 
          (*case StrToInt(lvar_C18) of
            0:
            begin//6
              //004C6B26
              lvar_C1C := 'Contrôle en classe ' + lvar_C20;
              ECX := 4;
              lvar_907 := ;
              lvar_907 := ;
              lvar_907 := ;
            end;//6
            1:
            begin//6
              //004C6B81
              lvar_C24 := 'Test en classe ' + lvar_C28;
              ECX := 3;
              lvar_907 := ;
              lvar_907 := ;
              lvar_907 := ;
            end;//6
            2:
            begin//6
              //004C6BD9
              lvar_C2C := 'Devoir à la maison ' + lvar_C30;
              ECX := 4;
              lvar_907 := ;
              lvar_907 := ;
              lvar_907 := ;
            end;//6
          end;//5
		  *)
          AddColone(StrToInt(Buf5), Buf0, Buf1, Buf2, Buf3, Buf4, Buf5, Buf6,Buf7 = '');
          for J := 1 to NbrEleves do
          begin//5
            //004C6CA1
			buf := FFluxCdn._read();
            if (buf  <> '-1') then //004C6CC5
              sub_004C1074(1, I, J,buf )
            else//004C6CDE
              sub_004C1074(1, I, J,buf );
          end;//5
        end;//4
      user := sub_0049856C;
      user[0] := Enseignant;
      SArrondirMoyennes := GetarrondirMoyennes;
      SArrondirMoyennesAnnuelles := GetarrondirMoyennesAnnuelles;
      StypeMoyennesAnnuelles := GettypeMoyennesAnnuelles;
      FModified := true;
    except//2
      on E:Exception do
      begin//3
        //004C6D6E
        result := false;
        Exit;
      end;//3
    end;//2
    result := true;
  finally//1
    //004C6D8B
   // EDX := 12;
  end;//1

end;

//004C6E9C
procedure TFichierCdn.readCdn(filename:TFileName; b:integer);
var
	buf : string;
	lvar_9:integer;
	NbrEleves:Integer;
	Periodes:Integer;
	lvar_C:Integer;
	lvar_D:Integer;
	lvar_E:Integer;
	lvar_110:PShortString;
	lvar_114:AnsiString;
	lvar_118:AnsiString;
	lvar_11C:AnsiString;
	lvar_120:AnsiString;
	lvar_124:AnsiString;
	lvar_128:AnsiString;
	lvar_12C:AnsiString;
	lvar_134:AnsiString;
	lvar_138:AnsiString;
	lvar_13C:AnsiString;
	lvar_140:AnsiString;
	lvar_144:AnsiString;
	lvar_148:AnsiString;
	lvar_14C:AnsiString;
	lvar_150:AnsiString;
	lvar_154:AnsiString;
	lvar_158:AnsiString;
	lvar_15C:AnsiString;
	lvar_160:AnsiString;
	lvar_164:AnsiString;
	lvar_168:AnsiString;
	lvar_16C:AnsiString;
	lvar_170:AnsiString;
	lvar_174:AnsiString;
	lvar_178:AnsiString;
	lvar_17C:AnsiString;
	lvar_180:AnsiString;
	lvar_184:AnsiString;
	lvar_188:AnsiString;
	lvar_18C:AnsiString;
	lvar_190:AnsiString;
	lvar_194:AnsiString;
	lvar_198:AnsiString;
	lvar_19C:AnsiString;
	lvar_1A0:AnsiString;
	lvar_1A4:AnsiString;
	lvar_1A8:AnsiString;
	lvar_1AC:AnsiString;
	lvar_1B0:AnsiString;
	lvar_1B4:AnsiString;
	lvar_1B8:AnsiString;
	lvar_1BC:AnsiString;
	lvar_1C0:AnsiString;
	lvar_1C4:AnsiString;
	lvar_1C8:AnsiString;
	lvar_1CC:AnsiString;
	lvar_1D0:AnsiString;
	lvar_1D4:AnsiString;
	lvar_1D8:AnsiString;
	StringList : TStringList;
	StringListTemp : TStringList;
	STemp:string;
	ITemp:integer;
	I:integer;
begin//0
  //004C6E9C
    try
      //004C6EDF
	  
      if (CarnetNotesVersion <> '2.0') then //004C6EF8
        if (CarnetNotesVersion <> '2.1') then//004C6F11
          if (CarnetNotesVersion <> '2.2') then//004C6F2A
            if (CarnetNotesVersion <> '2.3') then//004C6F43
              raise Exception.Create('Mauvais format');

      if (Signature = 'Carnet de notes') then//004C6F72
		TypeVersion := 'Personnelle' //$4C8238
      else//004C6F82
        TypeVersion := 'Etablissement'; //$4C8244;
    
      FFileName := filename;
      if (CarnetNotesVersion = '2.1') Or (CarnetNotesVersion = '2.2') Or (CarnetNotesVersion = '2.3') then
      begin//004C6FEF
        Enseignant := FFluxCdn._Read;
      end;//3
      ClasseName := FFluxCdn._Read;
      FEtablissment := FFluxCdn._Read;
      FMatiere := FFluxCdn._Read;
      FYear := FFluxCdn._Read;
      FRemarque := FFluxCdn._Read;
      SPeriodes.SetTypePeriode__(FFluxCdn._Read); //periodes
      Periodes := StrToInt(FFluxCdn._Read);
      StringList := TStringList.Create;
      if (Periodes > 0) then
      begin//004C714E
        for lvar_C := 1 to Periodes do
        begin//004C7151
          buf := FFluxCdn._Read;
          StringList.Add(buf);
        end;//4
      end;//3
      SPeriodes.SetPeriodes(StringList);
      StringList.Free;
      NbrEleves := StrToInt(FFluxCdn._Read);
        for lvar_C := 1 to NbrEleves do //004C71DF
        begin//004C71E2 //ajouter liste eleves
          SEleves.AddEleve(FFluxCdn._Read);
        end;//4
      FData.FixedCols := 0;
      FData.FixedRows := 0; 
      FData.RowCount := NbrEleves + $12;{+ gvar_00617902};
      FData.ColCount := 1;
      FNbrModules := TStringList.Create;
      FAttributs0 := TStringList.Create;
	 
       //:= TStringList.Create
      lvar_9 := 0;
        for lvar_C := 1 to Periodes do //004C72AB     'nbre_org'//Periodes
        begin //004C72AE
          ITemp := StrToInt(FFluxCdn._Read);  //ITemp =EBX
          lvar_12C := IntToStr(ITemp);  //nbr_note
          FNbrModules.Add(lvar_12C);
          for lvar_D := 1 to ITemp do
          begin//004C7318
            FData.ColCount := FData.ColCount + 1;
            FData.Cells[lvar_9, 0]:= FFluxCdn._Read;
            
              for I{lvar_E} := 1 to NbrEleves do //004C7376  'nbr_eleve'
              begin//004C737B
                FData.Cells[lvar_9, I]:= FFluxCdn._Read;
              end;//7
            // autres informations   16 infos
            for I := 1 to 9 do   
            begin//004C73BC
              FData.Cells[lvar_9, NbrEleves + I ]:= FFluxCdn._Read;
            end;//6
            FData.Cells[lvar_9, NbrEleves + $0B{gvar_006178FB}] := FFluxCdn._Read;
            FData.Cells[lvar_9, NbrEleves + $0C{gvar_006178FC}]:= FFluxCdn._Read;
            FData.Cells[lvar_9, NbrEleves + $0D{gvar_006178FD}] := FFluxCdn._Read;
            FData.Cells[lvar_9, NbrEleves + $0E{gvar_006178FE}]:= FFluxCdn._Read;
            FData.Cells[lvar_9, NbrEleves + $0F{gvar_006178FF}] := FFluxCdn._Read;
            FData.Cells[lvar_9, NbrEleves + $10{gvar_00617900}] := FFluxCdn._Read;
            if (CarnetNotesVersion = '2.3') then
            begin//004C75C9 
              FData.Cells[lvar_9, NbrEleves + $11{gvar_00617901}]:= FFluxCdn._Read;
            end//6
            else
            begin //004C7610
              FData.Cells[lvar_9, NbrEleves + $11{gvar_00617901}]:= 'Ecrit';
            end;//6
            lvar_9 := lvar_9 + 1;
            for I := 1 to 14 do
            begin//004C763E
              FAttributs0.Add('1'); //$4C826C
            end;//6
          end;//5
        end;//4
      //end;//3
	  
      FAttributs := TStringList.Create;//004C7669
      
        for lvar_C := 1 to 2*Periodes do //004C769B
        begin//004C769E
          for lvar_D := 1 to  NbrEleves do//004C76A8
            FAttributs.Add('1'); //$4C826C
        end;//4
      
      f928 := TStringList.Create;
      FAppreciations := TStringList.Create;
      FDateNais := TStringList.Create;
      FRedoublant := TStringList.Create;
      FInfoEleve := TStringList.Create;
      FClasses := TStringList.Create;
	  
      if (CarnetNotesVersion = '2.0') then
      begin //004C776
        FClasses.Add('classe');
		for lvar_C := 1 to Periodes do //004C7775
		begin//004C7778
			for lvar_D := 1 to NbrEleves do
			begin//004C7782
			  f928.Add(FFluxCdn._Read);
			end;//6
		end;//5
        Enseignant := FFluxCdn._Read;
        SArrondirMoyennes := StrToInt(FFluxCdn._Read);
        for lvar_C := 1 to Periodes do //004C782F
        begin//5
            for lvar_D := 1 to NbrEleves do //004C7832
            begin //004C783C
              FAppreciations.Add(FFluxCdn._Read);
            end;//6
        end;  
        for lvar_C := 1 to NbrEleves do //004C7883
        begin//004C7886
            FDateNais.Add('');
            FRedoublant.Add('');
            FInfoEleve.Add('1'); 
        end;//5 
      end//3
      else if (CarnetNotesVersion = '2.1') then
      begin//004C78DB
        FClasses.Add('classe'); //$4C8278;
          for lvar_C := 1 to  Periodes do //004C78F9
          begin//5
            for lvar_D := 1 to NbrEleves do //004C78FC
            begin //004C7906
              f928.Add(FFluxCdn._Read);
              FAppreciations.Add(FFluxCdn._Read);
            end;//6
          end;//5
          for lvar_C := 1 to NbrEleves do //004C7983
          begin//004C7986
            FDateNais.Add('');
            FRedoublant.Add('');
            FInfoEleve.Add('1'); //$4C826C;
          end;//5
        SArrondirMoyennes := StrToInt(FFluxCdn._Read);
        SArrondirMoyennesAnnuelles := StrToInt(FFluxCdn._Read);
        StypeMoyennesAnnuelles := StrToInt(FFluxCdn._Read)
      end//3
      else if (CarnetNotesVersion = '2.2') then
      begin//004C7AA1
	      
          for lvar_C := 1 to Periodes do //004C7AA8
          begin//5
            for lvar_D := 1 to NbrEleves do //004C7AAB
            begin//004C7AB5
              f928.Add(FFluxCdn._Read);
            end;//6
          end;//5
		
        ITemp := StrToInt(FFluxCdn._Read);
          for lvar_C := 1 to ITemp do //004C7B32
          begin//004C7B35
            FClasses.Add(FFluxCdn._Read);
          end;//5
        
        buf := FFluxCdn._Read;
        //SetTypeBulletins(STypeBulletins, buf);
        ITemp := StrToInt(FFluxCdn._Read);
        
        StringListTemp := TStringList.Create;
		
          for lvar_C := 1 to ITemp do //004C7BF4
          begin//004C7BF7
            StringListTemp.Add(FFluxCdn._Read);
          end;//5
        STypeBulletins.AddNomBulletinsList(StringListTemp);
        StringListTemp.Free;
          for lvar_C := 1 to Periodes do //004C7C49
          begin//5
            for lvar_D := 1 to NbrEleves do //004C7C4C
            begin//004C7C56
              for lvar_E := 1 to ITemp do
              begin//004C7C5D
                FAppreciations.Add(FFluxCdn._Read);
              end;//7
            end;//6
          end;//5
          for lvar_C := 1 to ITemp do //004C7CAD
          begin//004C7CB0
            FDateNais.Add(FFluxCdn._Read);
            FInfoEleve.Add(FFluxCdn._Read);
            FRedoublant.Add('');
          end;//5
		//bug here
        {buf := FFluxCdn._Read;
        SArrondirMoyennes := StrToInt(buf);
        buf := FFluxCdn._Read;
        SArrondirMoyennesAnnuelles := StrToInt(buf);
        buf := FFluxCdn._Read;
        StypeMoyennesAnnuelles := StrToInt(buf);}
      end//3
      else if (CarnetNotesVersion = '2.3') then
      begin//004C7E18
          for lvar_C := 1 to Periodes do //004C7E1F
          begin//5
            for lvar_D := 1 to  NbrEleves do //004C7E22
            begin//004C7E2C
              f928.Add(FFluxCdn._Read);
            end;//6
          end;//5
        
        ITemp := StrToInt(FFluxCdn._Read);

          for lvar_C := 1 to ITemp do //004C7EA9
          begin//004C7EAC
            FClasses.Add(FFluxCdn._Read);
          end;//5
        
        buf := FFluxCdn._Read;
        //SetTypeBulletins(STypeBulletins, buf);
        ITemp := StrToInt(FFluxCdn._Read);
        StringListTemp := TStringList.Create;

        for I := 1 to ITemp do //004C7F6B
        begin//004C7F6E
            StringListTemp.Add(FFluxCdn._Read);
        end;//5
        
        //AddNomBulletinsList(STypeBulletins, ESI);
        StringListTemp.Free;
          for lvar_C := 1 to Periodes do //004C7FC0
          begin//004C7FC3
            for lvar_D := 1 to NbrEleves do
            begin//004C7FCD
              for lvar_E := 1 to ITemp do
              begin//004C7FD4
                FAppreciations.Add(FFluxCdn._Read);
              end;//7
            end;//6
          end;//5
        

          for I := 1 to  NbrEleves do //004C8024
          begin//004C8027
            FDateNais.Add(FFluxCdn._Read); //date de naissance
            FInfoEleve.Add(FFluxCdn._Read);
            FRedoublant.Add(FFluxCdn._Read);
          end;//5
        
        SArrondirMoyennes := StrToInt(FFluxCdn._Read);
        SArrondirMoyennesAnnuelles := StrToInt(FFluxCdn._Read);
        StypeMoyennesAnnuelles := StrToInt(FFluxCdn._Read);
		
      end;//3
      FModified := false;
    except//2
      on E:Exception do
      begin//004C81BA    
        Succes := false;		
      end;//3
    end;//2

end;

//004C8280
procedure TFichierCdn.OpenFile{(a:pointer; b:pointer; c:pointer; d:pointer)};
var
  b:integer; //paramettres 
  lvar_4:TFichierCdn;
  lvar_8:pointer;
  buf:string;
  EFileName,Msg : string;
begin//0
  
  b:=0;
  //004C8280
  //EBX := b;
  //lvar_8 := FileName;
  //lvar_4 := Self;
  //004C82C4
    SArrondirMoyennes := GetarrondirMoyennes;
    SArrondirMoyennesAnnuelles := GetarrondirMoyennesAnnuelles;
    StypeMoyennesAnnuelles := GettypeMoyennesAnnuelles;
    STypeBulletins := TTypeBulletins.Create;
    SPeriodes := TPeriodes.Create;
    SEleves := TEleves.Create;
    Succes := True;
    OldVersion := false;
    //FFileName := FileName;
    FData := TStringGrid.Create(Nil);
    if (FFileName <> '') then
    begin//2
      //004C8370..004C837E
	  try
        FFluxCdn  := TFluxCdn.Create(FFileName, fmOpenRead);
        Signature:=FFluxCdn._Read();
        if (Signature <> 'Carnet de notes') then
        begin//004C83D0
          if (Signature <> 'Carnet de Notes') then
          begin//004C83E9
            raise Exception.Create('Ce fichier n''est pas un fichier Carnet de Notes');
          end;//5
        end;//4
        CarnetNotesVersion:=FFluxCdn._Read();//f110
        if (CarnetNotesVersion <> '2.0') and (CarnetNotesVersion <> '2.1') and (CarnetNotesVersion <> '2.2') and (CarnetNotesVersion <> '2.3') then //004C8440..004C845D..004C847A..004C8497
		begin//
			if (not(IsOldVersion___(FFluxCdn,CarnetNotesVersion))) then
			begin//004C84B2
			  raise Exception.Create('Mauvaise CarnetNotesVersion de fichier.');
			end//8
			else
			begin//004C84CD
			  if (b = 0) then
			  begin//004C84D1
				EFileName := ExtractFileName(FFileName);
				Msg := 'Le fichier "' + EFileName + '" est un fichier d''une ancienne CarnetNotesVersion de Carnet de Notes.' + #13 + #10 + #13 + #10 + 'Son importation dans ' + 'Carnet de Notes CarnetNotesVersion Personnelle' + ' a été réussie.';
				MessageBoxA(0, PChar(Msg), 'Carnet de Notes CarnetNotesVersion Personnelle', $40{64});
			  end;//9
			  OldVersion := true;
			end;//8
		end//7
        else
        begin//4
          readCdn(FFileName, {c}0);
        end;//4
        if (IsEtablissementVersion) then
        begin//004C8562
          if ({d = 0}false) then
          begin//004C8568
            EFileName := ExtractFileName(FFileName);
            Msg := 'Le fichier "' + EFileName + '" a été créé avec la CarnetNotesVersion Etablissement de Carnet de Notes.' + #13 + #10 + #13 + #10 + 'Certaines fonctionnalités de ' + 'Carnet de Notes CarnetNotesVersion Personnelle' + ' seront désactivées pour ce fichier.';
            MessageBoxA(0, PChar(Msg), 'Carnet de Notes CarnetNotesVersion Personnelle', $40{64});
          end;//5
        end;//4
        FFluxCdn.Free;
      except//3
        on E:Exception do
        begin//004C85F9
          FFluxCdn.Free;
          Succes := false;
        end;//4
      end;//3
    end
	else
    NewFile;
end;

//004C8880
procedure TFichierCdn.NewFile;
var
 lvar_2, lvar_4, lvar_5:word;
 I: integer;
begin//0
  //004C8880..004C889C
    TypeVersion := 'Personnelle';
    ClasseName := 'Nouvelle classe';
    FEtablissment := '';
    FMatiere := '';
    DecodeDate(Now,lvar_2, lvar_4, lvar_5);
    FYear := IntToStr(lvar_2) + '/' + IntToStr(lvar_2+1);
    FRemarque := '';
    Enseignant := '';
    SArrondirMoyennes := GetarrondirMoyennes;
    SArrondirMoyennesAnnuelles := GetarrondirMoyennesAnnuelles;
    StypeMoyennesAnnuelles := GettypeMoyennesAnnuelles;
    FFileName := ClasseName;
    FNbrModules := TStringList.Create;
    for I := 1 to 52 do//004C8982
      FNbrModules.Add('0');

    f928 := TStringList.Create;
    FAppreciations := TStringList.Create;
    FDateNais := TStringList.Create;
    FRedoublant := TStringList.Create;
    FInfoEleve := TStringList.Create;
    FClasses := TStringList.Create;
    FClasses.Add('classe');
    FAttributs0 := TStringList.Create;
    FAttributs := TStringList.Create;
    FData.FixedCols := 0;
    FData.FixedRows := 0;
    FData.RowCount := $12;{gvar_00617902};
    FData.ColCount := 1;
    FModified := true;
end;//0


//004C8AD8
function TFichierCdn.sub_004C8AD8:dword;
begin//0
  //004C8AD8
  result := SArrondirMoyennesAnnuelles;
end;//0


//004C8AE0
function TFichierCdn.sub_004C8AE0:dword;
begin//0
  //004C8AE0
  result := StypeMoyennesAnnuelles;
end;//0


//004C8AE8
function TFichierCdn.BulletinsCount:dword;
begin//0
  //004C8AE8
  result := STypeBulletins.BulletinsCount;
end;//0


//004C8AF4
procedure TFichierCdn.GetBulletinsName__(a:dword; var b:String);
begin//0
  //004C8AF4
  STypeBulletins.renvoieNom(a, b);
end;//0


//004C8B54
procedure TFichierCdn.GetTypeBulletins_(var a:string);
begin//0
  //004C8B54
   STypeBulletins.GetTypeBulletins__(a);
end;//0


//004C8BAC
function TFichierCdn.sub_004C8BAC():TStrings;
begin
  result := STypeBulletins.GetNomBulletinsStr;
end;

//004C8BB8

procedure TFichierCdn.GetElevDateNais(a:dword; var b:string);
begin//0
  //004C8BB8
    b := FDateNais[a - 1]; //date de naissance
end;

//004C8C2C
procedure TFichierCdn.AddElevDateNais(a:integer; str:string);
begin//0
  //004C8C2C
    FDateNais[a-1] := str;
end;

//004C8CB8
procedure TFichierCdn.GetInfoEleve(a:dword; var b:String);
begin//0
  //004C8CB8..004C8CD9
    try
      //004C8CE7
      b := IntToStr(StrToInt(FInfoEleve[a - 1]));
    except//004C8D32
      b :='';// $3101{12545};
    end;//2
end;//0


//004C8D68
function TFichierCdn.GetClassesCount:dword;
begin//0
  //004C8D68
  result := FClasses.Count;
end;//0


//004C8D84
procedure TFichierCdn.GetClasses(a:dword; var b:String);
begin//0
  //004C8D84..004C8DA6
    b := FClasses[a - 1];
end;//0


//004C8DF8
procedure TFichierCdn.SetElevR(a:dword; b:boolean);
begin//0
  //004C8DF8
  if (b ) then//004C8E00
    FRedoublant[a - 1] := 'R'
  else
  FRedoublant[a - 1] := '';
end;//0

//004C8E50
function TFichierCdn.sub_004C8E50( b:dword):boolean; //redoublant
begin
  //004C8E50
    result := (FRedoublant[b - 1] = 'R');
end;

//004C8EC8
function TFichierCdn.sub_004C8EC8(a:integer; b:integer; c:boolean):integer;
begin//0
  //004C8EC8
  if (c) then //004C8EDB
    _SetStrNote(a, b,EleveCount + $11 {gvar_00617901}, 'Oral')
  else
    _SetStrNote(a, b,EleveCount + $11 {gvar_00617901},  'Ecrit');
end;

//004C8F6C
procedure TFichierCdn.GetStr0Arrondir(Periode:dword; ARow:dword; Arrondir:dword; var s:string);
var
  buf:string;
begin//0
  //004C8F6C
  GetStr0(Periode, ARow, buf);
  self.GetStrMoyArrendit(buf, Arrondir, s);
end;//0

//004C8FB0
procedure TFichierCdn.GetStr0(Periode:dword; ARow:dword; var s:string);
var
Somme, Total, NoteSur, Coefficient : Real;
I:integer;
buf:string;
begin//0
  //004C8FB0
    //004C8FED
    Somme := 0;
    Total := 0;
      for I := 1 to GetNbreModules(Periode)  do//004C901D
      begin//3
        //004C9027
        GetStrComptMoy(Periode, I, buf);
        if (buf = 'oui') then
        begin//4
          //004C9066
          GetStrOraleEcrit(Periode, I, buf);
          if (buf = 'Oral') then
          begin//5
            //004C90A4
            try
              //004C90B2
              GetStrCoeff(Periode, I, buf);
              Coefficient := StrToFloat(buf);
              GetStrNoteSur(Periode, I, buf);
              NoteSur := StrToFloat(buf);
              _GetStrNote(Periode, I, ARow, buf);
              Somme := StrToFloat(buf) * Coefficient + Somme;
              Total := NoteSur * Coefficient + Total;
            except//6
              on E:EConvertError do
              begin//7
                //004C91BD
              end;//7
              on E:EMathError do
              begin//7
                //004C91C4
              end;//7
            end;//6
          end;//5
        end;//4
      end;//3
    if (Total <> 0) then
    begin//2
      //004C91EA
      s := FloatToStrF(GetmoyennesSur * (Somme / Total),ffFixed{2}, $12{18}, 2);
    end//2
	else 
    s := '';
    //004C924C
end;//0


//004C9280
procedure TFichierCdn.GetStrArrondir(Periode:dword; ARow:dword; Arrondir:dword; var s:string);
var
  buf:string;
begin//0
  //004C9280
  GetStr(Periode, ARow, buf);
  GetStrMoyArrendit(buf, Arrondir, s);
end;//0

//004C92C4
procedure TFichierCdn.GetStr(Periode:dword; ARow:dword; var s:string);
var
  Somme, Total, Coefficient, NoteSur : Real;
  I:integer;
  buf:string;
begin//0
  //004C92C4
    //004C9301
    Somme := 0;
	Total := 0;
      for I := 1 to GetNbreModules(Periode)  do
      begin//3
        //004C933B
        GetStrComptMoy(Periode, I, buf);
        if (buf = 'oui') then
        begin//4
          //004C937A
          GetStrOraleEcrit(Periode, I, buf);
          if (buf = 'Ecrit') then
          begin//5
            //004C93B8
            try
              //004C93C6
              GetStrCoeff(Periode, I, buf);
              Coefficient := StrToFloat(buf);
              GetStrNoteSur(Periode, I, buf);
              NoteSur := StrToFloat(buf);
              _GetStrNote(Periode, I, ARow, Buf);
              Total := StrToFloat(Buf) * Coefficient + Total;
              Somme := NoteSur * Coefficient + Somme;
            except//6
              on E:EConvertError do
              begin//7
                //004C94D1
              end;//7
              on E:EMathError do
              begin//7
                //004C94D8
              end;//7
            end;//6
          end;//5
        end;//4
      end;//3
    if (Somme <> 0) then
    begin//2
      //004C94FE
      s := FloatToStrF(GetmoyennesSur * (Total / Somme),ffFixed{2}, $12{18}, 2);
    end//2
	else
    s := '';
    //004C9560
end;//0

//004C9594
procedure TFichierCdn.sub_004C9594(a:integer; b:integer; buf:string);
begin
{ 004C9594    push        ebp
 004C9595    mov         ebp,esp
 004C9597    add         esp,0FFFFFEE0
 004C959D    push        ebx
 004C959E    push        esi
 004C959F    push        edi
 004C95A0    xor         ebx,ebx
 004C95A2    mov         dword ptr [ebp-11C],ebx
 004C95A8    mov         dword ptr [ebp-18],ebx
 004C95AB    mov         byte ptr [ebp-6],cl
 004C95AE    mov         byte ptr [ebp-5],dl
 004C95B1    mov         dword ptr [ebp-4],eax
 004C95B4    xor         eax,eax
 004C95B6    push        ebp
 004C95B7    push        4C96F8
 004C95BC    push        dword ptr fs:[eax]
 004C95BF    mov         dword ptr fs:[eax],esp
 004C95C2    xor         eax,eax
 004C95C4    mov         dword ptr [ebp-10],eax
 004C95C7    mov         dword ptr [ebp-0C],eax
 004C95CA    mov         word ptr [ebp-8],ax
 004C95CE    mov         byte ptr [ebp-12],0
 004C95D2    mov         eax,dword ptr [ebp-4]
 004C95D5    call        004BE9E0
 004C95DA    test        al,al
>004C95DC    jbe         004C9669
 004C95E2    mov         byte ptr [ebp-13],al
 004C95E5    mov         byte ptr [ebp-11],1
 004C95E9    xor         eax,eax
 004C95EB    push        ebp
 004C95EC    push        4C9644
 004C95F1    push        dword ptr fs:[eax]
 004C95F4    mov         dword ptr fs:[eax],esp
 004C95F7    mov         al,byte ptr [ebp-6]
 004C95FA    push        eax
 004C95FB    lea         eax,[ebp-118]
 004C9601    push        eax
 004C9602    mov         cl,byte ptr [ebp-5]
 004C9605    mov         dl,byte ptr [ebp-11]
 004C9608    mov         eax,dword ptr [ebp-4]
 004C960B    call        004C8F6C
 004C9610    lea         edx,[ebp-118]
 004C9616    lea         eax,[ebp-18]
 004C9619    call        @LStrFromString
 004C961E    mov         eax,dword ptr [ebp-18]
 004C9621    call        GetStrMoyArrendit
 004C9626    fld         tbyte ptr [ebp-10]
 004C9629    faddp       st(1),st
 004C962B    fstp        tbyte ptr [ebp-10]
 004C962E    wait
 004C962F    add         byte ptr [ebp-12],1
>004C9633    jae         004C963A
 004C9635    call        @IntOver
 004C963A    xor         eax,eax
 004C963C    pop         edx
 004C963D    pop         ecx
 004C963E    pop         ecx
 004C963F    mov         dword ptr fs:[eax],edx
>004C9642    jmp         004C9661
>004C9644    jmp         @HandleOnException
 004C9649    dd          1
 004C964D    dd          00409B50;EConvertError
 004C9651    dd          004C9655
 004C9655    call        @DoneExcept
>004C965A    jmp         004C9661
 004C965C    call        @DoneExcept
 004C9661    inc         byte ptr [ebp-11]
 004C9664    dec         byte ptr [ebp-13]
>004C9667    jne         004C95E9
 004C9669    cmp         byte ptr [ebp-12],0
>004C966D    je          004C96D1
 004C966F    mov         eax,dword ptr [ebp+8]
 004C9672    push        eax
 004C9673    xor         eax,eax
 004C9675    mov         al,byte ptr [ebp-12]
 004C9678    mov         dword ptr [ebp-120],eax
 004C967E    fild        dword ptr [ebp-120]
 004C9684    fld         tbyte ptr [ebp-10]
 004C9687    fdivrp      st(1),st
 004C9689    add         esp,0FFFFFFF4
 004C968C    fstp        tbyte ptr [esp]
 004C968F    wait
 004C9690    lea         eax,[ebp-11C]
 004C9696    push        eax
 004C9697    mov         ecx,2
 004C969C    mov         edx,12
 004C96A1    mov         al,2
 004C96A3    call        FloatToStrF
 004C96A8    mov         edx,dword ptr [ebp-11C]
 004C96AE    lea         eax,[ebp-118]
 004C96B4    mov         ecx,0FF
 004C96B9    call        @LStrToString
 004C96BE    lea         edx,[ebp-118]
 004C96C4    mov         cl,byte ptr [ebp-6]
 004C96C7    mov         eax,dword ptr [ebp-4]
 004C96CA    call        004C2410
>004C96CF    jmp         004C96D7
 004C96D1    mov         eax,dword ptr [ebp+8]
 004C96D4    mov         byte ptr [eax],0
 004C96D7    xor         eax,eax
 004C96D9    pop         edx
 004C96DA    pop         ecx
 004C96DB    pop         ecx
 004C96DC    mov         dword ptr fs:[eax],edx
 004C96DF    push        4C96FF
 004C96E4    lea         eax,[ebp-11C]
 004C96EA    call        @LStrClr
 004C96EF    lea         eax,[ebp-18]
 004C96F2    call        @LStrClr
 004C96F7    ret
>004C96F8    jmp         @HandleFinally
>004C96FD    jmp         004C96E4
 004C96FF    pop         edi
 004C9700    pop         esi
 004C9701    pop         ebx
 004C9702    mov         esp,ebp
 004C9704    pop         ebp
 004C9705    ret         4*}
end;

//004C9708
procedure TFichierCdn.sub_004C9708(a:integer; b:integer; buf:string);
begin
{ 004C9708    push        ebp
 004C9709    mov         ebp,esp
 004C970B    add         esp,0FFFFFEE0
 004C9711    push        ebx
 004C9712    push        esi
 004C9713    push        edi
 004C9714    xor         ebx,ebx
 004C9716    mov         dword ptr [ebp-11C],ebx
 004C971C    mov         dword ptr [ebp-18],ebx
 004C971F    mov         byte ptr [ebp-6],cl
 004C9722    mov         byte ptr [ebp-5],dl
 004C9725    mov         dword ptr [ebp-4],eax
 004C9728    xor         eax,eax
 004C972A    push        ebp
 004C972B    push        4C986C
 004C9730    push        dword ptr fs:[eax]
 004C9733    mov         dword ptr fs:[eax],esp
 004C9736    xor         eax,eax
 004C9738    mov         dword ptr [ebp-10],eax
 004C973B    mov         dword ptr [ebp-0C],eax
 004C973E    mov         word ptr [ebp-8],ax
 004C9742    mov         byte ptr [ebp-12],0
 004C9746    mov         eax,dword ptr [ebp-4]
 004C9749    call        004BE9E0
 004C974E    test        al,al
>004C9750    jbe         004C97DD
 004C9756    mov         byte ptr [ebp-13],al
 004C9759    mov         byte ptr [ebp-11],1
 004C975D    xor         eax,eax
 004C975F    push        ebp
 004C9760    push        4C97B8
 004C9765    push        dword ptr fs:[eax]
 004C9768    mov         dword ptr fs:[eax],esp
 004C976B    mov         al,byte ptr [ebp-6]
 004C976E    push        eax
 004C976F    lea         eax,[ebp-118]
 004C9775    push        eax
 004C9776    mov         cl,byte ptr [ebp-5]
 004C9779    mov         dl,byte ptr [ebp-11]
 004C977C    mov         eax,dword ptr [ebp-4]
 004C977F    call        004C9280
 004C9784    lea         edx,[ebp-118]
 004C978A    lea         eax,[ebp-18]
 004C978D    call        @LStrFromString
 004C9792    mov         eax,dword ptr [ebp-18]
 004C9795    call        GetStrMoyArrendit
 004C979A    fld         tbyte ptr [ebp-10]
 004C979D    faddp       st(1),st
 004C979F    fstp        tbyte ptr [ebp-10]
 004C97A2    wait
 004C97A3    add         byte ptr [ebp-12],1
>004C97A7    jae         004C97AE
 004C97A9    call        @IntOver
 004C97AE    xor         eax,eax
 004C97B0    pop         edx
 004C97B1    pop         ecx
 004C97B2    pop         ecx
 004C97B3    mov         dword ptr fs:[eax],edx
>004C97B6    jmp         004C97D5
>004C97B8    jmp         @HandleOnException
 004C97BD    dd          1
 004C97C1    dd          00409B50;EConvertError
 004C97C5    dd          004C97C9
 004C97C9    call        @DoneExcept
>004C97CE    jmp         004C97D5
 004C97D0    call        @DoneExcept
 004C97D5    inc         byte ptr [ebp-11]
 004C97D8    dec         byte ptr [ebp-13]
>004C97DB    jne         004C975D
 004C97DD    cmp         byte ptr [ebp-12],0
>004C97E1    je          004C9845
 004C97E3    mov         eax,dword ptr [ebp+8]
 004C97E6    push        eax
 004C97E7    xor         eax,eax
 004C97E9    mov         al,byte ptr [ebp-12]
 004C97EC    mov         dword ptr [ebp-120],eax
 004C97F2    fild        dword ptr [ebp-120]
 004C97F8    fld         tbyte ptr [ebp-10]
 004C97FB    fdivrp      st(1),st
 004C97FD    add         esp,0FFFFFFF4
 004C9800    fstp        tbyte ptr [esp]
 004C9803    wait
 004C9804    lea         eax,[ebp-11C]
 004C980A    push        eax
 004C980B    mov         ecx,2
 004C9810    mov         edx,12
 004C9815    mov         al,2
 004C9817    call        FloatToStrF
 004C981C    mov         edx,dword ptr [ebp-11C]
 004C9822    lea         eax,[ebp-118]
 004C9828    mov         ecx,0FF
 004C982D    call        @LStrToString
 004C9832    lea         edx,[ebp-118]
 004C9838    mov         cl,byte ptr [ebp-6]
 004C983B    mov         eax,dword ptr [ebp-4]
 004C983E    call        004C2410
>004C9843    jmp         004C984B
 004C9845    mov         eax,dword ptr [ebp+8]
 004C9848    mov         byte ptr [eax],0
 004C984B    xor         eax,eax
 004C984D    pop         edx
 004C984E    pop         ecx
 004C984F    pop         ecx
 004C9850    mov         dword ptr fs:[eax],edx
 004C9853    push        4C9873
 004C9858    lea         eax,[ebp-11C]
 004C985E    call        @LStrClr
 004C9863    lea         eax,[ebp-18]
 004C9866    call        @LStrClr
 004C986B    ret
>004C986C    jmp         @HandleFinally
>004C9871    jmp         004C9858
 004C9873    pop         edi
 004C9874    pop         esi
 004C9875    pop         ebx
 004C9876    mov         esp,ebp
 004C9878    pop         ebp
 004C9879    ret         4}
end;

end.