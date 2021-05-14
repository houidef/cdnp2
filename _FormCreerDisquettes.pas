{***********************************************************
* Version Original V0.03 build 1                           *
* Decompiled by HOUIDEF AEK v 11:45 lundi, août 27, 2018   *
* The disassembly process : 100%                           *
************************************************************}
unit _FormCreerDisquettes;

interface

uses
  Forms,Windows, SysUtils, Classes, StdCtrls, Buttons, ExtCtrls, Dialogs, uFichierCdn;

type
  TFormCreerDisquettes = class(TForm)
  published
    Label1:TLabel;//f2D0
    Label2:TLabel;//f2D4
    Label3:TLabel;//f2D8
    Label4:TLabel;//f2DC
    Edit1:TEdit;//f2E0
    ComboBox1:TComboBox;//f2E4
    SpeedButton1:TSpeedButton;//f2E8
    SpeedButton2:TSpeedButton;//f2EC
    Panel2:TPanel;//f2F0
    Bevel2:TBevel;//f2F4
    Image1:TImage;//f2F8
    SaveDialog1:TSaveDialog;//f2FC
    Label5:TLabel;//f300
    Edit2:TEdit;//f304
    Label6:TLabel;//f308
    Edit3:TEdit;//f30C
    Image2:TImage;//f310
    CheckBox1:TCheckBox;//f314
    SpeedButton3:TSpeedButton;//f318
    procedure Edit1Change(Sender:TObject);//00509BFC
    procedure FormKeyPress(Sender:TObject; var Key:Char);//00509C6C
    procedure SpeedButton3Click(Sender:TObject);//00509C7C
    procedure SpeedButton1Click(Sender:TObject);//0050979C
    procedure FormShow(Sender:TObject);//005097A4
    procedure SpeedButton2Click(Sender:TObject);//005098CC
  public
    f31C:TFichierCdn;//f31C
    constructor Create(Owner:TComponent; logo:TImage;FichierCdn:TFichierCdn);//00509744
  end;
  var
    FormCreerDisquettes:TFormCreerDisquettes;
implementation
     uses Unit111,_FormOptions;
{$R *.DFM}

//00509744
constructor TFormCreerDisquettes.Create(Owner:TComponent; logo:TImage;FichierCdn:TFichierCdn);
begin//0
  //00509744
  inherited Create(Owner);
  Image1.Picture := logo.Picture;
  f31C := FichierCdn;
end;//0

//0050979C
procedure TFormCreerDisquettes.SpeedButton1Click(Sender:TObject);
begin
 close;
end;

//005097A4
procedure TFormCreerDisquettes.FormShow(Sender:TObject);
var
text:string;
begin//0
  //005097A4
    //005097CC
    f31C.sub_004BE988(text);
    CheckBox1.Enabled := (text = 'Trimestres');
    ComboBox1.Items := GetMatieres;
    ComboBox1.ItemIndex := 0;
    Edit2.Text := f31C.GetClasseName;
    f31C.sub_004BE914(text);
    Edit3.Text := text;
    Edit1.SetFocus;
  //005098A0

end;//0

//005098CC
procedure TFormCreerDisquettes.SpeedButton2Click(Sender:TObject);
var
  text:string;
  FCdn:TFichierCdn;
  StList : TStringList;
  I:integer;
begin//0
  //005098CC
    //0050990E
    if (SaveDialog1.Execute ) then
    begin//2
      //00509921
      FCdn := TFichierCdn.Create(''{, 1, 0});
      f31C.sub_004BE988(text);
      FCdn.sub_004C4CC8(text);
      StList := TStringList.Create;
        for I := 1 to f31C.GetNbrePeriodes  do//00509978
        begin//4
          //00509982
          f31C.sub_004BE9EC(I, text);
          StList.Add(text);
        end;//4

      FCdn.sub_004C4CBC(StList);
      StList.Destroy;
      FCdn.sub_004C3920(Edit1.Text);
      FCdn.sub_004BEFD0(f31C.GetClasseName);
      f31C.sub_004BE914(text);
      FCdn.sub_004BF004(text);


      FCdn.sub_004BF038(ComboBox1.Items[ComboBox1.ItemIndex]);
      f31C.sub_004BE944(text);
      FCdn.sub_004BF06C(text);
      f31C.sub_004C3908(text);
      FCdn.sub_004BF0A0('Fichier créé par ' + text + ' pour ses collègues');
      FCdn.sub_004BF64C(f31C.EleveLists);
      FCdn.sub_004BF0D4();
      FCdn.SaveCdn(SaveDialog1.FileName, CheckBox1.Checked, '', 0);
      FCdn.Destroy;
    end;//2
    //00509B7E
end;//0

//00509BFC
procedure TFormCreerDisquettes.Edit1Change(Sender:TObject);
begin//0
  //00509BFC
    //00509C14
    SpeedButton2.Enabled :=  (Trim(Edit1.Text)<> '');
    //00509C4C
end;//0

//00509C6C
procedure TFormCreerDisquettes.FormKeyPress(Sender:TObject; var Key:Char);
begin
  if (Key = char($1B)) then
	ModalResult := 2;
end;

//00509C7C
procedure TFormCreerDisquettes.SpeedButton3Click(Sender:TObject);
begin//0
  //00509C7C
  {gvar_00617D64} FormOptions:= TFormOptions.Create(Self, Image1{EAX});
  FormOptions.PageControl1.ActivePage := FormOptions.TabSheet17;
  FormOptions.ShowModal;
  FormOptions.Destroy;
  ComboBox1.Items :=GetMatieres;
end;//0

end.