{************************************************************
* File             : _TGrilleEleves                         *  
* Version          : V0.03 build 1                          *
* Decompiled by    : HOUIDEF AEK                            * 
* Update           : 14:04 Lundi, 14 Mars, 2022             *
* The disassembly process : 100%                            *
************************************************************}
unit _TGrilleEleves;

interface

uses
  SysUtils, Windows, Messages,Grids ,Classes, ClipBrd, StdCtrls, Controls, _TGrilleGenerique, UFichierCdn, dialogs,
  _FormHint,UBiblio,_FormModifierEleve,constantes;

type
  TGrilleElevesCarnetDeNotes = class(TGrilleGeneriqueCarnetDeNotes)
  public
    f2E8: dword;//f2E8
    FIdNumEleve:dword;//f2EC
    FMenu:HMENU;//f2F0
    destructor Destroy; virtual;//004D133C
    procedure WMCommand(var Message: TWMCommand); message WM_COMMAND;//004D162C
	procedure EvOnMouseDown(Sender:TObject; Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer);//004D1C64
    procedure EvGetPeriode(var Message:TMsg); message $403;//004D29FC 
    procedure AddBasListEleve(var Msg: TMsg);  message $404;//004D2398 
    constructor Create(AOwner:TComponent; FeuilleClasse:TComponent; Periode:byte; FichierCdn:TFichierCdn);//004D1250
    procedure MenuListEleve;//004D1370
    procedure EvOnDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);//004D292C
  end;

implementation

//004D1250
constructor TGrilleElevesCarnetDeNotes.Create(AOwner:TComponent; FeuilleClasse:TComponent; Periode:byte; FichierCdn:TFichierCdn);
begin
  //004D1250
  FGrilleType := 0;
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
  OnDrawCell := EvOnDrawCell;
  OnMouseDown := EvOnMouseDown; //004D1C84
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
procedure TGrilleElevesCarnetDeNotes.MenuListEleve;
var
  NomEleve:String;
begin//0
  //004D1370
    //004D139C
    DestroyMenu(FMenu);
    FMenu := CreatePopupMenu;
    AppendMenuA(FMenu, 0, 0, 'Turbo Menu "Liste des élèves"');
    AppendMenuA(FMenu, 2048, 0, '-');
    if (FichierCdn.IsVersionPersonnelle) then
    begin//2
      //004D13EF
      if (FIdNumEleve > 0) then
      begin//004D13FD
        NomEleve := FichierCdn.GetEleveName(FIdNumEleve);
        AppendMenuA(FMenu, 0, 1, PChar('Supprimer "' + NomEleve + '" de la liste des élèves'));
        AppendMenuA(FMenu, 0, 2, PChar('Modifier les informations de "' + NomEleve + '"'));
        AppendMenuA(FMenu, 2048, 0, '-');
      end;//3
      if (FichierCdn.NbreEleves < 50) then
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
  EleveName,buf1:string;
  I:integer;
begin//0
    if (Message.ItemID = 1) then
    begin//004D1687
      if (MessageBoxA(0, PChar('Supprimer "' + FichierCdn.GetEleveName(FIdNumEleve) + '" de la liste des élèves ?'),'Suppression d''un élève' , 36) = 6) then
      begin//004D16F9
        FichierCdn.DeleteItem_V00(FIdNumEleve);
        SendMessageA(FeuilleClasseHandle, 1032, FPeriode, 0);
        SendMessageA(Handle, 1028, 0, 0);
        SendMessageA(FeuilleClasseHandle, 1033, FPeriode, 0);
        SendMessageA(FeuilleClasseHandle, 1030, 0, 0);
      end;//3
    end;//2
    if (Message.ItemID = 2) then
    begin//004D1785
      FormModifierEleve{gvar_00617CF8} := TFormModifierEleve.Create(Self, 
																	FichierCdn.GetEleveName(FIdNumEleve), 
																	FichierCdn.GetDateNais( FIdNumEleve), 
																	FichierCdn.IsRedoublant(FIdNumEleve),'');
      FormModifierEleve.ShowModal;
      if (FormModifierEleve.ModalResult = 1) then
      begin//004D1854
        FichierCdn.DeleteItem_V01(FIdNumEleve, FormModifierEleve.EditNomPrenom_FormModifier.text,
									  FormModifierEleve.CheckBoxRedoublant_FormModifier.Checked,
									  FormModifierEleve.EditDateDeNaissance_FormModifier.text);
		SendMessageA(Handle, $404, 0, 0);
        SendMessageA(FeuilleClasseHandle, $409, FPeriode, 0);
        SendMessageA(FeuilleClasseHandle, $408, FPeriode, 0);
        SendMessageA(FeuilleClasseHandle, $406, 0, 0);
      end;//3
      FormModifierEleve.Destroy;
    end;//2
    if (Message.ItemID = 3) then
    begin//004D196D
      FormModifierEleve{gvar_00617CF8} := TFormModifierEleve.Create(Self, '', '', false, '');
      FormModifierEleve.ShowModal;
      if (FormModifierEleve.ModalResult = 1) then
      begin//004D19B1
        FichierCdn.InsertItem_V00(FormModifierEleve.EditNomPrenom_FormModifier.text, FormModifierEleve.EditDateDeNaissance_FormModifier.text, '1',FormModifierEleve.CheckBoxRedoublant_FormModifier.Checked);
        SendMessageA(FeuilleClasseHandle, 1032, FPeriode, 0);
        SendMessageA(Handle, 1028, 0, 0);
        SendMessageA(FeuilleClasseHandle, 1033, FPeriode, 0);
        SendMessageA(FeuilleClasseHandle, 1030, 0, 0);
      end;//3
      FormModifierEleve.Destroy;
    end;//2
    if (Message.ItemID = 4) then 
	begin
		Clipboard.Clear;
		EleveName := '';
		for I := 1 to FichierCdn.NbreEleves do //004D1ADE
		  begin //004D1AE3
			  //....
			EleveName := EleveName + FichierCdn.GetEleveName(I) + #13 + #10;
		  end;//3
		Clipboard.SetTextBuf(PChar(EleveName));
	end;
    //004D1B59
end;
procedure TGrilleElevesCarnetDeNotes.EvOnMouseDown(Sender:TObject; Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer);
var
 ACol, ARow,Count,I: integer;
 Buf,Buf0,Buf1:string;
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
		Count := FichierCdn.NbreEleves;//004D1D03
        if (ARow < Count) then
        begin//004D1D0D
          if (GetAfficherFenetreInfo) then
          begin//004D1D1A
            FormHint.Color := GetcouleurFenetreInfo;
            if (FichierCdn.IsRedoublant(ARow)) then
            begin//004D1D4C
              FormHint.Label1.Caption:= FichierCdn.GetEleveName(ARow) + ' ' + FichierCdn.GetDateNais(ARow) + ' (redoublant)';
            end//6
            else
            begin//004D1DDF
              FormHint.Label1.Caption := FichierCdn.GetEleveName(ARow) + ' ' +  FichierCdn.GetDateNais(ARow);
            end;//6
            FichierCdn.GetBasNotePeriode(FPeriode, ARow, Buf); //Determiner la Note la plus basse de la période
            FormHint.Label2.Caption := 'Note la plus basse de la période : ' + Buf;
            FichierCdn.CalcMoyBrute_XX0001( FPeriode, ARow, Buf);// Determiner la Note la plus haute de la période
            FormHint.Label3.Caption := 'Note la plus haute de la période : ' + Buf;
			lvar_18 := '';
			  for I:=1 to FichierCdn.NbrePeriodes do //004D1F63
			  begin
				  if (FichierCdn.NbrSerieNotes(I) > 0) then
				  begin//004D1F82
					;
					lvar_18 := lvar_18 + FichierCdn.GetMoyennePeriode(I, ARow, GetArrondirMoyennes) + ' - ';
				  end//7
				  else//004D1FE3
					lvar_18 := lvar_18 + '? - '; //$4D2338;
			  end;	  
            if (FichierCdn.NbrSerieNotes(FichierCdn.NbrePeriodes) > 0) then
            begin//004D200C
              lvar_18 := lvar_18 + FichierCdn.GetMoyennePeriode(FichierCdn.NbrePeriodes, ARow, GetArrondirMoyennes);
            end//6
            else//004D205A
              lvar_18 := lvar_18 + '?'; //$4D2348
            FormHint.Label4.Caption := 'Moyennes bulletin sur ' + IntToStr(GetMoyennesSur) + ' : ' + lvar_18;
            FichierCdn.CalcMoyBrute_V07(ARow, GetArrondirMoyennes, GetArrondirMoyennesAnnuelles, GettypeMoyennesAnnuelles, Buf0);
            FormHint.Label5.Caption := 'Moyenne annuelle sur ' + IntToStr(GetMoyennesSur) + ' : ' + Buf0;
            FormHint.IdHint := 5;
            FormHint.Show;
          end;//5
        end;//4
      end;
	end//2
    else if (Button = mbRight) then 
	begin
		R.left := 1;
		R.Top := ARow;
		R.right := 1;
		R.Bottom := ARow;
		if (ARow > 0) then //004D2196
		  Selection := R;
		SendMessageA(FeuilleClasseHandle, $401, ARow, 255);
		f2E8 := ACol;
		FIdNumEleve := ARow;
		if (ACol = 1) then 
		begin
			//004D2205
			  if (ARow < FichierCdn.NbreEleves) then
			  begin//004D220B
				MenuListEleve;
				TrackPopupMenu(FMenu, 10, ClientToScreen(Point(X,Y)).X, ClientToScreen(Point(X,Y)).Y, 0, Handle, 0);
			  end;//3
		end;
	end;
	//code ajouté
	if ssDouble in shift then
     begin
	      if (ARow <= FichierCdn.NbreEleves) then
		  begin
			FormHint.Hide;
			FormModifierEleve{gvar_00617CF8} := TFormModifierEleve.Create(Self, FichierCdn.GetEleveName( ARow), FichierCdn.GetDateNais( ARow), FichierCdn.IsRedoublant(ARow),'');
			FormModifierEleve.ShowModal;
			if (FormModifierEleve.ModalResult = 1) then
			begin//004D1854
			FichierCdn.DeleteItem_V01( ARow, FormModifierEleve.EditNomPrenom_FormModifier.text,
										  FormModifierEleve.CheckBoxRedoublant_FormModifier.Checked,
										  FormModifierEleve.EditDateDeNaissance_FormModifier.text);
			SendMessageA(Handle, $404, 0, 0);
			SendMessageA(FeuilleClasseHandle, $409, FPeriode, 0);
			SendMessageA(FeuilleClasseHandle, $408, FPeriode, 0);
			SendMessageA(FeuilleClasseHandle, $406, 0, 0);
			end;//3
			FormModifierEleve.Destroy;
		  end;
     end;
end;//0

//004D292C
procedure TGrilleElevesCarnetDeNotes.EvOnDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);//(a:pointer; b:pointer; c:pointer; d:pointer; e:pointer);
begin//0
  //004D292C
    EvOnDrawCell_(Sender,ACol, ARow, Rect, State);
    Canvas.FillRect(Rect);
    Canvas.TextOut(Rect.Left + 2, Rect.Top + 2, Cells[ACol, ARow]);
    SendMessageA(FeuilleClasseHandle, 1042, Width, 0);
end;

//004D2398
procedure TGrilleElevesCarnetDeNotes.AddBasListEleve(var Msg: TMsg);
var 
 count,I : integer;
 buf,EleveName :string;
begin//0
    Count := FichierCdn.NbreEleves;
    RowCount:= Count + IdNbrEleves__;
    Cols[1].Clear;
    Cells[ 1 ,0] := 'Noms et prénoms';
    Cells[ 1 , Count + IdElevesPresents_ ] := 'Nombre d''élèves présents :';
    Cells[ 1 , Count + IdMin_ ] := 'Min :'; 
    Cells[ 1 , Count + IdMax_ ] := 'Max :';
    Cells[ 1 , Count + IdMoyenne_ ] := 'Moyenne :'; 
    Cells[ 1 , Count + IdEcartType_ ] := 'Ecart type :';
    Cells[ 1 , Count + IdNoteInfMoy_ ] := '% notes < moyenne :'; 
    Cells[ 1 , Count + IdNoteInfMoyClasse_ ] := '% notes < moyenne classe :';
    Cells[ 1 , Count + IdNoteSur ] := 'Noté sur :';
    Cells[ 1 , Count + IdCoefficient ] := 'Coefficient :'; 
    Cells[ 1 , Count + IdCompteMoyenne ] := 'Compte dans la moyenne :';
    Cells[ 1 , Count + IdDateCreation ] := 'Date :';
    Cells[ 1 , Count + IdCommentaire ] := 'Commentaire :';
    Cells[ 1 , Count + IdTypeNote ] := 'Type de notes :';
    Cells[ 1 , Count + IdOralEcrit ] := 'Oral ou écrit :';
    Cols[0].Clear;
      for I := 1 to Count do //004D2630
      begin//004D2635
        Cells[0, I] := IntToStr(I);
        EleveName := FichierCdn.GetEleveName(I);
        Buf := FichierCdn.GetDateNais(I);
        if ((Trim(Buf) <> '') and GetAfficherDatesDeNaissance ) then //004D26B5
          //004D26BE
            EleveName := EleveName + ' (' +Buf + ')';
        if (FichierCdn.IsRedoublant(I) and GetAfficherR) then //004D2713
          //004D271C
            EleveName := EleveName + ' (R)';
        Cells[ 1 , I] :=  EleveName;
      end;//3
    Visible := (Count > 0);
end;//0

//004D29FC
procedure TGrilleElevesCarnetDeNotes.EvGetPeriode(var Message: TMsg); //dynamic;
begin
   FPeriode := Message.Message;
end;
end.