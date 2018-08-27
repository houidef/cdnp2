{***************************************
* Version Original V0.01
* Decompiled by HOUIDEF AEK v 00:44 samedi 17 février 2018
***************************************}
unit _TGrilleNotes;

interface

uses
Forms, Windows,  SysUtils, Classes, Grids, messages, Controls, _TGrilleGenerique, Clipbrd, UFichierCdn, dialogs,
Graphics,unit111,_FormHint,_FormEdit,_Calendrier;

type
  TGrilleNotesCarnetDeNotes = class(TGrilleGeneriqueCarnetDeNotes)
  protected
    procedure DrawCell(ACol, ARow: Longint; ARect: TRect; AState: TGridDrawState);override; //supprimer le
	procedure MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); override;  //supprimer le 
  public
	{f28C : dword;
	f1BC : dword;
	f1B4 : dword;
	f2AC : dword;
	f2B4 : dword;}
//====  
    f2E8:dword;//f2E8
    f2EC:dword;//f2EC
    f2F0:dword;//f2F0
    f2F4:dword;//f2F4
	f2F8:Boolean;//f2F8
	f2F9:boolean;
	f2FA:boolean;
    destructor Destroy; virtual;//00542298
    procedure sub_005422CC(Sender:Tobject; ACol:Longint; ARow:Longint; ARect:TRect; AState:TGridDrawState);
    procedure WMCommand(var Message:TWMCommand); message WM_COMMAND;//005440D4
    procedure sub_005464FC(var Message:TMsg); message $403; {dynamic;}//005464FC
    procedure sub_0054672C(var Msg:TMsg);  message $407;//0054672C ??????
    procedure sub_00546F14(var Msg:TMsg);  message $414;//00546F14
    constructor Create(AOwner:TComponent; FeuilleClasse:TComponent; Periode:byte; FichierCdn:TFichierCdn);//00542198
	procedure sub_005428C4(Sender: TObject; var Key: Word; Shift: TShiftState);//005428C4
	procedure sub_0054290C(Sender:TObject; var Key:Char);
    procedure sub_00542934(Sender: TObject; ACol,ARow: Integer; var CanSelect: Boolean);//00542934
	procedure sub_00542A24(Sender:TObject; ACol:integer; ARow:Integer; const Value:String); //00542A24
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
   
  //ESI := c;
  f2E4 := 1;

  //push b
  //push c
  //push FichierCdn
  //EDX := 0;
  //EAX := Self
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
   
  //OnDrawCell :=  sub_005422CC;
  //f1BC := Self;
  OnKeyPress := sub_0054290C;
  //f1B4 := Self;
  OnKeyDown := sub_005428C4;
  //f2AC := Self;
  OnSelectCell := sub_00542934;
  //f2B4 := Self;
  OnSetEditText := sub_00542A24;
  //fBC := Self
  //OnMouseDown := sub_00542C2C;
end;
//005422CC
procedure TGrilleNotesCarnetDeNotes.sub_005422CC(Sender:Tobject; ACol:Longint; ARow:Longint; ARect:TRect; AState:TGridDrawState);
var
 buf :string;
 lvar_5C : TRect;
begin//0
  //005422CC
   // sub_004CA104(Sender, ACol, ARow, lvar_4C.Left, AState);
    Canvas.Font.Style := []{gvar_005428A4};
    if (FichierCdn.sub_004BEA58 + $2{gvar_006178F7} = ARow) then //00542388
      Canvas.Font.Style := [fsBold]{gvar_005428A8};
    if (ARow > 0) then
    begin//005423A9
      if (FichierCdn.sub_004BEA58 + 1 > ARow) then
      begin//005423CF
        if (sub_004BB458) then
        begin//005423DC
          if (Cells[ACol, ARow] = 'abs') Or (Cells[ACol, ARow] = '') then //00542415
            Canvas.Font.Color := 0
          else
          begin//5
            //0054242D
            try
              //0054243B
              FichierCdn.sub_004BED2C( f2D8, ACol + 1, buf);
              if (StrToFloat(Cells[ACol, ARow]) < 0{gvar_005428A4}) Or ( StrToFloat(Cells[ACol, ARow]) > StrToFloat(buf)) then //005424CC
				Canvas.Brush.Color := sub_004BA0BC;
            except//6
              on E:EConvertError do
              begin//005424FF
                if (sub_004BB458) then//00542508
                  Canvas.Brush.Color := sub_004BA0BC
                else//00542522;
                  Canvas.Brush.Color := $FFFFFF;
              end;//7
            end;//6
          end;//5
        end;//4       
        if (sub_004BA2B0) then
        begin//0054254A
          if (Cells[ACol, ARow] = 'abs') Or (Cells[ACol, ARow] = '') then//0054258F
            Canvas.Font.Color := 0
          else
          begin//005425A7
            try
              //005425B5
              fichierCdn.sub_004BED2C(f2D8, ACol + 1, buf);
              if (StrToFloat(Cells[ACol, ARow]) < 0{gvar_005428A4}) Or (StrToFloat(Cells[ACol, ARow]) > StrToFloat(buf)) then//0054264C
                Canvas.Font.Color := sub_004BA070
              else
              begin//00542669
			    if (StrToFloat(Cells[ACol, ARow]) < StrToFloat(buf)/2) then//0054268A
			       Canvas.Font.Color := sub_004B9F8C
				else
				  if (StrToFloat(Cells[ACol, ARow]) >= StrToFloat(buf)*3/4) then
				   Canvas.Font.Color := sub_004BA024
				  else //005426CA
				   Canvas.Font.Color:= sub_004B9FD8;
              end;//7
            except//6
              on E:EConvertError do
              begin//00542722
                if (sub_004BB458) then//0054272B
                  Canvas.Brush.Color := sub_004BA0BC
                else//00542745
                  Canvas.Brush.Color := $FFFFFF;
              end;//7
              on E:EMathError do
              begin//0054275D
                if (sub_004BB458) then//00542766
                  Canvas.Brush.Color := sub_004BA0BC
                else//00542780
                  Canvas.Brush.Color := $FFFFFF;
              end;//7
            end;//6
          end;//5
        end;//4
      end;//3
    end;//2
    if (gdSelected in AState) then//005427A1
      if (sub_004BB458) then//005427AA
        Canvas.Brush.Color := sub_004B9D24
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
procedure TGrilleNotesCarnetDeNotes.sub_005428C4(Sender:TObject; var Key:Word; Shift:TShiftState);
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
procedure TGrilleNotesCarnetDeNotes.sub_00542934(Sender: TObject; ACol,ARow: Integer; var CanSelect: Boolean);
begin//0
  //00542934

  f2F0 := ARow;
  f2EC := ACol;
  
  SendMessageA(f2E0, 1025, ARow, 0);
  Options := [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goTabs];{gvar_00542A1C}; ////$080F;
  if(FichierCdn.sub_004BEAD0(f2D8)+ 1 <= 255) then
    //ecx:= lvar_24 //lvar_24 set tail $20
  if (ACol <= 255) then
  begin//005429BA  
    if {(lvar_24[ACol] >= True)}(ACol >= FichierCdn.sub_004BEAD0(f2D8)+ 1) Or (ARow >= byte(FichierCdn.sub_004BEA58)+ 1) then
    begin//005429DA
      if (ARow <> byte(FichierCdn.sub_004BEA58) + $0F{gvar_006178FF}) then Exit;
    end;//2
    Options  := [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine,goEditing, goTabs]; //$C0F;//gvar_00542A20;
    CanSelect := True;
    Exit;
  end;//1

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
    KI := FichierCdn.sub_004BE9E0 + 2;//ESI
    if (Message.ItemID = 0) then
    begin//2
      //00544124
      FichierCdn.sub_004BED04(f2D8, buf, f2EC + 1);
      FormEdit{gvar_00617CEx0} := TFormEdit.Create(Self, 'Modifier intitulé', buf,1);
      FormEdit.ShowModal;
      if (FormEdit.ModalResult = 1) then
      begin//3
        //005441AB
        FichierCdn.sub_004BED2C(f2D8, f2EC + 1, buf);
        Cells[f2EC, f2F0] :=  FormEdit.Edit1.Text + ' (sur ' + buf + ')';
        FichierCdn.sub_004C0E24(f2D8,f2EC + 1,FormEdit.Edit1.Text);
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
        if (Message.ItemID - 1 = f2D8) then Exit;
        //FichierCdn.sub_004BFD68(f2D8, f2EC + 1, );
        SendMessageA(Handle, $403{1027}, f2D8, 0);
        SendMessageA(f2E0, $408{1032}, f2D8, 0);
        SendMessageA(f2E0, $40E{1038}, 0, 0);
      end//3
      else
      if (KI = Message.ItemID) then
      begin//3
        //005443C6
        Clipboard.Clear;
		lvar_10:= '';
        if (FichierCdn.sub_004BEA58  > 0) then
        begin//4
          //005443E8
          for I := 1 to FichierCdn.sub_004BEA58 do
          begin//5
            //005443F0
			FichierCdn.sub_004BEF5C(f2D8, f2EC + 1, I, buf);
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
        if (FichierCdn.sub_004BEA58 > 0) then
        begin//4
          //005444C2
          
          for I := 1 to FichierCdn.sub_004BEA58 do
          begin//5
            //005444CA
			FichierCdn.sub_004BEA64(I, buf0);
            FichierCdn.sub_004BEF5C(f2D8, f2EC + 1, I, Buf1);
			lvar_10 := lvar_10 + buf0 + ' ' + Buf1 + #13 + #10;
          end;//5
        end;//4
        lvar_10 := lvar_10 + #13 + #10;
        FichierCdn.sub_004C3D1C(f2D8, f2EC + 1, buf);
        lvar_10 := lvar_10 + 'Nombre d''élèves présents : ' + buf + #13 + #10;
        //FichierCdn.sub_004C3958(f2D8, buf0, f2EC + 1);
        FichierCdn.sub_004BED2C( f2D8, f2EC + 1,  buf1);
        lvar_10 := lvar_10 + 'Minimum : ' +  buf0 + '/' +  buf1 + #13 + #10;
        //FichierCdn.sub_004C3B54(f2D8, Buf0, f2EC + 1);
        //sub_004BED2C(FichierCdn, f2D8, f2EC + 1, Buf1);
        lvar_10 := lvar_10 + 'Maximum : ' + Buf0 + '/' + Buf1 + #13 + #10;
        FichierCdn.sub_004C40D4(f2D8, Buf0, f2EC + 1);
        //sub_004BED2C(FichierCdn, f2D8, f2EC + 1, Buf1);
        lvar_10 := lvar_10 + 'Moyenne : ' + Buf0 + '/' + Buf1 + #13 + #10;
        //FichierCdn.sub_004C42D4(f2D8, f2EC + 1, Buf);
        lvar_10 := lvar_10 + 'Ecart type : ' + Buf + #13 + #10;
        //FichierCdn.sub_004C3EA4(f2D8, f2EC + 1, Buf);
        lvar_10 := lvar_10 + '% notes < moyenne : ' + Buf + #13 + #10;
        //FichierCdn.sub_004C451C(f2D8, f2EC + 1, Buf);
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
          if (lvar_8.count > FichierCdn.sub_004BEA58 ) then//005449D9
			J := FichierCdn.sub_004BEA58
          else//005449EB
            J := lvar_8.count;

          if (J  > 0) then
          begin//5
            //005449FB
            for I := 1 to J  do
            begin//6
              //00544A03
              Cells[f2EC, I]:= lvar_8[I - 1];
              FichierCdn.sub_004C1074(f2D8, f2EC + 1, 0, lvar_8[I - 1]);
            end;//6
          end;//5
         (* EDX := 1;
          EAX := lvar_8;
          call();
          //push EAX*)
           SendMessageA(Handle, $407{1031}, f2EC, 0);
           SendMessageA(f2E0, $408{1032}, f2D8, 0);
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
          Cells[f2EC, f2F0] :=  DateToStr(Date - 4 - KI + Message.ItemID);
          //FichierCdn.sub_004C0EC8(f2D8, f2EC + 1,DateToStr(Date - 4 - KI + Message.ItemID));
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
			//FichierCdn.sub_004C0EC8(f2D8, f2EC + 1, DateToStr(FormCalendrier.MonthCalendar1.Date));
			Cells[f2EC, f2F0] := DateToStr(FormCalendrier.MonthCalendar1.Date);
		  end;
		  FormCalendrier.Free;
        end//4
        else
        if (Message.ItemID = KI + 8) then
        begin//4
          //00544D8A
          if (Cells[f2EC, f2F0] <> 'oui') then
          begin//5
            //00544DBA
            Cells[f2EC, f2F0] :=  'oui';
            //EAX := sub_004C0FA0(FichierCdn, f2D8, f2EC + 1);
             SendMessageA(f2E0, $408{1032}, f2D8, 0);
          end;//5
        end//4
        else
        if (Message.ItemID = KI + 9) then
        begin//4
          //00544E3D
          if ( Cells[f2EC, f2F0] <> 'non') then
          begin//5
            //00544E6D
            Cells[f2EC, f2F0] := 'non';
            //EAX := sub_004C0FA0(FichierCdn, f2D8, f2EC + 1);
             SendMessageA(f2E0, $408{1032}, f2D8, 0);
          end;//5
        end//4
		else
        begin
        lvar_C := sub_004B9794;
        (*EAX := lvar_C;
        call(lvar_29C);
        EDX := EDX + ESI + 9;//lvar_C + (EAX)
        EAX := ESI + 10;//EAX
        ESP := $20{32};*)
        if (Message.ItemID <= 255) then
        begin//4
          //00544F3F
          if (Message.ItemID < KI + 10) then
          begin//5
            //00544F51
            Cells[f2EC, f2F0] :=  lvar_C[Message.ItemID - 10 - KI];
            FichierCdn.sub_004C0F34( f2D8, f2EC + 1,lvar_C[Message.ItemID - 10 - KI]);
          end;//5
		 // else
          (*
          EAX :=  KI + 10 + Lvar_C.count;
          EDX := lvar_C.count + KI + $13{19};*
          ESP := $20{32};*)
        (*  if (Message.ItemID <= 255) then
          begin//5
            //0054507C
            if (Message.ItemID  < lvar_144) then
            begin//6
              //0054508E
              EAX := lvar_C;
              call( 0);
              EAX := Message.ItemID - ESI - 10 - EDX + 1;//EAX
              lvar_2B0 := IntToStr(EAX);
              EAX := lvar_2B0;
              //push EAX
              ECX := f2F0;
              EDX := f2EC;
              EAX := EBX;//Self
              Cells[f2EC, f2F0 ] :=  lvar_2B0;
              EAX := lvar_C;
              call(0);
              EAX := Message.ItemID - ESI - 10 - EDX;//EAX - lvar_C{EDX}
              EAX := EAX + 1;//EAX
              lvar_2B4 := IntToStr(EAX);
              EDX := lvar_2B4;
              ECX := $FF{255};
               := lvar_2B4;
              FichierCdn.sub_004C47E8(f2D8, f2EC + 1);
               SendMessageA(f2E0, $408{1032}, f2D8, 0);
            end//6
			else
            {EAX := lvar_C;
            call(f2D8);}
            if (EAX +  ESI + $14{20} = Message.ItemID) then
            begin//6
              //005451C4
              FichierCdn.sub_004BED7C(f2D8, f2EC + 1, lvar_114);
               := ;
              EAX := lvar_2B8;
              FormEdit := TFormEdit.Create(Self, 'Coefficient de la série', lvar_2B8);
              FormEdit.ShowModal;
              if (FormEdit.ModalResult = 1) then
              begin//7
                //00545251
                if (Cells[f2EC, f2F0] <> FormEdit.Edit1.Text) then
                begin//8
                  //0054529C
                  lvar_2C4 := FormEdit.Edit1.Text;
                  EAX := lvar_2C4;
                  Cells[f2EC, f2F0] := lvar_2C4;
                  lvar_2C8 := FormEdit.Edit1.Text;
                  EDX := lvar_2C8;
                  ECX := $FF{255};
                   := lvar_2C8;
                  FichierCdn.sub_004C47E8(f2D8, f2EC + 1);
                   SendMessageA(f2E0, $408{1032}, f2D8, 0);
                end;//8
              end;//7
              FormEdit.Destroy;
            end;//6
			else
            {EAX := lvar_C;
            call(0);}
            if (EAX + ESI + $15{21} = Message.ItemID) then
            begin//6
              //0054538C
              if (Cells[f2EC, f2F0] <> '20') then
              begin//7
                //005453BC
                Cells[f2EC, f2F0 ] :=  '20';
                sub_004C48BC(FichierCdn, f2D8, f2EC + 1);
                 SendMessageA(Handle, $407{1031}, f2EC, 0);
                 SendMessageA(f2E0, $408{1032}, f2D8, 0);
                 SendMessageA(f2E0, $405{1029}, 0, 0);
              end;//7
            end//6
			else
            (*EAX := lvar_C;
            call(0);
            EDX := ESI;//ESI
            EDX := EDX + $16{22};//EDX
            EAX := EAX + EDX;//lvar_C + (EDX)*)
           (* if (EAX = Message.ItemID) then
            begin//6
              //00545484
              if (Cells[f2EC, f2F0] <> '10') then
              begin//7
                //005454B4
                Cells[f2EC, f2F0] :=  '10';
                sub_004C48BC(FichierCdn, f2D8] :=  f2EC + 1;
                 SendMessageA(Handle, $407{1031}, f2EC, 0);
                 SendMessageA(f2E0, $408{1032}, f2D8, 0);
                 SendMessageA(f2E0, $405{1029}, 0, 0);
              end;//7
            end//6
			else
            {EAX := lvar_C;
            call(0);}
            if (EAX + ESI + $17{23} = Message.ItemID) then
            begin//6
              //0054557C
              lvar_2D4 := Cells[(f2EC, f2F0];
              if (lvar_2D4 <> '5') then
              begin//7
                //005455AC
                Cells[f2EC, f2F0 ] := '5';
                sub_004C48BC(FichierCdn, f2D8, f2EC + 1);
                 SendMessageA(Handle, $407{1031}, f2EC, 0);
                 SendMessageA(f2E0, $408{1032}, f2D8, 0);                 SendMessageA(f2E0, $405{1029}, 0, 0);
              end;//7
            end//6
			else
            {EAX := lvar_C;
            call(0);
            EAX := EAX + ESI + $18{24};//lvar_C + (EDX)}
            if (EAX = Message.ItemID) then
            begin//6
              //00545674
              if (Cells[(f2EC, f2F0] <> '30') then
              begin//7
                //005456A4
                Cells[f2EC, f2F0 ] :=  '30';
                FichierCdn.sub_004C48BC(f2D8, f2EC + 1);
                 SendMessageA(Handle, $407{1031}, f2EC, 0);
                 SendMessageA(f2E0, $408{1032}, f2D8, 0);
                 SendMessageA(f2E0, $405{1029}, 0, 0);
              end;//7
            end;//6
			else
            {EAX := lvar_C;
            call(0);} 
            if (EAX + ESI + $19{25} = Message.ItemID) then
            begin//6
              //0054576C
              if (Cells[f2EC, f2F0] <> '40') then
              begin//7
                //0054579C
                Cells[f2EC, f2F0] := '40';
                sub_004C48BC(FichierCdn, f2D8, f2EC + 1;);
                 SendMessageA(Handle, $407{1031}, f2EC, 0);
                 SendMessageA(f2E0, $408{1032}, f2D8, 0);
                 SendMessageA(f2E0, $405{1029}, 0, 0);
              end;//7
            end;//6
			else
            {EAX := lvar_C;
            call(0);}
            if (EAX +ESI + $1A{26} = Message.ItemID) then
            begin//6
              //00545864
              lvar_2E0 := Cells[f2EC, f2F0];
              if (lvar_2E0 <> '50') then
              begin//7
                //00545894
                ECX := f2F0;
                EDX := f2EC;
                EAX := EBX;//Self
                Cells[f2EC, f2F0 ] :=  '50';
                FichierCdn.sub_004C48BC( f2D8, f2F0);
                 SendMessageA(Handle, $407{1031}, f2EC, 0);
                 SendMessageA(f2E0, $408{1032}, f2D8, 0);
                 SendMessageA(f2E0, $405{1029}, 0, 0);
                Exit;
              end;//7
            end;//6
            EAX := lvar_C;
            call(0);
            if ( EAX + ESI + $1B{27} = Message.ItemID) then
            begin//6
              //0054595C
              lvar_2E4 := Cells[(f2EC, f2F0];
              if (lvar_2E4 <> '100') then
              begin//7
                //0054598C
                Cells[f2EC, f2F0] :=  '100';
                sub_004C48BC(FichierCdn, f2D8, f2EC + 1);
                 SendMessageA(Handle, $407{1031}, f2EC, 0);
                 SendMessageA(f2E0, $408{1032}, f2D8, 0);
                 SendMessageA(f2E0, $405{1029}, 0, 0);
                Exit;
              end;//7
            end;//6
            EAX := lvar_C;
            call(0);
            if (EAX + ESI + $1C{28} = Message.ItemID) then
            begin//6
              //00545A54
              sub_004BED2C(FichierCdn, f2D8, f2EC + 1, lvar_114);
              FormEdit := TFormEdit.Create(Self, 'Noté sur', lvar_2E8);
              FormEdit.ShowModal;
              if (FormEdit.ModalResult = 1) then
              begin//7
                //00545AE1
                lvar_2EC := Cells[(f2EC, f2F0];
                lvar_2F0 := FormEdit.Edit1.Text;
                if (lvar_2EC <> lvar_2F0) then
                begin//8
                  //00545B2C
                  lvar_2F4 := FormEdit.Edit1.Text;
                  Cells[f2EC, f2F0] := lvar_2F4;
                  lvar_2F8 := FormEdit.Edit1.Text;
                  sub_004C48BC(FichierCdn, f2D8, f2EC + 1);
                   SendMessageA(FormEdit.Handle, $407{1031}, f2EC, 0);
                   SendMessageA(f2E0, $408{1032}, f2D8, 0);
                   SendMessageA(f2E0, $405{1029}, 0, 0);
                end;//8
              end;//7
              FormEdit.Destroy;
            end//6
			else
           { EAX := lvar_C;
            call();}
            if (EAX + ESI + $1D{29} = Message.ItemID) then
            begin//6
              //00545C51
              ESI := FichierCdn.sub_004BEA58;
              if (f2F0 + 1 - ESI <= ESI) then
              begin//7
                //00545C7E
                EAX := EAX - 1;//EAX
                lvar_14 := EAX;
                for lvar_14 := ESI  to  do
                begin//8
                  //00545C82
                  EAX := ESI - 1;//EAX
				  EAX := EDI;//FichierCdn
                  FichierCdn.sub_004BEF5C(f2D8, f2EC + 1, , lvar_114);
                  //push EAX
                  ECX := f2EC + 1;//ECX
                  FichierCdn.sub_004C1074(f2D8, f2EC + 1, ESI , lvar_114);
                end;//8
              end;//7
              if (FichierCdn.sub_004BEA58 <> f2F0) then
              begin//7
                //00545D29
                FichierCdn.sub_004C1074(f2D8, f2EC + 1, f2F0, 4);
              end;//7
               SendMessageA(f2E0, $408{1032}, f2D8, 0);
               SendMessageA(Handle, $403{1027}, f2D8, 0);
              Exit;
            end;//6
            EAX := lvar_C;
            call(0);
            if (EAX + ESI + $1E{30} = Message.ItemID) then
            begin//6
              //00545DD5
                for I := 1 to f2F0 - 1 do //00545DF3
                begin//8
                  //00545DFB
                  FichierCdn.sub_004BEF5C(f2D8, f2EC + 1, I+1 , lvar_114);
                  FichierCdn.sub_004C1074(f2D8, f2EC + 1, I+1 , lvar_114);
                end;//8
              if (f2F0 <> 1) then
              begin//7
                //00545E99
                FichierCdn.sub_004C1074(f2D8, f2EC + 1, f2F0, 4);
              end;//7
               SendMessageA(f2E0, {$408{1032}}, f2D8, 0);
               SendMessageA(Handle, $403{1027}, f2D8, 0);
            end;//6
			else
            {EAX := lvar_C;
            call();}
            if (EAX + ESI + $1F{31} = Message.ItemID) then
            begin//6
              //00545F3B
              Clipboard.Clear;
              lvar_10 := '';
              lvar_2FC := Cells[f2EC, f2F0];
              lvar_10 := lvar_10 + lvar_2FC + #13 + #10;
              EAX := PChar(lvar_10);
              Clipboard.SetTextBuf(PChar(lvar_10){EDX});
            end;//6
            EAX := lvar_C;
            call();
            if (EAX + ESI + $20{32} = Message.ItemID) then
            begin//6
              //00545FC7
              if (Clipboard.HasFormat(1) ) then
              begin//7
                //00545FDD
                lvar_8 := TStringList.Create;
                lvar_300 := Clipboard.GetAsText{AsText};
                EDX := lvar_300;
                EAX := lvar_8;
                call();
                EAX := lvar_8;
                call();
                if ({lvar_8} <> 0) then
                begin//8
                  //0054601A
                  EDX := 0;
                  EAX := lvar_8;
                  call();
                  EAX := lvar_304;
                  //push EAX
                  ECX := f2F0;
                  EDX := f2EC;
                  EAX := EBX;//Self
                  Cells[f2EC, f2F0] := lvar_304;
                  EAX := f2F0;
                  //push EAX
                  EDX := 0;
                  EAX := lvar_8;
                  call(f2F0);
                  EDX := lvar_308;
                  ECX := $FF{255};
                   := lvar_308;
                  //push EAX
                  FichierCdn.sub_004C1074(f2D8, f2EC + 1, , lvar_114);
                  lvar_8.Free;
                   SendMessageA(Handle, $407{1031}, f2EC, 0);
                   SendMessageA(f2E0, $408{1032}, f2D8, 0);
                end;//8
              end;//7
            end;//6
            EAX := lvar_C;
            call(f2E0);
            if (EAX + ESI + $21{33} =Message.ItemID) then
            begin//6
              //00546119
              lvar_30C := Cells[f2EC, f2F0];
              if (lvar_30C <> 'Oral') then
              begin//7
                //00546149
                Cells[f2EC, f2F0] := 'Oral';
                EAX := FichierCdn.sub_004C8EC8(f2D8, f2EC + 1, 1);
              end;//7
            end;//6
			else
            {EAX := lvar_C;
            call(1032);}
            if (EAX + KI + $22{34} <> Message.ItemID) then Exit;
            if (Cells[(f2EC, f2F0] <> 'Ecrit') then
            begin//6
              //005461E8 
              Cells[f2EC, f2F0] :=  'Ecrit';
              //EAX := FichierCdn.sub_004C8EC8(f2D8, f2EC + 1, 0);
            end;//6
          end;//5*)
        end;//4
		end;
      end;//3
    end;//2
    //0054623D
   
end;//0


//005464FC
procedure TGrilleNotesCarnetDeNotes.sub_005464FC(var Message:TMsg);
var 
  I:integer;
  buf,buf0,buf1 : string;
begin//0
  //005464FC
   // f2D8 eq periode
    //00546526
	f2D8:=Message.Message;  //periode
    RowCount := FichierCdn.sub_004BEA58 + $12{gvar_00617902};
    
    if (byte(FichierCdn.sub_004BEAD0(f2D8)) > 0) then
    begin//0054657F
      ColCount := byte(FichierCdn.sub_004BEAD0(f2D8));
    end//2
    else
    begin//0054658A
      ColCount := 1;
    end;//2

    if (byte(FichierCdn.sub_004BEAD0(f2D8)) > 0) then
    begin//2
      //005465B1
      for I := 1 to (byte(FichierCdn.sub_004BEAD0(f2D8))) do
      begin //005465B9
        Cols[I - 1] :=  FichierCdn.sub_004BEB40(f2D8, I);
        FichierCdn.sub_004BED04(f2D8, buf0, I);
        FichierCdn.sub_004BED2C(f2D8, I, buf1);
        Cols[I - 1].Strings[0] := buf0 + ' (sur ' + buf1 + ')' ;
        SendMessageA(Handle, 1031, I - 1, 0);
      end;//3
    end;//2

    Visible := ((FichierCdn.sub_004BEAD0(f2D8) = 0) Xor true);
end;

//0054672C
procedure TGrilleNotesCarnetDeNotes.sub_0054672C(var Msg:TMsg);
var
 I,lvar_1:integer;
 Buf,Buf0: string;
begin//0
  //0054672C
  I:=0;
  
    //00546785
    lvar_1 :=  FichierCdn.sub_004BEA58;
    I := I + 1;
    FichierCdn.sub_004C3D1C(f2D8, I, Buf);
  
    Cells[Msg.Message, lvar_1 + $4{gvar_006178F4}] := Buf;
    I := I + 1;
    FichierCdn.sub_004C3958(f2D8, Buf, I);
    Cells[Msg.Message, lvar_1 + $5{gvar_006178F5} ] :=  Buf;
    //push EAX
   // I := ;
    
   I := I + 1;
    FichierCdn.sub_004C3B54(f2D8, Buf, I);
    Cells[Msg.Message, lvar_1 + $6{gvar_006178F6}] :=  Buf;

    FichierCdn.sub_004C40D4(f2D8, Buf, Msg.Message+1);
    Cells[Msg.Message, lvar_1 + $2{gvar_006178F7}] :=  Buf;
    FichierCdn.sub_004C42D4(f2D8, I, Buf);
    Cells[Msg.Message, lvar_1 + $7{gvar_006178F8}] :=  Buf;
    FichierCdn.sub_004C3EA4(f2D8, I, Buf);
    Cells[Msg.Message, lvar_1 + $8{ gvar_006178F9}] := Buf;
    FichierCdn.sub_004C451C(f2D8, I, Buf);
    Cells[Msg.Message, lvar_1 + $9{gvar_006178FA}] :=  Buf;
   // I := ;
    I := I + 1;
    FichierCdn.sub_004BED04( f2D8, Buf0, I);
    //I := ;
    I := I + 1;
    FichierCdn.sub_004BED2C( f2D8, I, Buf);
    //Cells[Msg.Message, 0] :=  Buf0 + ' (sur ' + Buf + ')';
  //00546B1D
 
end;//0


//00546F14
procedure TGrilleNotesCarnetDeNotes.sub_00546F14(var Msg:TMsg);
var 
 RowCount:integer;
begin
  //00546F14
  //f2F0 eq ARow , f2EC eq ACol;

  RowCount := FichierCdn.sub_004BEA58;

  if (f2F0 <= 255) then
  begin//1
    //00546F51
    if ({lvar_2C[f2F0] < True}f2F0 <= RowCount) then
    begin//00546F5B
      FichierCdn.sub_004C1074(f2D8, f2EC + 1, f2F0,'abs');
      Cells[f2EC, f2F0] := 'abs';
      keybd_event(13, 0, 0, 0);
      keybd_event(13, 0, 2, 0);
      Options := [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goTabs]; //$80F{gvar_0054702C};
      SendMessageA(f2E0, 1032, f2D8, 0);
      SendMessageA(Handle, 1031, f2EC, 0);
    end;//2
    Exit;
  end;//1
end;
//00542A24
procedure TGrilleNotesCarnetDeNotes.sub_00542A24(Sender:TObject; ACol:integer; ARow:Integer; const Value:String);
var
 lvar_14:TGridRect;
begin//0
  //00542A24..00542A54
    if (ARow = FichierCdn.sub_004BEA58 + $0F{gvar_006178FF}) then//00542A7C
      FichierCdn.sub_004C0E5C(f2D8, ACol + 1,Cells[ACol, ARow])
	else 
	begin
		FichierCdn.sub_004C1074(f2D8, ACol + 1, ARow, Cells[ACol, ARow]);
		SendMessageA(Handle, 1031, ACol, 0);
		SendMessageA(f2E0, 1032, f2D8, ARow);    
		if (ARow < FichierCdn.sub_004BEA58) then 
			if (f2F8) then 
			begin
				lvar_14.left := ACol;
				lvar_14.Top := ARow + 1;
				lvar_14.Right := ACol;
				lvar_14.Bottom := ARow + 1;
				Selection := lvar_14;
				SendMessageA(f2E0, 1025, ARow + 1, ACol);
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
    f2EC := ACol;
    f2F0 := ARow;
    if (Button = mbleft) then
    begin//2
      //00542CA9
      
      if (ARow = 0) then
      begin//3
        //00542CB9
        if (sub_004BB930) then
        begin//4
          //00542CC6
          FormHint.Color := sub_004BB87C;
          //push EAX
          
          FichierCdn.sub_004BED04(f2D8, buf, ACol + 1);
          FormHint.Label1.Caption := buf;
          
          //FichierCdn.sub_004C3958(f2D8, buf0, ARow + 1);
          
          FichierCdn.sub_004BED2C(f2D8, ACol + 1, buf1);
         
          FormHint.Label2.Caption := 'Minimum : ' + buf0 + '/' + buf1;
          
          //FichierCdn.sub_004C3B54(f2D8, buf0, ARow + 1);
          FichierCdn.sub_004BED2C(f2D8, ACol + 1, buf1);
          FormHint.Label3.Caption := 'Maximum : ' + buf0 + '/' + buf1;

          FichierCdn.sub_004C40D4(f2D8, buf0, ACol + 1);
          FichierCdn.sub_004BED2C(f2D8, ACol + 1, buf1);
          FormHint.Label4.Caption := 'Moyenne : ' + buf0 + '/' + buf1;
          //FichierCdn.sub_004C42D4(f2D8, ARow + 1, buf);
          FormHint.Label5.Caption := 'Ecart type : ' + buf;
          //FichierCdn.sub_004C3EA4(f2D8, ARow + 1, buf);
          FormHint.Label6.Caption := '% notes < moyenne : ' + buf;
          //FichierCdn.sub_004C451C(f2D8, ARow + 1, buf);
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
      SendMessageA(f2E0, $401{1025}, ARow, ACol);
    end;//2
    
    I := FichierCdn.sub_004BEAD0(f2D8) - 1;//ESI
    
    J := FichierCdn.sub_004BEA58;
    
    
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
    FichierCdn.sub_004BED04(f2D8, buf, f2EC + 1);
    AppendMenuA(f2E8, 0, 0, PChar('Modifier l''intitulé "' + buf + '" ...'));
    AppendMenuA(f2E8, $800{2048}, 1, '');
    
    
    

      
      for I := 1 to FichierCdn.sub_004BE9E0  do //00543833
      begin//3
        //00543838
        if (I <> f2D8) then
        begin//4
          //00543844
          FichierCdn.sub_004BE9EC(I, buf);      
         { if (I + 1 0) then
          begin//5
            //005438A8
          end;//5}
          AppendMenuA(f2E8, 0, I+1, PChar('Déplacer vers "' + buf + '"'));
        end//4
        else
        begin//4
          //005438BE
          FichierCdn.sub_004BE9EC(I, Buf);
         { if (ESI + 1  0) then
          begin//5
            //00543922
          end;//5}
          AppendMenuA(f2E8, 1,I+1,PChar('Déplacer vers "' + Buf + '"') );
        end;//4
      end;//3
    
    
    AppendMenuA(f2E8, $800{2048}, 1, '');
    AppendMenuA(f2E8, 0, FichierCdn.sub_004BE9E0 + 2 , 'Copier les notes dans le Presse-Papiers (sans les noms et les statistiques de la série)');
    AppendMenuA(f2E8, 0, FichierCdn.sub_004BE9E0 + $21{33}, 'Copier les notes dans le Presse-Papiers (avec les noms et les statistiques de la série)');
    
    
    if (Clipboard.HasFormat(1)) then //005439C4
      AppendMenuA(f2E8, 0,FichierCdn.sub_004BE9E0 + 3 , 'Coller les notes depuis le Presse-Papiers')
    else 
    AppendMenuA(f2E8, 1, FichierCdn.sub_004BE9E0 + 3, 'Coller les notes depuis le Presse-Papiers');
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
   
    I := FichierCdn.sub_004BE9E0 + 2;//ESI
    J := sub_004B9794.count;
    
    AppendMenuA(f2E8, 0, 1, 'Turbo Menu "Notes"');
    AppendMenuA(f2E8, $800{2048}, 1, '-');

      //005470D7

    AppendMenuA(f2E8, 0,I + $1D{29} + J , 'Décaler les notes vers le bas');

      //00547109

    
    AppendMenuA(f2E8, 0,I + $1E{30} + J , 'Décaler les notes vers le haut');
    
    if (Trim(Cells[f2EC, f2F0]) = '') then Exit;
    
    AppendMenuA(f2E8, $800{2048}, 0, '-');
      //005471B4
    AppendMenuA(f2E8, 0,I + $1F{31} + J ,PChar('Copier "' + Cells[f2EC, f2F0] + '" dans le Presse-Papiers'));
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
    J := FichierCdn.sub_004BE9E0 + 2;//EAX
    AppendMenuA(f2E8, 0, 1, 'Turbo Menu "Type de notes"');
    AppendMenuA(f2E8, $800{2048}, 1, '-');
    S := sub_004B9794;
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
    I := FichierCdn.sub_004BE9E0 + 2;//ESI
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
  I := FichierCdn.sub_004BE9E0 + 2;//ESI
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
    K := FichierCdn.sub_004BE9E0 + 2;//EDI

    S := sub_004B9794;
    
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
  I := FichierCdn.sub_004BE9E0 + 2;//ESI
  J := sub_004B9794.count;
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
  I := FichierCdn.sub_004BE9E0 + 2;//ESI
  J := sub_004B9794.count;
  AppendMenuA(f2E8, 0, 1, 'Turbo Menu "Oral ou écrit"');
  AppendMenuA(f2E8, $800{2048}, 1, '-');
  AppendMenuA(f2E8, 0, I + $21{33} + J, 'Oral');
  AppendMenuA(f2E8, 0, J + I + $22{34}, 'Ecrit');
end;//0


procedure TGrilleNotesCarnetDeNotes.DrawCell(ACol, ARow: Longint; ARect: TRect; AState: TGridDrawState);
begin
    inherited DrawCell(ACol, ARow, ARect, AState);
	sub_005422CC(self, ACol, ARow, ARect, AState);
end;
procedure TGrilleNotesCarnetDeNotes.MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited MouseDown(Button, Shift, X, Y);
  sub_00542C2C(self,Button, Shift, X, Y);
end;
procedure TGrilleNotesCarnetDeNotes.sub_0054290C(Sender:TObject; var Key:Char);
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