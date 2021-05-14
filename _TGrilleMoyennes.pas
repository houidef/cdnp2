{***********************************************************
* Version Original V0.03 build 1                           *
* Decompiled by HOUIDEF AEK v 12:20 mercredi, août 29, 2018*
* The disassembly process : 100%                           *
************************************************************}
unit _TGrilleMoyennes;

interface

uses
Forms, Windows,  SysUtils, Classes, Messages, Grids, Controls, dialogs,
 _TGrilleGenerique , UFichierCdn, Unit111,_FormHint,Clipbrd,_FormEdit;

type
  TGrilleMoyennesCarnetDeNotes = class(TGrilleGeneriqueCarnetDeNotes)
  protected
    procedure DrawCell(ACol, ARow: Longint; ARect: TRect; AState: TGridDrawState);override; //supprimer le
  public
    f2E8:dword;//f2E8
    f2EC:dword;//f2EC
    f2F0:HMENU;//f2F0
    f2F4:array of TStringList;//f2F4
    destructor Destroy; virtual;//004CF9F8
    procedure WMCommand(var Message:TWMCommand); message WM_COMMAND;//004CFC74
    procedure sub_004D0A5C(var Msg:TMsg);  message $408;//004D0A5C
    constructor Create(AOwner:TComponent; FeuilleClasse:TComponent; Periode:byte; FichierCdn:TFichierCdn);//004CF0A8
    procedure sub_004CF21C;//004CF21C
    procedure sub_004CF4CC;//004CF4CC
    procedure sub_004CF830;//004CF830
    procedure sub_004CFA2C(Sender:TObject; Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer);//004CFA2C
    procedure sub_004D072C;//004D072C
    function sub_004D08DC(Periode:dword; ARow:dword):dword;//004D08DC
	procedure sub_004D03C8(Sender:TObject;ACol:Longint; ARow:Longint; ARect:TRect; AState:TGridDrawState);
  end;


implementation

//004CF0A8
constructor TGrilleMoyennesCarnetDeNotes.Create(AOwner:TComponent; FeuilleClasse:TComponent; Periode:byte; FichierCdn:TFichierCdn);
var 
  I:integer;
begin
 //004CF0A8
 inherited Create(AOwner,0,FeuilleClasse,FichierCdn,Periode);
 f2E4:=2;
 
  SetLength(f2f4,FichierCdn.GetNbrePeriodes*4);
  //FOwner := FOwner + _DynArr_121_2;
    for I := 0 to FichierCdn.GetNbrePeriodes*4 -1 do
    begin//004CF134
      f2F4[I] := TStringList.Create;
    end;//2

  FixedRows := 1;
  FixedCols := 0;
  ColCount :=4;
  DefaultRowHeight := 18;
  //DefaultDrawing := False;
  //f28C := Self
  //fBC := Self
  //sub_04D03C8
  OnMouseDown := sub_004CFA2C;
  Options := Options + [goRowSelect];

 sub_004D072C;
    for I := 1 to FichierCdn.EleveCount do //004CF1E0
    begin//004CF1E4
      sub_004D08DC(1, I);
    end;//2
end;

//004CF21C
procedure TGrilleMoyennesCarnetDeNotes.sub_004CF21C;
var 
  x:integer;
begin//0
  //004CF21C
    DestroyMenu(f2F0);
    f2F0 := CreatePopupMenu;
	x:=GetarrondirMoyennes;
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
      AppendMenuA(f2F0, 8, 2, 'Arrondir les moyennes au dixième de point');
    end//2
    else
    begin//004CF2CC
      AppendMenuA(f2F0, 0, 2, 'Arrondir les moyennes au dixième de point');
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
procedure TGrilleMoyennesCarnetDeNotes.sub_004CF4CC;
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
     AppendMenuA(f2F0, 0, $12{18}, PChar('Copier la colonne "' + Cells[f2E8, 0] + '" dans le Presse-Papiers'));
    if (Clipboard.HasFormat(1)) then
       AppendMenuA(f2F0, 0, $13{19}, PChar('Coller la colonne "' + Cells[f2E8, 0] + '" depuis le Presse-Papiers'))
	else
     AppendMenuA(f2F0, 1, $13{19}, PChar('Coller la colonne "' + Cells[f2E8, 0] + '" depuis le Presse-Papiers'));
    //004CF706
end;//0

//004CF830
procedure TGrilleMoyennesCarnetDeNotes.sub_004CF830;
begin//0
  //004CF830
    //004CF849
    DestroyMenu(f2F0);
    f2F0 := CreatePopupMenu;
     AppendMenuA(f2F0, 0, 0, 'Turbo Menu "Moyennes calculées sur ..."');
     AppendMenuA(f2F0, $800{2048}, 0, '-');
     AppendMenuA(f2F0, 0, 15, 'Moyenne calculée sur 20');
     AppendMenuA(f2F0, 0, $10{16}, 'Moyenne calculée sur 10');
     AppendMenuA(f2F0, 0, $11{17}, 'Autre ...');
     AppendMenuA(f2F0, $800{2048}, 0, '-');
     AppendMenuA(f2F0, 0, $12{18}, PChar('Copier la colonne "' + Cells[f2E8, 0] + '" dans le Presse-Papiers'));
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
procedure TGrilleMoyennesCarnetDeNotes.sub_004CFA2C(Sender:TObject; Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer);
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
  //showmessage('ACol:'+inttostr(ACol)+' ARow:'+inttostr(ARow));
  f2E8 := ACol;
  f2EC := ARow;
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
  SendMessageA(f2E0, 1039, ARow, 255);
  I := byte(FichierCdn.EleveCount);
  if (ACol = 1) then
  begin//004CFB0C
    if (ARow <= 255) then //lvar14 = ACol
    begin//004CFB31
	  if({ARow in I} ARow <I) then 
      begin//004CFB37
        sub_004CF21C;
        TrackPopupMenu(f2F0, 10, ClientToScreen(Point(X,Y)).x, ClientToScreen(Point(X,Y)).y, 0{ reserved }, Handle, nil);
      end;//3
    end;//2
  end;
  if(ACol = 2) then
  begin//004CFB80
    if (ARow <= 255) then
    begin//004CFBA5
      if ({ARow in I} ARow <I) then
      begin//004CFBAB
        sub_004CF4CC;
		TrackPopupMenu(f2F0, 10, ClientToScreen(Point(X,Y)).x, ClientToScreen(Point(X,Y)).y, 0{ reserved }, Handle, nil);
      end;//3
    end;//2
  end;//1
  if (X <> 3) then
  begin//004CFBF4
    if (ACol <> 0) then Exit;
  end;//1
  if (ARow <= 255) then
  begin//004CFC1F
    if ({ARow in I} ARow <I) then
    begin//004CFC25
      sub_004CF830;
      TrackPopupMenu(f2F0, 10,ClientToScreen(Point(X,Y)).X, ClientToScreen(Point(X,Y)).Y, 0, Handle, nil);
    end;//2
  end;//1
end;//0



//004CFC74
procedure TGrilleMoyennesCarnetDeNotes.WMCommand(var Message:TWMCommand);
var
 I,C:integer;
 lvar_4 : string;
 lvar_C : TStringList;
begin//0
  //004CFC74
    //004CFCBB
    if (Message.ItemID - 1 - 4 < 0) then
    begin//2
      //004CFCC8
      SetarrondirMoyennes(Message.ItemID - 1);
    end//2
    else
    begin//2
      //004CFCEB
      if (Message.ItemID = 5) then //004CFCF1
        FichierCdn.sub_004C3678(f2D8, f2EC,'-2')
      else
      begin//3
        //004CFD1F
        if (Message.ItemID = 6) then//004CFD25
          FichierCdn.sub_004C3678(f2D8, f2EC,'-1,5')
        else
        begin//4
          //004CFD53
          if (Message.ItemID = 7) then//004CFD59
            FichierCdn.sub_004C3678(f2D8, f2EC,'-1')
          else
          begin//5
            //004CFD87
            if (Message.ItemID = 8) then//004CFD8D
              FichierCdn.sub_004C3678(f2D8, f2EC,'-0,5')
            else
            begin//6
              //004CFDBB
              if (Message.ItemID = 9) then//004CFDC1
                FichierCdn.sub_004C3678(f2D8, f2EC,'')
              else
              begin//7
                //004CFDEF
                if (Message.ItemID = 10) then//004CFDF5
                  FichierCdn.sub_004C3678(f2D8, f2EC,'0,5')
                else
                begin//8
                  //004CFE23
                  if (Message.ItemID = 11) then //004CFE29
                    FichierCdn.sub_004C3678(f2D8, f2EC,'1')
                  else
                  begin//9
                    //004CFE57
                    if (Message.ItemID = 12) then//004CFE5D
                      FichierCdn.sub_004C3678(f2D8, f2EC,'1,5')
                    else
                    begin//10
                      //004CFE8B
                      if (Message.ItemID = 13) then//004CFE91
                        FichierCdn.sub_004C3678(f2D8, f2EC,'2')
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
                            FichierCdn.sub_004C3678(f2D8, f2EC,FormEdit.Edit1.Text);
                            SendMessageA(FormEdit.Handle, $408{1032}, f2D8, f2EC);
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
                            if (Message.ItemID = $10{16}) then //004CFFB9
                              SetmoyennesSur(10)
                            else
                            begin//14
                              //004CFFC8
                              if (Message.ItemID = $11{17}) then
                              begin//15
                                //004CFFD2
                                FormEdit{gvar_00617CE0} := TFormEdit.Create(Self, 'Moyennes exprimées sur', '',1);
                                FormEdit.ShowModal;
                                if (FormEdit.ModalResult = 1) then
                                begin//16
                                  //004D0010
                                  SetmoyennesSur(StrToInt(FormEdit.Edit1.Text));
                                  FichierCdn.sub_004C4784(f2D8, true);
                                  SendMessageA(Handle, $408{1032}, f2D8, 0);
                                end;//16
                                FormEdit.Destroy;
                              end//15
                              else
                              begin//15
                                //004D007B
                                if (Message.ItemID = $12{18}) then
                                begin//16
                                  //004D0085
                                  Clipboard.Clear;
                                  lvar_4 := '';
                                    for I := 0 to FichierCdn.EleveCount - 1 do //004D00AB
                                    begin//18
                                      //004D00B6
                                      lvar_4 := lvar_4 + Cells[f2E8, I] + #13 + #10;
                                    end;//18
                                  Clipboard.SetTextBuf(PChar(lvar_4));
                                end//16
                                else
                                begin//16
                                  //004D010E
                                  if (Message.ItemID = $13{19}) then
                                  begin//17
                                    //004D0118
                                    if (Clipboard.HasFormat(1) ) then
                                    begin//18
                                      //004D012E
                                      lvar_C := TStringList.Create;
                                      lvar_C.Text := Clipboard.AsText;
                                      if (lvar_C.Count > FichierCdn.EleveCount) then //004D0179
                                        C := FichierCdn.EleveCount
                                      else //004D018B
                                        C := lvar_C.Count;

                                        for I := 1 to C do//004D019B
                                        begin//20
                                          //004D01A5
                                          Cells[f2E8, I] := lvar_C[I - 1];
                                          FichierCdn.sub_004C3678(f2D8, I,lvar_C[I - 1]);
                                        end;//20
                                      lvar_C.Destroy;
                                      SendMessageA(Handle, $408{1032}, f2D8, 0);
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
    FichierCdn.sub_004C4784(f2D8, true);
    case Message.ItemID of
      1..4:
      begin//3
        //004D028F
        SendMessageA(Handle, $408{1032}, f2D8, 0);
      end;//3
      5..14:
      begin//3
        //004D02AE
        SendMessageA(Handle, $408{1032}, f2D8, f2EC); 
      end;//3
      15..16:
      begin//3
        //004D02D2
        FichierCdn.sub_004C63C8;
        SendMessageA(Handle, $408{1032}, f2D8, 0);
      end;//3
    end;//2
    //004D0307
end;//0

//004D072C
procedure TGrilleMoyennesCarnetDeNotes.sub_004D072C;
var
  I:integer;
begin//0
  //004D072C
  
    ColCount := 4;
    RowCount := FichierCdn.EleveCount + $12{gvar_00617902};
    for I := 0 to 3 do
    begin//004D077E
      if (I = 2) then Continue;
      Cols[I].Clear;
    end;//2
    Cells[0, 0] := 'Moyenne brute sur ' + IntToStr(GetmoyennesSur);
    Cells[1, 0] := 'Moyenne arrondie sur ' + IntToStr(GetmoyennesSur);
    Cells[2, 0] := 'Point(s) en + ou en -';
    Cells[3, 0] := 'Moyenne bulletin sur ' + IntToStr(GetmoyennesSur);



end;

//004D08DC
function TGrilleMoyennesCarnetDeNotes.sub_004D08DC(Periode:dword; ARow:dword):dword;
var
  buf :string;
begin//0
  //004D08DC..004D0914
    Visible := ((FichierCdn.GetNbreModules(f2D8) = 0) Xor true);
    FichierCdn.sub_004C213C(Periode, ARow, buf);
    Cells[0, ARow] := buf;
    FichierCdn.sub_004C2AF4(Periode, ARow, GetarrondirMoyennes, buf);
    Cells[1, ARow] := buf;
    FichierCdn.sub_004C2B38(Periode, ARow, buf);
    Cells[2, ARow] := buf;
    FichierCdn.sub_004C2D10(Periode, ARow, GetarrondirMoyennes, buf);
    Cells[3, ARow] := buf;
end;//0



//004D0A5C
procedure TGrilleMoyennesCarnetDeNotes.sub_004D0A5C(var Msg:TMsg);
var
 I:integer;
 Count : integer;
begin//0
  //004D0A5C
  f2D8 := Msg.Message; //Periode
  if (FichierCdn.sub_004C4778(Msg.Message)) then // test si periode est deja traité
  begin//004D0A92 
    if (Msg.WParam = 0) then
    begin//004D0A99
      sub_004D072C; 
        for I := 1 to FichierCdn.EleveCount do //004D0AAB
          sub_004D08DC(Msg.Message, I);
        
    end//2
    else//004D0AD3
      sub_004D08DC(Msg.Message, Msg.WParam);
   
    Count := 4 * (f2D8 - 1); // count =  lvar_18 
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
    FichierCdn.sub_004C4784(f2D8,False);
  end
  else 
  begin
	  Count := 4 * (f2D8 - 1); 
	  for I:=  Count to Count+3 do //teste
	  begin
		 Cols[I - Count] := f2f4[I];
	  end;
		{for I := lvar_18 to lvar_18 + 3 - lvar_18 + 1 do //004D0C06   
		begin//004D0C0B
		  Cols[lvar_18 - lvar_18] := f2f4[I];
		end;//2}
	  
	  Visible := (FichierCdn.GetNbreModules(f2D8) = 0) Xor true;
  end;
end;//0

procedure TGrilleMoyennesCarnetDeNotes.DrawCell(ACol, ARow: Longint; ARect: TRect; AState: TGridDrawState);
begin
    inherited DrawCell(ACol, ARow, ARect, AState);
	sub_004D03C8(self,ACol,ARow,ARect, AState);	
end;
procedure TGrilleMoyennesCarnetDeNotes.sub_004D03C8(Sender:TObject;ACol:Longint; ARow:Longint; ARect:TRect; AState:TGridDrawState);
var
   R:TRect;
   Valeur:Real;
begin//0
  //004D03C8
  {lvar_4C := 0;
  lvar_4C := 0;
  lvar_40 := 0;
  lvar_40 := 0;
  lvar_28 := AState;
  lvar_8 := ARow;}
    //004D0402
    //sub_004CA104(Self, ACol, ARow ,ARect , AState);
    Canvas.Font.Style := [];//gvar_004D0720;
    Canvas.Font.Color := 0;
    if (GetcolorationNote) then
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
              if ( Valeur < 0) Or ( Valeur > GetmoyennesSur) then //004D04CF
                Canvas.Font.Color := _Getcouleur4Note
              else//004D04EC
                if (Valeur >= 0) and(Valeur < GetmoyennesSur/2  ) then//004D04FA //004D0515
                    Canvas.Font.Color := _Getcouleur1Note
                else//004D052F       
                  if (Valeur >= 3/4 * GetmoyennesSur ) then //004D0554
                    Canvas.Font.Color := _Getcouleur3Note
                  else//004D056E
                    Canvas.Font.Color := _Getcouleur2Note;

            except//6
              on E:EConvertError do
              begin//7
                //004D05AC
                if (GetcolorationGrille) then
                begin//8
                  //004D05B5
                  Canvas.Brush.Color := _Getcouleur5Note;
                end//8
                else
                begin//8
                  //004D05CF
                  Canvas.Brush.Color := $FFFFFF{16777215};
                end;//8
              end;//7
              on E:EMathError do
              begin//7
                //004D05E7
                
                if (GetcolorationGrille) then
                begin//8
                  //004D05F0
                  Canvas.Brush.Color := _Getcouleur5Note;
                end//8
                else
                begin//8
                  //004D060A
                  Canvas.Brush.Color := $FFFFFF{16777215};
                end;//8
              end;//7
            end;//6
          end;//5
        end;//4
      end;//3
    end;//2
    if (gdSelected in AState) then
    begin//2
      //004D062B
      if (GetcolorationGrille) then
      begin//3
        //004D0634
        Canvas.Brush.Color := GetcouleurSelection;
      end//3
      else
      begin//3
        //004D064E
        Canvas.Brush.Color := $C0C0C0;
      end;//3
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