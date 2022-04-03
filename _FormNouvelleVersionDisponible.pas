{***********************************************************
* Version Original V0.03 build 1                           *
* Decompiled by HOUIDEF AEK v 12:08 mercredi, août 29, 2018*
* The disassembly process : 100%                            *
************************************************************}
unit _FormNouvelleVersionDisponible;

interface

uses
Forms, Windows,  SysUtils, Classes, ExtCtrls, StdCtrls, Buttons,ShellAPI;

type
  TFormNouvelleVersionDisponible = class(TForm)
  published
    Panel1:TPanel;//f2D0
    Comments:TLabel;//f2D4
    Memo1:TMemo;//f2D8
    siteWeb:TLabel;//f2DC
    CheckBox1:TCheckBox;//f2E0
    SpeedButton1:TSpeedButton;//f2E4
    Image1:TImage;//f2E8
    procedure CheckBox1Click(Sender:TObject);//0060AE64
    procedure SpeedButton1Click(Sender:TObject);//0060AE80
    procedure FormShow(Sender:TObject);//0060AD88
    procedure siteWebClick(Sender:TObject);//0060AE20
    constructor Create(owner:TComponent; a:String);//0060ACEC
  end;
  var 
    FormNouvelleVersionDisponible:TFormNouvelleVersionDisponible;
implementation
    uses UBiblio;
{$R *.DFM}

//0060ACEC
constructor TFormNouvelleVersionDisponible.Create(owner:TComponent; a:String);
begin//0
  //0060ACEC
    //0060AD1A

    inherited Create(Owner);

    Memo1.Lines.Clear;
    Memo1.Lines.Add(a);
end;//0

//0060AD88
procedure TFormNouvelleVersionDisponible.FormShow(Sender:TObject);
begin//0
  //0060AD88
  
  CheckBox1.Checked := GetRappelMiseAJourDisponible Xor true;
  Caption := 'Carnet de Notes version Personnelle 2.9a';
  siteWeb.Caption := 'http://www.carnetdenotes.com';
end;//0

//0060AE20
procedure TFormNouvelleVersionDisponible.siteWebClick(Sender:TObject);
begin//0
  //0060AE20
  ShellExecuteA(GetDesktopWindow, 'open', 'http://www.carnetdenotes.com', '', '', 1);
end;//0


//0060AE64
procedure TFormNouvelleVersionDisponible.CheckBox1Click(Sender:TObject);
begin//0
  //0060AE64
  SetRappelMiseAJourDisponible(CheckBox1.Checked Xor true);
end;//0


//0060AE80
procedure TFormNouvelleVersionDisponible.SpeedButton1Click(Sender:TObject);
begin
 close;
end;

end.