{***********************************************************
* Version Original V0.03 build 1                           *
* Decompiled by HOUIDEF AEK v 12:20 mercredi, août 29, 2018*
* The disassembly process : 100%                            *
************************************************************}
unit UFichierCdn;

interface
 {$I Cdn2.INC}
uses
  Forms,SysUtils, Classes, UPeriodes, Dialogs, FFluxCdn, Grids, Windows, UBiblio, UTypeBulletins,
  UEleves,QSort,constantes,UEnregistrement;

type
  TFichierCdn = class(TObject)
  protected
    FluxCdn:TFluxCdn;//f4
    FModified:boolean;//f8  //Status de l'enregistrement du fichier
    FFileName:TFileName;//fC
    FTypeVersion:string;//f10
    CarnetNotesVersion:string;//f110
    FSignature:string;//f210
    FEnseignant:string;//f310
    FClasseName:string;//f410
    FEtablissment:string;//f510
    FMatiere:string;//f610
    FYear:string;//f710
    FRemarque:string;//f810
    FSArrondirMoyennes:integer;//f910    //arrondirMoyennes
    FSArrondirMoyennesAnnuelles:integer;//f911    //arrondirMoyennesAnnuelles
    FStypeMoyennesAnnuelles:integer;//f912    //typeMoyennesAnnuelles
    FTypeBulletins:TTypeBulletins;//f914
    FPeriode:TPeriodes;//f918
    FEleves:TEleves;// f91C
    FModulesPerPeriode:TStringList;//f920
    FData:TStringGrid;//f924  Notes des eleves
    FPointsAdditif:TStringList;//f928  Points en +/-
    FApreciations:TStringList;//f92C  Apreciations
    FDateNais:TStringList;//f930  Date de naissance
    FLieuNais:TStringList;//f934
    FRedoublants:TStringList;//f938  Les Redoublants
    FClasses:TStringList;//f93C
    f940:TStringList;//f940 Calc lignes ajouter (Nbreleve ...)
    FAttributs:TStringList;//f944
  public
    Succes:boolean;//f948
    OldVersion:boolean;//f949
	{$IFDEF CdnpVer30}
	Eleves : TElevees; //code ajouté version 3.0
	{$ENDIF}
   public
    constructor Create(filename:TFilename{; y:pointer; z:pointer; t:pointer});//004BE7C8
    function NbreEleves:integer;//004BEA58
    function GetEleveName(a:dword):string;//004BEA64
    function IsVersionEtablissement:Boolean;//004C6654
    function OpenFileV0(FluxCdn:TFluxCdn;CarnetNotesVersion:string) :boolean; //old CarnetNotesVersion of carnetdenote//004C66A8
    procedure OpenFileV1(filename:TFileName; b:integer);//004C6E9C // preaser fichier Cdn
    procedure OpenFile(Filename : string);//004C8280
    function GetDateNais(a:dword):string;//004C8BB8
    procedure SaveCdnOldVersion(FluxCdn:TFluxCdn);//004BE5E0
    function GetClasseName:String;//004BE8FC
    function GetEtablissment:string;//004BE914
    function GetMatiereName:string;//004BE92C
    function GetYear:string;//004BE944
    function GetRemarque:string;//004BE95C
    function GetFileName:string;//004BE974
    function GetTypePeriode:string;//004BE988
    function NbrePeriodes:integer;//004BE9E0
    function GetPeriodeName(a:dword):string;//004BE9EC
    function GetPeriodeNameList:TStringList;//004BEA4C
    function GetEleveList:TStringList;//004BEAC4
    function NbrSerieNotes(y:byte):integer;//004BEAD0
    function GetDataCols(I:dword; J:dword):TStrings;//004BEB40
    function GetData(Periode:dword; ACol:dword; ARow:dword):string;//004BEC04
    function GetTitleModule(Periode:dword; NumModule:integer):string;//004BED04 Determine le Nom de Module
    function GetDateNoteSur(Periode:dword; ARow:dword):string;//004BED2C
    function Get_Coefficient(Periode:dword; ARow:dword):string;//004BED7C
    function GetCompteMoyenne(Periode:dword; ARow:dword):string; //004BEDCC
    function GetDataDate(Periode:dword; ARow:dword):string;//004BEE1C
    function GetDataCommentaire(Periode:dword; ARow:dword):string;//004BEE6C
    function GetDataTypeNote(Periode:dword; ARow:dword):string;//004BEEBC
    function GetOralEcrit(Periode:dword; ARow:dword):string;//004BEF0C
    function Get_Sum(Periode:dword; ACol:dword; ARow:dword):string; //004BEF5C
    procedure SetFileName(Value:String);//004BEF84
    procedure SetClasseName(Value:String);//004BEFD0
    procedure SetEtablissment(Value:String);//004BF004
    procedure SetMatiere(Value:String);//004BF038
    procedure SetYear(annee:String);//004BF06C
    procedure SetRemarque(a:String);//004BF0A0
    procedure DataClear;//004BF0D4
    procedure SetBulletinsPeriode(TypePeriode:String; BulletinsTitle:string);//004BF258
    procedure SetPeriodeTraiteList(StringList:TStringList);//004Bf544
    procedure CreerListeEleves(a:TStringList);//004BF64C
    procedure SetData_V1(Periode:dword; Intitule:string; NoteSur:string; Coefficient:string; CompteDansMoy:string; DateJ:string; Commentaire:string; TypeNote:string; OralEcrit:boolean);//004BF7F0
    procedure DeleteColoneData(a:dword; b:dword);//004BFC58
    procedure CreerListeElevesNotes(b:dword; c:dword; d:dword);//004BFD68
    procedure SetPeriodeTraite__Vx01(a:dword);//004C0070
    procedure SetPeriodeTraite__Vx02(a:dword);//004C0134
    procedure SaveToFile__(a:AnsiString; b:boolean; c:string; d:dword);//004C01F8   sauvgrader fichier 
    procedure SetData_V2(Periode:dword; ACol:dword; ARow:dword; d:string);//004C0C88
    procedure SetData_V3(periode:dword; ACol:dword; Value:string);//004C0E24
    procedure SetData_V4(periode:dword; ACol:dword; c:string);//004C0E5C
    procedure SetData_V5(Periode:dword; ACol :dword; d:string);//004C0EC8
    procedure SetData_V6(Periode:dword; ACol:dword; d:string);//004C0F34
    function SetData_V7(a:dword; b:dword; c:string):dword;//004C0FA0
    procedure SetAbs(Periode:dword; ACol:dword; ARow:dword; data:string);//004C1074
    procedure DeleteItem_V00(a:dword);//004C1158
    procedure InsertItem_V00(b:String; c:string; d:string; a:boolean);//004C14C8
    procedure DeleteItem_V01(NEleve:dword; NomPrenom:string; Redoublant:boolean; DateDeNaissance:string);//004C1954
    function CalcMoyBrute(Periode:dword; ARow:dword):string;//004C213C
    procedure Arrondir__(a:String; {b:Integer;}  ArrendirMoyennes:dword; var Moy:string);//004C2410
    function CalcMoyBrute_V03(Periode:dword; ARow:dword; ArrondirMoyennes:dword):string;//004C2AF4
    function GetPointsPlusMoins__V00(Periode:dword; ARow:dword):string;//004C2B38
    procedure GetApreciations(Periode:dword; ARow:dword; ACol:dword;var Value:string);//004C2C00
    function GetMoyennePeriode(Periode:dword; ARow:dword; ArrondirMoyennes:dword):string;//004C2D10
    procedure CalcMoyBrute_V06(a:String; Periode:dword; ARow:dword; var e:string);//004C2E60
    function  GetDataTypeNoteList(Periode:dword):TStringlist;//004C3134
    procedure CalcMoyBrute_V07(ARow:dword; ArrondirMoyennes:dword; ArrondirMoyennes2:dword; d:byte; var Moy:string);//004C32B4
    procedure SetPointsAdditif_X1(Periode:dword; ARow:dword; value:string);//004C3678
    procedure SetApreciations_x1(b:dword; c:dword; d:string; e:dword);//004C3798
    function GetEnseignant:string;//004C3908
    procedure SetEnseignant(Value:string);//004C3920
    function IsModified:boolean;//004C3954
    function GetMinNote__(Periode:dword; ACol:dword):string;//004C3958
    function GetMaxNote__(Periode:dword; ACol:dword):string;//004C3B54
    function GetNombreElevePresents(Periode:dword; ACol:dword):string;//004C3D1C
    function GetPersentNotesInfMoyenne(Periode:dword; ACol:dword):string;//004C3EA4
    function GetMoyenne___(Periode:dword; ACol:dword):string;//004C40D4
    function GetEcartType(Periode:dword; ACol:dword):string;//004C42D4
    function GetPersentNotesInfMoyenneClasse(Periode:dword; ACol:dword):string;//004C451C
    function GetPeriodeTraite(Periode:dword):boolean;//004C4778
    procedure SetPeriodeTraiteList_H01(Periode:dword;b:boolean);//004C4784
    function IndexModule:dword;//004C4790
    procedure SetPeriodeTraiteList_H02(a:dword; b:dword; c:string);//004C47E8
    procedure SetPeriodeTraiteList_H03(a:dword; b:dword; c:string);//004C48BC
    procedure DataCopyCols_H01(a:dword; b:dword);//004C4990
    procedure DataCopyCols_H02(a:dword; b:dword);//004C4B20
    procedure SetPeriodeNameList_Hxx(a:TStringList);//004C4CBC
    procedure SetTypePeriode(Value:string);//004C4CC8
    function GetArrondirMoyennes_t:dword;//004C4D44
    function DataTrier(Periode:dword; Classement:byte; ArrondirMoyennes:dword; ArrondirMoyennes2:dword; e:byte):TStringlist;//004C5078
    procedure GetBasNotePeriode(Periode:dword; ARow:dword; var S:String);//004C5404
    procedure CalcMoyBrute_XX0001(Periode:dword; ARow:dword; var value:string);//004C56C0
    procedure SetAttributs0(periode:dword; ACol:dword; ARow:dword;value:string);//004C5E04
    function GetAttributs0(Periode:dword; ACol:dword; Info:dword):string; //004C5F08
    procedure SetAttributs1(Periode:dword; Module:dword; ARow:dword; d:boolean);//004C5FF8
    function GetAttributs1(periode:dword; ACol:dword; info:dword):Boolean;//004C6030
    procedure SetStrMoy(Periode:dword; ARow:dword; Valeur:string);//004C6080
    procedure GetAttributs_XX(Periode:dword; ARow:dword; var Valeur:string);//004C6144
    procedure SetAttributs__V01(Periode:dword; ARow:dword; c:boolean);//004C61E4
    function GetAttributs__V01(a:dword; b:dword):boolean;//004C62E8
    procedure Initialisation;//004C63C8
    procedure CalcMoyBrute_V06__h(a:String; ARow:dword; c:string);//004C64CC
    function IsVersionPersonnelle:Boolean;//004C6680
    procedure InitClasse;//004C8880
    function Get_SArrondirMoyennesAnnuelles:dword;//004C8AD8
    function Get_StypeMoyennesAnnuelles:dword;//004C8AE0
    function GetbulletinsCount:dword;//004C8AE8
    procedure GetNomsbulletins(a:dword; var b:String);//004C8AF4
    function GetBulletinsTitle:string;//004C8B54
    function GetNomsbulletinsList():TStrings;//004C8BAC
    procedure Set_DateNais(a:dword; Value:String);//004C8C2C
    function GetLieuNais(Eleve:dword):string; //004C8CB8
    function GetClassesCount:dword;//004C8D68
    function GetClasses_(a:dword):string;//004C8D84
    procedure SetRedoublants_(Eleve:dword; b:boolean);//004C8DF8
    function IsRedoublant( b:dword):boolean;//004C8E50
    function SetEcritOral_(b:dword; c:dword; d:boolean):boolean;//004C8EC8
    procedure CalcMoyAndArrondir(Periode:dword; ARow:dword; Arrondir:dword; var s:string);//004C8F6C
    procedure CalcMoyBrute___(Periode:dword; ARow:dword; var s:string);//004C8FB0
    procedure CalcMoyBrute___Vx01(Periode:dword; ARow:dword; Arrondir:dword; var s:string);//004C9280
    procedure CalcMoyBrute___Vx02(Periode:dword; ARow:dword; var s:string);//004C92C4
    procedure CalcMoyBrute___Vx03(a:dword; b:dword; c:string);//004C9594
    procedure CalcMoyBrute___Vx04(ARow:dword; Arrondir:dword; c:string);//004C9708
	procedure CalcMoyBrute___Vx05(Sender:TObject; e1:Word; i:Word; j:dword);
	procedure Comparer_(Sender:TObject; e1:Word; i:Word; j:dword; Result:integer);
	//code Ajouter par Houidef Aek 06/04/2022
	function GetEleveNameComplet(I:integer):string;
	end;


implementation

//004BE5E0
procedure TFichierCdn.SaveCdnOldVersion(FluxCdn:TFluxCdn);
var
  buf:string;
  I:integer;
begin//0
  //004BE5E0..004BE606
    FluxCdn.WriteInFile('Carnet de notes',True);
    FluxCdn.WriteInFile('1.0',True);
    FluxCdn.WriteInFile(GetClasseName,True);
    FluxCdn.WriteInFile(GetEtablissment,True);
    FluxCdn.WriteInFile(GetMatiereName,True);
    FluxCdn.WriteInFile(GetYear,True);
    FluxCdn.WriteInFile('Fichier créé par la version 2.0 pour ceux qui veulent rester à la 1.0 ...',True);
    FluxCdn.WriteInFile(IntToStr(NbreEleves ),True);
      for I := 1 to NbreEleves do //004BE6E2
      begin//004BE6E9
        FluxCdn.WriteInFile( GetEleveName(I),True);
      end;//3
    for I := 1 to 19 do
    begin//004BE720
      FluxCdn.WriteInFile('0',True);
    end;//2
    FluxCdn.Destroy;
end;//0


//004BE7C8
constructor TFichierCdn.Create(Filename:TFilename);
begin//0
	FFilename := Filename;
    inherited Create;
    OpenFile(Filename);
end;

//004BE8FC
function TFichierCdn.GetClasseName:string;
begin
 Result:=FClasseName;
end;

//004BE914
function TFichierCdn.GetEtablissment:string;
begin//0
  result := FEtablissment;
end;//0


//004BE92C
function TFichierCdn.GetMatiereName:string;
begin//0
  result := FMatiere;
end;//0



//004BE944
function TFichierCdn.GetYear:String;
begin//0
  Result := FYear;
end;//0


//004BE95C
function TFichierCdn.GetRemarque:string;
begin//0
  result := FRemarque;
end;//0


//004BE974
Function TFichierCdn.GetFileName:string;
begin//0
  result := FFileName;
end;//0

//end;

//004BE988
function TFichierCdn.GetTypePeriode:string;
begin//0
  //004BE988
    result := FPeriode.GetTypePeriode;
end;//0


//004BE9E0
function TFichierCdn.NbrePeriodes:integer; //Nbre Periodes
begin
  //004BE9E0
  result := FPeriode.PeriodeNameCount;
end;

//004BE9EC
function TFichierCdn.GetPeriodeName(a:dword):string;
begin//0
    result := FPeriode.GetPeriodeName(a);
end;//0

//004BEA4C
function TFichierCdn.GetPeriodeNameList:TStringList;
begin//0
  //004BEA4C
  Result := FPeriode.GetPeriodeNameList;
end;//0


//004BEA58
function TFichierCdn.NbreEleves:integer; //NbrEleves
begin
  result := FEleves.Get_NbreEleves;
end;

//004BEA64
function TFichierCdn.GetEleveName(a:dword):string;
begin//0
  //004BEA64
    result := FEleves.GetEleveName(a);
end;

//004BEAC4
function TFichierCdn.GetEleveList:TStringList;
begin//0
  //004BEAC4
  result := FEleves.GetEleveList;
end;//0


//004BEAD0
function TFichierCdn.NbrSerieNotes(y:byte):integer; //Nbre des Modules dans chaque Periode
begin//0
  //004BEAD0..004BEAE9
    result :=  StrToInt(FModulesPerPeriode[y - 1]);
end;

//004BEB40
function TFichierCdn.GetDataCols(I:dword; J:dword):TStrings;
var
  k,Modules:Integer;
begin//0
    Modules := 0;
      for k := 1 to I - 1 do //004BEB79
      begin//004BEB7E
        Modules := Modules +StrToInt(FModulesPerPeriode[k - 1]);
      end;//3
    result := FData.Cols[Modules- 1 + J];   
  //004BEBE9
end;

//004BEC04
function TFichierCdn.GetData(Periode:dword; ACol:dword; ARow:dword):string;
var
  I: integer;
  Modules : integer;
begin//0
  //004BEC04
    //004BEC26
    Modules := 0;
      for I := 1 to Periode - 1 do //004BEC47
      begin//3
        //004BEC4E
        Modules := StrToInt(FModulesPerPeriode[I - 1]) + Modules;
      end;//3
    result := FData.Cells[Modules - 1 + ACol, ARow];
  //004BECE3
end;

//004BED04
function TFichierCdn.GetTitleModule(Periode:dword; NumModule:integer):string; // Nom de Module
begin//0
  result := GetData(Periode, NumModule, 0);
end;

//004BED2C
function TFichierCdn.GetDateNoteSur(Periode:dword; ARow:dword):string;
begin//0
  //004BED2C
  result:= GetData(Periode, ARow, NbreEleves + $0B {IdNoteSur} );
end;//0


//004BED7C
function TFichierCdn.Get_Coefficient(Periode:dword; ARow:dword):string;
begin//0
  //004BED7C
  result:= GetData(Periode, ARow, NbreEleves + IdCoefficient );
end;//0

//004BEDCC
function TFichierCdn.GetCompteMoyenne(Periode:dword; ARow:dword):string;
begin//0
  //004BEDCC
  result := GetData(Periode, ARow, NbreEleves + IdCompteMoyenne);
end;//0


//004BEE1C
function TFichierCdn.GetDataDate(Periode:dword; ARow:dword):string;
begin//0
  //004BEE1C
  result := GetData(Periode, ARow, NbreEleves + IdDateCreation);
end;//0


//004BEE6C
function TFichierCdn.GetDataCommentaire(Periode:dword; ARow:dword) :string;
begin
 result := GetData(Periode, ARow, NbreEleves + IdCommentaire);

end;

//004BEEBC
function TFichierCdn.GetDataTypeNote(Periode:dword; ARow:dword):string;
begin
 result := GetData(Periode, ARow, NbreEleves + IdTypeNote);
end;

//004BEF0C
function TFichierCdn.GetOralEcrit(Periode:dword; ARow:dword):string;
begin
 result := GetData(Periode, ARow, NbreEleves + IdOralEcrit);
end;

//004BEF5C
function TFichierCdn.Get_Sum(Periode:dword; ACol:dword; ARow:dword):string;
begin//0
  //004BEF5C
  result := GetData(Periode, ACol, ARow);
end;

//004BEF84
procedure TFichierCdn.SetFileName(Value:String);
begin//0
  //004BEF84
    FFileName := Value;
end;//0

//004BEFD0
procedure TFichierCdn.SetClasseName(Value:String);
begin//0
  FModified := true;
  FClasseName := Value;
end;//0


//004BF004
procedure TFichierCdn.SetEtablissment(Value:String);
begin//0
  FModified := true;
  FEtablissment := Value;
end;//0


//004BF038
procedure TFichierCdn.SetMatiere(Value:String);
begin//0
  //004BF038
  FModified := true;
  FMatiere := Value;
end;//0


//004BF06C
procedure TFichierCdn.SetYear(annee:String);
begin//0
  //004BF06C
  FModified := true;
  FYear := annee;
end;//0


//004BF0A0
procedure TFichierCdn.SetRemarque(a:String);
begin//0
  //004BF0A0
  FModified := true;
  FRemarque := a;
end;//0


//004BF0D4
procedure TFichierCdn.DataClear;
var
 I,J,K:integer;
begin//0
  //004BF0D4
  FAttributs.Clear;
    for I := 1 to 2 * NbrePeriodes  do  //004BF0FF
    begin//2
      //004BF0FF
      for J := 1 to 50 do
      begin//3
        //004BF104
        FAttributs.Add('1');
      end;//3
    end;//2
  f940.Clear;
    for I := 1 to IndexModule do //004BF138
      for J := 1 to 14 do //004BF13D
        f940.Add('1');
  FModulesPerPeriode.Clear;
    for I := 1 to NbrePeriodes do //004BF171
      //004BF171
      FModulesPerPeriode.Add('0');
  FPointsAdditif.Clear;
  FApreciations.Clear;
  FDateNais.Clear;
  FRedoublants.Clear;
  FLieuNais.Clear;
    for K := 1 to NbrePeriodes do //004BF1CE
    begin//2
      //004BF1CE
      for I := 1 to 50 do
      begin//3
        //004BF1D3
        FPointsAdditif.Add('');
        for J := 1 to GetbulletinsCount do
          //004BF1EF
          FApreciations.Add('');
      end;//3
    end;//2
  for I := 1 to 50 do
  begin//1
    //004BF20A
    FDateNais.Add('');
    FLieuNais.Add('1');
    FRedoublants.Add('');
  end;//1
  FModified := true;
end;//0

//004BF258
procedure TFichierCdn.SetBulletinsPeriode(TypePeriode:String; BulletinsTitle:string);
var
 I,J,K:integer;
begin//0
  //004BF258
    //004BF2BE
    FPeriode.SetTypePeriode(TypePeriode);
    FPeriode.SetPeriodeNameList(__GetPeriodes(TypePeriode));
    FTypeBulletins.SetBulletinsTitle(BulletinsTitle);
    FTypeBulletins.SetNomsbulletins(GetNomsbulletins_xx(BulletinsTitle));
    FModulesPerPeriode.Clear;
      for I := 1 to __GetPeriodes(TypePeriode).count do //004BF384
      begin//3
        //004BF387
        FModulesPerPeriode.Add('0');
      end;//3
    FPointsAdditif.Clear;
    FApreciations.Clear;
    FDateNais.Clear;
    FRedoublants.Clear;
    FLieuNais.Clear;
    f940.Clear;
    FAttributs.Clear;
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
      for I := 1 to IndexModule do//004BF44B
        for J:= 1 to 14 do //004BF450
          f940.Add('1');
      //004BF48D
      for I := 1 to __GetPeriodes(TypePeriode).count  do
      begin//3
        for J := 1 to 50 do //004BF490
        begin//4
          //004BF495
          FPointsAdditif.Add('');
          for K := 1 to GetbulletinsCount do //004BF4B1
            FApreciations.Add('');
        end;//4
      end;//3
    for I := 1 to 50 do
    begin//2
      //004BF4CE
      FDateNais.Add('');
      FLieuNais.Add('1');
      FRedoublants.Add('');
    end;//2
    FModified := true;
end;//0

//004Bf544
procedure TFichierCdn.SetPeriodeTraiteList(StringList:TStringList);
var
 k,I:integer;
begin//0
    if (StringList.Count < NbreEleves) then//004BF582
      k := StringList.Count
    else//004BF58C
      k := NbreEleves;
      for I := 0 to k - 1 do //004BF5A8
      begin//3
        //004BF5B0
        FDateNais[I] := Copy(StringList[I], 0, 10);
      end;//3
    FModified := true;
      for I := 1 to NbrePeriodes do //004BF5FB
      begin//3
        //004BF600
        FPeriode.SetPeriodeTraite(I, true);
      end;//3
end;//0

//004BF64C
procedure TFichierCdn.CreerListeEleves(a:TStringList);
var
 I,J,K:integer;
begin//0
  //004BF64C
  FEleves.AddEleveList(a);
  FAttributs.Clear;
    //004BF689
    for J := 1 to 2 * NbrePeriodes  do
    begin//2
      //004BF689
      for I := 1 to 50 do //004BF68E
        FAttributs.Add('1');
    end;//2
  f940.Clear;
    
    for I := 1 to IndexModule do //004BF6C2
      for J := 1 to 14 do //004BF6C7
        f940.Add('1');
  FPointsAdditif.Clear;
  FApreciations.Clear;
  FDateNais.Clear;
  FRedoublants.Clear;
  FLieuNais.Clear;

    for I := 1 to NbrePeriodes do //004BF727
    begin//2
      //004BF727
      for J := 1 to a.count do
      begin//3
        //004BF735
        FPointsAdditif.Add('');
        for K := 1 to GetbulletinsCount do //004BF751
          FApreciations.Add('');
      end;//3

    for J := 1 to a.count do //004BF775
    begin//2
      //004BF775
      FDateNais.Add('');
      FLieuNais.Add('1');
      FRedoublants.Add('');
    end;//2
  end;//1
  FModified := true;
    for I := 1 to NbrePeriodes do //004BF7B9
    begin//2
      //004BF7BE
      FPeriode.SetPeriodeTraite(I, true);
    end;//2
end;//0

//004BF7F0
//(a:dword; b:string; c:string; d:string; e:string; f:string; g:string; h:string; OralEcrit:boolean)
procedure TFichierCdn.SetData_V1(Periode:dword; Intitule:string; NoteSur:string; Coefficient:string; CompteDansMoy:string; DateJ:string; Commentaire:string; TypeNote:string; OralEcrit:boolean);
var
  TotalModules,I,J,Modules : integer;
begin//0
  //004BF7F0
    //004BF8B6
    TotalModules := 0;
	for I := 1 to NbrePeriodes do //004BF8D7
		TotalModules := TotalModules + NbrSerieNotes(I) ;
    FData.ColCount := TotalModules + 1;
    FData.RowCount := NbreEleves + IdNbrEleves__;
    Modules := 0;
	for I := 1 to Periode do  //004BF94B
		Modules := Modules + NbrSerieNotes(I);
    if (Modules > 0) then
		for I := TotalModules downto Modules + 1 do //004BF97F
          FData.Cols[I] := FData.Cols[I-1]
    else//004BF9B0
		for I:= TotalModules downto 1 do  //004BF9B8
		  FData.Cols[I] := FData.Cols[I-1];
		  
    FData.Cols[Modules].Clear;
    FData.Cells[Modules, 0] := Intitule;
    I := NbreEleves;
    FData.Cells[Modules, IdNoteSur + I] :=  NoteSur;
    FData.Cells[Modules, IdCoefficient + I] :=  Coefficient;
    FData.Cells[Modules, IdCompteMoyenne + I] :=  CompteDansMoy;
    FData.Cells[Modules, IdDateCreation + I] :=  DateJ;
    FData.Cells[Modules, IdCommentaire + I] :=  Commentaire;
    FData.Cells[Modules, IdTypeNote + I] :=  TypeNote;
    if (OralEcrit) then//004BFB61
      FData.Cells[Modules,  IdOralEcrit + I] := 'Oral'
    else //004BFB85
      FData.Cells[Modules,  IdOralEcrit + I] :=  'Ecrit';
    SetPeriodeTraite__Vx01(Periode);
    FModified := true;
    FPeriode.SetPeriodeTraite(Periode, true);
    f940.Clear;      
      for J := 1 to IndexModule do//004BFBE3
        for I := 1 to 14 do//004BFBE8
          f940.Add('1');
end;//0

//004BFC58
procedure TFichierCdn.DeleteColoneData(a:dword; b:dword);
var
  I,J:integer;
begin//0
  //004BFC58
  FData.Cols[b - 1].Clear;
  if (FData.ColCount - 2 - (b - 1) >= 0) then
  begin//1
    //004BFCB9
    for I := 1 to FData.ColCount - 2 do//004BFCC0
      FData.Cols[I] := FData.Cols[I + 1];
  end;//1
  FData.ColCount := FData.ColCount - 1;
  SetPeriodeTraite__Vx02(a);
  FModified := true;
  FPeriode.SetPeriodeTraite(a, true);
  f940.Clear;
    for J := 1 to IndexModule do //004BFD34
      for I := 1 to 14 do //004BFD3A
        f940.Add('1');
end;//0

//004BFD68
procedure TFichierCdn.CreerListeElevesNotes(b:dword; c:dword; d:dword);
var
  StrList:TStringList;
  I,J,K,lvar_4:integer;
begin//0
  //004BFD68
    //004BFD98
    StrList := TStringList.Create;
      for I := 1 to NbreEleves do//004BFDB2
      begin//3
        //004BFDB7
        StrList.Add(Get_Sum(b, c, I));
      end;//3
    SetData_V1(d, GetTitleModule(b, c), GetDateNoteSur(b, c), Get_Coefficient(b, c), GetCompteMoyenne(b, c), GetDataDate(b, c), GetDataCommentaire(b, c), GetDataTypeNote(b, c), GetOralEcrit(b, c) = 'Oral');
	lvar_4 := 0;
      for I := 1 to b - 1 do//004BFF07
      begin//3
        //004BFF0C
        lvar_4 := NbrSerieNotes(I) + lvar_4;
      end;//3
    c := c + lvar_4;
    DeleteColoneData(b, c); 
    K := NbrSerieNotes(d);
      //004BFF84
      for I := 1 to NbreEleves do
      begin//3
        //004BFF89
        SetAbs(d, K,I, StrList[I - 1]);
      end;//3
    FModified := true;
    FPeriode.SetPeriodeTraite(b, true);
    StrList.Destroy;
    f940.Clear;
      //004C000A
      for I := 1 to IndexModule do//004C000D
        for J := 1 to 14 do //004C000F
          f940.Add('1');
    //004C0035
end;//0

//004C0070
procedure TFichierCdn.SetPeriodeTraite__Vx01(a:dword);
begin//0
  //004C0070
    //004C008E
    FModulesPerPeriode[a - 1] :=  IntToStr(StrToInt(FModulesPerPeriode[a - 1]) + 1);
    FModified := true;
    FPeriode.SetPeriodeTraite(a, true);
end;//0

//004C0134
procedure TFichierCdn.SetPeriodeTraite__Vx02(a:dword);
begin//0
    //004C0152
    FModulesPerPeriode[a - 1] := IntToStr(StrToInt(FModulesPerPeriode[a - 1]) - 1);
    FModified := true;
    FPeriode.SetPeriodeTraite(a, true);
	//004C01D9
end;//0

//004C01F8
procedure TFichierCdn.SaveToFile__(a:AnsiString; b:boolean; c:string; d:dword);
var
  FluxCdn :TFluxCdn;
  buf :string;
  I,J,K:integer;
  lvar_14:TStringList;
begin//0
  //004C023F
    try
      //004C024D
      if (GetBulletinsTitle <> 'Bulletins par défaut') then//004C0271
        d := 0;
      if (GetFileBak) then//004C027E
        RenameFile(a, ChangeFileExt(a, '.bak'));
      FluxCdn := TFluxCdn.Create(a, $FFFF);
      if (b) then//004C02BB
        SaveCdnOldVersion(FluxCdn)
      else
      begin//004C02C9
        if (C = '') then//004C02D2
          if (IsVersionPersonnelle) then//004C02DD
            FluxCdn.WriteInFile('Carnet de notes',True)
          else//004C02ED
            FluxCdn.WriteInFile('Carnet de Notes',True)
        else
        begin//004C02FD
          FluxCdn.WriteInFile(c,True);
        end;//4
        FluxCdn.WriteInFile('2.3',True);
        FluxCdn.WriteInFile( GetEnseignant,True);
        FluxCdn.WriteInFile( GetClasseName,True);
        FluxCdn.WriteInFile( GetEtablissment,True);
        FluxCdn.WriteInFile( GetMatiereName,True);
        FluxCdn.WriteInFile( GetYear,True);
        FluxCdn.WriteInFile( GetRemarque,True);
        FluxCdn.WriteInFile( GetTypePeriode,True);
        buf := IntToStr(NbrePeriodes);
        FluxCdn.WriteInFile( buf,True);
        for I := 1 to NbrePeriodes do//004C0425
            FluxCdn.WriteInFile( GetPeriodeName(I),True);
        FluxCdn.WriteInFile( IntToStr(NbreEleves),True);
        for I := 1 to NbreEleves do  //004C049A
        begin//004C04A1
            FluxCdn.WriteInFile( GetEleveName(I),True);
        end;//5
        for I := 1 to NbrePeriodes do //004C04D7
        begin//004C04DE
            FluxCdn.WriteInFile(IntToStr(NbrSerieNotes(I)), True);
            if (NbrSerieNotes(I) <= 0) then Continue;
            for J := 1 to NbrSerieNotes(I) do
            begin//004C0536
              FluxCdn.WriteInFile( GetTitleModule(I, J),True);
              if (NbreEleves > 0) then
              begin//004C0564
                for K := 1 to NbreEleves do
                begin//004C056B
                  FluxCdn.WriteInFile( Get_Sum(I, J, K),True);
                end;//8
              end;//7
              for K := 1 to 9 do
              begin//004C059E
                FluxCdn.WriteInFile('',True);
              end;//7
              FluxCdn.WriteInFile( GetDateNoteSur(I, J),True);
              FluxCdn.WriteInFile( Get_Coefficient(I, J),True);
              FluxCdn.WriteInFile( GetCompteMoyenne(I, J),True);
              FluxCdn.WriteInFile( GetDataDate(I, J),True);
              FluxCdn.WriteInFile( GetDataCommentaire(I, J),True);
              FluxCdn.WriteInFile( GetDataTypeNote(I, J),True);
              FluxCdn.WriteInFile( GetOralEcrit(I, J),True);
            end;//6
        end;//4
        for I := 1 to NbrePeriodes do //004C06C9
        begin//004C06D0
            if (NbreEleves > 0) then 
            for J := 1 to NbreEleves do
            begin //004C06E2
              FluxCdn.WriteInFile( GetPointsPlusMoins__V00(I, J),True);
            end;//6
        end;//5
        FluxCdn.WriteInFile( IntToStr(GetClassesCount),True);
        for I := 1 to GetClassesCount do //004C075C
            FluxCdn.WriteInFile( GetClasses_(I),True);
        if (d = 0) then
        begin//004C0794
          FluxCdn.WriteInFile( GetBulletinsTitle,True);
          buf := IntToStr(GetbulletinsCount);
          FluxCdn.WriteInFile( buf,True);
          for I := 1 to GetbulletinsCount do //004C07FB
          begin//004C0802
              GetNomsbulletins(I, buf);
              FluxCdn.WriteInFile( buf,True);
          end;//6
        end//4
        else
        begin//004C082E
		  Buf :=  'Nouveaux bulletins du collège';
          FluxCdn.WriteInFile(Buf,True);
          lvar_14 := GetNomsbulletins_xx(Buf);
          FluxCdn.WriteInFile(IntToStr(lvar_14.count),True);
          for I := 1 to lvar_14.count do //004C08B8
          begin//004C08BF
              FluxCdn.WriteInFile(lvar_14[I - 1],True);
          end;//6
          FreeAndNil(lvar_14);
        end;//4
          for I := 1 to NbrePeriodes do //004C0920
          begin//004C0927
            if (NbreEleves <= 0) then Continue;
            for J := 1 to NbreEleves do
            begin//004C093D
              if (d = 0) then
              begin//004C0943
                if (GetbulletinsCount <= 0) then Continue;
                for K := 1 to GetbulletinsCount do
                begin//004C0955
                  GetApreciations(I, J, K, buf);
                  FluxCdn.WriteInFile( buf,True);
                end;//8
              end//7
              else
              begin//004C0986
                GetApreciations(I, J, 1, buf);
                FluxCdn.WriteInFile(buf,True);
                FluxCdn.WriteInFile('',True);
                FluxCdn.WriteInFile('',True);
              end;//7
            end;//6
          end;//5
          for I := 1 to NbreEleves do //004C09EA
          begin//004C09F1
            FluxCdn.WriteInFile(GetDateNais(I),True);
            FluxCdn.WriteInFile( GetLieuNais(I),True);
            if (IsRedoublant(I) ) then
            begin//004C0A3D
              FluxCdn.WriteInFile('R',True);
            end//6
            else
            begin//004C0A4D
              FluxCdn.WriteInFile('',True);
            end;//6
          end;//5
        buf := IntToStr(GetArrondirMoyennes_t);
        FluxCdn.WriteInFile( buf,True);
        buf := IntToStr(Get_SArrondirMoyennesAnnuelles);
        FluxCdn.WriteInFile( buf,True);
        buf := IntToStr(Get_StypeMoyennesAnnuelles);
        FluxCdn.WriteInFile( buf,True);
        FluxCdn.Destroy;
      end;//3
      SetFileName(a);
      OldVersion := false;
      FModified := false;
    except//004C0B44
      MessageBoxA(0, PChar('Erreur dans l''enregistrement du fichier ' + a), 'Carnet de Notes version Personnelle', 16);
    end;//2
end;//0

//004C0C88
procedure TFichierCdn.SetData_V2(Periode:dword; ACol:dword; ARow:dword; d:string);
var
  Modules,I :integer;
begin//0
  //004C0C88
    Modules := 0;
      for I := 1 to Periode - 1 do //004C0CF7
      begin//004C0CFE
        Modules := StrToInt(FModulesPerPeriode[I - 1]) + Modules;
      end;//3
    if (FModified = false) then //004C0D52
      FModified := (FData.Cells[Modules - 1 + ACol, ARow] = d) Xor true;
    FData.Cells[Modules - 1 + ACol, ARow] :=  d;
end;//0


//004C0E24
procedure TFichierCdn.SetData_V3(periode:dword; ACol:dword; Value:string);
begin//0
  //004C0E24
  SetData_V2(periode, ACol, 0, Value);
end;//0

//004C0E5C
procedure TFichierCdn.SetData_V4(periode:dword; ACol:dword; c:string);
begin//0
  //004C0E5C
  SetData_V2(periode, ACol,NbreEleves + IdCommentaire,c );
end;//0

//004C0EC8
procedure TFichierCdn.SetData_V5(Periode:dword; ACol :dword; d:string);
begin//0
  //004C0EC8
  SetData_V2(Periode, ACol,NbreEleves +  IdDateCreation , d);
end;//0

//004C0F34
procedure TFichierCdn.SetData_V6(Periode:dword; ACol:dword; d:string);
begin//0
  //004C0F34
  SetData_V2(Periode, ACol,NbreEleves + IdTypeNote , d);
end;//0


//004C0FA0
function TFichierCdn.SetData_V7(a:dword; b:dword; c:string):dword;
var
  I:integer;
begin//0
  //004C0FA0
  if (GetCompteMoyenne(a, b) <> c) then
  begin//1
    //004C0FF2
      for I := 1 to NbreEleves do //004C0FFF
      begin//3
        //004C1003
        SetAttributs__V01(a, I, true);
      end;//3
  end;//1
  SetData_V2(a, b, NbreEleves + IdCompteMoyenne , c);
  FPeriode.SetPeriodeTraite(a, true);
end;//0

//004C1074                          
procedure TFichierCdn.SetAbs(Periode:dword; ACol:dword; ARow:dword; data:string);
var
  buf:string;
  I :integer;
begin//0
  //004C1074
  for I := 1 to 7 do
  begin//004C109C
    SetAttributs1(Periode, ACol,I,(Get_Sum(Periode, ACol, ARow) = data) Xor true);
  end;//1
  SetAttributs__V01(Periode, ARow, (Get_Sum(Periode, ACol, ARow) = data) Xor true);
  SetData_V2(Periode, ACol, ARow,data); 
  FPeriode.SetPeriodeTraite(Periode, true);
end;

//004C1158
procedure TFichierCdn.DeleteItem_V00(a:dword);
var
   I,J,K:integer;
   StringList:TStringList;
begin//0
  //004C1158
    //004C1179
    StringList := TStringList.Create;  
      k := IndexModule ;
      for I := 1 to IndexModule  do //004C119C
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
      for I := 1 to NbrePeriodes do //004C12A0
      begin//004C12AA
        FPointsAdditif.Delete(NbreEleves * (I - 1) + a - 1);
        for J := 1 to GetbulletinsCount do//004C1308
          FApreciations.Delete(GetbulletinsCount * (a - 1) + (I - 1) * NbreEleves * GetbulletinsCount);
      end;//3
    FDateNais.Delete(a - 1);
    FRedoublants.Delete(a - 1);
    FLieuNais.Delete(a - 1);
    FModified := true;
      //004C13D8
      for I := 1 to NbrePeriodes do//004C13E2
        FPeriode.SetPeriodeTraite(I, true);
    FAttributs.Clear;
      for I := 1 to 2 * NbrePeriodes do//004C142C
      begin //004C142F
        for J := 1 to NbreEleves do//004C1442
          FAttributs.Add('1');
      end;//3
    f940.Clear;
      for I := 1 to IndexModule do //004C1475
        for J := 1 to 14 do//004C147D
          f940.Add('1');
end;//0

//004C14C8
procedure TFichierCdn.InsertItem_V00(b:String; c:string; d:string; a:boolean);
var
I,J,index:integer;
StrListTemp:TStringList;
begin//0
  //004C14C8..004C1534
    if (NbreEleves < 50) then  // NbrEleves < 50
	begin
		FData.RowCount := FData.RowCount + 1;
		FEleves.AddEleve(b); //ajouter l''eleve
		index := FEleves.GetEleveList.indexof(b);
		StrListTemp := TStringList.Create;
		  for I := 1 to IndexModule do //004C15CF
		  begin//004C15D9
			StrListTemp.clear;
			StrListTemp.addStrings(FData.Cols[I - 1]);
			StrListTemp.insert(index + 1,'abs');
			FData.Cols[I - 1].Clear;
			for J := 1 to StrListTemp.count do//004C1646
			  FData.Cells[I - 1, J - 1] := StrListTemp[J - 1];
		  end;//3
		  for I := 1 to NbrePeriodes do//004C16B3
		  begin//004C16BD
			FPointsAdditif.Insert(NbreEleves * (I - 1)+ index, '');
			for J := 1 to GetbulletinsCount do //004C171A
			  FApreciations.Insert(GetbulletinsCount * index + (J - 1) + (I - 1) * NbreEleves * GetbulletinsCount, '');
		  end;//3
		FDateNais.Insert(index, c);
		if (a) then //004C17DD
		  FRedoublants.Insert(index, 'R')
		else//004C17F2
		  FRedoublants.Insert(index, '');
		FLieuNais.Insert(index, d);
		FModified := true;
		  for I := 1 to NbrePeriodes do//004C1845
			FPeriode.SetPeriodeTraite(I, true);
		StrListTemp.destroy;
		FAttributs.Clear;
		  for I := 1 to 2 * NbrePeriodes do  //004C1899
			for J := 1 to NbreEleves do //004C189C
			  FAttributs.Add('1');
		f940.Clear;
		  for I := 1 to IndexModule do//004C18E5
			for J := 1 to 14 do//004C18EA
			  f940.Add('1');
    end;
end;//0

//004C1954
procedure TFichierCdn.DeleteItem_V01(NEleve:dword; NomPrenom:string; Redoublant:boolean; DateDeNaissance:string);
var
  I,Modules, J, K,IndexEleve,M:integer;
  StrList:TStringList;
  buf:string;
begin//0
  //004C1954
    //004C19D2
    FEleves.DeleteEleve(NEleve);    		//delete NEleve
    FEleves.AddEleve(NomPrenom);		//add NEleve
    IndexEleve := FEleves.GetEleveList.indexof(NomPrenom);
    //Determiner le Nbre de Modules
	Modules := 0;
	for I := 1 to NbrePeriodes  do //004C1A40 //004C1A4A
		Modules := Modules + StrToInt(FModulesPerPeriode[I-1]);
    //Reorganoser FData Notes des eleves
	//Exchange note de NEleve et IndexEleve
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
	//Rembilir f930
	//Trouver les dates de naissance 
	for I := 1 to NbreEleves  do //004C1B83
    begin//3
        //004C1B8B
        if (I <> NEleve) then 
		begin
			StrList.Add(GetDateNais(I));
		end;
    end;//3
    FDateNais.Clear;
    FDateNais.AddStrings(StrList);
    FDateNais.Insert(IndexEleve, DateDeNaissance);
	//Traiter les Redoublants
    StrList.clear;
	for I := 1 to NbreEleves  do //004C1C2B
	begin//3
		//004C1C33
		if (I <> NEleve) then 
			if (IsRedoublant(I) ) then//004C1C56
				StrList.Add('R')
			else//004C1C65
				StrList.add('');
	end;//3
    FRedoublants.Clear;
    FRedoublants.AddStrings(StrList);
    if (Redoublant ) then//004C1C94
      FRedoublants.Insert(IndexEleve, 'R')
    else//004C1CA9
      FRedoublants.Insert(IndexEleve, '');
    StrList.clear;
	//Reorganoser FApreciations
      for I := 1 to NbrePeriodes do //004C1CD5
      begin//3
        //004C1CDF
        for J := 1 to GetbulletinsCount do
        begin//4
          //004C1CF9
          GetApreciations(I, NEleve, J, buf);
          StrList.Add(buf);
        end;//4
      end;//3
     M:=0;
      for I := 1 to NbrePeriodes do //004C1D6D
      begin//3
        //004C1D77
          for J := 1 to GetbulletinsCount do //004C1D8E
          begin//5
            //004C1D8E
            FApreciations.Delete((NEleve - 1) * GetbulletinsCount + ((I - 1) *  NbreEleves * GetbulletinsCount) - M);
          end;//5        
        M := M + GetbulletinsCount;
      end;//3
      for I := 1 to NbrePeriodes do  //004C1E4D
      begin//3
        //004C1E57
        for J := 1 to GetbulletinsCount  do
        begin//4
          //004C1E75
		  FApreciations.insert(GetbulletinsCount * IndexEleve + J - 1 + (I - 1) *NbreEleves * GetbulletinsCount, StrList[0]);
          StrList.delete(0);
        end;//4
      end;//3
    StrList.clear;
      for I := 1 to NbrePeriodes  do //004C1F47
      begin//3
        StrList.add(GetPointsPlusMoins__V00(I, NEleve));
      end;//3
      for I := 1 to NbrePeriodes  do //004C1FA9 //Nbre Periodes
        FPointsAdditif.Delete( (NEleve - 1) + (I - 1)* NbreEleves - (I - 1));
      for I := 1 to NbrePeriodes  do //004C202C
      begin//3
        FPointsAdditif.Insert((I - 1) * NbreEleves + IndexEleve, StrList[0]);
        StrList.delete(0);
      end;//3
      for I := 1 to NbrePeriodes  do //004C20AF
        FPeriode.SetPeriodeTraite(I, true);
    Initialisation;
    StrList.destroy;
	//004C20FC
end;//0

//004C213C
function TFichierCdn.CalcMoyBrute(Periode:dword; ARow:dword):string; //moyenne brute
var
  I : integer;
  Coefficient,NoteSur,Valeur,Total, Somme: real;
begin//0
  //004C213C..004C2179
    if (GetAttributs__V01(Periode, ARow)) then
    begin//004C218F
      Total := 0;
      Somme := 0;        
        for I := 1 to NbrSerieNotes(Periode) do  //004C21BF
        begin//004C21C9
          if (GetCompteMoyenne(Periode, I) = 'oui') then
          begin//004C2208
            try//004C2216
              Coefficient := StrToFloat(Get_Coefficient(Periode, I));
              NoteSur := StrToFloat(GetDateNoteSur(Periode, I)); 
			  Valeur := StrToFloat(Get_Sum(Periode, I, ARow)); 
              Total := Valeur * Coefficient + Total;
              Somme := NoteSur * Coefficient + Somme;
            except//6
              on E:EConvertError do
              begin//004C2321
              end;//7
              on E:EMathError do
              begin//004C2328
			  //....
              end;//7
            end;//6
          end;//5
        end;//4
      if (Somme<> 0) then //004C234E
        result := FloatToStrF(GetMoyennesSur * (Total / Somme), {2}ffFixed, 18, 2)
      else//004C239D
        result := '';
      SetStrMoy(Periode, ARow,result); //save Moyenne
      SetAttributs__V01(Periode, ARow, false);
    end//2
	else
      GetAttributs_XX(Periode, ARow, result);
end;//0

//004C2410
procedure TFichierCdn.Arrondir__(a:String; {b:Integer;} ArrendirMoyennes:dword; var Moy:string);
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
        2:
        begin//004C2618
          if (ROUND(lvar_20 * 100 - TRUNC(lvar_20) * 100) - 13 < 0) then //004C2669
            Moy := FloatToStrF(TRUNC(lvar_20),ffFixed{2}, 18, 0)
		  else 
          if ((ROUND(lvar_20 * 100 - TRUNC(lvar_20) * 100) -13) - 25 < 0) then //004C26C1
            Moy := FloatToStrF(TRUNC(lvar_20) + 0.25,ffFixed{2}, 18, 2)
		  else
          if ((ROUND(lvar_20 * 100 - TRUNC(lvar_20) * 100)  -38) - 25 < 0) then //004C2722
            Moy := FloatToStrF(TRUNC(lvar_20) + 0.5,ffFixed{2}, 18, 1)
		  else
          if ((ROUND(lvar_20 * 100 - TRUNC(lvar_20) * 100)  -63) - 25 < 0) then //004C2783
            Moy := FloatToStrF(TRUNC(lvar_20) + 0.75,ffFixed{2}, 18, 2)
		  else
          if (ROUND(lvar_20 * 100 - TRUNC(lvar_20) * 100) -88 - 12 < 0) then //004C27E6
            Moy := FloatToStrF(TRUNC(lvar_20) + 1,ffFixed{2}, 18, 0);
        end;//4
        3:
        begin//004C2841
          if (ROUND(lvar_20 * 100 - TRUNC(lvar_20) * 100)  - 25 < 0) then //004C2892
            Moy := FloatToStrF(TRUNC(lvar_20),ffFixed{2}, 18, 0)
		  else
          if (ROUND(lvar_20 * 100 - TRUNC(lvar_20) * 100) -25 - 50 < 0) then //004C28EA
            Moy := FloatToStrF(TRUNC(lvar_20) + 0.5,ffFixed{2}, 18, 1)
		  else
          if (ROUND(lvar_20 * 100 - TRUNC(lvar_20) * 100) -75 - 25 < 0) then //004C294D
            Moy := FloatToStrF(TRUNC(lvar_20) + 1,ffFixed{2}, 18, 0);
        end;//4
        4:
        begin//004C29A8
          Arrondir__(a,3,buf);
          if (StrToFloat(buf) < lvar_20) then //004C2A04
            Moy := FloatToStrF(lvar_20 + 0.5,ffFixed{2}, 18, 1)
		  else
          Arrondir__(a,3,Moy);
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
function TFichierCdn.CalcMoyBrute_V03(Periode:dword; ARow:dword; ArrondirMoyennes:dword):string;
begin//0
  //004C2AF4
  Arrondir__(CalcMoyBrute(Periode, ARow), ArrondirMoyennes,result); // Arrondir la Moyenne
end;

//004C2B38
function TFichierCdn.GetPointsPlusMoins__V00(Periode:dword; ARow:dword):string; 
var
  count:integer;
begin//0
  //004C2B38..004C2B5C
    count :=NbreEleves * (Periode - 1) + ARow - 1;
    if (count >= FPointsAdditif.Count) then //004C2BAB
      FPointsAdditif.Insert(count, '');
    result := FPointsAdditif[count];
end;//0

//004C2C00
procedure TFichierCdn.GetApreciations(Periode:dword; ARow:dword; ACol:dword;var Value:string);
var
 I:integer;
begin//0
  //004C2C00..004C2C24
    I:=GetbulletinsCount * (ARow - 1) + (ACol - 1) + NbreEleves * (Periode - 1) * GetbulletinsCount;
    if (I >= FApreciations.Count) then //004C2CBA
      FApreciations.Insert(I, '');
    Value := FApreciations[I];
end;//0


//004C2D10
function TFichierCdn.GetMoyennePeriode(Periode:dword; ARow:dword; ArrondirMoyennes:dword):string;
begin//0
  //004C2D10
  try
    //004C2D45
    result := CalcMoyBrute_V03(Periode, ARow, ArrondirMoyennes);
    try//004C2D6A
      result := FloatToStrF(StrToFloat(result)+StrToFloat(GetPointsPlusMoins__V00(Periode, ARow)) , ffFixed{2}, 18, 2);
    except//2
      on E:EConvertError do
      begin//3
        //004C2E11
        //Moy := '';
      end;//3
    end;//2
  finally//004C2E31
  end;//1
end;//0


//004C2E60
procedure TFichierCdn.CalcMoyBrute_V06(a:String; Periode:dword; ARow:dword; var e:string);
var
  Somme , Total,Coefficient,NoteSur : real;
  buf : string;
  I:integer;
begin//0
  //004C2E60
    //004C2EAB
      for I := 1 to NbrSerieNotes(Periode)  do//004C2EDB
      begin//3
        //004C2EE5
        if (GetCompteMoyenne(Periode, I) = 'oui') then
        begin//4
          //004C2F24
          if (GetDataTypeNote(Periode, I) = a) then
          begin//5
            //004C2F63
            try
              //004C2F71
              Coefficient := StrToFloat(Get_Coefficient(Periode, I));
              NoteSur := StrToFloat(GetDateNoteSur(Periode, I));  
              Somme := StrToFloat(Get_Sum(Periode, I, ARow)) * Coefficient + Somme;
              Total := NoteSur * Coefficient + Total;
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
    if (Total <> 0) then
    begin//2
      //004C30A9
      e := FloatToStrF(GetMoyennesSur * (Somme / Total), {2}ffFixed, $12{18}, 2);
    end//2
	else
    e := '';
    //004C310B
end;//0

//004C3134
function TFichierCdn.GetDataTypeNoteList(Periode:dword):TStringlist;
var
   I,J : integer;
begin//0
    if (Periode < NbrePeriodes) then//a < Nbre Periodes
    begin//2
      //004C318F
      result := TStringList.Create;
      result.Sorted := True;
      result.Duplicates := dupIgnore;
        for I := 1 to NbrSerieNotes(Periode) do//004C31BD
        begin//4
          //004C31C2
          result.Add(GetDataTypeNote(Periode, I));
        end;//4
    end//2
	else 
	begin
		result := TStringList.Create;
		result.Sorted:= True;
		result.Duplicates := dupIgnore;
		  for I := 1 to NbrePeriodes do //004C3227
		  begin//3
			//004C322E
			for J := 1 to  NbrSerieNotes(I) do
			begin//4
			  //004C3241
			  result.Add(GetDataTypeNote(I, J));
			end;//4
		  end;//3
	end;
end;//0

//004C32B4
procedure TFichierCdn.CalcMoyBrute_V07(ARow:dword; ArrondirMoyennes:dword; ArrondirMoyennes2:dword; d:byte; var Moy:string);
var
  I,J,N :integer;
  K1,K2,Val,Somme,N2 : real;
  buf:string;
begin//0
    case d of
      0:
      begin//3
        //004C330C
        Somme := 0;
        N := 0;
		  for I := 1 to NbrePeriodes do//004C332C
		  begin//4
          try
            //004C3341
            Somme := StrToFloat(GetMoyennePeriode(I, ARow, ArrondirMoyennes)) + Somme;
            N := N + 1;
          except//5
            on E:EConvertError do
            begin//6
              //004C339F
            end;//6
          end;//5
        end;//4
        if (N <> 0) then //004C33B9
			Arrondir__(FloatToStrF(Somme / N ,ffFixed{2}, $12{18}, 2), ArrondirMoyennes2, Moy)
		else
			Moy := '';
      end;//3
      1:
      begin//3
        //004C3429
        Somme := 0;
        N2 := 0;
          for I := 1 to NbrePeriodes do//004C3451
          begin//5
            //004C3458
            for J := 1 to NbrSerieNotes(I) do
            begin//6
              //004C3472
              if (GetCompteMoyenne(I, J) = 'oui') then
              begin//7
                //004C34A2
                try
                  //004C34B0
                  K1 := StrToFloat(Get_Sum(I, J, ARow));
                  K2 := StrToFloat(GetDateNoteSur(I, J));
                  Val := StrToFloat(Get_Coefficient(I, J));
                  Somme := K1 * Val + Somme;
                  N2 := K2 * Val + N2;
                except//8
                  on E:Exception do
                  begin//9
                    //004C3590
                  end;//9
                end;//8
              end;//7
            end;//6
          end;//5

        if (N2 <> 0) then //004C35C2
			Arrondir__(FloatToStrF(GetMoyennesSur * (Somme / N2) , ffFixed{2}, $12{18}, 2), ArrondirMoyennes2, Moy)
		else
			Moy := '';
      end;//3
    end;//2
    //004C363C

end;//0


//004C3678
procedure TFichierCdn.SetPointsAdditif_X1(Periode:dword; ARow:dword; value:string);
var
  I:integer;
  buf:string;
begin//0
  //004C3678
    //004C36B3
    I := (Periode - 1) * NbreEleves + (ARow - 1);
    //push EAX
    if (GetPointsPlusMoins__V00(Periode, ARow) <> value) then
    begin//2
      //004C371C
      FPointsAdditif.Insert(I, value);
      FPointsAdditif.Delete(I + 1);
      FModified := true;
      FPeriode.SetPeriodeTraite(Periode, true);
    end;//2
    //004C3779
end;//0

//004C3798
procedure TFichierCdn.SetApreciations_x1(b:dword; c:dword; d:string; e:dword);
var
  buf:string;
  K:integer;
begin//0
  //004C3798
    //004C37D3
    GetApreciations(b, c, e, buf);
    if (buf <> d) then
    begin//2
      //004C3806
      K := GetbulletinsCount * (c - 1) + (e - 1) + (b - 1) * NbreEleves * GetbulletinsCount;
      FApreciations.insert(K,buf);
      FApreciations.delete(K + 1);
      FModified := true;
      FPeriode.SetPeriodeTraite(b, True);
    end;//2
    //004C38EA
end;//0


//004C3908
function TFichierCdn.GetEnseignant:string;
begin//0
  //004C3908
  Result := FEnseignant;
end;//0


//004C3920
procedure TFichierCdn.SetEnseignant(Value:String);
begin//0
  //004C3920
  FEnseignant := Value;
  FModified := true;
end;//0


//004C3954
function TFichierCdn.IsModified:boolean;
begin
   result := FModified;
end;

//004C3958
function TFichierCdn.GetMinNote__(Periode:dword;ACol:dword):string;
var
 buf :string;
 I,ARow,counter :integer;
 Min,Res:real;
begin//0
  //004C3958
    //004C398C
    if (GetAttributs1(Periode, ACol, 1) ) then
    begin//2
      //004C39A4
      //lvar_28 := 0;
      Min := StrToFloat(GetDateNoteSur(Periode, ACol));
      if (NbreEleves  > 0) then
      begin//3
        //004C39ED
        I := NbreEleves;
        ARow := 1;
		repeat
        try
          //004C3A05
          Res := StrToFloat(Get_Sum(Periode, ACol, ARow));
          if (Res < Min) then
          begin//5
            //004C3A57
            Min := Res;
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
        result := FloatToStr(Min);
      end//3
      else
      begin//3
        //004C3ADA
        result := '';
      end;//3
      SetAttributs0(Periode, ACol, 8,result);
      SetAttributs1(Periode, ACol,1,false);
    end//2
	else
    result:=GetAttributs0(Periode, ACol, 8);
    //004C3B29
end;//0

//004C3B54
function TFichierCdn.GetMaxNote__(Periode:dword; ACol:dword):string;
var
 I,J,lvar_28:integer;
 Max,Res:real;
 buf:string;
begin//0
    lvar_28 := 0;
    if (GetAttributs1(Periode, ACol, 2)) then
    begin//2
      //004C3B9A
	  Max := 0;
      if (NbreEleves > 0) then
      begin//3
        //004C3BC0
        I := NbreEleves;
        J := 1;
		repeat
        try
          //004C3BD8
          Res := StrToFloat(Get_Sum(Periode, ACol, J));
          if (Res > Max) then
          begin//5
            //004C3C24
            Max := Res;
          end;//5
          lvar_28 := lvar_28 + 1;
        except//4
          on E:EConvertError do
          begin//5
            //004C3C5E
          end;//5
        end;//4
        J := J + 1;
        I := I - 1;
        until(I = 0);//004C3C76
        
      end;//3
      if (lvar_28 > 0) then        //004C3C7C
        result := FloatToStr(Max)
      else//004C3CA7
        result := '';
      SetAttributs0(Periode, ACol, 9, result);
      SetAttributs1(Periode, ACol,2,false);
    end//2
	else
    result:=GetAttributs0(Periode, ACol, 9);
    //004C3CF6
end;//0

//004C3D1C
function TFichierCdn.GetNombreElevePresents(Periode:dword; ACol:dword):string;
var
  NbrEleves,I:integer;
  buf:string;
begin//0
  //004C3D1C..004C3D4A
    NbrEleves := 0;
    if (GetAttributs1(Periode, ACol, 5)) then
    begin///004C3D62
	  for I:=1 to NbreEleves do 
      begin//004C3D7C
        try//004C3D94
		  StrToFloat(Get_Sum(Periode, ACol, I));
          NbrEleves := NbrEleves + 1;
        except//4
          on E:EConvertError do
          begin//004C3DF7
          end;//5
        end;//4
      end;//3
	  //004C3E0F
      result := FloatToStr(NbrEleves);
      SetAttributs0(Periode, ACol, 12, result);
      SetAttributs1(Periode, ACol, 5, false);
    end
	else
    result:=GetAttributs0(Periode, ACol, 12);
end;//0


//004C3EA4
function TFichierCdn.GetPersentNotesInfMoyenne(Periode:dword; ACol:dword):string;
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
      Moy := StrToFloat(GetDateNoteSur(Periode, ACol)) / 2;
      if (NbreEleves  > 0) then
      begin//3
        //004C3F44
        I := NbreEleves;
        J := 1;
		repeat
        try
          //004C3F5C
          if (StrToFloat(Get_Sum(Periode, ACol, J)) <Moy) then
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
        result := FloatToStrF(K / N * 100,ffFixed{2}, $12{18}, 2)+ ' %';
      end//3
      else
      begin//3
        //004C4048
        result := '';
      end;//3
      SetAttributs0(Periode, ACol, 13, result);
      SetAttributs1(Periode, ACol,6,false);
    end//2
	else 
    result:=GetAttributs0(Periode, ACol, 13);
    //004C4097
end;//0

//004C40D4
function TFichierCdn.GetMoyenne___(Periode:dword; ACol:dword):string;
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

		for I:= 1 to NbreEleves do //004C4140 
        try//004C4158
          lvar_10 := StrToFloat(Get_Sum(Periode, ACol, I)) + lvar_10;
          lvar_18 := lvar_18 + 1;
        except//4
          on E:EConvertError do
          begin//004C41C2
          end;//5
        end;//4
      try
        //004C41E8
        if (lvar_18 > 0) then//004C41EE
          result := FloatToStrF(lvar_10 / lvar_18, ffFixed{2}, 18, 2)
        else//004C422A
          result := '';
      except//3
        on E:EConvertError do
        begin//004C4253
          result := '';
        end;//4
        on E:EMathError do
        begin//004C425B
          result := '';
        end;//4
      end;//3
      SetAttributs0(Periode, ACol, 11,result);
      SetAttributs1(Periode, ACol, 4, false);
    end
	else 
    result:=GetAttributs0(Periode, ACol, 11);
end;//0

//004C42D4
function TFichierCdn.GetEcartType(Periode:dword; ACol:dword):string;
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
      lvar_30 := 0;
      N := 0;
      if (NbreEleves  > 0) then
      begin//3
        //004C434C
        I := NbreEleves;
        lvar_34 := 1;
		repeat
        try
          //004C4364
          buf := Get_Sum(Periode, ACol, lvar_34);
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
          result := FloatToStrF(Sqrt(lvar_30 / N - lvar_20 * lvar_20 / (N * N)),{2}ffFixed, $12{18}, 2 );
        end//4
        else
        begin//4
          //004C4473
          result := '';
        end;//4
      except//3
        on E:EConvertError do
        begin//4
          //004C449C
          result := '';
        end;//4
        on E:EMathError do
        begin//4
          //004C44A4
          result := '';
        end;//4
      end;//3
      SetAttributs0(Periode, ACol, 10, result);
      SetAttributs1(Periode, ACol,3,false);
    end//2
	else
    result:=GetAttributs0(Periode, ACol, 10);
    //004C44F8
end;//0

//004C451C
function TFichierCdn.GetPersentNotesInfMoyenneClasse(Periode:dword; ACol:dword):string;
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
        Val := StrToFloat(GetMoyenne___(Periode, ACol));
        if (NbreEleves > 0) then
        begin//4
          //004C45C4
          I := NbreEleves ;
          J := 1;
          repeat
		  try
            //004C45DC
            if (Val > StrToFloat(Get_Sum(Periode, ACol, J))) then
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
          result := FloatToStrF(K / N * 100,ffFixed{2}, $12{18}, 2)+ ' %';
        end//4
        else
        begin//4
          //004C46C8
          result := '';
        end;//4
      except//3
        on E:EConvertError do
        begin//4
          //004C46E9
          result := '';
        end;//4
      end;//3
      SetAttributs0(Periode, ACol, 14, result);
      SetAttributs1(Periode, ACol,7,false);
    end//2
	else
    result:=GetAttributs0(Periode, ACol, 14);
    //004C473D
end;//0

//004C4778
function TFichierCdn.GetPeriodeTraite(Periode:dword):boolean;
begin//0
  //004C4778
  result := FPeriode.GetPeriodeTraite(Periode);
end;//0


//004C4784
procedure TFichierCdn.SetPeriodeTraiteList_H01(Periode:dword;b:boolean);
begin//0
  //004C4784
  FPeriode.SetPeriodeTraite(Periode, b);
end;//0


//004C4790
function TFichierCdn.IndexModule:dword;
var
  I:integer;
begin//0
  //004C4790
  result := 0;
    for I := 1 to NbrePeriodes do //004C47A7
      result := result  + NbrSerieNotes(I);
end;//0


//004C47E8
procedure TFichierCdn.SetPeriodeTraiteList_H02(a:dword; b:dword; c:string);
var
   I:integer;
   buf:string;
begin//0
  //004C47E8
  if (Get_Coefficient(a, b) <> c) then
  begin//1
    //004C483A
      for I := 1 to NbreEleves do //004C4847
      begin//3
        //004C484B
        SetAttributs__V01(a, I, true);
      end;//3
  end;//1
  SetData_V2(a, b,NbreEleves + IdCoefficient,c );
  FPeriode.SetPeriodeTraite(a, true);
end;//0

//004C48BC
procedure TFichierCdn.SetPeriodeTraiteList_H03(a:dword; b:dword; c:string);
var
 buf : string;
 I:integer;
begin//0
  //004C48BC
  {ESI := c;
  ECX := c + 1;
  lvar_103 := c;
  lvar_2 := b;
  lvar_1 := a;
  ESI := Self;}
  if (GetDateNoteSur(a, b) <> c) then
  begin//1
    //004C490E
      for I := 1 to NbreEleves do//004C491B
        SetAttributs__V01(a, I, true);
  end;//1

  SetData_V2(a, b,NbreEleves + IdNoteSur, c);
  FPeriode.SetPeriodeTraite(a, true);
end;//0

//004C4990
procedure TFichierCdn.DataCopyCols_H01(a:dword; b:dword);
var
  StrList:TStringList;
  I,J,K : integer;
begin//0
  //004C4990
    //004C49B3
    StrList := TStringList.Create;
    StrList.AddStrings(GetDataCols(a, b + 1));
     K:=0;
      for I := 1 to a - 1 do//004C4A08
      begin//3
        //004C4A10
        K := K + StrToInt(FModulesPerPeriode[I - 1]);
      end;//3
    FData.Cols[b + K] := FData.Cols[K - 1 + b];
    FData.Cols[K - 1 + b] := StrList;
    StrList.Destroy;
    FModified := true;
    f940.Clear;
      for I := 1 to IndexModule  do//004C4AD3
        for J := 1 to 14 do//004C4AD8
          f940.Add('1');
    //004C4AFD
end;//0

//004C4B20
procedure TFichierCdn.DataCopyCols_H02(a:dword; b:dword);
var
  I,J,K :integer;
  StrList : TStringList;
begin//0
  //004C4B20
    //004C4B43
    StrList := TStringList.Create;
    StrList.AddStrings(GetDataCols(a, b - 1));
    K:=0;
      for I := 1 to a - 1 do//004C4B98
      begin//3
        //004C4BA0
        K := K + StrToInt(FModulesPerPeriode[I - 1]);
      end;//3
    FData.Cols[K - 2 + b] := FData.Cols[K - 1 + b];
    FData.Cols[K- 1 + b] := StrList;
    StrList.Destroy;
    f940.Clear;
      for I := 1 to IndexModule do//004C4C6A
        for J := 1 to 14 do//004C4C72
          f940.Add('1');
    //004C4C97
end;//0

//004C4CBC
procedure TFichierCdn.SetPeriodeNameList_Hxx(a:TStringlist);
begin//0
  //004C4CBC
  FPeriode.SetPeriodeNameList(a);
end;//0


//004C4CC8
procedure TFichierCdn.SetTypePeriode(Value:string);
begin//0
    FPeriode.SetTypePeriode(Value);
end;//0

//004C4D44
function TFichierCdn.GetArrondirMoyennes_t:dword;
begin//0
  //004C4D44
  result := FSArrondirMoyennes;
end;//0


//004C5078
function TFichierCdn.DataTrier(Periode:dword; Classement:byte; ArrondirMoyennes:dword; ArrondirMoyennes2:dword; e:byte):TStringlist;
var
  StringSort0,StringSort : TStringList;
  QSort : TQSort;
  lvar_1D : boolean;
  K,I:integer;
  Moy,Moy1 : string;
begin//0
    QSort := TQSort.Create(Nil);
    //QSort.f2C := Self;
    //QSort.f34 := Self;
	QSort.OnCompare := Comparer_;
	QSort.OnSwap := CalcMoyBrute___Vx05;
    StringSort := TStringList.Create;
    StringSort0 := TStringList.Create;
	K := NbrePeriodes;
    if (Periode <= K) then
    begin//2
      //004C513B
      lvar_1D := (periode < K) Xor true;
        for I := 1 to NbreEleves do//004C515B
        begin//4
          //004C5162
          if (lvar_1D = false) then
          begin//5
            //004C516C
            Moy := GetMoyennePeriode(Periode, I, ArrondirMoyennes);
            if (Moy <> '') then 
			begin
			    Moy1 := Moy;
				StringSort.Add(GetEleveName(I) + ' -> ' + Moy1);
			end;
          end//5
          else
          begin//5
            //004C5216
            CalcMoyBrute_V07(I, ArrondirMoyennes, ArrondirMoyennes2, e, Moy);
            if (Moy <> '') then 
			begin
			    Moy1 := Moy;
				StringSort.Add(GetEleveName(I) + ' -> ' + Moy1);
			end;
          end;//5
        end;//4

      QSort.sort(StringSort,StringSort.Count);//sub_004B8B48(StringSort,StringSort.Count);
      if (Classement = 0) then
      begin//3
        //004C52DE
       StringSort.Insert(0, 'Classement ascendant');
        StringSort0.AddStrings(StringSort);
      end//3
      else
      begin//3
        //004C52F8       
          for I := 0 to StringSort.Count - 1 do//004C530F
          begin//5
            //004C5317
            StringSort0.Add(StringSort[StringSort.Count - 1 - I]);
          end;//5
        StringSort0.Insert(0, 'Classement descendant');
      end;//3
      StringSort.Destroy;
      QSort.Destroy;
    end;//2
    //004C5387
  result := StringSort0;
end;//0

//004C5404
procedure TFichierCdn.GetBasNotePeriode(Periode:dword; ARow:dword; var S:String); //Determiner la Note la plus basse de la période
var
 I,NumModule,MoyennesSur,N:integer;
 var1,var2,Note,NoteBasse : real;
 Buf:string;
begin//0
  //004C5404..004C544A
    MoyennesSur := GetMoyennesSur; //moyennesSur
	NoteBasse := MoyennesSur;
	N := 0;
	//1- Determiner le NumModule !
    for I:=1 to  NbrSerieNotes(Periode) do //lvar_34
    begin//004C548F
      try
        //004C54A7
        Var1 := StrToFloat(Get_Sum(Periode, I, ARow));
        Var2 := StrToInt(GetDateNoteSur(Periode, I));
        Note := Var1 / Var2 * MoyennesSur;
        if (NoteBasse > Note) then
        begin//004C554F
          NoteBasse := Note;
          {lvar_C := lvar_1C;
          index := lvar_18;}
          NumModule := I;
        end;//4
        N := N + 1;
      except//3
        on E:EConvertError do
        begin//004C558F
        end;//4
      end;//3
    end;//2
	//004C55A7
    if (N <> 0) then
    begin//004C55B1
      S := FloatToStrF(NoteBasse,ffFixed{2}, 18, 2) + '/' + IntToStr(GetMoyennesSur) + ' (' + GetTitleModule(Periode, NumModule) + ')';
    end
	else 
    S := '';//??????
end;//0


//004C56C0
procedure TFichierCdn.CalcMoyBrute_XX0001(Periode:dword; ARow:dword; var value:string);
var
  I,moyennesSur,NumModule,N : integer;
  Val,Max :real;
  NameModule ,buf0,buf1 : string ;
  modules :integer;
begin//0
	N :=0;
     NumModule := 0;
    moyennesSur := GetMoyennesSur;
	  for I := 1 to NbrSerieNotes(Periode) do//004C5743
	  begin
		  try
			//004C575B
			Val := StrToFloat(Get_Sum(Periode, I, ARow)) / StrToInt(GetDateNoteSur(Periode, I)) * moyennesSur;
			if (Max < Val) then
			begin//4
			  //004C5803
			  Max := Val;
			  NumModule := I;
			end;//4
			N := N + 1;
		  except//3
			on E:EConvertError do
			begin//4
			  //004C5843
			end;//4
		  end;//3
      end;//004C585B
    if (N <> 0) then
    begin//2
      //004C5865
      Value := FloatToStrF(Max,ffFixed{2}, $12{18}, 2) + '/' + IntToStr(GetMoyennesSur) + ' (' + GetTitleModule(periode, NumModule) + ')';
    end//2
	else 
    Value := '';
end;//0


//004C5E04
procedure TFichierCdn.SetAttributs0(periode:dword; ACol:dword; ARow:dword;value:string);
var
  Modules,I :integer;
begin//0
     Modules:=0;	
      for I := 1 to periode - 1 do//004C5E52
        Modules := Modules + NbrSerieNotes(I);
    f940[14 * (Modules + ACol - 1) + ARow - 1] := value;
end;//0

//004C5F08
function TFichierCdn.GetAttributs0(Periode:dword; ACol:dword; Info:dword):string; 
var
  Modules:dword;
  I:integer;
begin//0
  //004C5F08..004C5F29
    Modules := 0;
       //Determiner l'index(periode,ACol,Info) = 14*(ACol-1)+14*Modules(ACol-1,1,Periode-1)+Info - 1
      for I := 1 to Periode - 1 do//004C5F44
        Modules := Modules + NbrSerieNotes(I);
    result := f940[14 * (Modules + ACol - 1) + Info - 1];
end;//0


//004C5FF8
procedure TFichierCdn.SetAttributs1(Periode:dword; Module:dword; ARow:dword; d:boolean);
begin//0
  //004C5FF8
  if (d) then  //004C6007
    SetAttributs0(Periode, Module, ARow,'1')
  else
	SetAttributs0(Periode, Module, ARow,'0');
end;//0



//004C6030
function TFichierCdn.GetAttributs1(periode:dword; ACol:dword; info:dword):Boolean;
begin//0
  //004C6030
  result := (GetAttributs0(periode, ACol, info) = '1');
end;//0


//004C6080
procedure TFichierCdn.SetStrMoy(Periode:dword; ARow:dword; Valeur:string);
begin//0
  //004C6080
    FAttributs[(Periode - 1) * NbreEleves + ARow - 1] := Valeur;
end;//0


//004C6144
procedure TFichierCdn.GetAttributs_XX(Periode:dword; ARow:dword; var Valeur:string);
begin//0
  //004C6144
    Valeur := FAttributs[NbreEleves * (Periode - 1) + ARow - 1];
end;//0


//004C61E4
procedure TFichierCdn.SetAttributs__V01(Periode:dword; ARow:dword; c:boolean);
begin//004C61E4
  if (c) then
  begin//004C621D
    FAttributs[NbreEleves * (Periode - 1) + NbrePeriodes * NbreEleves + ARow - 1] := '1';
  end
  else
  FAttributs[NbreEleves * (Periode - 1) + NbrePeriodes * NbreEleves + ARow - 1] := '0';
end;//0


//004C62E8
function TFichierCdn.GetAttributs__V01(a:dword; b:dword):boolean;
begin//0
  //004C62E8..004C630B
    result := (FAttributs[NbreEleves * (a - 1) + NbrePeriodes*NbreEleves + b - 1] = '1');
end;//0


//004C63C8
procedure TFichierCdn.Initialisation;
var
 Periodes,Module,NEleves,K:integer;
begin//0
  //004C63C8
	for K:=1 to 14 do 
	  for Periodes := 1 to NbrePeriodes  do //004C63E8
		for Module := 1 to NbrSerieNotes(Periodes) do//004C640F
		  SetAttributs1(Periodes,Module,K, true); //004C644F
		//004C6456	
	for Periodes := 1 to NbrePeriodes  do //004C63E8
		for NEleves := 1 to NbreEleves do//004C648B
		  SetAttributs__V01(Periodes,NEleves,true); //004C648B
		//004C64C2	
end;


//004C64CC
procedure TFichierCdn.CalcMoyBrute_V06__h(a:String; ARow:dword; c:string);
var
  N,I:integer;
  lvar_24:real;
  buf:string;
begin//0
  //004C64CC
    //004C650B
    lvar_24 := 0;
    N := 0;
      //lvar_24 := NbrePeriodes;
	  for I := 1  to NbrePeriodes do//004C6531
	  begin
		  try
			//004C6549
			CalcMoyBrute_V06(a, I, ARow,buf);
			lvar_24 := StrToFloat(buf) + lvar_24;
			N := N + 1;
		  except//3
			on E:EConvertError do
			begin//4
			  //004C65BD
			end;//4
		  end;//3
      end;
        //004C65D5
    if (N <> 0) then
    begin//2
      //004C65DB
      c := FloatToStrF(lvar_24 / N, ffFixed{2}, $12{18}, 2);
    end//2
	else
    c := '';
    //004C662A
end;//0

//004C6654
function TFichierCdn.IsVersionEtablissement:Boolean;
begin
 result := (FTypeVersion = 'Etablissement');
end;

//004C6680
function TFichierCdn.IsVersionPersonnelle:Boolean;
begin//0
  //004C6680
  result := (FTypeVersion = 'Personnelle');
end;//0


//004C66A8
function TFichierCdn.OpenFileV0(FluxCdn:TFluxCdn; CarnetNotesVersion:string):boolean;
var
  I,J,K,L : integer;
  lvar_307,lvar_407,lvar_507,lvar_607,lvar_707,lvar_807,lvar_907,lvar_A07,lvar_B07,buf : string;
begin//0
  //004C66A8
    //004C66E0
    if ((CarnetNotesVersion <> 'bêta 2') and (CarnetNotesVersion <> 'bêta 3') and (CarnetNotesVersion <> 'bêta 4') and (CarnetNotesVersion <> 'bêta 5') and (CarnetNotesVersion <> 'bêta 6') and (CarnetNotesVersion <> '1.0') ) then
        //004C66F7 004C670E 004C6725 004C673C 004C6753 004C676A
		result := false
	else 
	begin
    try
      //004C677F
      FTypeVersion := 'Personnelle';
      FClasseName := FluxCdn.ReadFromFile;
      FEtablissment := FluxCdn.ReadFromFile;
      FMatiere := FluxCdn.ReadFromFile;
      FYear := FluxCdn.ReadFromFile;
      FRemarque := FluxCdn.ReadFromFile;
      K := StrToInt(FluxCdn.ReadFromFile);
      FData.FixedCols := 0;
      FData.FixedCols := 0;
      FData.RowCount := K + IdNbrEleves__;
      FData.ColCount := 1;
      FModulesPerPeriode := TStringList.Create;
      for I := 1 to 12 do
      begin//3
        //004C68B3
        FModulesPerPeriode.Add('0');
      end;//3
      FPointsAdditif := TStringList.Create;
      FApreciations := TStringList.Create;
      FDateNais := TStringList.Create;
      FRedoublants := TStringList.Create;
      FLieuNais := TStringList.Create;
      FClasses := TStringList.Create;
      FClasses.Add('classe');
      for I := 1 to 3 do
      begin//3
        //004C6946
        for J := 1 to K do
        begin//4
          //004C694D
          FPointsAdditif.Add('');
          FApreciations.Add('');
        end;//4
      end;//3
        for I := 1 to K do//004C6977
        begin//4
          //004C6977
          FDateNais.Add('');
          FLieuNais.Add('');
          FRedoublants.Add('');
        end;//4
        for I := 1 to K do//004C69A9
        begin//4
          //004C69A9
          FEleves.AddEleve(FluxCdn.ReadFromFile);
        end;//4
      L := StrToInt(FluxCdn.ReadFromFile);
      f940 := TStringList.Create;
        for I := 1 to L do //004C6A2D
          for J := 1 to  14 do//004C6A31
            f940.Add('1');
      FAttributs := TStringList.Create;
      for I := 1 to 6 do
      begin//3
        for J := 1 to K do//004C6A60
        begin//4
          //004C6A67
          FAttributs.Add('1');
        end;//4
      end;//3
        for I := 1 to L do//004C6A8B
        begin//4
          //004C6A8F
          lvar_407 := FluxCdn.ReadFromFile;
          lvar_507 := FluxCdn.ReadFromFile;
          lvar_607 := FluxCdn.ReadFromFile;
          lvar_707 := FluxCdn.ReadFromFile;
          lvar_807 := FluxCdn.ReadFromFile;
          lvar_907 := FluxCdn.ReadFromFile;
          lvar_A07 := FluxCdn.ReadFromFile;
          lvar_B07 := FluxCdn.ReadFromFile;
          case StrToInt(lvar_907) of
            0:
            begin//6
              //004C6B26
              lvar_307 := 'Contrôle en classe ' + lvar_B07;
              lvar_907 := 'Contrôle en classe';
            end;//6
            1:
            begin//6
              //004C6B81
              lvar_307 := 'Test en classe ' + lvar_B07;
              lvar_907 := 'Test en classe';
            end;//6
            2:
            begin//6
              //004C6BD9
              lvar_307 := 'Devoir à la maison ' + lvar_B07;
              lvar_907 := 'Devoir à la maison'; 
            end;//6
          end;//5
          SetData_V1(StrToInt(lvar_A07), lvar_307, lvar_407, lvar_507, lvar_607, lvar_707, lvar_807, lvar_907, false);
          for J := 1 to K do
          begin//5
            //004C6CA1
            buf := FluxCdn.ReadFromFile;
            if (buf <> '-1') then
            begin//6
              //004C6CC5
              SetAbs(1, I, J, buf);
            end//6
            else
            begin//6
              //004C6CDE
              SetAbs(1, I, J, 'abs');
            end;//6
          end;//5
        end;//4
      FEnseignant := GetUsersList[0];
      FSArrondirMoyennes := GetArrondirMoyennes;
      FSArrondirMoyennesAnnuelles := GetArrondirMoyennesAnnuelles;
      FStypeMoyennesAnnuelles := GettypeMoyennesAnnuelles;
      FModified := true;
    except//2
      on E:Exception do
      begin//3
        //004C6D6E
        result  := false;
      end;//3
    end;//2
	end;
    result := true;
end;//0

//004C6E9C
procedure TFichierCdn.OpenFileV1(filename:TFileName; b:integer);
var
	buf : string;
	Modules:integer;
	NbrEleves:Integer;
	Periodes:Integer;
	lvar_C:Integer;
	lvar_D:Integer;
	lvar_E:Integer;
	lvar_12C:AnsiString;
	StringList : TStringList;
	StringListTemp : TStringList;
	ITemp:integer;
	I:integer;
begin//0
  //004C6E9C
    try
      //004C6EDF
      if ((CarnetNotesVersion <> '2.0')  and //004C6EF8
          (CarnetNotesVersion <> '2.1')  and //004C6F11
          (CarnetNotesVersion <> '2.2')  and //004C6F2A
          (CarnetNotesVersion <> '2.3')) then//004C6F43
              raise Exception.Create('Mauvais format');

      if (FSignature = 'Carnet de notes') then//004C6F72
		FTypeVersion := 'Personnelle' //$4C8238
      else//004C6F82
        FTypeVersion := 'Etablissement'; //$4C8244;
    
      FFilename := filename;
      if (CarnetNotesVersion = '2.1') Or (CarnetNotesVersion = '2.2') Or (CarnetNotesVersion = '2.3') then
        FEnseignant := FluxCdn.ReadFromFile;  

      FClasseName := FluxCdn.ReadFromFile;
      FEtablissment := FluxCdn.ReadFromFile;
      FMatiere := FluxCdn.ReadFromFile;
      FYear := FluxCdn.ReadFromFile;
      FRemarque := FluxCdn.ReadFromFile;
      FPeriode.SetTypePeriode(FluxCdn.ReadFromFile); //periodes
      Periodes := StrToInt(FluxCdn.ReadFromFile);
      StringList := TStringList.Create;
      if (Periodes > 0) then
      begin//004C714E
        for lvar_C := 1 to Periodes do
        begin//004C7151
          StringList.Add(FluxCdn.ReadFromFile);
        end;//4
      end;//3
      FPeriode.SetPeriodeNameList(StringList);
      StringList.Free;
      NbrEleves := StrToInt(FluxCdn.ReadFromFile);
        for lvar_C := 1 to NbrEleves do //004C71DF
        begin//004C71E2 //ajouter liste eleves
          FEleves.AddEleve(FluxCdn.ReadFromFile);
		  //Eleves.NouvelleEleve.Nom := buf;
        end;//4
	 //if(EBX <> 0) then Exit; //004C7221
      FData.FixedCols := 0;
      FData.FixedRows := 0; 
      FData.RowCount := NbrEleves + IdNbrEleves__;
      FData.ColCount := 1;
      FModulesPerPeriode := TStringList.Create;
      f940 := TStringList.Create;
       //:= TStringList.Create
      Modules := 0;
        for lvar_C := 1 to Periodes do //004C72AB     'nbre_org'//Periodes
        begin //004C72AE
          ITemp := StrToInt(FluxCdn.ReadFromFile);  //ITemp =EBX
          lvar_12C := IntToStr(ITemp);  //nbr_note
          FModulesPerPeriode.Add(lvar_12C);
          for lvar_D := 1 to ITemp do
          begin//004C7318
            FData.ColCount := FData.ColCount + 1;
            FData.Cells[Modules, 0]:= FluxCdn.ReadFromFile;
              for I{lvar_E} := 1 to NbrEleves do //004C7376  'nbr_eleve'
                FData.Cells[Modules, I]:= FluxCdn.ReadFromFile;
            // autres informations   16 infos
            for I := 1 to 9 do   //004C73BC
              FData.Cells[Modules, NbrEleves + I ]:= FluxCdn.ReadFromFile;
            FData.Cells[Modules, NbrEleves + IdNoteSur] := FluxCdn.ReadFromFile;
            FData.Cells[Modules, NbrEleves + IdCoefficient]:= FluxCdn.ReadFromFile;
            FData.Cells[Modules, NbrEleves + IdCompteMoyenne] := FluxCdn.ReadFromFile;
            FData.Cells[Modules, NbrEleves + IdDateCreation]:= FluxCdn.ReadFromFile;
            FData.Cells[Modules, NbrEleves + IdCommentaire] := FluxCdn.ReadFromFile;
            FData.Cells[Modules, NbrEleves + IdTypeNote] := FluxCdn.ReadFromFile;
            if (CarnetNotesVersion = '2.3') then
            begin//004C75C9 
              FData.Cells[Modules, NbrEleves + IdOralEcrit]:= FluxCdn.ReadFromFile;
            end//6
            else//004C7610
              FData.Cells[Modules, NbrEleves + IdOralEcrit]:= 'Ecrit';
            Modules := Modules + 1;
            for I := 1 to 14 do //004C763E
              f940.Add('1'); 
          end;//5
        end;//4
      //end;//3
      FAttributs := TStringList.Create;//004C7669
        for lvar_C := 1 to 2*Periodes do //004C769B
        begin//004C769E
          for lvar_D := 1 to  NbrEleves do//004C76A8
            FAttributs.Add('1'); //$4C826C
        end;//4
      FPointsAdditif := TStringList.Create;
      FApreciations := TStringList.Create;
      FDateNais := TStringList.Create;
      FRedoublants := TStringList.Create;
      FLieuNais := TStringList.Create;
      FClasses := TStringList.Create;
      if (CarnetNotesVersion = '2.0') then
      begin //004C776
        FClasses.Add('classe');
		for lvar_C := 1 to Periodes do //004C7775
		begin//004C7778
			for lvar_D := 1 to NbrEleves do
			begin//004C7782
			  FPointsAdditif.Add(FluxCdn.ReadFromFile);
			end;//6
		end;//5
        FEnseignant := FluxCdn.ReadFromFile;
        FSArrondirMoyennes := StrToInt(FluxCdn.ReadFromFile);
        for lvar_C := 1 to Periodes do //004C782F
        begin//5
            for lvar_D := 1 to NbrEleves do //004C7832
            begin //004C783C
              FApreciations.Add(FluxCdn.ReadFromFile);
            end;//6
        end;  
        for lvar_C := 1 to NbrEleves do //004C7883
        begin//004C7886
            FDateNais.Add('');
            FRedoublants.Add('');
            FLieuNais.Add('1'); 
        end;//5 
      end//3
      else if (CarnetNotesVersion = '2.1') then
      begin//004C78DB
        FClasses.Add('classe'); //$4C8278;
		  //Points en +/-
          for lvar_C := 1 to  Periodes do //004C78F9
          begin//5
            for lvar_D := 1 to NbrEleves do //004C78FC
            begin //004C7906
              FPointsAdditif.Add(FluxCdn.ReadFromFile);
              FApreciations.Add(FluxCdn.ReadFromFile);
            end;//6
          end;//5
          for lvar_C := 1 to NbrEleves do //004C7983
          begin//004C7986
            FDateNais.Add('');
            FRedoublants.Add('');
            FLieuNais.Add('1'); //$4C826C;
          end;//5
        FSArrondirMoyennes := StrToInt(FluxCdn.ReadFromFile);
        FSArrondirMoyennesAnnuelles := StrToInt(FluxCdn.ReadFromFile);
        FStypeMoyennesAnnuelles := StrToInt(FluxCdn.ReadFromFile);
      end//3
      else if (CarnetNotesVersion = '2.2') then
      begin//004C7AA1
          for lvar_C := 1 to Periodes do //004C7AA8
          begin//5
            for lvar_D := 1 to NbrEleves do //004C7AAB
            begin//004C7AB5
              FPointsAdditif.Add(FluxCdn.ReadFromFile);
            end;//6
          end;//5
        ITemp := StrToInt(FluxCdn.ReadFromFile);
          for lvar_C := 1 to ITemp do //004C7B32
          begin//004C7B35
            FClasses.Add(FluxCdn.ReadFromFile);
          end;//5
        FTypeBulletins.SetBulletinsTitle(FluxCdn.ReadFromFile);
        ITemp := StrToInt(FluxCdn.ReadFromFile);
        StringListTemp := TStringList.Create;
          for lvar_C := 1 to ITemp do //004C7BF4
          begin//004C7BF7
            StringListTemp.Add(FluxCdn.ReadFromFile);
          end;//5
        FTypeBulletins.SetNomsbulletins(StringListTemp);
        StringListTemp.Free;
          for lvar_C := 1 to Periodes do //004C7C49
          begin//5
            for lvar_D := 1 to NbrEleves do //004C7C4C
            begin//004C7C56
              for lvar_E := 1 to ITemp do
              begin//004C7C5D
                FApreciations.Add(FluxCdn.ReadFromFile);
              end;//7
            end;//6
          end;//5
          for lvar_C := 1 to NbrEleves do //004C7CAD
          begin//004C7CB0
            FDateNais.Add(FluxCdn.ReadFromFile);
            FLieuNais.Add(FluxCdn.ReadFromFile);
            FRedoublants.Add('');
          end;//5
		//bug here
        FSArrondirMoyennes := StrToInt(FluxCdn.ReadFromFile);
        FSArrondirMoyennesAnnuelles := StrToInt(FluxCdn.ReadFromFile);
        FStypeMoyennesAnnuelles := StrToInt(FluxCdn.ReadFromFile);
      end//3
      else if (CarnetNotesVersion = '2.3') then
      begin//004C7E18
          for lvar_C := 1 to Periodes do //004C7E1F
          begin//5
            for lvar_D := 1 to  NbrEleves do //004C7E22
            begin//004C7E2C
              FPointsAdditif.Add(FluxCdn.ReadFromFile);
            end;//6
          end;//5
        ITemp := StrToInt(FluxCdn.ReadFromFile);
          for lvar_C := 1 to ITemp do //004C7EA9
          begin//004C7EAC
            FClasses.Add(FluxCdn.ReadFromFile);
          end;//5
        
        FTypeBulletins.SetBulletinsTitle(FluxCdn.ReadFromFile);
        ITemp := StrToInt(FluxCdn.ReadFromFile);
        StringListTemp := TStringList.Create;
        for I := 1 to ITemp do //004C7F6B
        begin//004C7F6E
            StringListTemp.Add(FluxCdn.ReadFromFile);
        end;//5
        FTypeBulletins.SetNomsbulletins(StringListTemp);
        StringListTemp.Free;
          for lvar_C := 1 to Periodes do //004C7FC0
          begin//004C7FC3
            for lvar_D := 1 to NbrEleves do
            begin//004C7FCD
              for lvar_E := 1 to ITemp do
              begin//004C7FD4
                FApreciations.Add(FluxCdn.ReadFromFile);
              end;//7
            end;//6
          end;//5
          for I := 1 to  NbrEleves do //004C8024
          begin//004C8027
            FDateNais.Add(FluxCdn.ReadFromFile); //date de naissance
            FLieuNais.Add(FluxCdn.ReadFromFile);
            FRedoublants.Add(FluxCdn.ReadFromFile);
          end;//5
        FSArrondirMoyennes := StrToInt(FluxCdn.ReadFromFile);
        FSArrondirMoyennesAnnuelles := StrToInt(FluxCdn.ReadFromFile);
        FStypeMoyennesAnnuelles := StrToInt(FluxCdn.ReadFromFile);
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
procedure TFichierCdn.OpenFile(Filename : string);
var
  b:integer; //paramettres 
  buf:string;
  EFileName,Msg : string;
begin//0
  b:=0;
    FSArrondirMoyennes := GetArrondirMoyennes;
    FSArrondirMoyennesAnnuelles := GetArrondirMoyennesAnnuelles;
    FStypeMoyennesAnnuelles := GettypeMoyennesAnnuelles;
    FTypeBulletins := TTypeBulletins.Create;
    FPeriode := TPeriodes.Create;
    FEleves := TEleves.Create;
    Succes := True;
    OldVersion := false;
    //FFileName := FileName;
    FData := TStringGrid.Create(Nil);
	{$IFDEF CdnpVer30}
	Eleves := TElevees.Create; //code ajouté version 3.0
	{$ENDIF}
    if (FFileName <> '') then
    begin//2
      //004C8370..004C837E
	  try
        FluxCdn  := TFluxCdn.Create(FFileName, fmOpenRead);
		FSignature := FluxCdn.ReadFromFile();
        if ((FSignature <> 'Carnet de notes') and (FSignature <> 'Carnet de Notes')) then //004C83D0
			//004C83E9
            raise Exception.Create('Ce fichier n''est pas un fichier Carnet de Notes');
        CarnetNotesVersion := FluxCdn.ReadFromFile(); //f110
        if (CarnetNotesVersion <> '2.0') and (CarnetNotesVersion <> '2.1') and (CarnetNotesVersion <> '2.2') and (CarnetNotesVersion <> '2.3') then //004C8440..004C845D..004C847A..004C8497
		begin//
			if (not(OpenFileV0(FluxCdn,CarnetNotesVersion))) then//004C84B2
			  raise Exception.Create('Mauvaise CarnetNotesVersion de fichier.')
			else
			begin//004C84CD
			  if (b = 0) then
			  begin//004C84D1
				EFileName := ExtractFileName(FFileName);
				Msg := 'Le fichier "' + EFileName + '" est un fichier d''une ancienne CarnetNotesVersion de Carnet de Notes.' + #13 + #10 + #13 + #10 + 'Son importation dans ' + 'Carnet de Notes CarnetNotesVersion Personnelle' + ' a été réussie.';
				MessageBoxA(0, PChar(Msg), 'Carnet de Notes Personnelle', $40{64});
			  end;//9
			  OldVersion := true;
			end;//8
		end//7
        else
        begin//4
          OpenFileV1(FFileName, {c}0);
        end;//4
        if (IsVersionEtablissement) then
        begin//004C8562
          if ({d = 0}false) then
          begin//004C8568
            EFileName := ExtractFileName(FileName);
            Msg := 'Le fichier "' + EFileName + '" a été créé avec la CarnetNotesVersion Etablissement de Carnet de Notes.' + #13 + #10 + #13 + #10 + 'Certaines fonctionnalités de ' + 'Carnet de Notes CarnetNotesVersion Personnelle' + ' seront désactivées pour ce fichier.';
            MessageBoxA(0, PChar(Msg), 'Carnet de Notes CarnetNotesVersion Personnelle', $40{64});
          end;//5
        end;//4
        FluxCdn.Free;
      except//3
        on E:Exception do
        begin//004C85F9
          FluxCdn.Free;
          Succes := false;
        end;//4
      end;//3
    end
	else
    InitClasse;
end;

//004C8880
procedure TFichierCdn.InitClasse;
var
 lvar_2, lvar_4, lvar_5:word;
 I: integer;
begin//0
  //004C8880..004C889C
    FTypeVersion := 'Personnelle';
    FClasseName := 'Nouvelle classe';
    FEtablissment := '';
    FMatiere := '';
    DecodeDate(Now,lvar_2, lvar_4, lvar_5);
    FYear := IntToStr(lvar_2) + '/' + IntToStr(lvar_2+1);
    FRemarque := '';
    FEnseignant := '';
    FSArrondirMoyennes := GetArrondirMoyennes;
    FSArrondirMoyennesAnnuelles := GetArrondirMoyennesAnnuelles;
    FStypeMoyennesAnnuelles := GettypeMoyennesAnnuelles;
    FFileName := FClasseName;
    FModulesPerPeriode := TStringList.Create;
    for I := 1 to 52 do//004C8982
      FModulesPerPeriode.Add('0');

    FPointsAdditif := TStringList.Create;
    FApreciations := TStringList.Create;
    FDateNais := TStringList.Create;
    FRedoublants := TStringList.Create;
    FLieuNais := TStringList.Create;
    FClasses := TStringList.Create;
    FClasses.Add('classe');
    f940 := TStringList.Create;
    FAttributs := TStringList.Create;
    FData.FixedCols := 0;
    FData.FixedRows := 0;
    FData.RowCount := IdNbrEleves__;
    FData.ColCount := 1;
    FModified := true;
end;//0


//004C8AD8
function TFichierCdn.Get_SArrondirMoyennesAnnuelles:dword;
begin//0
  //004C8AD8
  result := FSArrondirMoyennesAnnuelles;
end;//0


//004C8AE0
function TFichierCdn.Get_StypeMoyennesAnnuelles:dword;
begin//0
  //004C8AE0
  result := FStypeMoyennesAnnuelles;
end;//0


//004C8AE8
function TFichierCdn.GetbulletinsCount:dword;
begin//0
  //004C8AE8
  result := FTypeBulletins.GetbulletinsCount;
end;//0


//004C8AF4
procedure TFichierCdn.GetNomsbulletins(a:dword; var b:String);
begin//0
  //004C8AF4
  FTypeBulletins.GetNomsbulletins(a, b);
end;//0


//004C8B54
function TFichierCdn.GetBulletinsTitle:string;
begin//0
  //004C8B54
   result := FTypeBulletins.GetBulletinsTitle;
end;//0


//004C8BAC
function TFichierCdn.GetNomsbulletinsList():TStrings;
begin
  result := FTypeBulletins.GetNomsbulletinsList;
end;

//004C8BB8

function TFichierCdn.GetDateNais(a:dword):string;
begin//0
  //004C8BB8
    result := FDateNais[a - 1]; //date de naissance
end;

//004C8C2C
procedure TFichierCdn.Set_DateNais(a:dword; Value:String);
begin//0
    FDateNais[a - 1] := Value;
end;//0

//004C8CB8
function TFichierCdn.GetLieuNais(Eleve:dword):string;
begin//0
  //004C8CB8..004C8CD9
    try
      //004C8CE7
      result := IntToStr(StrToInt(FLieuNais[Eleve - 1]));
    except//004C8D32
      result :='';// $3101{12545};
    end;//2
end;//0


//004C8D68
function TFichierCdn.GetClassesCount:dword;
begin//0
  //004C8D68
  result := FClasses.Count;
end;//0


//004C8D84
function TFichierCdn.GetClasses_(a:dword):string; 
begin//0
    result := FClasses[a - 1];
end;//0


//004C8DF8
procedure TFichierCdn.SetRedoublants_(Eleve:dword; b:boolean);
begin//0
  //004C8DF8
  if (b ) then//004C8E00
    FRedoublants[Eleve - 1] := 'R'
  else
  FRedoublants[Eleve - 1] := '';
end;//0

//004C8E50
function TFichierCdn.IsRedoublant( b:dword):boolean; //redoublant
begin
  //004C8E50
    result := (FRedoublants[b - 1] = 'R');
end;

//004C8EC8
function TFichierCdn.SetEcritOral_(b:dword; c:dword; d:boolean):boolean;
begin//0
  //004C8EC8
  if (d) then //004C8EDB
    SetData_V2(b, c,NbreEleves + IdOralEcrit ,'Oral')
  else 
    SetData_V2(b, c,NbreEleves + IdOralEcrit ,'Ecrit' );
end;//0

//004C8F6C
procedure TFichierCdn.CalcMoyAndArrondir(Periode:dword; ARow:dword; Arrondir:dword; var s:string);
var
  buf:string;
begin//0
  //004C8F6C
  CalcMoyBrute___(Periode, ARow, buf);
  Arrondir__(buf, Arrondir, s);
end;//0

//004C8FB0
procedure TFichierCdn.CalcMoyBrute___(Periode:dword; ARow:dword; var s:string);
var
Somme, Total, NoteSur, Coefficient : Real;
I:integer;
buf:string;
begin//0
  //004C8FB0
    //004C8FED
    Somme := 0;
    Total := 0;
      for I := 1 to NbrSerieNotes(Periode)  do//004C901D
      begin//3
        //004C9027
        if (GetCompteMoyenne(Periode, I) = 'oui') then
        begin//4
          //004C9066
          if (GetOralEcrit(Periode, I) = 'Oral') then
          begin//5
            //004C90A4
            try
              //004C90B2
              Coefficient := StrToFloat(Get_Coefficient(Periode, I));
              NoteSur := StrToFloat(GetDateNoteSur(Periode, I));
              Somme := StrToFloat(Get_Sum(Periode, I, ARow)) * Coefficient + Somme;
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
    
    if (Total <> 0) then //004C91EA
      s := FloatToStrF(GetMoyennesSur * (Somme / Total),ffFixed{2}, $12{18}, 2)
	else 
      s := '';
    //004C924C
end;//0

//004C9280
procedure TFichierCdn.CalcMoyBrute___Vx01(Periode:dword; ARow:dword; Arrondir:dword; var s:string);
var
  buf:string;
begin//0
  //004C9280
  CalcMoyBrute___Vx02(Periode, ARow, buf);
  Arrondir__(buf, Arrondir, s);
end;//0

//004C92C4
procedure TFichierCdn.CalcMoyBrute___Vx02(Periode:dword; ARow:dword; var s:string);
var
  Somme, Total, Coefficient, NoteSur : Real;
  I:integer;
  buf:string;
begin//0
  //004C92C4
    //004C9301
    Somme := 0;
	Total := 0;
      for I := 1 to NbrSerieNotes(Periode)  do
      begin//3
        //004C933B
        if (GetCompteMoyenne(Periode, I) = 'oui') then
        begin//4
          //004C937A
          if (GetOralEcrit(Periode, I) = 'Ecrit') then
          begin//5
            //004C93B8
            try
              //004C93C6
              Coefficient := StrToFloat(Get_Coefficient(Periode, I));
              NoteSur := StrToFloat(GetDateNoteSur(Periode, I));
              Total := StrToFloat(Get_Sum(Periode, I, ARow)) * Coefficient + Total;
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
    if (Somme <> 0) then //004C94FE
      s := FloatToStrF(GetMoyennesSur * (Total / Somme),ffFixed{2}, $12{18}, 2)
	else
    s := '';
    //004C9560
end;//0

//004C9594
procedure TFichierCdn.CalcMoyBrute___Vx03(a:dword; b:dword; c:string);
var
  N:integer;
  lvar_10:real;
  buf:string;
  I:integer;
begin//0
  //004C9594
    //004C95C2
    lvar_10 := 0;
    N := 0;
      //004C95E2
	  for I := 1 to NbrePeriodes do 
	  begin
		  try
			//004C95F7
			CalcMoyAndArrondir(I, a, b, buf);
			lvar_10 := StrToFloat(buf) + lvar_10;
			N := N + 1;
		  except//3
			on E:EConvertError do
			begin//4
			  //004C9655
			end;//4
		  end;//3
        //004C9669
    end;//2
    if (N <> 0) then //004C966F
      Arrondir__(FloatToStrF(lvar_10 / N, {2}ffFixed, $12{18}, 2), b, c)
	else
    c := '';
    //004C96E4
end;//0

//004C9708
procedure TFichierCdn.CalcMoyBrute___Vx04(ARow:dword; Arrondir:dword; c:string);
var
  N,I:integer;
  lvar_10:real;
  buf:string;
begin//0
  //004C9708
    //004C9736
    lvar_10 := 0;
    N := 0;
	  for I := 1 to NbrePeriodes do//004C9756
	  begin
		  try
			//004C976B
			CalcMoyBrute___Vx01(I, ARow, Arrondir, buf);
			lvar_10 := StrToFloat(buf) + lvar_10;
			N := N + 1;
		  except//3
			on E:EConvertError do
			begin//4
			  //004C97C9
			end;//4
		  end;//3
			//004C97DD
    end;//2
    if (N <> 0) then
    begin//2
      //004C97E3
      Arrondir__(FloatToStrF(lvar_10 / N , {2}ffFixed, $12{18}, 2), Arrondir, c);
    end//2
	else
    c := '';
    //004C9858
end;//0

procedure  TFichierCdn.Comparer_(Sender:TObject; e1:Word; i:Word; j:dword; Result:integer);
var
  S1,S2,St1,St2:string;
  Val1,Val2:real;
begin//0
  //004C4D4C
    //004C4DA8
    S1 := TStringList(e1)[i];
    St1 := Copy(S1, Pos('->', S1) + 2, Length(S1));
    S2 := TStringList(e1)[j];
    St2 := Copy(S2, Pos('->', S2) + 2, Length(S2));
    try
      //004C4EC8
      Val1 := StrToFloat(St1);//lvar_120
      Val2 := StrToFloat(St2);
      if (Val2 > Val1) then//004C4F15
        Result := -1
	  else 
      if (Val2 < Val1) then//004C4F2D
        Result := 1
	  else
		Result := 0;
    except//2
      on E:EConvertError do
      begin//3
        //004C4F5A
        Result := 0;//EDX
      end;//3
    end;//2
    //004C4F73
end;//0

//004C4FA0
procedure TFichierCdn.CalcMoyBrute___Vx05(Sender:TObject; e1:Word; i:Word; j:dword);
var
   S:  String;
begin//0
	S := TStringList(e1)[i];
    TStringList(e1)[i] := TStringList(e1)[j];
    TStringList(e1)[j]  := S;
end;//0

function TFichierCdn.GetEleveNameComplet(I:integer):string;
var
  datenais : string;
begin
	result:=GetEleveName(I);
	datenais :=GetDateNais(I);
	if ((Trim(datenais) <> '') and GetAfficherDatesDeNaissance) then//004F5DD6
	begin//6
	//004F5DDF
	result := result + ' (' + datenais + ')';
	end;//6
	if (IsRedoublant(I) and GetAfficherR) then //004F5E34
	result := result + ' (R)';
end;

end.