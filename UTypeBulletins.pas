{***************************************
* Version Original V0.01
* Created by Houidef AEK v 12:03 mardi 27 février 2018
***************************************}
unit UTypeBulletins;

interface

uses
Forms, Windows,  SysUtils, Classes, URegistry,dialogs;

type
  TTypeBulletins = class(TObject)
  protected
    FTypeBulletins:String;//f4
    FNomBulletins:TStringList;//f8
  public
    constructor Create;//004C99B8
    procedure AddNomBulletinsList(a:TStringList);//004C9A84
    procedure SetTypeBulletins(a:AnsiString);//004C9AA0
    procedure renvoieNom(a:dword; var b:String);//004C9AEC
    function BulletinsCount:dword;//004C9B8C
    function GetNomBulletinsStr:TStrings;//004C9BA8
    procedure GetTypeBulletins__(var b:string);//004C9BAC
 end;
    procedure sub_004C9BC0(a:Boolean);//004C9BC0
    procedure sub_004C9BF8(a:Boolean);//004C9BF8
    function sub_004C9C30:boolean;//004C9C30
    function sub_004C9C68:boolean;//004C9C68
    procedure Setintitulecadrebulletin(a:String);//004C9CA0
    procedure _Getintitulecadrebulletin(a:String);//004C9D28
    procedure Setfichierlogobulletin(a:String);//004C9DA8
    procedure Getfichierlogobulletin(a:String);//004C9E2C


implementation

//004C99B8
constructor TTypeBulletins.Create;
begin//0
  //004C99B8
  inherited Create;
  FTypeBulletins := 'Bulletins par défaut';
  FNomBulletins := TStringList.Create;
  FNomBulletins.Add('Appréciations');
end;//0


//004C9A84
procedure TTypeBulletins.AddNomBulletinsList(a:TStringList);
begin//0
  //004C9A84
  FNomBulletins.Clear;
  FNomBulletins.AddStrings(a);
end;//0


//004C9AA0
procedure TTypeBulletins.SetTypeBulletins(a:AnsiString);
begin//0
    FTypeBulletins := a;
end;//0
//004C9AEC
procedure TTypeBulletins.renvoieNom(a:dword; var b:String);
begin//0
  //004C9AEC
  try//004C9B08
    b := FNomBulletins[a - 1];
  except//004C9B30
    raise {TCdnException}Exception.Create('[TTypeBulletins.renvoieNom] - erreur d''indice.');
  end;//1
end;//0


//004C9B8C
function TTypeBulletins.BulletinsCount:dword;
begin//0
  //004C9B8C
  result := FNomBulletins.Count;
end;//0


//004C9BA8
function TTypeBulletins.GetNomBulletinsStr:TStrings;
begin
 result := FNomBulletins;
end;

//004C9BAC
procedure TTypeBulletins.GetTypeBulletins__(var b:string);
begin//0
  //004C9BAC
  b := FTypeBulletins;
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
begin
 result := GetValueRegBool('inclureNomEnseignantBulletin',true{,true});//004971A0
end;

//004C9C68
function sub_004C9C68:boolean;
begin
 result := GetValueRegBool('inclureAppreciationsBulletin',true{,true})
end;

//004C9CA0
procedure Setintitulecadrebulletin(a:string);
begin//0
    //004C9CBD
    SetValueRegString('intitulecadrebulletin', a, '\Options');
end;//0


//004C9D28
procedure _Getintitulecadrebulletin(a:string);
begin
 GetValueRegString('intitulecadrebulletin', 'Appréciation du chef d''établissement', '\Options',a);
end;

//004C9DA8
procedure {TTypeBulletins.}Setfichierlogobulletin(a:String);
begin//0
  //004C9DA8
    //004C9DC5
    SetValueRegString('fichierlogobulletin', a, '\Options');
end;//0


//004C9E2C
procedure Getfichierlogobulletin(a:string);
begin
 GetValueRegString('fichierlogobulletin', '', '\Options',a); //0049733C
end;

end.