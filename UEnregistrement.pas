{***********************************************************
* Version Original V0.03 build 1                           *
* Decompiled by HOUIDEF AEK v 3:28 lundi, août 27, 2018    *
* The disassembly process : 100%                            *
************************************************************}
unit UEnregistrement;

interface

uses
Forms, Windows,  SysUtils, Classes,Registry, URegistry,unit51;

    function sub_004982F8:TStringlist;//004982F8
    procedure sub_00498460(a:TStrings);//00498460
    function sub_0049856C:TStringlist;//0049856C
    procedure sub_004986C0(NumUser:dword; var NomUser:String);//004986C0
    procedure sub_0049878C(NumUser:dword; var CleUser:String);//0049878C
    procedure sub_0049884C(a:dword; b:String);//0049884C
    procedure sub_00498978(a:dword; b:String);//00498978
    function sub_00498A40:boolean;//00498A40
    function sub_00498B20:dword;//00498B20
    procedure sub_00498BFC(a:dword);//00498BFC

implementation

//004982F8
function sub_004982F8:TStringlist;
var
  lvar_4:AnsiString;
  StringList:TStringList;
  Registry : TRegistry;
begin//0
  //004982F8
    StringList := TStringList.Create;
    StringList.Sorted := True;
    Registry := TRegistry.Create;
    Registry.RootKey:= HKEY_CURRENT_USER;
    if (Registry.KeyExists('Software\Carnet de Notes 2.x\Utilisateurs')) then
    begin//2
      //0049834E
      Registry.OpenKey('Software\Carnet de Notes 2.x\Utilisateurs', True);
      Registry.GetValueNames(StringList);
    end//2
    else
    begin//2
      //00498367
      Registry.RootKey := $80000002;
      Registry.OpenKey('SOFTWARE\Microsoft\Windows\CurrentVersion', False);
      if (Registry.ValueExists('RegisteredOwner')) then
      begin//3
        //00498391
        StringList.Add(Registry.ReadString('RegisteredOwner'));
      end;//3
    end;//2
    Registry.CloseKey;
    Registry.Free;

  result := StringList;
end;//0

//00498460
procedure sub_00498460(a:TStrings);
var
    Registry:TRegistry;
	I:integer;
begin//0
  //00498460

    //0049847F

    Registry := TRegistry.Create;
    Registry.RootKey := HKEY_CURRENT_USER;

    if (Registry.KeyExists('Software\Carnet de Notes 2.x\Utilisateurs')) then
    begin//2
      //004984A9
      Registry.DeleteKey('Software\Carnet de Notes 2.x\Utilisateurs');
    end;//2

    Registry.OpenKey('Software\Carnet de Notes 2.x\Utilisateurs', True);
      for I := 0 to a.Count - 1 do//004984DB//004984E3
        Registry.WriteString(a[I], '');


    Registry.CloseKey;
    Registry.Free;

    //0049851E

end;//0


//0049856C
function sub_0049856C:Tstringlist;
var
  lvar_4:TStringList;
  Registry:TRegistry;
  I:integer;
  text:string;
begin//0
  //0049856C

    //00498585

    lvar_4 := TStringList.Create;
    Registry := TRegistry.Create;
    Registry.RootKey := $80000002;
    Registry.OpenKey('SOFTWARE\Microsoft\Windows\CurrentVersion', False);

    if (Registry.ValueExists('RegisteredOwner')) then//004985CC
      lvar_4.Add(Registry.ReadString('RegisteredOwner'))
    else//004985E8
      lvar_4.Add('Le prof inconnu');


    Registry.CloseKey;
    Registry.Free;

      for I := 1 to sub_00498B20 do//0049860E
      begin//3
        //00498613
        sub_004986C0(I, text);
        lvar_4.Add(text);
      end;//3

    result := lvar_4;

    //0049863C

end;//0

//004986C0
procedure sub_004986C0(NumUser:dword; var NomUser:String);
begin//0
  //004986C0

    if (NumUser = 1) then//004986E0
      GetValueRegString('nomUtilisateurEnregistrement', '', '\Enregistrement', NomUser)
    else
      GetValueRegString('nomUtilisateurEnregistrement' + IntToStr(NumUser), '', '\Enregistrement',NomUser);
end;//0


//0049878C
procedure sub_0049878C(NumUser:dword; var CleUser:String);
begin//0
  //0049878C
    if (NumUser = 1) then//004987AC
      GetValueRegString('cleEnregistrement', '', '\Enregistrement', CleUser)
	else 
		GetValueRegString('cleEnregistrement' + IntToStr(NumUser), '', '\Enregistrement', CleUser);

end;//0


//0049884C
procedure sub_0049884C(a:dword; b:String);
begin//0
  //0049884C

    //00498871
    if (a = 1) then//00498876
      SetValueRegString('nomUtilisateurEnregistrement', b, '\Enregistrement')
    else//0049888C
      SetValueRegString('nomUtilisateurEnregistrement' + IntToStr(a), b, '\Enregistrement');

    SetValueRegString('nombreUtilisateursEnregistres', IntToStr(sub_00498B20 + 1), '\Enregistrement');

    //004988F4

end;//0

//00498978
procedure sub_00498978(a:dword; b:String);
begin//0
  //00498978
 
    //0049899D
    if (a = 1) then//004989A2
      SetValueRegString('cleEnregistrement', b, '\Enregistrement')
	else
      SetValueRegString('cleEnregistrement' + IntToStr(a), b, '\Enregistrement');

    //004989F1

end;//0

//00498A40
function sub_00498A40:boolean;
var
 NumUser:integer; 
 CleUser,NomUser : string;
begin//0
  //00498A40

	result := true;
    if (sub_00498B20 = 0) then//00498A71
      result := false
	else 
      for NumUser := 1 to sub_00498B20 do //00498A82
	  begin
	    sub_004986C0(NumUser, NomUser);
		sub_0049878C(NumUser, CleUser);
        if (not sub_004981D4(NomUser,CleUser,0)) then 
			result := false;
	  end;

end;//0


//00498B20
function sub_00498B20:dword;
var
  buf:string;
begin//0
  //00498B20
  
    //00498B36
    GetValueRegString('nombreUtilisateursEnregistres', '0', '\Enregistrement',buf);
    try
      //00498B5E
      result := StrToInt(buf);
    except//2
      on E:Exception do
      begin//00498B83
        result := 0;
      end;//3
    end;//2
end;//0


//00498BFC
procedure sub_00498BFC(a:dword);
var
  lvar_4,lvar_8 : TStringList;
  text:string;
  I:integer;
  Registry : TRegistry;
begin//0
  //00498BFC

    //00498C1A
    lvar_4 := TStringList.Create;
    lvar_8 := TStringList.Create;
      for I := 1 to sub_00498B20 do//00498C43
      begin//3
        //00498C48
        if (a = I) then Continue;
        sub_004986C0(I, text);
        lvar_4.Add(text);
        sub_0049878C(I, text);
        lvar_8.Add(text);
      end;//3


    Registry := TRegistry.Create;
    Registry.RootKey := HKEY_CURRENT_USER;
    Registry.DeleteKey('Software\Carnet de Notes 2.x\Enregistrement');
    Registry.Free;
      for I := 1 to lvar_8.Count do//00498CB5
      begin//3
        //00498CBA
        sub_0049884C(I, lvar_4[I - 1]);
        sub_00498978(I, lvar_8[I - 1]);
      end;//3
    lvar_4.Destroy;
    lvar_8.Destroy;
    //00498D21

end;//0

end.