{************************************************************
* File             : _TGrilleEleves                         *  
* Version          : V0.03 build 1                          *
* Decompiled by    : Houidef AEK                            * 
* Update           : Thursday 20 May 2021 @ 01:22 AM        *
* The disassembly process : 100%                            *
************************************************************}
unit _TGrilleEleves;

interface

uses
  SysUtils, Windows, Messages,Grids ,Classes, ClipBrd, StdCtrls, Controls, _TGrilleGenerique, UFichierCdn, dialogs,
  _FormHint,Unit111,_FormModifierEleve,constantes;

type
  TGrilleElevesCarnetDeNotes = class(TGrilleGeneriqueCarnetDeNotes)
  protected
    procedure DrawCell(ACol, ARow: Longint; ARect: TRect; AState: TGridDrawState);override; //supprimer le 
	procedure MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); override;  //supprimer le 
  public
    f2E8: dword; 
    FNumEleve:dword;//f2EC
    FMenu:HMENU;//f2F0
    destructor Destroy; virtual;//004D133C
    procedure WMCommand(var Message: TWMCommand); message WM_COMMAND;//004D162C
	procedure MouseDownEvent(Sender:TObject; Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer);//004D1C64
    procedure sub_004D29FC(var Message:TMsg); message 1027;//004D29FC 
    procedure _Refrech(var Msg: TMsg);  message 1028;//004D2398 
    constructor Create(AOwner:TComponent; FeuilleClasse:TComponent; Periode:byte; FichierCdn:TFichierCdn);//004D1250
    procedure PopupMenu1;//004D1370
    procedure _DrawCellEleve(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);//(a:pointer; b:pointer; c:pointer; d:pointer; e:pointer);//004D292C
  end;

implementation

//004D1250
constructor TGrilleElevesCarnetDeNotes.Create(AOwner:TComponent; FeuilleClasse:TComponent; Periode:byte; FichierCdn:TFichierCdn);
begin
  //004D1250
  TypeGrille := 0;
  inherited Create(AOwner,0,FeuilleClasse,FichierCdn,Periode);
  Font.name := 'MS Sans Serif';  //line added
  Font.CHARSET := DEFAULT_CHARSET;//line added											 
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
  //OnDrawCell := _DrawCellEleve;
  //fBC := Self;
  //OnMouseDown := MouseDownEvent; //004D1C84
  FMenu := 0;
  SendMessageA(Handle, 1028, 0, 0);
end;

//004D133C
destructor TGrilleElevesCarnetDeNotes.Destroy;
begin
  //004D133C
  DestroyMenu(FMenu); 
  inherited Destroy;
end;

//004D1370
procedure TGrilleElevesCarnetDeNotes.PopupMenu1;
var
  NomEleve:String;
begin//0
  //004D1370
 
    DestroyMenu(FMenu);
    FMenu := CreatePopupMenu;
    AppendMenuA(FMenu, 0, 0, 'Turbo Menu "Liste des élèves"');
    AppendMenuA(FMenu, 2048, 0, '-');
    if (FichierCdn.IsPersonnelleVersion) then
    begin//2
      //004D13EF
      if (FNumEleve > 0) then
      begin//004D13FD
        FichierCdn.GetEleveName(FNumEleve, NomEleve);
        AppendMenuA(FMenu, 0, 1, PChar('Supprimer "' + NomEleve + '" de la liste des élèves'));
        AppendMenuA(FMenu, 0, 2, PChar('Modifier les informations de "' + NomEleve + '"'));
        AppendMenuA(FMenu, 2048, 0, '-');
      end;//3
      if (FichierCdn.EleveCount < 50) then
      begin//004D14C4
        AppendMenuA(FMenu, 0, 3, 'Ajouter un élève ...');
      end//3
      else
      begin//004D14DB
        AppendMenuA(FMenu, 1, 3, 'Ajouter un élève ...');
      end;//3
      AppendMenuA(FMenu, 2048, 0, '-');
    end;//2
    AppendMenuA(FMenu, 0, 4, 'Copier la liste des élèves dans le Presse-Papiers');
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
      FichierCdn.GetEleveName(FNumEleve, buf);
      if (MessageBoxA(0, PChar('Supprimer "' + buf + '" de la liste des élèves ?'),'Suppression d''un élève' , 36) = 6) then
      begin//004D16F9
        FichierCdn.DeleteEleve(FNumEleve);
        SendMessageA(MyHandle, 1032, NPeriode, 0);
        SendMessageA(Handle, 1028, 0, 0);
        SendMessageA(MyHandle, 1033, NPeriode, 0);
        SendMessageA(MyHandle, 1030, 0, 0);
      end;//3*)
    end;//2
    if (Message.ItemID = 2) then
    begin//004D1785
      FichierCdn.GetEleveName( FNumEleve, buf);
      FichierCdn.GetElevDateNais( FNumEleve, buf1);
      FormModifierEleve{gvar_00617CF8} := TFormModifierEleve.Create(Self, buf, buf1, FichierCdn.IsRedoublant(FNumEleve),'');
      FormModifierEleve.ShowModal;
      if (FormModifierEleve.ModalResult = 1) then
      begin//004D1854

        FichierCdn.SetEleve_v2(FNumEleve, FormModifierEleve.EditNomPrenom_FormModifier.text,
									  FormModifierEleve.CheckBoxRedoublant_FormModifier.Checked,
									  FormModifierEleve.EditDateDeNaissance_FormModifier.text);
        SendMessageA(Handle, 1028, 0, 0);
        SendMessageA(MyHandle, 1033, NPeriode, 0);
        SendMessageA(MyHandle, 1032, NPeriode, 0);
        SendMessageA(MyHandle, 1030, 0, 0);
      end;//3
      FormModifierEleve.Destroy;
    end;//2
    if (Message.ItemID = 3) then
    begin//004D196D
      FormModifierEleve{gvar_00617CF8} := TFormModifierEleve.Create(Self, '', '', false, '');
      FormModifierEleve.ShowModal;
      if (FormModifierEleve.ModalResult = 1) then
      begin//004D19B1
        FichierCdn.sub_004C14C8(FormModifierEleve.EditNomPrenom_FormModifier.text, FormModifierEleve.EditDateDeNaissance_FormModifier.text, '1',FormModifierEleve.CheckBoxRedoublant_FormModifier.Checked);
        SendMessageA(MyHandle, 1032, NPeriode, 0);
        SendMessageA(Handle, 1028, 0, 0);
        SendMessageA(MyHandle, 1033, NPeriode, 0);
        SendMessageA(MyHandle, 1030, 0, 0);
      end;//3
      FormModifierEleve.Destroy;
    end;//2
    if (Message.ItemID = 4) then 
	begin
		Clipboard.Clear;
		Buf := '';
		for I := 1 to FichierCdn.EleveCount do //004D1ADE
		  begin //004D1AE3
			FichierCdn.GetEleveName(I, buf1);
			  //....
			Buf := Buf + buf1 + #13 + #10;
		  end;//3
		
		Clipboard.SetTextBuf(PChar(Buf));
	end;
    //004D1B59
end;
procedure TGrilleElevesCarnetDeNotes.MouseDownEvent(Sender:TObject; Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer);
var
 ACol, ARow,Count,I: integer;
 buf,Buf0,Buf1:string;
 lvar_18:string;
 R:TGridRect;
begin//0
  //004D1C64..004D1C90
    MouseToCell(X, Y, ACol, ARow);
    if (FormHint.Visible) then //004D1CB1
      FormHint.Hide;
    if (Button = mbLeft) then
    begin//004D1CC5
      if (ACol = 1) then 
	  begin									 
		  Count := FichierCdn.EleveCount;
		  if (ARow <= 255) then
		  begin//004D1D03
			if (ARow < Count) then
			begin//004D1D0D
			  if (GetafficherFenetreInfo) then
			  begin//004D1D1A
				FormHint.Color := sub_004BB87C;
				if (FichierCdn.IsRedoublant(ARow)) then
				begin//004D1D4C
				  FichierCdn.GetEleveName(ARow, Buf0);//lvar_150
				  FichierCdn.GetElevDateNais(ARow, Buf1); //lvar_254
				  FormHint.Label1.Caption:= Buf0 + ' ' + Buf1 + ' (redoublant)';
				end//6
				else
				begin//004D1DDF
				  FichierCdn.GetEleveName(ARow, Buf0); //Determiner le Nom d'éleve;
				  FichierCdn.GetElevDateNais(ARow, Buf1); //Determiner la date de Naissance;
				  FormHint.Label1.Caption := Buf0 + ' ' +  Buf1;
				end;//6
				FichierCdn.GetStrMinMoy(NPeriode, ARow, Buf0); //Determiner la Note la plus basse de la période
				FormHint.Label2.Caption := 'Note la plus basse de la période : ' + Buf0;
				FichierCdn.GetMaxNotePeriode( NPeriode, ARow, Buf0);// Determiner la Note la plus haute de la période
				FormHint.Label3.Caption := 'Note la plus haute de la période : ' + Buf0;
				lvar_18 := '';
				  for I:=1 to FichierCdn.GetNbrePeriodes do //004D1F63
				  begin
					  if (FichierCdn.GetNbreModules(I) > 0) then
					  begin//004D1F82
						FichierCdn.GetMoyBulletin(I, ARow, GetarrondirMoyennes, Buf0);
						lvar_18 := lvar_18 + Buf0 + ' - ';
					  end//7
					  else//004D1FE3
						lvar_18 := lvar_18 + '? - '; //$4D2338;
				  end;	  
							   
				if (FichierCdn.GetNbreModules(FichierCdn.GetNbrePeriodes) > 0) then
				begin//004D200C
				  FichierCdn.GetMoyBulletin(FichierCdn.GetNbrePeriodes, ARow, GetarrondirMoyennes, Buf0);
				  lvar_18 := lvar_18 + Buf0;
				end//6
				else//004D205A
				  lvar_18 := lvar_18 + '?'; //$4D2348
				FormHint.Label4.Caption := 'Moyennes bulletin sur ' + IntToStr(GetmoyennesSur) + ' : ' + lvar_18;
				FichierCdn.GetAllDataEleve(ARow, GetarrondirMoyennes, GetarrondirMoyennesAnnuelles, GettypeMoyennesAnnuelles, Buf0);
				FormHint.Label5.Caption := 'Moyenne annuelle sur ' + IntToStr(GetmoyennesSur) + ' : ' + Buf0;
				FormHint.f2F0 := 5;
				FormHint.Show;
			  end;//5
			end;//4
          end;//3
      end;//2
    end
	else if (Button = mbRight) then 
	begin
		R.left := 1;
		R.Top := ARow;
		R.right := 1;
		R.Bottom := ARow;
		if (ARow > 0) then //004D2196
		  Selection := R;

		SendMessageA(MyHandle, 1025, ARow, 255);
		f2E8 := ACol;
		FNumEleve := ARow;
		if (ACol = 1) then 
		begin//004D2205								 
		  if (ARow < FichierCdn.EleveCount ) then
		  begin//004D220B
			PopupMenu1;
			TrackPopupMenu(FMenu, 10, ClientToScreen(Point(X,Y)).X, ClientToScreen(Point(X,Y)).Y, 0, Handle, 0);
		  end;//3
		end;//2
	end;
	//code ajouté
	if ssDouble in shift then
     begin
	      if (ARow <= FichierCdn.EleveCount) then
		  begin
			FormHint.Hide;
			FichierCdn.GetEleveName( ARow, buf);
			FichierCdn.GetElevDateNais( ARow, buf1);
			FormModifierEleve := TFormModifierEleve.Create(Self, buf, buf1, FichierCdn.IsRedoublant(ARow),'');
			if (FormModifierEleve.ShowModal = 1) then
			begin//004D1854
			FichierCdn.SetEleve_v2( ARow, FormModifierEleve.EditNomPrenom_FormModifier.text,
										  FormModifierEleve.CheckBoxRedoublant_FormModifier.Checked,
										  FormModifierEleve.EditDateDeNaissance_FormModifier.text);
			SendMessageA(Handle, $404, 0, 0);
			SendMessageA(MyHandle, $409, NPeriode, 0);
			SendMessageA(MyHandle, $408, NPeriode, 0);
			SendMessageA(MyHandle, $406, 0, 0);
			end;//3
			FormModifierEleve.Destroy;
		  end;
     end;

end;//0


//004D292C
procedure TGrilleElevesCarnetDeNotes._DrawCellEleve(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);//(a:pointer; b:pointer; c:pointer; d:pointer; e:pointer);
begin//0
   
  //004D292C
  //canvas.font.size:=17;
    //_DrawCell(Sender,ACol, ARow, Rect, State);
    Canvas.FillRect(Rect);
    Canvas.TextOut(Rect.Left + 2, Rect.Top + 2, Cells[ACol, ARow]);
    SendMessageA(MyHandle, 1042, Width, 0);
end;

//004D2398
procedure TGrilleElevesCarnetDeNotes._Refrech(var Msg: TMsg);
var 
 count,I : integer;
 buf,affichage :string;
begin//0
  //004D2398..004D23CE
    Count := FichierCdn.EleveCount;
    RowCount:= Count + gvar_00617902;
    Cols[1].Clear;
    Cells[ 1 ,0] := 'Noms et prénoms';
    Cells[ 1 , Count + gvar_006178F4 ] := 'Nombre d''élèves présents :';
    Cells[ 1 , Count + gvar_006178F5 ] := 'Min :'; 
    Cells[ 1 , Count + gvar_006178F6 ] := 'Max :';
    Cells[ 1 , Count + gvar_006178F7 ] := 'Moyenne :'; 
    Cells[ 1 , Count + gvar_006178F8 ] := 'Ecart type :';
    Cells[ 1 , Count + gvar_006178F9 ] := '% notes < moyenne :'; 
    Cells[ 1 , Count + gvar_006178FA ] := '% notes < moyenne classe :';
    Cells[ 1 , Count + gvar_006178FB ] := 'Noté sur :';
    Cells[ 1 , Count + gvar_006178FC ] := 'Coefficient :'; 
    Cells[ 1 , Count + gvar_006178FD ] := 'Compte dans la moyenne :';
    Cells[ 1 , Count + gvar_006178FE ] := 'Date :';
    Cells[ 1 , Count + gvar_006178FF ] := 'Commentaire :';
    Cells[ 1 , Count + gvar_00617900 ] := 'Type de notes :';
    Cells[ 1 , Count + gvar_00617901 ] := 'Oral ou écrit :';
    Cols[0].Clear;
      for I := 1 to Count do //004D2630
      begin//004D2635
        Cells[0, I] := IntToStr(I);
        FichierCdn.GetEleveName(I, Buf);
		affichage := Buf;
        FichierCdn.GetElevDateNais(I, Buf);
        if (Trim(Buf) <> '') then
        begin//004D26B5
          if (GetafficherDatesDeNaissance) then
          begin//004D26BE
            affichage := affichage + ' (' +Buf + ')';
          end;//5
        end;//4
        if (FichierCdn.IsRedoublant(I) and IsRedoublantAfficher) then //004D2713
            affichage := affichage + ' (R)';
        Cells[ 1 , I] :=  affichage;
      end;//3
    Visible := (Count > 0);
end;//0

//004D29FC
procedure TGrilleElevesCarnetDeNotes.sub_004D29FC(var Message: TMsg); //dynamic;
begin
   NPeriode := Message.Message;
end;
procedure TGrilleElevesCarnetDeNotes.DrawCell(ACol, ARow: Longint; ARect: TRect; AState: TGridDrawState);
begin
    inherited DrawCell(ACol, ARow, ARect, AState);
	_DrawCellEleve(Self, ACol, ARow, ARect, AState);
	
end;
 procedure TGrilleElevesCarnetDeNotes.MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer);//supprimer le 
 begin
   inherited MouseDown(Button,Shift,X, Y);
   MouseDownEvent(self,Button,Shift,X, Y);
 end;
end.