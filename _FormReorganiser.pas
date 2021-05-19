{***********************************************************
* Version Original V0.03 build 1                           *
* Decompiled by Houidef AEK v 12:20 mercredi, août 29, 2018*
* The disassembly process : 100%                            *
************************************************************}
unit _FormReorganiser;

interface

uses
  Forms, Windows, SysUtils, Classes, ExtCtrls, StdCtrls, Buttons, Controls , UFichierCdn;

type
  TFormReorganiser = class(TForm)
  published
    Panel2:TPanel;//f2D0
    Bevel2:TBevel;//f2D4
    Image1:TImage;//f2D8
    ListBox1:TListBox;//f2DC
    ComboBox1:TComboBox;//f2E0
    ListBox2:TListBox;//f2E4
    ComboBox2:TComboBox;//f2E8
    SpeedButton1:TSpeedButton;//f2EC
    Label1:TLabel;//f2F0
    Label2:TLabel;//f2F4
    SpeedButton2:TSpeedButton;//f2F8
    SpeedButton3:TSpeedButton;//f2FC
    SpeedButton4:TSpeedButton;//f300
    Label3:TLabel;//f304
    Label4:TLabel;//f308
    SpeedButton5:TSpeedButton;//f30C
    procedure SpeedButton2Click(Sender:TObject);//0050B3E8
    procedure SpeedButton3Click(Sender:TObject);//0050B330
    procedure SpeedButton4Click(Sender:TObject);//0050B48C
    procedure FormKeyPress(Sender:TObject; var Key:Char);//0050B6D0
    procedure SpeedButton5Click(Sender:TObject);//0050B644
    procedure ComboBox2Change(Sender:TObject);//0050ADB0
    procedure ComboBox1Change(Sender:TObject);//0050AC1C
    procedure SpeedButton1Click(Sender:TObject);//0050AF44
    procedure ListBox2DrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);//0050B18C
    procedure ListBox1DrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);//0050AFE8
  public
    f310:TFichierCdn;//f310
    constructor Create(Owner:TComponent;Logo:Timage; F:TFichierCdn);//0050A970
	procedure sub_0050B494;//0050B494
  end;
  var
   FormReorganiser :TFormReorganiser;
   

implementation

{$R *.DFM}

//0050A970
constructor TFormReorganiser.Create(Owner:TComponent; Logo:Timage; F:TFichierCdn);
var
  buf :string;
  I:integer;
begin//0
  //0050A970
    //0050A9A5

    inherited create(Owner);

    Image1.Picture := Logo.Picture;
    f310 := F;
    //ComboBox1.Items := gvar_006184E0.ActiveMDIChild.TabControlGrillesNotes{f328}.f210;
    ComboBox1.ItemIndex := 0;
      for I := 1 to f310.GetNbreModules(1) do //0050AA1A
      begin//0050AA21
        f310.GetModuleName__v(1, buf, I);
        ListBox1.Items.Add(buf);
      end;//3
    ComboBox2.Items := ComboBox1.Items;
    ComboBox2.ItemIndex := 0;
   // lvar_10 := f310;
    if (f310.GetNbreModules(ComboBox2.ItemIndex + 1) > 0) then
    begin//2
      //0050AACF
      
      for I := 1 to f310.GetNbreModules(ComboBox2.ItemIndex + 1) do
      begin//3
        //0050AAD6
        
     
        f310.GetModuleName__v(ComboBox2.ItemIndex + 1, buf, I);
        ListBox2.Items.Add(buf);
      end;//3
    end;//2
   

    //0050AB5F
    if (ComboBox1.ItemIndex = ComboBox2.ItemIndex) Or (ListBox1.Items.Count = 0) then//0050AB78
      SpeedButton1.Enabled := false
    else//0050AB7C
      SpeedButton1.Enabled := true;

    //0050ABA1

    if (ComboBox1.ItemIndex = ComboBox2.ItemIndex) Or (ListBox1.Items.Count = 0) then//0050ABBA
      SpeedButton5.Enabled := false
    else//0050ABBE
      SpeedButton5.Enabled := true;
    

    //sub_0050B494;

end;


//0050AC1C
procedure TFormReorganiser.ComboBox1Change(Sender:TObject);
var
 I:integer;
 buf:string;
 b:boolean;
begin//0
  //0050AC1C
    //0050AC3C
    ListBox1.Items.Clear;
    
    
   
      for I := 1 to f310.GetNbreModules(ComboBox1.ItemIndex + 1) do//0050AC8E
      begin//3
        //0050AC95
        
        f310.GetModuleName__v( ComboBox1.ItemIndex + 1, buf, I);
        ListBox1.Items.Add(buf);
      end;//3


    //0050AD18

    if (ComboBox1.ItemIndex = ComboBox2.ItemIndex) Or (ListBox1.Items.Count = 0) then //0050AD31
      b := false
    else//0050AD35
      b := true;


    SpeedButton1.Enabled := b;

    //0050AD5A

    if (ComboBox1.ItemIndex = ComboBox2.ItemIndex) Or (ListBox1.Items.Count = 0) then//0050AD73
      b := false
    else//0050AD77
      b := true;


    SpeedButton5.Enabled := b;
    sub_0050B494;

    //0050AD98

end;//0

//0050ADB0
procedure TFormReorganiser.ComboBox2Change(Sender:TObject);
var
  buf :string;
  I:integer;
  b:boolean;
begin//0
  //0050ADB0
    //0050ADD0
    ListBox2.Items.Clear;
      for I := 1 to f310.GetNbreModules(ComboBox2.ItemIndex + 1) do//0050AE22
      begin//3
        //0050AE29
        f310.GetModuleName__v(ComboBox2.ItemIndex + 1, buf, I);
       ListBox2.Items.Add(buf);
      end;//3
    //0050AEAC
    if (ComboBox1.ItemIndex = ComboBox2.ItemIndex) Or (ListBox1.Items.Count = 0) then //0050AEC5
      b := false
	else//0050AEC9
      b := true;

    SpeedButton1.Enabled := b;
    
    //0050AEEE
    
    if (ComboBox1.ItemIndex = ComboBox2.ItemIndex) Or (ListBox1.Items.Count = 0) then //0050AF07
      b := false
    else //0050AF0B
      b := true;

    SpeedButton5.Enabled := b;
    sub_0050B494;
    //0050AF2C

end;//0

//0050AF44
procedure TFormReorganiser.SpeedButton1Click(Sender:TObject);
begin//0
  //0050AF44
  if (ListBox1.ItemIndex + 1 <> 0) then
  begin//1
    //0050AF5C
    f310.MoveColone(ComboBox1.ItemIndex + 1, ListBox1.ItemIndex + 1, ComboBox2.ItemIndex + 1);
    ComboBox1Change(Sender);
    ComboBox2Change(Sender);
  end;//1
end;//0


//0050AFE8
procedure TFormReorganiser.ListBox1DrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
begin
    if (Index mod 2  <> 1) then
    begin//2
      //0055303B
      ListBox1.Canvas.Brush.Color := $FFFFFF;
      ListBox1.Canvas.FillRect(Rect);
    end//2
    else
    begin//2
      //0055306A
      ListBox1.Canvas.Brush.Color := $F4F3EE;
      ListBox1.Canvas.FillRect(Rect);
    end;//2

    ListBox1.Canvas.TextOut(Rect.Left + 5, Rect.Top + 2, ListBox1.Items[Index]);
    if ( odSelected in State) then
    begin//2
      //005530E6
      ListBox1.Canvas.Brush.Color := $F8D1C5;
      ListBox1.Canvas.FillRect(Rect);
      ListBox1.Canvas.Font.Color := $FF0000;
      ListBox1.Canvas.TextOut(Rect.Left + 5, Rect.Top + 2, ListBox1.Items[Index]);
    end;//2
end;

//0050B18C
procedure TFormReorganiser.ListBox2DrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
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
    end;//2
end;

//0050B330
procedure TFormReorganiser.SpeedButton3Click(Sender:TObject);
begin//0
  //0050B330

  if (ListBox1.ItemIndex + 1 <> 0) then
  begin//1
    //0050B34A
    if (ListBox1.Items.Count - 1 = ListBox1.ItemIndex) then Exit;
   
    f310.sub_004C4990(ComboBox1.ItemIndex + 1, ListBox1.ItemIndex + 1);
    ComboBox1Change(Sender);
    ListBox1.ItemIndex := ListBox1.ItemIndex + 1;
  end;//1
end;//0

//0050B3E8
procedure TFormReorganiser.SpeedButton2Click(Sender:TObject);
begin//0
  //0050B3E8

  if (ListBox1.ItemIndex + 1 <> 0) then
  begin//1
    //0050B401

    if (ListBox1.ItemIndex <> 0) then
    begin//2
      //0050B410
      f310.sub_004C4B20(ComboBox1.ItemIndex + 1, ListBox1.ItemIndex + 1);
      ComboBox1Change(Sender);
      ListBox1.ItemIndex := ListBox1.ItemIndex - 1;
    end;//2
  end;//1
end;//0

//0050B48C
procedure TFormReorganiser.SpeedButton4Click(Sender:TObject);
begin
close;
end;

//0050B494
procedure TFormReorganiser.sub_0050B494;
var
K:integer;
begin//0
  //0050B494
    //0050B4AE
	K := f310.GetNbreModules(ComboBox1.ItemIndex + 1);
    case K of
      0:
      begin//3
        //0050B4F2
        Label3.Caption := 'aucune série de notes';
      end;//3
      1:
      begin//3
        //0050B504
        Label3.Caption := '1 série de notes';
      end;//3
      else 
        Label3.Caption := IntToStr(K) + ' séries de notes';
	end;//2
	K := f310.GetNbreModules(ComboBox2.ItemIndex + 1);
    case K of
      0:
      begin//3
        //0050B579
        Label4.Caption := 'aucune série de notes';
      end;//3
      1:
      begin//3
        //0050B58B
        Label4.Caption := '1 série de notes';
        
      end;//3
	  else 
	  Label4.Caption := IntToStr(K ) + ' séries de notes';
    end;//2

    
    //0050B5CF

end;//0


//0050B644
procedure TFormReorganiser.SpeedButton5Click(Sender:TObject);
var
 I:integer;
begin//0
  //0050B644
   
    for I := 1 to ListBox1.Items.Count do//0050B662
    begin//2
      //0050B662
      f310.MoveColone(ComboBox1.ItemIndex + 1, 1, ComboBox2.ItemIndex + 1);
    end;//2

  ComboBox1Change(Sender);
  ComboBox2Change(Sender);
end;//0

//0050B6D0
procedure TFormReorganiser.FormKeyPress(Sender:TObject; var Key:Char);
begin
  if (Key = #13) then
    ModalResult := 1
  else
  if (Key = #27) then 
  ModalResult := 2;
end;

end.