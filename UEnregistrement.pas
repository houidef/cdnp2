{***********************************************************
* Version Original V0.03 build 1                           *
* Decompiled by Houidef AEK v 3:28 lundi, août 27, 2018    *
* The disassembly process : 100%                            *
************************************************************}
unit UEnregistrement;

interface

uses
Forms, Windows,  SysUtils, Classes,Registry, URegistry,unit51;

    function _GetUtilisateurs:TStringlist;//004982F8
    procedure SetUsersList(Value:TStrings);//00498460
    function GetUsersList:TStringlist;//0049856C
    procedure GetNomUtilisateurEnregistrement(NumUser:dword; var NomUser:String);//004986C0
    procedure GetCleEnregistrement(NumUser:dword; var CleUser:String);//0049878C
    procedure SetUserReg(User:dword; Value:String);//0049884C
    procedure SetCleReg(User:dword; Value:String);//00498978
    function _IsRegistred:boolean;//00498A40
    function NbrUtilisateursEnregistres:dword;//00498B20
    procedure DeleteUser(User:dword);//00498BFC

implementation

//004982F8
function _GetUtilisateurs:TStringlist;
var
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
procedure SetUsersList(Value:TStrings);
var
    Registry:TRegistry;
	I:integer;
begin//0
  //00498460
    Registry := TRegistry.Create;
    Registry.RootKey := HKEY_CURRENT_USER;
    if (Registry.KeyExists('Software\Carnet de Notes 2.x\Utilisateurs')) then
    begin//2
      //004984A9
      Registry.DeleteKey('Software\Carnet de Notes 2.x\Utilisateurs');
    end;//2
    Registry.OpenKey('Software\Carnet de Notes 2.x\Utilisateurs', True);
      for I := 0 to Value.Count - 1 do//004984DB//004984E3
        Registry.WriteString(Value[I], '');
    Registry.CloseKey;
    Registry.Free;
    //0049851E
end;//0


//0049856C
function GetUsersList:Tstringlist;
var
  TUsers:TStringList;
  Registry:TRegistry;
  I:integer;
  text:string;
begin//0
  //0049856C
    TUsers := TStringList.Create;
    Registry := TRegistry.Create;
    Registry.RootKey := $80000002;
    Registry.OpenKey('SOFTWARE\Microsoft\Windows\CurrentVersion', False);
    if (Registry.ValueExists('RegisteredOwner')) then//004985CC
      TUsers.Add(Registry.ReadString('RegisteredOwner'))
    else//004985E8
      TUsers.Add('Le prof inconnu');
    Registry.CloseKey;
    Registry.Free;
      for I := 1 to NbrUtilisateursEnregistres do//0049860E
      begin//3
        //00498613
        GetNomUtilisateurEnregistrement(I, text);
        TUsers.Add(text);
      end;//3
    result := TUsers;
    //0049863C
end;//0

//004986C0
procedure GetNomUtilisateurEnregistrement(NumUser:dword; var NomUser:String);
begin//0
  //004986C0
    if (NumUser = 1) then//004986E0
      GetValueRegString('nomUtilisateurEnregistrement', '', '\Enregistrement', NomUser)
    else
      GetValueRegString('nomUtilisateurEnregistrement' + IntToStr(NumUser), '', '\Enregistrement',NomUser);
end;//0


//0049878C
procedure GetCleEnregistrement(NumUser:dword; var CleUser:String);
begin//0
  //0049878C
    if (NumUser = 1) then//004987AC
      GetValueRegString('cleEnregistrement', '', '\Enregistrement', CleUser)
	else 
		GetValueRegString('cleEnregistrement' + IntToStr(NumUser), '', '\Enregistrement', CleUser);
end;//0


//0049884C
procedure SetUserReg(User:dword; Value:String);
begin//0
  //0049884C
    if (User = 1) then//00498876
      SetValueRegString('nomUtilisateurEnregistrement', Value, '\Enregistrement')
    else//0049888C
      SetValueRegString('nomUtilisateurEnregistrement' + IntToStr(User), Value, '\Enregistrement');
    SetValueRegString('nombreUtilisateursEnregistres', IntToStr(NbrUtilisateursEnregistres + 1), '\Enregistrement');
    //004988F4
end;//0

//00498978
procedure SetCleReg(User:dword; Value:String);
begin//0
  //00498978
    if (User = 1) then//004989A2
      SetValueRegString('cleEnregistrement', Value, '\Enregistrement')
	else
      SetValueRegString('cleEnregistrement' + IntToStr(User), Value, '\Enregistrement');
    //004989F1
end;//0

//00498A40
function _IsRegistred:boolean;
var
 NumUser:integer; 
 CleUser,NomUser : string;
begin//0
  //00498A40
	result := true;
    if (NbrUtilisateursEnregistres = 0) then//00498A71
      result := false
	else 
      for NumUser := 1 to NbrUtilisateursEnregistres do //00498A82
	  begin
	    GetNomUtilisateurEnregistrement(NumUser, NomUser);
		GetCleEnregistrement(NumUser, CleUser);
        if (not IsValideCleUser(NomUser,CleUser,0)) then 
			result := false;
	  end;
end;//0


//00498B20
function NbrUtilisateursEnregistres:dword;
var
  buf:string;
begin//0
  //00498B20
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
procedure DeleteUser(User:dword);
var
  TUser,TCle : TStringList;
  text:string;
  I:integer;
  Registry : TRegistry;
begin//0
  //00498BFC
    TUser := TStringList.Create;
    TCle := TStringList.Create;
      for I := 1 to NbrUtilisateursEnregistres do//00498C43
      begin//3
        //00498C48
        if (User = I) then Continue;
        GetNomUtilisateurEnregistrement(I, text);
        TUser.Add(text);
        GetCleEnregistrement(I, text);
        TCle.Add(text);
      end;//3
    Registry := TRegistry.Create;
    Registry.RootKey := HKEY_CURRENT_USER;
    Registry.DeleteKey('Software\Carnet de Notes 2.x\Enregistrement');
    Registry.Free;
      for I := 1 to TCle.Count do//00498CB5
      begin//3
        //00498CBA
        SetUserReg(I, TUser[I - 1]);
        SetCleReg(I, TCle[I - 1]);
      end;//3
    TUser.Destroy;
    TCle.Destroy;
    //00498D21
end;//0

end.