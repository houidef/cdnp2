{***********************************************************
* Version Original V0.03 build 1                           *
* Decompiled by HOUIDEF AEK v 3:28 lundi, août 27, 2018    *
* The disassembly process : 100%                           *
************************************************************}
unit _FormEdit;

interface

uses
  Forms, SysUtils, Classes, StdCtrls, Buttons,Windows;

type
  TFormEdit = class(TForm)
  published
    Edit1:TEdit;//f2D0
    SpeedButton2:TSpeedButton;//f2D4
    SpeedButton1:TSpeedButton;//f2D8
    procedure Edit1KeyPress(Sender:TObject; var Key:Char);//004CA94C
    procedure FormKeyPress(Sender:TObject; var Key:Char);//004CA960
    procedure SpeedButton1Click(Sender:TObject);//004CA940
    procedure FormCloseQuery(Sender:TObject; var CanClose:Boolean);//004CA6F0
    procedure SpeedButton2Click(Sender:TObject);//004CA934
  public
    f2DC:byte;//f2DC
    f2E0:String;//f2E0
    f2E4:byte;//f2E4
    constructor Create(Owner:TComponent; T:string; S:String; a:dword);//004CA62C
  end;
  var
    FormEdit:TFormEdit;
implementation

{$R *.DFM}

//004CA62C
constructor TFormEdit.Create(Owner:TComponent; T:string; S:String; a:dword);
begin//0
  //004CA62C
    //004CA662
    inherited Create(Owner);
    f2DC := a;
    f2E0 := S;
    f2E4 := 1;
    Caption := T;
    Edit1.Text := S;
    Edit1.SelectAll;
	//004CA6BB
 
end;//0

//004CA6F0
procedure TFormEdit.FormCloseQuery(Sender:TObject; var CanClose:Boolean);
begin//0
  //004CA6F0
    //004CA716
    if (ModalResult = 1) then
    begin//2
      //004CA726
      if (Trim(Edit1.Text) = '') then
      begin//3
        //004CA748
        Application.MessageBox('Le champ est vide ... Recommencez !', 'Carnet de Notes', $10{16});
        Edit1.Text := '';
        Edit1.SetFocus;
        CanClose := False;
      end//3
      else
      begin//3
        //004CA78C
        if (f2DC <> 0) then
        begin//4
          //004CA79C
          try
            //004CA7AA
            CanClose := True;
          except//5
            on E:EConvertError do
            begin//6
              //004CA7E6
              MessageBoxA(0, 'Valeur numérique incorrecte ... Recommencez !!!', 'Carnet de Notes version Personnelle', $10{16});
              Edit1.Text := '';
              Edit1.SetFocus;
              CanClose := False;
            end;//6
          end;//5
        end//4
        else
        begin//4
          //004CA827
          CanClose := True;
        end;//4
      end;//3
      
      if (f2E4 <> 0) then 
      if (CanClose) then
      if (Edit1.Text = f2E0) then //004CA865
        ModalResult := 2
      else
		CanClose := True;
	end;
	//004CA887
  
end;//0

//004CA934
procedure TFormEdit.SpeedButton2Click(Sender:TObject);
begin
 ModalResult:= 1;
end;

//004CA940
procedure TFormEdit.SpeedButton1Click(Sender:TObject);
begin
 ModalResult :=2;
end;

//004CA94C
procedure TFormEdit.Edit1KeyPress(Sender:TObject; var Key:Char);
begin//0
  //004CA94C
  if (f2DC = 0) then Exit;
  if (Key = char($2E)) then 
    Key := char($2C);
end;//0


//004CA960
procedure TFormEdit.FormKeyPress(Sender:TObject; var Key:Char);
begin
  if (Key = char($0D)) then
    ModalResult := 1
  else
  if (Key = char($1B)) then 
   ModalResult := 2;
end;

end.