{***********************************************************
* Version Original V0.03 build 1                           *
* Decompiled by Houidef AEK v 2021-05-16 @ 05:36 PM        *
* The disassembly process : 90%                           *
************************************************************}
unit UFichierCdn;

interface
  {$I Cdn2.INC}
uses
  Forms,SysUtils, Classes, UPeriodes, Dialogs, FFluxCdn, Grids, Windows, unit111, UTypeBulletins, 
  UEleves,Constantes , UEnregistrement,QSort;

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
    FPeriodes:TPeriodes;//f918
    FEleves:TEleves; //f91C
    FNbrModules:TStringList;//f920
    FData:TStringGrid;//f924
    FPointsAdditif:TStringList;//f928
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
    procedure GetEleveName(iEleve:dword; var b:string);//004BEA64
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
    function GetCols__(I:dword; J:dword):TStrings;//004BEB40
    procedure GetData_V00(Periode:dword; ACol:dword; ARow:dword;var data:string);//004BEC04
    procedure GetModuleName__v(Periode:dword; var NameModule:string; NumModule:integer);//004BED04 Determine le Nom de Module
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
    procedure AddColone(iPeriode:dword; b:string; intitule:string; d:string; e:string; f:string; g:string; h:string; OralEcrit:boolean);//004BF7F0
    procedure _InsertColone(a:dword; b:dword);//004BFC58
    procedure MoveColone(PeriodeSource:integer; ACol:integer; PeriodeDest:integer);//004BFD68
    procedure sub_004C0070(a:dword);//004C0070
    procedure DecModules(a:dword);//004C0134
    procedure SaveCdn(a:AnsiString; iOldVersion:boolean; c:string; BulletinsDefaut:boolean);//004C01F8   sauvgrader fichier 
    procedure _SetStrNote(Periode:dword; ACol:dword; ARow:dword; Value:string);//004C0C88
    procedure _SetStrNote0(periode:dword; ACol:dword; e:string);//004C0E24
    procedure _SetStrNote16(periode:dword; ACol:dword; c:string);//004C0E5C
    procedure _SetStrNote15(Periode:dword; ACol :dword; d:string);//004C0EC8
    procedure _SetStrNote17(Periode:dword; ACol:dword; d:string);//004C0F34
    function _SetStrNote13(a:dword; b:dword; c:string):dword;//004C0FA0
    procedure AddNoteToPeriode(Periode:dword; ACol:dword; ARow:dword; data:string);//004C1074
    procedure DeleteEleve(a:dword);//004C1158
    procedure sub_004C14C8(b:String; c:string; d:string; a:boolean);//004C14C8
    procedure SetEleve_v2(NEleve:dword; NomPrenom:string; Redoublant:boolean; DateDeNaissance:string);//004C1954
    procedure GetMoyBrute(Periode:dword; ARow:dword; var Moy:string);//004C213C
    procedure GetStrMoyArrendit(a:String; {b:Integer;}  ArrendirMoyennes:dword; var Moy:string);//004C2410
    procedure GetMoyArrondie(Periode:dword; ARow:dword; ArrondirMoyennes:dword; var RMoy:string);//004C2AF4
    procedure GetPointsAdditif(Periode:dword; ARow:dword; var c:string);//004C2B38
    procedure GetAppreciations(a:dword; b:dword; c:dword;var d:string);//004C2C00
    procedure GetMoyBulletin(Periode:dword; ARow:dword; ArrondirMoyennes:dword; var Moy:string);//004C2D10
    procedure SetStrComptMoy(Str : string; Periode:byte; J:integer; var Value:string);//004C2E60
    function sub_004C3134(a:byte):TStringList;//004C3134
    function GetAllDataEleve(a:integer; b:integer; c:integer;d:integer;e:string):string;//004C32B4
    procedure SetPointsAdditif(Periode:integer; ARow:integer; str:string);//004C3678
    procedure SetAppreciations___(b:dword; c:dword; d:string; e:dword);//004C3798
    function GetEnseignant() : string;//004C3908
    procedure SetEnseignant(a:string);//004C3920
    function IsModified:boolean;//004C3954
    procedure __GetStrMin(Periode:dword; var s:string; ACol:dword);//004C3958
    procedure __GetStrMax(Periode:dword; var s:string; ACol:dword);//004C3B54
    procedure GetElevesPresents(Periode:dword; ACol:dword; var c:string);//004C3D1C
    procedure GetNotesInfMoy_VX(Periode:dword; ACol:dword;var b:string);//004C3EA4
    procedure GetMoyenne_vv(Periode:dword;var b:string; ACol:dword);//004C40D4
    procedure GetEcartType(Periode:dword; ACol:dword; var s:string);//004C42D4
    procedure GetNotesInfMoyClasse_VX(Periode:dword; ACol:dword; var s:string);//004C451C
    function GetShowPeriode(Periode:dword):boolean;//004C4778
    procedure SetShowPeriode(Periode:dword;b:boolean);//004C4784
    function NbrModulesTot:dword;//004C4790
    procedure sub_004C47E8(index1:integer; index2:integer; str:string);//004C47E8
    procedure sub_004C48BC(index1:integer; index2:integer; str:string);//004C48BC
    procedure sub_004C4990(index1:integer; index2:integer);//004C4990
    procedure sub_004C4B20(index1:integer; index2:integer);//004C4B20
    procedure sub_004C4CBC(a:TStringList);//004C4CBC
    procedure SetTypePeriode__(a:string);//004C4CC8
    function sub_004C4D44:dword;//004C4D44
    function GetAllDataPeriode(Periode:integer; AscDes:integer; ArrondirMoyennes:dword ; arrondirMoyennesAnnuelles : dword ; typeMoyennesAnnuelles:dword):Tstrings;//004C5078
    procedure GetStrMinMoy(Periode:dword; ARow:dword; var S:String);//004C5404
    procedure GetMaxNotePeriode(Periode:integer; Arow:dword ;  buf:string);//004C56C0
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
    function IsRedoublant( b:dword):boolean;//004C8E50
    function SetEcritOral(a:integer; b:integer; c:boolean):integer;//004C8EC8
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
        GetEleveName(I, buf);
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
    OpenFile;
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
    FPeriodes.GetTypePeriode_(buf);
    result := buf;
end;//0


//004BE9E0
function TFichierCdn.GetNbrePeriodes:integer; //Nbre Periodes
begin
  //004BE9E0
  result := FPeriodes.GetNbrePeriodes;
end;

//004BE9EC
function TFichierCdn.GetPeriodName(iPeriod:dword) : string;
var
  buf:string;
begin//0
  //004BE9EC
    FPeriodes.GetPeriodName(iPeriod, buf);
     result:=buf;
end;//0

//004BEA4C
function TFichierCdn.GetPeriodesList_:TStringList;
begin//0
  //004BEA4C
  Result := FPeriodes.GetPeriodesListx;
end;//0


//004BEA58
function TFichierCdn.EleveCount:integer;
begin
  result := FEleves.EleveCount;
end;

//004BEA64
procedure TFichierCdn.GetEleveName(iEleve:dword; var b:string);
begin//0
  //004BEA64
    FEleves.EleveItem(iEleve, b);
end;

//004BEAC4
function TFichierCdn.EleveLists:TStringList;
begin//0
  //004BEAC4
  result := FEleves.EleveLists;
end;//0


//004BEAD0
function TFichierCdn.GetNbreModules(y:byte):integer; //Nbre des Modules dans chaque Periode
begin//0
  //004BEAD0..004BEAE9
    result :=  StrToInt(FNbrModules[y - 1]);
end;

//004BEB40
function TFichierCdn.GetCols__(I:dword; J:dword):TStrings;
var
  k,Modules:Integer;
begin//0
  //004BEB40
    Modules := 0;
      for k := 1 to I - 1 do //004BEB79
      begin//004BEB7E
        Modules := Modules +StrToInt(FNbrModules[k - 1]);
      end;//3
    result := FData.Cols[Modules- 1 + J];   
end;

//004BEC04
procedure TFichierCdn.GetData_V00(Periode:dword; ACol:dword; ARow:dword;var data:string);
var
  I: integer;
  Modules : integer;
begin//0
  //004BEC04
    Modules := 0;
      for I := 1 to Periode - 1 do //004BEC47
      begin//3
        //004BEC4E
        Modules := StrToInt(FNbrModules[I - 1])+ Modules;
      end;//3
    data := FData.Cells[Modules - 1 + ACol, ARow];

end;

//004BED04
procedure TFichierCdn.GetModuleName__v(Periode:dword; var NameModule:string; NumModule:integer); // Nom de Module
begin//0
  GetData_V00(Periode, NumModule, 0, NameModule);
end;

//004BED2C
procedure TFichierCdn.GetStrNoteSur(Periode:dword; ARow:dword;var S:string);
begin//0
  //004BED2C
  GetData_V00(Periode, ARow, EleveCount + $0B {gvar_006178FB},S );
end;//0


//004BED7C
procedure TFichierCdn.GetStrCoeff(Periode:dword; ARow:dword; var S:string);
begin//0
  //004BED7C
  GetData_V00(Periode, ARow, EleveCount + $0C {gvar_006178FC},S );
end;//0

//004BEDCC
procedure TFichierCdn.GetStrComptMoy(Periode:dword; ARow:dword; var S:string);
begin//0
  //004BEDCC
  GetData_V00(Periode, ARow, EleveCount + $0D{gvar_006178FD},S );
end;//0


//004BEE1C
procedure TFichierCdn.GetStrDate(Periode:dword; ARow:dword; var S:string);
begin//0
  //004BEE1C
  GetData_V00(Periode, ARow, EleveCount + $0E {gvar_006178FE}, S);
end;//0


//004BEE6C
procedure TFichierCdn.GetStrCommentaire(Periode:dword; ARow:dword; var S:string);
begin
 GetData_V00(Periode, ARow, EleveCount + $0F {gvar_006178FF}, S);

end;

//004BEEBC
procedure TFichierCdn.GetStrTypeNote(Periode:dword; ARow:dword; var S:string);
begin
 GetData_V00(Periode, ARow, EleveCount + $10 {gvar_00617900}, S);
end;

//004BEF0C
procedure TFichierCdn.GetStrOraleEcrit(Periode:dword; ARow:dword; var S:string);
begin
 GetData_V00(Periode, ARow, EleveCount + $11 {gvar_00617901}, S);
end;

//004BEF5C
procedure TFichierCdn._GetStrNote(Periode:dword; ACol:dword; ARow:dword;var data:string);
begin//0
  //004BEF5C
  GetData_V00(Periode, ACol, ARow, data);
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
    for I := 1 to NbrModulesTot do //004BF138
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
  FPointsAdditif.Clear;
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
        FPointsAdditif.Add('');
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
    FPeriodes.SetTypePeriode__(TypePeriode);
    FPeriodes.SetPeriodes(__GetPeriodes(TypePeriode));
    STypeBulletins.SetTypeBulletins(TypeBulletins);
    STypeBulletins.AddNomBulletinsList(SetNomsbulletins(TypeBulletins));
    FNbrModules.Clear;
      for I := 1 to __GetPeriodes(TypePeriode).count do //004BF384
      begin//3
        //004BF387
        FNbrModules.Add('0');
      end;//3
    FPointsAdditif.Clear;
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
      for I := 1 to NbrModulesTot do
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
          FPointsAdditif.Add('');
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
        FPeriodes.SetShowPeriode(I, true);
      end;//3
end;//0


//004BF64C
procedure TFichierCdn.SetEleveListsV(a:TStringList);
var
 I,J,K:integer;
begin//0
  //004BF64C
  FEleves.CopyEleve(a);
  FAttributs.Clear;
    //004BF689
    for J := 1 to 2 * GetNbrePeriodes  do //004BF689
      for I := 1 to 50 do//004BF68E
        FAttributs.Add('1');

  FAttributs0.Clear;
    
    for I := 1 to NbrModulesTot do //004BF6C2
    begin//2
      //004BF6C2
      for J := 1 to 14 do
      begin//3
        //004BF6C7
        FAttributs0.Add('1');
      end;//3
    end;//2
  FPointsAdditif.Clear;
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
        FPointsAdditif.Add('');
       
        for K := 1 to BulletinsCount do//004BF751
          FAppreciations.Add('');
      end;//3

    for J := 1 to a.count do //004BF775
    begin//2
      //004BF775
      FDateNais.Add('');
      FInfoEleve.Add('1');
      FRedoublant.Add('');
    end;//2
  end;
  FModified := true;
    for I := 1 to GetNbrePeriodes do //004BF7B9
      FPeriodes.SetShowPeriode(I, true);
 
end;//0

//004BF7F0
procedure TFichierCdn.AddColone(iPeriode:dword; b:string; intitule:string; d:string; e:string; f:string; g:string; h:string; OralEcrit:boolean);
var
  TotalModules,I,J,Modules : integer;
begin//0
  //004BF7F0
    TotalModules := 0;
    for I := 1 to GetNbrePeriodes do //004BF8D7
        TotalModules := TotalModules + GetNbreModules(I) ;
    
	FData.ColCount := TotalModules + 1;
    FData.RowCount := EleveCount + gvar_00617902;
    Modules := 0;
    for I := 1 to iPeriode do  //004BF94B
        Modules := Modules + GetNbreModules(I);

	//004BF989
	for I := TotalModules to Modules + 1 do //004BF97F
	  FData.Cols[I] := FData.Cols[I-1];
    
	FData.Cols[Modules].Clear;
    FData.Cells[Modules, 0] := intitule;
     
    I := EleveCount;
	
	
    FData.Cells[Modules, gvar_006178FB + I] :=  d;
    FData.Cells[Modules, gvar_006178FC + I] :=  e;
    FData.Cells[Modules, gvar_006178FD + I] :=  f;
    FData.Cells[Modules, gvar_006178FE + I] :=  g;
    FData.Cells[Modules, gvar_006178FF + I] :=  h;
    FData.Cells[Modules, gvar_00617900 + I] :=  h;
    if (OralEcrit ) then//004BFB61
      FData.Cells[Modules,  gvar_00617901 + I] := 'Oral'
    else //004BFB85
      FData.Cells[Modules,  gvar_00617901 + I] :=  'Ecrit';


    sub_004C0070(iPeriode);
    FModified := true;
    FPeriodes.SetShowPeriode(iPeriode, true);
    FAttributs0.Clear;      
      for J := 1 to NbrModulesTot do//004BFBE3
        for I := 1 to 14 do//004BFBE8
          FAttributs0.Add('1');
	
end;//0

//004BFC58
procedure TFichierCdn._InsertColone(a:dword; b:dword);
var
  I,J:integer;
  buf:string;
begin//0
  //004BFC58
  FData.Cols[b - 1].Clear;
    for I := (b - 1) to FData.ColCount - 2 do
    begin//2
      //004BFCC0
      FData.Cols[I] := FData.Cols[I + 1];
    end;//2
  FData.ColCount := FData.ColCount - 1;
  DecModules(a);
  FModified := true;
  FPeriodes.SetShowPeriode(a, true);
  FAttributs0.Clear;
    for J := 1 to NbrModulesTot do //004BFD34
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
procedure TFichierCdn.MoveColone(PeriodeSource:integer; ACol:integer; PeriodeDest:integer);
var
 NotesList : TStringList;
 I,J,K,lvar_4 : integer;
 NbreModules : integer;
 buf,buf0, buf1, buf2, buf3,buf4, buf5, buf6, buf7 : string;
begin//0
  //004BFD68
    NotesList := TStringList.Create;
      //004BFDB2
      for I := 1 to EleveCount do
      begin//3
        //004BFDB7
        _GetStrNote(PeriodeSource, ACol, I , buf);
        NotesList.Add(buf);
      end;//3
    GetModuleName__v(PeriodeSource, buf0, ACol);
    GetStrNoteSur(PeriodeSource, ACol, buf1);
    GetStrCoeff(PeriodeSource, ACol, buf2);
    GetStrComptMoy(PeriodeSource, ACol, buf3);
    GetStrDate(PeriodeSource, ACol, buf4);
    GetStrCommentaire(PeriodeSource, ACol, buf5);
    GetStrTypeNote(PeriodeSource, ACol, buf6);
    GetStrOraleEcrit(PeriodeSource, ACol, buf7);
    AddColone(PeriodeDest, buf0, buf1, buf2, buf3, buf4,buf5, buf6, (buf7 = 'Oral'));
    lvar_4 := 0;
      //004BFF07
      for I := 1 to  PeriodeSource-1 do//004BFF0C
        lvar_4 := GetNbreModules(I) +lvar_4;
    ACol := ACol + lvar_4;
    _InsertColone(PeriodeSource, ACol);
    NbreModules := GetNbreModules(PeriodeDest);
      //004BFF84
      for I := 1 to EleveCount do//004BFF89
        AddNoteToPeriode(PeriodeDest, NbreModules,I,NotesList[I - 1] );
    FModified := true;
    FPeriodes.SetShowPeriode(PeriodeSource, true);
    NotesList.Destroy();
    FAttributs0.clear;
      //004C000A
      for I := 1 to NbrModulesTot do
      begin//3
        //004C000D
        for J := 1 to 14 do
        begin//4
          //004C000F
          FAttributs0.add('1');
        end;//4
      end;//3
end;//0


//004C0070
procedure TFichierCdn.sub_004C0070(a:dword);
begin//0
  //004C0070
    //004C008E
    FNbrModules[a - 1] :=  IntToStr(StrToInt(FNbrModules[a - 1]) + 1);
    FModified := true;
    FPeriodes.SetShowPeriode(a, true);
end;//0

//004C0134
procedure TFichierCdn.DecModules(a:dword);
begin//0
  //004C0134
    FNbrModules[a - 1] := IntToStr(StrToInt(FNbrModules[a - 1]) - 1);
    FModified := true;
    FPeriodes.SetShowPeriode(a, true);
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
            GetEleveName(I, buf);
            FFluxCdn._write( buf);
        end;//5
        
        for I := 1 to GetNbrePeriodes do //004C04D7
        begin//004C04DE
            FFluxCdn._write(IntToStr(GetNbreModules(I)));
            if (GetNbreModules(I) <= 0) then Continue;
            for J := 1 to GetNbreModules(I) do
            begin//004C0536
              GetModuleName__v(I, buf, J);
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
              GetPointsAdditif(I, J, buf);
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
            if (IsRedoublant(I) ) then
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
  _SetStrNote(periode, ACol,EleveCount + gvar_006178FF,c );
end;//0


//004C0EC8
procedure TFichierCdn._SetStrNote15(Periode:dword; ACol :dword; d:string);
begin//0
  //004C0EC8
  _SetStrNote(Periode, ACol,EleveCount +  gvar_006178FE , d);
end;//0

//004C0F34
procedure TFichierCdn._SetStrNote17(Periode:dword; ACol:dword; d:string);
begin//0
  //004C0F34
  _SetStrNote(Periode, ACol,EleveCount + gvar_00617900 , d);
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
  _SetStrNote(a, b, EleveCount + gvar_006178FD , c);
  FPeriodes.SetShowPeriode(a, true);
end;//0

//004C1074                          
procedure TFichierCdn.AddNoteToPeriode(Periode:dword; ACol:dword; ARow:dword; data:string);
var
  buf:string;
  I :integer;
begin//0
  //004C1074
  for I := 1 to 7 do
  begin//004C109C
    _GetStrNote(Periode, ACol, ARow, buf);
    SetAttributs1(Periode, ACol,I,(buf = data) Xor true);
  end;//1
  _GetStrNote(Periode, ACol, ARow, buf);
  SetAttributs2(Periode, ARow, (buf = data) Xor true);
  _SetStrNote(Periode, ACol, ARow,data);
  FPeriodes.SetShowPeriode(Periode, true);
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
      k := NbrModulesTot ;
      for I := 1 to NbrModulesTot  do //004C119C
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
    FEleves.DeleteEleve(a);
      for I := 1 to GetNbrePeriodes do //004C12A0
      begin//004C12AA
        FPointsAdditif.Delete(EleveCount * (I - 1) + a - 1);
        for J := 1 to BulletinsCount do//004C1308
          FAppreciations.Delete(BulletinsCount * (a - 1) + (I - 1) * EleveCount * BulletinsCount);
      end;//3
    FDateNais.Delete(a - 1);
    FRedoublant.Delete(a - 1);
    FInfoEleve.Delete(a - 1);
    FModified := true;
      //004C13D8
      for I := 1 to GetNbrePeriodes do//004C13E2
        FPeriodes.SetShowPeriode(I, true);
    FAttributs.Clear;
      for I := 1 to 2 * GetNbrePeriodes do//004C142C
      begin //004C142F
        for J := 1 to EleveCount do//004C1442
          FAttributs.Add('1');
      end;//3
    FAttributs0.Clear;
      for I := 1 to NbrModulesTot do //004C1475
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
    FEleves.AddEleve(b); //ajouter l''eleve
    StringList := FEleves.EleveLists;
    index := StringList.indexof(b);
    lvar_18 := TStringList.Create;
      for I := 1 to NbrModulesTot do //004C15CF
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
        FPointsAdditif.Insert(EleveCount * (I - 1)+ index, '');
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
        FPeriodes.SetShowPeriode(I, true);

    lvar_18.destroy;
    FAttributs.Clear;
      for I := 1 to 2 * GetNbrePeriodes do  //004C1899
        for J := 1 to EleveCount do //004C189C
          FAttributs.Add('1');
    
    FAttributs0.Clear;
      for I := 1 to NbrModulesTot do//004C18E5
        for J := 1 to 14 do//004C18EA
          FAttributs0.Add('1');

end;//0
//ici
//004C1954
procedure TFichierCdn.SetEleve_v2(NEleve:dword; NomPrenom:string; Redoublant:boolean; DateDeNaissance:string);
var
  I,Modules, J, K,IndexEleve,M:integer;
  StrList:TStringList;
  buf:string;		
begin//0
  //004C1954
    FEleves.DeleteEleve(NEleve);
    FEleves.AddEleve(NomPrenom);
    IndexEleve := FEleves.EleveLists.indexof(NomPrenom);
    Modules := 0;

      for I := 1 to GetNbrePeriodes  do //004C1A40
      begin//3
        //004C1A4A
        Modules := Modules + StrToInt(FNbrModules[I-1]);
      end;//3
    
    StrList := TStringList.Create;
      for K := 1 to Modules do //004C1A9B
      begin//3
        //004C1AA5
        StrList.clear;
        StrList.AddStrings(FData.Cols[K - 1]);
        StrList.move(NEleve,IndexEleve + 1);
        FData.Cols[K - 1].Clear;
        for I := 1 to StrList.count do //004C1B12
          FData.Cells[K - 1, I - 1] := StrList[I - 1];
      end;//3
    StrList.clear;
    
      for I := 1 to EleveCount  do //004C1B83
      begin//3
        //004C1B8B
        if (I <> NEleve) then Continue;
         GetElevDateNais(I, buf);
		StrList.Add(buf);
      end;//3
    FDateNais.Clear;
    FDateNais.AddStrings(StrList);
    FDateNais.Insert(IndexEleve, DateDeNaissance);
    StrList.clear;

      for I := 1 to EleveCount  do //004C1C2B
      begin//3
        //004C1C33
        if (I <> NEleve) then 
        if (IsRedoublant(I) ) then//004C1C56
          StrList.Add('R')
        else//004C1C65
          StrList.add('');
      end;//3
   
    FRedoublant.Clear;
    FRedoublant.AddStrings(StrList);
    if (Redoublant) then//004C1C94
      FRedoublant.Insert(IndexEleve, 'R')
    else//004C1CA9
      FRedoublant.Insert(IndexEleve, '');
	  
    StrList.clear;
   
      for I := 1 to GetNbrePeriodes do //004C1CD5
      begin//3
        //004C1CDF
        if (BulletinsCount > 0) then 
        for J := 1 to BulletinsCount do
        begin//4
          //004C1CF9
          GetAppreciations(I, NEleve, J, buf);
          StrList.Add(buf);
        end;//4
      end;//3
     M:=0;
      for I := 1 to GetNbrePeriodes do //004C1D6D
      begin//3
        //004C1D77
          for J := 1 to BulletinsCount do //004C1D8E
          begin//5
            //004C1D8E
            FAppreciations.Delete((NEleve - 1) * BulletinsCount + ((I - 1) *  EleveCount * BulletinsCount) - M);
          end;//5        
        M := M + BulletinsCount;
      end;//3
  
      for I := 1 to GetNbrePeriodes do  //004C1E4D
      begin//3
        //004C1E57
        for J := 1 to BulletinsCount  do
        begin//4
          //004C1E75
        FAppreciations.insert(BulletinsCount * IndexEleve + J - 1 + (I - 1) *EleveCount * BulletinsCount, StrList[0]);
        StrList.delete(0);  
        end;//4
      end;//3
    StrList.clear;
      for I := 1 to GetNbrePeriodes  do //004C1F47
      begin//3
        //004C1F51
        GetPointsAdditif(I, NEleve, buf);
        StrList.add(buf);
      end;//3
      for I := 1 to GetNbrePeriodes  do //004C1FA9
      begin//3
        //004C1FB3
        FPointsAdditif.Delete( EleveCount + (NEleve - 1) - (I - 1)* EleveCount);
      end;//3
      for I := 1 to GetNbrePeriodes  do //004C202C
      begin//3
        //004C2036
        FPointsAdditif.Insert((I - 1) * EleveCount + IndexEleve, StrList[0]);
        StrList.delete(0);
      end;//3
      
      for I := 1 to GetNbrePeriodes  do //004C20AF
      //004C20B9
        FPeriodes.SetShowPeriode(I, true);
    defaultAttributs;
    StrList.destroy;
	//004C20FC
end;//0

//004C213C
procedure TFichierCdn.GetMoyBrute(Periode:dword; ARow:dword; var Moy:string); //moyenne brute
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
        //1- Calculer la Somme des moyennes des modules	  
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
procedure TFichierCdn.GetStrMoyArrendit(a:String; ArrendirMoyennes:dword; var Moy:string);
var
  RMoy:real;
  d1: Extended;
  buf:string;
begin//0
//004C2410
   try
      //004C2458
      RMoy := StrToFloat(a);
      case ArrendirMoyennes of
        0: Moy := a; //004C24A0 ne pas arrendir
        1:
        begin//004C24B3
          d1 := INT(RMoy * 10);
          if (ROUND(RMoy * 10 * 10) = 0) then
          begin//004C24F6
            if (d1 / 10 = 0) then//004C250F
              Moy := FloatToStrF(d1 / 10,ffFixed{2}, 18, 0)
			else
              Moy := FloatToStrF(d1 / 10,ffFixed{2}, 18, 1);
          end
		  else
          if (ROUND(RMoy * 10 * 10)   < 5) then//004C2592
            Moy:= FloatToStrF(d1 / 10,ffFixed{2}, 18, 1)
		  else  
            Moy := FloatToStrF((d1 + 1) / 10,ffFixed{2}, 18, 1);
        end;//4
        2:
        begin//004C2618
		
          if (ROUND(RMoy * 100 - TRUNC(RMoy) * 100) - 13 < 0) then
          begin///004C2669
            Moy := FloatToStrF(TRUNC(RMoy),ffFixed{2}, 18, 0);
          end//5
		  else
          if ((ROUND(RMoy * 100 - TRUNC(RMoy) * 100) -13) - 25 < 0) then
          begin//004C26C1
            Moy := FloatToStrF(TRUNC(RMoy) + 0.25,ffFixed{2}, 18, 2);
          end//5
		  else
          if ((ROUND(RMoy * 100 - TRUNC(RMoy) * 100)  -38) - 25 < 0) then
          begin//004C2722
            Moy := FloatToStrF(TRUNC(RMoy) + 0.5,ffFixed{2}, 18, 1);
          end//5
		  else
          if ((ROUND(RMoy * 100 - TRUNC(RMoy) * 100)  -63) - 25 < 0) then
          begin//004C2783
            Moy := FloatToStrF(TRUNC(RMoy) + 0.75,ffFixed{2}, 18, 2);
          end//5
		  else
          if (ROUND(RMoy * 100 - TRUNC(RMoy) * 100) -88 - 12 < 0) then
          begin//004C27E6
            Moy := FloatToStrF(TRUNC(RMoy) + 1,ffFixed{2}, 18, 0);
          end;//5
		  
        end;//4
        3:
        begin//004C2841
          if (ROUND(RMoy * 100 - TRUNC(RMoy) * 100)  - 25 < 0) then//004C2892
            Moy:= FloatToStrF(TRUNC(RMoy),ffFixed{2}, 18, 0)
		  else
          if (ROUND(RMoy * 100 - TRUNC(RMoy) * 100) -25 - 50 < 0) then//004C28EA
            Moy := FloatToStrF(TRUNC(RMoy) + 0.5,ffFixed{2}, 18, 1)
		  else
          if (ROUND(RMoy * 100 - TRUNC(RMoy) * 100) -75 - 25 < 0) then//004C294D
            Moy := FloatToStrF(TRUNC(RMoy) + 1,ffFixed{2}, 18, 0);
        end;//4
        4:
        begin//004C29A8
          GetStrMoyArrendit(a,3,buf);
          if (StrToFloat(buf) < RMoy) then
          begin//004C2A04
            Moy := FloatToStrF(RMoy + 0.5,ffFixed{2}, 18, 1);
          end//5
		  else
          GetStrMoyArrendit(a,3,Moy);
        end;//4
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
procedure TFichierCdn.GetMoyArrondie(Periode:dword; ARow:dword; ArrondirMoyennes:dword; var RMoy:string);
begin//0
  //004C2AF4
  GetMoyBrute(Periode, ARow,RMoy); //calculer la moyenne brute
  GetStrMoyArrendit(RMoy, ArrondirMoyennes,RMoy); // Arrondir la Moyenne
end;

//004C2B38
procedure TFichierCdn.GetPointsAdditif(Periode:dword; ARow:dword; var c:string);
var
  count:integer;
begin//0
  //004C2B38..004C2B5C
    count :=byte(EleveCount) * (Periode - 1) + ARow - 1;
    if (count >= FPointsAdditif.Count) then
    begin//004C2BAB
      FPointsAdditif.Insert(count, '');
    end;//2
    c := FPointsAdditif[count];
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
procedure TFichierCdn.GetMoyBulletin(Periode:dword; ARow:dword; ArrondirMoyennes:dword; var Moy:string);
var
  lvar_101,PointsAdditif : string;
  Moy0 : string;
begin//0
  //004C2D10
  try
    //004C2D45
    GetMoyArrondie(Periode, ARow, ArrondirMoyennes, Moy0);
    try//004C2D6A
      GetPointsAdditif(Periode, ARow, PointsAdditif);
      Moy := FloatToStrF(StrToFloat(Moy0) + StrToFloat(PointsAdditif), ffFixed{2}, 18, 2);
    except//2
      on E:EConvertError do
      begin//3
        //004C2E11
        Moy := Moy0 ; 
      end;//3
    end;//2
  finally//004C2E31
  end;//1
end;//0


//004C2E60
procedure TFichierCdn.SetStrComptMoy(Str : string; Periode:byte; J:integer; var Value:string);
var
  I: integer;
  Buf: string;
  F0,F1,F2,F3,F4 : real;
begin//0
  //004C2E60
  try
    //004C2EAB
      for I := 1 to GetNbreModules(Periode) do
      begin//3
        //004C2EE5
        //push EAX
        GetStrComptMoy(Periode, I, Buf);
        if (Buf = 'oui') then
        begin//4
          //004C2F24
          GetStrTypeNote(Periode, I, Buf);
          if (Buf = Str) then
          begin//5
            //004C2F63
            try
              //004C2F71
              GetStrCoeff(Periode, I, Buf);
              F0 := StrToFloat(Buf);
              GetStrNoteSur(Periode, I, Buf);
              F1 := StrToFloat(Buf);
              _GetStrNote(Periode, I, J, Buf);
              F3 := StrToFloat(Buf) * F0 + F3;
              F4 := F1 * F0 + F4;
            except//6
              on E:EConvertError do
              begin//7
                //004C307C
              end;//7
              on E:EMathError do
              begin//7
                //004C3083
              end;//7
            end;//6
          end;//5
        end;//4
      end;//3
    if (F4 <> 0) then//004C30A9
      Value := FloatToStrF(GetmoyennesSur * F3 / F4 , ffFixed, 18, 0)
	else
      Value := buf;
  finally//1
    //004C310B
  end;//1
end;//0

//004C3134
function TFichierCdn.sub_004C3134(a: byte):TStringList;
var
  lvar_8 : TStringList;
  buf : string;
  I,J : integer;
begin//0
  //004C3134
    if (a < GetNbrePeriodes) then
    begin//2
      //004C318F
      lvar_8 := TStringList.Create;
      lvar_8.Sorted := True;
      lvar_8.Duplicates := dupAccept; //false;
 
        for I := 1 to GetNbreModules(a) do
        begin//4
          //004C31C2
          GetStrTypeNote(a, I, buf);
          lvar_8.Add(buf);
        end;//4
      result := lvar_8;
    end//2
	else
	begin
		lvar_8 := TStringList.Create;
		lvar_8.Sorted := True;
		lvar_8.Duplicates := dupAccept; //false;

      for I := 1 to GetNbreModules(a) do
      begin//3
        //004C322E
        for J := 1 to GetNbreModules(I) do
        begin//4
          //004C3241
          GetStrTypeNote(I, J, buf);
          lvar_8.Add(buf);
        end;//4
      end;//3
    end;//2
    result := lvar_8;
end;

//004C32B4
function TFichierCdn.GetAllDataEleve(a:integer; b:integer; c:integer;d:integer;e:string):string;
var
 sum,tot ,F0,F1,F2: real;
 P,I,J:integer;
 buf:string;
begin//0
  //004C32B4
    //004C32FA
    case d of
      0:
      begin//3
        //004C330C
        for P := 1 to GetNbrePeriodes do 
        begin//4
          //004C332C
          try
            //004C3341
            GetMoyBulletin(P, a, b, buf);
            sum := StrToFloat(buf) + sum;
            tot := tot + 1;
          except//5
            on E:EConvertError do
            begin//6
              //004C339F
            end;//6
          end;//5
        end;//4
        if (tot <> 0) then
        begin//4
          //004C33B9
          GetStrMoyArrendit(FloatToStrF((sum / tot),ffFixed, 18,2), c, e);
        end//4
		else
          result := e;
      end;//3
      1:
      begin//3
        //004C3429
          for I := 1 to GetNbrePeriodes do
          begin//5
            //004C3458
            for J := 1 to GetNbreModules(I) do
            begin//6
              //004C3472
              GetStrComptMoy(I, J, buf);
              if (buf = 'oui') then
              begin//7
                //004C34A2
                try
                  //004C34B0
                  _GetStrNote(I, J, a, buf);
                  F0 := StrToFloat(buf);
                  GetStrNoteSur(I, J, buf);
                  F1 := StrToFloat(buf);
                  GetStrNoteSur(I, J, buf);
                  F2 := StrToFloat(buf);
                  sum := F0 * F2 + sum;
                  tot := F1 * F2 + tot;
                except//8
                  on E:Exception do
                  begin//9
                    //004C3590
                  end;//9
                end;//8
              end;//7
            end;//6
          end;//5
        if (tot <> 0) then //004C35C2
          GetStrMoyArrendit(FloatToStrF(GetmoyennesSur * (sum / tot) ,ffFixed, $12{18},2), c, e)
		else
         result := e;
      end;//3
	end;
end;

//004C3678
procedure TFichierCdn.SetPointsAdditif(Periode:integer; ARow:integer; str:string);
var
  PointsAdditif : String;
  indice : integer;
begin//0
  //004C3678
  try
    //004C36B3
    indice := ARow + (Periode - 1) * EleveCount - 1;
    GetPointsAdditif(Periode, ARow, PointsAdditif);
    if (PointsAdditif <> str) then
    begin//2
      //004C371C
      //FPointsAdditif.insert(indice,str);
      //FPointsAdditif.delete(indice + 1);
	  FPointsAdditif[indice] := str;
      FPeriodes.SetShowPeriode(Periode, true);
	  FModified := true;
    end;//2
  finally//1
    //004C3779
   // lvar_20C := '';
  end;//1
end;//0


//004C3798
procedure TFichierCdn.SetAppreciations___(b:dword; c:dword; d:string; e:dword);
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
      FPeriodes.SetShowPeriode(b, True);
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
procedure TFichierCdn.GetElevesPresents(Periode:dword; ACol:dword; var c:string);
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
procedure TFichierCdn.GetNotesInfMoy_VX(Periode:dword; ACol:dword; var b:string);
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
procedure TFichierCdn.GetMoyenne_vv(Periode:dword;var b:string; ACol:dword);
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
procedure TFichierCdn.GetEcartType(Periode:dword; ACol:dword; var s:string);
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
procedure TFichierCdn.GetNotesInfMoyClasse_VX(Periode:dword; ACol:dword; var s:string);
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

        GetMoyenne_vv(Periode, buf, ACol);

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
function TFichierCdn.GetShowPeriode(Periode:dword):boolean;
begin//0
  //004C4778
  result := FPeriodes.GetShowPeriode(Periode);
end;//0


//004C4784
procedure TFichierCdn.SetShowPeriode(Periode:dword;b:boolean);
begin//0
  //004C4784
  FPeriodes.SetShowPeriode(Periode, b);
end;//0


//004C4790
function TFichierCdn.NbrModulesTot:dword;
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
  FPeriodes.SetPeriodes(a);
end;//0


//004C4CC8
procedure TFichierCdn.SetTypePeriode__(a:string);
begin//0
    FPeriodes.SetTypePeriode__(a);
end;//0

//004C4D44
function TFichierCdn.sub_004C4D44:dword;
begin//0
  //004C4D44
  result := SArrondirMoyennes;
end;//0


//004C5078
function TFichierCdn.GetAllDataPeriode(Periode:integer; AscDes:integer; ArrondirMoyennes:dword ; arrondirMoyennesAnnuelles : dword ; typeMoyennesAnnuelles:dword):Tstrings;
var
 Str0,Str1 : TStringList;
 QSort : TQSort;
 I:integer;
 buf0,buf: string;
begin//0
  try
    //004C50BE
    QSort := TQSort.Create(Nil);
   // QSort.f2C := Self;
   // QSort.f34 := Self;
    Str0 := TStringList.Create;
    Str1 := TStringList.Create;
    //if (Periode  GetNbrePeriodes ) then
    begin//2
      //004C513B
        for I := 1 to EleveCount do
        begin//4
          //004C5162
          if (Periode <= GetNbrePeriodes) then
          begin//5
            //004C516C
            GetMoyBulletin(Periode, I, ArrondirMoyennes, buf0);
            if (buf0 = '') then Continue;
            GetEleveName( I, buf);
            Str0.Add(buf + ' -> ' + buf0);
          end//5
          else
          begin//5
            //004C5216
            GetAllDataEleve(I, ArrondirMoyennes, arrondirMoyennesAnnuelles, typeMoyennesAnnuelles, buf0);
            if (buf0 = '') then Continue;
            GetEleveName(I, buf);
            Str0.Add(buf + ' -> ' + buf0);
          end;//5
        end;//4
      QSort.{sub_004B8B48}Sort(Str0,Str0.Count);
      if (AscDes = 0) then
      begin//3
        //004C52DE
        Str0.Insert(0, 'Classement ascendant');
        Str1.AddStrings(Str0);
      end//3
      else
      begin//3
        //004C52F8
          for I := 0 to Str0.Count - 1 do//004C530F
          begin//5
            //004C5317
            Str1.Add(Str0[Str0.Count - 1 - I]);
          end;//5
        Str1.Insert(0, 'Classement descendant');
      end;//3
      Str0.Destroy();
      QSort.Destroy();
      result := Str1;
    end;//2
  finally//1
    //004C5387
  end;//1
  result := Str1;
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
      GetModuleName__v(Periode, Buf, NumModule);
      S := FloatToStrF(NoteBasse,ffFixed{2}, 18, 2) + '/' + IntToStr(GetmoyennesSur) + ' (' + Buf + ')';
    end
	else 
    S := '';//??????
end;//0


//004C56C0
procedure TFichierCdn.GetMaxNotePeriode(Periode:integer; Arow:dword ;  buf:string);
begin//0
  //004C56C0
  (*
  lvar_6 := AscDes;
  lvar_5 := Periode;
  lvar_4 := Self;
  try
    //004C5706
    EAX := 0;
    lvar_38 := EAX;
    EAX := 0;
    lvar_3C := EAX;
    EAX := sub_004B9E48;
    lvar_44 := sub_004B9E48;
    lvar_30 := lvar_44;
    EAX := 0;
    lvar_10 := EAX;
    lvar_C := EAX;
    lvar_8 := EAX;
    EDX := Periode;
    EAX := Self;
    EAX := sub_004BEAD0(Periode);
    EAX := EAX And $FF{255};//sub_004BEAD0(Periode) And $FF{255}
    if (EAX{sub_004BEAD0(Periode) And $FF{255}} > 0) then
    begin//2
      //004C5743
      lvar_40 := sub_004BEAD0(Periode) And $FF{255};
      lvar_34 := 1;
      try
        //004C575B
        EAX := AscDes;
        //push EAX
        //push EAX
        EBX := lvar_34;
        ECX := EBX;//lvar_34
        EDX := Periode;
        sub_004BEF5C(Periode, lvar_34, AscDes{EAX}, lvar_148);
        EAX := lvar_48;
        lvar_154 := StrToFloat(lvar_48);
        //push EAX
        EAX := lvar_34;
        ECX := EBX;//lvar_34
        EDX := Periode;
        EAX := Self;
        sub_004BED2C(Periode, lvar_34, lvar_148);
        EAX := lvar_158;
        EAX := StrToInt(lvar_158);
        lvar_44 := StrToInt(lvar_158);
        lvar_20 := lvar_154{lvar_154} / lvar_44{lvar_44} * lvar_30{lvar_30};
        if (lvar_10 < lvar_20) then
        begin//4
          //004C5803
          lvar_10 := lvar_20;
          lvar_C := lvar_1C;
          lvar_8 := lvar_18;
          lvar_3C := lvar_34;
        end;//4
        lvar_38 := lvar_38 + 1;
      except//3
        on E:EConvertError do
        begin//4
          //004C5843
        end;//4
      end;//3
      lvar_34 := lvar_34 + 1;
      lvar_40 := lvar_40 - 1;
      if ( ? ) then
      begin//3
        //004C585B
      end;//3
    end;//2
    if (lvar_38 <> 0) then
    begin//2
      //004C5865
      EAX := lvar_8;
      ECX := 2;
      EDX := $12{18};
      EAX := 2;
      lvar_160 := FloatToStrF(EAX{2}, {$12{18}}, {2}, lvar_10);
      lvar_164 := IntToStr(sub_004B9E48);
      //push EAX
      ECX := lvar_3C;
      EDX := Periode;
      EAX := Self;
      sub_004BED04(Periode, lvar_148, lvar_3C);
       := ;
      EDX := 6;
      lvar_15C := lvar_160 + '/' + lvar_164 + ' (' + lvar_168 + ')';
      EDX := lvar_15C;
      EAX := typeMoyennesAnnuelles;
      ECX := $FF{255};
       := lvar_15C;
      Exit;
    end;//2
    EAX := typeMoyennesAnnuelles;
    typeMoyennesAnnuelles[1] := '
  finally//1
    //004C5924
  end;//1
  *)
end;//0


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
      FPointsAdditif := TStringList.Create;
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
          FPointsAdditif.Add('');
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
		  FEleves.AddEleve(FFluxCdn._read);
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
              AddNoteToPeriode(1, I, J,buf )
            else//004C6CDE
              AddNoteToPeriode(1, I, J,buf );
          end;//5
        end;//4
      user := GetUsersList;
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
	I,J,K:integer;
begin//0
  //004C6E9C
    try
      //004C6EDF
      if ((CarnetNotesVersion <> '2.0')  //004C6EF8
        and (CarnetNotesVersion <> '2.1') //004C6F11
          and (CarnetNotesVersion <> '2.2') //004C6F2A
            and (CarnetNotesVersion <> '2.3'))then //004C6F43
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
      FPeriodes.SetTypePeriode__(FFluxCdn._Read); //periodes
      Periodes := StrToInt(FFluxCdn._Read);
      StringList := TStringList.Create;
        for I := 1 to Periodes do//004C714E
        begin//004C7151
          buf := FFluxCdn._Read;
          StringList.Add(buf);
        end;//4
      FPeriodes.SetPeriodes(StringList);
      StringList.Free;
      NbrEleves := StrToInt(FFluxCdn._Read);
        for I := 1 to NbrEleves do //004C71DF //ajouter liste eleves
          FEleves.AddEleve(FFluxCdn._Read);

      FData.FixedCols := 0;
      FData.FixedRows := 0; 
      FData.RowCount := NbrEleves + $12;{+ gvar_00617902};
      FData.ColCount := 1;
      FNbrModules := TStringList.Create;
      FAttributs0 := TStringList.Create;
       //:= TStringList.Create
      lvar_9 := 0;
        for K := 1 to Periodes do //004C72AB     'nbre_org'//Periodes
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
	  
      FAttributs := TStringList.Create;//004C7669
      
        for I := 1 to 2*Periodes do //004C769B
        begin//004C769E
          for lvar_D := 1 to  NbrEleves do//004C76A8
            FAttributs.Add('1'); //$4C826C
        end;//4
      
      FPointsAdditif := TStringList.Create;
      FAppreciations := TStringList.Create;
      FDateNais := TStringList.Create;
      FRedoublant := TStringList.Create;
      FInfoEleve := TStringList.Create;
      FClasses := TStringList.Create;
	  
      if (CarnetNotesVersion = '2.0') then
      begin //004C776
        FClasses.Add('classe');
		for I := 1 to Periodes do //004C7775
		begin//004C7778
			for J := 1 to NbrEleves do
			begin//004C7782
			  FPointsAdditif.Add(FFluxCdn._Read);
			end;//6
		end;//5
        Enseignant := FFluxCdn._Read;
        SArrondirMoyennes := StrToInt(FFluxCdn._Read);
        for I := 1 to Periodes do //004C782F
        begin//5
            for J := 1 to NbrEleves do //004C7832
            begin //004C783C
              FAppreciations.Add(FFluxCdn._Read);
            end;//6
        end;  
        for I := 1 to NbrEleves do //004C7883
        begin//004C7886
            FDateNais.Add('');
            FRedoublant.Add('');
            FInfoEleve.Add('1'); 
        end;//5 
      end//3
      else if (CarnetNotesVersion = '2.1') then
      begin//004C78DB
        FClasses.Add('classe'); //$4C8278;
          for I := 1 to  Periodes do //004C78F9
          begin//5
            for J := 1 to NbrEleves do //004C78FC
            begin //004C7906
              FPointsAdditif.Add(FFluxCdn._Read);
              FAppreciations.Add(FFluxCdn._Read);
            end;//6
          end;//5
          for I := 1 to NbrEleves do //004C7983
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
	      
          for I := 1 to Periodes do //004C7AA8
          begin//5
            for J := 1 to NbrEleves do //004C7AAB
            begin//004C7AB5
              FPointsAdditif.Add(FFluxCdn._Read);
            end;//6
          end;//5
		
        ITemp := StrToInt(FFluxCdn._Read);
          for I := 1 to ITemp do //004C7B32
          begin//004C7B35
            FClasses.Add(FFluxCdn._Read);
          end;//5
        
        buf := FFluxCdn._Read;
        //SetTypeBulletins(STypeBulletins, buf);
        ITemp := StrToInt(FFluxCdn._Read);
        
        StringListTemp := TStringList.Create;
		
          for I := 1 to ITemp do //004C7BF4
          begin//004C7BF7
            StringListTemp.Add(FFluxCdn._Read);
          end;//5
        STypeBulletins.AddNomBulletinsList(StringListTemp);
        StringListTemp.Free;
          for I := 1 to Periodes do //004C7C49
          begin//5
            for J := 1 to NbrEleves do //004C7C4C
            begin//004C7C56
              for K := 1 to ITemp do
              begin//004C7C5D
                FAppreciations.Add(FFluxCdn._Read);
              end;//7
            end;//6
          end;//5
          for I := 1 to NbrEleves do //004C7CAD
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
          for I := 1 to Periodes do //004C7E1F
          begin//5
            for J := 1 to  NbrEleves do //004C7E22
            begin//004C7E2C
              FPointsAdditif.Add(FFluxCdn._Read);
            end;//6
          end;//5
        
        ITemp := StrToInt(FFluxCdn._Read);

          for I := 1 to ITemp do //004C7EA9
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
          for I := 1 to Periodes do //004C7FC0
          begin//004C7FC3
            for J := 1 to NbrEleves do
            begin//004C7FCD
              for K := 1 to ITemp do
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
    FPeriodes := TPeriodes.Create;
    FEleves := TEleves.Create;
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

    FPointsAdditif := TStringList.Create;
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
function TFichierCdn.IsRedoublant( b:dword):boolean; //redoublant
begin
  //004C8E50
    result := (FRedoublant[b - 1] = 'R');
end;

//004C8EC8
function TFichierCdn.SetEcritOral(a:integer; b:integer; c:boolean):integer;
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