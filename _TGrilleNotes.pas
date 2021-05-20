{***********************************************************
* Version Original V0.03 build 1                           *
* Decompiled by Houidef AEK v Thursday 20 May 2021 @ 06:08 PM*
* The disassembly process : 99%                            *
************************************************************}
unit _TGrilleNotes;

interface

uses
Forms, Windows,  SysUtils, Classes, Grids, messages, Controls, _TGrilleGenerique, Clipbrd, UFichierCdn, dialogs,
Graphics,unit111,_FormHint,_FormEdit,_Calendrier,constantes;

type
  TGrilleNotesCarnetDeNotes = class(TGrilleGeneriqueCarnetDeNotes)
  protected
    procedure DrawCell(ACol, ARow: Longint; ARect: TRect; AState: TGridDrawState);override; //supprimer le
	procedure MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); override;  //supprimer le 
  public
	
    f2E8:dword;//f2E8
    FCol:dword;//f2EC
    FRow:dword;//f2F0
    f2F4:dword;//f2F4
	f2F8:Boolean;//f2F8
	f2F9:boolean;
	f2FA:boolean;
    destructor Destroy; virtual;//00542298
    procedure _DrawCellNote(Sender:Tobject; ACol:Longint; ARow:Longint; ARect:TRect; AState:TGridDrawState);
    procedure WMCommand(var Message:TWMCommand); message WM_COMMAND;//005440D4
    procedure RefrechHaut(var Message:TMsg); message 1027; //005464FC
    procedure RefrechBas(var Msg:TMsg);  message 1031;//0054672C ??????
    procedure RefrechAbs(var Msg:TMsg);  message 1044;//00546F14
    constructor Create(AOwner:TComponent; FeuilleClasse:TComponent; Periode:byte; FichierCdn:TFichierCdn);//00542198
	procedure KeyDownEvent(Sender: TObject; var Key: Word; Shift: TShiftState);//005428C4
	procedure KeyPressEvent(Sender:TObject; var Key:Char);
    procedure SelectCellEvent(Sender: TObject; ACol,ARow: Integer; var CanSelect: Boolean);//00542934
	procedure SetEditTextEvent(Sender:TObject; ACol:integer; ARow:Integer; const Value:String); //00542A24
	procedure sub_00542C2C(Sender:TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer); //00542C2C
	procedure sub_00543714(Sender:TObject);
	procedure sub_00547030(Sender:TObject);
	procedure sub_00543FA0(Sender:TObject);
	procedure sub_00543BB4(Sender:TObject);
	procedure sub_00543EB8(Sender:TObject);
	procedure sub_00546B60(Sender:TObject);
	procedure sub_00546CCC(Sender:TObject);
	procedure sub_00547320(Sender:TObject);
  end;
    


implementation

//00542198
constructor TGrilleNotesCarnetDeNotes.Create(AOwner:TComponent; FeuilleClasse:TComponent; Periode:byte; FichierCdn:TFichierCdn);
begin//0
  //00542198
   
  TypeGrille := 1;
  inherited  Create(AOwner,0,FeuilleClasse,FichierCdn,Periode);
 // Self.FichierCdn := c;
  f2E8 := 0;
  FixedCols := 0;
  FixedRows :=1;
  ColCount :=1;
  f2F4 := 0;
  DefaultRowHeight := 18;
  DefaultDrawing := False;
  //f28C := Self;
  //OnDrawCell :=  _DrawCellNote;
  //f1BC := Self;
  OnKeyPress := KeyPressEvent;
  //f1B4 := Self;
  OnKeyDown := KeyDownEvent;
  //f2AC := Self;
  OnSelectCell := SelectCellEvent;
  //f2B4 := Self;
  OnSetEditText := SetEditTextEvent;
  //fBC := Self
  //OnMouseDown := sub_00542C2C;
end;
//005422CC
procedure TGrilleNotesCarnetDeNotes._DrawCellNote(Sender:Tobject; ACol:Longint; ARow:Longint; ARect:TRect; AState:TGridDrawState);
var
 buf :string;
 lvar_5C : TRect;
begin//0
  //005422CC
   // _DrawCell(Sender, ACol, ARow, lvar_4C.Left, AState);
    Canvas.Font.Style := []{gvar_005428A4};
    if (FichierCdn.EleveCount + gvar_006178F7 = ARow) then //00542388
      Canvas.Font.Style := [fsBold]{gvar_005428A8};
    if (ARow > 0) then
    begin//005423A9
      if (FichierCdn.EleveCount + 1 > ARow) then
      begin//005423CF
        if (GetcolorationGrille) then
        begin//005423DC
          if (Cells[ACol, ARow] = 'abs') Or (Cells[ACol, ARow] = '') then //00542415
            Canvas.Font.Color := 0
          else
          begin//5
            //0054242D
            try
              //0054243B
              FichierCdn.GetStrNoteSur( NPeriode, ACol + 1, buf);
              if (StrToFloat(Cells[ACol, ARow]) < 0{gvar_005428A4}) Or ( StrToFloat(Cells[ACol, ARow]) > StrToFloat(buf)) then //005424CC
				Canvas.Brush.Color := _Getcouleur5Note;
            except//6
              on E:EConvertError do
              begin//005424FF
                if (GetcolorationGrille) then//00542508
                  Canvas.Brush.Color := _Getcouleur5Note
                else//00542522;
                  Canvas.Brush.Color := $FFFFFF;
              end;//7
            end;//6
          end;//5
        end;//4       
        if (GetcolorationNote) then
        begin//0054254A
          if (Cells[ACol, ARow] = 'abs') Or (Cells[ACol, ARow] = '') then//0054258F
            Canvas.Font.Color := 0
          else
          begin//005425A7
            try
              //005425B5
              fichierCdn.GetStrNoteSur(NPeriode, ACol + 1, buf);
              if (StrToFloat(Cells[ACol, ARow]) < 0{gvar_005428A4}) Or (StrToFloat(Cells[ACol, ARow]) > StrToFloat(buf)) then//0054264C
                Canvas.Font.Color := _Getcouleur4Note
              else
              begin//00542669
			    if (StrToFloat(Cells[ACol, ARow]) < StrToFloat(buf)/2) then//0054268A
			       Canvas.Font.Color := _Getcouleur1Note
				else
				  if (StrToFloat(Cells[ACol, ARow]) >= StrToFloat(buf)*3/4) then
				   Canvas.Font.Color := _Getcouleur3Note
				  else //005426CA
				   Canvas.Font.Color:= _Getcouleur2Note;
              end;//7
			  
            except//6
              on E:EConvertError do
              begin//00542722
                if (GetcolorationGrille) then//0054272B
                  Canvas.Brush.Color := _Getcouleur5Note
                else//00542745
                  Canvas.Brush.Color := $FFFFFF;
              end;//7
              on E:EMathError do
              begin//0054275D
                if (GetcolorationGrille) then//00542766
                  Canvas.Brush.Color := _Getcouleur5Note
                else//00542780
                  Canvas.Brush.Color := $FFFFFF;
              end;//7
            end;//6
          end;//5
        end;//4
      end;//3
    end;//2
      if (gdSelected in AState) then//005427A1
      if (GetcolorationGrille) then//005427AA
        Canvas.Brush.Color := GetcouleurSelection
      else//005427C4
        Canvas.Brush.Color := $C0C0C0;

    Canvas.FillRect(ARect);
    lvar_5C.Left := ARect.Left;
    lvar_5C.Top := ARect.Top + 2;
    lvar_5C.Right := ARect.Right;
    lvar_5C.Bottom := ARect.Bottom;
    DrawTextA(Canvas.Handle, PChar(Cells[ACol, ARow]), Length(Cells[ACol, ARow]), lvar_5C, 1);
end;//0

//00542298
destructor TGrilleNotesCarnetDeNotes.Destroy;
begin//0
  //00542298
  DestroyMenu(f2E8);
  inherited destroy;
end;//0

//005428C4
procedure TGrilleNotesCarnetDeNotes.KeyDownEvent(Sender:TObject; var Key:Word; Shift:TShiftState);
begin//0
  //005428C4
  f2FA := (Key = $6E{110});
  f2F8 := (Key = 13);
  if (Key = $6D{109}) then 
  begin
	f2F9 := true;
	SendMessageA(Handle, $414{1044}, 0, 0);
  end;
end;//0

//00542934
procedure TGrilleNotesCarnetDeNotes.SelectCellEvent(Sender: TObject; ACol,ARow: Integer; var CanSelect: Boolean);
begin//0
  //00542934

  FRow := ARow;
  FCol := ACol;
  
  SendMessageA(MyHandle, 1025, ARow, 0);
  Options := [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goTabs];{gvar_00542A1C}; ////$080F;
    if (((ACol < FichierCdn.GetNbreModules(NPeriode)+ 1) and (ARow < FichierCdn.EleveCount+ 1)) or (ARow = FichierCdn.EleveCount + gvar_006178FF))then
    begin//005429DA
    Options  := [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine,goEditing, goTabs]; //$C0F;//gvar_00542A20;
    CanSelect := True;
	end;

end;

//005440D4
procedure TGrilleNotesCarnetDeNotes.WMCommand(var Message:TWMCommand);
var
 KI,KJ,I,J:integer;
 buf,lvar_10,buf0,buf1:string;
 lvar_8,lvar_C : TStringList;
begin//0
  //005440D4
    //005440F9
	//showmessage(Format('Message.ItemID = %d',[Message.ItemID]));
    KI := FichierCdn.GetNbrePeriodes + 2;//ESI
    if (Message.ItemID = 0) then
    begin//2
      //00544124
      FichierCdn.GetModuleName__v(NPeriode, buf, FCol + 1);
      FormEdit{gvar_00617CEx0} := TFormEdit.Create(Self, 'Modifier intitulé', buf,1);
      FormEdit.ShowModal;
      if (FormEdit.ModalResult = 1) then
      begin//3
        //005441AB
        FichierCdn.GetStrNoteSur(NPeriode, FCol + 1, buf);
        Cells[FCol, FRow] :=  FormEdit.Edit1.Text + ' (sur ' + buf + ')';
        FichierCdn._SetStrNote0(NPeriode,FCol + 1,FormEdit.Edit1.Text);
      end;//3
      FormEdit.Destroy;
    end//2
	else
    if (Message.ItemID <= 255) then
    begin//2
      //005442F6
      if (Message.ItemID  < KI - 1) then
      begin//3
        //00544308
        if (Message.ItemID - 1 = NPeriode) then Exit;
        //FichierCdn.MoveColone(NPeriode, FCol + 1, );
        SendMessageA(Handle, $403{1027}, NPeriode, 0);
        SendMessageA(MyHandle, $408{1032}, NPeriode, 0);
        SendMessageA(MyHandle, $40E{1038}, 0, 0);
      end//3
      else
      if (KI = Message.ItemID) then
      begin//3
        //005443C6
        Clipboard.Clear;
		lvar_10:= '';
        if (FichierCdn.EleveCount  > 0) then
        begin//4
          //005443E8
          for I := 1 to FichierCdn.EleveCount do
          begin//5
            //005443F0
			FichierCdn._GetStrNote(NPeriode, FCol + 1, I, buf);
			lvar_10:=lvar_10 + buf + #13 + #10
          end;//5
        end;//4
        Clipboard.SetTextBuf(PChar({lvar_10 + lvar_148}buf + #13 + #10));
      end//3
      else
      if (Message.ItemID = KI + $1F{31}) then
      begin//3
        //0054449E
        Clipboard.Clear;
          //005444C2
          
          for I := 1 to FichierCdn.EleveCount do
          begin//5
            //005444CA
			FichierCdn.GetEleveName(I, buf0);
            FichierCdn._GetStrNote(NPeriode, FCol + 1, I, Buf1);
			lvar_10 := lvar_10 + buf0 + ' ' + Buf1 + #13 + #10;
          end;//5
        lvar_10 := lvar_10 + #13 + #10;
        FichierCdn.GetElevesPresents(NPeriode, FCol + 1, buf);
        lvar_10 := lvar_10 + 'Nombre d''élèves présents : ' + buf + #13 + #10;
        FichierCdn.__GetStrMin(NPeriode, buf0, FCol + 1);
        FichierCdn.GetStrNoteSur( NPeriode, FCol + 1,  buf1);
        lvar_10 := lvar_10 + 'Minimum : ' +  buf0 + '/' +  buf1 + #13 + #10;
        FichierCdn.__GetStrMax(NPeriode, Buf0, FCol + 1);
        FichierCdn.GetStrNoteSur(NPeriode, FCol + 1, Buf1);
        lvar_10 := lvar_10 + 'Maximum : ' + Buf0 + '/' + Buf1 + #13 + #10;
        FichierCdn.GetMoyenne_vv(NPeriode, Buf0, FCol + 1);
        FichierCdn.GetStrNoteSur(NPeriode, FCol + 1, Buf1);
        lvar_10 := lvar_10 + 'Moyenne : ' + Buf0 + '/' + Buf1 + #13 + #10;
        FichierCdn.GetEcartType(NPeriode, FCol + 1, Buf);
        lvar_10 := lvar_10 + 'Ecart type : ' + Buf + #13 + #10;
        FichierCdn.GetNotesInfMoy_VX(NPeriode, FCol + 1, Buf);
        lvar_10 := lvar_10 + '% notes < moyenne : ' + Buf + #13 + #10;
        FichierCdn.GetNotesInfMoyClasse_VX(NPeriode, FCol + 1, Buf);
        lvar_10 := lvar_10 + '% notes < moyenne classe : ' + Buf;
        Clipboard.SetTextBuf(PChar(lvar_10));
      end//3
	  else
      if (Message.ItemID = KI + 1) then
      begin//3
        //00544978
        if (Clipboard.HasFormat(1)) then
        begin//4
          //0054498E
          lvar_8 := TStringList.Create;
          lvar_8.text :=Clipboard.AsText;
          if (lvar_8.count > FichierCdn.EleveCount ) then//005449D9
			J := FichierCdn.EleveCount
          else//005449EB
            J := lvar_8.count;

            for I := 1 to J  do//005449FB
            begin//6
              //00544A03
              Cells[FCol, I]:= lvar_8[I - 1];
              FichierCdn.AddNoteToPeriode(NPeriode, FCol + 1, 0, lvar_8[I - 1]);
            end;//6
           lvar_8.destroy;
           SendMessageA(Handle, $407{1031}, FCol, 0);
           SendMessageA(MyHandle, $408{1032}, NPeriode, 0);
        end;//4
      end//3
	  else
      (*
      EAX := ESI + 2;//EAX
      EDX := ESI + 6;//EDX
      ESP := $20{32};*)
      if (Message.ItemID <= 255) then
      begin//3
        //00544B41
        if (Message.ItemID  < KI+6) then
        begin//4
          //00544B53
          Cells[FCol, FRow] :=  DateToStr(Date - 4 - KI + Message.ItemID);
          FichierCdn._SetStrNote15(NPeriode, FCol + 1,DateToStr(Date - 4 - KI + Message.ItemID));
        end//4
		else
        if (Message.ItemID = KI + 7) then
        begin//4
          //00544C58
          FormCalendrier{gvar_00615F70} := TFormCalendrier.Create(Self);
          FormCalendrier.MonthCalendar1.Date:=Now;
		  FormCalendrier.ShowModal;
		  if(FormCalendrier.ModalResult= 1) then 
		  begin
		    //00544CAF
			FichierCdn._SetStrNote15(NPeriode, FCol + 1, DateToStr(FormCalendrier.MonthCalendar1.Date));
			Cells[FCol, FRow] := DateToStr(FormCalendrier.MonthCalendar1.Date);
		  end;
		  FormCalendrier.Free;
        end//4
        else
        if (Message.ItemID = KI + 8) then
        begin//4
          //00544D8A
          if (Cells[FCol, FRow] <> 'oui') then
          begin//5
            //00544DBA
            Cells[FCol, FRow] :=  'oui';
            {EAX := }FichierCdn._SetStrNote13(NPeriode, FCol + 1,'oui');
             SendMessageA(MyHandle, $408{1032}, NPeriode, 0);
          end;//5
        end//4
        else
        if (Message.ItemID = KI + 9) then
        begin//4
          //00544E3D
          if ( Cells[FCol, FRow] <> 'non') then
          begin//5
            //00544E6D
            Cells[FCol, FRow] := 'non';
            {EAX := }FichierCdn._SetStrNote13(NPeriode, FCol + 1,'non');
             SendMessageA(MyHandle, 1032, NPeriode, 0);
          end;//5
        end//4
		else
        begin
        lvar_C := GetTypesdenotes;
        //EDX := lvar_C.count + KI + 9;
       // EAX := KI + 10;
        if (Message.ItemID <= 255) then
        begin//4
          //00544F3F
          if (Message.ItemID < KI + 10) then
          begin//5
            //00544F51
            Cells[FCol, FRow] :=  lvar_C[Message.ItemID - 10 - KI];
            FichierCdn._SetStrNote17( NPeriode, FCol + 1,lvar_C[Message.ItemID - 10 - KI]);
          end//5
		  else
            //0054507C
            if (Message.ItemID  < KI + $13 + lvar_C.count) then
            begin//6
              //0054508E
              Cells[FCol, FRow ] :=  IntToStr(Message.ItemID - KI - 10 - lvar_C.count + 1);
              FichierCdn.sub_004C47E8(NPeriode, FCol + 1,IntToStr( Message.ItemID - KI - 10 - lvar_C.count + 1));
               SendMessageA(MyHandle, $408{1032}, NPeriode, 0);
            end//6
			else
  
            if (lvar_C.count +  KI + $14{20} = Message.ItemID) then
            begin//6
              //005451C4
              FichierCdn.GetStrCoeff(NPeriode, FCol + 1, buf);
              FormEdit := TFormEdit.Create(Self, 'Coefficient de la série', buf,1);
              FormEdit.ShowModal;
              if (FormEdit.ModalResult = 1) then
              begin//7
                //00545251
                if (Cells[FCol, FRow] <> FormEdit.Edit1.Text) then
                begin//8
                  //0054529C
                  Cells[FCol, FRow] := FormEdit.Edit1.Text;
                  FichierCdn.sub_004C47E8(NPeriode, FCol + 1,FormEdit.Edit1.Text);
                   SendMessageA(MyHandle, $408{1032}, NPeriode, 0);
                end;//8
              end;//7
              FormEdit.Destroy;
            end//6
			else
            if (lvar_C.count + KI + $15{21} = Message.ItemID) then
            begin//6
              //0054538C
              if (Cells[FCol, FRow] <> '20') then
              begin//7
                //005453BC
                Cells[FCol, FRow ] :=  '20';
                FichierCdn.sub_004C48BC(NPeriode, FCol + 1,'20');
                 SendMessageA(Handle, $407{1031}, FCol, 0);
                 SendMessageA(MyHandle, $408{1032}, NPeriode, 0);
                 SendMessageA(MyHandle, $405{1029}, 0, 0);
              end;//7
            end//6
			else
           if (lvar_C.count + KI+ $16{22} = Message.ItemID) then
            begin//6
              //00545484
              if (Cells[FCol, FRow] <> '10') then
              begin//7
                //005454B4
                Cells[FCol, FRow] :=  '10';
                FichierCdn.sub_004C48BC(NPeriode,FCol + 1,'10');
                 SendMessageA(Handle, $407{1031}, FCol, 0);
                 SendMessageA(MyHandle, $408{1032}, NPeriode, 0);
                 SendMessageA(MyHandle, $405{1029}, 0, 0);
              end;//7
            end//6
			else
            
            if (lvar_C.count + KI + $17{23} = Message.ItemID) then
            begin//6
              //0054557C
              if (Cells[FCol, FRow] <> '5') then
              begin//7
                //005455AC
                Cells[FCol, FRow ] := '5';
                FichierCdn.sub_004C48BC(NPeriode, FCol + 1,'5');
                 SendMessageA(Handle, $407{1031}, FCol, 0);
                 SendMessageA(MyHandle, $408{1032}, NPeriode, 0);                 
				 SendMessageA(MyHandle, $405{1029}, 0, 0);
              end;//7
            end//6
			else
            
            if (lvar_C.count + KI + $18{24} = Message.ItemID) then
            begin//6
              //00545674
              if (Cells[FCol, FRow] <> '30') then
              begin//7
                //005456A4
                Cells[FCol, FRow ] :=  '30';
                FichierCdn.sub_004C48BC(NPeriode, FCol + 1,'30');
                 SendMessageA(Handle, $407{1031}, FCol, 0);
                 SendMessageA(MyHandle, $408{1032}, NPeriode, 0);
                 SendMessageA(MyHandle, $405{1029}, 0, 0);
              end;//7
            end//6
			else
            if (lvar_C.count + KI + $19{25} = Message.ItemID) then
            begin//6
              //0054576C
              if (Cells[FCol, FRow] <> '40') then
              begin//7
                //0054579C
                Cells[FCol, FRow] := '40';
                FichierCdn.sub_004C48BC(NPeriode, FCol + 1,'40');
                 SendMessageA(Handle, $407{1031}, FCol, 0);
                 SendMessageA(MyHandle, $408{1032}, NPeriode, 0);
                 SendMessageA(MyHandle, $405{1029}, 0, 0);
              end;//7
            end//6
			else

            if (lvar_C.count +KI + $1A{26} = Message.ItemID) then
            begin//6
              //00545864
              if (Cells[FCol, FRow] <> '50') then
              begin//7
                //00545894
                Cells[FCol, FRow ] :=  '50';
                FichierCdn.sub_004C48BC( NPeriode, FRow,'50');
                 SendMessageA(Handle, $407{1031}, FCol, 0);
                 SendMessageA(MyHandle, $408{1032}, NPeriode, 0);
                 SendMessageA(MyHandle, $405{1029}, 0, 0);
                Exit;
              end;//7
            end;//6
            if ( lvar_C.count + KI + $1B{27} = Message.ItemID) then
            begin//6
              //0054595C
              if (Cells[FCol, FRow] <> '100') then
              begin//7
                //0054598C
                Cells[FCol, FRow] :=  '100';
                FichierCdn.sub_004C48BC(NPeriode, FCol + 1,'100');
                 SendMessageA(Handle, $407{1031}, FCol, 0);
                 SendMessageA(MyHandle, $408{1032}, NPeriode, 0);
                 SendMessageA(MyHandle, $405{1029}, 0, 0);
                Exit;
              end;//7
           
            if (lvar_C.count + KI + $1C{28} = Message.ItemID) then
            begin//6
              //00545A54
              FichierCdn.GetStrNoteSur(NPeriode, FCol + 1, buf);
              FormEdit := TFormEdit.Create(Self, 'Noté sur', buf,1);
              FormEdit.ShowModal;
              if (FormEdit.ModalResult = 1) then
              begin//7
                //00545AE1
                if (Cells[FCol, FRow] <> FormEdit.Edit1.Text) then
                begin//8
                  //00545B2C
                  Cells[FCol, FRow] := FormEdit.Edit1.Text;
                  FichierCdn.sub_004C48BC(NPeriode, FCol + 1,FormEdit.Edit1.Text);
                   SendMessageA(FormEdit.Handle, $407{1031}, FCol, 0);
                   SendMessageA(MyHandle, $408{1032}, NPeriode, 0);
                   SendMessageA(MyHandle, $405{1029}, 0, 0);
                end;//8
              end;//7
              FormEdit.Destroy;
            end//6
			else
            if (lvar_C.count + KI + $1D{29} = Message.ItemID) then
            begin//6
              //00545C51

                for I := FichierCdn.EleveCount  to FRow + 1 do//00545C7E
                begin//8
                  //00545C82
                 
                  FichierCdn._GetStrNote(NPeriode, FCol + 1, I , buf);
                  FichierCdn.AddNoteToPeriode(NPeriode, FCol + 1, I , buf);
                end;//8
             
              if (FichierCdn.EleveCount <> FRow) then
              begin//7
                //00545D29
                //FichierCdn.AddNoteToPeriode(NPeriode, FCol + 1, FRow, 4);
              end;//7
               SendMessageA(MyHandle, $408{1032}, NPeriode, 0);
               SendMessageA(Handle, $403{1027}, NPeriode, 0);
              Exit;
            end;//6

            if (lvar_C.count + KI + $1E{30} = Message.ItemID) then
            begin//6
              //00545DD5
                for I := 1 to FRow - 1 do //00545DF3
                begin//8
                  //00545DFB
                  FichierCdn._GetStrNote(NPeriode, FCol + 1, I+1 , buf);
                  FichierCdn.AddNoteToPeriode(NPeriode, FCol + 1, I+1 , buf);
                end;//8
              if (FRow <> 1) then
              begin//7
                //00545E99
                //FichierCdn.AddNoteToPeriode(NPeriode, FCol + 1, FRow, 4);
              end;//7
               SendMessageA(MyHandle, $408{1032}, NPeriode, 0);
               SendMessageA(Handle, $403{1027}, NPeriode, 0);
            end//6
			else
            if (lvar_C.count + KI + $1F{31} = Message.ItemID) then
            begin//6
              //00545F3B
              Clipboard.Clear;
              lvar_10 := '';
              Clipboard.SetTextBuf(PChar(lvar_10 + Cells[FCol, FRow] + #13 + #10));
            end;//6

            if (lvar_C.count + KI + $20{32} = Message.ItemID) then
            begin//6
              //00545FC7
              if (Clipboard.HasFormat(1) ) then
              begin//7
                //00545FDD
                lvar_8 := TStringList.Create;
                lvar_8.Text:=Clipboard.AsText;
                if (lvar_8.count <> 0) then
                begin//8
                  //0054601A
                  Cells[FCol, FRow] := lvar_8[0];
                  FichierCdn.AddNoteToPeriode(NPeriode, FCol + 1, FRow, lvar_8[0]);
                  lvar_8.Free;
                   SendMessageA(Handle, $407{1031}, FCol, 0);
                   SendMessageA(MyHandle, $408{1032}, NPeriode, 0);
                end;//8
              end;//7
            end;//6
           
            if (lvar_C.count + KI + $21{33} =Message.ItemID) then
            begin//6
              //00546119
         
              if (Cells[FCol, FRow] <> 'Oral') then
              begin//7
                //00546149
                Cells[FCol, FRow] := 'Oral';
                FichierCdn.SetEcritOral(NPeriode, FCol + 1, true);
              end;//7
            end//6
			else
            if (lvar_C.count + KI + $22{34} <> Message.ItemID) then Exit;
            if (Cells[FCol, FRow] <> 'Ecrit') then
            begin//6
              //005461E8 
              Cells[FCol, FRow] :=  'Ecrit';
              FichierCdn.SetEcritOral(NPeriode, FCol + 1, false);
            end;//6
          end;//5
        end;//4
		end;
      end;//3
    end;//2
    //0054623D
   
end;//0


//005464FC
procedure TGrilleNotesCarnetDeNotes.RefrechHaut(var Message:TMsg);
var 
  I:integer;
  buf,buf0,buf1 : string;
begin//0
  //005464FC
	NPeriode:=Message.Message;  //periode
    RowCount := FichierCdn.EleveCount + gvar_00617902;
    
    if (byte(FichierCdn.GetNbreModules(NPeriode)) > 0) then
    begin//0054657F
      ColCount := byte(FichierCdn.GetNbreModules(NPeriode));
    end//2
    else
    begin//0054658A
      ColCount := 1;
    end;//2

      //005465B1
      for I := 1 to FichierCdn.GetNbreModules(NPeriode) do
      begin //005465B9
        Cols[I - 1] :=  FichierCdn.GetCols__(NPeriode, I);
        FichierCdn.GetModuleName__v(NPeriode, buf0, I);
        FichierCdn.GetStrNoteSur(NPeriode, I, buf1);
        Cols[I - 1].Strings[0] := buf0 + ' (sur ' + buf1 + ')' ;
        SendMessageA(Handle, 1031, I - 1, 0);
      end;//3

    Visible := ((FichierCdn.GetNbreModules(NPeriode) = 0) Xor true);
end;

//0054672C
procedure TGrilleNotesCarnetDeNotes.RefrechBas(var Msg:TMsg);
var
 I,NbrEleves:integer;
 Buf,Buf0: string;
begin//0
  //0054672C
    NbrEleves :=  FichierCdn.EleveCount;
    FichierCdn.GetElevesPresents(NPeriode, Msg.Message + 1, Buf);
    Cells[Msg.Message, NbrEleves + gvar_006178F4] := Buf;
    FichierCdn.__GetStrMin(NPeriode, Buf, Msg.Message + 1);
    Cells[Msg.Message, NbrEleves + gvar_006178F5 ] :=  Buf;
    FichierCdn.__GetStrMax(NPeriode, Buf, Msg.Message + 1);
    Cells[Msg.Message, NbrEleves + gvar_006178F6] :=  Buf;
    FichierCdn.GetMoyenne_vv(NPeriode, Buf, Msg.Message+1);
    Cells[Msg.Message, NbrEleves + gvar_006178F7] :=  Buf;
    FichierCdn.GetEcartType(NPeriode, Msg.Message+1, Buf);
    Cells[Msg.Message, NbrEleves + gvar_006178F8] :=  Buf;
    FichierCdn.GetNotesInfMoy_VX(NPeriode, Msg.Message+1, Buf);
    Cells[Msg.Message, NbrEleves + gvar_006178F9] := Buf;
    FichierCdn.GetNotesInfMoyClasse_VX(NPeriode, Msg.Message+1, Buf);
    Cells[Msg.Message, NbrEleves + gvar_006178FA] :=  Buf;
    FichierCdn.GetModuleName__v( NPeriode, Buf0, Msg.Message+1);
    FichierCdn.GetStrNoteSur( NPeriode, Msg.Message+1, Buf);
    Cells[Msg.Message, 0] :=  Buf0 + ' (sur ' + Buf + ')';
  //00546B1D
 
end;//0


//00546F14
procedure TGrilleNotesCarnetDeNotes.RefrechAbs(var Msg:TMsg);
var 
 RowCount:integer;
begin
  //00546F14
  RowCount := FichierCdn.EleveCount;
  if (FRow <= 255) then
  begin//1
    //00546F51
    if (FRow <= RowCount) then
    begin//00546F5B
      FichierCdn.AddNoteToPeriode(NPeriode, FCol + 1, FRow,'abs');
      Cells[FCol, FRow] := 'abs';
      keybd_event(13, 0, 0, 0);
      keybd_event(13, 0, 2, 0);
      Options := [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goTabs]; //$80F{gvar_0054702C};
      SendMessageA(MyHandle, 1032, NPeriode, 0);
      SendMessageA(Handle, 1031, FCol, 0);
    end;//2
  end;//1
end;
//00542A24
procedure TGrilleNotesCarnetDeNotes.SetEditTextEvent(Sender:TObject; ACol:integer; ARow:Integer; const Value:String);
var
 lvar_14:TGridRect;
begin//0
  //00542A24..00542A54
    if (ARow = FichierCdn.EleveCount + $0F{gvar_006178FF}) then//00542A7C
      FichierCdn._SetStrNote16(NPeriode, ACol + 1,Cells[ACol, ARow])
	else 
	begin
		FichierCdn.AddNoteToPeriode(NPeriode, ACol + 1, ARow, Cells[ACol, ARow]);
		SendMessageA(Handle, 1031, ACol, 0);
		SendMessageA(MyHandle, 1032, NPeriode, ARow);    
		if (ARow < FichierCdn.EleveCount) then 
			if (f2F8) then 
			begin
				lvar_14.left := ACol;
				lvar_14.Top := ARow + 1;
				lvar_14.Right := ACol;
				lvar_14.Bottom := ARow + 1;
				Selection := lvar_14;
				SendMessageA(MyHandle, 1025, ARow + 1, ACol);
				keybd_event(38, 0, 0, 0);
				keybd_event(38, 0, 2, 0);
				keybd_event(40, 0, 0, 0);
				keybd_event(40, 0, 2, 0);
			end;
	end;
end;//0

//00542C2C
procedure TGrilleNotesCarnetDeNotes.sub_00542C2C(Sender:TObject; Button:TMouseButton; Shift:TShiftState; X:integer; Y:Integer);
var
  ACol, ARow,lvar_1,I,J:integer;
  R:TGridRect;
  buf,buf0,buf1:string;
begin//0
  //00542C2C
  lvar_1 :=$56;
    //00542C5B
    if (FormHint.Visible ) then//00542C68
      FormHint.Hide;
    
    MouseToCell(X, Y, ACol, ARow);
    FCol := ACol;
    FRow := ARow;
    if (Button = mbleft) then
    begin//2
      //00542CA9 
      if (ARow = 0) then
      begin//3
        //00542CB9
        if (GetafficherFenetreInfo) then
        begin//4
          //00542CC6
          FormHint.Color := sub_004BB87C;
          FichierCdn.GetModuleName__v(NPeriode, buf, ACol + 1);
          FormHint.Label1.Caption := buf;
          FichierCdn.__GetStrMin(NPeriode, buf0, ARow + 1);
          FichierCdn.GetStrNoteSur(NPeriode, ACol + 1, buf1);
          FormHint.Label2.Caption := 'Minimum : ' + buf0 + '/' + buf1;
          FichierCdn.__GetStrMax(NPeriode, buf0, ARow + 1);
          FichierCdn.GetStrNoteSur(NPeriode, ACol + 1, buf1);
          FormHint.Label3.Caption := 'Maximum : ' + buf0 + '/' + buf1;
          FichierCdn.GetMoyenne_vv(NPeriode, buf0, ACol + 1);
          FichierCdn.GetStrNoteSur(NPeriode, ACol + 1, buf1);
          FormHint.Label4.Caption := 'Moyenne : ' + buf0 + '/' + buf1;
          FichierCdn.GetEcartType(NPeriode, ARow + 1, buf);
          FormHint.Label5.Caption := 'Ecart type : ' + buf;
          FichierCdn.GetNotesInfMoy_VX(NPeriode, ARow + 1, buf);
          FormHint.Label6.Caption := '% notes < moyenne : ' + buf;
          FichierCdn.GetNotesInfMoyClasse_VX(NPeriode, ARow + 1, buf);
          FormHint.Label7.Caption := '% notes < moyenne classe : ' + buf;
          FormHint.f2F0 := 7;
          FormHint.Show;
        end;//4
      end;//3
    end;//2
    if (Button = mbright) then 
	begin
    if (ARow > 0) then
    begin//2
      //005430D2
      R.Left := ACol;
      R.Top := ARow;
      R.Right := ACol;
      R.bottom := ARow; 
      Selection := R;
      SendMessageA(MyHandle, $401{1025}, ARow, ACol);
    end;//2
    
    I := FichierCdn.GetNbreModules(NPeriode) - 1;//ESI
    
    J := FichierCdn.EleveCount;
    
    
    if (ACol <= 255) then
    begin//2
      //0054316B
      if (ACol < I ) then
      begin//3
        //00543174
        if (ARow = 0) then
        begin//4
          //0054317A
          
          R.Left := ACol;
          R.Top := 1;
          R.Right := ACol;
          R.Bottom := RowCount;
          Selection := R;
          sub_00543714(self);
          TrackPopupMenu(f2E8, 10, ClientToScreen(Point(X,Y)).X, ClientToScreen(Point(X,Y)).Y, 0, Handle, 0);
        end;//4
      end;//3
      
      if (ACol <= 255) then
      begin//3
        //00543217
        if (ACol < I) then
        begin//4
          //00543224
          if (ARow <= 255) then
          begin//5
            //0054324C
            if (ARow < J) then
            begin//6
              //00543255
              sub_00547030(Sender);
              TrackPopupMenu(f2E8, 10, ClientToScreen(Point(X,Y)).X, ClientToScreen(Point(X,Y)).Y, 0, Handle, 0);
            end;//6
          end;//5
        end;//4
        
        if (ACol <= 255) then
        begin//4
          //005432CC
          if (ACol < I) then
          begin//5
            //005432D5
            if ($10 {gvar_00617900} + J = ARow) then
            begin//6
              //005432EB
               sub_00543FA0(self);
               TrackPopupMenu(f2E8, 10, ClientToScreen(Point(X,Y)).X, ClientToScreen(Point(X,Y)).Y, 0, Handle, 0);
            end;//6
          end;//5

          if (ACol <= 255) then
          begin//5
            //00543362
            if (ACol < I) then
            begin//6
              //0054336B
              if ($0E {gvar_006178FE} + J = ARow) then
              begin//7
                //00543381  
                 sub_00543BB4(self); 
                 TrackPopupMenu(f2E8, 10, ClientToScreen(Point(X,Y)).X, ClientToScreen(Point(X,Y)).Y, 0, Handle, 0);
              end;//7
            end;//6

            if (ACol <= 255) then
            begin//6
              //005433F8
              if (ACol < I) then
              begin//7
                //00543401

                if ($0D{gvar_006178FD} + J  = ARow) then
                begin//8
                  //00543417
                  sub_00543EB8(self); 
                   TrackPopupMenu(f2E8, 10, ClientToScreen(Point(X,Y)).X, ClientToScreen(Point(X,Y)).Y, 0, Handle, 0);
                end;//8
              end;//7

              if (ACol <= 255) then
              begin//7
                //0054348E
                if (ACol < I) then
                begin//8
                  //00543497  
                  if ($0C {gvar_006178FC} + J  = ARow) then
                  begin//9
                    //005434AD
                    
                    sub_00546B60(self);
                   
                     TrackPopupMenu(f2E8, 10, ClientToScreen(Point(X,Y)).X, ClientToScreen(Point(X,Y)).Y, 0, Handle, 0);
                  end;//9
                end;//8

                if (ACol <= 255) then
                begin//8
                  //00543524
                  if (ACol < I) then
                  begin//9
                    //0054352D

                    if ($0B{gvar_006178FB} + J  = ARow) then
                    begin//10
                      //00543543
                      
                      sub_00546CCC(self);
                       TrackPopupMenu(f2E8, 10, ClientToScreen(Point(X,Y)).X, ClientToScreen(Point(X,Y)).Y, 0, Handle, 0);
                    end;//10
                  end;//9

                  if (ACol <= 255) then
                  begin//9
                    //005435BA
                    if (ACol < I) then
                    begin//10
                      //005435C3
                      if (J  + $11 {gvar_00617901} <> ARow) then Exit;
                      sub_00547320(self);
                       TrackPopupMenu(f2E8, 10, ClientToScreen(Point(X,Y)).X, ClientToScreen(Point(X,Y)).Y, 0, Handle, 0);
                    end;//10
                  end;//9
                end;//8
              end;//7
            end;//6
          end;//5
        end;//4
      end;//3
    end;//2
	//00543635
    end;
end;//0

//00543714
procedure TGrilleNotesCarnetDeNotes.sub_00543714(sender:TObject);
var
  buf:string;
  I:integer;
begin//0
  //00543714
  
    //00543744
    DestroyMenu(f2E8);
    f2E8 := CreatePopupMenu;
     
    AppendMenuA(f2E8, 0, 1, 'Turbo Menu "Série de notes"');
    AppendMenuA(f2E8, $800{2048}, 1, '-');
    FichierCdn.GetModuleName__v(NPeriode, buf, FCol + 1);
    AppendMenuA(f2E8, 0, 0, PChar('Modifier l''intitulé "' + buf + '" ...'));
    AppendMenuA(f2E8, $800{2048}, 1, '');
    
    
    

      
      for I := 1 to FichierCdn.GetNbrePeriodes  do //00543833
      begin//3
        //00543838
        if (I <> NPeriode) then
        begin//4
          //00543844
         { if (I + 1 0) then
          begin//5
            //005438A8
          end;//5}
          AppendMenuA(f2E8, 0, I+1, PChar('Déplacer vers "' + FichierCdn.GetPeriodName(I) + '"'));
        end//4
        else
        begin//4
          //005438BE
         { if (ESI + 1  0) then
          begin//5
            //00543922
          end;//5}
          AppendMenuA(f2E8, 1,I+1,PChar('Déplacer vers "' + FichierCdn.GetPeriodName(I) + '"') );
        end;//4
      end;//3
    
    
    AppendMenuA(f2E8, $800{2048}, 1, '');
    AppendMenuA(f2E8, 0, FichierCdn.GetNbrePeriodes + 2 , 'Copier les notes dans le Presse-Papiers (sans les noms et les statistiques de la série)');
    AppendMenuA(f2E8, 0, FichierCdn.GetNbrePeriodes + $21{33}, 'Copier les notes dans le Presse-Papiers (avec les noms et les statistiques de la série)');
    
    
    if (Clipboard.HasFormat(1)) then //005439C4
      AppendMenuA(f2E8, 0,FichierCdn.GetNbrePeriodes + 3 , 'Coller les notes depuis le Presse-Papiers')
    else 
    AppendMenuA(f2E8, 1, FichierCdn.GetNbrePeriodes + 3, 'Coller les notes depuis le Presse-Papiers');
	//00543A2F
  
end;//0

//00547030
procedure TGrilleNotesCarnetDeNotes.sub_00547030(Sender:TObject);
var
  I,J:integer;
begin//0
  //00547030
  
    //0054704C
    
   DestroyMenu(f2E8);
    f2E8 := CreatePopupMenu;
   
    I := FichierCdn.GetNbrePeriodes + 2;//ESI
    J := GetTypesdenotes.count;
    
    AppendMenuA(f2E8, 0, 1, 'Turbo Menu "Notes"');
    AppendMenuA(f2E8, $800{2048}, 1, '-');

      //005470D7

    AppendMenuA(f2E8, 0,I + $1D{29} + J , 'Décaler les notes vers le bas');

      //00547109

    
    AppendMenuA(f2E8, 0,I + $1E{30} + J , 'Décaler les notes vers le haut');
    
    if (Trim(Cells[FCol, FRow]) = '') then Exit;
    
    AppendMenuA(f2E8, $800{2048}, 0, '-');
      //005471B4
    AppendMenuA(f2E8, 0,I + $1F{31} + J ,PChar('Copier "' + Cells[FCol, FRow] + '" dans le Presse-Papiers'));
    if (Clipboard.HasFormat(1) ) then
      //005471DA
        //005471F6
      AppendMenuA(f2E8, 0, J + I + $20{32}, 'Coller la note depuis le Presse-Papiers')
    else//00547228    
    AppendMenuA(f2E8, 1, J + I + $20{32}, 'Coller la note depuis le Presse-Papiers');
	//00547249
  
end;//0

//00543FA0
procedure TGrilleNotesCarnetDeNotes.sub_00543FA0(Sender:Tobject);
var
  I,J:integer;
  S:TStringList;
begin//0
  //00543FA0
    //00543FBE
    DestroyMenu(f2E8);
    f2E8 := CreatePopupMenu;
    J := FichierCdn.GetNbrePeriodes + 2;//EAX
    AppendMenuA(f2E8, 0, 1, 'Turbo Menu "Type de notes"');
    AppendMenuA(f2E8, $800{2048}, 1, '-');
    S := GetTypesdenotes;
      for I := 0 to S.count-1 do//0054403D
      begin//3
        //00544043

          //00544073
        
        AppendMenuA(f2E8, 0,J + 10 + I , PChar(S[I]));
      end;//3
      //0054409A
  
end;//0

procedure TGrilleNotesCarnetDeNotes.sub_00543BB4(Sender:Tobject);
var
  I:integer;
begin//0
  //00543BB4
    //00543BD0
    DestroyMenu(f2E8);
    f2E8 := CreatePopupMenu; 
    I := FichierCdn.GetNbrePeriodes + 2;//ESI
    AppendMenuA(f2E8, 0, 1, 'Turbo Menu "Date"');
    AppendMenuA(f2E8, $800{2048}, 1, '-');

      //00543C71
    
    AppendMenuA(f2E8, 0, I + 2, PChar(DateToStr(Date - 2) + ' (avant-hier)'));
      //00543CC5
    AppendMenuA(f2E8, 0, I + 3 , PChar(DateToStr(Date - 1) + ' (hier)'));
      //00543D13
    AppendMenuA(f2E8, 0, I + 4, PChar(DateToStr(Date) + ' (aujourd''hui)'));
      //00543D67
    AppendMenuA(f2E8, 0, I + 5, PChar(DateToStr(Date + 1) + ' (demain)'));
      //00543DBB
    AppendMenuA(f2E8, 0, I + 6 , PChar(DateToStr(Date + 2) + ' (après-demain)'));
      //00543DE2
     AppendMenuA(f2E8, 0, I + 7 , 'Autre ...');
	//00543E03
  
end;//0

//00543EB8
procedure TGrilleNotesCarnetDeNotes.sub_00543EB8(sender:Tobject);
var
 I:integer;
begin//0
  //00543EB8
  
  DestroyMenu(f2E8);
  f2E8 := CreatePopupMenu;
  I := FichierCdn.GetNbrePeriodes + 2;//ESI
  AppendMenuA(f2E8, 0, 1, 'Turbo Menu "Compte dans la moyenne"');
  AppendMenuA(f2E8, $800{2048}, 1, '-');
    //00543F32
  AppendMenuA(f2E8, 0,I + 8 , 'oui');
    //00543F59
  AppendMenuA(f2E8, 0, I + 9 , 'non');
end;//0

//00546B60
procedure TGrilleNotesCarnetDeNotes.sub_00546B60(Sender:TObject);
var
  I,K:integer;
  S:TStringList;
begin//0
  //00546B60
  
    //00546B7E
   
    DestroyMenu(f2E8);
    f2E8 := CreatePopupMenu;
    K := FichierCdn.GetNbrePeriodes + 2;//EDI

    S := GetTypesdenotes;
    
    AppendMenuA(f2E8, 0, 1, 'Turbo Menu "Coefficient"');
    AppendMenuA(f2E8, $800{2048}, 1, '-');
    for I := 0 to 9 do
    begin//2
      //00546BEE
      
        //00546C2E

      AppendMenuA(f2E8, 0, K + 10 + S.count + I , PChar(IntToStr(I + 1)));
    end;//2
    
      //00546C65

    AppendMenuA(f2E8, 0, K + $14{20} + S.count, 'Autre ...');
	//00546C86
  
end;//0

//00546CCC
procedure TGrilleNotesCarnetDeNotes.sub_00546CCC(sender:TObject);
var
  I,J:integer;
begin//0
  //00546CCC
  
  DestroyMenu(f2E8);
  f2E8 := CreatePopupMenu;
  I := FichierCdn.GetNbrePeriodes + 2;//ESI
  J := GetTypesdenotes.count;
  AppendMenuA(f2E8, 0, 1, 'Turbo Menu "Noté sur"');
  AppendMenuA(f2E8, $800{2048}, 1, '-');
    //00546D5C
  AppendMenuA(f2E8, 0, I + $15{21} + J, '20');
    //00546D8E
  AppendMenuA(f2E8, 0, I + $16{22} + J, '10');
    //00546DC0
  AppendMenuA(f2E8, 0, I + $17{23} +J, '5');
    //00546DF2
  AppendMenuA(f2E8, 0, I + $18{24} + J , '30');
    //00546E24
  AppendMenuA(f2E8, 0, I + $19{25} + J, '40');
    //00546E56
  AppendMenuA(f2E8, 0,I + $1A{26} + J , '50');
    //00546E88
  AppendMenuA(f2E8, 0, I + $1B{27} + J, '100');
    //00546EB8
  AppendMenuA(f2E8{EAX}, 0, J + I + $1C{28} , 'Autre ...');
end;//0

//00547320
procedure TGrilleNotesCarnetDeNotes.sub_00547320(Sender:TObject);
var
  I,J:integer;
begin//0
  //00547320
  DestroyMenu(f2E8);
  f2E8 := CreatePopupMenu;
  I := FichierCdn.GetNbrePeriodes + 2;//ESI
  J := GetTypesdenotes.count;
  AppendMenuA(f2E8, 0, 1, 'Turbo Menu "Oral ou écrit"');
  AppendMenuA(f2E8, $800{2048}, 1, '-');
  AppendMenuA(f2E8, 0, I + $21{33} + J, 'Oral');
  AppendMenuA(f2E8, 0, J + I + $22{34}, 'Ecrit');
end;//0


procedure TGrilleNotesCarnetDeNotes.DrawCell(ACol, ARow: Longint; ARect: TRect; AState: TGridDrawState);
begin
    inherited DrawCell(ACol, ARow, ARect, AState);
	_DrawCellNote(self, ACol, ARow, ARect, AState);
end;
procedure TGrilleNotesCarnetDeNotes.MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited MouseDown(Button, Shift, X, Y);
  sub_00542C2C(self,Button, Shift, X, Y);
end;
procedure TGrilleNotesCarnetDeNotes.KeyPressEvent(Sender:TObject; var Key:Char);
begin//0
  //0054290C
  if (f2FA) then
  begin//1
    //00542915
	Key := chr($2C);//',';
    f2FA := false;
  end;//1
  if (f2F9 = false) then 
  begin
	Key := chr(0);
	f2F9 := false;
  end;
end;//0


end.