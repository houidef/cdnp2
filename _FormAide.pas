{***********************************************************
* Version Original V0.03 build 1                           *
* Decompiled by Houidef AEK v 14:57 jeudi, août 23, 2018   *
* The disassembly process : 100%                           *
************************************************************}
unit _FormAide;

interface

uses
Forms, Windows,  SysUtils, Classes, Buttons, ExtCtrls, StdCtrls;

type
  TFormAide = class(TForm)
  published
    SpeedButtonFermer:TSpeedButton;//f2D0
    Bevel1:TBevel;//f2D4
    LabelAide:TLabel;//f2D8
    procedure SpeedButtonFermerClick(Sender:TObject);//00536EE4
    constructor Create(AOwner: TComponent; b:string; c:string; d:dword);//00536DD4
  end;
var
  FormAide:TFormAide;
implementation

{$R *.DFM}

//00536DD4
constructor TFormAide.Create(AOwner: TComponent; b:string; c:string; d:dword);
begin//0
  //00536DD4
    //00536E16
    inherited Create(AOwner);
    Caption := ' ' + b;
    LabelAide.Caption := c;
    LabelAide.Height := d;
    Height := d + $53;

    SpeedButtonFermer.Top := SpeedButtonFermer.Height + d;
    Color := $E2FFFF;

    //00536E99
    //lvar_8 := '';

end;//0

//00536EE4
procedure TFormAide.SpeedButtonFermerClick(Sender:TObject);
begin
 Close;
end;

end.