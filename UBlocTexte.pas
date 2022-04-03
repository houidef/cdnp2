{***********************************************************
* Version Original V0.03 build 1                           *
* Decompiled by HOUIDEF AEK v 12:20 mercredi, août 29, 2018*
* The disassembly process : 100%                           *
************************************************************}
unit UBlocTexte;

interface
uses

Forms, Windows,  SysUtils, Classes;

type
  TBlocTexte = class(TObject)
  public
    f4:String;//f4
	f8:boolean;
    constructor Create(a:string; b:boolean);//00519364
  end;
  TEnteteBasDePage = class(TObject)
  public
      f4 : TBlocTexte;
	  f8 : TBlocTexte;
      fC : TBlocTexte;
    constructor Create(a:TBlocTexte; b:TBlocTexte; c:TBlocTexte);//005193E8
  end;

implementation

//00519364
constructor TBlocTexte.Create(a:string; b:boolean);

begin//0
  try
    //00519393
    inherited Create;
    f4 := a;
    f8 := b;
  finally//005193BA
  end;//1
end;//0


//005193E8
constructor TEnteteBasDePage.Create(a:TBlocTexte; b:TBlocTexte; c:TBlocTexte);
begin//0
  //005193E8
  inherited Create;
  f4 := a;
  f8 := b;
  fC := c;
end;//0


end.