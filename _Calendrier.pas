{***************************************
* Version Original V0.01
* Decompiled by HOUIDEF AEK v 00:44 samedi 17 février 2018
***************************************}
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
  //00541FB0
  if (Key = char($0D)) then//00541FB5
    ModalResult := 1
  else
  if (Key = char($1B)) then 
   ModalResult := 2;
end;

end.