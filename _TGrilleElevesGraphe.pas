{***********************************************************
* Version Original V0.03 build 1                           *
* Decompiled by Houidef AEK v 12:19 mercredi, août 29, 2018*
* The disassembly process : 100%                           *
************************************************************}
unit _TGrilleElevesGraphe;

interface

uses
Forms, Windows,  SysUtils, StdCtrls, Controls, Classes, Messages, Grids, UFichierCdn,  _TGrilleGenerique;

type
  TGrilleElevesGrapheCarnetDeNotes = class(TGrilleGeneriqueCarnetDeNotes)
  protected
    procedure DrawCell(ACol, ARow: Longint; ARect: TRect; AState: TGridDrawState);override; //supprimer le
  public
    FRow_x:dword;//f2E8
    FEleveName:String;//f2EC
	procedure DrawCellElevesGraphe(Sender:TObject; ACol:Longint; ARow:Longint; ARect:TRect; AState:TGridDrawState);
    procedure RefrechParent(var Message:TMsg); message 1027;//
	procedure SelectCellEvent(Sender: TObject; ACol, ARow: Integer; var CanSelect: Boolean);
    procedure Refrech01(var Message:TMsg); message 1028;//004F5CB0
	function GetEleveName():string; //004F6080
    constructor Create(AOwner:TComponent; FeuilleClasse:TComponent; Periode:byte; FichierCdn:TFichierCdn);//004F5B4C
  end;


implementation
  uses Unit111;
//004F5B4C
constructor TGrilleElevesGrapheCarnetDeNotes.Create(AOwner:TComponent; FeuilleClasse:TComponent; Periode:byte; FichierCdn:TFichierCdn);
begin//0
  //004F5B4C
    TypeGrille := 0;
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
    //f28C := Self;
	//OnDrawCell :=DrawCellElevesGraphe;
	OnSelectCell := SelectCellEvent;
    //f2AC := Self;
    FRow_x := 1;
   SendMessageA(Handle, 1028, 0, 0);
    if (FichierCdn.EleveCount <> 0) then
    begin//2//004F5C3A
      FEleveName := Cells[1, 1];
      SendMessageA(MyHandle, 1043, 1, 1);
    end;//2
end;

//004F5CB0
procedure TGrilleElevesGrapheCarnetDeNotes.Refrech01(var Message:TMsg);
var 
 Buf,buf0:string;
 IRowCount :integer;
 lvar_8 : string;
 I : integer;
begin//0
  //004F5CB0
    //004F5CE6
    IRowCount := FichierCdn.EleveCount;
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
          FichierCdn.GetEleveName(I, Buf0);
          FichierCdn.GetElevDateNais(I, Buf);
          if (Trim(Buf) <> '')and  (GetafficherDatesDeNaissance) then
          begin//5
            //004F5DD6
              FichierCdn.GetElevDateNais(I, Buf);
              lvar_8 := Buf0 + ' (' + Buf + ')';
          end;//5
          if (FichierCdn.IsRedoublant(I)) and  (IsRedoublantAfficher) then
          begin//5
            //004F5E34
              lvar_8 := lvar_8 + ' (R)';
          end;//5
          Cells[1, I] :=  lvar_8;
        end;//4
      end;//3
    end;//2
    Visible := (IRowCount > 0);
end;

//004F5FC4
procedure TGrilleElevesGrapheCarnetDeNotes.RefrechParent(var Message:TMsg);
begin//0
  //004F5FC4
  NPeriode := Message.Message;//ECX
  SendMessageA(MyHandle, 1043, NPeriode, FRow_x);
end;//0


//004F6080
function TGrilleElevesGrapheCarnetDeNotes.GetEleveName() : string;
begin//0
  //004F6080
  result := FEleveName;
end;

procedure TgrilleelevesgrapheCarnetDeNotes.SelectCellEvent(Sender:TObject; ACol:integer; ARow:Integer; var CanSelect:Boolean);
var
  lvar_4:AnsiString;
begin//0
  //004F5FF8
    FRow_x := ARow;
    FEleveName := Cells[1, ARow];
    SendMessageA(MyHandle, 1043, NPeriode, ARow);
    CanSelect := True;
end;//0



//004F5EF4
procedure TGrilleelevesgrapheCarnetDeNotes.DrawCellElevesGraphe(Sender:TObject; ACol:Longint; ARow:Longint; ARect:TRect; AState:TGridDrawState);
begin//0
  //004F5EF4
    //_DrawCell(Sender, ACol, ARow, ARect, AState);
    Canvas.FillRect(ARect);
    Canvas.TextOut(ARect.Left + 2, ARect.Top + 2, Cells[ACol, ARow]);
    SendMessageA(MyHandle, $412{1042}, Width, 0);
end;//0

procedure TGrilleElevesGrapheCarnetDeNotes.DrawCell(ACol, ARow: Longint; ARect: TRect; AState: TGridDrawState);
begin
    inherited DrawCell(ACol, ARow, ARect, AState);
	//Canvas.TextOut(ARect.Left + 2, ARect.Top + 2, Cells[ACol, ARow]);	
	DrawCellElevesGraphe(self,ACol, ARow, ARect, AState);
end;

end.