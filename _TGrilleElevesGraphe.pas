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
  protected
    procedure DrawCell(ACol, ARow: Longint; ARect: TRect; AState: TGridDrawState);override; //supprimer le
  public
    f2E8:dword;//f2E8
    f2EC:String;//f2EC
	procedure sub_004F5EF4(Sender:TObject; ACol:Longint; ARow:Longint; ARect:TRect; AState:TGridDrawState);
    procedure sub_004F5FC4(var Message:TMsg); message $403;//
	procedure sub_004F5FF8(Sender: TObject; ACol, ARow: Integer; var CanSelect: Boolean);
    procedure sub_004F5CB0(var Message:TMsg); message $404;//004F5CB0
	procedure sub_004F6080(var a:string); //004F6080
	
    constructor Create(AOwner:TComponent; FeuilleClasse:TComponent; Periode:byte; FichierCdn:TFichierCdn);//004F5B4C
  end;


implementation

//004F5B4C
constructor TGrilleElevesGrapheCarnetDeNotes.Create(AOwner:TComponent; FeuilleClasse:TComponent; Periode:byte; FichierCdn:TFichierCdn);
begin//0
  //004F5B4C
  try
    //004F5B71
    f2E4 := 0;
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
	//OnDrawCell :=sub_004F5EF4;
	OnSelectCell := sub_004F5FF8;
    //f2AC := Self;
    f2E8 := 1;

   SendMessageA(Handle, 1028, 0, 0);
    if (FichierCdn.EleveCount <> 0) then
    begin//2//004F5C3A
      f2EC := Cells[1, 1];
      SendMessageA(f2E0, 1043, 1, 1);
    end;//2
  finally//004F5C7F

  end;//1


end;

//004F5CB0
procedure TGrilleElevesGrapheCarnetDeNotes.sub_004F5CB0(var Message:TMsg);
var 
 Buf,buf0:string;
 IRowCount :integer;
 lvar_8 : string;
 I : integer;
begin//0
  //004F5CB0
  try
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
          FichierCdn.sub_004BEA64(I, Buf0);
          FichierCdn.GetElevDateNais(I, Buf);
          if (Trim(Buf) <> '') then
          begin//5
            //004F5DD6
            if ({GetafficherDatesDeNaissance} true) then
            begin//6
              //004F5DDF
              FichierCdn.GetElevDateNais(I, Buf);
              lvar_8 := Buf0 + ' (' + Buf + ')';
            end;//6
          end;//5
          if (FichierCdn.sub_004C8E50(I)) then
          begin//5
            //004F5E34
            if ({GetafficherR} true) then
            begin//6
              //004F5E3D
              lvar_8 := lvar_8 + ' (R)';
            end;//6
          end;//5
          Cells[1, I] :=  lvar_8;
        end;//4
      end;//3
    end;//2
    Visible := (IRowCount > 0);
  finally//004F5E83
  end;//1
end;

//004F5FC4
procedure TGrilleElevesGrapheCarnetDeNotes.sub_004F5FC4(var Message:TMsg);
begin//0
  //004F5FC4
  f2D8 := Message.Message;//ECX
  SendMessageA(f2E0, $413{1043}, f2D8, f2E8);
end;//0


//004F6080
procedure TGrilleElevesGrapheCarnetDeNotes.sub_004F6080(var a:string);
begin//0
  //004F6080
  a := f2EC;
end;

procedure TgrilleelevesgrapheCarnetDeNotes.sub_004F5FF8(Sender:TObject; ACol:integer; ARow:Integer; var CanSelect:Boolean);
var
  lvar_4:AnsiString;
begin//0
  //004F5FF8

    //004F6012
    f2E8 := ARow;
    f2EC := Cells[1, ARow];
    SendMessageA(f2E0, $413{1043}, f2D8, ARow);
    CanSelect := True;
end;//0



//004F5EF4
procedure TGrilleelevesgrapheCarnetDeNotes.sub_004F5EF4(Sender:TObject; ACol:Longint; ARow:Longint; ARect:TRect; AState:TGridDrawState);
begin//0
  //004F5EF4
    //sub_004CA104(Sender, ACol, ARow, ARect, AState);
    Canvas.FillRect(ARect);
    Canvas.TextOut(ARect.Left + 2, ARect.Top + 2, Cells[ACol, ARow]);
    SendMessageA(f2E0, $412{1042}, Width, 0);
end;//0

procedure TGrilleElevesGrapheCarnetDeNotes.DrawCell(ACol, ARow: Longint; ARect: TRect; AState: TGridDrawState);
begin
    inherited DrawCell(ACol, ARow, ARect, AState);
	//Canvas.TextOut(ARect.Left + 2, ARect.Top + 2, Cells[ACol, ARow]);	
	sub_004F5EF4(self,ACol, ARow, ARect, AState);
end;

end.