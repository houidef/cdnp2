{**************************************************************
* Version Original V0.03 build 1                              *
* Decompiled by Houidef AEK v 10:18 samedi, septembre 08, 2018*
* The disassembly process : 100%                              *
***************************************************************}
unit _FormSupprimerSerie;

interface

uses
  Forms,Windows, SysUtils, Classes, ExtCtrls, ComCtrls, Buttons, CheckLst, Controls, StdCtrls,UFichierCdn;

type
  TFormSupprimerSerie = class(TForm)
  published
    Panel2:TPanel;//f2D0
    Bevel2:TBevel;//f2D4
    Image1:TImage;//f2D8
    TabControl1:TTabControl;//f2DC
    SpeedButton1:TSpeedButton;//f2E0
    SpeedButton2:TSpeedButton;//f2E4
    CheckListBox1:TCheckListBox;//f2E8
    SpeedButton3:TSpeedButton;//f2EC
    SpeedButton4:TSpeedButton;//f2F0
    Label1:TLabel;//f2F4
    procedure SpeedButton1Click(Sender:TObject);//0050C0C4
    procedure TabControl1Change(Sender:TObject);//0050BFA8
    procedure FormKeyPress(Sender:TObject; var Key:Char);//0050C31C
    procedure CheckListBox1ClickCheck(Sender:TObject);//0050C2C4
    procedure SpeedButton2Click(Sender:TObject);//0050BCF4
    procedure ListBox1DrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);//0050BB50
    procedure SpeedButton4Click(Sender:TObject);//0050BD60
    procedure SpeedButton3Click(Sender:TObject);//0050BCFC
  public
    f2F8:TFichierCdn;//f2F8
    constructor Create(Owner:TComponent; F:TFichierCdn;Logo:Timage);//0050BA30
	procedure sub_0050BDC4;//0050BDC4
  end;
 var 
   FormSupprimerSerie :TFormSupprimerSerie;

implementation

{$R *.DFM}

//0050BA30
constructor TFormSupprimerSerie.Create(Owner:TComponent; F:TFichierCdn; Logo:Timage);
var
 I:integer;
 buf:string;
begin//0
  //0050BA30

    //0050BA5F

    inherited Create(Owner);

    f2F8 := F;

    Image1.Picture := Logo.Picture;



    TabControl1.Tabs := f2F8.GetPeriodesList_;

   

 
      for I := 1 to f2F8.GetNbreModules(1) do //0050BAB9
      begin//3
        //0050BAC0

        f2F8.GetModuleName__v( 1, Buf, I);

        CheckListBox1.Items.Add(buf);
      end;//3

    
    sub_0050BDC4;
 
end;//0

//0050BB50
procedure TFormSupprimerSerie.ListBox1DrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
begin
    if (Index mod 2  <> 1) then
    begin//2
      //0055303B
     CheckListBox1.Canvas.Brush.Color := $FFFFFF;
     CheckListBox1.Canvas.FillRect(Rect);
    end//2
    else
    begin//2
      //0055306A
     CheckListBox1.Canvas.Brush.Color := $F4F3EE;
     CheckListBox1.Canvas.FillRect(Rect);
    end;//2

   CheckListBox1.Canvas.TextOut(Rect.Left + 5, Rect.Top + 2,CheckListBox1.Items[Index]);
    if ( odSelected in State) then
    begin//2
      //005530E6
     CheckListBox1.Canvas.Brush.Color := $F8D1C5;
     CheckListBox1.Canvas.FillRect(Rect);
     CheckListBox1.Canvas.Font.Color := $FF0000;
     CheckListBox1.Canvas.TextOut(Rect.Left + 5, Rect.Top + 2,CheckListBox1.Items[Index]);
    end;//2
end;

//0050BCF4
procedure TFormSupprimerSerie.SpeedButton2Click(Sender:TObject);
begin
  close;
end;

//0050BCFC
procedure TFormSupprimerSerie.SpeedButton3Click(Sender:TObject);
var
 I:integer;
begin//0
  //0050BCFC

    for I := 0 to CheckListBox1.Items.Count - 1 do//0050BD22
    begin//2
      //0050BD25
      CheckListBox1.Checked[I] := True;
    end;//2

  if (CheckListBox1.Items.Count > 0) then
  begin//1
    //0050BD4D
    SpeedButton1.Enabled := True;
  end;//1
end;//0

//0050BD60
procedure TFormSupprimerSerie.SpeedButton4Click(Sender:TObject);
var
  I:integer;
begin//0
  //0050BD60


    for I := 0 to CheckListBox1.Items.Count - 1 do//0050BD86
    begin//2
      //0050BD89

      CheckListBox1.Checked[I] := False;
    end;//2


  if (CheckListBox1.Items.Count > 0) then
  begin//1
    //0050BDB1
    SpeedButton1.Enabled := False;
  end;//1
end;//0

//0050BDC4
procedure TFormSupprimerSerie.sub_0050BDC4;
var
  K:integer;
  buf:string;
begin//0
  //0050BDC4
    buf := f2F8.GetPeriodName(TabControl1.TabIndex + 1);
	K:= f2F8.GetNbreModules(TabControl1.TabIndex + 1);
    case K of
      0:
      begin//3
        //0050BE7E
        Label1.Caption := buf + ' : aucune série de notes'
      end;//3
      1:
      begin//3
        //0050BEA4
        Label1.Caption := buf + ' : 1 série de notes';
      end;//3
	  else 
	  Label1.Caption := buf + ' : ' + IntToStr(K) + ' séries de notes';
    end;//2
    //0050BF18
end;//0


//0050BFA8
procedure TFormSupprimerSerie.TabControl1Change(Sender:TObject);
var
  I:integer;
  buf:string;
begin//0
  //0050BFA8

    //0050BFC8
    CheckListBox1.Items.Clear;
    SpeedButton1.Enabled := False;
    
    
      for I := 1 to f2F8.GetNbreModules(TabControl1.TabIndex + 1) do//0050C027
      begin//3
        //0050C02E
        f2F8.GetModuleName__v( TabControl1.TabIndex + 1, buf, I);
        CheckListBox1.Items.Add(buf);
      end;//3
    
    
    sub_0050BDC4;

    //0050C0AD
    
end;//0

//0050C0C4
procedure TFormSupprimerSerie.SpeedButton1Click(Sender:TObject);
var
  I,J,K,S,L :integer;
begin//0
  //0050C0C4
  //push EBP
  
  if (Application.MessageBox('Supprimer les séries de notes sélectionnées ?','Carnet de Notes version Personnelle' , $24{36}) = 6) then
  begin//1
    //0050C0F1  
      K := 0;
      for I := 1 to CheckListBox1.Items.Count do//0050C108
      begin//3
        //0050C111
        if (CheckListBox1.Checked[I - 1] ) then 
			K := K + 1;//EBX
      end;//3
      for I := 1 to K do //0050C145
      begin//3
        //0050C149
        for J := 1 to CheckListBox1.Items.Count do
        begin//4
          //0050C169
          if (CheckListBox1.Checked[J - 1]) then 
		  begin
			S := 0;
            for L := 1 to TabControl1.TabIndex do//0050C1A9
            begin//6
              //0050C1AE
              S := S + f2F8.GetNbreModules(L) ;
            end;//6
			f2F8._InsertColone(TabControl1.TabIndex + 1, S + J);
			CheckListBox1.Items.Delete(J - 1);
			Break;
		  end;
        end;//4
     
    end;//2
   end;
  TabControl1Change(Sender);
  sub_0050BDC4;
end;//0

//0050C2C4
procedure TFormSupprimerSerie.CheckListBox1ClickCheck(Sender:TObject);
var
 I:integer;
 b:boolean;
begin//0
  //0050C2C4
    b := false;
    for I := 0 to CheckListBox1.Items.Count - 1 do//0050C2ED
    begin//2
      //0050C2F0

      if (CheckListBox1.Checked[I] ) then 
		b := true;
    end;//2


  SpeedButton1.Enabled := b;
end;//0

//0050C31C
procedure TFormSupprimerSerie.FormKeyPress(Sender:TObject; var Key:Char);
begin
  if (Key = #27) then
    ModalResult := 2;
end;

end.