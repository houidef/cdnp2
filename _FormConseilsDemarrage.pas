{***********************************************************
* Version Original V0.03 build 1                           *
* Decompiled by Houidef AEK v 13:58 samedi, août 25, 2018  *
* The disassembly process : 100%                           *
************************************************************}
unit _FormConseilsDemarrage;

interface

uses
Forms, Windows,  SysUtils, Classes, ExtCtrls, StdCtrls, Buttons;

type
  TFormConseilsDemarrage = class(TForm)
  published
    Panel2:TPanel;//f2D0
    Bevel2:TBevel;//f2D4
    Image1:TImage;//f2D8
    CheckBox1:TCheckBox;//f2DC
    Panel1:TPanel;//f2E0
    Label1:TLabel;//f2E4
    SpeedButton2:TSpeedButton;//f2E8
    SpeedButton3:TSpeedButton;//f2EC
    SpeedButton4:TSpeedButton;//f2F0
    Label2:TLabel;//f2F4
    Label3:TLabel;//f2F8
    Image2:TImage;//f2FC
    procedure SpeedButton3Click(Sender:TObject);//00547918
    procedure SpeedButton4Click(Sender:TObject);//005479B4
    procedure FormKeyPress(Sender:TObject; var Key:Char);//00547A50
    procedure FormShow(Sender:TObject);//0054780C
    procedure FormHide(Sender:TObject);//005478BC
    procedure SpeedButton2Click(Sender:TObject);//00547910
    constructor Create(AOwner: TComponent;logo:TImage);//00547730
  end;
  var 
    FormConseilsDemarrage:TFormConseilsDemarrage;
implementation
		uses _Unit146;
{$R *.DFM}

//00547730
constructor TFormConseilsDemarrage.Create(AOwner: TComponent;logo:TImage);
begin
//00547730
    inherited create(AOwner);
    Panel1.Color := $E2FFFF;
    Image1.Picture := logo.Picture;
    Caption := Caption + 'Carnet de Notes version Personnelle';
end;

//0054780C
procedure TFormConseilsDemarrage.FormShow(Sender:TObject);
var
  lvar_4:string;
  lvar_C:string;
  //lvar_4:AnsiString;
  lvar_8:AnsiString;
  //lvar_C:AnsiString;
  lvar_10:AnsiString;
begin//0
    //00547826
    CheckBox1.Checked := sub_00501C44;
    getConseil(lvar_4); 
    Label2.Caption := lvar_4;
    numeroConseilEnCours(lvar_C);
    nombreConseils(lvar_10);
    Label3.Caption:= lvar_C + '/' + lvar_10;
end;

//005478BC
procedure TFormConseilsDemarrage.FormHide(Sender:TObject);
var
  lvar_4:AnsiString;
begin//0
    afficherConseils(CheckBox1.Checked);
    sub_00501CB4(lvar_4);
end;

//00547910
procedure TFormConseilsDemarrage.SpeedButton2Click(Sender:TObject);
begin
 Close;
end;

//00547918
procedure TFormConseilsDemarrage.SpeedButton3Click(Sender:TObject);
var
  lvar_4:AnsiString;
  lvar_8:AnsiString;
  lvar_C:AnsiString;
  lvar_10:AnsiString;
begin
    //00547932
    sub_00501D14(lvar_4);
    Label2.Caption := lvar_4;
    numeroConseilEnCours(lvar_C);
    nombreConseils(lvar_10);
    Label3.Caption := lvar_C + '/' + lvar_10;
end;

//005479B4
procedure TFormConseilsDemarrage.SpeedButton4Click(Sender:TObject);
var
  lvar_4:AnsiString;
  lvar_8:AnsiString;
  lvar_C:AnsiString;
  lvar_10:AnsiString;
begin
    //005479CE
    sub_00501CB4(lvar_4);
    Label2.Caption := lvar_4;
    numeroConseilEnCours(lvar_C);
    nombreConseils(lvar_10);
    Label3.Caption:=lvar_C + '/' + lvar_10;

end;

//00547A50
procedure TFormConseilsDemarrage.FormKeyPress(Sender:TObject; var Key:Char);
begin
  //00547A50
  if (Key = #13) then
    ModalResult := 1
  else
  if (Key = #27) then 
	ModalResult := 2;
end;


end.