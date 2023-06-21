{***********************************************************
* Version Original V0.03 build 1                           *
* Decompiled by HOUIDEF AEK v 13:58 samedi, août 25, 2018  *
* The disassembly process : 100%                           *
************************************************************}
unit _FormConfirmerImpression;

interface

uses
Forms, Windows,  SysUtils, Classes, StdCtrls, ComCtrls, Buttons, ExtCtrls, dialogs;

type
  TFormConfirmerImpression = class(TForm)
  published
    GroupBox1:TGroupBox;//f2D0
    RadioButton1:TRadioButton;//f2D4
    RadioButton2:TRadioButton;//f2D8
    Edit1:TEdit;//f2DC
    UpDown1:TUpDown;//f2E0
    Label1:TLabel;//f2E4
    Edit2:TEdit;//f2E8
    UpDown2:TUpDown;//f2EC
    Label2:TLabel;//f2F0
    Edit3:TEdit;//f2F4
    UpDown3:TUpDown;//f2F8
    SpeedButton5:TSpeedButton;//f2FC
    RadioGroupParite:TRadioGroup;//f300
    CheckBoxOrdreInverse:TCheckBox;//f304
    SpeedButton1:TSpeedButton;//f308
    procedure UpDown3Click(Sender:TObject; Button: TUDBtnType);//005211BC
    procedure UpDown2Click(Sender:TObject; Button: TUDBtnType);//005210A4
    procedure SpeedButton5Click(Sender:TObject);//0052128C
    procedure SpeedButton1Click(Sender:TObject);//005212B8
    procedure FormKeyPress(Sender:TObject; var Key:Char);//00521298
    procedure FormHide(Sender:TObject);//00520E3C
    procedure FormShow(Sender:TObject);//00520CDC
    procedure RadioButton1Click(Sender:TObject);//00520F0C
    procedure UpDown1Click(Sender:TObject; Button: TUDBtnType);//00520F8C
    procedure RadioButton2Click(Sender:TObject);//00520F50
  public
    FNbrPageMin:dword;//f30C
    NbrPage:dword;  //f310  Nbr total des pages
    FMinPage:Integer;//f314  Min page
    FMaxPage:Integer;//f318  Max page
    NbrExemplaires:Integer;//f31C  Nbr exemplaire
  end;
  var
    FormConfirmerImpression:TFormConfirmerImpression;
implementation
    uses PeriodeCalc;
{$R *.DFM}

//00520CDC
procedure TFormConfirmerImpression.FormShow(Sender:TObject);
var
  lvar_4:AnsiString;
begin//0
    UpDown1.Min := FNbrPageMin;
    UpDown1.Max := NbrPage;
    UpDown1.Position := 1;
    Edit1.Text := '1';
    UpDown2.Min := FNbrPageMin;
    UpDown2.Max := NbrPage;
    UpDown2.Position:= NbrPage;
    Edit2.Text:= IntToStr(NbrPage);
    Edit3.Text := '1';
end;//0

//00520E3C
procedure TFormConfirmerImpression.FormHide(Sender:TObject);
var
  lvar_4:AnsiString;
  lvar_8:AnsiString;
  lvar_C:AnsiString;
begin//0
    if (RadioButton1.Checked) then
    begin//2
      //00520E68
      FMinPage := 1; // min page = 1
      FMaxPage := NbrPage;
    end;//2
    if (RadioButton2.Checked) then
    begin//2
      //00520E90
      FMinPage := StrToInt(Edit1.Text);
      FMaxPage := StrToInt(Edit2.Text);
    end;//2
    NbrExemplaires := StrToInt(Edit3.Text);
end;//0


//00520F0C
procedure TFormConfirmerImpression.RadioButton1Click(Sender:TObject);
begin//0
  //00520F0C
  UpDown1.Enabled := not(RadioButton1.Checked);
  UpDown2.Enabled := not(RadioButton1.Checked);
end;//0

//00520F50
procedure TFormConfirmerImpression.RadioButton2Click(Sender:TObject);
begin//0
  //00520F50
  UpDown1.Enabled := RadioButton2.Checked;
  UpDown2.Enabled := RadioButton2.Checked;
end;//0

//00520F8C
procedure TFormConfirmerImpression.UpDown1Click(Sender:TObject; Button: TUDBtnType);
begin//0
    if (Button = btNext{0}) then//00520FB4
      if (StrToInt(Edit1.Text) < NbrPage) then //00520FD2
        Edit1.Text := IntToStr(StrToInt(Edit1.Text) + 1);

    if (Button = btPrev{1}) then 
    if (StrToInt(Edit1.Text) - 1 > 0) then//00521024
      Edit1.Text := IntToStr(StrToInt(Edit1.Text) - 1);
end;//0

//005210A4
procedure TFormConfirmerImpression.UpDown2Click(Sender:TObject; Button: TUDBtnType);
begin//0
    if (Button = btNext{0}) then//005210CC
      if ( StrToInt(Edit2.text) < NbrPage) then//005210EA
        Edit2.text:=IntToStr(StrToInt(Edit2.text) + 1);

    if (Button = btPrev{1}) then 
    if (StrToInt(Edit2.text) - 1 > 0) then//0052113C
      Edit2.text :=IntToStr(StrToInt(Edit2.text) - 1);
end;//0

//005211BC
procedure TFormConfirmerImpression.UpDown3Click(Sender:TObject; Button:TUDBtnType);
begin//0
    if (Button = btNext) then//005211E0
      Edit3.text :=IntToStr(StrToInt(Edit3.text) + 1);

    if (Button = btPrev) then
		Edit3.text := IntToStr(StrToInt(Edit3.text) - 1);
end;//0

//0052128C
procedure TFormConfirmerImpression.SpeedButton5Click(Sender:TObject);
begin
  ModalResult:= 1;
end;

//00521298
procedure TFormConfirmerImpression.FormKeyPress(Sender:TObject; var Key:Char);
begin
  if (Key = char($0D)) then//00541FB5
    ModalResult := 1
  else
  if (Key = char($1B)) then 
   ModalResult := 2;
end;

//005212B8
procedure TFormConfirmerImpression.SpeedButton1Click(Sender:TObject);
begin
  ModalResult := 2;
end;

end.