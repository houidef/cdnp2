{***************************************
* Version Original V0.01
* Decompiled by HOUIDEF AEK v.18:39 mardi 20 mars 2018
***************************************}
unit _TGrilleGenerique;

interface

uses
Forms, Windows,  SysUtils, Classes, Grids, StdCtrls, Controls, Dialogs ,Graphics,UFichierCdn,URegistry,Unit111;

type
  TGrilleGeneriqueCarnetDeNotes = class(TStringGrid)
  protected
    procedure DrawCell(ACol, ARow: Longint; ARect: TRect; AState: TGridDrawState);override;
  public
    f2D8:byte;//f2D8
    FichierCdn : TFichierCdn;// f2DC:dword;//f2DC
    f2E0:HWND;//f2E0
    f2E4:byte;//f2E4
	constructor Create(AOwner: TComponent;b:pointer; FeuilleClasse:TComponent; FichierCdn : TFichierCdn; Periode:byte);//004CA034
	procedure sub_004CA398(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);//004CA398
	procedure sub_004CA104(Sender: TObject; ACol, ARow: Integer;
     Rect: TRect; State: TGridDrawState);
	procedure sub_004CA3B8(Sender: TObject);
  end;

implementation

//004CA034

constructor TGrilleGeneriqueCarnetDeNotes.Create(AOwner: TComponent;b:pointer; FeuilleClasse:TComponent; FichierCdn : TFichierCdn; Periode:byte);
begin
  //004CA034
  inherited Create(AOwner);
  
  ScrollBars := ssBoth;
  Parent := TWinControl(AOwner);
  f2E0 := TWinControl(FeuilleClasse).Handle;
  Visible := False;
  Align := alClient;  //5
  //DefaultDrawing := False;
  //f28C := Self;
  //OnDrawCell :=  sub_004CA104;
  //f2AC := Self;
  OnSelectCell := sub_004CA398;
  //f2BC := Self;
  OnTopLeftChanged := sub_004CA3B8;
  Options := [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goTabs];//$080F;
  Self.FichierCdn := FichierCdn;   
  f2D8 := Periode;

end;

//004CA104
procedure TGrilleGeneriqueCarnetDeNotes.sub_004CA104(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);// x:pointer; y:pointer; z:pointer; a:pointer);
var
  I:integer;
  Text: String;
  RowWith : integer;
begin//0
 //004CA104
  //ECX := 4;
  //lvar_24 := z;
 // I := ACol;
//004CA137
    Canvas.Font.Style := [] ; //0;//gvar_004CA394;

	{al := f2E4 - 1;
	if (al < 0) then goto  label_004CA165;
	al := al - 2;
	if (al < 0) then goto  label_004CA203;
	al := al - 1;
	if (al <> 0) then goto  label_004CA268
label_004CA164:}
//=====
    case f2E4 of
      0:
      begin//004CA165
        if (ACol = 1) then
        begin//004CA16F
		  RowWith:=0;
          if (RowCount >= 1) then
          begin//004CA188
            for I := 0 to RowCount - 1 do
            begin//004CA190
              Text := Cells[1, I];
              if (Canvas.TextWidth(Text) > RowWith) then 
                 RowWith := Canvas.TextWidth(Text);
            end;//6
          end;//5
          ColWidths[1] := RowWith + 10;
          Width := ColWidths[0] + ColWidths[1];
        end;//4
      end;//3
      1..2:
      begin//004CA203
        RowWith := 0;
        if (RowCount  >= 1) then
        begin//004CA21C
          for I := 0 to RowCount - 1 do
          begin//004CA224
            Text := Cells[ACol, I];
            if (Canvas.TextWidth(Text) > RowWith) then 
					RowWith := Canvas.TextWidth(Text);
          end;//5
        end;//4
		ColWidths[ACol] := RowWith + 10;
	  end;   
	end;	
	 //3://004CA268
        if (ARow  = 0) then
        begin//004CA26E
          Canvas.Brush.Color := $80000004;
          Canvas.FillRect(Rect);
        end;//4
        if (sub_004BB458) then
        begin//004CA298*)
          if (ARow mod 2  = 0) then 
          begin//004CA2AA
            Canvas.Brush.Color := sub_004B9C80;
          end//5
          else
          begin//004CA2C1
            Canvas.Brush.Color := sub_004B9C34;
          end;//5
        end//4
        else
        begin//004CA2D8
          Canvas.Brush.Color := $FFFFFF;
        end;//4
        Canvas.FillRect(Rect);
	  
        if(gdFixed in State) then  //state = 4
        if (sub_004BB458) then
        begin//004CA2FF
          Canvas.Brush.Color := $80000004;
          Canvas.FillRect(Rect);
        end;//4
        Canvas.Font.Color := 0;
        if(gdSelected in State ) then // state =1 
        if (sub_004BB458) then
        begin//004CA336
          if (sub_004BB458) then
          begin//004CA33F
            Canvas.Brush.Color := sub_004B9D24;
            Exit;
          end;//5
          Canvas.Brush.Color := $C0C0C0;
        end;//4
      //end;//3
    //end;//2

end;



//004CA398
procedure TGrilleGeneriqueCarnetDeNotes.sub_004CA398(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin

  SendMessageA(f2E0, $401{1025}, ARow, 255);
end;

//004CA3B8
procedure TGrilleGeneriqueCarnetDeNotes.sub_004CA3B8(Sender: TObject);
begin
  SendMessageA(f2E0, $402{1026}, {FTopLeft} TopRow, 0);
end;

procedure TGrilleGeneriqueCarnetDeNotes.DrawCell(ACol, ARow: Longint; ARect: TRect; AState: TGridDrawState);

begin
    sub_004CA104(Self, ACol, ARow ,ARect , AState);
end;
end.