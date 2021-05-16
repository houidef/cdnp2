{***************************************
* Version Original V0.01
* Decompiled by Houidef AEK v.05.02.2018
***************************************}
unit _FormModifierEleve;

interface

uses
  Forms, SysUtils, Classes, StdCtrls, Buttons;

type
  TFormModifierEleve = class(TForm)
  published
    CheckBoxRedoublant_FormModifier:TCheckBox;//f2D0
    EditDateDeNaissance_FormModifier:TEdit;//f2D4
    EditNomPrenom_FormModifier:TEdit;//f2D8
    LabelDateDeNaissance_FormModifier:TLabel;//f2DC
    SpeedButtonAnnuler_FormModifier:TSpeedButton;//f2E0
    SpeedButtonOk__FormModifier:TSpeedButton;//f2E4
    Label4:TLabel;//f2E8
    procedure SpeedButtonOk__FormModifierClick(Sender:TObject);//004D1054
    procedure SpeedButtonAnnuler_FormModifierClick(Sender:TObject);//004D1060
    procedure FormKeyPress(Sender:TObject; var Key:Char);//004D106C
    constructor Create(Owner:TComponent; b:string; c:string; d:boolean;e:string);//004D0F80
  end;
var 
  FormModifierEleve:TFormModifierEleve;
implementation

{$R *.DFM}

//004D0F80
constructor TFormModifierEleve.Create(Owner:TComponent; b:string; c:string; d:boolean;e:string);
begin//0
  //004D0F80
    //004D0FBE
    inherited create(Owner);
    Text := e;
    EditNomPrenom_FormModifier.Text := b;
    EditDateDeNaissance_FormModifier.Text := c;
    CheckBoxRedoublant_FormModifier.Checked := d;
    EditNomPrenom_FormModifier.SelectAll;
end;//0


//004D1054
procedure TFormModifierEleve.SpeedButtonOk__FormModifierClick(Sender:TObject);
begin
  ModalResult := 1;
end;

//004D1060
procedure TFormModifierEleve.SpeedButtonAnnuler_FormModifierClick(Sender:TObject);
begin
 ModalResult:= 2;
end;

//004D106C
procedure TFormModifierEleve.FormKeyPress(Sender:TObject; var Key:Char);
begin//0
  //004D106C
  if (Key = char($0D)) then //004D1071
    ModalResult := 1
  else
  if (Key = char($1B)) then 
    ModalResult := 2;
end;//0



end.