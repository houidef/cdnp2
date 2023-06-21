{***********************************************************
* Version Original V0.03 build 1                           *
* Decompiled by HOUIDEF AEK v 20:48 lundi, ao�t 27, 2018   *
* The disassembly process : 100%                           *
************************************************************}
unit _FormInformationsSeries;

interface

uses
  Forms,Windows, SysUtils, Classes, ExtCtrls, Buttons, ComCtrls, StdCtrls, Controls, UFichierCdn,_FormEdit,_FormOptions;

type
  TFormInformationsSeriesDeNotes = class(TForm)
  published
    Panel2:TPanel;//f2D0
    Bevel2:TBevel;//f2D4
    Image1:TImage;//f2D8
    SpeedButton1:TSpeedButton;//f2DC
    TabControl1:TTabControl;//f2E0
    ListBoxSeries:TListBox;//f2E4
    Label1:TLabel;//f2E8
    Label2:TLabel;//f2EC
    Edit1:TEdit;//f2F0
    Label3:TLabel;//f2F4
    SpeedButton2:TSpeedButton;//f2F8
    Label4:TLabel;//f2FC
    ComboBox1:TComboBox;//f300
    ComboBox2:TComboBox;//f304
    SpeedButton3:TSpeedButton;//f308
    RadioGroup1:TRadioGroup;//f30C
    Label5:TLabel;//f310
    DateTimePicker1:TDateTimePicker;//f314
    Label6:TLabel;//f318
    Edit2:TEdit;//f31C
    ComboBox3:TComboBox;//f320
    Label7:TLabel;//f324
    SpeedButton4:TSpeedButton;//f328
    Label8:TLabel;//f32C
    RadioGroup2:TRadioGroup;//f330
    procedure ComboBox3Change(Sender:TObject);//0050DE9C
    procedure Edit2Change(Sender:TObject);//0050DF6C
    procedure ComboBox1Change(Sender:TObject);//0050DCF0
    procedure DateTimePicker1Change(Sender:TObject);//0050DDC0
    procedure FormKeyPress(Sender:TObject; var Key:Char);//0050E2F8
    procedure RadioGroup2Click(Sender:TObject);//0050E318
    procedure RadioGroup1Click(Sender:TObject);//0050E03C
    procedure Edit1Change(Sender:TObject);//0050E0CC
    procedure ListBoxSeriesDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);//0050CAE8
    procedure ListBoxSeriesClick(Sender:TObject);//0050CC54
    procedure SpeedButton1Click(Sender:TObject);//0050C9AC
    procedure TabControl1Change(Sender:TObject);//0050C9B4
    procedure SpeedButton4Click(Sender:TObject);//0050DA4C
    procedure ComboBox2Change(Sender:TObject);//0050DC20
    procedure SpeedButton2Click(Sender:TObject);//0050D60C
    procedure SpeedButton3Click(Sender:TObject);//0050D82C
  public
    f334:TFichierCdn;//f334
    constructor Create(Owner:TComponent; F:TFichierCdn;logo:Timage);//0050C820
	procedure sub_0050E1D8;//0050E1D8
  end;
   
 var 
   FormInformationsSeriesDeNotes:TFormInformationsSeriesDeNotes;
implementation
   uses UBiblio;
{$R *.DFM}

//0050C820
constructor TFormInformationsSeriesDeNotes.Create(Owner:TComponent; F:TFichierCdn; logo:Timage);
var
 I:integer;
 buf:string;
begin//0
  //0050C820
    inherited Create(Owner);
    Image1.Picture := logo.Picture;
    f334 := F;
    TabControl1.Tabs := F.GetPeriodeNameList;
      for I := 1 to f334.NbrSerieNotes(TabControl1.TabIndex + 1) do //0050C8CA
      begin//3
        //0050C8D1
        ListBoxSeries.Items.Add(f334.GetTitleModule(TabControl1.TabIndex + 1, I));
      end;//3
    if (ListBoxSeries.Items.Count > 0) then//0050C951
      ListBoxSeries.ItemIndex := 0;
    ListBoxSeriesClick(Self);
    sub_0050E1D8;
end;//0

//0050C9AC
procedure TFormInformationsSeriesDeNotes.SpeedButton1Click(Sender:TObject);
begin
 close;
end;

//0050C9B4
procedure TFormInformationsSeriesDeNotes.TabControl1Change(Sender:Tobject);
var
  I:integer;
  buf:string;
begin//0
  //0050C9B4
    //0050C9D4
    ListBoxSeries.Clear;
      //0050CA20
      for I := 1 to f334.NbrSerieNotes(  TabControl1.TabIndex + 1) do
      begin//3
        //0050CA27
        ListBoxSeries.Items.Add(f334.GetTitleModule(TabControl1.TabIndex + 1, I));
      end;//3
    if (ListBoxSeries.Items.Count> 0) then
    begin//2
      //0050CAA7
      ListBoxSeries.ItemIndex :=0;
    end;//2
    ListBoxSeriesClick(Self);
    sub_0050E1D8;
end;//0

//0050CAE8
procedure TFormInformationsSeriesDeNotes.ListBoxSeriesDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
begin
    if (Index mod 2  <> 1) then
    begin//2
      //0055303B
      ListBoxSeries.Canvas.Brush.Color := $FFFFFF;
      ListBoxSeries.Canvas.FillRect(Rect);
    end//2
    else
    begin//2
      //0055306A
      ListBoxSeries.Canvas.Brush.Color := $F4F3EE;
      ListBoxSeries.Canvas.FillRect(Rect);
    end;//2

    ListBoxSeries.Canvas.TextOut(Rect.Left + 5, Rect.Top + 2, ListBoxSeries.Items[Index]);
    if ( odSelected in State) then
    begin//2
      //005530E6
      ListBoxSeries.Canvas.Brush.Color := $F8D1C5;
      ListBoxSeries.Canvas.FillRect(Rect);
      ListBoxSeries.Canvas.Font.Color := $FF0000;
      ListBoxSeries.Canvas.TextOut(Rect.Left + 5, Rect.Top + 2, ListBoxSeries.Items[Index]);
    end;//2
end;

//0050CC54
procedure TFormInformationsSeriesDeNotes.ListBoxSeriesClick(Sender:TObject);
var
 I,J:integer;
 buf:string;
begin//0
    if (ListBoxSeries.ItemIndex + 1 <> 0) then
    begin//2
      //0050CC87
      //lvar_8 := f334;
      J := ListBoxSeries.ItemIndex + 1;//ESI
      I := TabControl1.TabIndex + 1;
      Edit1.Enabled :=True;
      ComboBox2.Enabled :=True;
      ComboBox1.Enabled :=True;
      RadioGroup1.Enabled :=True;
      DateTimePicker1.Enabled :=True;
      ComboBox3.Enabled :=True;
      Edit2.Enabled :=True;
      SpeedButton2.Enabled :=True;
      SpeedButton3.Enabled :=True;
      SpeedButton4.Enabled :=True;
      Edit1.Text := f334.GetTitleModule(I, J);
      ComboBox2.Items.Clear;
      ComboBox2.Items.Add('20');
      ComboBox2.Items.Add('10');
      ComboBox2.Items.Add('5');
      ComboBox2.Items.Add('30');
      ComboBox2.Items.Add('40');
      ComboBox2.Items.Add('50');
      ComboBox2.Items.Add('100');
      if (ComboBox2.Items.IndexOf(f334.GetDateNoteSur(I, J)) + 1 = 0) then
      begin//3
        //0050CE8F
        ComboBox2.Items.Add(f334.GetDateNoteSur(I, J));
      end;//3

      ;
      ComboBox2.ItemIndex := ComboBox2.Items.IndexOf(f334.GetDateNoteSur(I, J));
      ComboBox2.Text:=f334.GetDateNoteSur(I, J);
      ComboBox1.Text:= f334.Get_Coefficient(I, J);
      ComboBox1.Items.Clear;
      ComboBox1.Items.Add('1');
      ComboBox1.Items.Add('2');
      ComboBox1.Items.Add('3');
      ComboBox1.Items.Add('4');
      ComboBox1.Items.Add('5');
      ComboBox1.Items.Add('6');
      ComboBox1.Items.Add('7');
      ComboBox1.Items.Add('8');
      ComboBox1.Items.Add('9');
      ComboBox1.Items.Add('10');
      if (ComboBox1.Items.IndexOf(f334.Get_Coefficient(I,J)) + 1 = 0) then
      begin//3
        //0050D12E
        ComboBox1.Items.Add(f334.Get_Coefficient(I, J));
      end;//3
      ComboBox1.ItemIndex := ComboBox1.Items.IndexOf(f334.Get_Coefficient(I, J));
      if (f334.GetCompteMoyenne(I, J) = 'oui') then
      begin//3
        //0050D22C
        RadioGroup1.ItemIndex :=0;
      end//3
      else
      begin//3
        //0050D23B
        RadioGroup1.ItemIndex :=1;
      end;//3
      if (f334.GetOralEcrit(I, J) = 'Oral') then
      begin//3
        //0050D290
        RadioGroup2.ItemIndex :=1;
      end//3
      else
      begin//3
        //0050D2A2
        RadioGroup2.ItemIndex := 0;
      end;//3
      DateTimePicker1.Date :=StrTodate(f334.GetDataDate(I, J));
      ComboBox3.Items.Clear;
      ComboBox3.Items :=GetTypesdenotes;
      if (ComboBox3.Items.IndexOf(f334.GetDataTypeNote(I, J)) + 1 = 0) then
      begin//3
        //0050D387
        ComboBox3.Items.Add(f334.GetDataTypeNote(I, J));
      end;//3
      ComboBox3.ItemIndex :=ComboBox3.Items.IndexOf(f334.GetDataTypeNote(I, J));
      Edit2.Text:=f334.GetDataCommentaire(I, J);
      Exit;
    end;//2
    Edit1.Enabled :=False;
    ComboBox2.Enabled :=False;
    ComboBox1.Enabled :=False;
    RadioGroup1.Enabled :=False;
    SpeedButton2.Enabled :=False;
    SpeedButton3.Enabled :=False;
    SpeedButton4.Enabled :=False;
    DateTimePicker1.Enabled :=False;
    ComboBox3.Enabled :=False;
    Edit2.Enabled :=False;
end;//0

//0050D60C
procedure TFormInformationsSeriesDeNotes.SpeedButton2Click(Sender:TObject);
var
  I,J:integer;
  buf:string;
begin//0
    I := TabControl1.TabIndex + 1;//EBX
	J := ListBoxSeries.ItemIndex + 1;
    {gvar_00617CE0}FormEdit := TFormEdit.Create(Self, 'Not� sur', f334.GetDateNoteSur(I, J),1);
    FormEdit.ShowModal;
    if (FormEdit.ModalResult = 1) then
    begin//2
      //0050D6F8
      if (ComboBox2.Items.IndexOf(FormEdit.Edit1.Text) + 1 = 0) then
      begin//3
        //0050D72A
        ComboBox2.Items.Add(FormEdit.Edit1.Text);
      end;//3
      ComboBox2.ItemIndex := ComboBox2.Items.IndexOf(FormEdit.Edit1.Text);
      f334.SetPeriodeTraiteList_H03(I,J, FormEdit.Edit1.Text);
    end;//2
    FormEdit.Destroy;
end;//0

//0050D82C
procedure TFormInformationsSeriesDeNotes.SpeedButton3Click(Sender:TObject);
var
  I,J:integer;
  buf:string;
begin//0
  //0050D82C
    //0050D865
    I := TabControl1.TabIndex + 1;
    J := ListBoxSeries.ItemIndex + 1;//EAX
    {gvar_00617CE0}FormEdit := TFormEdit.Create(Self, 'Coefficient', f334.Get_Coefficient(I, J),1);
    FormEdit.ShowModal;
    if (FormEdit.ModalResult = 1) then
    begin//2
      //0050D918
      if (ComboBox1.Items.IndexOf(FormEdit.Edit1.Text) + 1 = 0) then
      begin//3
        //0050D94A
        ComboBox1.Items.Add(FormEdit.Edit1.Text);
      end;//3
      ComboBox1.ItemIndex := ComboBox1.Items.IndexOf(FormEdit.Edit1.Text);
      f334.SetPeriodeTraiteList_H02(I,J, FormEdit.Edit1.Text);
    end;//2
    FormEdit.Destroy;
end;//0

//0050DA4C
procedure TFormInformationsSeriesDeNotes.SpeedButton4Click(Sender:TObject);
var
  I,J:integer;
  buf:string;
begin//0
    {gvar_00617D64}FormOptions := TFormOptions.Create(Self, Image1);
    FormOptions.PageControl1.ActivePage := FormOptions.TabSheet4;
    FormOptions.ShowModal;
   FormOptions.Destroy;
    I := TabControl1.TabIndex + 1;//EBX
    J := ListBoxSeries.ItemIndex + 1;//EAX
    ComboBox3.Items.Clear;
    ComboBox3.Items :=GetTypesdenotes;
    if (ComboBox3.Items.IndexOf(f334.GetDataTypeNote(I, J)) + 1 = 0) then
    begin//2
      //0050DB75
      ComboBox3.Items.Add(f334.GetDataTypeNote(I, J));
    end;//2
    ComboBox3.ItemIndex := ComboBox3.Items.IndexOf(f334.GetDataTypeNote(I, J));
    //0050DBF7
end;//0

//0050DC20
procedure TFormInformationsSeriesDeNotes.ComboBox2Change(Sender:TObject);
begin//0
    f334.SetPeriodeTraiteList_H03(TabControl1.TabIndex + 1, ListBoxSeries.ItemIndex + 1,ComboBox2.Text);
end;//0

//0050DCF0
procedure TFormInformationsSeriesDeNotes.ComboBox1Change(Sender:TObject);
begin//0
    f334.SetPeriodeTraiteList_H02(TabControl1.TabIndex + 1, ListBoxSeries.ItemIndex + 1, ComboBox1.Text);
end;//0


//0050DDC0
procedure TFormInformationsSeriesDeNotes.DateTimePicker1Change(Sender:TObject);
begin//0
    f334.SetData_V5(TabControl1.TabIndex + 1, ListBoxSeries.ItemIndex + 1,DateToStr(DateTimePicker1.Date));
end;//0

//0050DE9C
procedure TFormInformationsSeriesDeNotes.ComboBox3Change(Sender:TObject);
begin//0
    f334.SetData_V6(TabControl1.TabIndex + 1, ListBoxSeries.ItemIndex + 1,ComboBox3.Text);
end;//0

//0050DF6C
procedure TFormInformationsSeriesDeNotes.Edit2Change(Sender:TObject);
begin//0
    f334.SetData_V4(TabControl1.TabIndex + 1, ListBoxSeries.ItemIndex + 1,Edit2.Text);
end;//0

//0050E03C
procedure TFormInformationsSeriesDeNotes.RadioGroup1Click(Sender:TObject);
var
  I,J:integer;
begin//0
  //0050E03C
  I := TabControl1.TabIndex + 1;//EBX
  J := ListBoxSeries.ItemIndex + 1;//EAX
  if (RadioGroup1.ItemIndex = 0) then//0050E094
    f334.SetData_V7(I, J,'oui')
  else 
  f334.SetData_V7(I, J,'non');
end;//0

//0050E0CC
procedure TFormInformationsSeriesDeNotes.Edit1Change(Sender:TObject);
begin//0
    ListBoxSeries.Items[ListBoxSeries.ItemIndex] := Edit1.Text;
    f334.SetData_V3(TabControl1.TabIndex + 1,ListBoxSeries.ItemIndex + 1,Edit1.Text);
end;//0

//0050E1D8
procedure TFormInformationsSeriesDeNotes.sub_0050E1D8;
var
k:integer;
begin//0
	k:=f334.NbrSerieNotes( TabControl1.TabIndex + 1);
    case k of
      0:
      begin//3
        //0050E232
        Label8.Caption:=('aucune s�rie de notes');
      end;//3
      1:
      begin//3
        //0050E244
        Label8.Caption:=('1 s�rie de notes');
      end;//3
	  else Label8.Caption:=IntToStr(k);
    end;//2
end;//0


//0050E2F8
procedure TFormInformationsSeriesDeNotes.FormKeyPress(Sender:TObject; var Key:Char);
begin//0
  //0050E2F8
  if (Key = #13) then//0050E2FD
    ModalResult := 1
  else
  if (Key = #27) then 
  ModalResult := 2;
end;//0

//0050E318
procedure TFormInformationsSeriesDeNotes.RadioGroup2Click(Sender:TObject);
var
  I,J:integer;
begin//0
  //0050E318
  I := TabControl1.TabIndex + 1;//EBX
  J := ListBoxSeries.ItemIndex + 1;//EAX
  if (RadioGroup2.ItemIndex = 1) then//0050E370
    f334.SetEcritOral_(I, J, true)
  else
  f334.SetEcritOral_(I, J, false);
end;//0

end.