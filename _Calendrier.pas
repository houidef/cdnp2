{***********************************************************
* Version Original V0.03 build 1                           *
* Decompiled by HOUIDEF AEK v 00:44 samedi 17 f�vrier 2018 *
* The disassembly process : 100%                           *
************************************************************}
unit _Calendrier;

interface

uses
Forms, Windows,  SysUtils, Classes, ComCtrls, Buttons;

type
  TFormCalendrier = class(TForm)
  published
    MonthCalendar1:TMonthCalendar;//f2D0
    SpeedButton2:TSpeedButton;//f2D4
    SpeedButton1:TSpeedButton;//f2D8
    procedure FormKeyPress(Sender:TObject; var Key:Char);//00541FB0
    procedure SpeedButton1Click(Sender:TObject);//00541FA4
    procedure SpeedButton2Click(Sender:TObject);//00541F98
  end;
  var
    FormCalendrier:TFormCalendrier;
implementation

{$R *.DFM}

//00541F98
procedure TFormCalendrier.SpeedButton2Click(Sender:TObject);
begin
 ModalResult:=1;
end;

//00541FA4
procedure TFormCalendrier.SpeedButton1Click(Sender:TObject);
begin
 ModalResult:=2;
end;

//00541FB0
procedure TFormCalendrier.FormKeyPress(Sender:TObject; var Key:Char);
begin
  if (Key = #13) then ModalResult := 1
  else if (Key = #27) then  ModalResult := 2;
end;

end.