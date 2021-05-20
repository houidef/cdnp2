{***********************************************************
* Version Original V0.03 build 1                           *
* Decompiled by Houidef AEK v Thursday 20 May 2021 @ 12:47 AM*
* The disassembly process : 100%                           *
************************************************************}
unit _TGrilleGenerique;

interface

uses
Forms, Windows,  SysUtils, Classes, Grids, StdCtrls, Controls, Dialogs ,Graphics,UFichierCdn,URegistry,Unit111;

type
  TGrilleGeneriqueCarnetDeNotes = class(TStringGrid)
  protected
    procedure DrawCell(ACol, ARow: Longint; ARect: TRect; AState: TGridDrawState);override;
  public
    NPeriode:byte;//f2D8
    FichierCdn : TFichierCdn;// f2DC:dword;//f2DC
    MyHandle:HWND;//f2E0
    TypeGrille:byte;//f2E4
	constructor Create(AOwner: TComponent;b:pointer; FeuilleClasse:TComponent; FichierCdn : TFichierCdn; Periode:byte);//004CA034
	procedure sub_004CA398(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);//004CA398
	procedure _DrawCell(Sender: TObject; ACol, ARow: Integer;
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
  MyHandle := TWinControl(FeuilleClasse).Handle;
  Visible := False;
  Align := alClient;  //5
  //DefaultDrawing := False;
  //f28C := Self;
  //OnDrawCell :=  _DrawCell;
  //f2AC := Self;
  OnSelectCell := sub_004CA398;
  //f2BC := Self;
  OnTopLeftChanged := sub_004CA3B8;
  Options := [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goTabs];//$080F;
  Self.FichierCdn := FichierCdn;   
  NPeriode := Periode;

end;

//004CA104
procedure TGrilleGeneriqueCarnetDeNotes._DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);// x:pointer; y:pointer; z:pointer; a:pointer);
var
  I:integer;
  Text: String;
  RowWith : integer;
begin//0
 //004CA104
    Canvas.Font.Style := [] ; //0;//gvar_004CA394;
    case TypeGrille of
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
        end//4
		else
        if (GetcolorationGrille) then
        begin//004CA298*)
          if (ARow mod 2  = 0) then 
          begin//004CA2AA
            Canvas.Brush.Color := GetColorlignesPaires;
          end//5
          else
          begin//004CA2C1
            Canvas.Brush.Color := GetColorlignesImpaires;
          end;//5
        end//4
        else
        begin//004CA2D8
         // Canvas.Brush.Color := $FFFFFF;
        end;//4
        Canvas.FillRect(Rect);
	  
        if(gdFixed in State) then  //state = 4
        if (GetcolorationGrille) then
        begin//004CA2FF
          Canvas.Brush.Color := $80000004;
          Canvas.FillRect(Rect);
        end;//4
        Canvas.Font.Color := 0;
        if(gdSelected in State ) then // state =1 
        if (GetcolorationGrille) then
        begin//004CA336
          if (GetcolorationGrille) then//004CA33F
            Canvas.Brush.Color := GetcouleurSelection
          else//5
            Canvas.Brush.Color := $C0C0C0;
        end;//4
      //end;//3
    //end;//2

end;



//004CA398
procedure TGrilleGeneriqueCarnetDeNotes.sub_004CA398(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin

  SendMessageA(MyHandle, 1025, ARow, 255);
end;

//004CA3B8
procedure TGrilleGeneriqueCarnetDeNotes.sub_004CA3B8(Sender: TObject);
begin
  SendMessageA(MyHandle, 1026,  TopRow, 0);
end;

procedure TGrilleGeneriqueCarnetDeNotes.DrawCell(ACol, ARow: Longint; ARect: TRect; AState: TGridDrawState);

begin
    _DrawCell(Self, ACol, ARow ,ARect , AState);
end;
end.