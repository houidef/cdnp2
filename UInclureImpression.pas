//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit UInclureImpression;

interface

uses
Forms, Windows,  SysUtils, Classes;

type

  TInclureImpression = class(TObject)
  public
    f4: dword;
	f8: TStringlist;
    fC: array of boolean;//fC
    constructor Create(a:dword);//004B8C78
  end;
  var 
    InclureImpression:TInclureImpression;
	InclureImpression1:TInclureImpression;
	InclureImpression2:TInclureImpression;

implementation

//004B8C78
constructor TInclureImpression.Create(a:dword);
var
  I:integer;
begin//0
  //004B8C78
  inherited Create;
  f4 := a;
  f8 := TStringList.create;  
  if (f4 = 0) Or (f4 = 2) then//004B8CB2
  begin//004B8CBE
    f8.Add('Nombre d''élèves présents');
    f8.Add('Min');
    f8.Add('Max');
    f8.Add('Moyenne');
    f8.Add('Ecart type');
    f8.Add('% notes < moyenne');
    f8.Add('% notes < moyenne classe');
    f8.Add('Noté sur');
    f8.Add('Coefficient');
    f8.Add('Compte dans la moyenne');
    f8.Add('Date');
    f8.Add('Commentaire');
    f8.Add('Type de notes');
    f8.Add('Oral ou écrit');
  end;//1
  if (f4 = 1) then
  begin//004B8D7A
    f8.Add('Min');
    f8.Add('Max');
    f8.Add('Moyenne');
    f8.Add('Ecart type');
    f8.Add('% moyennes < moyenne');
    f8.Add('% moyennes < moyenne classe');
  end;//1

  SetLength(fC, f8.Count);
 
    for I := 0 to f8.Count - 1 do //004B8DFD
    begin//2
      //004B8E00
      fC[I] := true;
    end;//2

end;//0


end.