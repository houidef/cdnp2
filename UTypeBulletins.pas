{***************************************
* Version Original V0.01
* Created by HOUIDEF AEK v 12:03 mardi 27 février 2018
***************************************}
unit UTypeBulletins;

interface

uses
Forms, Windows,  SysUtils, Classes, URegistry,dialogs;

type
  TTypeBulletins = class(TObject)
  public
    f4:String;//f4
    f8:TStringList;//f8
    constructor Create;//004C99B8
    procedure sub_004C9A84(a:TStringList);//004C9A84
    procedure sub_004C9AA0(a:AnsiString);//004C9AA0
    procedure sub_004C9AEC(a:dword; var b:String);//004C9AEC
    function sub_004C9B8C:dword;//004C9B8C
    //function sub_004C9BA8(?:?):?;//004C9BA8
    procedure sub_004C9BAC(var b:string);//004C9BAC
    procedure sub_004C9BC0(a:Boolean);//004C9BC0
    procedure sub_004C9BF8(a:Boolean);//004C9BF8
    //function sub_004C9C30:?;//004C9C30
    //function sub_004C9C68:?;//004C9C68
    //procedure sub_004C9CA0(?:?);//004C9CA0
    //procedure sub_004C9D28(?:?);//004C9D28
    procedure sub_004C9DA8(a:String);//004C9DA8
    //procedure sub_004C9E2C(?:?);//004C9E2C
  end;


implementation

//004C99B8
constructor TTypeBulletins.Create;
begin//0
  //004C99B8
  inherited Create;
  f4 := 'Bulletins par défaut';
  f8 := TStringList.Create;
  f8.Add('Appréciations');
end;//0


//004C9A84
procedure TTypeBulletins.sub_004C9A84(a:TStringList);
begin//0
  //004C9A84
  f8.Clear;
  f8.AddStrings(a);
end;//0


//004C9AA0
procedure TTypeBulletins.sub_004C9AA0(a:AnsiString);
begin//0
  //004C9AA0

    //004C9AC0
    
    f4 := a;
	//004C9AD8
  
end;//0
//004C9AEC
procedure TTypeBulletins.sub_004C9AEC(a:dword; var b:String);
begin//0
  //004C9AEC
  try//004C9B08
    b := f8[a - 1];
  except//004C9B30
    raise {TCdnException}Exception.Create('[TTypeBulletins.renvoieNom] - erreur d''indice.');
  end;//1
end;//0


//004C9B8C
function TTypeBulletins.sub_004C9B8C:dword;
begin//0
  //004C9B8C
  result := f8.Count;
end;//0


//004C9BA8
{*function sub_004C9BA8(?:?):?;
begin
 004C9BA8    mov         eax,dword ptr [eax+8]
 004C9BAB    ret
end;*}

//004C9BAC
procedure TTypeBulletins.sub_004C9BAC(var b:string);
begin//0
  //004C9BAC
  b := f4;
end;//0


//004C9BC0
procedure TTypeBulletins.sub_004C9BC0(a:Boolean);
begin//0
  //004C9BC0
  sub_004974F0('inclureNomEnseignantBulletin', a{,1});
end;//0


//004C9BF8
procedure TTypeBulletins.sub_004C9BF8(a:Boolean);
begin//0
  //004C9BF8
  sub_004974F0('inclureAppreciationsBulletin', a{,1});
end;//0


//004C9C30
{*function sub_004C9C30:?;
begin
 004C9C30    mov         cl,1
 004C9C32    mov         dl,1
 004C9C34    mov         eax,4C9C48;'inclureNomEnseignantBulletin'
 004C9C39    call        004971A0
 004C9C3E    ret
end;*}

//004C9C68
{*function sub_004C9C68:?;
begin
 004C9C68    mov         cl,1
 004C9C6A    mov         dl,1
 004C9C6C    mov         eax,4C9C80;'inclureAppreciationsBulletin'
 004C9C71    call        004971A0
 004C9C76    ret
end;*}

//004C9CA0
{*procedure sub_004C9CA0(?:?);
begin
 004C9CA0    push        ebp
 004C9CA1    mov         ebp,esp
 004C9CA3    push        ecx
 004C9CA4    mov         dword ptr [ebp-4],eax
 004C9CA7    mov         eax,dword ptr [ebp-4]
 004C9CAA    call        @LStrAddRef
 004C9CAF    xor         eax,eax
 004C9CB1    push        ebp
 004C9CB2    push        4C9CE7
 004C9CB7    push        dword ptr fs:[eax]
 004C9CBA    mov         dword ptr fs:[eax],esp
 004C9CBD    push        1
 004C9CBF    mov         ecx,4C9CFC;'\Options'
 004C9CC4    mov         edx,dword ptr [ebp-4]
 004C9CC7    mov         eax,4C9D10;'intitulecadrebulletin'
 004C9CCC    call        00497660
 004C9CD1    xor         eax,eax
 004C9CD3    pop         edx
 004C9CD4    pop         ecx
 004C9CD5    pop         ecx
 004C9CD6    mov         dword ptr fs:[eax],edx
 004C9CD9    push        4C9CEE
 004C9CDE    lea         eax,[ebp-4]
 004C9CE1    call        @LStrClr
 004C9CE6    ret
>004C9CE7    jmp         @HandleFinally
>004C9CEC    jmp         004C9CDE
 004C9CEE    pop         ecx
 004C9CEF    pop         ebp
 004C9CF0    ret
end;*}

//004C9D28
{*procedure sub_004C9D28(?:?);
begin
 004C9D28    push        ebx
 004C9D29    mov         ebx,eax
 004C9D2B    push        1
 004C9D2D    push        ebx
 004C9D2E    mov         ecx,4C9D4C;'\Options'
 004C9D33    mov         edx,4C9D60;'Appréciation du chef d'établissement'
 004C9D38    mov         eax,4C9D90;'intitulecadrebulletin'
 004C9D3D    call        0049733C
 004C9D42    pop         ebx
 004C9D43    ret
end;*}

//004C9DA8
procedure TTypeBulletins.sub_004C9DA8(a:String);
begin//0
  //004C9DA8
    //004C9DC5
    sub_00497660('fichierlogobulletin', a, '\Options');
end;//0


//004C9E2C
{*procedure sub_004C9E2C(?:?);
begin
 004C9E2C    push        ebx
 004C9E2D    mov         ebx,eax
 004C9E2F    push        1
 004C9E31    push        ebx
 004C9E32    mov         ecx,4C9E50;'\Options'
 004C9E37    xor         edx,edx
 004C9E39    mov         eax,4C9E64;'fichierlogobulletin'
 004C9E3E    call        0049733C
 004C9E43    pop         ebx
 004C9E44    ret
end;*}

end.