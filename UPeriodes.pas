{***************************************
* Version Original V0.01
* Created by Houidef AEK v 12:04 mardi 27 f�vrier 2018
***************************************}
unit UPeriodes;

interface

uses
Forms, Windows,  SysUtils, Classes;

type
  TPeriodes = class(TObject)
  public
    typeperiode : String;//f4
	PeriodesList : TStringList;//f8
    FShowPeriode : array of boolean;//fC
    constructor Create;//004B6B8C
    procedure GetTypePeriode_(a:string);//004B6CC4
    function GetNbrePeriodes:integer;//004B6CD8 
    procedure GetPeriodName(a:dword; b:string);//004B6CF4
    function GetPeriodesListx:TStringList;//004B6D34
    procedure SetTypePeriode__(x:String);//004B6D38
    procedure SetPeriodes(x:TStringList);//004B6D84
    procedure SetShowPeriode(a:byte; b:boolean);//004B6E84
    function GetShowPeriode(a:byte):boolean;//004B6EA8
  end;


implementation

//004B6B8C
constructor TPeriodes.Create;
var
  I: integer;
begin//0
  //004B6B8C
  inherited Create;
  typeperiode := 'Trimestres';
  PeriodesList := TStringList.Create;
  PeriodesList.Add('Premier trimestre');
  PeriodesList.Add('Deuxi�me trimestre');
  PeriodesList.Add('Troisi�me trimestre');
  SetLength(FShowPeriode, PeriodesList.Count);
	for I := 0 to PeriodesList.Count - 1 do//004B6C28
      FShowPeriode[I] := true;  

end;

//004B6CC4
procedure TPeriodes.GetTypePeriode_(a : string);
begin
  a:=typeperiode;
end;

function TPeriodes.GetNbrePeriodes: integer;
begin//0
  Result := PeriodesList.Count;
end;//0

//004B6CF4
procedure TPeriodes.GetPeriodName(a:dword; b:string);
begin//0
  //004B6CF4
  if (PeriodesList.Count >= a) then
  begin//004B6D0D
    b := PeriodesList[a - 1];
    Exit;
  end
  else b := '';
end;



//004B6D34
function TPeriodes.GetPeriodesListx:TStringList;
begin
   result:= PeriodesList;
end;

//004B6D38
procedure TPeriodes.SetTypePeriode__(x:String);
begin//0
  //004B6D38
    typeperiode := x;
end;//0


//004B6D84
procedure TPeriodes.SetPeriodes(x:TStringList);
var
  I: integer;
begin//0
  //004B6D84
    PeriodesList.Clear;
      for I := 0 to x.Count - 1 do //004B6DD2
        PeriodesList.Add(x[I]);
    SetLength(FShowPeriode, x.Count);
      for I := 0 to x.Count - 1 do //004B6E3D
        FShowPeriode[I] := true;
end;//0


//004B6E84
procedure TPeriodes.SetShowPeriode(a:byte; b:boolean);
begin//004B6E84
  FShowPeriode[a - 1] :=b
end;//0

//004B6EA8
function TPeriodes.GetShowPeriode(a:byte):boolean;
begin//004B6EA8
  result := FShowPeriode[a - 1];
end;//0


end.