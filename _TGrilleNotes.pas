{***********************************************************
* Version Original V0.03 build 1                           *
* Decompiled by HOUIDEF AEK v20:59 mercredi, septembre 12, 2018*
* The disassembly process : 99%                            *
************************************************************}
unit _TGrilleNotes;

interface

uses
Forms, Windows,  SysUtils, Classes, Grids, messages, Controls, _TGrilleGenerique, Clipbrd, UFichierCdn, dialogs,
Graphics,UBiblio,_FormHint,_FormEdit,_Calendrier;

type
  TGrilleNotesCarnetDeNotes = class(TGrilleGeneriqueCarnetDeNotes)
  {protected
    procedure DrawCell(ACol, ARow: Longint; ARect: TRect; AState: TGridDrawState);override; //supprimer le
	procedure MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); override;  //supprimer le }
  public
    FPopupMenu_:dword;//f2E8
    FIdNumNote:dword;//f2EC
    FIdRow:dword;//f2F0
    f2F4:dword;//f2F4
	FKeyDown:Boolean;//f2F8
	FKeyPress:boolean;
	FKeyPressCamma:boolean; // f2FA
    destructor Destroy; virtual;//00542298
    procedure EvOnDrawCell(Sender:Tobject; ACol:Longint; ARow:Longint; ARect:TRect; AState:TGridDrawState);
    procedure WMCommand(var Message:TWMCommand); message WM_COMMAND;//005440D4
    procedure EvSetTitleModules(var Message:TMsg); message $403; //005464FC
    procedure EvAddBasListEleve(var Msg:TMsg);  message $407;//0054672C ??????
    procedure EvSetAbs(var Msg:TMsg);  message $414;//00546F14
    constructor Create(AOwner:TComponent; FeuilleClasse:TComponent; Periode:byte; FichierCdn:TFichierCdn);//00542198
	procedure EvOnKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);//005428C4
	procedure EvOnKeyPress(Sender:TObject; var Key:Char);
    procedure EvOnSelectCell(Sender: TObject; ACol,ARow: Integer; var CanSelect: Boolean);//00542934
	procedure EvOnSetEditTextl(Sender:TObject; ACol:integer; ARow:Integer; const Value:String); //00542A24
	procedure EvOnMouseDown(Sender:TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer); //00542C2C
	procedure CreatePopupMenuSerieNotes(Sender:TObject);
	procedure CreatePopupMenuNotes(Sender:TObject);
	procedure CreatePopupMenuTypeNotes(Sender:TObject);
	procedure CreatePopupMenuDate(Sender:TObject);
	procedure CreatePopupCompteMoyenne(Sender:TObject);
	procedure CreatePopupCoefficient(Sender:TObject);
	procedure CreatePopupNoteSur(Sender:TObject);
	procedure CreatePopupOralEcrit(Sender:TObject);
  end;
    


implementation
    uses constantes;
//00542198
constructor TGrilleNotesCarnetDeNotes.Create(AOwner:TComponent; FeuilleClasse:TComponent; Periode:byte; FichierCdn:TFichierCdn);
begin//0
  FGrilleType := 1;
  inherited  Create(AOwner,0,FeuilleClasse,FichierCdn,Periode);
 // Self.FichierCdn := c;
  FPopupMenu_ := 0;
  FixedCols := 0;
  FixedRows :=1;
  ColCount :=1;
  f2F4 := 0;
  DefaultRowHeight := 18;
  DefaultDrawing := False;
  OnDrawCell :=  EvOnDrawCell;
  OnKeyPress := EvOnKeyPress;
  OnKeyDown := EvOnKeyDown;
  OnSelectCell := EvOnSelectCell;
  OnSetEditText := EvOnSetEditTextl;
  OnMouseDown := EvOnMouseDown;
end;
//005422CC
procedure TGrilleNotesCarnetDeNotes.EvOnDrawCell(Sender:Tobject; ACol:Longint; ARow:Longint; ARect:TRect; AState:TGridDrawState);
var
 buf :string;
 lvar_5C : TRect;
begin//0
  //005422CC
    EvOnDrawCell_(Sender, ACol, ARow, ARect, AState);
    Canvas.Font.Style := []{gvar_005428A4};
    if (FichierCdn.NbreEleves + IdMoyenne_ = ARow) then //00542388
      Canvas.Font.Style := [fsBold]{gvar_005428A8};
    if (ARow > 0) then
    begin//005423A9
      if (FichierCdn.NbreEleves + 1 > ARow) then
      begin//005423CF
        if (GetColorationGrille) then
        begin//005423DC
          if (Cells[ACol, ARow] = 'abs') Or (Cells[ACol, ARow] = '') then //00542415
            Canvas.Font.Color := 0
          else
          begin//5
            //0054242D
            try
              //0054243B
              if (StrToFloat(Cells[ACol, ARow]) < 0{gvar_005428A4}) Or ( StrToFloat(Cells[ACol, ARow]) > StrToFloat(FichierCdn.GetDateNoteSur( FPeriode, ACol + 1))) then //005424CC
				Canvas.Brush.Color := GetColor5Note;
            except//6
              on E:EConvertError do
              begin//005424FF
                if (GetColorationGrille) then//00542508
                  Canvas.Brush.Color := GetColor5Note
                else//00542522;
                  Canvas.Brush.Color := $FFFFFF;
              end;//7
            end;//6
          end;//5
        end;//4       
        if (GetColorationNote) then
        begin//0054254A
          if (Cells[ACol, ARow] = 'abs') Or (Cells[ACol, ARow] = '') then//0054258F
            Canvas.Font.Color := 0
          else
          begin//005425A7
            try
              //005425B5
              buf := fichierCdn.GetDateNoteSur(FPeriode, ACol + 1);
              if (StrToFloat(Cells[ACol, ARow]) < 0{gvar_005428A4}) Or (StrToFloat(Cells[ACol, ARow]) > StrToFloat(buf)) then//0054264C
                Canvas.Font.Color := GetColor4Note
              else
              begin//00542669
			    if (StrToFloat(Cells[ACol, ARow]) < StrToFloat(buf)/2) then//0054268A
			       Canvas.Font.Color := GetColor1Note
				else
				  if (StrToFloat(Cells[ACol, ARow]) >= StrToFloat(buf)*3/4) then
				   Canvas.Font.Color := GetColor3Note
				  else //005426CA
				   Canvas.Font.Color:= GetColor2Note;
              end;//7
            except//6
              on E:EConvertError do
              begin//00542722
                if (GetColorationGrille) then//0054272B
                  Canvas.Brush.Color := GetColor5Note
                else//00542745
                  Canvas.Brush.Color := $FFFFFF;
              end;//7
              on E:EMathError do
              begin//0054275D
                if (GetColorationGrille) then//00542766
                  Canvas.Brush.Color := GetColor5Note
                else//00542780
                  Canvas.Brush.Color := $FFFFFF;
              end;//7
            end;//6
          end;//5
        end;//4
      end;//3
    end;//2
    if (gdSelected in AState) then//005427A1
      if (GetColorationGrille) then//005427AA
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
  DestroyMenu(FPopupMenu_);
  inherited destroy;
end;//0

//005428C4
procedure TGrilleNotesCarnetDeNotes.EvOnKeyDown(Sender:TObject; var Key:Word; Shift:TShiftState);
begin//0
  //005428C4
  FKeyPressCamma := (Key = $6E{110});
  FKeyDown := (Key = 13);
  if (Key = $6D{109}) then 
  begin
	FKeyPress := true;
	SendMessageA(Handle, $414, 0, 0);
  end;
end;//0

//00542934
procedure TGrilleNotesCarnetDeNotes.EvOnSelectCell(Sender: TObject; ACol,ARow: Integer; var CanSelect: Boolean);
begin//0
  //00542934
  FIdRow := ARow;
  FIdNumNote := ACol;
  SendMessageA(FeuilleClasseHandle, $401, ARow, 0);
  Options := [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goTabs];{gvar_00542A1C}; ////$080F;
 //005429BA  
    if (((ACol < FichierCdn.NbrSerieNotes(FPeriode)+ 1) and (ARow < FichierCdn.NbreEleves+ 1)) or (ARow = FichierCdn.NbreEleves + IdCommentaire))then
	begin//005429DA
		Options  := [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine,goEditing, goTabs]; //$C0F;//gvar_00542A20;
		CanSelect := True;
	end;//2
end;

//005440D4
procedure TGrilleNotesCarnetDeNotes.WMCommand(var Message:TWMCommand);
var
 KI,KJ,I,J:integer;
 text:string;
 lvar_8,lvar_C : TStringList;
begin//0
    KI := FichierCdn.NbrePeriodes + 2;//ESI
    if (Message.ItemID = 0) then
    begin//2
      //00544124
      FormEdit{gvar_00617CEx0} := TFormEdit.Create(Self, 'Modifier intitulé', FichierCdn.GetTitleModule(FPeriode, FIdNumNote + 1),1);
      FormEdit.ShowModal;
      if (FormEdit.ModalResult = 1) then
      begin//3
        //005441AB
        Cells[FIdNumNote, FIdRow] :=  FormEdit.Edit1.Text + ' (sur ' + FichierCdn.GetDateNoteSur(FPeriode, FIdNumNote + 1) + ')';
        FichierCdn.SetData_V3(FPeriode,FIdNumNote + 1,FormEdit.Edit1.Text);
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
        if (Message.ItemID - 1 = FPeriode) then Exit;
        FichierCdn.CreerListeElevesNotes(FPeriode, FIdNumNote + 1, Message.ItemID - 1);
        SendMessageA(Handle, $403, FPeriode, 0);
        SendMessageA(FeuilleClasseHandle, $408, FPeriode, 0);
        SendMessageA(FeuilleClasseHandle, $40E, 0, 0);
      end//3
      else
      if (KI = Message.ItemID) then
      begin//3
        //005443C6
        Clipboard.Clear;
		text:= '';
        if (FichierCdn.NbreEleves  > 0) then
        begin//4
          //005443E8
          for I := 1 to FichierCdn.NbreEleves do
          begin//5
            //005443F0
			text:=text + FichierCdn.Get_Sum(FPeriode, FIdNumNote + 1, I) + #13 + #10
          end;//5
        end;//4
        Clipboard.SetTextBuf(PChar(text + #13 + #10));
      end//3
      else
      if (Message.ItemID = KI + $1F{31}) then
      begin//3
        //0054449E
        Clipboard.Clear;
          //005444C2
          for I := 1 to FichierCdn.NbreEleves do
          begin//5
            //005444CA
			text := text + FichierCdn.GetEleveName(I) + ' ' + FichierCdn.Get_Sum(FPeriode, FIdNumNote + 1, I) + #13 + #10;
          end;//5
        text := text + #13 + #10;
        text := text + 'Nombre d''élèves présents : ' + FichierCdn.GetNombreElevePresents(FPeriode, FIdNumNote + 1) + #13 + #10;
        text := text + 'Minimum : ' +  FichierCdn.GetMinNote__(FPeriode, FIdNumNote + 1) + '/' +  FichierCdn.GetDateNoteSur( FPeriode, FIdNumNote + 1) + #13 + #10;
        text := text + 'Maximum : ' + FichierCdn.GetMaxNote__(FPeriode, FIdNumNote + 1) + '/' + FichierCdn.GetDateNoteSur(FPeriode, FIdNumNote + 1) + #13 + #10;
        text := text + 'Moyenne : ' + FichierCdn.GetMoyenne___(FPeriode, FIdNumNote + 1) + '/' + FichierCdn.GetDateNoteSur(FPeriode, FIdNumNote + 1) + #13 + #10;
        text := text + 'Ecart type : ' + FichierCdn.GetEcartType(FPeriode, FIdNumNote + 1) + #13 + #10;
        text := text + '% notes < moyenne : ' + FichierCdn.GetPersentNotesInfMoyenne(FPeriode, FIdNumNote + 1) + #13 + #10;
        text := text + '% notes < moyenne classe : ' + FichierCdn.GetPersentNotesInfMoyenneClasse(FPeriode, FIdNumNote + 1);
        Clipboard.SetTextBuf(PChar(text));
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
          if (lvar_8.count > FichierCdn.NbreEleves ) then//005449D9
			J := FichierCdn.NbreEleves
          else//005449EB
            J := lvar_8.count;

            for I := 1 to J  do//005449FB
            begin//6
              //00544A03
              Cells[FIdNumNote, I]:= lvar_8[I - 1];
              FichierCdn.SetAbs(FPeriode, FIdNumNote + 1, 0, lvar_8[I - 1]);
            end;//6
           lvar_8.destroy;
           SendMessageA(Handle, $407{1031}, FIdNumNote, 0);
           SendMessageA(FeuilleClasseHandle, $408{1032}, FPeriode, 0);
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
          Cells[FIdNumNote, FIdRow] :=  DateToStr(Date - 4 - KI + Message.ItemID);
          FichierCdn.SetData_V5(FPeriode, FIdNumNote + 1,DateToStr(Date - 4 - KI + Message.ItemID));
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
			FichierCdn.SetData_V5(FPeriode, FIdNumNote + 1, DateToStr(FormCalendrier.MonthCalendar1.Date));
			Cells[FIdNumNote, FIdRow] := DateToStr(FormCalendrier.MonthCalendar1.Date);
		  end;
		  FormCalendrier.Free;
        end//4
        else
        if (Message.ItemID = KI + 8) then
        begin//4
          //00544D8A
          if (Cells[FIdNumNote, FIdRow] <> 'oui') then
          begin//5
            //00544DBA
            Cells[FIdNumNote, FIdRow] :=  'oui';
            {EAX := }FichierCdn.SetData_V7(FPeriode, FIdNumNote + 1,'oui');
             SendMessageA(FeuilleClasseHandle, $408{1032}, FPeriode, 0);
          end;//5
        end//4
        else
        if (Message.ItemID = KI + 9) then
        begin//4
          //00544E3D
          if ( Cells[FIdNumNote, FIdRow] <> 'non') then
          begin//5
            //00544E6D
            Cells[FIdNumNote, FIdRow] := 'non';
            {EAX := }FichierCdn.SetData_V7(FPeriode, FIdNumNote + 1,'non');
             SendMessageA(FeuilleClasseHandle, $408{1032}, FPeriode, 0);
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
            Cells[FIdNumNote, FIdRow] :=  lvar_C[Message.ItemID - 10 - KI];
            FichierCdn.SetData_V6( FPeriode, FIdNumNote + 1,lvar_C[Message.ItemID - 10 - KI]);
          end//5
		  else
            //0054507C
            if (Message.ItemID  < KI + $13 + lvar_C.count) then
            begin//6
              //0054508E
              Cells[FIdNumNote, FIdRow ] :=  IntToStr(Message.ItemID - KI - 10 - lvar_C.count + 1);
              FichierCdn.SetPeriodeTraiteList_H02(FPeriode, FIdNumNote + 1,IntToStr( Message.ItemID - KI - 10 - lvar_C.count + 1));
               SendMessageA(FeuilleClasseHandle, $408{1032}, FPeriode, 0);
            end//6
			else
  
            if (lvar_C.count +  KI + $14{20} = Message.ItemID) then
            begin//6
              //005451C4
              FormEdit := TFormEdit.Create(Self, 'Coefficient de la série', FichierCdn.Get_Coefficient(FPeriode, FIdNumNote + 1),1);
              FormEdit.ShowModal;
              if (FormEdit.ModalResult = 1) then
              begin//7
                //00545251
                if (Cells[FIdNumNote, FIdRow] <> FormEdit.Edit1.Text) then
                begin//8
                  //0054529C
                  Cells[FIdNumNote, FIdRow] := FormEdit.Edit1.Text;
                  FichierCdn.SetPeriodeTraiteList_H02(FPeriode, FIdNumNote + 1,FormEdit.Edit1.Text);
                   SendMessageA(FeuilleClasseHandle, $408{1032}, FPeriode, 0);
                end;//8
              end;//7
              FormEdit.Destroy;
            end//6
			else
            if (lvar_C.count + KI + $15{21} = Message.ItemID) then
            begin//6
              //0054538C
              if (Cells[FIdNumNote, FIdRow] <> '20') then
              begin//7
                //005453BC
                Cells[FIdNumNote, FIdRow ] :=  '20';
                FichierCdn.SetPeriodeTraiteList_H03(FPeriode, FIdNumNote + 1,'20');
                 SendMessageA(Handle, $407{1031}, FIdNumNote, 0);
                 SendMessageA(FeuilleClasseHandle, $408{1032}, FPeriode, 0);
                 SendMessageA(FeuilleClasseHandle, $405{1029}, 0, 0);
              end;//7
            end//6
			else
           if (lvar_C.count + KI+ $16{22} = Message.ItemID) then
            begin//6
              //00545484
              if (Cells[FIdNumNote, FIdRow] <> '10') then
              begin//7
                //005454B4
                Cells[FIdNumNote, FIdRow] :=  '10';
                FichierCdn.SetPeriodeTraiteList_H03(FPeriode,FIdNumNote + 1,'10');
                 SendMessageA(Handle, $407{1031}, FIdNumNote, 0);
                 SendMessageA(FeuilleClasseHandle, $408{1032}, FPeriode, 0);
                 SendMessageA(FeuilleClasseHandle, $405{1029}, 0, 0);
              end;//7
            end//6
			else
            
            if (lvar_C.count + KI + $17{23} = Message.ItemID) then
            begin//6
              //0054557C
              if (Cells[FIdNumNote, FIdRow] <> '5') then
              begin//7
                //005455AC
                Cells[FIdNumNote, FIdRow ] := '5';
                FichierCdn.SetPeriodeTraiteList_H03(FPeriode, FIdNumNote + 1,'5');
                 SendMessageA(Handle, $407{1031}, FIdNumNote, 0);
                 SendMessageA(FeuilleClasseHandle, $408{1032}, FPeriode, 0);                 
				 SendMessageA(FeuilleClasseHandle, $405{1029}, 0, 0);
              end;//7
            end//6
			else
            
            if (lvar_C.count + KI + $18{24} = Message.ItemID) then
            begin//6
              //00545674
              if (Cells[FIdNumNote, FIdRow] <> '30') then
              begin//7
                //005456A4
                Cells[FIdNumNote, FIdRow ] :=  '30';
                FichierCdn.SetPeriodeTraiteList_H03(FPeriode, FIdNumNote + 1,'30');
                 SendMessageA(Handle, $407{1031}, FIdNumNote, 0);
                 SendMessageA(FeuilleClasseHandle, $408{1032}, FPeriode, 0);
                 SendMessageA(FeuilleClasseHandle, $405{1029}, 0, 0);
              end;//7
            end//6
			else
            if (lvar_C.count + KI + $19{25} = Message.ItemID) then
            begin//6
              //0054576C
              if (Cells[FIdNumNote, FIdRow] <> '40') then
              begin//7
                //0054579C
                Cells[FIdNumNote, FIdRow] := '40';
                FichierCdn.SetPeriodeTraiteList_H03(FPeriode, FIdNumNote + 1,'40');
                 SendMessageA(Handle, $407{1031}, FIdNumNote, 0);
                 SendMessageA(FeuilleClasseHandle, $408{1032}, FPeriode, 0);
                 SendMessageA(FeuilleClasseHandle, $405{1029}, 0, 0);
              end;//7
            end//6
			else

            if (lvar_C.count +KI + $1A{26} = Message.ItemID) then
            begin//6
              //00545864
              if (Cells[FIdNumNote, FIdRow] <> '50') then
              begin//7
                //00545894
                Cells[FIdNumNote, FIdRow ] :=  '50';
                FichierCdn.SetPeriodeTraiteList_H03( FPeriode, FIdRow,'50');
                 SendMessageA(Handle, $407, FIdNumNote, 0);
                 SendMessageA(FeuilleClasseHandle, $408, FPeriode, 0);
                 SendMessageA(FeuilleClasseHandle, $405, 0, 0);
                Exit;
              end;//7
            end;//6
            if ( lvar_C.count + KI + $1B{27} = Message.ItemID) then
            begin//6
              //0054595C
              if (Cells[FIdNumNote, FIdRow] <> '100') then
              begin//7
                //0054598C
                Cells[FIdNumNote, FIdRow] :=  '100';
                FichierCdn.SetPeriodeTraiteList_H03(FPeriode, FIdNumNote + 1,'100');
                 SendMessageA(Handle, $407, FIdNumNote, 0);
                 SendMessageA(FeuilleClasseHandle, $408, FPeriode, 0);
                 SendMessageA(FeuilleClasseHandle, $405, 0, 0);
                Exit;
              end;//7
           
            if (lvar_C.count + KI + $1C{28} = Message.ItemID) then
            begin//6
              //00545A54
              FormEdit := TFormEdit.Create(Self, 'Noté sur', FichierCdn.GetDateNoteSur(FPeriode, FIdNumNote + 1),1);
              FormEdit.ShowModal;
              if (FormEdit.ModalResult = 1) then
              begin//7
                //00545AE1
                if (Cells[FIdNumNote, FIdRow] <> FormEdit.Edit1.Text) then
                begin//8
                  //00545B2C
                  Cells[FIdNumNote, FIdRow] := FormEdit.Edit1.Text;
                  FichierCdn.SetPeriodeTraiteList_H03(FPeriode, FIdNumNote + 1,FormEdit.Edit1.Text);
                   SendMessageA(FormEdit.Handle, $407, FIdNumNote, 0);
                   SendMessageA(FeuilleClasseHandle, $408, FPeriode, 0);
                   SendMessageA(FeuilleClasseHandle, $405, 0, 0);
                end;//8
              end;//7
              FormEdit.Destroy;
            end//6
			else
            if (lvar_C.count + KI + $1D{29} = Message.ItemID) then
            begin//6
              //00545C51

                for I := FichierCdn.NbreEleves  to FIdRow + 1 do//00545C7E
                begin//8
                  //00545C82
                 
                  FichierCdn.SetAbs(FPeriode, FIdNumNote + 1, I , FichierCdn.Get_Sum(FPeriode, FIdNumNote + 1, I ));
                end;//8
             
              if (FichierCdn.NbreEleves <> FIdRow) then
              begin//7
                //00545D29
                //FichierCdn.SetAbs(FPeriode, FIdNumNote + 1, FIdRow, 4);
              end;//7
               SendMessageA(FeuilleClasseHandle, $408{1032}, FPeriode, 0);
               SendMessageA(Handle, $403{1027}, FPeriode, 0);
              Exit;
            end;//6

            if (lvar_C.count + KI + $1E{30} = Message.ItemID) then
            begin//6
              //00545DD5
                for I := 1 to FIdRow - 1 do //00545DF3
                begin//8
                  //00545DFB
                  FichierCdn.SetAbs(FPeriode, FIdNumNote + 1, I+1 , FichierCdn.Get_Sum(FPeriode, FIdNumNote + 1, I+1 ));
                end;//8
              if (FIdRow <> 1) then
              begin//7
                //00545E99
                //FichierCdn.SetAbs(FPeriode, FIdNumNote + 1, FIdRow, 4);
              end;//7
               SendMessageA(FeuilleClasseHandle, $408, FPeriode, 0);
               SendMessageA(Handle, $403, FPeriode, 0);
            end//6
			else
            if (lvar_C.count + KI + $1F{31} = Message.ItemID) then
            begin//6
              //00545F3B
              Clipboard.Clear;
              text := '';
              Clipboard.SetTextBuf(PChar(text + Cells[FIdNumNote, FIdRow] + #13 + #10));
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
                  Cells[FIdNumNote, FIdRow] := lvar_8[0];
                  FichierCdn.SetAbs(FPeriode, FIdNumNote + 1, FIdRow, lvar_8[0]);
                  lvar_8.Free;
                   SendMessageA(Handle, $407, FIdNumNote, 0);
                   SendMessageA(FeuilleClasseHandle, $408, FPeriode, 0);
                end;//8
              end;//7
            end;//6
            if (lvar_C.count + KI + $21{33} =Message.ItemID) then
            begin//6
              //00546119
              if (Cells[FIdNumNote, FIdRow] <> 'Oral') then
              begin//7
                //00546149
                Cells[FIdNumNote, FIdRow] := 'Oral';
                FichierCdn.SetEcritOral_(FPeriode, FIdNumNote + 1, true);
              end;//7
            end//6
			else
            if (lvar_C.count + KI + $22{34} <> Message.ItemID) then Exit;
            if (Cells[FIdNumNote, FIdRow] <> 'Ecrit') then
            begin//6
              //005461E8 
              Cells[FIdNumNote, FIdRow] :=  'Ecrit';
              FichierCdn.SetEcritOral_(FPeriode, FIdNumNote + 1, false);
            end;//6
          end;//5
        end;//4
		end;
      end;//3
    end;//2
    //0054623D
end;//0


//005464FC
procedure TGrilleNotesCarnetDeNotes.EvSetTitleModules(var Message:TMsg);
var 
  I:integer;
  b:boolean;
begin//0
//error here
	FPeriode:=Message.Message;  //periode
	RowCount := FichierCdn.NbreEleves + IdNbrEleves__;
	if (FichierCdn.NbrSerieNotes(FPeriode) > 0) then//0054657F
		ColCount := FichierCdn.NbrSerieNotes(FPeriode)
	else//0054658A
		ColCount := 1;
	for I := 1 to FichierCdn.NbrSerieNotes(FPeriode) do //005465B1
	begin //005465B9
		Cols[I - 1] :=  FichierCdn.GetDataCols(FPeriode, I);
		Cols[I - 1].Strings[0] := FichierCdn.GetTitleModule(FPeriode, I) + ' (sur ' + FichierCdn.GetDateNoteSur(FPeriode, I) + ')' ;
		SendMessageA(Handle, $407, I - 1, 0);
	end;//3
	Visible := (FichierCdn.NbrSerieNotes(FPeriode) <> 0);
end;

//0054672C
procedure TGrilleNotesCarnetDeNotes.EvAddBasListEleve(var Msg:TMsg);
var
 NbrEleves:integer;
begin//0
    NbrEleves :=  FichierCdn.NbreEleves;
    Cells[Msg.Message, NbrEleves + IdElevesPresents_] := FichierCdn.GetNombreElevePresents(FPeriode, Msg.Message + 1);
    Cells[Msg.Message, NbrEleves + IdMin_ ] :=  FichierCdn.GetMinNote__(FPeriode, Msg.Message + 1);
    Cells[Msg.Message, NbrEleves + IdMax_] :=  FichierCdn.GetMaxNote__(FPeriode, Msg.Message + 1);
    Cells[Msg.Message, NbrEleves + IdMoyenne_] :=  FichierCdn.GetMoyenne___(FPeriode, Msg.Message+1);
    Cells[Msg.Message, NbrEleves + IdEcartType_] :=  FichierCdn.GetEcartType(FPeriode, Msg.Message + 1);
    Cells[Msg.Message, NbrEleves + IdNoteInfMoy_] := FichierCdn.GetPersentNotesInfMoyenne(FPeriode, Msg.Message + 1);
    Cells[Msg.Message, NbrEleves + IdNoteInfMoyClasse_] :=  FichierCdn.GetPersentNotesInfMoyenneClasse(FPeriode, Msg.Message + 1);
    //Cells[Msg.Message, 0] :=  FichierCdn.GetTitleModule( FPeriode, Msg.Message + 1) + ' (sur ' + FichierCdn.GetDateNoteSur( FPeriode, Msg.Message + 1) + ')';
end;//0

//00546F14
procedure TGrilleNotesCarnetDeNotes.EvSetAbs(var Msg:TMsg);
var 
 RowCount:integer;
begin
  RowCount := FichierCdn.NbreEleves;
    //00546F51
    if (FIdRow <= RowCount) then
    begin//00546F5B
      FichierCdn.SetAbs(FPeriode, FIdNumNote + 1, FIdRow,'abs');
      Cells[FIdNumNote, FIdRow] := 'abs';
      keybd_event(13, 0, 0, 0);
      keybd_event(13, 0, 2, 0);
      Options := [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goTabs]; //$80F gvar_0054702C;
      SendMessageA(FeuilleClasseHandle, $408, FPeriode, 0);
      SendMessageA(Handle, $407, FIdNumNote, 0);
    end;//2
end;
//00542A24
procedure TGrilleNotesCarnetDeNotes.EvOnSetEditTextl(Sender:TObject; ACol:integer; ARow:Integer; const Value:String);
var
 R:TGridRect;
begin//0
  //00542A24..00542A54
    if (ARow = FichierCdn.NbreEleves + IdCommentaire) then//00542A7C
	begin
      FichierCdn.SetData_V4(FPeriode, ACol + 1,Cells[ACol, ARow]);
	end
	else 
	begin
		FichierCdn.SetAbs(FPeriode, ACol + 1, ARow, Cells[ACol, ARow]);
		SendMessageA(Handle, $407, ACol, 0);
		SendMessageA(FeuilleClasseHandle, $408, FPeriode, ARow);    
		if (ARow < FichierCdn.NbreEleves) then 
			if (FKeyDown) then 
			begin
				R.left := ACol;
				R.Top := ARow + 1;
				R.Right := ACol;
				R.Bottom := ARow + 1;
				Selection := R;
				SendMessageA(FeuilleClasseHandle, $401, ARow + 1, ACol);
				keybd_event(38, 0, 0, 0);
				keybd_event(38, 0, 2, 0);
				keybd_event(40, 0, 0, 0);
				keybd_event(40, 0, 2, 0);
			end;
	end;
end;//0

//00542C2C
procedure TGrilleNotesCarnetDeNotes.EvOnMouseDown(Sender:TObject; Button:TMouseButton; Shift:TShiftState; X:integer; Y:Integer);
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
    FIdNumNote := ACol;
    FIdRow := ARow;
    if (Button = mbleft) then
    begin//2
      //00542CA9 
      if (ARow = 0) then
      begin//3
        //00542CB9
        if (GetAfficherFenetreInfo) then
        begin//4
          //00542CC6
          FormHint.Color := GetcouleurFenetreInfo;
          FormHint.Label1.Caption := FichierCdn.GetTitleModule(FPeriode, ACol + 1);
          FormHint.Label2.Caption := 'Minimum : ' + FichierCdn.GetMinNote__(FPeriode, ARow + 1) + '/' + FichierCdn.GetDateNoteSur(FPeriode, ACol + 1);
          FormHint.Label3.Caption := 'Maximum : ' + FichierCdn.GetMaxNote__(FPeriode, ARow + 1) + '/' + FichierCdn.GetDateNoteSur(FPeriode, ACol + 1);
          FormHint.Label4.Caption := 'Moyenne : ' + FichierCdn.GetMoyenne___(FPeriode, ACol + 1) + '/' + FichierCdn.GetDateNoteSur(FPeriode, ACol + 1);
          FormHint.Label5.Caption := 'Ecart type : ' + FichierCdn.GetEcartType(FPeriode, ARow + 1);
          FormHint.Label6.Caption := '% notes < moyenne : ' + FichierCdn.GetPersentNotesInfMoyenne(FPeriode, ARow + 1);
          FormHint.Label7.Caption := '% notes < moyenne classe : ' + FichierCdn.GetPersentNotesInfMoyenneClasse(FPeriode, ARow + 1);
          FormHint.IdHint := 7;
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
      SendMessageA(FeuilleClasseHandle, $401, ARow, ACol);
    end;//2
    I := FichierCdn.NbrSerieNotes(FPeriode) - 1;//ESI
    J := FichierCdn.NbreEleves;
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
          CreatePopupMenuSerieNotes(self);
          TrackPopupMenu(FPopupMenu_, 10, ClientToScreen(Point(X,Y)).X, ClientToScreen(Point(X,Y)).Y, 0, Handle, 0);
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
              CreatePopupMenuNotes(Sender);
              TrackPopupMenu(FPopupMenu_, 10, ClientToScreen(Point(X,Y)).X, ClientToScreen(Point(X,Y)).Y, 0, Handle, 0);
            end;//6
          end;//5
        end;//4
        if (ACol <= 255) then
        begin//4
          //005432CC
          if (ACol < I) then
          begin//5
            //005432D5
            if (IdTypeNote + J = ARow) then
            begin//6
              //005432EB
               CreatePopupMenuTypeNotes(self);
               TrackPopupMenu(FPopupMenu_, 10, ClientToScreen(Point(X,Y)).X, ClientToScreen(Point(X,Y)).Y, 0, Handle, 0);
            end;//6
          end;//5
          if (ACol <= 255) then
          begin//5
            //00543362
            if (ACol < I) then
            begin//6
              //0054336B
              if (IdDateCreation + J = ARow) then
              begin//7
                //00543381  
                 CreatePopupMenuDate(self); 
                 TrackPopupMenu(FPopupMenu_, 10, ClientToScreen(Point(X,Y)).X, ClientToScreen(Point(X,Y)).Y, 0, Handle, 0);
              end;//7
            end;//6
            if (ACol <= 255) then
            begin//6
              //005433F8
              if (ACol < I) then
              begin//7
                //00543401
                if (IdCompteMoyenne + J  = ARow) then
                begin//8
                  //00543417
                  CreatePopupCompteMoyenne(self); 
                   TrackPopupMenu(FPopupMenu_, 10, ClientToScreen(Point(X,Y)).X, ClientToScreen(Point(X,Y)).Y, 0, Handle, 0);
                end;//8
              end;//7
              if (ACol <= 255) then
              begin//7
                //0054348E
                if (ACol < I) then
                begin//8
                  //00543497  
                  if (IdCoefficient + J  = ARow) then
                  begin//9
                    //005434AD
                    CreatePopupCoefficient(self);
                     TrackPopupMenu(FPopupMenu_, 10, ClientToScreen(Point(X,Y)).X, ClientToScreen(Point(X,Y)).Y, 0, Handle, 0);
                  end;//9
                end;//8
                if (ACol <= 255) then
                begin//8
                  //00543524
                  if (ACol < I) then
                  begin//9
                    //0054352D
                    if (IdNoteSur + J  = ARow) then
                    begin//10
                      //00543543
                      CreatePopupNoteSur(self);
                       TrackPopupMenu(FPopupMenu_, 10, ClientToScreen(Point(X,Y)).X, ClientToScreen(Point(X,Y)).Y, 0, Handle, 0);
                    end;//10
                  end;//9
                  if (ACol <= 255) then
                  begin//9
                    //005435BA
                    if (ACol < I) then
                    begin//10
                      //005435C3
                      if (J  + IdOralEcrit <> ARow) then Exit;
                      CreatePopupOralEcrit(self);
                       TrackPopupMenu(FPopupMenu_, 10, ClientToScreen(Point(X,Y)).X, ClientToScreen(Point(X,Y)).Y, 0, Handle, 0);
                    end;//10
                  end;//9
                end;//8
              end;//7
            end;//6
          end;//5
        end;//4
      end;//3
    end;//2
    end;
end;//0

//00543714
procedure TGrilleNotesCarnetDeNotes.CreatePopupMenuSerieNotes(sender:TObject);
var
  buf:string;
  I:integer;
begin//0
  //00543714
    //00543744
    DestroyMenu(FPopupMenu_);
    FPopupMenu_ := CreatePopupMenu;
    AppendMenuA(FPopupMenu_, 0, 1, 'Turbo Menu "Série de notes"');
    AppendMenuA(FPopupMenu_, $800{2048}, 1, '-');
    buf := FichierCdn.GetTitleModule(FPeriode, FIdNumNote + 1);
    AppendMenuA(FPopupMenu_, 0, 0, PChar('Modifier l''intitulé "' + buf + '" ...'));
    AppendMenuA(FPopupMenu_, $800{2048}, 1, '');
      for I := 1 to FichierCdn.NbrePeriodes  do //00543833
      begin//3
        //00543838
        if (I <> FPeriode) then
        begin//4
          //00543844
         { if (I + 1 0) then
          begin//5
            //005438A8
          end;//5}
          AppendMenuA(FPopupMenu_, 0, I+1, PChar('Déplacer vers "' + FichierCdn.GetPeriodeName(I) + '"'));
        end//4
        else
        begin//4
          //005438BE
         { if (ESI + 1  0) then
          begin//5
            //00543922
          end;//5}
          AppendMenuA(FPopupMenu_, 1,I+1,PChar('Déplacer vers "' + FichierCdn.GetPeriodeName(I) + '"') );
        end;//4
      end;//3
    AppendMenuA(FPopupMenu_, $800, 1, '');
    AppendMenuA(FPopupMenu_, 0, FichierCdn.NbrePeriodes + 2 , 'Copier les notes dans le Presse-Papiers (sans les noms et les statistiques de la série)');
    AppendMenuA(FPopupMenu_, 0, FichierCdn.NbrePeriodes + $21{33}, 'Copier les notes dans le Presse-Papiers (avec les noms et les statistiques de la série)');
    if (Clipboard.HasFormat(1)) then //005439C4
      AppendMenuA(FPopupMenu_, 0,FichierCdn.NbrePeriodes + 3 , 'Coller les notes depuis le Presse-Papiers')
    else 
    AppendMenuA(FPopupMenu_, 1, FichierCdn.NbrePeriodes + 3, 'Coller les notes depuis le Presse-Papiers');
	//00543A2F
  
end;//0

//00547030
procedure TGrilleNotesCarnetDeNotes.CreatePopupMenuNotes(Sender:TObject);
var
  I,J:integer;
begin//0
  //00547030
    //0054704C
   DestroyMenu(FPopupMenu_);
    FPopupMenu_ := CreatePopupMenu;
    I := FichierCdn.NbrePeriodes + 2;//ESI
    J := GetTypesdenotes.count;
    AppendMenuA(FPopupMenu_, 0, 1, 'Turbo Menu "Notes"');
    AppendMenuA(FPopupMenu_, $800{2048}, 1, '-');
      //005470D7
    AppendMenuA(FPopupMenu_, 0,I + $1D{29} + J , 'Décaler les notes vers le bas');
      //00547109
    AppendMenuA(FPopupMenu_, 0,I + $1E{30} + J , 'Décaler les notes vers le haut');
    if (Trim(Cells[FIdNumNote, FIdRow]) = '') then Exit;
    AppendMenuA(FPopupMenu_, $800{2048}, 0, '-');
      //005471B4
    AppendMenuA(FPopupMenu_, 0,I + $1F{31} + J ,PChar('Copier "' + Cells[FIdNumNote, FIdRow] + '" dans le Presse-Papiers'));
    if (Clipboard.HasFormat(1) ) then
      //005471DA
        //005471F6
      AppendMenuA(FPopupMenu_, 0, J + I + $20{32}, 'Coller la note depuis le Presse-Papiers')
    else//00547228    
    AppendMenuA(FPopupMenu_, 1, J + I + $20{32}, 'Coller la note depuis le Presse-Papiers');
	//00547249
end;//0

//00543FA0
procedure TGrilleNotesCarnetDeNotes.CreatePopupMenuTypeNotes(Sender:Tobject);
var
  I,J:integer;
  S:TStringList;
begin//0
  //00543FA0
    //00543FBE
    DestroyMenu(FPopupMenu_);
    FPopupMenu_ := CreatePopupMenu;
    J := FichierCdn.NbrePeriodes + 2;//EAX
    AppendMenuA(FPopupMenu_, 0, 1, 'Turbo Menu "Type de notes"');
    AppendMenuA(FPopupMenu_, $800, 1, '-');
    S := GetTypesdenotes;
      for I := 0 to S.count-1 do//0054403D
      begin//3
        //00544043
          //00544073
        AppendMenuA(FPopupMenu_, 0,J + 10 + I , PChar(S[I]));
      end;//3
      //0054409A
end;//0

procedure TGrilleNotesCarnetDeNotes.CreatePopupMenuDate(Sender:Tobject);
var
  I:integer;
begin//0
  //00543BB4
    //00543BD0
    DestroyMenu(FPopupMenu_);
    FPopupMenu_ := CreatePopupMenu; 
    I := FichierCdn.NbrePeriodes + 2;//ESI
    AppendMenuA(FPopupMenu_, 0, 1, 'Turbo Menu "Date"');
    AppendMenuA(FPopupMenu_, $800{2048}, 1, '-');
    AppendMenuA(FPopupMenu_, 0, I + 2, PChar(DateToStr(Date - 2) + ' (avant-hier)'));
    AppendMenuA(FPopupMenu_, 0, I + 3 , PChar(DateToStr(Date - 1) + ' (hier)'));
    AppendMenuA(FPopupMenu_, 0, I + 4, PChar(DateToStr(Date) + ' (aujourd''hui)'));
    AppendMenuA(FPopupMenu_, 0, I + 5, PChar(DateToStr(Date + 1) + ' (demain)'));
    AppendMenuA(FPopupMenu_, 0, I + 6 , PChar(DateToStr(Date + 2) + ' (après-demain)'));
    AppendMenuA(FPopupMenu_, 0, I + 7 , 'Autre ...');
end;//0

//00543EB8
procedure TGrilleNotesCarnetDeNotes.CreatePopupCompteMoyenne(sender:Tobject);
var
 I:integer;
begin//0
  //00543EB8
  DestroyMenu(FPopupMenu_);
  FPopupMenu_ := CreatePopupMenu;
  I := FichierCdn.NbrePeriodes + 2;//ESI
  AppendMenuA(FPopupMenu_, 0, 1, 'Turbo Menu "Compte dans la moyenne"');
  AppendMenuA(FPopupMenu_, $800{2048}, 1, '-');
  AppendMenuA(FPopupMenu_, 0,I + 8 , 'oui');
  AppendMenuA(FPopupMenu_, 0, I + 9 , 'non');
end;//0

//00546B60
procedure TGrilleNotesCarnetDeNotes.CreatePopupCoefficient(Sender:TObject);
var
  I,K:integer;
  S:TStringList;
begin//0
    DestroyMenu(FPopupMenu_);
    FPopupMenu_ := CreatePopupMenu;
    K := FichierCdn.NbrePeriodes + 2;//EDI
    S := GetTypesdenotes;
    AppendMenuA(FPopupMenu_, 0, 1, 'Turbo Menu "Coefficient"');
    AppendMenuA(FPopupMenu_, $800{2048}, 1, '-');
    for I := 0 to 9 do
    begin//2
      AppendMenuA(FPopupMenu_, 0, K + 10 + S.count + I , PChar(IntToStr(I + 1)));
    end;//2
    AppendMenuA(FPopupMenu_, 0, K + $14{20} + S.count, 'Autre ...');
end;//0

//00546CCC
procedure TGrilleNotesCarnetDeNotes.CreatePopupNoteSur(sender:TObject);
var
  I,J:integer;
begin//0
  //00546CCC
  DestroyMenu(FPopupMenu_);
  FPopupMenu_ := CreatePopupMenu;
  I := FichierCdn.NbrePeriodes + 2;//ESI
  J := GetTypesdenotes.count;
  AppendMenuA(FPopupMenu_, 0, 1, 'Turbo Menu "Noté sur"');
  AppendMenuA(FPopupMenu_, $800, 1, '-');
  AppendMenuA(FPopupMenu_, 0, I + $15{21} + J, '20');
  AppendMenuA(FPopupMenu_, 0, I + $16{22} + J, '10');
  AppendMenuA(FPopupMenu_, 0, I + $17{23} +J, '5');
  AppendMenuA(FPopupMenu_, 0, I + $18{24} + J , '30');
  AppendMenuA(FPopupMenu_, 0, I + $19{25} + J, '40');
  AppendMenuA(FPopupMenu_, 0,I + $1A{26} + J , '50');
  AppendMenuA(FPopupMenu_, 0, I + $1B{27} + J, '100');
  AppendMenuA(FPopupMenu_, 0, J + I + $1C{28} , 'Autre ...');
end;//0

//00547320
procedure TGrilleNotesCarnetDeNotes.CreatePopupOralEcrit(Sender:TObject);
var
  I,J:integer;
begin//0
  //00547320
  DestroyMenu(FPopupMenu_);
  FPopupMenu_ := CreatePopupMenu;
  I := FichierCdn.NbrePeriodes + 2;//ESI
  J := GetTypesdenotes.count;
  AppendMenuA(FPopupMenu_, 0, 1, 'Turbo Menu "Oral ou écrit"');
  AppendMenuA(FPopupMenu_, $800{2048}, 1, '-');
  AppendMenuA(FPopupMenu_, 0, I + $21{33} + J, 'Oral');
  AppendMenuA(FPopupMenu_, 0, J + I + $22{34}, 'Ecrit');
end;//0

{procedure TGrilleNotesCarnetDeNotes.DrawCell(ACol, ARow: Longint; ARect: TRect; AState: TGridDrawState);
begin
    inherited DrawCell(ACol, ARow, ARect, AState);
	EvOnDrawCell(self, ACol, ARow, ARect, AState);
end;
procedure TGrilleNotesCarnetDeNotes.MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited MouseDown(Button, Shift, X, Y);
  EvOnMouseDown(self,Button, Shift, X, Y);
end;}
procedure TGrilleNotesCarnetDeNotes.EvOnKeyPress(Sender:TObject; var Key:Char);
begin//0
  //0054290C
  if (FKeyPressCamma) then
  begin//1
    //00542915
	Key := #44;//',';
    FKeyPressCamma := false;
  end;//1
  if (FKeyPress) then 
  begin
	Key := #0;
	FKeyPress := false;
  end;
end;//0


end.