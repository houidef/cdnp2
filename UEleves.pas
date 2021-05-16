{***********************************************************
* Version Original V0.03 build 1                           *
* Decompiled by Houidef AEK v 12:20 mercredi, août 29, 2018*
* The disassembly process : 100%                            *
************************************************************}
unit UEleves;

interface

uses
Forms, Windows,  SysUtils, Classes;

type
  TEleves = class(TObject)
  public
    Elevelist:TStringList;//f4
    constructor Create;//004B6F58
    function EleveCount:dword;//004B6FB0
    procedure EleveItem(b:dword; var c:String);//004B6FCC
    function EleveLists:TStringList;//004B700C
    procedure AddEleve(Value:String);//004B7010
    procedure DeleteEleve(a:dword);//004B705C
    procedure CopyEleve(a:TStringList);//004B70B0
  end;


implementation

//004B6F58
constructor TEleves.Create;
begin//0
  //004B6F58
  inherited Create;
  Elevelist := TStringList.Create;
  Elevelist.Sorted := True;
  Elevelist.Duplicates := dupAccept;
end;//0

//004B6FB0
function TEleves.EleveCount:dword;
begin//0
  //004B6FB0
  result := Elevelist.Count;
end;//0


//004B6FCC
procedure TELeves.EleveItem(b:dword; var c:String);
begin//0
  //004B6FCC
  if (Elevelist.count >= b) then
  begin//004B6FE5
    c := Elevelist[b - 1];
  end
  else 
     c := '';
end;//0

//004B700C
function TELeves.EleveLists:TStringList;
begin//0
  //004B700C
  result := Elevelist;
end;//0


//004B7010
procedure TEleves.AddEleve(Value:String);
begin//0
  //004B7010
    Elevelist.Add(Value);
end;//0


//004B705C
procedure TEleves.DeleteEleve(a:dword);
begin//0
  //004B705C
  if (a < Elevelist.Count) then//004B7094
    Elevelist.Delete(a - 1);
end;//0

//004B70B0
procedure televes.CopyEleve(a:TStringList);
var
  I : integer;
begin//0
  //004B70B0..004B70D5
    Elevelist.Clear;

      for I := 0 to a.count - 1 do //004B70F8
      begin//3
        //004B70FB
        //lvar_C:= Copy(a[ESI], 0, 100);
        Elevelist.Add(a[I]);
      end;//3
    
end;//0


end.