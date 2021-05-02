{***********************************************************
* Version Original V0.03 build 1                           *
* Decompiled by HOUIDEF AEK v 1:37 samedi, août 25, 2018   *
* The disassembly process : 100%                           *
************************************************************}
unit _FormAppreciations;

interface

uses
Forms, Windows,  SysUtils, Classes, Buttons, ComCtrls, Grids, StdCtrls, ExtCtrls, Tabs, uFichierCdn;

type
  TFormAppreciations = class(TForm)
  published
    SpeedButton1:TSpeedButton;//f2D0
    PageControl1:TPageControl;//f2D4
    TabSheet1:TTabSheet;//f2D8
    TabSheet2:TTabSheet;//f2DC
    StringGrid1:TStringGrid;//f2E0
    TabControlPeriodes:TTabControl;//f2E4
    Label1:TLabel;//f2E8
    Label2:TLabel;//f2EC
    Label3:TLabel;//f2F0
    StringGrid2:TStringGrid;//f2F4
    SpeedButton2:TSpeedButton;//f2F8
    SpeedButton3:TSpeedButton;//f2FC
    Label4:TLabel;//f300
    SpeedButton4:TSpeedButton;//f304
    SpeedButton5:TSpeedButton;//f308
    Label5:TLabel;//f30C
    Bevel1:TBevel;//f310
    Label7:TLabel;//f314
    Memo1:TMemo;//f318
    SpeedButtonElevePrecedent:TSpeedButton;//f31C
    SpeedButtonEleveSuivant:TSpeedButton;//f320
    TabSetColonnesBulletin:TTabSet;//f324
    procedure Memo1Exit(Sender:TObject);//00514D2C
    procedure Memo1Change(Sender:TObject);//00514D4C
    procedure SpeedButtonElevePrecedentClick(Sender:TObject);//00514C30
    procedure SpeedButtonEleveSuivantClick(Sender:TObject);//00514CA8
	procedure StringGrid1DrawCell(Sender:TObject; ACol:integer; ARow:Integer; Rect:TRect; State:TGridDrawState);
    procedure StringGrid2DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);//005155D4
    procedure TabSetColonnesBulletinChange(Sender: TObject; NewTab: Integer;
  var AllowChange: Boolean);//00515830
    procedure PageControl1Change(Sender:TObject);//00514F80
    procedure Memo1KeyDown(Sender:TObject; var Key:Word; Shift:TShiftState);//00515260
    procedure SpeedButton5Click(Sender:TObject);//00514BF0
    procedure FormDestroy(Sender:TObject);//00514358
    procedure TabControlPeriodesChange(Sender:TObject);//00514368
    procedure SpeedButton1Click(Sender:TObject);//00513B60
    procedure StringGrid1SelectCell(Sender: TObject; ACol,
									ARow: Integer; var CanSelect: Boolean);//00513D5C
    procedure SpeedButton3Click(Sender:TObject);//00514B6C
    procedure SpeedButton4Click(Sender:TObject);//00514BBC
    procedure StringGrid2SelectCell(Sender: TObject; ACol,
									  ARow: Integer; var CanSelect: Boolean);//005143AC
    procedure SpeedButton2Click(Sender:TObject);//005145E0
  public
    f328:TFichierCdn;//f328
    f32C:TStringList;//f32C
    f330:dword;//f330
    f334:dword;//f334
    f338:dword;//f338
    f33C:dword;//f33C
    f340:String;//f340
    f344:String;//f344
    f348:String;//f348
    f34C:byte;//f34C
    constructor Create(Owner:TComponent;FichierCdn:TFichierCdn);//005133D4
    procedure sub_00514620();//00514620
    procedure sub_005148C0;//005148C0
  end;
 var 
   FormAppreciations:TFormAppreciations;

implementation
   uses Unit111,_Unit112;
{$R *.DFM}

//005133D4
constructor TFormAppreciations.Create(Owner:TComponent; FichierCdn:TFichierCdn);
var 
I,J,K:integer;
buf:string;
lvar_1C : TStringList;
CanSelect : boolean;
begin//0
  //005133D4
    //0051343A
    
    inherited Create(Owner);;
    Memo1.MaxLength := 255;
    f328 := FichierCdn;
    f338 := 1;
    f33C := 1;
    f334 := 1;
    
    f32C := TStringList.Create;
    
    TabControlPeriodes.Tabs := f328.sub_004BEA4C;
    TabSetColonnesBulletin.Tabs := f328.sub_004C8BAC;
    StringGrid1.DefaultRowHeight := $12{18};
    StringGrid1.ColCount := f328.sub_004C8AE8 + 1;
    StringGrid1.RowCount := f328.sub_004BEA58;
    StringGrid1.Cols[0 ] := f328.sub_004BEAC4;

      for I := 1 to f328.sub_004BEA58 do //00513548
      begin//3
        //0051354C
        f328.sub_004C2C00(1, I,TabSetColonnesBulletin.TabIndex + 1 , buf);
        StringGrid1.Cells[1, I - 1] :=  buf;
      end;//3
    
      K := 0;
      for I := 0 to StringGrid1.colcount - 1 do//005135D6
      begin//3
        //005135DC
          for J := 0 to StringGrid1.colcount - 1 do
          begin//5
            //00513600
            if (StringGrid1.Canvas.TextWidth(StringGrid1.Cells[I, J]) > K) then 
                  K := StringGrid1.Canvas.TextWidth(StringGrid1.Cells[I, J]);
          end;//5
       
        StringGrid1.ColWidths[I] := K + 10;
      end;//3
    
    StringGrid1.DefaultDrawing := False;
    //StringGrid1.f28C := Self;
    StringGrid2.DefaultRowHeight := $12{18};
    StringGrid2.ColCount := f328.sub_004C8AE8 + 5;
    StringGrid2.RowCount := f328.sub_004BE9E0 + 1;
    StringGrid2.Cells[0, 0] := 'Périodes';
    StringGrid2.Cells[1, 0] :='+ basse';
    StringGrid2.Cells[2, 0] :='+ haute';
    StringGrid2.Cells[3, 0] :='Classe';
    StringGrid2.Cells[4, 0] := 'Elève';

      for I := 1 to f328.sub_004C8AE8  do//00513740
      begin//3
        //00513748
        f328.sub_004C8AF4(I, buf);
        StringGrid2.Cells[I + 4, 0] := buf;
      end;//3
    
    lvar_1C := TStringList.Create;

      for {lvar_14 } J:= 1 to f328.sub_004BE9E0  do//005137BD
      begin//3
        //005137C7
       // EDX := lvar_1C.f3A205844;
        lvar_1C.Clear;
          for K := 1 to f328.sub_004BEA58 do//005137DD
          begin//5
            //005137E1
            f328.sub_004C2D10(J, K, sub_004B9E10, buf);
            lvar_1C.add(buf);
          end;//5

        f328.sub_004BE9EC(J, buf);
        StringGrid2.Cells[0, J ] := buf;
        sub_004BDB3C(lvar_1C, buf);
        StringGrid2.Cells[1, J]:= buf;
        sub_004BDCFC(lvar_1C, buf);
        StringGrid2.Cells[2, J] := buf;
        sub_004BDEBC(lvar_1C, buf);
        StringGrid2.Cells[3, J] :=  buf;
        StringGrid2.Cells[4, J] := 'élève';
        if (f328.sub_004C8AE8 > 0) then 
		begin
			for K := 1 to f328.sub_004C8AE8 do
			begin//4
			  //0051393E
			  f328.sub_004C2C00(J, 1,K , buf);
			  StringGrid2.Cells[K + 4, J] := buf;
			end;//4
		end;
      end;//3
    lvar_1C.Destroy;

      for I := 0 to  StringGrid2.ColCount -1 do//005139D1
      begin//3
        //005139D7
        K := 0;
          for J := 0 to StringGrid2.RowCount - 1 do//005139F3
          begin//5
            //005139FB
            if (StringGrid2.Canvas.TextWidth(StringGrid2.Cells[I, J]) > K) then 
					K := StringGrid2.Canvas.TextWidth(StringGrid2.Cells[I, J]);
          end;//5
        
        StringGrid2.ColWidths[I]:=K + 10;
      end;//3

    sub_005148C0;
    StringGrid2SelectCell(Self, 1, f334,CanSelect);
    sub_00514620;
    StringGrid1SelectCell(Self, 1, f338 - 1, CanSelect);
end;//0

//00513B60
procedure TFormAppreciations.SpeedButton1Click(Sender:TObject);
begin
 close;
end;
procedure TFormAppreciations.StringGrid1DrawCell(Sender:TObject; ACol:integer; ARow:Integer; Rect:TRect; State:TGridDrawState);
begin//0
  //00513B68
    //00513B9D
    StringGrid1.Canvas.Font.Style := [];//gvar_00513D58;
    StringGrid1.Canvas.Font.Color := 0;

    if (ARow mod 2 - 1 <> 0) then
    begin//2
      //00513BDE
      StringGrid1.Canvas.Brush.Color := $FFFFFF;
    end//2
    else
    begin//2
      //00513BF9
      StringGrid1.Canvas.Brush.Color := $F4F3EE;
    end;//2
    StringGrid1.Canvas.FillRect(Rect);
    StringGrid1.Canvas.Font.Color := 0;
    StringGrid1.Canvas.TextOut(Rect.Left + 5, Rect.Top + 2, StringGrid1.Cells[ACol, ARow ]);
    if (gdSelected in State) then
    begin//2
      //00513C88
      if (ACol = TabSetColonnesBulletin.TabIndex + 1) then
      begin//3
        //00513CA2
        StringGrid1.Canvas.Font.Color := $FF{255};
      end;//3
      StringGrid1.Canvas.Brush.Color:= $F8D1C5;
      StringGrid1.Canvas.TextOut(Rect.Left + 5, Rect.Top + 2, StringGrid1.Cells[ACol, ARow]);
    end;//2

    //00513D37

end;//0

//00513D5C
procedure TFormAppreciations.StringGrid1SelectCell(Sender:TObject; ACol:integer; ARow:Integer; var CanSelect:Boolean);
var
  buf:string;
  moyennesSur,lvar_10:Real;
  GridRect:TGridRect;
begin//0
  //00513D5C
    //00513D85

    //lvar_24 := f328;
    //ESI := StringGrid1;

    f338 := ARow + 1; 
    f330 := ARow;
    
    SpeedButtonElevePrecedent.Enabled := (f338 > 1); 
    SpeedButtonEleveSuivant.Enabled := (f328.sub_004BEA58  > f338);
    if (ACol >= 1) then
    begin//2
      //00513E07
      f34C := 0;
      Memo1.Clear;
     
      if (Trim(StringGrid1.Cells[ACol, ARow]) <> '') then
      begin//3
        //00513E43
        Memo1.Text := StringGrid1.Cells[ACol, ARow];
      end;//3

      f34C := 1;
      TabSetColonnesBulletin.TabIndex := ACol - 1;
      if (Memo1.Showing ) then//00513E9A
        Memo1.SetFocus;    
      Memo1.SelStart := Length(Memo1.text);
    end//2
    else
    begin//2
      //00513ECE
      if (ACol = 0) then
      begin//3
        //00513ED6
        f34C := 0;   
        Memo1.Clear;  
        
        if (Trim(StringGrid1.Cells[TabSetColonnesBulletin.TabIndex + 1, ARow]) <> '') then//00513F29
          Memo1.text := StringGrid1.Cells[TabSetColonnesBulletin.TabIndex + 1, ARow];

        f34C := 1;
        
        if (Memo1.Showing ) then//00513F7D
          Memo1.SetFocus;

      
        Memo1.SelStart := Length(Memo1.text);
      end;//3
    end;//2

    GridRect.left := 0;
    GridRect.Top := f330;
   
    GridRect.right := StringGrid1.ColCount - 1;
    GridRect.Bottom := f330;
    StringGrid1.Selection := GridRect;

    if (sub_004BA2B0 ) then
    begin//2
      //00513FF3
      try
        //00514001
        moyennesSur := sub_004B9E48;
        f328.sub_004C2D10(TabControlPeriodes.TabIndex + 1, Arow + 1, sub_004B9E10, buf);
        lvar_10 := StrToFloat(buf);
        //00514078
        if (lvar_10 < 0) Or (lvar_10 <  moyennesSur) then //00514090
          Label7.Font.Color := _Getcouleur4Note
        else//005140AD
          if (lvar_10 >= 0) and (lvar_10 <  moyennesSur/2) then//005140BB  //005140CE
              Label7.Font.Color:= _Getcouleur1Note
          else //005140E8
		     if (lvar_10 >=  moyennesSur*3/4 ) and (lvar_10 <  moyennesSur) then//00514101//0051410E
               Label7.Font.Color := _Getcouleur3Note
			  else 
			    Label7.Font.Color := _Getcouleur2Note;
        
      except//3
        on E:EConvertError do
        begin//4
          //0051415B
          Label7.Font.Color := 0;
        end;//4
      end;//3
    end//2
    else//00514175
      Label7.Font.Color := 0;


 
    f328.sub_004C2D10(TabControlPeriodes.TabIndex + 1, ARow + 1, sub_004B9E10, buf);
    Label7.Caption:= buf;
    Label2.Caption := 'Moy. la + basse : ' + f340;
    Label3.Caption := 'Moy. la + haute : ' + f344;
    Label5.Caption := 'Moy. de la classe : ' + f348;
    CanSelect := True;
    //0051429D

end;//0

//00514358
procedure TFormAppreciations.FormDestroy(Sender:TObject);
begin
 inherited;
 f32C.destroy;
end;

//00514368
procedure TFormAppreciations.TabControlPeriodesChange(Sender:Tobject);
var
 CanSelect:boolean;
begin//0
  //00514368
  sub_00514620();
  StringGrid1SelectCell(self,TabSetColonnesBulletin.TabIndex + 1,f338 - 1,CanSelect );
end;//0

//005143AC
procedure TFormAppreciations.StringGrid2SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
var
  GridRect:TGridRect;
begin//0
  //005143AC
    //005143D8

    f334 := ARow;
    GridRect.left := 0;
    GridRect.Top := ARow;

    GridRect.Right := StringGrid2.ColCount - 1;
    GridRect.Bottom := ARow;

    StringGrid2.Selection := GridRect;
    if (ACol >= 5) then
    begin//2
      //00514418
      f34C := 0;
      Memo1.Clear;
      if (Trim(StringGrid2.Cells[ACol, ARow]) <> '') then //00514452
        Memo1.Text := StringGrid2.Cells[ACol, ARow];

      TabSetColonnesBulletin.TabIndex:= ACol - 5;
      f34C := 1;
      if (Memo1.Showing) then//005144A2
        Memo1.SetFocus;
      Memo1.SelStart := Length(Memo1.text);
    end//2
	else 
	begin
		f34C := 0;
		Memo1.Clear;
		if (Trim(StringGrid2.Cells[TabSetColonnesBulletin.TabIndex + 5, ARow]) <> '') then
		begin//2
		  //00514520
		  Memo1.Text := StringGrid2.Cells[TabSetColonnesBulletin.TabIndex + 5, ARow];
		end;//2
		f34C := 1;
		if (Memo1.Showing) then //0051456B
		  Memo1.SetFocus;
		Memo1.SelStart := Length(Memo1.Text);
	end;
    //005145A4

end;//0

//005145E0
procedure TFormAppreciations.SpeedButton2Click(Sender:TObject);
var
  CanSelect: boolean;
begin//0
  //005145E0
  if (f33C > 1) then 
  begin
	f33C := f33C - 1;
	sub_005148C0;
	StringGrid2SelectCell(Self, 1, f334, CanSelect);
  end;
end;//0
//00514620
procedure TFormAppreciations.sub_00514620();
var
  I,J,K :integer;
  buf:string;
begin//0
  //00514620
    //0051464D
    

      for I := 1 to StringGrid1.ColCount - 1 do//00514680
      begin//3
        //00514687
          for J := 1 to f328.sub_004BEA58 do//00514695
          begin//5
            //00514699
            f328.sub_004C2C00(TabControlPeriodes.TabIndex + 1, J, I, buf);
            StringGrid1.Cells[I, J - 1 ] := buf;
          end;//5


        K := 0;

          for J := 0 to StringGrid1.RowCount - 1 do//0051472D
          begin//5
            //00514732
            if (StringGrid1.Canvas.TextWidth(StringGrid1.Cells[I, J]) > K) then 
            K := StringGrid1.Canvas.TextWidth(StringGrid1.Cells[I, J]);
          end;//5

        if (K < $64{100}) then
        begin//4
          //00514776
          K := $64{100};
        end;//4
        StringGrid1.ColWidths[I] := K + 10;
      end;//3
   f32C.Clear;
      for J := 1 to f328.sub_004BEA58 do//005147B9
      begin//3
        //005147C0

        f328.sub_004C2D10(TabControlPeriodes.TabIndex + 1, J, sub_004B9E10, buf);
        f32C.Add(buf);
      end;//3


    sub_004BDB3C(f32C, buf);
    f340 := buf;
    sub_004BDCFC(f32C, buf);
    f344 := buf;
    sub_004BDEBC(f32C, buf);
    f348 := buf;
    //00514899

end;//0

//005148C0
procedure TFormAppreciations.sub_005148C0;
var
   buf:string;
   I,J,K:integer;
begin//0
  //005148C0
    //005148F3

    SpeedButton2.Enabled := (f33C > 1);

    SpeedButton3.Enabled := (f328.sub_004BEA58 > f33C);

    f328.sub_004BEA64( f33C, buf);

    Label4.Caption := buf;

      for I := 1 to f328.sub_004C8AE8 do//00514984
      begin//3
        //0051498E
          for J := 1 to f328.sub_004BE9E0  do//005149A2
          begin//5
            //005149A7
            f328.sub_004C2C00(J, f33C, I, buf);
            StringGrid2.Cells[I + 4, J] := buf;
          end;//5
     
          K:=0;
          for J := 0 to StringGrid2.RowCount - 1 do//00514A3A
          begin//5
            //00514A42
            Buf := StringGrid2.Cells[I + 4, J];
            
            if (StringGrid2.Canvas.TextWidth(Buf) > K) then 
                K := StringGrid2.Canvas.TextWidth(Buf);
          end;//5
        StringGrid2.ColWidths[I + 4] :=  K + 10;
      end;//3

      for I := 1 to f328.sub_004BE9E0  do //00514AC8
      begin//3
        //00514AD0
        f328.sub_004C2D10(I, f33C, sub_004B9E10, buf);
        StringGrid2.Cells[4, I] := buf;
      end;//3


    //00514B44

end;//0

//00514B6C
procedure TFormAppreciations.SpeedButton3Click(Sender:TObject);
var
 CanSelect:boolean;
begin//0
  //00514B6C
  if (f328.sub_004BEA58  > f33C) then 
  begin
	  f33C := f33C + 1;
	  sub_005148C0;
	  StringGrid2SelectCell(Self, 1, f334, CanSelect);
  end;
end;//0

//00514BBC
procedure TFormAppreciations.SpeedButton4Click(Sender:TObject);
var
CanSelect:boolean;
begin//0
  //00514BBC
  sub_005148C0;
  StringGrid2SelectCell(Self, 1, f334, CanSelect);
end;//0

//00514BF0
procedure TFormAppreciations.SpeedButton5Click(Sender:TObject);
var
 CanSelect:boolean;
begin//0
  //00514BF0
  f33C := f328.sub_004BEA58;
  sub_005148C0;
  StringGrid2SelectCell(Self, 1, f334, CanSelect);
end;//0

//00514C30
procedure TFormAppreciations.SpeedButtonElevePrecedentClick(Sender:TObject);
var
 CanSelect:boolean;
begin//0
  //00514C30
  if (f338 > 1) then
  begin
	  f338 := f338 - 1;
	  sub_00514620;
	  StringGrid1SelectCell(Self, TabSetColonnesBulletin.TabIndex + 1, f338 - 1, CanSelect);
	  StringGrid1.TopRow := f338 - 1;
  end;
end;//0

//00514CA8
procedure TFormAppreciations.SpeedButtonEleveSuivantClick(Sender:TObject);
var
 CanSelect :boolean;
begin//0
  //00514CA8
  if (f328.sub_004BEA58  > f338) then 
  begin
	  f338 := f338 + 1;
	  sub_00514620;
	  StringGrid1SelectCell(Self, TabSetColonnesBulletin.TabIndex + 1,f338 - 1 , CanSelect);
	  StringGrid1.TopRow := f338 - 2;
  end;
end;//0

//00514D2C
procedure TFormAppreciations.Memo1Exit(Sender:TObject);
begin//0
  //00514D2C
  if (PageControl1.ActivePage = TabSheet1) then//00514D40
    sub_00514620
  else 
  sub_005148C0;
end;//0


//00514D4C
procedure TFormAppreciations.Memo1Change(Sender:TObject);
var
  buf:string;
begin//0
  //00514D4C
    //00514D81
    if (PageControl1.ActivePage = TabSheet1) then
    begin//2
      //00514D9F
      if (f34C <> 0) then
	  begin

		  f328.sub_004C3798(TabControlPeriodes.TabIndex + 1, f330+1, Memo1.Text,TabSetColonnesBulletin.TabIndex + 1);
		  StringGrid1.Cells[TabSetColonnesBulletin.TabIndex + 1, f330] :=  Memo1.Text;
      end;
    end//2
	else
		if (f34C <> 0) then
		begin

			f328.sub_004C3798(f334, f33C, Memo1.text,TabSetColonnesBulletin.TabIndex + 1);
			StringGrid2.Cells[TabSetColonnesBulletin.TabIndex + 5, f334] :=  Memo1.text;
		end;
    //00514F60

end;//0

//00514F80
procedure TFormAppreciations.PageControl1Change(Sender:TObject);
var
  buf :string;
  CanSelect :boolean;
begin//0
  //00514F80
    //00514FB8

    if (PageControl1.ActivePage = TabSheet1) then
    begin//2
      //00514FD0

      sub_00514620;
      StringGrid1SelectCell(Self, 1,f338 - 1 , CanSelect);
      f34C := 0;

      Memo1.Clear;

      f328.sub_004C2C00(TabControlPeriodes.TabIndex + 1, f330 + 1,TabSetColonnesBulletin.TabIndex + 1 , buf);

      if (Trim(buf) <> '') then //005150AA
        Memo1.Text := buf;


      if (Memo1.Showing) then//005150C7
        Memo1.SetFocus;


      Memo1.SelStart := Length(Memo1.Text);
      f34C := 1;

    end//2
	else
	begin

    sub_005148C0;

    StringGrid2SelectCell(Self, 1, f334, CanSelect);
    f34C := 0;
    Memo1.Clear;

    f328.sub_004C2C00(f334, f33C,TabSetColonnesBulletin.TabIndex + 1 , buf);

    if (Trim(buf) <> '') then//005151BA
      Memo1.Text := buf;

    if (Memo1.Showing ) then//005151D7
      Memo1.SetFocus;

    Memo1.SelStart := Length(Memo1.Text);
    f34C := 1;
    end;
    //0051521D

end;//0

//00515260
procedure TFormAppreciations.Memo1KeyDown(Sender:TObject; var Key:Word; Shift:TShiftState);
var
  buf:string;
  CanSelect : boolean;
begin//0
  //00515260
    //00515298
    if (Key <> 13) then Exit;

    if (PageControl1.ActivePage = TabSheet1) then
    begin//2
      //005152BA
      if (f328.sub_004BEA58  > f338) then//005152D2
        f338 := f338 + 1;


      sub_00514620;
      StringGrid1SelectCell(Self, TabSetColonnesBulletin.TabIndex + 1, f338 - 1 , CanSelect);

      StringGrid1.TopRow := f338 - 2;
      f34C := 0;

      Memo1.Clear;

      f328.sub_004C2C00(TabControlPeriodes.TabIndex + 1, f330 + 1,TabSetColonnesBulletin.TabIndex + 1 , buf);

      if (Trim(buf) <> '') then//005153E6
        Memo1.Text := buf;


      if (Memo1.Showing ) then//00515403
        Memo1.SetFocus;

      Memo1.SelStart := Length(Memo1.Text);
      f34C := 1;
    end//2
    else 
	begin
    if (f328.sub_004BE9E0  > f334) then //00515459
      f334 := f334 + 1;


    sub_005148C0;
    StringGrid2SelectCell(Self, TabSetColonnesBulletin.TabIndex + 1, f334, CanSelect);
    f34C := 0;

    Memo1.Clear;

    
    f328.sub_004C2C00(f334, f33C, TabSetColonnesBulletin.TabIndex + 1, buf);
    if (Trim(buf) <> '') then//0051552D
		Memo1.Text:= buf;


    if (Memo1.Showing) then//0051554A
      Memo1.SetFocus;


    Memo1.SelStart := Length(Memo1.Text);
    f34C := 1;

    //00515590
  end;//1
end;//0

//005155D4
procedure TFormAppreciations.StringGrid2DrawCell(Sender:TObject; ACol:integer; ARow:Integer; Rect:TRect; State:TGridDrawState);

begin//0
  //005155D4
    //0051560C

    StringGrid2.Canvas.Font.Color := 0;
    if (ARow = 0) then
    begin//2
      //0051562A
      StringGrid2.Canvas.Brush.Color := $80000004;
      StringGrid2.Canvas.FillRect(Rect);
      StringGrid2.Font.Color := 0;
      StringGrid2.Canvas.TextOut(Rect.Left + 5, Rect.Top + 2, StringGrid2.Cells[ACol, ARow]);
    end//2
    else
    begin//2
      //005156AB
      if (ARow mod 2 - 1 <> 0) then//005156BC
        StringGrid2.Canvas.Brush.Color := $FFFFFF
      else//005156D7
        StringGrid2.Canvas.Brush.Color := $F4F3EE;

    end;//2

    StringGrid2.Canvas.FillRect(Rect);
    StringGrid2.Font.Color := 0;
    StringGrid2.Canvas.TextOut(Rect.Left + 5, Rect.Top + 2, StringGrid2.Cells[ACol, ARow]);
    if (gdSelected in State) then
    begin//2
      //00515760
      if (ACol = TabSetColonnesBulletin.TabIndex + 5) then
      begin//3
        //0051577A
        StringGrid2.Canvas.Font.Color := $FF{255};
      end;//3


      StringGrid2.Canvas.Brush.Color := $F8D1C5;
      
      StringGrid2.Canvas.FillRect(Rect);
      StringGrid2.Canvas.TextOut(Rect.Left + 5, Rect.Top + 2, StringGrid2.Cells[ACol, ARow]);
    end;//2

    //0051580F

end;//0

//00515830
procedure TFormAppreciations.TabSetColonnesBulletinChange(Sender: TObject; NewTab: Integer;
  var AllowChange: Boolean);
var 
  buf: string;
begin//0
  //00515830
    //00515859
    if (Showing <> False) then
	begin
		//ESI := f328;
		Memo1.Clear;
		f34C := 0;
		if (PageControl1.ActivePage = TabSheet1) then
		begin//2
		  //00515899
		  sub_00514620;
		  f328.sub_004C2C00(TabControlPeriodes.TabIndex + 1, f330 + 1,NewTab + 1 , buf);
		  Memo1.Text := buf;
		end//2
		else
		begin//2
		  //00515925
		  sub_005148C0;
		  f328.sub_004C2C00(f334, f33C, NewTab + 1, buf);
		  Memo1.Text := buf;
		end;//2
		f34C := 1;
	end;
    //005159AE

end;//0

end.