{***************************************
* Version Original V0.01
* Decompiled by HOUIDEF AEK v.05.02.2018
***************************************}
unit _FormMarqueCdn;

interface

uses
Forms, Windows,  SysUtils, Classes;

type
  TFormMarqueCdn = class(TForm)
    constructor Create(AOwner: TComponent; b:string);//0060D834
  end;
  
var
  FormMarqueCdn:TFormMarqueCdn;
implementation

{$R *.DFM}

//0060D834
constructor TFormMarqueCdn.Create(AOwner: TComponent; b:string);
begin//0
  //0060D834
    //0060D862
    inherited create(AOwner);
    Caption := b;
    //0060D884
end;//0


end.