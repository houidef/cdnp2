{***********************************************************
* Version Original V0.03 build 1                           *
* Decompiled by HOUIDEF AEK v 12:20 mercredi, août 29, 2018*
* The disassembly process : 100%                            *
************************************************************}
unit UEleves;

interface

uses
Forms, Windows,  SysUtils, Classes;

type
  TEleves = class(TObject)
  public
    f4:TStringList;
    constructor Create;//004B6F58
    function sub_004B6FB0:dword;//004B6FB0
    procedure sub_004B6FCC(b:dword; var c:String);//004B6FCC
    function sub_004B700C:TStringList;//004B700C
    procedure sub_004B7010(a:String);//004B7010
    procedure sub_004B705C(a:dword);//004B705C
    procedure sub_004B70B0(a:TStringList);//004B70B0
  end;


implementation

//004B6F58
constructor TEleves.Create;
begin//0
  //004B6F58
  inherited Create;
  f4 := TStringList.Create;
  f4.Sorted := True;
  f4.Duplicates := dupAccept;
end;//0

//004B6FB0
function TEleves.sub_004B6FB0:dword;
begin//0
  //004B6FB0
  result := f4.Count;
end;//0


//004B6FCC
procedure TELeves.sub_004B6FCC(b:dword; var c:String);
begin//0
  //004B6FCC
  if (f4.count >= b) then
  begin//004B6FE5
    c := f4[b - 1];
  end
  else 
     c := '';
end;//0

//004B700C
function TELeves.sub_004B700C:TStringList;
begin//0
  //004B700C
  result := f4;
end;//0


//004B7010
procedure TEleves.sub_004B7010(a:String);
begin//0
  //004B7010
    f4.Add(a);
end;//0


//004B705C
procedure TEleves.sub_004B705C(a:dword);
begin//0
  //004B705C
  if (a < f4.Count) then//004B7094
    f4.Delete(a - 1);
end;//0

//004B70B0
procedure televes.sub_004B70B0(a:TStringList);
var
  I : integer;
begin//0
  //004B70B0..004B70D5
    f4.Clear;

      for I := 0 to a.count - 1 do //004B70F8
      begin//3
        //004B70FB
        //lvar_C:= Copy(a[ESI], 0, 100);
        f4.Add(a[I]);
      end;//3
    
end;//0


end.