{***********************************************************
* Version Original V0.03 build 1                           *
* Decompiled by HOUIDEF AEK v 12:20 mercredi, août 29, 2018*
* The disassembly process : 100%                            *
************************************************************}
unit _TGrilleBilan;

interface

uses
Forms, Windows,  SysUtils, Classes, Messages, Grids, _TGrilleGenerique, UFichierCdn,Unit111,dialogs,
_FormEdit,Clipbrd,_FormHint, StdCtrls, Controls,constantes;

type
  TGrilleBilanCarnetDeNotes = class(TGrilleGeneriqueCarnetDeNotes)
  protected
    procedure DrawCell(ACol, ARow: Longint; ARect: TRect; AState: TGridDrawState);override; //supprimer le 
  public
    f2E8:dword;//f2E8
    f2EC:dword;//f2EC
    f2F0:dword;//f2F0
    f2F4:dword;//f2F4
	f2F8:HMENU;//f2F8
    f2FC:dword;//f2FC
    f300:dword;//f300
    destructor Destroy; virtual;//004CEA48
    procedure WMCommand(var Message:TWMCommand); message WM_COMMAND;//004CEAA0
    procedure sub_004CB4D4(var Msg:TMsg); Message $403;//004CB4D4
    procedure sub_004CEEB4(var Msg:TMsg); Message $404;//004CEEB4
    constructor Create(AOwner:TComponent; FeuilleClasse:TComponent; Periode:byte; FichierCdn:TFichierCdn);//004CB414
    procedure sub_004CCCB8;//004CCCB8
	procedure sub_004CD7E0(Sender:TObject; ACol, ARow: Longint; ARect: TRect; AState: TGridDrawState);
    procedure sub_004CD0B0(a:dword);//004CD0B0
	procedure sub_004CDF20;
	procedure sub_004CE6F4(Sender:TObject; Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer);
	
  end;


implementation

//004CB414
constructor TGrilleBilanCarnetDeNotes.Create(AOwner:TComponent; FeuilleClasse:TComponent; Periode:byte; FichierCdn:TFichierCdn);
begin
  //004CB414
  inherited Create(AOwner,0,FeuilleClasse,FichierCdn,Periode);
  
  Options := [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goTabs, goRowSelect]; //$180F{gvar_004CB4D0};
  f2E4 := 3;
  FixedCols := 1;
  FixedRows := 1;
  ColWidths[0] := 18;
  DefaultRowHeight := 18;
  //DefaultDrawing := False;
  //f28C := Self;
  //OnDrawCell := sub_004CD7E0;
  //fBC := Self
  OnMouseDown := sub_004CE6F4;
  sub_004CCCB8;
  
end;

//004CB4D4
procedure TGrilleBilanCarnetDeNotes.sub_004CB4D4(var Msg:TMsg);
var
  lvar_C,lvar_14, lvar_18,lvar_4,I,J,K,L:integer;
  buf,buf1,lvar_250,lvar_150:string;
  EDI,Strlist : TStringlist;
begin//0
	//004CB4D4
	//004CB4F9
	sub_004CCCB8;
	f2D8 := Msg.message;
    lvar_C := FichierCdn.GetNbrePeriodes();//f2DC est fichierCdn,get Nbre Periodes
    if (lvar_C < f2D8) then //004CB557
      Visible := (FichierCdn.GetNbreModules(f2D8) = 0) Xor True
    else//004CB575
      Visible := (FichierCdn.sub_004C4790 = 0) Xor True;
    if (Visible = False) then Exit;
    lvar_14 := FichierCdn.sub_004C8AE8;
    if (GetmoyennesEcritEtOral ) then //004CB5B1
      lvar_18 := 3
    else//004CB5BA
      lvar_18 := 0;
    EDI := FichierCdn.sub_004C3134(f2D8);
    if (lvar_C < f2D8) then
    begin//2
      //004CB601
      if (GetmoyenneParTypeDeNotes) then //004CB60A
        lvar_4 := EDI.count + 3
      else//004CB620
        lvar_4 := 2;
      ColCount := lvar_4 + 4 + lvar_14 + lvar_18;
    end//2
    else
    begin//2
      //004CB651     
      if (GetmoyenneParTypeDeNotes) then//004CB65A
        lvar_4 := EDI.count + 1
      else//004CB670
        lvar_4 := 0;
      ColCount := lvar_4 + lvar_C + 6 + lvar_18;
    end;//2
    //EAX := ESI;//f2DC
    RowCount := FichierCdn.EleveCount + $9{gvar_006178FA};
    //lvar_1C := f2DC;
    if (GetmoyenneParTypeDeNotes) then //moyenneParTypeDeNotes
    begin//2
		//004CB6D6
		if (f2D8 < lvar_C) then
		begin//3
			//004CB707
			  for I := 1 to lvar_4 - 3  do//004CB71C
			  begin//5
				//004CB726
				for J := 1 to FichierCdn.EleveCount  do
				begin//6
				  //004CB743
				  Strlist := FichierCdn.sub_004C3134(f2D8);
				  Cells[I + 1, 0] :=  'Moy. "' + Strlist[I - 1] + '"';
				  //Strlist := FichierCdn.sub_004C3134(f2D8);
				  FichierCdn.sub_004C2E60(Strlist[I - 1], f2D8,J ,buf);
				  FichierCdn.sub_004C2410(buf, GetarrondirMoyennes, buf1);
				  Cells[I + 1, J] :=  buf1;
				end;//6
			  end;//5
			Cols[lvar_4 - 1].Clear;
			if (GetmoyennesEcritEtOral) then
			begin//4
				//004CB881
				Cols[lvar_4].Clear;
				Cols[lvar_4 + 1].Clear;
				Cols[lvar_4 + 2].Clear;
				Cells[lvar_4, 0 ] := 'Moy. Ecrit';
				Cells[lvar_4 + 1, 0 ] := 'Moy. Oral';
				for I := 1 to FichierCdn.EleveCount  do//004CB8FA
				begin//6
					//004CB902
					FichierCdn.sub_004C9280(f2D8, I, GetarrondirMoyennes, buf);              
					Cells[lvar_4, I] := buf;
					FichierCdn.sub_004C8F6C(f2D8, I, GetarrondirMoyennes, buf);              
					Cells[lvar_4 + 1, I ] := buf;
				end;//6
				lvar_4 := lvar_4 + 3;
			end;//4
			Cols[lvar_4].Clear;
			
			Cells[lvar_4, 0]:= 'Moyenne bulletin sur ' + IntToStr(GetmoyennesSur);
			for I := 1 to FichierCdn.EleveCount do//004CBA16
			begin//5
				//004CBA1E
				FichierCdn.sub_004C2D10(f2D8, I, GetarrondirMoyennes, buf);
				Cells[lvar_4 + 0, I] := buf;
			end;//5
			Cols[lvar_4 + 1].Clear;
			Cols[lvar_4 + 2].Clear;
			Cols[lvar_4 + 2] :=FichierCdn.sub_004C5078(f2D8, GettrierMoyennes, GetarrondirMoyennes, GetarrondirMoyennesAnnuelles, GettypeMoyennesAnnuelles);
			for I := 1 to lvar_4 - 3 do//004CBAF5
			begin//5
				//004CBAFF
				sub_004CD0B0(I);
			end;//5
			sub_004CD0B0(lvar_4 - 1);
			Cols[lvar_4 + 3].Clear;
			for I := 1 to lvar_14 do//004CBB63
			begin//5
				//004CBB6D
				Cols[lvar_4 + 3 + I].Clear;
				FichierCdn.sub_004C8AF4(I, buf);
				Cells[lvar_4 + 3 + I, 0 ] := buf;
				for J := 1 to FichierCdn.EleveCount  do
				begin//6
					//004CBBEC
					FichierCdn.sub_004C2C00(f2D8, J, I, buf);
					Cells[lvar_4 + 3 + I, J] := buf;
				end;//6
			end;//5
			Exit;
		end;//3
        k:= FichierCdn.sub_004C3134(f2D8).count;
		for I := 1 to K do//004CBC90
		begin//4
			//004CBC9A
			Cols[I + 1].Clear;
			Strlist := FichierCdn.sub_004C3134(f2D8);
			Cells[I + 1, 0] := 'Moy. "' + Strlist[I - 1] + '"'; 
			for J := 1 to FichierCdn.EleveCount  do//004CBD22
				begin//6
				//004CBD2A
				Strlist := FichierCdn.sub_004C3134(f2D8);
				FichierCdn.sub_004C64CC(Strlist[I - 1], J,buf);
				FichierCdn.sub_004C2410(buf,GetarrondirMoyennesAnnuelles, buf1);             
				Cells[I + 1, J] := buf1;
			end;//6
			sub_004CD0B0(I);
		end;//4
		Cols[K + 2].Clear;
		lvar_4 := 0;
		if (GetmoyennesEcritEtOral) then
		begin//3
			//004CBE2E
			Cols[K + 3].Clear;
			Cols[K + 4].Clear;
			Cols[K + 5].Clear;   
			Cells[K + 3, 0] := 'Moy. ''Ecrit''';
			for I := 1 to FichierCdn.EleveCount  do//004CBE9C
			begin//5
				//004CBEA4
				FichierCdn.sub_004C9708(I, GetarrondirMoyennesAnnuelles, buf);
				Cells[K + 3, I] := buf;
			end;//5
			Cells[K + 4, 0 ] := 'Moy. ''Oral''';
			for I := 1 to FichierCdn.EleveCount  do//004CBF29
			begin//5
				//004CBF31
				FichierCdn.sub_004C9594(I, GetarrondirMoyennesAnnuelles, buf);
				Cells[K + 4, I ] := buf;
			end;//5
			sub_004CD0B0(K + 2);
			sub_004CD0B0(K + 3);
			lvar_4 := lvar_4 + lvar_18;
		end;//3
		for L := 1 to lvar_C do//004CBFE4
		begin//4
			//004CBFEC
			FichierCdn.sub_004BE9EC(L, buf);
			Cells[lvar_4 + 2 + K + L, 0] := buf;  
			for I := 1 to FichierCdn.EleveCount  do
			begin//5
				//004CC067
				FichierCdn.sub_004C2D10(L, I, GetarrondirMoyennes, buf);
				Cells[lvar_4 + 2 + K + L, I ] := buf;
			end;//5
		end;//4
		Cols[lvar_4 + 3 + K + lvar_C].Clear;
		Cells[lvar_4 + 4 + K + lvar_C, 0 ] := 'Moyenne annuelle sur ' + IntToStr(GetmoyennesSur);
		for I := 1 to FichierCdn.EleveCount  do//004CC184
		begin//4
			//004CC18C
			FichierCdn.sub_004C32B4(I, GetarrondirMoyennes, GetarrondirMoyennesAnnuelles, GettypeMoyennesAnnuelles, buf);
			Cells[lvar_4 + 4 + K + lvar_C, I ] :=buf;
		end;//4
		Cols[lvar_4 + 5 + K + lvar_C].Clear;  
		Cols[lvar_4 + 6 + K + lvar_C].Clear;
		//Cols[ESI] := lvar_1C.sub_004C5078(EDX, ECX, GetarrondirMoyennes, GetarrondirMoyennesAnnuelles, GettypeMoyennesAnnuelles);
		for I :=  K + 2 to lvar_C - 1 do //004CC2C2
		begin//4
			//004CC2C9
			sub_004CD0B0(lvar_4 + I);
		end;//4
		sub_004CD0B0(lvar_4 + lvar_C + 3 + K);
	end//2
	else 
	begin
		if (f2D8 < lvar_C) then
		begin//2
			//004CC35D  
			lvar_4 := 0;
			if (GetmoyennesEcritEtOral) then
			begin//3
				//004CC36F
				Cols[2].Clear;
				Cols[3].Clear;
				Cols[4].Clear;
				Cols[5].Clear;
				Cells[2, 0] := 'Ecrit';
				Cells[3, 0] := 'Oral';
				for I := 1 to FichierCdn.EleveCount do//004CC3EE
				begin//5
					//004CC3F6
					FichierCdn.sub_004C9280(f2D8, I, GetarrondirMoyennes, buf);
					Cells[2, I]:= buf;
					FichierCdn.sub_004C8F6C(f2D8, I, GetarrondirMoyennes, buf);
					Cells[3, I] := buf;
				end;//5
				sub_004CD0B0(1);
				sub_004CD0B0(2);
				lvar_4 := lvar_4 + 3;
			end;//3
			Cells[lvar_4 + 2, 0] := 'Moyenne bulletin sur ' + IntToStr(GetmoyennesSur);
			for I := 1 to FichierCdn.EleveCount do//004CC511
			begin//4
				//004CC519
				FichierCdn.sub_004C2D10(f2D8, I, GetarrondirMoyennes, buf);
				Cells[lvar_4 + 2, I] :=  buf;
			end;//4
			Cols[lvar_4 + 3].Clear;
			Cols[lvar_4 + 4].Clear;
			Cols[lvar_4 + 4] :=  FichierCdn.sub_004C5078(f2D8, GettrierMoyennes, GetarrondirMoyennes, GetarrondirMoyennesAnnuelles, GettypeMoyennesAnnuelles);
			sub_004CD0B0(lvar_4 + 1);
			Cols[lvar_4 + 5].Clear;
			for I := 1 to lvar_14 do//004CC624
			begin//4
				//004CC62E
				Cols[lvar_4 + 5 + I].Clear;
				FichierCdn.sub_004C8AF4(I, buf);
				Cells[lvar_4 + 5 + I, 0 ] := buf;
				for J := 1 to FichierCdn.EleveCount do
				begin//5
					//004CC6AD 
					FichierCdn.sub_004C2C00(f2D8, J, I, buf);
					Cells[lvar_4 + 5 + I, J] :=  buf;
				end;//5
			end;//4
			Exit;  
		end//2
		else
		begin
			for L := 1 to lvar_C do//004CC73B
			begin//3
				//004CC743
				FichierCdn.sub_004BE9EC(L, buf);        
				Cells[L + 1, 0] := buf;  
				for I := 1 to FichierCdn.EleveCount  do//004CC79E
				begin//5
					//004CC7A6
					FichierCdn.sub_004C2D10(L, I, GetarrondirMoyennes, buf);
					Cells[L + 1, I ] := buf;
				end;//5
				sub_004CD0B0(L);
			end;//3
			Cols[lvar_C + 2].Clear;
			lvar_4 := 0;
			if (GetmoyennesEcritEtOral) then
			begin//2
				//004CC857
				Cols[lvar_C + 3].Clear;
				Cols[lvar_C + 4].Clear;
				Cols[lvar_C + 5].Clear;
				Cells[lvar_C + 3, 0] := 'Moy. ''Ecrit''';
				for I := 1 to FichierCdn.EleveCount  do//004CC8CE
				begin//4
					//004CC8D6
					FichierCdn.sub_004C9708(I, GetarrondirMoyennesAnnuelles, buf);
					Cells[lvar_C + 3, I ] := buf;
				end;//4
				Cells[lvar_C + 4, 0 ] := 'Moy. ''Oral''';
				for I := 1 to FichierCdn.EleveCount  do//004CC95B
				begin//4
					//004CC963
					FichierCdn.sub_004C9594(I, GetarrondirMoyennesAnnuelles, buf);
					Cells[lvar_C + 4, I] := buf;
				end;//4
				sub_004CD0B0(lvar_C + 2);
				sub_004CD0B0(lvar_C + 3);
				lvar_4 := lvar_4 + lvar_18;
			end;//2
			Cells[lvar_4 + 3 + lvar_C, 0 ] := 'Moyenne annuelle sur ' + IntToStr(GetmoyennesSur); 
			for I := 1 to FichierCdn.EleveCount  do//004CCA69
			begin//3
				//004CCA71
				FichierCdn.sub_004C32B4(I, GetarrondirMoyennes, GetarrondirMoyennesAnnuelles, GettypeMoyennesAnnuelles, buf); 
				Cells[lvar_4 + 3 + lvar_C, I ] := buf;
			end;//3
			sub_004CD0B0(lvar_4 + lvar_C + 2);
			Cols[lvar_4 + 4 + lvar_C].Clear;
			Cols[lvar_4 + 5 + lvar_C].Clear;
			Cols[lvar_4 + 5 + lvar_C] := FichierCdn.sub_004C5078(lvar_C + 1, GettrierMoyennes, GetarrondirMoyennes, GetarrondirMoyennesAnnuelles, GettypeMoyennesAnnuelles);
			sub_004CD0B0(lvar_4 + 4 + lvar_C);
		end;
	end;
end;//0


//004CCCB8
procedure TGrilleBilanCarnetDeNotes.sub_004CCCB8;
var
   IRowCount,I : integer;
   Buf : string;
   lvar_4 : string;
begin//0
  //004CCCB8
    //004CCCEE
    IRowCount := byte(FichierCdn.EleveCount);
	//RowCount :=IRowCount -1; // supprimer le
    Cols[1].Clear;
    Cells[1, 0] :=  'Noms et prénoms';
    Cells[1 , gvar_006178F4 + IRowCount] := '';
    Cells[1 , gvar_006178F5 + IRowCount - 1] := 'Min :';
    Cells[1 , gvar_006178F6 + IRowCount - 1] := 'Max :';
    Cells[1 , gvar_006178F7 + IRowCount] := 'Moyenne :';
    Cells[1 , gvar_006178F8 + IRowCount - 1] := 'Ecart type :';
    Cells[1 , gvar_006178F9 + IRowCount - 1] := '% moyennes < moyenne :';
    Cells[1 , gvar_006178FA + IRowCount - 1] := '% moyennes < moyenne classe :';
    Cols[0].Clear;
      for I := 1 to IRowCount do //004CCE61
      begin//004CCE66
        Cells[0, I] := IntToStr(I);
        FichierCdn.sub_004BEA64(I, Buf);
        lvar_4 := Buf;
        FichierCdn.GetElevDateNais(I, Buf);
        if (Trim(Buf) <> '') then
        begin//004CCEF8
          if ({GetafficherDatesDeNaissance} true) then
          begin//004CCF01
            FichierCdn.GetElevDateNais(I, Buf);
            lvar_4 := lvar_4 + ' (' + Buf + ')';
          end;//5
        end;//4
        if (FichierCdn.sub_004C8E50(I)) then
        begin//004CCF70
          if ({GetafficherR} true) then
          begin//004CCF79
            lvar_4 := lvar_4 + ' (R)';
          end;//5
        end;//4
        Cells[1 , I] :=  lvar_4;
      end;//3
	  visible := true; //supprimer le 
end;

//004CD0B0
procedure TGrilleBilanCarnetDeNotes.sub_004CD0B0(a:dword);
var
  I,RowCount,M,N,Ni,Nt : integer;
  Somme,Somme2,Coefficient, NoteSur,Val,Min,Max,lvar_28 :real;
begin//0
  //004CD0B0
    //004CD108
    RowCount := FichierCdn.EleveCount;
    Cells[a + 1, RowCount + gvar_006178F5 - 1 ] :=  '';
    Cells[a + 1, RowCount + gvar_006178F6 - 1] := '';
    Cells[a + 1, RowCount + gvar_006178F7 ] := '';
    Cells[a + 1, RowCount + gvar_006178F8 - 1] := '';
    Cells[a + 1, RowCount + gvar_006178F9 - 1 ] := '';
    Cells[a + 1, RowCount + gvar_006178FA - 1 ] := '';
    N := 0;
    Ni := 0;
    lvar_28 := 0;

    Min := 20.00;
	Max := 0;
	Nt := 0;
	Somme := 0;
	Somme2 := 0;
	  for  I := 1 to RowCount do//004CD27F
	  begin
		  try
			//004CD297
			Val := StrToFloat(Cells[a + 1, I]);
			if (10.00 > Val) then
			begin//4
			  //004CD2D6
			  Ni := Ni + 1;  // lvar_9
			end;//4
			
			if (Val < Min) then
			begin//4
			  //004CD2EE
			  Min :=Val;
			  {lvar_34 := lvar_14;
			  lvar_30 := lvar_10;}
			end;//4
			if (Val > Max) then
			begin//4
			  //004CD30F
			  Max := Val;
			  {lvar_44 := lvar_14;
			  lvar_40 := lvar_10;}
			end;//4
			Somme := Val + Somme;
			Somme2 := Val * Val + Somme2;
			Nt := Nt + 1;
			N := N + 1;
		  except//3
			on E:EConvertError do
			begin//4
			  //004CD37B
			end;//4
			on E:EMathError do
			begin//4
			  //004CD382
			end;//4
		  end;//3
		  
		  
      end;//004CD39D

    try
      //004CD3AB
      if (N <= 0) then Exit;
      
      Cells[a + 1, RowCount + $5{gvar_006178F5} - 1 ] := FloatToStr(Min);
      Cells[a + 1, RowCount + $6{gvar_006178F6} - 1 ] := FloatToStr(Max);
	  //moyenne:
      Cells[a + 1, RowCount + $2{gvar_006178F7} ] := FloatToStrF(Somme / Nt,ffFixed{2}, $12{18}, 2);
	  //Ecart type:
      Cells[a + 1, RowCount + $7{gvar_006178F8} - 1 ] := FloatToStrF(Sqrt(Somme2 / Nt - Somme * Somme / (Nt * Nt)), ffFixed{2}, $12{18}, 2);
	  //%moyennes < moyenne 
      Cells[a + 1, RowCount + $8{gvar_006178F9} - 1 ] :=  FloatToStrF(Ni / N * 100,ffFixed{2}, $12{18}, 2) + ' %';
      Val := StrToFloat(Cells[a + 1, RowCount + $2{gvar_006178F7}]);
      M := 0;
      
		for I := 1 to RowCount do//004CD5D2
		begin
			try
			  //004CD5EA
			  //push EAX
			  if (Val > StrToFloat(Cells[a + 1, I])) then
			  begin//5
				//004CD62C
				M := M + 1;
			  end;//5
			except//4
			  on E:EConvertError do
			  begin//5
				//004CD65A
			  end;//5
			  on E:EMathError do
			  begin//5
				//004CD661
			  end;//5
			end;//4
			
			
        end; //004CD67C

      try
        //004CD68A

        Cells[a + 1, RowCount + $9{gvar_006178FA} - 1 ] := FloatToStrF(M / N * 100, ffFixed{2}, $12{18}, 2) + ' %';
      except//3
        on E:EConvertError do
        begin//4
          //004CD744
        end;//4
        on E:EMathError do
        begin//4
          //004CD753
          //EAX := 0;
          
        end;//4
      end;//3
    except//2
      on E:EMathError do
      begin//3
        //004CD782
      end;//3
    end;//2
    //004CD79B
end;//0


//004CEA48
destructor TGrilleBilanCarnetDeNotes.Destroy;
begin//0
  //004CEA48
  DestroyMenu(f2E8);
  DestroyMenu(f2EC);
  DestroyMenu(f2F0);
  DestroyMenu(f2F4);
  inherited Destroy;
end;//0

//004CEAA0
procedure TGrilleBilanCarnetDeNotes.WMCommand(var Message:TWMCommand);
var
  I,J : boolean;
  K:integer;
  buf:string;
begin//0
  //004CEAA0
    //004CEAC2
    I := false;
    J := false;
    case Message.ItemID of
      1,2:
      begin//3
        //004CEB2C
        if (GettrierMoyennes  <> Message.ItemID - 1) then
        begin//4
          //004CEB4C
          SettrierMoyennes(Message.ItemID - 1);
          I := true;
        end;//4
      end;//3
      3:
      begin//3
        //004CEB72
        if (GetmoyennesSur <> 20) then
        begin//4
          //004CEB80
          SetmoyennesSur(20);
          I := true;
          J := true;
        end;//4
      end;//3
      4:
      begin//3
        //004CEB95
       
        if (GetmoyennesSur <> 10) then
        begin//4
          //004CEBA3
          SetmoyennesSur(10);
          I := true;
          J := true;
        end;//4
      end;//3
      5:
      begin//3
        //004CEBB8
        FormEdit{gvar_00617CE0} := TFormEdit.Create(Self, 'Moyennes sur', IntToStr(GetmoyennesSur),1);
        FormEdit.ShowModal;
        if (FormEdit.ModalResult = 1) then
        begin//4
          //004CEC05     
          if (StrToInt(FormEdit.Edit1.Text) <> GetmoyennesSur) then
          begin//5
            //004CEC2D
            SetmoyennesSur(StrToInt(FormEdit.Edit1.Text));
            I := true;
            J := true;
          end;//5
        end;//4
        FormEdit.Destroy;
      end;//3
      6:
      begin//3
        //004CEC68
        SetmoyenneParTypeDeNotes(GetmoyenneParTypeDeNotes Xor true);
        I := true;
      end;//3
      7,8,9,10,11:
      begin//3
        //004CEC7B
        if (GetarrondirMoyennes  <> Message.ItemID - 7) then
        begin//4
          //004CEC9B
          SetarrondirMoyennes(Message.ItemID - 7);
          I := true;
          J := true;
        end;//4
      end;//3
      12,13,14,15,16:
      begin//3
        //004CECC5
        if (GetarrondirMoyennesAnnuelles  <> Message.ItemID - 12) then
        begin//4
          //004CECE5
          SetarrondirMoyennesAnnuelles(Message.ItemID - 12);
          I := true;
          J := true;
        end;//4
      end;//3
      17:
      begin//3
        //004CED0F
        Clipboard.Clear;
        buf := '';
          for K := 0 to FichierCdn.EleveCount + 8 - 1 do//004CED42
          begin//5
            //004CED4A
            buf := buf + Cells[f2FC, K] + #13 + #10;
          end;//5
        
        
        Clipboard.SetTextBuf(PChar(buf));
      end;//3
      18:
      begin//3
        //004CED97
        Clipboard.Clear;
        buf := '' + Cells[f2FC, f300] + #13 + #10;
        Clipboard.SetTextBuf(PChar(buf));
      end;//3
      19:
      begin//3
        //004CEDF3
        SetmoyennesEcritEtOral(GetmoyennesEcritEtOral Xor true);
        I := True;
      end;//3
    end;//2
    if (I Or J ) then
    begin//2
      //004CEE06
      FichierCdn.sub_004C4784(f2D8, true);
      FichierCdn.sub_004C63C8;
      SendMessageA(Handle, $403{1027}, f2D8, 0);
    end;//2
    //004CEE4C
end;//0

//004CEEB4
procedure TGrilleBilanCarnetDeNotes.sub_004CEEB4(var Msg:TMsg);
begin
  sub_004CCCB8();
end;

//004CD7E0
procedure TGrilleBilanCarnetDeNotes.sub_004CD7E0(Sender:TObject; ACol, ARow: Longint; ARect: TRect; AState: TGridDrawState);
var
  lvar_C,I ,ICol,IRow: integer;
  CWith:integer;
  R :TRect;
  Valeur:string;
begin//0
  //004CD7E0

  
    lvar_C := FichierCdn.sub_004C8AE8;
    if (Visible = False) then Exit;
    if (ACol <> 0) then
    begin//004CD864
      if (ARow = 0) then
      begin//004CD86A
        CWith := 0;
          for I := 0 to RowCount - 1 do //004CD883
          begin//5
            //004CD88B
            if (Canvas.TextWidth(Cells[ACol, I]) > CWith) then 
               CWith := Canvas.TextWidth(Cells[ACol, I]);
          end;//5

        ColWidths[ACol] := CWith + 10;
      end;//3
    end;//2
    if (ARow = 0) then//004CD8D7
     Canvas.Brush.Color := $80000004
    else//004CD8EF
      if (GetcolorationGrille) then
      begin//004CD8F8
        if (ARow mod 2 - 1 <> 0) then//004CD90A
          Canvas.Brush.Color := GetColorlignesPaires
        else//004CD924
          Canvas.Brush.Color := GetColorlignesPaires;
      end//3
      else//004CD93E
        Canvas.Brush.Color := $FFFFFF;

    Canvas.Font.Color := 0;
    if ((gdFixed in AState )) then
    begin//004CD96D
      Canvas.Brush.Color := $80000004;
    end//2
    else
    begin//004CD988
      //ESI := f2DC; 
      if (GetcolorationNote) then  //if coloration Note
      begin//3 //004CD99E
        Canvas.Font.Style := [];//gvar_004CDEE8;
        Canvas.Font.Color := 0;
        if (f2D8 < FichierCdn.GetNbrePeriodes) then
        begin//004CDA00
          ICol := ColCount-lvar_C + 2;
        end//4
        else
        begin//004CDA21
          ICol := ColCount - 1;//EBX
        end;//4
        IRow := FichierCdn.EleveCount;
          if (ARow < IRow) then//004CDA62
          begin//5
            //004CDA6C
            if (Cells[ACol, ARow] <> '') then
            begin//004CDA88
                if (ACol >= 2 {< ICol}) then//004CDAAD
                begin//8
                  //004CDAB7
                  try
                    //004CDAC5
                    if (ACol <> ICol) then //004CDACA
                      Valeur := Cells[ACol, ARow]
                    else//004CDADE                   
                      Valeur := Copy(Cells[ACol, ARow], Pos('-> ', Cells[ACol, ARow]) + 2, Length(Cells[ACol, ARow]));

					
                    if (StrToFloat(Valeur) > GetmoyennesSur/2) then //004CDB77
                      Canvas.Font.Color := _Getcouleur1Note
                    else//004CDB91
                      if (StrToFloat(Valeur) <= 3/4*GetmoyennesSur) then//004CDBBC
                        Canvas.Font.Color := _Getcouleur3Note
                      else//004CDBD6
                        Canvas.Font.Color := sub_004BA26C;

                  except//9
                    on E:EConvertError do
                    begin//004CDC14
                      if (GetcolorationGrille) then//004CDC1D
                        Canvas.Brush.Color := _Getcouleur5Note
                      else//004CDC37
                        Canvas.Brush.Color := $FFFFFF;
                    end;//10
                    on E:EMathError do
                    begin//004CDC4F
                      if (GetcolorationGrille ) then//004CDC58
                        Canvas.Brush.Color := _Getcouleur5Note
                      else//004CDC72
                        Canvas.Brush.Color := $FFFFFF;
                    end;//10
                  end;//9
                end;//8
            end;//6
          end;//5
      end//3
      else//004CDC8F
        Canvas.Font.Color := 0;
    end;//2
	
    if ((gdSelected in AState)) then
    begin//2
      //004CDCA8
      if (GetcolorationGrille ) then//004CDCB1
        Canvas.Brush.Color := GetcouleurSelection
      else//004CDCCB
        Canvas.Brush.Color := $C0C0C0;
    end;//2
	
    Canvas.FillRect(ARect);
    if (f2D8 < FichierCdn.GetNbrePeriodes) then//004CDD33
      ICol := ColCount - 1 - (lvar_C + 2)
    else//004CDD62
      ICol := ColCount - 1;//EBX

   // ESI := $4CDF00; //2
   // ECX := 8;
   // lvar_58 := ;

    if (ACol <= 255) then
    begin//004CDDC6
      if (ACol < ICol) then//004CDDCC
        Canvas.TextOut(ARect.Left + 2, ARect.Top + 3, Cells[ACol, ARow])
      else 
	  begin
		  R.Left := ARect.Left;
		  R.Top := ARect.Top + 2;//EAX
		  R.Right := ARect.Right;
		  R.Bottom := ARect.Bottom;
		  DrawTextA(Canvas.Handle, PChar(Cells[ACol, ARow]), Length(Cells[ACol, ARow]), R, 1);
	   end;
    end;//2
end;//0

procedure TGrilleBilanCarnetDeNotes.DrawCell(ACol, ARow: Longint; ARect: TRect; AState: TGridDrawState);
begin
    inherited DrawCell(ACol, ARow, ARect, AState);
	sub_004CD7E0(self, ACol, ARow, ARect, AState);
end;
procedure TGrilleBilanCarnetDeNotes.sub_004CE6F4(Sender:TObject; Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer);
var
  IRow,ICol : integer;
  R:TGridRect;
  buf:string;
begin//0
  //004CE6F4
    //004CE735
    if ({gvar_00617CE8}FormHint.Visible ) then //004CE742
      FormHint.Hide;



    MouseToCell(X, Y, IRow, ICol);
    f300 := ICol;
    f2FC := IRow;
    if (Button = mbLeft) then
    begin//2
      //004CE785
      
      if (ICol = 0) then
      begin//3
        //004CE795
        if (GetafficherFenetreInfo) then
        begin//4
          //004CE7A2
          FormHint.Color := sub_004BB87C;
          FormHint.Label1.Caption := 'Statistiques livrets scolaires';
          //FichierCdn.sub_004C5B3C(f2D8, buf);
          FormHint.Label2.Caption := 'Moyennes < 8 : ' + buf + ' %';
          //FichierCdn.sub_004C5974(f2D8, buf);
          FormHint.Label3.Caption:= 'Moyennes >= 8 et < 12 : ' + buf + ' %';
          //FichierCdn.sub_004C5CD8(f2D8, buf);
          FormHint.Label4.Caption := 'Moyennes >=12 : ' + buf + ' %';
          FormHint.f2F0 := 4;
          FormHint.Show;
        end;//4
      end;//3
    end;//2
    if (Button = mbRight) then 
	begin
		if (ICol > 0) then
		begin//2
		  //004CE900
		  R.left := 1;
		  R.top := ICol;
		  R.right := ColCount - 1;
		  R.bottom := ICol;
		  Selection := R;
		end;//2
		sub_004CDF20;  
		TrackPopupMenu(f2E8, 10, ClientToScreen(Point(X,Y)).X, ClientToScreen(Point(X,Y)).Y, 0, Handle, 0);
	end;
    //004CE98C
end;//0
procedure TGrilleBilanCarnetDeNotes.sub_004CDF20;
var 
  I,J:integer;
begin//0
  //004CDF20
    //004CDF52
    DestroyMenu(f2E8);
    f2E8 := CreatePopupMenu;
    AppendMenuA(f2E8, 0, 0, 'Turbo Menu "Grille des bilans"');
    AppendMenuA(f2E8, $800{2048}, 0, '-');
    DestroyMenu(f2EC);
    f2EC := CreatePopupMenu;
    if (GettrierMoyennes = 0) then
    begin//2
      //004CDFB2
      AppendMenuA(f2EC, 8, 1, 'Ascendant');
      AppendMenuA(f2EC, 0, 2, 'Descendant');
    end//2
    else
    begin//2
      //004CDFDE
      AppendMenuA(f2EC, 0, 1, 'Ascendant');
      AppendMenuA(f2EC, 8, 2, 'Descendant');
    end;//2
    AppendMenuA(f2E8, $10{16}, f2EC, 'Classement des moyennes');
    AppendMenuA(f2E8, $800{2048}, 0, '-');
    DestroyMenu(f2F0);
    f2F0 := CreatePopupMenu;
    AppendMenuA(f2F0, 0, 3, '20');
    AppendMenuA(f2F0, 0, 4, '10');
    AppendMenuA(f2F0, 0, 5, 'Autre ...');
    AppendMenuA(f2E8, $10{16}, f2F0, 'Moyennes calculées sur');
    AppendMenuA(f2E8, $800{2048}, 0, '-');
    if (GetmoyenneParTypeDeNotes) then
    begin//2
      //004CE0C7
      AppendMenuA(f2E8, 8, 6, 'Une moyenne par type de notes');
    end//2
    else
    begin//2
      //004CE0DE
      AppendMenuA(f2E8, 0, 6, 'Une moyenne par type de notes');
    end;//2
    AppendMenuA(f2E8, $800, 0, '-');
    if (GetmoyennesEcritEtOral) then
    begin//2
      //004CE114
      AppendMenuA(f2E8, 8, $13{19}, 'Afficher moyennes écrit et oral');
    end//2
    else
    begin//2
      //004CE12B
      AppendMenuA(f2E8, 0, $13{19}, 'Afficher moyennes écrit et oral');
    end;//2
    DestroyMenu(f2F4);
    f2F4 := CreatePopupMenu;
    I := GetarrondirMoyennes;
    AppendMenuA(f2E8, $800{2048}, 0, '-');
    if (I = 0) then
    begin//2
      //004CE17A
      AppendMenuA(f2F4, 8, 7, 'Ne pas arrondir');
    end//2
    else
    begin//2
      //004CE191
      AppendMenuA(f2F4, 0, 7, 'Ne pas arrondir');
    end;//2
    if (I = 1) then
    begin//2
      //004CE1AB
      AppendMenuA(f2F4, 8, 8, 'Au dixième de point');
    end//2
    else
    begin//2
      //004CE1C2
      AppendMenuA(f2F4, 0, 8, 'Au dixième de point');
    end;//2
    if (I = 2) then
    begin//2
      //004CE1DC
      AppendMenuA(f2F4, 8, 9, 'Au quart de point');
    end//2
    else
    begin//2
      //004CE1F3
      AppendMenuA(f2F4, 0, 9, 'Au quart de point');
    end;//2
    if (I = 3) then
    begin//2
      //004CE20D
      AppendMenuA(f2F4, 8, 10, 'Au demi-point');
    end//2
    else
    begin//2
      //004CE224
      AppendMenuA(f2F4, 0, 10, 'Au demi-point');
    end;//2
    if (I = 4) then
    begin//2
      //004CE23E
      AppendMenuA(f2F4, 8, 11, 'Spécial Brevet');
    end//2
    else
    begin//2
      //004CE255
     AppendMenuA(f2F4, 0, 11, 'Spécial Brevet');
    end;//2
    AppendMenuA(f2E8, $10{16}, f2F4, 'Arrondir les moyennes non annuelles'); 
    if (FichierCdn.GetNbrePeriodes >=f2D8 ) then//Nbre Periodes
    begin//2
      //004CE2C1
      DestroyMenu(f2F8);
      f2F8 := CreatePopupMenu;
      I := GetarrondirMoyennesAnnuelles;
      AppendMenuA(f2E8, $800{2048}, 0, '-');
      if (I = 0) then
      begin//3
        //004CE2FB
        AppendMenuA(f2F8, 8, 12, 'Ne pas arrondir');
      end//3
      else
      begin//3
        //004CE312
        AppendMenuA(f2F8, 0, 12, 'Ne pas arrondir');
      end;//3
      if (I = 1) then
      begin//3
        //004CE32C
        AppendMenuA(f2F8, 8, 13, 'Au dixième de point');
      end//3
      else
      begin//3
        //004CE343
        AppendMenuA(f2F8, 0, 13, 'Au dixième de point');
      end;//3
      if (I = 2) then
      begin//3
        //004CE35D
        AppendMenuA(f2F8, 8, 14, 'Au quart de point');
      end//3
      else
      begin//3
        //004CE374
        AppendMenuA(f2F8, 0, 14, 'Au quart de point');
      end;//3
      if (I = 3) then
      begin//3
        //004CE38E
        AppendMenuA(f2F8, 8, 15, 'Au demi-point');
      end//3
      else
      begin//3
        //004CE3A5
        AppendMenuA(f2F8, 0, 15, 'Au demi-point');
      end;//3
      if (I = 4) then
      begin//3
        //004CE3BF
        AppendMenuA(f2F8, 8, $10{16}, 'Spécial Brevet');
      end//3
      else
      begin//3
        //004CE3D6
        AppendMenuA(f2F8, 0, $10{16}, 'Spécial Brevet');
      end;//3
      AppendMenuA(f2E8, $10{16}, f2F8, 'Arrondir les moyennes annuelles');
    end;//2
    if (Trim(Cells[f2FC, 0]) <> '') then
    begin//2
      //004CE429
      AppendMenuA(f2E8, $800{2048}, 0, '-');
      AppendMenuA(f2E8, 0, $11{17}, PChar('Copier la colonne "' + Cells[f2FC, 0] + '" dans le Presse-Papiers'));
    end;//2
    if (Trim(Cells[f2FC, f300]) <> '') then 
	begin
		AppendMenuA(f2E8, $800{2048}, 0, '-');
		AppendMenuA(f2E8, 0, $12{18}, PChar('Copier la cellule "' + Cells[f2FC, f300] + '" dans le Presse-Papiers'));
	end;
    //004CE51E
end;//0

end.