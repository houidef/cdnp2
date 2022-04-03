{***********************************************************
* Version Original V0.03 build 1                           *
* Decompiled by HOUIDEF AEK v 3:28 lundi, août 27, 2018    *
* The disassembly process : 100%                           *
************************************************************}
unit _FormPatientez;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls;

type
  TFormPatientez = class(TForm)
  public
    ProgressBar1:TProgressBar;//f2D0
  constructor Create(AOwner: TComponent);
  end;
  var
     FormPatientez:TFormPatientez;

implementation

{$R *.DFM}
constructor TFormPatientez.Create(AOwner: TComponent);
begin//0
  //0060D834
    //0060D862
    inherited create(AOwner);
	ProgressBar1:=TProgressBar.create(AOwner);
    ProgressBar1.Left := 5;
    ProgressBar1.Top := 6;
    ProgressBar1.Width := 297;
    ProgressBar1.Height := 16;
    ProgressBar1.Min := 0;
    ProgressBar1.Max := 100;
    ProgressBar1.TabOrder := 0;

end;//0
end.