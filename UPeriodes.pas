{***********************************************************
* Version Original V0.03 build 1                           *
* Decompiled by HOUIDEF AEK v 12:20 mercredi, août 29, 2018*
* The disassembly process : 100%                            *
************************************************************}
unit UPeriodes;

interface

uses
Forms, Windows,  SysUtils, Classes;

type
  TPeriodes = class(TObject)
  public
    FTypePeriode : String;//f4
	FPeriodeName : TStringList; //f8
    FGetPeriodeTraite : array of boolean;//fC
    constructor Create;//004B6B8C
    function GetTypePeriode:string;//004B6CC4
    function PeriodeNameCount:integer;//004B6CD8 
    function GetPeriodeName(Value:dword):string; //004B6CF4
    function GetPeriodeNameList:TStringList;//004B6D34
    procedure SetTypePeriode(Value:String);//004B6D38
    procedure SetPeriodeNameList(x:TStringList);//004B6D84
    procedure SetPeriodeTraite(a:byte; b:boolean);//004B6E84
    function GetPeriodeTraite(a:byte):boolean;//004B6EA8
  end;


implementation

//004B6B8C
constructor TPeriodes.Create;
var
  I: integer;
begin//0
  //004B6B8C
  inherited Create;
  FTypePeriode := 'Trimestres';
  FPeriodeName := TStringList.Create;
  FPeriodeName.Add('Premier trimestre');
  FPeriodeName.Add('Deuxième trimestre');
  FPeriodeName.Add('Troisième trimestre');
  SetLength(FGetPeriodeTraite, FPeriodeName.Count);
	for I := 0 to FPeriodeName.Count - 1 do//004B6C28
      FGetPeriodeTraite[I] := true;  

end;

//004B6CC4
function TPeriodes.GetTypePeriode;
begin
  result:=FTypePeriode;
end;

function TPeriodes.PeriodeNameCount: integer;
begin//0
  Result := FPeriodeName.Count;
end;//0

//004B6CF4
function TPeriodes.GetPeriodeName(Value:dword):string;
begin//0
  //004B6CF4
  if (FPeriodeName.Count >= Value) then //004B6D0D
    result := FPeriodeName[Value - 1]
  else result := '';
end;


//004B6D34
function TPeriodes.GetPeriodeNameList:TStringList;
begin
   result:= FPeriodeName;
end;

//004B6D38
procedure TPeriodes.SetTypePeriode(Value:String);
begin//0
    FTypePeriode := Value;
end;//0


//004B6D84
procedure TPeriodes.SetPeriodeNameList(x:TStringList);
var
  I: integer;
begin//0
  //004B6D84
    FPeriodeName.Clear;
      for I := 0 to x.Count - 1 do //004B6DD2
        FPeriodeName.Add(x[I]);
    SetLength(FGetPeriodeTraite, x.Count);
      for I := 0 to x.Count - 1 do //004B6E3D
        FGetPeriodeTraite[I] := true;
end;//0


//004B6E84
procedure TPeriodes.SetPeriodeTraite(a:byte; b:boolean);
begin//004B6E84
  FGetPeriodeTraite[a - 1] :=b
end;//0

//004B6EA8
function TPeriodes.GetPeriodeTraite(a:byte):boolean;
begin//004B6EA8
  result := FGetPeriodeTraite[a - 1];
end;//0


end.