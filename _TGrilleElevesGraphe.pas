{***********************************************************
* Version Original V0.03 build 1                           *
* Decompiled by HOUIDEF AEK v 12:19 mercredi, août 29, 2018*
* The disassembly process : 100%                           *
************************************************************}
unit _TGrilleElevesGraphe;

interface

uses
Forms, Windows,  SysUtils, StdCtrls, Controls, Classes, Messages, Grids, UFichierCdn,  _TGrilleGenerique;

type
  TGrilleElevesGrapheCarnetDeNotes = class(TGrilleGeneriqueCarnetDeNotes)
  //protected
    //procedure DrawCell(ACol, ARow: Longint; ARect: TRect; AState: TGridDrawState);override; //supprimer le
  public
    FRow:dword;//f2E8
    FTitleCaption:String;//f2EC
	procedure EvOnDrawCell(Sender:TObject; ACol:Longint; ARow:Longint; ARect:TRect; AState:TGridDrawState);
    procedure EvEvenemtsChart(var Message:TMsg); message $403;//
	procedure EvOnSelectCell(Sender: TObject; ACol, ARow: Integer; var CanSelect: Boolean);
    procedure EvSetTitle(var Message:TMsg); message $404;//004F5CB0
	function GetTitleCaption:string; //004F6080
    constructor Create(AOwner:TComponent; FeuilleClasse:TComponent; Periode:byte; FichierCdn:TFichierCdn);//004F5B4C
  end;


implementation
   uses UBiblio;
   
//004F5B4C
constructor TGrilleElevesGrapheCarnetDeNotes.Create(AOwner:TComponent; FeuilleClasse:TComponent; Periode:byte; FichierCdn:TFichierCdn);
begin//0
    FGrilleType := 0;
    inherited Create(AOwner,0,FeuilleClasse,FichierCdn,Periode);
    ScrollBars := ssNone;
    Visible := False;
    Align := alLeft;
    FixedCols := 1;
    FixedRows := 1;
    ColCount := 2;
    DefaultRowHeight :=18;
    ColWidths[0] := 18;
    //DefaultDrawing := False;
	OnDrawCell :=EvOnDrawCell;
	OnSelectCell := EvOnSelectCell;
    FRow := 1;
   SendMessageA(Handle, $404, 0, 0);
    if (FichierCdn.NbreEleves <> 0) then
    begin//2//004F5C3A
      FTitleCaption := Cells[1, 1];
      SendMessageA(FeuilleClasseHandle, $413, 1, 1);
    end;//2
end;

//004F5CB0
procedure TGrilleElevesGrapheCarnetDeNotes.EvSetTitle(var Message:TMsg);
var 
 IRowCount :integer;
 lvar_8,Buf : string;
 I : integer;
begin//0
    IRowCount := FichierCdn.NbreEleves;
    if (IRowCount <> 0) then
    begin//004F5CFE
      RowCount := IRowCount + 1;
      Cols[1].Clear;
      Cells[1, 0] := 'Noms et prénoms';
      Cols[0].Clear;
      if (IRowCount > 0) then
      begin//004F5D51
        for I := 1 to IRowCount do
        begin//004F5D56
          Cells[0, byte(I)] := IntToStr(byte(I));
          lvar_8:=FichierCdn.GetEleveName(I);
          Buf:=FichierCdn.GetDateNais(I);
          if ((Trim(Buf) <> '') and GetAfficherDatesDeNaissance) then//004F5DD6
            begin//6
              //004F5DDF
              lvar_8 := lvar_8 + ' (' + FichierCdn.GetDateNais(I) + ')';
            end;//6
          if (FichierCdn.IsRedoublant(I) and GetAfficherR) then //004F5E34
              lvar_8 := lvar_8 + ' (R)';
          Cells[1, I] :=  lvar_8;
        end;//4
      end;//3
    end;//2
    Visible := (IRowCount > 0);
end;

//004F5FC4
procedure TGrilleElevesGrapheCarnetDeNotes.EvEvenemtsChart(var Message:TMsg);
begin//0
  FPeriode := Message.Message;
  SendMessageA(FeuilleClasseHandle, $413, FPeriode, FRow);
end;//0


//004F6080
function TGrilleElevesGrapheCarnetDeNotes.GetTitleCaption:string;
begin//0
  //004F6080
  result := FTitleCaption;
end;

//004F5FF8
procedure TGrilleelevesgrapheCarnetDeNotes.EvOnSelectCell(Sender:TObject; ACol:integer; ARow:Integer; var CanSelect:Boolean);
begin//0
    FRow := ARow;
    FTitleCaption := Cells[1, ARow];
    SendMessageA(FeuilleClasseHandle, $413, FPeriode, ARow);
    CanSelect := True;
end;//0



//004F5EF4
procedure TGrilleelevesgrapheCarnetDeNotes.EvOnDrawCell(Sender:TObject; ACol:Longint; ARow:Longint; ARect:TRect; AState:TGridDrawState);
begin//0
  //004F5EF4
    EvOnDrawCell_(Sender, ACol, ARow, ARect, AState);
    Canvas.FillRect(ARect);
    Canvas.TextOut(ARect.Left + 2, ARect.Top + 2, Cells[ACol, ARow]);
    SendMessageA(FeuilleClasseHandle, $412, Width, 0);
end;//0
{
procedure TGrilleElevesGrapheCarnetDeNotes.DrawCell(ACol, ARow: Longint; ARect: TRect; AState: TGridDrawState);
begin
    inherited DrawCell(ACol, ARow, ARect, AState);
	//Canvas.TextOut(ARect.Left + 2, ARect.Top + 2, Cells[ACol, ARow]);	
	EvOnDrawCell(self,ACol, ARow, ARect, AState);
end;}

end.