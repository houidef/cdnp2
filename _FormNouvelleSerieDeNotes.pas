{***********************************************************
* Version Original V0.03 build 1                            *
* Decompiled by HOUIDEF AEK v19:15 jeudi, octobre 04, 2018  *
* The disassembly process : 100%                            *
************************************************************}
unit _FormNouvelleSerieDeNotes;

interface

uses
  Forms,Windows, SysUtils, Classes, ExtCtrls, ComCtrls, StdCtrls, Buttons, uFichierCdn,UBiblio,
  _FormOptions,_FormEdit;

type
  TFormNouvelleSerieDeNotes = class(TForm)
  published
    Panel1:TPanel;//f2D0
    Panel2:TPanel;//f2D4
    Bevel2:TBevel;//f2D8
    Image1:TImage;//f2DC
    TabControl1:TTabControl;//f2E0
    Label1:TLabel;//f2E4
    ComboBoxTypesDeNotes:TComboBox;//f2E8
    SpeedButton1:TSpeedButton;//f2EC
    Label3:TLabel;//f2F0
    ComboBox2:TComboBox;//f2F4
    SpeedButton3:TSpeedButton;//f2F8
    Label8:TLabel;//f2FC
    ComboBox5:TComboBox;//f300
    SpeedButton2:TSpeedButton;//f304
    Label6:TLabel;//f308
    DateTimePicker1:TDateTimePicker;//f30C
    Label2:TLabel;//f310
    Label7:TLabel;//f314
    Edit3:TEdit;//f318
    RadioGroup1:TRadioGroup;//f31C
    SpeedButton4:TSpeedButton;//f320
    SpeedButton5:TSpeedButton;//f324
    ComboBox1:TComboBox;//f328
    RadioGroupEcritOuOral:TRadioGroup;//f32C
    procedure SpeedButton4Click(Sender:TObject);//0050A58C
    procedure FormHide(Sender:TObject);//0050A544
    procedure FormKeyPress(Sender:TObject; var Key:Char);//0050A5A4
    procedure SpeedButton5Click(Sender:TObject);//0050A598
    procedure SpeedButton1Click(Sender:TObject);//0050A258
    procedure FormShow(Sender:TObject);//0050A214
    procedure SpeedButton2Click(Sender:TObject);//0050A414
    procedure SpeedButton3Click(Sender:TObject);//0050A2D8
  public
    f330 : TFichierCdn;
    f334:dword;//f334
    f338:String;//f338
    constructor Create(Owner:Tcomponent; FichierCdn:TFichierCdn; logo:Timage; Caption:string);//0050A11C
  end;
  var
   FormNouvelleSerieDeNotes:TFormNouvelleSerieDeNotes;
implementation

{$R *.DFM}

//0050A11C
constructor TFormNouvelleSerieDeNotes.Create(Owner:Tcomponent; FichierCdn:TFichierCdn; logo:Timage; Caption:string);
begin//0
  //0050A11C
    //0050A14A
    inherited Create(Owner);
    Self.Caption := Caption;
    Image1.Picture := logo.Picture;
    f330 := FichierCdn;
    TabControl1.Tabs := FichierCdn.GetPeriodeNameList;
    f334 := TabControl1.TabIndex + 1;//EAX
    ComboBoxTypesDeNotes.Items := GetTypesdenotes;
    ComboBox1.Items := GetTypesdenotes;
    f338 := 'oui';
end;//0
//0050A214
procedure TFormNouvelleSerieDeNotes.FormShow(Sender:TObject);
begin//0
  //0050A214
  ComboBoxTypesDeNotes.ItemIndex := 0;
  ComboBox2.ItemIndex := 0;
  ComboBox5.ItemIndex := 0;
  DateTimePicker1.Date := Date;
end;//0

//0050A258
procedure TFormNouvelleSerieDeNotes.SpeedButton1Click(Sender:TObject);
begin//0
  //0050A258
  {gvar_00617D64}FormOptions := TFormOptions.Create(Self, Image1);
  FormOptions.PageControl1.ActivePage := FormOptions.TabSheet4;
  FormOptions.ShowModal;
  FormOptions.Destroy;
  ComboBoxTypesDeNotes.Items :=  GetTypesdenotes;
  ComboBoxTypesDeNotes.ItemIndex := 0;
end;//0

//0050A2D8
procedure TFormNouvelleSerieDeNotes.SpeedButton3Click(Sender:TObject);
begin//0
  //0050A2D8
    //0050A2F3
    FormEdit := TFormEdit.Create(Self, 'Coefficient de la série', '',1);
    FormEdit.ShowModal;
    if (FormEdit.ModalResult = 1) then
    begin//2
      //0050A335
      if (ComboBox2.Items.IndexOf(FormEdit.Edit1.Text) + 1 = 0) then
      begin//3
        //0050A361
        ComboBox2.Items.Add(FormEdit.Edit1.Text);
      end;//3
      ComboBox2.ItemIndex := ComboBox2.Items.IndexOf(FormEdit.Edit1.Text);
    end;//2
    FormEdit.Destroy;
    //0050A3D7
end;//0

//0050A414
procedure TFormNouvelleSerieDeNotes.SpeedButton2Click(Sender:TObject);
begin//0
  //0050A414
    //0050A42F
    {gvar_00617CE0}FormEdit := TFormEdit.Create(Self, 'Noté sur', '',1);
    FormEdit.ShowModal;
    if (FormEdit.ModalResult = 1) then
    begin//2
      //0050A471
      if (ComboBox5.Items.IndexOf(FormEdit.Edit1.Text) + 1 = 0) then
      begin//3
        //0050A49D
       ComboBox5.Items.Add(FormEdit.Edit1.Text);
      end;//3
      ComboBox5.ItemIndex := ComboBox5.Items.IndexOf(FormEdit.Edit1.Text);
    end;//2
    FormEdit.Destroy;
    //0050A513
end;//0

//0050A544
procedure TFormNouvelleSerieDeNotes.FormHide(Sender:TObject);
begin//0
  //0050A544
  f334 := TabControl1.TabIndex + 1;//EAX
  if (RadioGroup1.ItemIndex = 0) then //0050A571
    f338 := 'oui'
  else
  f338 := 'non';
end;//0
//0050A58C
procedure TFormNouvelleSerieDeNotes.SpeedButton4Click(Sender:TObject);
begin
 ModalResult:=2;
end;

//0050A598
procedure TFormNouvelleSerieDeNotes.SpeedButton5Click(Sender:TObject);
begin
 ModalResult:=1;
end;

//0050A5A4
procedure TFormNouvelleSerieDeNotes.FormKeyPress(Sender:TObject; var Key:Char);
begin
  if (Key = #13) then
    ModalResult := 1
  else
  if (Key = #27) then 
  ModalResult := 2;
end;

end.