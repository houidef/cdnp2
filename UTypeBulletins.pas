{***********************************************************
* Version Original V0.03 build 1                           *
* Decompiled by HOUIDEF AEK v 12:20 mercredi, août 29, 2018*
* The disassembly process : 100%                           *
************************************************************}
unit UTypeBulletins;

interface

uses
Forms, Windows,  SysUtils, Classes, URegistry,dialogs;

type
  TTypeBulletins = class(TObject)
  public
    FBulletinsTitle:String;//f4
    FBulletinsList:TStringList;//f8
    constructor Create;//004C99B8
    procedure SetNomsbulletins(a:TStringList);//004C9A84
    procedure SetBulletinsTitle(a:AnsiString);//004C9AA0
    procedure GetNomsbulletins(a:dword; var b:String);//004C9AEC
    function GetbulletinsCount:dword;//004C9B8C
    function GetNomsbulletinsList:TStrings;//004C9BA8
    function GetBulletinsTitle:string;//004C9BAC
  end;
    procedure sub_004C9DA8(a:String);//004C9DA8
    procedure sub_004C9BC0(a:Boolean);//004C9BC0
    procedure sub_004C9BF8(a:Boolean);//004C9BF8
	function sub_004C9C30:boolean;//004C9C30
    function sub_004C9C68:boolean;//004C9C68
	procedure sub_004C9CA0(s:string);//004C9CA0
	procedure sub_004C9D28(a:string);//004C9D28
	procedure sub_004C9E2C(a:string);//004C9E2C

implementation

//004C99B8
constructor TTypeBulletins.Create;
begin//0
  //004C99B8
  inherited Create;
  FBulletinsTitle := 'Bulletins par défaut';
  FBulletinsList := TStringList.Create;
  FBulletinsList.Add('Appréciations');
end;//0


//004C9A84
procedure TTypeBulletins.SetNomsbulletins(a:TStringList);
begin//0
  //004C9A84
  FBulletinsList.Clear;
  FBulletinsList.AddStrings(a);
end;//0


//004C9AA0
procedure TTypeBulletins.SetBulletinsTitle(a:AnsiString);
begin//0
    FBulletinsTitle := a;
end;//0
//004C9AEC
procedure TTypeBulletins.GetNomsbulletins(a:dword; var b:String);
begin//0
  //004C9AEC
  try//004C9B08
    b := FBulletinsList[a - 1];
  except//004C9B30
    raise {TCdnException}Exception.Create('[TTypeBulletins.renvoieNom] - erreur d''indice.');
  end;//1
end;//0


//004C9B8C
function TTypeBulletins.GetbulletinsCount:dword;
begin//0
  //004C9B8C
  result := FBulletinsList.Count;
end;//0


//004C9BA8
function TTypeBulletins.GetNomsbulletinsList:TStrings;
begin
 result := FBulletinsList;
end;

//004C9BAC
function TTypeBulletins.GetBulletinsTitle:string;
begin//0
  //004C9BAC
  result := FBulletinsTitle;
end;//0


//004C9BC0
procedure {TTypeBulletins.}sub_004C9BC0(a:Boolean);
begin//0
  //004C9BC0
  SetValueRegBool('inclureNomEnseignantBulletin', a{,1});
end;//0


//004C9BF8
procedure {TTypeBulletins.}sub_004C9BF8(a:Boolean);
begin//0
  //004C9BF8
  SetValueRegBool('inclureAppreciationsBulletin', a{,1});
end;//0


//004C9C30
function sub_004C9C30:boolean;
begin//0
  //004C9C30
  result := GetValueRegBool('inclureNomEnseignantBulletin', true{,1});
end;//0


//004C9C68
function sub_004C9C68:boolean;
begin//0
  //004C9C68
  result := GetValueRegBool('inclureAppreciationsBulletin', true{,1});
end;//0


//004C9CA0
procedure sub_004C9CA0(s:string);
begin//0
    SetValueRegString('intitulecadrebulletin', s, '\Options');
end;//0

//004C9D28
procedure sub_004C9D28(a:string);
begin//0
  //004C9D28
  GetValueRegString('intitulecadrebulletin', 'Appréciation du chef d''établissement', '\Options', a{1});
end;//0


//004C9DA8
procedure sub_004C9DA8(a:String);
begin//0
    SetValueRegString('fichierlogobulletin', a, '\Options');
end;//0


//004C9E2C
procedure sub_004C9E2C(a:string);
begin//0
  GetValueRegString('fichierlogobulletin', '', '\Options', a{1});
end;//0


end.