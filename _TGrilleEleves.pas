{***************************************
* Version Original V0.01
* Decompiled by HOUIDEF AEK v.18:38 mardi 20 mars 2018
***************************************}
unit _TGrilleEleves;

interface

uses
  SysUtils, Windows, Messages,Grids ,Classes, ClipBrd, StdCtrls, Controls, _TGrilleGenerique, UFichierCdn, dialogs,
  _FormHint,Unit111,_FormModifierEleve;

type
  TGrilleElevesCarnetDeNotes = class(TGrilleGeneriqueCarnetDeNotes)
  protected
    procedure DrawCell(ACol, ARow: Longint; ARect: TRect; AState: TGridDrawState);override; //supprimer le 
	procedure MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); override;  //supprimer le 
  public
    f2E8: dword; 
    f2EC:dword;//f2EC
    f2F0:HMENU;//f2F0
    destructor Destroy; virtual;//004D133C
    procedure WMCommand(var Message: TWMCommand); message WM_COMMAND;//004D162C
	procedure sub_004D1C64(Sender:TObject; Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer);//004D1C64
    procedure sub_004D29FC(var Message:TMsg); message 1027;//004D29FC //procedure Dispatch(var Message); override;
    procedure sub_004D2398(var Msg: TMsg);  message 1028;//004D2398 //procedure Dispatch(var Message); override;
    constructor Create(AOwner:TComponent; FeuilleClasse:TComponent; Periode:byte; FichierCdn:TFichierCdn);//004D1250
    procedure sub_004D1370;//004D1370
    procedure sub_004D292C(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);//(a:pointer; b:pointer; c:pointer; d:pointer; e:pointer);//004D292C
  end;

implementation

//004D1250
constructor TGrilleElevesCarnetDeNotes.Create(AOwner:TComponent; FeuilleClasse:TComponent; Periode:byte; FichierCdn:TFichierCdn);
begin
  //004D1250
  f2E4 := 0;
  inherited Create(AOwner,0,FeuilleClasse,FichierCdn,Periode);
  ScrollBars := ssNone; //0;
  Visible := False;
  Align := alLeft; //3
  FixedCols := 1;
  FixedRows := 1;
  ColCount := 2;
  DefaultRowHeight := 18;
  ColWidths[0] := 18;
  //DefaultDrawing := False;
  //f28C := Self;
  //OnDrawCell := sub_004D292C;
  //fBC := Self;
  //OnMouseDown := sub_004D1C64; //004D1C84
  f2F0 := 0;
  SendMessageA(Handle, 1028, 0, 0);
end;

//004D133C
destructor TGrilleElevesCarnetDeNotes.Destroy;
begin
  //004D133C
  //DestroyMenu(f2F0); 
  inherited Destroy;
end;

//004D1370
procedure TGrilleElevesCarnetDeNotes.sub_004D1370;
var
  NomEleve:String;
begin//0
  //004D1370
 (*
  
  lvar_10C := 0;
  lvar_108 := 0;
  NomEleve := 0; //EDX*)
    //004D139C
    DestroyMenu(f2F0);
    f2F0 := CreatePopupMenu;
    AppendMenuA(f2F0, 0, 0, 'Turbo Menu "Liste des élèves"');
    AppendMenuA(f2F0, 2048, 0, '-');
    if (FichierCdn.sub_004C6680) then
    begin//2
      //004D13EF
      if (f2EC > 0) then
      begin//004D13FD
        FichierCdn.sub_004BEA64(f2EC{NomEleve}, NomEleve);
        AppendMenuA(f2F0, 0, 1, PChar('Supprimer "' + NomEleve + '" de la liste des élèves'));
        AppendMenuA(f2F0, 0, 2, PChar('Modifier les informations de "' + NomEleve + '"'));
        AppendMenuA(f2F0, 2048, 0, '-');
      end;//3
      if (FichierCdn.sub_004BEA58 < 50) then
      begin//004D14C4
        AppendMenuA(f2F0, 0, 3, 'Ajouter un élève ...');
      end//3
      else
      begin//004D14DB
        AppendMenuA(f2F0, 1, 3, 'Ajouter un élève ...');
      end;//3
      AppendMenuA(f2F0, 2048, 0, '-');
    end;//2
    AppendMenuA(f2F0, 0, 4, 'Copier la liste des élèves dans le Presse-Papiers');
    //004D152A
end;

//004D162C
procedure TGrilleElevesCarnetDeNotes.WMCommand(var Message:TWMCommand);
var
  buf,buf1:string;
  I:integer;
begin//0
  
  //004D162C
  
    //004D167C
    if (Message.ItemID = 1) then
    begin//004D1687
      FichierCdn.sub_004BEA64(f2EC {lvar_8}, buf);
      if (MessageBoxA(0, PChar('Supprimer "' + buf + '" de la liste des élèves ?'),'Suppression d''un élève' , 36) = 6) then
      begin//004D16F9
        FichierCdn.sub_004C1158(f2EC);
        SendMessageA(f2E0, 1032, f2D8, 0);
        SendMessageA(Handle, 1028, 0, 0);
        SendMessageA(f2E0, 1033, f2D8, 0);
        SendMessageA(f2E0, 1030, 0, 0);
      end;//3*)
    end;//2
    if (Message.ItemID = 2) then
    begin//004D1785
      FichierCdn.sub_004BEA64( f2EC, buf);
      FichierCdn.sub_004C8BB8( f2EC, buf1);
      FormModifierEleve{gvar_00617CF8} := TFormModifierEleve.Create(Self, buf, buf1, FichierCdn.sub_004C8E50(f2EC),'');
      FormModifierEleve.ShowModal;
      if (FormModifierEleve.ModalResult = 1) then
      begin//004D1854

        (*FichierCdn.sub_004C1954(f2EC, FormModifierEleve.EditNomPrenom_FormModifier.text,
									  FormModifierEleve.CheckBoxRedoublant_FormModifier.Checked,
									  FormModifierEleve.EditDateDeNaissance_FormModifier.text);*)
        SendMessageA(Handle, 1028, 0, 0);
        SendMessageA(f2E0, 1033, f2D8, 0);
        SendMessageA(f2E0, 1032, f2D8, 0);
        SendMessageA(f2E0, 1030, 0, 0);
      end;//3
      FormModifierEleve.Destroy;
    end;//2
    if (Message.ItemID = 3) then
    begin//004D196D
      FormModifierEleve{gvar_00617CF8} := TFormModifierEleve.Create(Self, '', '', false, '');
      FormModifierEleve.ShowModal;
      if (FormModifierEleve.ModalResult = 1) then
      begin//004D19B1
        FormModifierEleve.CheckBoxRedoublant_FormModifier.Checked;
        //FichierCdn.sub_004C14C8(FormModifierEleve.EditNomPrenom_FormModifier.text, FormModifierEleve.EditDateDeNaissance_FormModifier.text, sub_004D1C48);
        SendMessageA(f2E0, 1032, f2D8, 0);
        SendMessageA(Handle, 1028, 0, 0);
        SendMessageA(f2E0, 1033, f2D8, 0);
        SendMessageA(f2E0, 1030, 0, 0);
      end;//3
      FormModifierEleve.Destroy;
    end;//2
    if (Message.ItemID = 4) then 
	begin
		Clipboard.Clear;
		Buf := '';
		for I := 1 to FichierCdn.sub_004BEA58 do //004D1ADE
		  begin //004D1AE3
			FichierCdn.sub_004BEA64(I, buf1);
			  //....
			Buf := Buf + buf1 + #13 + #10;
		  end;//3
		
		Clipboard.SetTextBuf(PChar(Buf));
	end;
    //004D1B59
end;

//004D1BAC
(* 004D1BAC    push        ebx
>004D1BAD    jne         004D1C1F
>004D1BAF    jo          004D1C23
 004D1BB1    jae         004D1C27
 004D1BB4    imul        ebp,dword ptr [edi+6E],75276420
 004D1BBB    outs        dl,byte ptr [esi]
 004D1BBC    and         cl,ch
 004D1BBE    ins         byte ptr [edi],dl
 004D1BBF    call        004D813A
 004D1BC4    ???
 004D1BC5    ???
 004D1BC6    ???
 004D1BC7    dec         dword ptr [ebx]
 004D1BC9    add         byte ptr [eax],al
 004D1BCB    add         byte ptr [ebx+75],dl;{'Supprimer "'}
>004D1BCE    jo          004D1C40
>004D1BD0    jb          004D1C3B
 004D1BD2    ins         dword ptr [edi],dl
 004D1BD3    jb          004D1BF6
 004D1BD6    and         al,byte ptr [eax]
 004D1BD8    ???
 004D1BD9    ???
 004D1BDA    ???
 004D1BDB    call        fword ptr [edx]
 004D1BDD    add         byte ptr [eax],al
 004D1BDF    add         byte ptr [edx],ah;{'" de la liste des élèves ?'}
 004D1BE1    and         byte ptr [ebp+20],ah
 004D1BE5    ins         byte ptr [edi],dl
 004D1BE6    popad
 004D1BE7    and         byte ptr [ecx+ebp*2+73],ch
>004D1BEB    je          004D1C52
 004D1BED    and         byte ptr [ebp+73],ah
 004D1BF1    and         cl,ch
 004D1BF3    ins         byte ptr [edi],dl
 004D1BF4    call        20C0816F
 004D1BF9    aas
 004D1BFA    add         byte ptr [eax],al
 004D1BFC    ???
 004D1BFD    ???
 004D1BFE    ???
 004D1BFF    jmp         dword ptr [eax+eax]
 004D1C02    add         byte ptr [eax],al
 004D1C04    dec         ebp
 004D1C05    outs        dl,dword ptr [esi]
 004D1C06    imul        esp,dword ptr fs:[esi+69],6C207265
 004D1C0E    jae         004D1C31
 004D1C11    imul        ebp,dword ptr [esi+66],616D726F
>004D1C18    je          004D1C83
 004D1C1A    outs        dl,dword ptr [esi]
 004D1C1B    outs        dl,byte ptr [esi]
>004D1C1C    jae         004D1C3E
 004D1C1E    ???
 004D1C1F    and         byte ptr gs:[edi-17],ch
 004D1C24    ins         byte ptr [edi],dl
 004D1C25    call        004D81A0
 004D1C2A    add         byte ptr [eax],al
 004D1C2C    ???
 004D1C2D    ???
 004D1C2E    ???
 004D1C2F    call        dword ptr [eax]
 004D1C31    add         byte ptr [eax],al
 004D1C33    add         byte ptr [ecx+6A],al;{'Ajouter un élève'}
 004D1C36    outs        dl,dword ptr [esi]
>004D1C37    jne         004D1CAD
 004D1C39    jb          004D1C5C
>004D1C3C    jne         004D1CAC
 004D1C3E    and         cl,ch
 004D1C40    ins         byte ptr [edi],dl
 004D1C41    call        004D81BC
 004D1C46    add         byte ptr [eax],al
 004D1C48    add         dword ptr [ecx],esi
 004D1C4A    add         byte ptr [eax],al
 004D1C4C    ???
 004D1C4D    ???
 004D1C4E    ???
 004D1C4F    inc         dword ptr [ecx]
 004D1C51    add         byte ptr [eax],al
 004D1C53    add         byte ptr ds:[0FF000000],cl;{#13}
 004D1C59    ???
 004D1C5A    ???
 004D1C5B    inc         dword ptr [ecx]
 004D1C5D    add         byte ptr [eax],al
 004D1C5F    add         byte ptr [edx],cl;{#10}
 004D1C61    add         byte ptr [eax],al
 004D1C63    add         byte ptr [ebp-75],dl
 004D1C66    in          al,dl
 004D1C67    push        ecx
 004D1C68    mov         ecx,52
 004D1C6D    push        0
 004D1C6F    push        0
 004D1C71    dec         ecx
>004D1C72    jne         004D1C6D
 004D1C74    push        ecx
 004D1C75    xchg        ecx,dword ptr [ebp-4]
 004D1C78    push        ebx
 004D1C79    push        esi
 004D1C7A    push        edi
 004D1C7B    mov         ebx,ecx
 004D1C7D    mov         edi,eax
 004D1C7F    mov         esi,dword ptr [ebp+0C]
 004D1C82    xor         eax,eax
 *)
 //==============================================
procedure TGrilleElevesCarnetDeNotes.sub_004D1C64(Sender:TObject; Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer);
var
 ACol, ARow,Count,I: integer;
 Buf0,Buf1:string;
 lvar_18:string;
 lvar_24:TGridRect;
begin//0
  //004D1C64..004D1C90
    MouseToCell(X, Y, ACol, ARow);
    if (FormHint.Visible) then //004D1CB1
      FormHint.Hide;
    if (Button = mbLeft) then
    begin//004D1CC5
      if (ACol <> 1) then Exit;
      Count := FichierCdn.sub_004BEA58;
      if (ARow <= 255) then
      begin//004D1D03
        if (ARow < Count) then
        begin//004D1D0D
          if ({sub_004BB930}true) then
          begin//004D1D1A
            FormHint.Color := sub_004BB87C;
            if (FichierCdn.sub_004C8E50(ARow)) then
            begin//004D1D4C
              FichierCdn.sub_004BEA64(ARow, Buf0);//lvar_150
              FichierCdn.sub_004C8BB8(ARow, Buf1); //lvar_254
              FormHint.Label1.Caption:= Buf0 + ' ' + Buf1 + ' (redoublant)';
            end//6
            else
            begin//004D1DDF
              FichierCdn.sub_004BEA64(ARow, Buf0); //Determiner le Nom d'éleve;
              FichierCdn.sub_004C8BB8(ARow, Buf1); //Determiner la date de Naissance;
              FormHint.Label1.Caption := Buf0 + ' ' +  Buf1;
            end;//6
            FichierCdn.sub_004C5404(f2D8, ARow, Buf0); //Determiner la Note la plus basse de la période
            FormHint.Label2.Caption := 'Note la plus basse de la période : ' + Buf0;
            //FichierCdn.sub_004C56C0( f2D8, ARow, Buf0);// Determiner la Note la plus haute de la période
            FormHint.Label3.Caption := 'Note la plus haute de la période : ' + Buf0;
			lvar_18 := '';
			  for I:=1 to FichierCdn.sub_004BE9E0 do //004D1F63
			  begin
				  if (FichierCdn.sub_004BEAD0(I) > 0) then
				  begin//004D1F82
					//FichierCdn.sub_004C2D10(I, ARow, sub_004B9E10, Buf0);
					lvar_18 := lvar_18 + Buf0 + ' - ';
				  end//7
				  else
				  begin//004D1FE3
					lvar_18 := lvar_18 + '? - '; //$4D2338;
				  end;//7
			  end;	  
				           
            if (FichierCdn.sub_004BEAD0(FichierCdn.sub_004BE9E0) > 0) then
            begin//004D200C
              //FichierCdn.sub_004C2D10(FichierCdn.sub_004BE9E0, ARow, sub_004B9E10, Buf0);
              lvar_18 := lvar_18 + Buf0;
            end//6
            else
            begin//004D205A
              lvar_18 := lvar_18 + '?'; //$4D2348
            end;//6
            FormHint.Label4.Caption := 'Moyennes bulletin sur ' + {IntToStr(sub_004B9E48) +} ' : ' + lvar_18;
            //FichierCdn.sub_004C32B4(ARow, sub_004B9E10, sub_004BC298, sub_004BC30C, Buf0);
            FormHint.Label5.Caption := 'Moyenne annuelle sur ' + {IntToStr(sub_004B9E48) +} ' : ' + Buf0;
            FormHint.f2F0 := 5;
            FormHint.Show;
            Exit;
          end;//5
        end;//4
      end;//3
    end;//2
    if (Button = mbRight) then 
	begin
		lvar_24.left := 1;
		lvar_24.Top := ARow;
		lvar_24.right := 1;
		lvar_24.Bottom := ARow;
		if (ARow > 0) then //004D2196
		  Selection := lvar_24;

		SendMessageA(f2E0, 1025, ARow, 255);
		f2E8 := ACol;
		f2EC := ARow;
		if (ACol <> 1) then Exit;
		FichierCdn.sub_004BEA58;
		if (ARow <= 255) then
		begin//004D2205
		  if (ARow < Count) then
		  begin//004D220B
			sub_004D1370;
			TrackPopupMenu(f2F0, 10, ClientToScreen(Point(X,Y)).X, ClientToScreen(Point(X,Y)).Y, 0, Handle, 0);
		  end;//3
		end;//2
	end;

end;//0


//004D292C
procedure TGrilleElevesCarnetDeNotes.sub_004D292C(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);//(a:pointer; b:pointer; c:pointer; d:pointer; e:pointer);
var
  lvar_4:pointer;
  lvar_10:pointer;
  lvar_14:TRect;
  lvar_18:AnsiString;
begin//0
   
  //004D292C
    //sub_004CA104(Sender,ACol, ARow, Rect, State);
    Canvas.FillRect(Rect);
    Canvas.TextOut(Rect.Left + 2, Rect.Top + 2, Cells[ACol, ARow]);
    SendMessageA(f2E0, 1042, Width, 0);
end;

//004D2398
procedure TGrilleElevesCarnetDeNotes.sub_004D2398(var Msg: TMsg);
var 
 count,I : integer;
 buf,lvar_8 :string;
begin//0
  //004D2398..004D23CE
    Count := FichierCdn.sub_004BEA58;
    RowCount:= Count + $12{gvar_00617902};
    Cols[1].Clear;
    Cells[ 1 ,0] := 'Noms et prénoms';
    Cells[ 1 , Count + $4 {gvar_006178F4}]  := 'Nombre d''élèves présents :';
    Cells[ 1 ,Count + $5 {gvar_006178F5 }]  := 'Min :'; 
    Cells[ 1 , Count + $6 {gvar_006178F6}]  := 'Max :';
    Cells[ 1 , Count + $2 {gvar_006178F7}] :=  'Moyenne :'; 
    Cells[ 1 , Count + $7 {gvar_006178F8}] :=  'Ecart type :';
    Cells[ 1 ,Count + $8 {gvar_006178F9 }] :=  '% notes < moyenne :'; 
    Cells[ 1 , Count + $9 {gvar_006178FA}] :=  '% notes < moyenne classe :';
    Cells[ 1 , Count + $0B {gvar_006178FB}] :=  'Noté sur :';
    Cells[ 1 , Count + $0C {gvar_006178FC}] :=  'Coefficient :'; 
    Cells[ 1 , Count + $0D {gvar_006178FD}] :=  'Compte dans la moyenne :';
    Cells[ 1 , Count + $0E {gvar_006178FE}] :=  'Date :';
    Cells[ 1 , Count + $0F {gvar_006178FF}] :=  'Commentaire :';
    Cells[ 1 , Count + $10 {gvar_00617900}] :=  'Type de notes :';
    Cells[ 1 , Count + $11 {gvar_00617901}] :=  'Oral ou écrit :';
    Cols[0].Clear;
      for I := 1 to Count do //004D2630
      begin//004D2635
        Cells[0, I] := IntToStr(I);
		Buf := '1111';
        FichierCdn.sub_004BEA64(I, Buf);
		lvar_8 := Buf;
        FichierCdn.sub_004C8BB8(I, Buf);
        if (Trim(Buf) <> '') then
        begin//004D26B5
          if (sub_004BB9B4) then
          begin//004D26BE
            lvar_8 := lvar_8 + ' (' +Buf + ')';
          end;//5
        end;//4
        if (FichierCdn.sub_004C8E50(I)) then
        begin//004D2713
          if (sub_004BB95C) then
          begin//004D271C
            lvar_8 := lvar_8 + ' (R)';
          end;//5
        end;//4
        Cells[ 1 , I] :=  lvar_8;
      end;//3

    Visible := (Count > 0);
end;//0

//004D29FC
procedure TGrilleElevesCarnetDeNotes.sub_004D29FC(var Message: TMsg); //dynamic;
begin
   //showmessage('MMMMMMMMMM:'+inttostr(Message.Message));
   f2D8 := Message.Message;
end;
procedure TGrilleElevesCarnetDeNotes.DrawCell(ACol, ARow: Longint; ARect: TRect; AState: TGridDrawState);
begin
    inherited DrawCell(ACol, ARow, ARect, AState);
	sub_004D292C(Self, ACol, ARow, ARect, AState);
	
end;
 procedure TGrilleElevesCarnetDeNotes.MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer);//supprimer le 
 begin
   inherited MouseDown(Button,Shift,X, Y);
   sub_004D1C64(self,Button,Shift,X, Y);
 end;
end.