{***************************************
* Version Original V0.01
* Decompiled by Houidef AEK v.16:39 mardi 20 février 2018
***************************************}
unit URegistry;

interface

uses
Forms, Windows,  SysUtils, Classes , Registry;

    function GetValueRegColor(a:AnsiString; b:dword):dword;//004970D8
    function GetValueRegBool(x:AnsiString; y:boolean):boolean;//004971A0
    function GetValueRegInt(x:AnsiString; y:dword):byte;//00497268
    procedure GetValueRegString(Value:String; DefaultValue:String; Key:String; var ReadValue:string);//0049733C
    procedure SetValueReg1(a:string; b:integer);//00497438
    procedure SetValueRegBool(a:string; b:Boolean);//004974F0
    function SetValueRegInt(a:AnsiString; b:dword):dword;//004975A8
    procedure SetValueRegString(Value:AnsiString; WriteValue:AnsiString; Key:AnsiString);//00497660
    procedure SetValueRegChemin(a:ShortString);//00497740
    procedure GetValueRegChemin(var a:String);//0049782C
    function GetLogDrives:TStringList;//00497908

implementation

//004970D8
function GetValueRegColor(a:AnsiString; b:dword):dword;
var
  Registry :TRegistry;
begin//0
    result := b;
    Registry := TRegistry.Create;
    Registry.RootKey := HKEY_CURRENT_USER;
    Registry.OpenKey('Software\Carnet de Notes 2.x\Options', True);
    if (Registry.ValueExists(a)) then
    begin//0049712F
      result := Registry.ReadInteger(a);
    end;
    Registry.CloseKey;
    Registry.Free;

end;//0


//004971A0
function GetValueRegBool(x:AnsiString; y:boolean):boolean;
var
  Registry :TRegistry;
begin//0
    result := y;
    Registry := TRegistry.Create;
    Registry.RootKey :=HKEY_CURRENT_USER;
    Registry.OpenKey('Software\Carnet de Notes 2.x\Options', True);
    if (Registry.ValueExists(x)) then
    begin//004971F7
      result := Registry.ReadBool(x);
    end;
    Registry.CloseKey;
    Registry.Free;
end;//0


//00497268
function GetValueRegInt(x:AnsiString; y:dword):byte;
var
	Registry :TRegistry;
begin//0
    Registry := TRegistry.Create;
    Registry.RootKey := HKEY_CURRENT_USER;
    Registry.OpenKey('Software\Carnet de Notes 2.x\Options', True);
    if (Registry.ValueExists(x)) then//004972C0
      result := Registry.ReadInteger(x)
    else//004972CE
      result := byte(y);
   
    Registry.CloseKey;
    Registry.Free;
end;


//0049733C
procedure GetValueRegString(Value:String; DefaultValue:String; Key:String; var ReadValue:string);
var
 Registry :TRegistry;
begin//0
  //0049733C
    Registry := TRegistry.Create;
    Registry.RootKey := HKEY_CURRENT_USER;
    Registry.OpenKey('Software\Carnet de Notes 2.x' + Key, True);
    if (Registry.ValueExists(Value) ) then //004973BF
      ReadValue := Registry.ReadString(Value)
    else //004973CD
      ReadValue := DefaultValue;

    Registry.CloseKey;
    Registry.Free;
end;//0


//00497438
procedure SetValueReg1(a:string; b:integer);
var
  Registry : TRegistry;
begin//0
  
    Registry := TRegistry.Create;
    Registry.RootKey :=HKEY_CURRENT_USER;
    Registry.OpenKey('Software\Carnet de Notes 2.x\Options', True);
    Registry.WriteInteger(a, b);
    Registry.CloseKey;
    Registry.Free;
end;


//004974F0
procedure SetValueRegBool(a:string; b:Boolean);
var
  Registry:TRegistry;
begin//0
  //004974F0
    Registry := TRegistry.Create;
    Registry.RootKey := HKEY_CURRENT_USER;
    Registry.OpenKey('Software\Carnet de Notes 2.x\Options', True);
    Registry.WriteBool(a, b);
    Registry.CloseKey;
    Registry.Free;
end;//0


//004975A8
function SetValueRegInt(a:AnsiString; b:dword):dword;
var
  Registry:TRegistry;
begin//0
    Registry := TRegistry.Create;
    Registry.RootKey :=HKEY_CURRENT_USER;
    Registry.OpenKey('Software\Carnet de Notes 2.x\Options', True);
    Registry.WriteInteger(a, b);
    Registry.CloseKey;
    Registry.Free;
end;//0


//00497660
procedure SetValueRegString(Value:AnsiString; WriteValue:AnsiString; Key:AnsiString);
var
  Registry:TRegistry;
begin//0
    Registry := TRegistry.Create;
    Registry.RootKey := HKEY_CURRENT_USER;
    Registry.OpenKey('Software\Carnet de Notes 2.x' + Key, True);
    Registry.WriteString(Value, WriteValue);
    Registry.CloseKey;
    Registry.Free;
end;//0

//00497740
procedure SetValueRegChemin(a:ShortString);
var
  Registry:TRegistry;
begin//0
    Registry := TRegistry.Create;
    Registry.RootKey :=HKEY_CURRENT_USER;
    Registry.OpenKey('Software\Carnet de Notes 2.x', True);
    Registry.WriteString('Chemin', a);
    Registry.CloseKey;
    Registry.Free;
end;//0


//0049782C
procedure GetValueRegChemin(var a:String);
var
  Registry:TRegistry;
begin//0
  //0049782C
    Registry := TRegistry.Create;
    Registry.RootKey := HKEY_CURRENT_USER;
    Registry.OpenKey('Software\Carnet de Notes 2.x', True);
    if (Registry.ValueExists('Chemin')) then//0049787B
      a := Registry.ReadString('Chemin')
    else//0049789B
      a := ''; 
    Registry.CloseKey;
    Registry.Free;
end;//0


//00497908
function GetLogDrives:TStringList;
var
 StringList : TStringList;
 lvar_C : string;
 I:integer;
 Drives : dword;
begin//0
  //00497908
    //00497922
    StringList := TStringList.Create;
	integer(Drives) := GetLogicalDrives;
    if (integer(Drives) <> 0) then
    begin//0049793A
		for I := 0 to 25 do
		begin//00497944
		  if ( (Drives and (1 shl i))<>0) then
		  begin//0049794B
			lvar_C := char(I + 97) + ':\';
			
			if (GetDriveTypeA(PChar(lvar_C)) <> 2) then Continue;
			StringList.add(UpperCase(char(I + 97)));
		  end;//3
		end;//2
	end;//2
    result := StringList;
end;//0

end.