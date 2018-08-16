{***************************************
* Version Original V0.01
* Decompiled by HOUIDEF AEK v.16:39 mardi 20 f�vrier 2018
***************************************}
unit URegistry;

interface

uses
Forms, Windows,  SysUtils, Classes , Registry;

    function sub_004970D8(a:AnsiString; b:dword):dword;//004970D8
    function sub_004971A0(x:AnsiString; y:boolean):boolean;//004971A0
    function sub_00497268(x:AnsiString; y:dword):byte;//00497268
    procedure sub_0049733C(x:String; y:String; z:String;var t:string);//0049733C
    procedure sub_00497438(a:string; b:integer);//00497438
    procedure sub_004974F0(a:string; b:Boolean);//004974F0
    function sub_004975A8(a:AnsiString; b:dword):dword;//004975A8
    procedure sub_00497660(a:AnsiString; b:AnsiString; c:AnsiString);//00497660
    procedure sub_00497740(a:ShortString);//00497740
    procedure sub_0049782C(var a:String);//0049782C
    function sub_00497908:TStringList;//00497908

implementation

//004970D8
function sub_004970D8(a:AnsiString; b:dword):dword;
var
  Registry :TRegistry;
begin//0
    result := b;
    Registry := TRegistry.Create;
    Registry.RootKey := $80000001;
    Registry.OpenKey('Software\Carnet de Notes 2.x\Options', True);
    if (Registry.ValueExists(a)) then
    begin//0049712F
      result := Registry.ReadInteger(a);
    end;
    Registry.CloseKey;
    Registry.Free;

end;//0


//004971A0
function sub_004971A0(x:AnsiString; y:boolean):boolean;
var
  Registry :TRegistry;
begin//0
    result := y;
    Registry := TRegistry.Create;
    Registry.RootKey :=$80000001;
    Registry.OpenKey('Software\Carnet de Notes 2.x\Options', True);
    if (Registry.ValueExists(x)) then
    begin//004971F7
      result := Registry.ReadBool(x);
    end;
    Registry.CloseKey;
    Registry.Free;
end;//0


//00497268
function sub_00497268(x:AnsiString; y:dword):byte;
var
	Registry :TRegistry;
begin//0
    Registry := TRegistry.Create;
    Registry.RootKey := $80000001;
    Registry.OpenKey('Software\Carnet de Notes 2.x\Options', True);
    if (Registry.ValueExists(x)) then//004972C0
      result := Registry.ReadInteger(x)
    else//004972CE
      result := byte(y);
   
    Registry.CloseKey;
    Registry.Free;
end;


//0049733C
procedure sub_0049733C(x:String; y:String; z:String; var t:string);
var
 Registry :TRegistry;
begin//0
  //0049733C
    Registry := TRegistry.Create;
    Registry.RootKey := $80000001;
    Registry.OpenKey('Software\Carnet de Notes 2.x' + z, True);
    if (Registry.ValueExists(x) ) then
    begin//004973BF
      t := Registry.ReadString(x);
    end//2
    else
    begin//004973CD
      t := y;
    end;//2
    Registry.CloseKey;
    Registry.Free;
end;//0


//00497438
procedure sub_00497438(a:string; b:integer);
var
  Registry : TRegistry;
begin//0
  
    Registry := TRegistry.Create;
    Registry.RootKey :=$80000001;
    Registry.OpenKey('Software\Carnet de Notes 2.x\Options', True);
    Registry.WriteInteger(a, b);
    Registry.CloseKey;
    Registry.Free;
end;


//004974F0
procedure sub_004974F0(a:string; b:Boolean);
var
  Registry:TRegistry;
begin//0
  //004974F0
    Registry := TRegistry.Create;
    Registry.RootKey := $80000001;
    Registry.OpenKey('Software\Carnet de Notes 2.x\Options', True);
    Registry.WriteBool(a, b);
    Registry.CloseKey;
    Registry.Free;
end;//0


//004975A8
function sub_004975A8(a:AnsiString; b:dword):dword;
var
  Registry:TRegistry;
begin//0
    Registry := TRegistry.Create;
    Registry.RootKey :=$80000001;
    Registry.OpenKey('Software\Carnet de Notes 2.x\Options', True);
    Registry.WriteInteger(a, b);
    Registry.CloseKey;
    Registry.Free;
end;//0


//00497660
procedure sub_00497660(a:AnsiString; b:AnsiString; c:AnsiString);
var
  Registry:TRegistry;
begin//0
    Registry := TRegistry.Create;
    Registry.RootKey :=$80000001;
    Registry.OpenKey('Software\Carnet de Notes 2.x' + c, True);
    Registry.WriteString(a, b);
    Registry.CloseKey;
    Registry.Free;
end;//0

//00497740
procedure sub_00497740(a:ShortString);
var
  Registry:TRegistry;
begin//0
    Registry := TRegistry.Create;
    Registry.RootKey :=$80000001;
    Registry.OpenKey('Software\Carnet de Notes 2.x', True);
    Registry.WriteString('Chemin', a);
    Registry.CloseKey;
    Registry.Free;
end;//0


//0049782C
procedure sub_0049782C(var a:String);
var
  Registry:TRegistry;
begin//0
  //0049782C
  //push ESI
  //ESI := a;
    Registry := TRegistry.Create;
    Registry.RootKey := $80000001;
    Registry.OpenKey('Software\Carnet de Notes 2.x', True);
    if (Registry.ValueExists('Chemin')) then
    begin//0049787B
      a := Registry.ReadString('Chemin');
    end//2
    else
    begin//0049789B
      a := ''; 
    end;//2
    Registry.CloseKey;
    Registry.Free;
end;//0


//00497908
function sub_00497908:TStringList;
var
 Registry:TRegistry;
 StringList : TStringList;
 lvar_C : string;
 I:integer;
 Drives : set of 0..25;
begin//0
  //00497908
    //00497922
    StringList := TStringList.Create;
	integer(Drives) := GetLogicalDrives;
    if (integer(Drives) <> 0) then
    begin//0049793A
		for I := 0 to 25 do
		begin//00497944
		  if (I <= 31) then
		  begin//0049794B
			if (I in Drives) then Continue;
			lvar_C := char(I + 97) + ':\';
			if (GetDriveTypeA(PChar(lvar_C)) = 0) then
			begin//00497986 
				   //error!		
			end;//4
			if (GetDriveTypeA(PChar(lvar_C)) <> 2) then Continue;
			StringList.add(UpperCase(char(I + 97)));
		  end;//3
		end;//2
	end;//2
    result := StringList;
end;//0

end.