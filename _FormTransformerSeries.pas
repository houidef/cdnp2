{***********************************************************
* Version Original V0.03 build 1                           *
* Decompiled by Houidef AEK v 12:20 mercredi, août 29, 2018*
* The disassembly process : 100%                           *
************************************************************}
unit _FormTransformerSeries;

interface

uses
  Forms,Windows, SysUtils, Classes, ExtCtrls, Buttons, ComCtrls, StdCtrls, Controls, UFichierCdn;

type
  TFormTransformerSeries = class(TForm)
  published
    Panel2:TPanel;//f2D0
    Bevel2:TBevel;//f2D4
    Image1:TImage;//f2D8
    SpeedButton15:TSpeedButton;//f2DC
    TabControl1:TTabControl;//f2E0
    ListBox2:TListBox;//f2E4
    Label2:TLabel;//f2E8
    ComboBox1:TComboBox;//f2EC
    Edit1:TEdit;//f2F0
    Label3:TLabel;//f2F4
    SpeedButton2:TSpeedButton;//f2F8
    SpeedButton1:TSpeedButton;//f2FC
    RadioGroup1:TRadioGroup;//f300
    CheckBox1:TCheckBox;//f304
    Label4:TLabel;//f308
    CheckBox2:TCheckBox;//f30C
    CheckBox3:TCheckBox;//f310
    procedure ComboBox1Change(Sender:TObject);//00512658
    procedure SpeedButton1Click(Sender:TObject);//00511EDC
    procedure FormKeyPress(Sender:TObject; var Key:Char);//00512734
    procedure CheckBox1Click(Sender:TObject);//005126F8
    procedure SpeedButton2Click(Sender:TObject);//00511DAC
    procedure TabControl1Change(Sender:Tobject);//00511960
    procedure SpeedButton15Click(Sender:TObject);//00511958
    procedure ListBox2Click(Sender:TObject);//00511C5C
    procedure ListBox2DrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);//00511AF0
  public
    f314:TFichierCdn;//f314
    f318:dword;//f318
    constructor Create(Owner:TComponent; F:TFichierCdn; logo:Timage);//005117D8
  end;
  var
    FormTransformerSeries:TFormTransformerSeries;
implementation
 uses _FormEdit;
{$R *.DFM}

//005117D8
constructor TFormTransformerSeries.Create(Owner:TComponent; F:TFichierCdn; logo:Timage);
var
 I:integer;
 buf:String;
begin//0
  //005117D8
    //00511807
    
    inherited Create(Owner);
    Image1.Picture := logo.Picture;
    f314 := F;
    TabControl1.Tabs := F.GetPeriodesList_;

      for I := 1 to F.GetNbreModules(TabControl1.TabIndex + 1) do //0051187D
      begin//3
        //00511884
        F._readCompteMoy( TabControl1.TabIndex + 1, buf, I);
        ListBox2.Items.Add(buf);
      end;//3

    CheckBox1.Enabled := (F.NbrModulesTot < 255{gvar_00617903});
    ComboBox1.ItemIndex := 0;
end;//0

//00511958
procedure TFormTransformerSeries.SpeedButton15Click(Sender:TObject);
begin
  Close;
end;

//00511960
procedure TFormTransformerSeries.TabControl1Change(Sender:TObject);
var
  I:integer;
  b:boolean;
  buf:string;
begin//0
  //00511960
  
    //0051198C
    ListBox2.Items.Clear;
	
      for I := 1 to f314.GetNbreModules(TabControl1.TabIndex + 1) do//005119DE
      begin//3
        //005119E5
        f314._readCompteMoy(TabControl1.TabIndex + 1, buf, I);
        ListBox2.Items.Add(buf);
      end;//3

    //00511A5B
    
    if (ListBox2.ItemIndex + 1 <> 0) and (Edit1.Text = ComboBox1.Items[ComboBox1.ItemIndex]) then//00511AA4
      b := false
	else//00511AA8
      b := true;
   
    
    SpeedButton1.Enabled := b;
  
    //00511AC2
   
end;//0

//00511AF0
procedure TFormTransformerSeries.ListBox2DrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
begin
    if (Index mod 2  <> 1) then
    begin//2
      //0055303B
      ListBox2.Canvas.Brush.Color := $FFFFFF;
      ListBox2.Canvas.FillRect(Rect);
    end//2
    else
    begin//2
      //0055306A
      ListBox2.Canvas.Brush.Color := $F4F3EE;
      ListBox2.Canvas.FillRect(Rect);
    end;//2

    ListBox2.Canvas.TextOut(Rect.Left + 5, Rect.Top + 2, ListBox2.Items[Index]);
    if ( odSelected in State) then
    begin//2
      //005530E6
      ListBox2.Canvas.Brush.Color := $F8D1C5;
      ListBox2.Canvas.FillRect(Rect);
      ListBox2.Canvas.Font.Color := $FF0000;
      ListBox2.Canvas.TextOut(Rect.Left + 5, Rect.Top + 2, ListBox2.Items[Index]);
    end;//2end;
end;
//00511C5C
procedure TFormTransformerSeries.ListBox2Click(Sender:TObject);
var
  b:boolean;
  buf:string;
begin//0
  //00511C5C

    //00511C88
  
    if (ListBox2.ItemIndex + 1 <> 0) then
    begin//2
      //00511C96
      f314.GetStrNoteSur(TabControl1.TabIndex + 1,  ListBox2.ItemIndex + 1, buf);
      Edit1.Text := buf;
    end;//2

    
    if (ListBox2.ItemIndex + 1 <> 0) and (Edit1.Text = ComboBox1.Items[ComboBox1.ItemIndex]) then//00511D5F
      b := false
    else//00511D63
      b := true;


    SpeedButton1.Enabled := b;

    //00511D7D

end;//0

//00511DAC
procedure TFormTransformerSeries.SpeedButton2Click(Sender:TObject);
begin//0
  //00511DAC

    //00511DC7
 
    {gvar_00617CE0}FormEdit := TFormEdit.Create(Self, 'Noté sur', '',1);
    
    FormEdit.ShowModal;
   
    if (FormEdit.ModalResult = 1) then
    begin//2
      //00511E09
      
      if (ComboBox1.Items.IndexOf(FormEdit.Edit1.Text) + 1 = 0) then
      begin//3
        //00511E35
        
        ComboBox1.Items.Add(FormEdit.Edit1.Text);
      end;//3      
      ComboBox1.ItemIndex :=  ComboBox1.Items.IndexOf(FormEdit.Edit1.Text);
    end;//2

    FormEdit.Destroy;

    //00511EAB
 
end;//0

//00511EDC
procedure TFormTransformerSeries.SpeedButton1Click(Sender:TObject);
var
  buf,buf0,buf1,buf2,buf3,buf4,buf5,buf6,MoyArrondi:string;
  I,J,K :integer;
  lvar_10 : real;
begin//0
  //00511EDC
    //00511F37
    if ( ListBox2.ItemIndex + 1 <> 0) then
    begin//2
      //00511F4C

      //lvar_A28 := ComboBox1.Items[ComboBox1.ItemIndex];
      //f314.GetStrNoteSur(TabControl1.TabIndex + 1, ListBox2.ItemIndex + 1, lvar_B2C);
      if (ComboBox1.Items[ComboBox1.ItemIndex] <> '') then
      begin//3
        //00512001
        f314.GetStrNoteSur(TabControl1.TabIndex + 1, ListBox2.ItemIndex + 1, buf1);
        lvar_10 := StrToInt(ComboBox1.Items[ComboBox1.ItemIndex]) / StrToInt(buf1);
        f318 := TabControl1.TabIndex + 1;//EAX
        I := ListBox2.ItemIndex + 1;//EAX
        J := ListBox2.ItemIndex + 1;//EAX
        buf6 := ComboBox1.Items[ComboBox1.ItemIndex];
        if (CheckBox1.Checked ) then
        begin//4
          //0051217B
          f314._readCompteMoy(f318, buf0, I);
          f314.GetStrCoeff(f318, I, buf2);
          f314.GetStrComptMoy(f318, I, buf3);
          f314.GetStrCommentaire(f318, I, buf4);
          f314.GetStrTypeNote(f318, I, buf5);
          f314.GetStrOraleEcrit(f318, I, buf1);
          f314.AddColone(f318, 'Copie de ' + buf0, buf6, buf2, buf3, DateToStr(Date), buf4, buf5, buf1 = 'Oral');
          J := f314.GetNbreModules(f318);   
        end;//4
        f314.sub_004C48BC(f318, J,buf6);
        if (CheckBox2.Enabled) then
        begin//4
          //00512400
          if (CheckBox2.Checked ) then
          begin//5
            //00512415
            f314._SetStrNote13(f318, I,'non');
          end;//5
        end;//4
        
        for K := 1 to f314.EleveCount do
        begin//4
          //0051245D 
          try
            //00512475
            f314._GetStrNote(f318, I, K, buf); 
            f314.GetStrMoyArrendit(FloatToStrF(StrToFloat(buf) * lvar_10 , ffFixed{2}, $12{18}, 2), RadioGroup1.ItemIndex, MoyArrondi);
            f314.sub_004C1074(f318, J, K, MoyArrondi);
          except//5
            on E:EConvertError do
            begin//6
              //005125AA
            end;//6
            on E:EMathError do
            begin//6
              //005125B1
            end;//6
          end;//5
        end;//4
        ModalResult := 1;
      end;//3
    end//2
    else 
		ModalResult := 2;
  
    //005125F2
    
end;//0

//00512658
procedure TFormTransformerSeries.ComboBox1Change(Sender:TObject);
var
  b:boolean;
begin//0
  //00512658
    //00512671


    
    //==>if(ListBox2.ItemIndex + 1 <> 0)then //0051267C
    if (ListBox2.ItemIndex + 1 <> 0) and (Edit1.Text = ComboBox1.Items[ComboBox1.ItemIndex]) then//005126B9
      b := false
    else//005126BD
      b := true;
   

    SpeedButton1.Enabled := b;

    //005126D7

end;//0

//005126F8
procedure TFormTransformerSeries.CheckBox1Click(Sender:TObject);
begin//0
  //005126F8
  CheckBox2.Enabled := CheckBox1.Checked;
  CheckBox3.Enabled := CheckBox1.Checked;
end;//0

//00512734
procedure TFormTransformerSeries.FormKeyPress(Sender:TObject; var Key:Char);
begin//0
  //00512734
  if (Key = #13 )then//00512739
		ModalResult := 1
  else 
  if (Key = #27 )then 
		ModalResult := 2;
end;//0

end.