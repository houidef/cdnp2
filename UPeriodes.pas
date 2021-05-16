{***************************************
* Version Original V0.01
* Created by Houidef AEK v 12:04 mardi 27 février 2018
***************************************}
unit UPeriodes;

interface

uses
Forms, Windows,  SysUtils, Classes;

type
  TPeriodes = class(TObject)
  public
    f4 : String;//f4
	f8 : TStringList;
    fC : array of boolean;//fC
    constructor Create;//004B6B8C
    procedure sub_004B6CC4(a:string);//004B6CC4
    function GetNbrePeriodes:integer;//004B6CD8 
    procedure sub_004B6CF4(a:dword; b:string);//004B6CF4
    function sub_004B6D34:TStringList;//004B6D34
    procedure sub_004B6D38(x:String);//004B6D38
    procedure sub_004B6D84(x:TStringList);//004B6D84
    procedure sub_004B6E84(a:byte; b:boolean);//004B6E84
    function sub_004B6EA8(a:byte):boolean;//004B6EA8
  end;


implementation

//004B6B8C
constructor TPeriodes.Create;
var
  I: integer;
begin//0
  //004B6B8C
  inherited Create;
  f4 := 'Trimestres';
  f8 := TStringList.Create;
  f8.Add('Premier trimestre');
  f8.Add('Deuxième trimestre');
  f8.Add('Troisième trimestre');
  SetLength(fC, f8.Count);
	for I := 0 to f8.Count - 1 do//004B6C28
      fC[I] := true;  

end;

//004B6CC4
procedure TPeriodes.sub_004B6CC4(a : string);
begin
  a:=f4;
end;

function TPeriodes.GetNbrePeriodes: integer;
begin//0
  Result := f8.Count;
end;//0

//004B6CF4
procedure TPeriodes.sub_004B6CF4(a:dword; b:string);
begin//0
  //004B6CF4
  if (f8.Count >= a) then
  begin//004B6D0D
    b := f8[a - 1];
    Exit;
  end
  else b := '';
end;



//004B6D34
function TPeriodes.sub_004B6D34:TStringList;
begin
   result:= f8;
end;

//004B6D38
procedure TPeriodes.sub_004B6D38(x:String);
begin//0
  //004B6D38
    f4 := x;
end;//0


//004B6D84
procedure TPeriodes.sub_004B6D84(x:TStringList);
var
  I: integer;
begin//0
  //004B6D84
    f8.Clear;
    
      for I := 0 to x.Count - 1 do //004B6DD2
        f8.Add(x[I]);

    SetLength(fC, x.Count);

      for I := 0 to x.Count - 1 do //004B6E3D
        fC[I] := true;
      
end;//0


//004B6E84
procedure TPeriodes.sub_004B6E84(a:byte; b:boolean);
begin//004B6E84
  fC[a - 1] :=b
end;//0

//004B6EA8
function TPeriodes.sub_004B6EA8(a:byte):boolean;
begin//004B6EA8
  result := fC[a - 1];
end;//0


end.