{***********************************************************
* Version Original V0.03 build 1                           *
* Decompiled by HOUIDEF AEK v 14:57 jeudi, août 23, 2018   *
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
    constructor Create(AOwner: TComponent; AideTitle:string; AideCaption:string; AideHeight:dword);//00536DD4
  end;
var
  FormAide:TFormAide;
implementation

{$R *.DFM}

//00536DD4
constructor TFormAide.Create(AOwner: TComponent; AideTitle:string; AideCaption:string; AideHeight:dword);
begin//0
    inherited Create(AOwner);
    Caption := ' ' + AideTitle;
    LabelAide.Caption := AideCaption;
    LabelAide.Height := AideHeight;
    Height := AideHeight + 83;
    SpeedButtonFermer.Top := SpeedButtonFermer.Height + AideHeight;
    Color := $E2FFFF;
    //00536E99
end;//0

//00536EE4
procedure TFormAide.SpeedButtonFermerClick(Sender:TObject);
begin
 Close;
end;

end.