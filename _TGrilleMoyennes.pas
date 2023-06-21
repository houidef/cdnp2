{***********************************************************
* Version Original V0.03 build 1                           *
* Decompiled by HOUIDEF AEK v 12:20 mercredi, ao�t 29, 2018*
* The disassembly process : 100%                           *
************************************************************}
unit _TGrilleMoyennes;

interface

uses
Forms, Windows,  SysUtils, Classes, Messages, Grids, Controls, dialogs,
 _TGrilleGenerique , UFichierCdn, UBiblio,_FormHint,Clipbrd,_FormEdit;

type
  TGrilleMoyennesCarnetDeNotes = class(TGrilleGeneriqueCarnetDeNotes)
  //protected
    //procedure DrawCell(ACol, ARow: Longint; ARect: TRect; AState: TGridDrawState);override; //supprimer le
  public
    f2E8:dword;//f2E8
    FIdNumEleve:dword;//f2EC
    f2F0:HMENU;//f2F0
    f2F4:array of TStringList;//f2F4
    destructor Destroy; virtual;//004CF9F8
    procedure WMCommand(var Message:TWMCommand); message WM_COMMAND;//004CFC74
    procedure EvOnCalcule(var Msg:TMsg);  message $408;//004D0A5C
    constructor Create(AOwner:TComponent; FeuilleClasse:TComponent; Periode:byte; FichierCdn:TFichierCdn);//004CF0A8
    procedure TurboMenuArrondirMoyennes;//004CF21C
    procedure TurboMenuPointPlusMoins;//004CF4CC
    procedure TurboMenuMoyennesCalculees;//004CF830
    procedure EvOnMouseDown(Sender:TObject; Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer);//004CFA2C
    procedure DrawMyColumn;//004D072C
    function RemplireMyColumn(Periode:dword; ARow:dword):dword;//004D08DC
	procedure EvOnDrawCell(Sender:TObject;ACol:Longint; ARow:Longint; ARect:TRect; AState:TGridDrawState);
  end;


implementation
	uses constantes;
//004CF0A8
constructor TGrilleMoyennesCarnetDeNotes.Create(AOwner:TComponent; FeuilleClasse:TComponent; Periode:byte; FichierCdn:TFichierCdn);
var 
  I:integer;
begin
 //004CF0A8
	inherited Create(AOwner,0,FeuilleClasse,FichierCdn,Periode);
	FGrilleType:=2;
	SetLength(f2f4,FichierCdn.NbrePeriodes*4);
	for I := 0 to FichierCdn.NbrePeriodes*4 -1 do
	begin//004CF134
		f2F4[I] := TStringList.Create;
	end;//2
	FixedRows := 1;
	FixedCols := 0;
	ColCount :=4;
	DefaultRowHeight := 18;
	//DefaultDrawing := False;
	OnDrawCell :=  EvOnDrawCell;
	OnMouseDown := EvOnMouseDown;
	Options := Options + [goRowSelect];
	DrawMyColumn;
	for I := 1 to FichierCdn.NbreEleves do //004CF1E0  Error here!
	  RemplireMyColumn(1, I);
end;

//004CF21C
procedure TGrilleMoyennesCarnetDeNotes.TurboMenuArrondirMoyennes;
var 
  x:integer;
begin//0
  //004CF21C
    DestroyMenu(f2F0);
    f2F0 := CreatePopupMenu;
	x:=GetArrondirMoyennes;
    AppendMenuA(f2F0, 0, 0, 'Turbo Menu "Arrondir les moyennes"');
    AppendMenuA(f2F0, 2048, 0, '-');
    if (x = 0) then
    begin//004CF284
      AppendMenuA(f2F0, 8, 1, 'Ne pas arrondir les moyennes');
    end//2
    else
    begin//004CF29B
      AppendMenuA(f2F0, 0, 1, 'Ne pas arrondir les moyennes');
    end;//2
    if (x = 1) then
    begin//004CF2B5
      AppendMenuA(f2F0, 8, 2, 'Arrondir les moyennes au dixi�me de point');
    end//2
    else
    begin//004CF2CC
      AppendMenuA(f2F0, 0, 2, 'Arrondir les moyennes au dixi�me de point');
    end;//2
    if (x = 2) then
    begin//004CF2E6
      AppendMenuA(f2F0, 8, 3, 'Arrondir les moyennes au quart de point');
    end//2
    else
    begin//004CF2FD
      AppendMenuA(f2F0, 0, 3, 'Arrondir les moyennes au quart de point');
    end;//2
    if (x = 3) then
    begin//004CF317
      AppendMenuA(f2F0, 8, 4, 'Arrondir les moyennes au demi-point');
    end//2
    else
    begin//004CF32E
      AppendMenuA(f2F0, 0, 4, 'Arrondir les moyennes au demi-point');
    end;//2
    AppendMenuA(f2F0, 2048, 0, '-');
    AppendMenuA(f2F0,0 , 18, PChar('Copier la colonne "' + Cells[f2E8, 0] + '" dans le Presse-Papiers'));
end;//0


//004CF4CC
procedure TGrilleMoyennesCarnetDeNotes.TurboMenuPointPlusMoins;
begin//0
  //004CF4CC
    //004CF4E9
    DestroyMenu(f2F0);
    f2F0 := CreatePopupMenu;
     AppendMenuA(f2F0, 0, 0, 'Turbo Menu "Point(s) en plus ou en moins"');
     AppendMenuA(f2F0, $800{2048}, 0, '-');
     AppendMenuA(f2F0, 0, 5, '- 2');
     AppendMenuA(f2F0, 0, 6, '- 1,5');
     AppendMenuA(f2F0, 0, 7, '- 1');
     AppendMenuA(f2F0, 0, 8, '- 0,5');
     AppendMenuA(f2F0, 0, 9, 'Aucun point en plus ou en moins');
     AppendMenuA(f2F0, 0, 10, '+ 0,5');
     AppendMenuA(f2F0, 0, 11, '+ 1');
     AppendMenuA(f2F0, 0, 12, '+ 1,5');
     AppendMenuA(f2F0, 0, 13, '+ 2');
     AppendMenuA(f2F0, 0, 14, 'Autre ...');
     AppendMenuA(f2F0, $800{2048}, 0, '-');
     AppendMenuA(f2F0, 0, 18, PChar('Copier la colonne "' + Cells[f2E8, 0] + '" dans le Presse-Papiers'));
    if (Clipboard.HasFormat(1)) then
       AppendMenuA(f2F0, 0, 19, PChar('Coller la colonne "' + Cells[f2E8, 0] + '" depuis le Presse-Papiers'))
	else
     AppendMenuA(f2F0, 1, 19, PChar('Coller la colonne "' + Cells[f2E8, 0] + '" depuis le Presse-Papiers'));
    //004CF706
end;//0

//004CF830
procedure TGrilleMoyennesCarnetDeNotes.TurboMenuMoyennesCalculees;
begin//0
  //004CF830
    //004CF849
    DestroyMenu(f2F0);
    f2F0 := CreatePopupMenu;
     AppendMenuA(f2F0, 0, 0, 'Turbo Menu "Moyennes calcul�es sur ..."');
     AppendMenuA(f2F0, $800{2048}, 0, '-');
     AppendMenuA(f2F0, 0, 15, 'Moyenne calcul�e sur 20');
     AppendMenuA(f2F0, 0, 16, 'Moyenne calcul�e sur 10');
     AppendMenuA(f2F0, 0, 17, 'Autre ...');
     AppendMenuA(f2F0, $800{2048}, 0, '-');
     AppendMenuA(f2F0, 0, 18, PChar('Copier la colonne "' + Cells[f2E8, 0] + '" dans le Presse-Papiers'));
    //004CF933
end;//0

//004CF9F8
destructor TGrilleMoyennesCarnetDeNotes.Destroy;
begin//0
  //004CF9F8
  DestroyMenu(f2F0);
  inherited;
end;//0


//004CFA2C
procedure TGrilleMoyennesCarnetDeNotes.EvOnMouseDown(Sender:TObject; Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer);
var
  ACol,ARow,CS,CXX:integer;
  lvar_1C,I :integer;
begin//0
  //004CFA2C
  if (FormHint.Visible) then
  begin//004CFA4D
    FormHint.Hide;
  end;
  if (Button <> mbRight{1}) then Exit;
  MouseToCell(X, Y, ACol, ARow);
  f2E8 := ACol;
  FIdNumEleve := ARow;
  CS := ACol;
  if (ACol <> 2) then//004CFA9A
    CS := 1
  else//004CFAA3
    CS := ARow;
  //CXX := ACol;
  if (ACol <> 2) then//004CFAB5
    lvar_1C := RowCount
  else//004CFAC0
    lvar_1C := ARow;
  //004CFAC6
  if (ARow <> 0) Or (ACol <> 2) then
  begin//004CFAD2
    //Selection := CS;
  end;//1
  SendMessageA(FeuilleClasseHandle, $40F, ARow, 255);
  I := byte(FichierCdn.NbreEleves);
  if (ACol = 1) then
  begin//004CFB0C
    if (ARow <= 255) then //lvar14 = ACol
    begin//004CFB31
	  if({ARow in I} ARow <I) then 
      begin//004CFB37
        TurboMenuArrondirMoyennes;
        TrackPopupMenu(f2F0, 10, ClientToScreen(Point(X,Y)).x, ClientToScreen(Point(X,Y)).y, 0, Handle, nil);
      end;//3
    end;//2
  end;
  if(ACol = 2) then
  begin//004CFB80
    if (ARow <= 255) then
    begin//004CFBA5
      if ({ARow in I} ARow <I) then
      begin//004CFBAB
        TurboMenuPointPlusMoins;
		TrackPopupMenu(f2F0, 10, ClientToScreen(Point(X,Y)).x, ClientToScreen(Point(X,Y)).y, 0, Handle, nil);
      end;//3
    end;//2
  end;//1
  if (X <> 3) then
  begin//004CFBF4
    if (ACol <> 0) then Exit;
  end;//1
  //004CFC1F
    if ({ARow in I} ARow <I) then
    begin//004CFC25
      TurboMenuMoyennesCalculees;
      TrackPopupMenu(f2F0, 10,ClientToScreen(Point(X,Y)).X, ClientToScreen(Point(X,Y)).Y, 0, Handle, nil);
    end;//2
end;//0

//004CFC74
procedure TGrilleMoyennesCarnetDeNotes.WMCommand(var Message:TWMCommand);
var
 I,C:integer;
 lvar_4 : string;
 lvar_C : TStringList;
begin//0
    if (Message.ItemID < 5) then
    begin//2
      //004CFCC8
      SetarrondirMoyennes(Message.ItemID - 1);
    end//2
    else
    begin//2
      //004CFCEB
      if (Message.ItemID = 5) then //004CFCF1
        FichierCdn.SetPointsAdditif_X1(FPeriode, FIdNumEleve,'-2')
      else
      begin//3
        //004CFD1F
        if (Message.ItemID = 6) then//004CFD25
          FichierCdn.SetPointsAdditif_X1(FPeriode, FIdNumEleve,'-1,5')
        else
        begin//4
          //004CFD53
          if (Message.ItemID = 7) then//004CFD59
            FichierCdn.SetPointsAdditif_X1(FPeriode, FIdNumEleve,'-1')
          else
          begin//5
            //004CFD87
            if (Message.ItemID = 8) then//004CFD8D
              FichierCdn.SetPointsAdditif_X1(FPeriode, FIdNumEleve,'-0,5')
            else
            begin//6
              //004CFDBB
              if (Message.ItemID = 9) then//004CFDC1
                FichierCdn.SetPointsAdditif_X1(FPeriode, FIdNumEleve,'')
              else
              begin//7
                //004CFDEF
                if (Message.ItemID = 10) then//004CFDF5
                  FichierCdn.SetPointsAdditif_X1(FPeriode, FIdNumEleve,'0,5')
                else
                begin//8
                  //004CFE23
                  if (Message.ItemID = 11) then //004CFE29
                    FichierCdn.SetPointsAdditif_X1(FPeriode, FIdNumEleve,'1')
                  else
                  begin//9
                    //004CFE57
                    if (Message.ItemID = 12) then//004CFE5D
                      FichierCdn.SetPointsAdditif_X1(FPeriode, FIdNumEleve,'1,5')
                    else
                    begin//10
                      //004CFE8B
                      if (Message.ItemID = 13) then//004CFE91
                        FichierCdn.SetPointsAdditif_X1(FPeriode, FIdNumEleve,'2')
                      else
                      begin//11
                        //004CFEBF
                        if (Message.ItemID = 14) then
                        begin//12
                          //004CFEC9
                          FormEdit{gvar_00617CE0} := TFormEdit.Create(Self, 'Points en plus ou en moins', '',1);
                          FormEdit.ShowModal;
                          if (FormEdit.ModalResult = 1) then
                          begin//13
                            //004CFF0B
                            FichierCdn.SetPointsAdditif_X1(FPeriode, FIdNumEleve,FormEdit.Edit1.Text);
                            SendMessageA(FormEdit.Handle, $408, FPeriode, FIdNumEleve);
                          end;//13
                          FormEdit.Destroy;
                        end//12
                        else
                        begin//12
                          //004CFF9E
                          if (Message.ItemID = 15) then
                          begin//13
                            //004CFFA4
                            SetmoyennesSur($14{20});
                          end//13
                          else
                          begin//13
                            //004CFFB3
                            if (Message.ItemID = 16) then //004CFFB9
                              SetmoyennesSur(10)
                            else
                            begin//14
                              //004CFFC8
                              if (Message.ItemID = 17) then
                              begin//15
                                //004CFFD2
                                FormEdit{gvar_00617CE0} := TFormEdit.Create(Self, 'Moyennes exprim�es sur', '',1);
                                FormEdit.ShowModal;
                                if (FormEdit.ModalResult = 1) then
                                begin//16
                                  //004D0010
                                  SetmoyennesSur(StrToInt(FormEdit.Edit1.Text));
                                  FichierCdn.SetPeriodeTraiteList_H01(FPeriode, true);
                                  SendMessageA(Handle, $408, FPeriode, 0);
                                end;//16
                                FormEdit.Destroy;
                              end//15
                              else
                              begin//15
                                //004D007B
                                if (Message.ItemID = 18) then
                                begin//16
                                  //004D0085
                                  Clipboard.Clear;
                                  lvar_4 := '';
                                    for I := 0 to FichierCdn.NbreEleves - 1 do //004D00AB
                                    begin//18
                                      //004D00B6
                                      lvar_4 := lvar_4 + Cells[f2E8, I] + #13 + #10;
                                    end;//18
                                  Clipboard.SetTextBuf(PChar(lvar_4));
                                end//16
                                else
                                begin//16
                                  //004D010E
                                  if (Message.ItemID = 19) then
                                  begin//17
                                    //004D0118
                                    if (Clipboard.HasFormat(1) ) then
                                    begin//18
                                      //004D012E
                                      lvar_C := TStringList.Create;
                                      lvar_C.Text := Clipboard.AsText;
                                      if (lvar_C.Count > FichierCdn.NbreEleves) then //004D0179
                                        C := FichierCdn.NbreEleves
                                      else //004D018B
                                        C := lvar_C.Count;

                                        for I := 1 to C do//004D019B
                                        begin//20
                                          //004D01A5
                                          Cells[f2E8, I] := lvar_C[I - 1];
                                          FichierCdn.SetPointsAdditif_X1(FPeriode, I,lvar_C[I - 1]);
                                        end;//20
                                      lvar_C.Destroy;
                                      SendMessageA(Handle, $408, FPeriode, 0);
                                    end;//18
                                  end;//17
                                end;//16
                              end;//15
                            end;//14
                          end;//13
                        end;//12
                      end;//11
                    end;//10
                  end;//9
                end;//8
              end;//7
            end;//6
          end;//5
        end;//4
      end;//3
    end;//2
    FichierCdn.SetPeriodeTraiteList_H01(FPeriode, true);
    case Message.ItemID of
      1..4:
      begin//3
        //004D028F
        SendMessageA(Handle, $408, FPeriode, 0);
      end;//3
      5..14:
      begin//3
        //004D02AE
        SendMessageA(Handle, $408, FPeriode, FIdNumEleve); 
      end;//3
      15..16:
      begin//3
        //004D02D2
        FichierCdn.Initialisation;
        SendMessageA(Handle, $408, FPeriode, 0);
      end;//3
    end;//2
    //004D0307
end;//0

//004D072C
procedure TGrilleMoyennesCarnetDeNotes.DrawMyColumn;
var
  I:integer;
begin//0
  //004D072C
    ColCount := 4;
    RowCount := FichierCdn.NbreEleves + IdNbrEleves__;
    for I := 0 to 3 do
    begin//004D077E
      if (I <> 2) then 
		Cols[I].Clear;
    end;//2
    Cells[0, 0] := 'Moyenne brute sur ' + IntToStr(GetMoyennesSur);
    Cells[1, 0] := 'Moyenne arrondie sur ' + IntToStr(GetMoyennesSur);
    Cells[2, 0] := 'Point(s) en + ou en -';
    Cells[3, 0] := 'Moyenne bulletin sur ' + IntToStr(GetMoyennesSur);
end;

//004D08DC
function TGrilleMoyennesCarnetDeNotes.RemplireMyColumn(Periode:dword; ARow:dword):dword;
begin//0
    Visible := (FichierCdn.NbrSerieNotes(FPeriode) <> 0) ;
    Cells[0, ARow] := FichierCdn.CalcMoyBrute(Periode, ARow);
    Cells[1, ARow] := FichierCdn.CalcMoyBrute_V03(Periode, ARow, GetArrondirMoyennes);
    Cells[2, ARow] := FichierCdn.GetPointsPlusMoins__V00(Periode, ARow);
    Cells[3, ARow] := FichierCdn.GetMoyennePeriode(Periode, ARow, GetArrondirMoyennes);
	
end;//0



//004D0A5C
procedure TGrilleMoyennesCarnetDeNotes.EvOnCalcule(var Msg:TMsg);
var
 I:integer;
 Count : integer;
begin//0
  FPeriode := Msg.Message; //Periode
  if (FichierCdn.GetPeriodeTraite(Msg.Message)) then // test si periode est deja trait�
  begin//004D0A92 
    if (Msg.WParam = 0) then
    begin//004D0A99
      DrawMyColumn; 
        for I := 1 to FichierCdn.NbreEleves do //004D0AAB
          RemplireMyColumn(Msg.Message, I);
    end//2
    else//004D0AD3
      RemplireMyColumn(Msg.Message, Msg.WParam);
   
    Count := 4 * (FPeriode - 1); // count =  lvar_18 
	  for I:=  Count to Count+3 do //teste
	  begin
	     f2F4[I].Clear;
		 f2f4[I].AddStrings(Cols[I - Count]);
	  end;	
	{for I := Count to lvar_18 + 3 - lvar_18 +1 do //004D0B46
	begin//004D0B4B
		f2F4[I].Clear;
		f2F4[I].AddStrings(Cols[I - lvar_14]);
	end;//3}
    FichierCdn.SetPeriodeTraiteList_H01(FPeriode,False);
  end
  else 
  begin
	  Count := 4 * (FPeriode - 1); 
	  for I:=  Count to Count+3 do //teste
	  begin
		 Cols[I - Count] := f2f4[I];
	  end;
		{for I := lvar_18 to lvar_18 + 3 - lvar_18 + 1 do //004D0C06   
		begin//004D0C0B
		  Cols[lvar_18 - lvar_18] := f2f4[I];
		end;//2}
	  
	  Visible := (FichierCdn.NbrSerieNotes(FPeriode) = 0) Xor true;
  end;
end;//0

{procedure TGrilleMoyennesCarnetDeNotes.DrawCell(ACol, ARow: Longint; ARect: TRect; AState: TGridDrawState);
begin
    inherited DrawCell(ACol, ARow, ARect, AState);
	EvOnDrawCell(self,ACol,ARow,ARect, AState);	
end;}

//004D03C8
procedure TGrilleMoyennesCarnetDeNotes.EvOnDrawCell(Sender:TObject;ACol:Longint; ARow:Longint; ARect:TRect; AState:TGridDrawState);
var
   R:TRect;
   Valeur:Real;
begin//0
    EvOnDrawCell_(Self, ACol, ARow ,ARect , AState);
    Canvas.Font.Style := [];//gvar_004D0720;
    Canvas.Font.Color := 0;
    if (GetColorationNote) then
    begin//2
      //004D0450
      if (ARow > 0) then
      begin//3
        //004D045A
        if (ACol <> 2) then
        begin//4
          //004D0464
          if (Cells[ACol, ARow] <> '') then
          begin//5
            //004D0480
            try
              //004D048E
              Valeur:= StrToFloat(Cells[ACol, ARow]);
              //004D04AF
              if ( Valeur < 0) Or ( Valeur > GetMoyennesSur) then //004D04CF
                Canvas.Font.Color := GetColor4Note
              else//004D04EC
                if (Valeur >= 0) and(Valeur < GetMoyennesSur/2  ) then//004D04FA //004D0515
                    Canvas.Font.Color := GetColor1Note
                else//004D052F       
                  if (Valeur >= 3/4 * GetMoyennesSur ) then //004D0554
                    Canvas.Font.Color := GetColor3Note
                  else//004D056E
                    Canvas.Font.Color := GetColor2Note;

            except//6
              on E:EConvertError do
              begin//7
                //004D05AC
                if (GetColorationGrille) then//004D05B5
                  Canvas.Brush.Color := GetColor5Note
                else//004D05CF
                  Canvas.Brush.Color := $FFFFFF;
              end;//7
              on E:EMathError do
              begin//7
                //004D05E7
                if (GetColorationGrille) then//004D05F0
                  Canvas.Brush.Color := GetColor5Note
                else//004D060A
                  Canvas.Brush.Color := $FFFFFF;
              end;//7
            end;//6
          end;//5
        end;//4
      end;//3
    end;//2
    if (gdSelected in AState) then
    begin//2
      //004D062B
      if (GetColorationGrille) then
      begin//3
        //004D0634
        Canvas.Brush.Color := GetcouleurSelection;
      end//3
      else//004D064E
        Canvas.Brush.Color := $C0C0C0;
    end;//2
	Canvas.FillRect(ARect);
    R.Left := ARect.Left;
    R.Top := ARect.Top + 2;//EAX
    R.Right := ARect.Right;
    R.Bottom := ARect.Bottom;
    DrawTextA(Canvas.Handle, PChar(Cells[ACol, ARow]), Length(Cells[ACol, ARow]), R, 1);
    //004D06F4
end;//0

end.