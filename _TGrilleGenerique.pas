{***********************************************************
* Version Original V0.03 build 1                           *
* Decompiled by HOUIDEF AEK v 12:20 mercredi, août 29, 2018*
* The disassembly process : 100%                           *
************************************************************}
unit _TGrilleGenerique;

interface

uses
Forms, Windows,  SysUtils, Classes, Grids, StdCtrls, Controls, Dialogs ,Graphics,UFichierCdn,URegistry,UBiblio;

type
  TGrilleGeneriqueCarnetDeNotes = class(TStringGrid)
  //protected
   // procedure DrawCell(ACol, ARow: Longint; ARect: TRect; AState: TGridDrawState);override;
  public
    FPeriode:byte;//f2D8
    FichierCdn : TFichierCdn;// f2DC
    FeuilleClasseHandle:HWND;//f2E0
    FGrilleType:byte;//f2E4
	constructor Create(AOwner: TComponent;b:pointer; FeuilleClasse:TComponent; FichierCdn : TFichierCdn; Periode:byte);//004CA034
	procedure EvOnSelectCell_(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);//004CA398
	procedure EvOnDrawCell_(Sender: TObject; ACol, ARow: Integer;
     Rect: TRect; State: TGridDrawState);
	procedure EvOnTopLeftChanged(Sender: TObject);
  end;

implementation

//004CA034

constructor TGrilleGeneriqueCarnetDeNotes.Create(AOwner: TComponent;b:pointer; FeuilleClasse:TComponent; FichierCdn : TFichierCdn; Periode:byte);
begin
  //004CA034
  inherited Create(AOwner);
  ScrollBars := ssBoth;
  Parent := TWinControl(AOwner);
  FeuilleClasseHandle := TWinControl(FeuilleClasse).Handle;
  Visible := False;
  Align := alClient;  //5
  //DefaultDrawing := False;
  OnDrawCell :=  EvOnDrawCell_;
  OnSelectCell := EvOnSelectCell_;
  OnTopLeftChanged := EvOnTopLeftChanged;
  Options := [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goTabs];//$080F;
  Self.FichierCdn := FichierCdn;   
  FPeriode := Periode;
end;

//004CA104
procedure TGrilleGeneriqueCarnetDeNotes.EvOnDrawCell_(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
  I:integer;
  Text: String;
  RowWith : integer;
begin//0
    Canvas.Font.Style := [] ; //0;//gvar_004CA394;
    case FGrilleType of
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
        if (GetColorationGrille) then
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
          Canvas.Brush.Color := $FFFFFF;
        end;//4
        Canvas.FillRect(Rect);
	  
        if(gdFixed in State) then  //state = 4
        if (GetColorationGrille) then
        begin//004CA2FF
          Canvas.Brush.Color := $80000004;
          Canvas.FillRect(Rect);
        end;//4
        Canvas.Font.Color := 0;
        if(gdSelected in State ) then // state =1 
        if (GetColorationGrille) then
        begin//004CA336
          if (GetColorationGrille) then
          begin//004CA33F
            Canvas.Brush.Color := GetcouleurSelection;
            Exit;
          end;//5
          Canvas.Brush.Color := $C0C0C0;
        end;//4
      //end;//3
    //end;//2

end;

//004CA398
procedure TGrilleGeneriqueCarnetDeNotes.EvOnSelectCell_(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin

  SendMessageA(FeuilleClasseHandle, $401, ARow, 255);
end;

//004CA3B8
procedure TGrilleGeneriqueCarnetDeNotes.EvOnTopLeftChanged(Sender: TObject);
begin
  SendMessageA(FeuilleClasseHandle, $402,  TopRow, 0);
end;

{procedure TGrilleGeneriqueCarnetDeNotes.DrawCell(ACol, ARow: Longint; ARect: TRect; AState: TGridDrawState);
begin
    EvOnDrawCell(Self, ACol, ARow ,ARect , AState);
end;}
end.