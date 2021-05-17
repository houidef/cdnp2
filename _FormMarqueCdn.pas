{***************************************
* Version Original V0.01
* Decompiled by Houidef AEK v.05.02.2018
***************************************}
unit _FormMarqueCdn;

interface

uses
Forms, Windows,  SysUtils, Classes;

type
  TFormMarqueCdn = class(TForm)
    constructor Create(s:String);//0060D834
  end;
  
var
  FormMarqueCdn:TFormMarqueCdn;
implementation

{$R *.DFM}

//0060D834
constructor TFormMarqueCdn.Create(s:String);
begin//0
  //0060D808
  try
    //0060D836
    inherited create(nil);
    Caption := s;
  finally//1
    //0060D858
  end;//1

end;

end.