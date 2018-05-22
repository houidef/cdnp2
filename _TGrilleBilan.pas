{***************************************
* Version Original V0.01
* Decompiled by HOUIDEF AEK v 18:05 dimanche 18 février 2018
***************************************}
unit _TGrilleBilan;

interface

uses
Forms, Windows,  SysUtils, Classes, Messages, Grids, _TGrilleGenerique, UFichierCdn,Unit111;

type
  TGrilleBilanCarnetDeNotes = class(TGrilleGeneriqueCarnetDeNotes)
  protected
    procedure DrawCell(ACol, ARow: Longint; ARect: TRect; AState: TGridDrawState);override; //supprimer le 
  public
    f2E8:dword;//f2E8
    f2EC:dword;//f2EC
    f2F0:dword;//f2F0
    f2F4:dword;//f2F4
    f2FC:dword;//f2FC
    f300:dword;//f300
    destructor Destroy; virtual;//004CEA48
    procedure WMCommand(var Message:TWMCommand); message WM_COMMAND;//004CEAA0
    procedure sub_004CB4D4(var Msg:TMsg); Message 1027;//004CB4D4
    procedure sub_004CEEB4(var Msg:TMsg);  Message 1028;//004CEEB4
    constructor Create(AOwner:TComponent; FeuilleClasse:TComponent; Periode:byte; FichierCdn:TFichierCdn);//004CB414
    procedure sub_004CCCB8;//004CCCB8
	procedure sub_004CD7E0(Sender:TObject; ACol, ARow: Longint; ARect: TRect; AState: TGridDrawState);
    //procedure sub_004CD0B0(?:?);//004CD0B0
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
  //OnMouseDown := sub_004CE6F4;
  sub_004CCCB8;
  
end;

//004CB4D4
procedure TGrilleBilanCarnetDeNotes.sub_004CB4D4(var Msg:TMsg);
//var
begin//0
  //004CB4D4
 
    //004CB4F9
   
    sub_004CCCB8;
 (*   EAX := Msg.message;
    f2D8 := EAX;//Msg.message
    ESI := f2DC;
    EAX := ESI;//f2DC
    EAX := sub_004BE9E0(f2DC);
    EAX := EAX And $FF{255};//sub_004BE9E0(f2DC) And $FF{255}
    lvar_C := sub_004BE9E0(f2DC) And $FF{255};
    EAX := 1;
    EDX := lvar_C;
    ESP := $20{32};
    EAX := f2D8;
    if (lvar_44[f2D8] < True) then
    begin//2
      //004CB557
      EDX := f2D8;
      EAX := ESI;//f2DC
      EAX := f2DC.sub_004BEAD0(f2D8);
      EDX := (EAX{f2DC.sub_004BEAD0(f2D8)} = 0);
      EDX := EDX Xor 1;//EAX{f2DC.sub_004BEAD0(f2D8)} = 0 Xor 1
      EAX := EBX;//Self
      SetVisible{Visible}(EDX{EAX{f2DC.sub_004BEAD0(f2D8)} = 0 Xor 1});
    end//2
    else
    begin//2
      //004CB575
      EAX := ESI;//f2DC
      EAX := f2DC.sub_004C4790;
      EDX := (EAX{f2DC.sub_004C4790} = 0);
      EDX := EDX Xor 1;//EAX{f2DC.sub_004C4790} = 0 Xor 1
      EAX := EBX;//Self
      SetVisible{Visible}(EDX{EAX{f2DC.sub_004C4790} = 0 Xor 1});
    end;//2
    if (FVisible = False) then Exit;
    EAX := f2DC;
    EAX := f2DC.sub_004C8AE8;
    EAX := EAX And $FF{255};//f2DC.sub_004C8AE8 And $FF{255}
    lvar_14 := f2DC.sub_004C8AE8 And $FF{255};
    EAX := sub_004B9F60;
    if (EAX{sub_004B9F60} <> 0) then
    begin//2
      //004CB5B1
      lvar_18 := 3;
    end//2
    else
    begin//2
      //004CB5BA
      EAX := 0;
      lvar_18 := EAX;
    end;//2
    ESI := f2DC;
    EDX := f2D8;
    EAX := ESI;//f2DC
    EAX := f2DC.sub_004C3134(f2D8);
    EDI := f2DC.sub_004C3134(f2D8);
    EAX := 1;
    EDX := lvar_C;
    ESP := $20{32};
    EAX := f2D8;
    if (lvar_44[f2D8] < True) then
    begin//2
      //004CB601
      EAX := sub_004B9F30;
      if (EAX{sub_004B9F30} <> 0) then
      begin//3
        //004CB60A
        EAX := EDI;//EDI
        call(
        
        );
        EAX := EAX + 3;//EAX
        lvar_4 := EAX;
      end//3
      else
      begin//3
        //004CB620
        lvar_4 := 2;
      end;//3
      EDX := lvar_4;
      EDX := EDX + 4;//EDX
      EDX := EDX + lvar_14;
      EDX := EDX + lvar_18;
      EAX := EBX;//Self
      SetColCount{ColCount}(EDX);
    end//2
    else
    begin//2
      //004CB651
      EAX := sub_004B9F30;
      if (EAX{sub_004B9F30} <> 0) then
      begin//3
        //004CB65A
        EAX := EDI;//EDI
        call(
        
        );
        EAX := EAX + 1;//EAX
        lvar_4 := EAX;
      end//3
      else
      begin//3
        //004CB670
        EAX := 0;
        lvar_4 := EAX;
      end;//3
      EDX := lvar_4;
      EDX := EDX + lvar_C;
      EDX := EDX + 6;//EDX
      EDX := EDX + lvar_18;
      EAX := EBX;//Self
      SetColCount{ColCount}(EDX);
    end;//2
    EAX := ESI;//f2DC*)
 
    RowCount := FichierCdn.sub_004BEA58 + $9{gvar_006178FA};
    (*EAX := f2DC;
    lvar_1C := f2DC;
    EAX := sub_004B9F30;
    if (EAX{sub_004B9F30} <> 0) then
    begin//2
      //004CB6D6
      EAX := 1;
      EDX := lvar_C;
      ESP := $20{32};
      EAX := f2D8;
      if (lvar_44[f2D8] < True) then
      begin//3
        //004CB707
        EAX := lvar_4;
        EAX := EAX - 3;//EAX
        if (EAX > 0) then
        begin//4
          //004CB71C
          lvar_20 := EAX;
          lvar_8 := 1;
          for lvar_8 := 1 to EAX do
          begin//5
            //004CB726
            EAX := lvar_1C;
            EAX := lvar_1C.sub_004BEA58;
            EAX := EAX And $FF{255};//lvar_1C.sub_004BEA58 And $FF{255}
            if (EAX{lvar_1C.sub_004BEA58 And $FF{255}} <= 0) then Continue;
            lvar_24 := lvar_1C.sub_004BEA58 And $FF{255};
            ESI := 1;
            for ESI := 1 to lvar_1C.sub_004BEA58 And $FF{255} do
            begin//6
              //004CB743
              EDX := f2D8;
              EAX := lvar_1C;
              EAX := lvar_1C.sub_004C3134(f2D8);
              EDX := lvar_8;
              EDX := EDX - 1;//EDX
              call(
              'Moy. "'
              );
              EDX := 3;
              lvar_48 :=  + lvar_4C + '"';
              EAX := lvar_48;
              //push EAX
              EDX := lvar_8;
              EDX := EDX + 1;//EDX
              ECX := 0;
              EAX := EBX;//Self
              SetCells{Cells}(EDX, {0}, lvar_48{EAX});
              //push EAX
              //push ESI
              //push EAX
              EDX := f2D8;
              EAX := lvar_1C;
              EAX := lvar_1C.sub_004C3134(f2D8);
              EDX := lvar_8;
              EDX := EDX - 1;//EDX
              call(
              
              );
              EDX := lvar_254;
              ECX := $FF{255};
               := lvar_254;
              ECX := f2D8;
              EAX := lvar_1C;
              lvar_1C.sub_004C2E60(lvar_150, f2D8, lvar_150);
              //push EAX
              EAX := sub_004B9E10;
              ECX := sub_004B9E10;
              EAX := lvar_1C;
              //pop EDX
              lvar_1C.sub_004C2410(lvar_250, ECX, , lvar_250);
               := ;
              EAX := lvar_50;
              //push EAX
              EDX := lvar_8;
              EDX := EDX + 1;//EDX
              ECX := ESI;//ESI
              EAX := EBX;//Self
              SetCells{Cells}(EDX, ESI, lvar_50{EAX});
            end;//6
          end;//5
        end;//4
        EDX := lvar_4;
        EDX := EDX - 1;//EDX
        EAX := EBX;//Self
        EAX := GetCols{Cols}(EDX);
        GetCols{Cols}(EDX).Clear;
        EAX := sub_004B9F60;
        if (EAX{sub_004B9F60} <> 0) then
        begin//4
          //004CB881
          EDX := lvar_4;
          EAX := EBX;//Self
          EAX := GetCols{Cols}(lvar_4);
          GetCols{Cols}(lvar_4).Clear;
          ESI := lvar_4;
          ESI := ESI + 1;//ESI
          EDX := ESI;//ESI
          EAX := EBX;//Self
          EAX := GetCols{Cols}(ESI);
          GetCols{Cols}(ESI).Clear;
          EDX := lvar_4;
          EDX := EDX + 2;//EDX
          EAX := EBX;//Self
          EAX := GetCols{Cols}(EDX);
          GetCols{Cols}(EDX).Clear;
          ECX := 0;
          EDX := lvar_4;
          EAX := EBX;//Self
          SetCells{Cells}(lvar_4, {0}, 'Moy. Ecrit');
          EDX := ESI;//ESI
          ECX := 0;
          EAX := EBX;//Self
          SetCells{Cells}(ESI, {0}, 'Moy. Oral');
          EAX := lvar_1C;
          EAX := lvar_1C.sub_004BEA58;
          EAX := EAX And $FF{255};//lvar_1C.sub_004BEA58 And $FF{255}
          if (EAX{lvar_1C.sub_004BEA58 And $FF{255}} > 0) then
          begin//5
            //004CB8FA
            lvar_20 := lvar_1C.sub_004BEA58 And $FF{255};
            ESI := 1;
            for ESI := 1 to lvar_1C.sub_004BEA58 And $FF{255} do
            begin//6
              //004CB902
              EAX := sub_004B9E10;
              //push EAX
              //push EAX
              ECX := ESI;//ESI
              EDX := f2D8;
              EAX := lvar_1C;
              lvar_1C.sub_004C9280(f2D8, ESI, sub_004B9E10{EAX}, lvar_150);
               := ;
              EAX := lvar_258;
              //push EAX
              ECX := ESI;//ESI
              EDX := lvar_4;
              EAX := EBX;//Self
              SetCells{Cells}(lvar_4, ESI, lvar_258{EAX});
              EAX := sub_004B9E10;
              //push EAX
              //push EAX
              ECX := ESI;//ESI
              EDX := f2D8;
              EAX := lvar_1C;
              lvar_1C.sub_004C8F6C(f2D8, ESI, sub_004B9E10{EAX}, lvar_150);
               := ;
              EAX := lvar_25C;
              //push EAX
              EDX := lvar_4;
              EDX := EDX + 1;//EDX
              ECX := ESI;//ESI
              EAX := EBX;//Self
              SetCells{Cells}(EDX, ESI, lvar_25C{EAX});
            end;//6
          end;//5
          lvar_4 := lvar_4 + 3;
        end;//4
        EDX := lvar_4;
        EAX := EBX;//Self
        EAX := GetCols{Cols}(lvar_4);
        GetCols{Cols}(lvar_4).Clear;
        EAX := sub_004B9E48;
        lvar_264 := IntToStr(sub_004B9E48);
        ECX := lvar_264;
        EDX := $4CCC34;
        lvar_260 := 'Moyenne bulletin sur ' + lvar_264;
        EAX := lvar_260;
        //push EAX
        ECX := 0;
        EDX := lvar_4;
        EAX := EBX;//Self
        SetCells{Cells}(lvar_4, {0}, lvar_260{EAX});
        EAX := lvar_1C;
        EAX := lvar_1C.sub_004BEA58;
        EAX := EAX And $FF{255};//lvar_1C.sub_004BEA58 And $FF{255}
        if (EAX{lvar_1C.sub_004BEA58 And $FF{255}} > 0) then
        begin//4
          //004CBA16
          lvar_20 := lvar_1C.sub_004BEA58 And $FF{255};
          ESI := 1;
          for ESI := 1 to lvar_1C.sub_004BEA58 And $FF{255} do
          begin//5
            //004CBA1E
            EAX := sub_004B9E10;
            //push EAX
            //push EAX
            ECX := ESI;//ESI
            EDX := f2D8;
            EAX := lvar_1C;
            lvar_1C.sub_004C2D10(f2D8, ESI, sub_004B9E10{EAX}, lvar_150);
             := ;
            EAX := lvar_268;
            //push EAX
            EDX := lvar_4;
            EDX := EDX + 0;//EDX
            ECX := ESI;//ESI
            EAX := EBX;//Self
            SetCells{Cells}(EDX, ESI, lvar_268{EAX});
          end;//5
        end;//4
        EDX := lvar_4;
        EDX := EDX + 1;//EDX
        EAX := EBX;//Self
        EAX := GetCols{Cols}(EDX);
        GetCols{Cols}(EDX).Clear;
        ESI := lvar_4;
        ESI := ESI + 2;//ESI
        EDX := ESI;//ESI
        EAX := EBX;//Self
        EAX := GetCols{Cols}(ESI);
        GetCols{Cols}(ESI).Clear;
        EAX := sub_004B9E10;
        //push EAX
        EAX := sub_004BC298;
        //push EAX
        EAX := sub_004BC30C;
        //push EAX
        EAX := sub_004B9EA0;
        ECX := sub_004B9EA0;
        EDX := f2D8;
        EAX := lvar_1C;
        EAX := lvar_1C.sub_004C5078(f2D8, ECX, sub_004B9E10{EAX}, sub_004BC298{EAX}, sub_004BC30C{EAX});
        ECX := lvar_1C.sub_004C5078(f2D8, ECX, sub_004B9E10{EAX}, sub_004BC298{EAX}, sub_004BC30C{EAX});
        EDX := ESI;//ESI
        EAX := EBX;//Self
        SetCols{Cols}(ESI, ECX);
        EAX := lvar_4;
        EAX := EAX - 3;//EAX
        if (EAX > 0) then
        begin//4
          //004CBAF5
          lvar_20 := EAX;
          lvar_8 := 1;
          for lvar_8 := 1 to EAX do
          begin//5
            //004CBAFF
            EDX := lvar_8;
            EAX := EBX;//Self
            sub_004CD0B0(lvar_8);
          end;//5
        end;//4
        EDX := lvar_4;
        EDX := EDX - 1;//EDX
        EAX := EBX;//Self
        sub_004CD0B0(EDX);
        EDX := lvar_4;
        EDX := EDX + 3;//EDX
        EAX := EBX;//Self
        EAX := GetCols{Cols}(EDX);
        GetCols{Cols}(EDX).Clear;
        EAX := lvar_14;
        if (EAX{lvar_14} > 0) then
        begin//4
          //004CBB63
          lvar_20 := lvar_14;
          lvar_8 := 1;
          for lvar_8 := 1 to lvar_14 do
          begin//5
            //004CBB6D
            ESI := lvar_4;
            ESI := ESI + 3;//ESI
            ESI := ESI + lvar_8;
            EDX := ESI;//ESI
            EAX := EBX;//Self
            EAX := GetCols{Cols}(ESI);
            GetCols{Cols}(ESI).Clear;
            EDX := lvar_8;
            EAX := lvar_1C;
            lvar_1C.sub_004C8AF4(lvar_8, lvar_150);
             := ;
            EAX := lvar_26C;
            //push EAX
            EDX := ESI;//ESI
            ECX := 0;
            EAX := EBX;//Self
            SetCells{Cells}(ESI, {0}, lvar_26C{EAX});
            EAX := lvar_1C;
            EAX := lvar_1C.sub_004BEA58;
            EAX := EAX And $FF{255};//lvar_1C.sub_004BEA58 And $FF{255}
            if (EAX{lvar_1C.sub_004BEA58 And $FF{255}} <= 0) then Continue;
            lvar_24 := lvar_1C.sub_004BEA58 And $FF{255};
            ESI := 1;
            for ESI := 1 to lvar_1C.sub_004BEA58 And $FF{255} do
            begin//6
              //004CBBEC
              EAX := lvar_8;
              //push EAX
              //push EAX
              ECX := ESI;//ESI
              EDX := f2D8;
              EAX := lvar_1C;
              lvar_1C.sub_004C2C00(f2D8, ESI, lvar_8{EAX}, lvar_150);
               := ;
              EAX := lvar_270;
              //push EAX
              EDX := lvar_4;
              EDX := EDX + 3;//EDX
              EDX := EDX + lvar_8;
              ECX := ESI;//ESI
              EAX := EBX;//Self
              SetCells{Cells}(EDX, ESI, lvar_270{EAX});
            end;//6
          end;//5
          Exit;
        end;//4
      end;//3
      EDX := f2D8;
      EAX := lvar_1C;
      EAX := lvar_1C.sub_004C3134(f2D8);
      call(
      {EDX}
      );
      lvar_10 := lvar_1C.sub_004C3134(f2D8);
      EAX := lvar_10;
      if (EAX{lvar_10} > 0) then
      begin//3
        //004CBC90
        lvar_20 := lvar_10;
        lvar_8 := 1;
        for lvar_8 := 1 to lvar_10 do
        begin//4
          //004CBC9A
          ESI := lvar_8;
          ESI := ESI + 1;//ESI
          EDX := ESI;//ESI
          EAX := EBX;//Self
          EAX := GetCols{Cols}(ESI);
          GetCols{Cols}(ESI).Clear;
          EDX := f2D8;
          EAX := lvar_1C;
          EAX := lvar_1C.sub_004C3134(f2D8);
          EDX := lvar_8;
          EDX := EDX - 1;//EDX
          call(
          'Moy. "'
          );
          EDX := 3;
          lvar_274 := lvar_50{EAX} + lvar_278 + '"';
          EAX := lvar_274;
          //push EAX
          EDX := ESI;//ESI
          ECX := 0;
          EAX := EBX;//Self
          SetCells{Cells}(ESI, {0}, lvar_274{EAX});
          EAX := lvar_1C;
          EAX := lvar_1C.sub_004BEA58;
          EAX := EAX And $FF{255};//lvar_1C.sub_004BEA58 And $FF{255}
          if (EAX{lvar_1C.sub_004BEA58 And $FF{255}} > 0) then
          begin//5
            //004CBD22
            lvar_24 := lvar_1C.sub_004BEA58 And $FF{255};
            ESI := 1;
            for ESI := 1 to lvar_1C.sub_004BEA58 And $FF{255} do
            begin//6
              //004CBD2A
              //push EAX
              //push EAX
              EDX := f2D8;
              EAX := lvar_1C;
              EAX := lvar_1C.sub_004C3134(f2D8);
              EDX := lvar_8;
              EDX := EDX - 1;//EDX
              call(
              
              );
              EDX := lvar_280;
              ECX := $FF{255};
               := lvar_280;
              ECX := ESI;//ESI
              EAX := lvar_1C;
              lvar_1C.sub_004C64CC(lvar_150, ESI);
              //push EAX
              EAX := sub_004BC298;
              ECX := sub_004BC298;
              EAX := lvar_1C;
              //pop EDX
              lvar_1C.sub_004C2410(lvar_250, ECX, , lvar_250);
               := ;
              EAX := lvar_27C;
              //push EAX
              EDX := lvar_8;
              EDX := EDX + 1;//EDX
              ECX := ESI;//ESI
              EAX := EBX;//Self
              SetCells{Cells}(EDX, ESI, lvar_27C{EAX});
            end;//6
          end;//5
          EDX := lvar_8;
          EAX := EBX;//Self
          sub_004CD0B0(lvar_8);
        end;//4
      end;//3
      EDX := lvar_10;
      EDX := EDX + 2;//EDX
      EAX := EBX;//Self
      EAX := GetCols{Cols}(EDX);
      GetCols{Cols}(EDX).Clear;
      EAX := 0;
      lvar_4 := EAX;
      EAX := sub_004B9F60;
      if (EAX{sub_004B9F60} <> 0) then
      begin//3
        //004CBE2E
        ESI := lvar_10;
        ESI := ESI + 3;//ESI
        EDX := ESI;//ESI
        EAX := EBX;//Self
        EAX := GetCols{Cols}(ESI);
        GetCols{Cols}(ESI).Clear;
        EDX := lvar_10;
        EDX := EDX + 4;//EDX
        EAX := EBX;//Self
        EAX := GetCols{Cols}(EDX);
        GetCols{Cols}(EDX).Clear;
        EDX := lvar_10;
        EDX := EDX + 5;//EDX
        EAX := EBX;//Self
        EAX := GetCols{Cols}(EDX);
        GetCols{Cols}(EDX).Clear;
        EDX := ESI;//ESI
        ECX := 0;
        EAX := EBX;//Self
        SetCells{Cells}(ESI, {0}, 'Moy. 'Ecrit'');
        EAX := lvar_1C;
        EAX := lvar_1C.sub_004BEA58;
        EAX := EAX And $FF{255};//lvar_1C.sub_004BEA58 And $FF{255}
        if (EAX{lvar_1C.sub_004BEA58 And $FF{255}} > 0) then
        begin//4
          //004CBE9C
          lvar_20 := lvar_1C.sub_004BEA58 And $FF{255};
          ESI := 1;
          for ESI := 1 to lvar_1C.sub_004BEA58 And $FF{255} do
          begin//5
            //004CBEA4
            //push EAX
            EAX := sub_004BC298;
            ECX := sub_004BC298;
            EDX := ESI;//ESI
            EAX := lvar_1C;
            lvar_1C.sub_004C9708(ESI, ECX, lvar_150);
             := ;
            EAX := lvar_284;
            //push EAX
            EDX := lvar_10;
            EDX := EDX + 3;//EDX
            ECX := ESI;//ESI
            EAX := EBX;//Self
            SetCells{Cells}(EDX, ESI, lvar_284{EAX});
          end;//5
        end;//4
        EDX := lvar_10;
        EDX := EDX + 4;//EDX
        ECX := 0;
        EAX := EBX;//Self
        SetCells{Cells}(EDX, {0}, 'Moy. 'Oral'');
        EAX := lvar_1C;
        EAX := lvar_1C.sub_004BEA58;
        EAX := EAX And $FF{255};//lvar_1C.sub_004BEA58 And $FF{255}
        if (EAX{lvar_1C.sub_004BEA58 And $FF{255}} > 0) then
        begin//4
          //004CBF29
          lvar_20 := lvar_1C.sub_004BEA58 And $FF{255};
          ESI := 1;
          for ESI := 1 to lvar_1C.sub_004BEA58 And $FF{255} do
          begin//5
            //004CBF31
            //push EAX
            EAX := sub_004BC298;
            ECX := sub_004BC298;
            EDX := ESI;//ESI
            EAX := lvar_1C;
            lvar_1C.sub_004C9594(ESI, ECX, lvar_150);
             := ;
            EAX := lvar_288;
            //push EAX
            EDX := lvar_10;
            EDX := EDX + 4;//EDX
            ECX := ESI;//ESI
            EAX := EBX;//Self
            SetCells{Cells}(EDX, ESI, lvar_288{EAX});
          end;//5
        end;//4
        EDX := lvar_10;
        EDX := EDX + 2;//EDX
        EAX := EBX;//Self
        sub_004CD0B0(EDX);
        EDX := lvar_10;
        EDX := EDX + 3;//EDX
        EAX := EBX;//Self
        sub_004CD0B0(EDX);
        EAX := lvar_18;
        lvar_4 := lvar_4 + lvar_18;
      end;//3
      EAX := lvar_C;
      if (EAX{lvar_C} > 0) then
      begin//3
        //004CBFE4
        lvar_20 := lvar_C;
        EDI := 1;
        for EDI := 1 to lvar_C do
        begin//4
          //004CBFEC
          EDX := EDI;//EDI
          EAX := lvar_1C;
          lvar_1C.sub_004BE9EC(EDI, lvar_150);
           := ;
          EAX := lvar_28C;
          //push EAX
          EDX := lvar_4;
          EDX := EDX + 2;//EDX
          EDX := EDX + lvar_10;
          EDX := EDX + EDI;//EDX + EDI
          ECX := 0;
          EAX := EBX;//Self
          SetCells{Cells}(EDX, {0}, lvar_28C{EAX});
          EAX := lvar_1C;
          EAX := lvar_1C.sub_004BEA58;
          EAX := EAX And $FF{255};//lvar_1C.sub_004BEA58 And $FF{255}
          if (EAX{lvar_1C.sub_004BEA58 And $FF{255}} <= 0) then Continue;
          lvar_24 := lvar_1C.sub_004BEA58 And $FF{255};
          ESI := 1;
          for ESI := 1 to lvar_1C.sub_004BEA58 And $FF{255} do
          begin//5
            //004CC067
            EAX := sub_004B9E10;
            //push EAX
            //push EAX
            ECX := ESI;//ESI
            EDX := EDI;//EDI
            EAX := lvar_1C;
            lvar_1C.sub_004C2D10(EDI, ESI, sub_004B9E10{EAX}, lvar_150);
             := ;
            EAX := lvar_290;
            //push EAX
            EDX := lvar_4;
            EDX := EDX + 2;//EDX
            EDX := EDX + lvar_10;
            EDX := EDX + EDI;//EDX + EDI
            ECX := ESI;//ESI
            EAX := EBX;//Self
            SetCells{Cells}(EDX, ESI, lvar_290{EAX});
          end;//5
        end;//4
      end;//3
      EDX := lvar_4;
      EDX := EDX + 3;//EDX
      EDX := EDX + lvar_10;
      EDX := EDX + lvar_C;
      EAX := EBX;//Self
      EAX := GetCols{Cols}(EDX);
      GetCols{Cols}(EDX).Clear;
      EAX := sub_004B9E48;
      lvar_298 := IntToStr(sub_004B9E48);
      ECX := lvar_298;
      EDX := $4CCC80;
      lvar_294 := 'Moyenne annuelle sur ' + lvar_298;
      EAX := lvar_294;
      //push EAX
      EDX := lvar_4;
      EDX := EDX + 4;//EDX
      EDX := EDX + lvar_10;
      EDX := EDX + lvar_C;
      ECX := 0;
      EAX := EBX;//Self
      SetCells{Cells}(EDX, {0}, lvar_294{EAX});
      EAX := lvar_1C;
      EAX := lvar_1C.sub_004BEA58;
      EAX := EAX And $FF{255};//lvar_1C.sub_004BEA58 And $FF{255}
      if (EAX{lvar_1C.sub_004BEA58 And $FF{255}} > 0) then
      begin//3
        //004CC184
        lvar_20 := lvar_1C.sub_004BEA58 And $FF{255};
        ESI := 1;
        for ESI := 1 to lvar_1C.sub_004BEA58 And $FF{255} do
        begin//4
          //004CC18C
          EAX := sub_004BC298;
          //push EAX
          EAX := sub_004BC30C;
          //push EAX
          //push EAX
          EAX := sub_004B9E10;
          ECX := sub_004B9E10;
          EDX := ESI;//ESI
          EAX := lvar_1C;
          sub_004C32B4(lvar_1C, ESI, ECX, sub_004BC298{EAX}, sub_004BC30C{EAX}, lvar_150);
           := ;
          EAX := lvar_29C;
          //push EAX
          EDX := lvar_4;
          EDX := EDX + 4;//EDX
          EDX := EDX + lvar_10;
          EDX := EDX + lvar_C;
          ECX := ESI;//ESI
          EAX := EBX;//Self
          SetCells{Cells}(EDX, ESI, lvar_29C{EAX});
        end;//4
      end;//3
      EDX := lvar_4;
      EDX := EDX + 5;//EDX
      EDX := EDX + lvar_10;
      EDX := EDX + lvar_C;
      EAX := EBX;//Self
      EAX := GetCols{Cols}(EDX);
      GetCols{Cols}(EDX).Clear;
      ESI := lvar_4;
      ESI := ESI + 6;//ESI
      ESI := ESI + lvar_10;
      ESI := ESI + lvar_C;
      EDX := ESI;//ESI
      EAX := EBX;//Self
      EAX := GetCols{Cols}(ESI);
      GetCols{Cols}(ESI).Clear;
      EAX := sub_004B9E10;
      //push EAX
      EAX := sub_004BC298;
      //push EAX
      EAX := sub_004BC30C;
      //push EAX
      EAX := sub_004B9EA0;
      ECX := sub_004B9EA0;
      EDX := lvar_C;
      EDX := EDX + 1;//EDX
      EAX := lvar_1C;
      EAX := lvar_1C.sub_004C5078(EDX, ECX, sub_004B9E10{EAX}, sub_004BC298{EAX}, sub_004BC30C{EAX});
      ECX := lvar_1C.sub_004C5078(EDX, ECX, sub_004B9E10{EAX}, sub_004BC298{EAX}, sub_004BC30C{EAX});
      EDX := ESI;//ESI
      EAX := EBX;//Self
      SetCols{Cols}(ESI, ECX);
      EAX := lvar_10;
      EAX := EAX + 2;//EAX
      EDX := lvar_10;
      EDX := EDX + lvar_C;
      EDX := EDX + 1;//EDX
      EDX := EDX - EAX;//EDX - (EAX)
      if (EDX >= EAX) then
      begin//3
        //004CC2C2
        EDX := EDX + 1;//EDX
        lvar_20 := EDX;
        lvar_8 := EAX;
        for lvar_8 :=  to EDX +  - 1 do
        begin//4
          //004CC2C9
          EDX := lvar_4;
          EDX := EDX + lvar_8;
          EAX := EBX;//Self
          sub_004CD0B0(EDX);
        end;//4
      end;//3
      EDX := lvar_4;
      EDX := EDX + lvar_C;
      EDX := EDX + 3;//EDX
      EDX := EDX + lvar_10;
      EAX := EBX;//Self
      sub_004CD0B0(EDX);
      Exit;
    end;//2
    EAX := 1;
    EDX := lvar_C;
    ESP := $20{32};
    EAX := f2D8;
    if (lvar_44[f2D8] < True) then
    begin//2
      //004CC35D
      EAX := 0;
      lvar_4 := EAX;
      EAX := sub_004B9F60;
      if (EAX{sub_004B9F60} <> 0) then
      begin//3
        //004CC36F
        EDX := 2;
        EAX := EBX;//Self
        EAX := GetCols{Cols}({2});
        GetCols{Cols}({2}).Clear;
        EDX := 3;
        EAX := EBX;//Self
        EAX := GetCols{Cols}({3});
        GetCols{Cols}({3}).Clear;
        EDX := 4;
        EAX := EBX;//Self
        EAX := GetCols{Cols}({4});
        GetCols{Cols}({4}).Clear;
        EDX := 5;
        EAX := EBX;//Self
        EAX := GetCols{Cols}({5});
        GetCols{Cols}({5}).Clear;
        ECX := 0;
        EDX := 2;
        EAX := EBX;//Self
        SetCells{Cells}({2}, {0}, 'Ecrit');
        ECX := 0;
        EDX := 3;
        EAX := EBX;//Self
        SetCells{Cells}({3}, {0}, 'Oral');
        EAX := lvar_1C;
        EAX := lvar_1C.sub_004BEA58;
        EAX := EAX And $FF{255};//lvar_1C.sub_004BEA58 And $FF{255}
        if (EAX{lvar_1C.sub_004BEA58 And $FF{255}} > 0) then
        begin//4
          //004CC3EE
          lvar_20 := lvar_1C.sub_004BEA58 And $FF{255};
          ESI := 1;
          for ESI := 1 to lvar_1C.sub_004BEA58 And $FF{255} do
          begin//5
            //004CC3F6
            EAX := sub_004B9E10;
            //push EAX
            //push EAX
            ECX := ESI;//ESI
            EDX := f2D8;
            EAX := lvar_1C;
            lvar_1C.sub_004C9280(f2D8, ESI, sub_004B9E10{EAX}, lvar_150);
             := ;
            EAX := lvar_2A0;
            //push EAX
            ECX := ESI;//ESI
            EDX := 2;
            EAX := EBX;//Self
            SetCells{Cells}({2}, ESI, lvar_2A0{EAX});
            EAX := sub_004B9E10;
            //push EAX
            //push EAX
            ECX := ESI;//ESI
            EDX := f2D8;
            EAX := lvar_1C;
            lvar_1C.sub_004C8F6C(f2D8, ESI, sub_004B9E10{EAX}, lvar_150);
             := ;
            EAX := lvar_2A4;
            //push EAX
            ECX := ESI;//ESI
            EDX := 3;
            EAX := EBX;//Self
            SetCells{Cells}({3}, ESI, lvar_2A4{EAX});
          end;//5
        end;//4
        EDX := 1;
        EAX := EBX;//Self
        sub_004CD0B0({1});
        EDX := 2;
        EAX := EBX;//Self
        sub_004CD0B0({2});
        lvar_4 := lvar_4 + 3;
      end;//3
      EAX := sub_004B9E48;
      lvar_2AC := IntToStr(sub_004B9E48);
      ECX := lvar_2AC;
      EDX := $4CCC34;
      lvar_2A8 := 'Moyenne bulletin sur ' + lvar_2AC;
      EAX := lvar_2A8;
      //push EAX
      EDX := lvar_4;
      EDX := EDX + 2;//EDX
      ECX := 0;
      EAX := EBX;//Self
      SetCells{Cells}(EDX, {0}, lvar_2A8{EAX});
      EAX := lvar_1C;
      EAX := lvar_1C.sub_004BEA58;
      EAX := EAX And $FF{255};//lvar_1C.sub_004BEA58 And $FF{255}
      if (EAX{lvar_1C.sub_004BEA58 And $FF{255}} > 0) then
      begin//3
        //004CC511
        lvar_20 := lvar_1C.sub_004BEA58 And $FF{255};
        ESI := 1;
        for ESI := 1 to lvar_1C.sub_004BEA58 And $FF{255} do
        begin//4
          //004CC519
          EAX := sub_004B9E10;
          //push EAX
          //push EAX
          ECX := ESI;//ESI
          EDX := f2D8;
          EAX := lvar_1C;
          lvar_1C.sub_004C2D10(f2D8, ESI, sub_004B9E10{EAX}, lvar_150);
           := ;
          EAX := lvar_2B0;
          //push EAX
          EDX := lvar_4;
          EDX := EDX + 2;//EDX
          ECX := ESI;//ESI
          EAX := EBX;//Self
          SetCells{Cells}(EDX, ESI, lvar_2B0{EAX});
        end;//4
      end;//3
      EDX := lvar_4;
      EDX := EDX + 3;//EDX
      EAX := EBX;//Self
      EAX := GetCols{Cols}(EDX);
      GetCols{Cols}(EDX).Clear;
      ESI := lvar_4;
      ESI := ESI + 4;//ESI
      EDX := ESI;//ESI
      EAX := EBX;//Self
      EAX := GetCols{Cols}(ESI);
      GetCols{Cols}(ESI).Clear;
      EAX := sub_004B9E10;
      //push EAX
      EAX := sub_004BC298;
      //push EAX
      EAX := sub_004BC30C;
      //push EAX
      EAX := sub_004B9EA0;
      ECX := sub_004B9EA0;
      EDX := f2D8;
      EAX := lvar_1C;
      EAX := lvar_1C.sub_004C5078(f2D8, ECX, sub_004B9E10{EAX}, sub_004BC298{EAX}, sub_004BC30C{EAX});
      ECX := lvar_1C.sub_004C5078(f2D8, ECX, sub_004B9E10{EAX}, sub_004BC298{EAX}, sub_004BC30C{EAX});
      EDX := ESI;//ESI
      EAX := EBX;//Self
      SetCols{Cols}(ESI, ECX);
      EDX := lvar_4;
      EDX := EDX + 1;//EDX
      EAX := EBX;//Self
      sub_004CD0B0(EDX);
      EDX := lvar_4;
      EDX := EDX + 5;//EDX
      EAX := EBX;//Self
      EAX := GetCols{Cols}(EDX);
      GetCols{Cols}(EDX).Clear;
      EAX := lvar_14;
      if (EAX{lvar_14} > 0) then
      begin//3
        //004CC624
        lvar_20 := lvar_14;
        lvar_8 := 1;
        for lvar_8 := 1 to lvar_14 do
        begin//4
          //004CC62E
          ESI := lvar_4;
          ESI := ESI + 5;//ESI
          ESI := ESI + lvar_8;
          EDX := ESI;//ESI
          EAX := EBX;//Self
          EAX := GetCols{Cols}(ESI);
          GetCols{Cols}(ESI).Clear;
          EDX := lvar_8;
          EAX := lvar_1C;
          lvar_1C.sub_004C8AF4(lvar_8, lvar_150);
           := ;
          EAX := lvar_2B4;
          //push EAX
          EDX := ESI;//ESI
          ECX := 0;
          EAX := EBX;//Self
          SetCells{Cells}(ESI, {0}, lvar_2B4{EAX});
          EAX := lvar_1C;
          EAX := lvar_1C.sub_004BEA58;
          EAX := EAX And $FF{255};//lvar_1C.sub_004BEA58 And $FF{255}
          if (EAX{lvar_1C.sub_004BEA58 And $FF{255}} <= 0) then Continue;
          lvar_24 := lvar_1C.sub_004BEA58 And $FF{255};
          ESI := 1;
          for ESI := 1 to lvar_1C.sub_004BEA58 And $FF{255} do
          begin//5
            //004CC6AD
            EAX := lvar_8;
            //push EAX
            //push EAX
            ECX := ESI;//ESI
            EDX := f2D8;
            EAX := lvar_1C;
            lvar_1C.sub_004C2C00(f2D8, ESI, lvar_8{EAX}, lvar_150);
             := ;
            EAX := lvar_2B8;
            //push EAX
            EDX := lvar_4;
            EDX := EDX + 5;//EDX
            EDX := EDX + lvar_8;
            ECX := ESI;//ESI
            EAX := EBX;//Self
            SetCells{Cells}(EDX, ESI, lvar_2B8{EAX});
          end;//5
        end;//4
        Exit;
      end;//3
    end;//2
    EAX := lvar_C;
    if (EAX{lvar_C} > 0) then
    begin//2
      //004CC73B
      lvar_20 := lvar_C;
      EDI := 1;
      for EDI := 1 to lvar_C do
      begin//3
        //004CC743
        EDX := EDI;//EDI
        EAX := lvar_1C;
        lvar_1C.sub_004BE9EC(EDI, lvar_150);
         := ;
        EAX := lvar_2BC;
        //push EAX
        EDX := EDI;//EDI
        EDX := EDX + 1;//EDX
        ECX := 0;
        EAX := EBX;//Self
        SetCells{Cells}(EDX, {0}, lvar_2BC{EAX});
        EAX := lvar_1C;
        EAX := lvar_1C.sub_004BEA58;
        EAX := EAX And $FF{255};//lvar_1C.sub_004BEA58 And $FF{255}
        if (EAX{lvar_1C.sub_004BEA58 And $FF{255}} > 0) then
        begin//4
          //004CC79E
          lvar_24 := lvar_1C.sub_004BEA58 And $FF{255};
          ESI := 1;
          for ESI := 1 to lvar_1C.sub_004BEA58 And $FF{255} do
          begin//5
            //004CC7A6
            EAX := sub_004B9E10;
            //push EAX
            //push EAX
            ECX := ESI;//ESI
            EDX := EDI;//EDI
            EAX := lvar_1C;
            lvar_1C.sub_004C2D10(EDI, ESI, sub_004B9E10{EAX}, lvar_150);
             := ;
            EAX := lvar_2C0;
            //push EAX
            EDX := EDI;//EDI
            EDX := EDX + 1;//EDX
            ECX := ESI;//ESI
            EAX := EBX;//Self
            SetCells{Cells}(EDX, ESI, lvar_2C0{EAX});
          end;//5
        end;//4
        EDX := EDI;//EDI
        EAX := EBX;//Self
        sub_004CD0B0(EDI);
      end;//3
    end;//2
    EDX := lvar_C;
    EDX := EDX + 2;//EDX
    EAX := EBX;//Self
    EAX := GetCols{Cols}(EDX);
    GetCols{Cols}(EDX).Clear;
    EAX := 0;
    lvar_4 := EAX;
    EAX := sub_004B9F60;
    if (EAX{sub_004B9F60} <> 0) then
    begin//2
      //004CC857
      EDX := lvar_C;
      EDX := EDX + 3;//EDX
      EAX := EBX;//Self
      EAX := GetCols{Cols}(EDX);
      GetCols{Cols}(EDX).Clear;
      EDX := lvar_C;
      EDX := EDX + 4;//EDX
      EAX := EBX;//Self
      EAX := GetCols{Cols}(EDX);
      GetCols{Cols}(EDX).Clear;
      EDX := lvar_C;
      EDX := EDX + 5;//EDX
      EAX := EBX;//Self
      EAX := GetCols{Cols}(EDX);
      GetCols{Cols}(EDX).Clear;
      EDX := lvar_C;
      EDX := EDX + 3;//EDX
      ECX := 0;
      EAX := EBX;//Self
      SetCells{Cells}(EDX, {0}, 'Moy. 'Ecrit'');
      EAX := lvar_1C;
      EAX := lvar_1C.sub_004BEA58;
      EAX := EAX And $FF{255};//lvar_1C.sub_004BEA58 And $FF{255}
      if (EAX{lvar_1C.sub_004BEA58 And $FF{255}} > 0) then
      begin//3
        //004CC8CE
        lvar_20 := lvar_1C.sub_004BEA58 And $FF{255};
        ESI := 1;
        for ESI := 1 to lvar_1C.sub_004BEA58 And $FF{255} do
        begin//4
          //004CC8D6
          //push EAX
          EAX := sub_004BC298;
          ECX := sub_004BC298;
          EDX := ESI;//ESI
          EAX := lvar_1C;
          lvar_1C.sub_004C9708(ESI, ECX, lvar_150);
           := ;
          EAX := lvar_2C4;
          //push EAX
          EDX := lvar_C;
          EDX := EDX + 3;//EDX
          ECX := ESI;//ESI
          EAX := EBX;//Self
          SetCells{Cells}(EDX, ESI, lvar_2C4{EAX});
        end;//4
      end;//3
      EDX := lvar_C;
      EDX := EDX + 4;//EDX
      ECX := 0;
      EAX := EBX;//Self
      SetCells{Cells}(EDX, {0}, 'Moy. 'Oral'');
      EAX := lvar_1C;
      EAX := lvar_1C.sub_004BEA58;
      EAX := EAX And $FF{255};//lvar_1C.sub_004BEA58 And $FF{255}
      if (EAX{lvar_1C.sub_004BEA58 And $FF{255}} > 0) then
      begin//3
        //004CC95B
        lvar_20 := lvar_1C.sub_004BEA58 And $FF{255};
        ESI := 1;
        for ESI := 1 to lvar_1C.sub_004BEA58 And $FF{255} do
        begin//4
          //004CC963
          //push EAX
          EAX := sub_004BC298;
          ECX := sub_004BC298;
          EDX := ESI;//ESI
          EAX := lvar_1C;
          lvar_1C.sub_004C9594(ESI, ECX, lvar_150);
           := ;
          EAX := lvar_2C8;
          //push EAX
          EDX := lvar_C;
          EDX := EDX + 4;//EDX
          ECX := ESI;//ESI
          EAX := EBX;//Self
          SetCells{Cells}(EDX, ESI, lvar_2C8{EAX});
        end;//4
      end;//3
      EDX := lvar_C;
      EDX := EDX + 2;//EDX
      EAX := EBX;//Self
      sub_004CD0B0(EDX);
      EDX := lvar_C;
      EDX := EDX + 3;//EDX
      EAX := EBX;//Self
      sub_004CD0B0(EDX);
      EAX := lvar_18;
      lvar_4 := lvar_4 + lvar_18;
    end;//2
    EAX := sub_004B9E48;
    lvar_2D0 := IntToStr(sub_004B9E48);
    ECX := lvar_2D0;
    EDX := $4CCC80;
    lvar_2CC := 'Moyenne annuelle sur ' + lvar_2D0;
    EAX := lvar_2CC;
    //push EAX
    EDX := lvar_4;
    EDX := EDX + 3;//EDX
    EDX := EDX + lvar_C;
    ECX := 0;
    EAX := EBX;//Self
    SetCells{Cells}(EDX, {0}, lvar_2CC{EAX});
    EAX := lvar_1C;
    EAX := lvar_1C.sub_004BEA58;
    EAX := EAX And $FF{255};//lvar_1C.sub_004BEA58 And $FF{255}
    if (EAX{lvar_1C.sub_004BEA58 And $FF{255}} > 0) then
    begin//2
      //004CCA69
      lvar_20 := lvar_1C.sub_004BEA58 And $FF{255};
      ESI := 1;
      for ESI := 1 to lvar_1C.sub_004BEA58 And $FF{255} do
      begin//3
        //004CCA71
        EAX := sub_004BC298;
        //push EAX
        EAX := sub_004BC30C;
        //push EAX
        //push EAX
        EAX := sub_004B9E10;
        ECX := sub_004B9E10;
        EDX := ESI;//ESI
        EAX := lvar_1C;
        sub_004C32B4(lvar_1C, ESI, ECX, sub_004BC298{EAX}, sub_004BC30C{EAX}, lvar_150);
         := ;
        EAX := lvar_2D4;
        //push EAX
        EDX := lvar_4;
        EDX := EDX + 3;//EDX
        EDX := EDX + lvar_C;
        ECX := ESI;//ESI
        EAX := EBX;//Self
        SetCells{Cells}(EDX, ESI, lvar_2D4{EAX});
      end;//3
    end;//2
    EDI := lvar_4;
    EDI := EDI + lvar_C;
    EDX := EDI;//EDI
    EDX := EDX + 2;//EDX
    EAX := EBX;//Self
    sub_004CD0B0(EDX);
    EDX := lvar_4;
    EDX := EDX + 4;//EDX
    EDX := EDX + lvar_C;
    EAX := EBX;//Self
    EAX := GetCols{Cols}(EDX);
    GetCols{Cols}(EDX).Clear;
    ESI := lvar_4;
    ESI := ESI + 5;//ESI
    ESI := ESI + lvar_C;
    EDX := ESI;//ESI
    EAX := EBX;//Self
    EAX := GetCols{Cols}(ESI);
    GetCols{Cols}(ESI).Clear;
    EAX := sub_004B9E10;
    //push EAX
    EAX := sub_004BC298;
    //push EAX
    EAX := sub_004BC30C;
    //push EAX
    EAX := sub_004B9EA0;
    ECX := sub_004B9EA0;
    EDX := lvar_C;
    EDX := EDX + 1;//EDX
    EAX := lvar_1C;
    EAX := lvar_1C.sub_004C5078(EDX, ECX, sub_004B9E10{EAX}, sub_004BC298{EAX}, sub_004BC30C{EAX});
    ECX := lvar_1C.sub_004C5078(EDX, ECX, sub_004B9E10{EAX}, sub_004BC298{EAX}, sub_004BC30C{EAX});
    EDX := ESI;//ESI
    EAX := EBX;//Self
    SetCols{Cols}(ESI, ECX);
    EDX := EDI;//EDI
    EDX := EDX + 4;//EDX
    EAX := EBX;//Self
    sub_004CD0B0(EDX);*)
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
    IRowCount := byte(FichierCdn.sub_004BEA58);
	//RowCount :=IRowCount -1; // supprimer le
    Cols[1].Clear;
    Cells[1, 0] :=  'Noms et prénoms';
    Cells[1 , $4{gvar_006178F4} + IRowCount] := '';
    Cells[1 , $5{gvar_006178F5} + IRowCount - 1] := 'Min :';
    Cells[1 , $6{gvar_006178F6} + IRowCount - 1] := 'Max :';
    Cells[1 , $2{gvar_006178F7} + IRowCount] := 'Moyenne :';
    Cells[1 , $7{gvar_006178F8} + IRowCount - 1] := 'Ecart type :';
    Cells[1 , $8{gvar_006178F9} + IRowCount - 1] := '% moyennes < moyenne :';
    Cells[1 , $9{gvar_006178FA} + IRowCount - 1] := '% moyennes < moyenne classe :';
    Cols[0].Clear;
      for I := 1 to IRowCount do //004CCE61
      begin//004CCE66
        Cells[0, I] := IntToStr(I);
        FichierCdn.sub_004BEA64(I, Buf);
        lvar_4 := Buf;
        FichierCdn.sub_004C8BB8(I, Buf);
        if (Trim(Buf) <> '') then
        begin//004CCEF8
          if ({sub_004BB9B4} true) then
          begin//004CCF01
            FichierCdn.sub_004C8BB8(I, Buf);
            lvar_4 := lvar_4 + ' (' + Buf + ')';
          end;//5
        end;//4
        if (FichierCdn.sub_004C8E50(I)) then
        begin//004CCF70
          if ({sub_004BB95C} true) then
          begin//004CCF79
            lvar_4 := lvar_4 + ' (R)';
          end;//5
        end;//4
        Cells[1 , I] :=  lvar_4;
      end;//3
	  visible := true; //supprimer le 
end;

//004CD0B0
{*procedure sub_004CD0B0(?:TGrilleBilanCarnetDeNotes; ?:?);
begin
 004CD0B0    push        ebp
 004CD0B1    mov         ebp,esp
 004CD0B3    add         esp,0FFFFFF48
 004CD0B9    push        ebx
 004CD0BA    push        esi
 004CD0BB    push        edi
 004CD0BC    xor         ecx,ecx
 004CD0BE    mov         dword ptr [ebp-0B8],ecx
 004CD0C4    mov         dword ptr [ebp-0B4],ecx
 004CD0CA    mov         dword ptr [ebp-0B0],ecx
 004CD0D0    mov         dword ptr [ebp-0A4],ecx
 004CD0D6    mov         dword ptr [ebp-0A0],ecx
 004CD0DC    mov         dword ptr [ebp-9C],ecx
 004CD0E2    mov         dword ptr [ebp-98],ecx
 004CD0E8    mov         dword ptr [ebp-94],ecx
 004CD0EE    mov         dword ptr [ebp-90],ecx
 004CD0F4    mov         byte ptr [ebp-5],dl
 004CD0F7    mov         dword ptr [ebp-4],eax
 004CD0FA    xor         eax,eax
 004CD0FC    push        ebp
 004CD0FD    push        4CD7BC
 004CD102    push        dword ptr fs:[eax]
 004CD105    mov         dword ptr fs:[eax],esp
 004CD108    mov         eax,dword ptr [ebp-4]
 004CD10B    mov         eax,dword ptr [eax+2DC];TGrilleBilanCarnetDeNotes.?f2DC:dword
 004CD111    call        004BEA58
 004CD116    mov         byte ptr [ebp-7],al
 004CD119    push        0
 004CD11B    movzx       esi,byte ptr [ebp-7]
 004CD11F    mov         ecx,esi
 004CD121    mov         eax,[00616234];^gvar_006178F5
 004CD126    movzx       eax,byte ptr [eax]
 004CD129    add         ecx,eax
>004CD12B    jno         004CD132
 004CD12D    call        @IntOver
 004CD132    sub         ecx,1
>004CD135    jno         004CD13C
 004CD137    call        @IntOver
 004CD13C    xor         ebx,ebx
 004CD13E    mov         bl,byte ptr [ebp-5]
 004CD141    add         ebx,1
>004CD144    jno         004CD14B
 004CD146    call        @IntOver
 004CD14B    mov         edx,ebx
 004CD14D    mov         eax,dword ptr [ebp-4]
 004CD150    call        TStringGrid.SetCells
 004CD155    push        0
 004CD157    mov         ecx,esi
 004CD159    mov         eax,[006161DC];^gvar_006178F6
 004CD15E    movzx       eax,byte ptr [eax]
 004CD161    add         ecx,eax
>004CD163    jno         004CD16A
 004CD165    call        @IntOver
 004CD16A    sub         ecx,1
>004CD16D    jno         004CD174
 004CD16F    call        @IntOver
 004CD174    mov         edx,ebx
 004CD176    mov         eax,dword ptr [ebp-4]
 004CD179    call        TStringGrid.SetCells
 004CD17E    push        0
 004CD180    mov         ecx,esi
 004CD182    mov         eax,[006161B4];^gvar_006178F7
 004CD187    movzx       eax,byte ptr [eax]
 004CD18A    add         ecx,eax
>004CD18C    jno         004CD193
 004CD18E    call        @IntOver
 004CD193    mov         edx,ebx
 004CD195    mov         eax,dword ptr [ebp-4]
 004CD198    call        TStringGrid.SetCells
 004CD19D    push        0
 004CD19F    mov         ecx,esi
 004CD1A1    mov         eax,[00615C2C];^gvar_006178F8
 004CD1A6    movzx       eax,byte ptr [eax]
 004CD1A9    add         ecx,eax
>004CD1AB    jno         004CD1B2
 004CD1AD    call        @IntOver
 004CD1B2    sub         ecx,1
>004CD1B5    jno         004CD1BC
 004CD1B7    call        @IntOver
 004CD1BC    mov         edx,ebx
 004CD1BE    mov         eax,dword ptr [ebp-4]
 004CD1C1    call        TStringGrid.SetCells
 004CD1C6    push        0
 004CD1C8    mov         ecx,esi
 004CD1CA    mov         eax,[00615E00];^gvar_006178F9
 004CD1CF    movzx       eax,byte ptr [eax]
 004CD1D2    add         ecx,eax
>004CD1D4    jno         004CD1DB
 004CD1D6    call        @IntOver
 004CD1DB    sub         ecx,1
>004CD1DE    jno         004CD1E5
 004CD1E0    call        @IntOver
 004CD1E5    mov         edx,ebx
 004CD1E7    mov         eax,dword ptr [ebp-4]
 004CD1EA    call        TStringGrid.SetCells
 004CD1EF    push        0
 004CD1F1    mov         ecx,esi
 004CD1F3    mov         eax,[00615BEC];^gvar_006178FA
 004CD1F8    movzx       eax,byte ptr [eax]
 004CD1FB    add         ecx,eax
>004CD1FD    jno         004CD204
 004CD1FF    call        @IntOver
 004CD204    sub         ecx,1
>004CD207    jno         004CD20E
 004CD209    call        @IntOver
 004CD20E    mov         edx,ebx
 004CD210    mov         eax,dword ptr [ebp-4]
 004CD213    call        TStringGrid.SetCells
 004CD218    mov         byte ptr [ebp-8],0
 004CD21C    mov         byte ptr [ebp-9],0
 004CD220    xor         eax,eax
 004CD222    mov         dword ptr [ebp-28],eax
 004CD225    mov         dword ptr [ebp-24],0A0000000
 004CD22C    mov         word ptr [ebp-20],4002
 004CD232    xor         eax,eax
 004CD234    mov         dword ptr [ebp-38],eax
 004CD237    mov         dword ptr [ebp-34],0A0000000
 004CD23E    mov         word ptr [ebp-30],4003
 004CD244    xor         eax,eax
 004CD246    mov         dword ptr [ebp-48],eax
 004CD249    mov         dword ptr [ebp-44],eax
 004CD24C    mov         word ptr [ebp-40],ax
 004CD250    xor         eax,eax
 004CD252    mov         dword ptr [ebp-58],eax
 004CD255    mov         dword ptr [ebp-54],eax
 004CD258    mov         word ptr [ebp-50],ax
 004CD25C    xor         eax,eax
 004CD25E    mov         dword ptr [ebp-68],eax
 004CD261    mov         dword ptr [ebp-64],eax
 004CD264    mov         word ptr [ebp-60],ax
 004CD268    xor         eax,eax
 004CD26A    mov         dword ptr [ebp-78],eax
 004CD26D    mov         dword ptr [ebp-74],eax
 004CD270    mov         word ptr [ebp-70],ax
 004CD274    mov         al,byte ptr [ebp-7]
 004CD277    test        al,al
>004CD279    jbe         004CD39D
 004CD27F    mov         byte ptr [ebp-89],al
 004CD285    mov         byte ptr [ebp-6],1
 004CD289    xor         eax,eax
 004CD28B    push        ebp
 004CD28C    push        4CD362
 004CD291    push        dword ptr fs:[eax]
 004CD294    mov         dword ptr fs:[eax],esp
 004CD297    lea         eax,[ebp-90]
 004CD29D    push        eax
 004CD29E    xor         ecx,ecx
 004CD2A0    mov         cl,byte ptr [ebp-6]
 004CD2A3    xor         edx,edx
 004CD2A5    mov         dl,byte ptr [ebp-5]
 004CD2A8    add         edx,1
>004CD2AB    jno         004CD2B2
 004CD2AD    call        @IntOver
 004CD2B2    mov         eax,dword ptr [ebp-4]
 004CD2B5    call        TStringGrid.GetCells
 004CD2BA    mov         eax,dword ptr [ebp-90]
 004CD2C0    call        StrToFloat
 004CD2C5    fstp        tbyte ptr [ebp-18]
 004CD2C8    wait
 004CD2C9    fld         tbyte ptr [ebp-18]
 004CD2CC    fld         tbyte ptr [ebp-28]
 004CD2CF    fcompp
 004CD2D1    fnstsw      al
 004CD2D3    sahf
>004CD2D4    jbe         004CD2E1
 004CD2D6    add         byte ptr [ebp-9],1
>004CD2DA    jae         004CD2E1
 004CD2DC    call        @IntOver
 004CD2E1    fld         tbyte ptr [ebp-38]
 004CD2E4    fld         tbyte ptr [ebp-18]
 004CD2E7    fcompp
 004CD2E9    fnstsw      al
 004CD2EB    sahf
>004CD2EC    jae         004CD302
 004CD2EE    mov         eax,dword ptr [ebp-18]
 004CD2F1    mov         dword ptr [ebp-38],eax
 004CD2F4    mov         eax,dword ptr [ebp-14]
 004CD2F7    mov         dword ptr [ebp-34],eax
 004CD2FA    mov         ax,word ptr [ebp-10]
 004CD2FE    mov         word ptr [ebp-30],ax
 004CD302    fld         tbyte ptr [ebp-48]
 004CD305    fld         tbyte ptr [ebp-18]
 004CD308    fcompp
 004CD30A    fnstsw      al
 004CD30C    sahf
>004CD30D    jbe         004CD323
 004CD30F    mov         eax,dword ptr [ebp-18]
 004CD312    mov         dword ptr [ebp-48],eax
 004CD315    mov         eax,dword ptr [ebp-14]
 004CD318    mov         dword ptr [ebp-44],eax
 004CD31B    mov         ax,word ptr [ebp-10]
 004CD31F    mov         word ptr [ebp-40],ax
 004CD323    fld         tbyte ptr [ebp-18]
 004CD326    fld         tbyte ptr [ebp-68]
 004CD329    faddp       st(1),st
 004CD32B    fstp        tbyte ptr [ebp-68]
 004CD32E    wait
 004CD32F    fld         tbyte ptr [ebp-18]
 004CD332    fld         tbyte ptr [ebp-18]
 004CD335    fmulp       st(1),st
 004CD337    fld         tbyte ptr [ebp-78]
 004CD33A    faddp       st(1),st
 004CD33C    fstp        tbyte ptr [ebp-78]
 004CD33F    wait
 004CD340    fld         tbyte ptr [ebp-58]
 004CD343    fadd        dword ptr ds:[4CD7CC];1:Single
 004CD349    fstp        tbyte ptr [ebp-58]
 004CD34C    wait
 004CD34D    add         byte ptr [ebp-8],1
>004CD351    jae         004CD358
 004CD353    call        @IntOver
 004CD358    xor         eax,eax
 004CD35A    pop         edx
 004CD35B    pop         ecx
 004CD35C    pop         ecx
 004CD35D    mov         dword ptr fs:[eax],edx
>004CD360    jmp         004CD38E
>004CD362    jmp         @HandleOnException
 004CD367    dd          2
 004CD36B    dd          00409B50;EConvertError
 004CD36F    dd          004CD37B
 004CD373    dd          004098E0;EMathError
 004CD377    dd          004CD382
 004CD37B    call        @DoneExcept
>004CD380    jmp         004CD38E
 004CD382    call        @DoneExcept
>004CD387    jmp         004CD38E
 004CD389    call        @DoneExcept
 004CD38E    inc         byte ptr [ebp-6]
 004CD391    dec         byte ptr [ebp-89]
>004CD397    jne         004CD289
 004CD39D    xor         eax,eax
 004CD39F    push        ebp
 004CD3A0    push        4CD771
 004CD3A5    push        dword ptr fs:[eax]
 004CD3A8    mov         dword ptr fs:[eax],esp
 004CD3AB    cmp         byte ptr [ebp-8],0
>004CD3AF    jbe         004CD767
 004CD3B5    mov         ax,word ptr [ebp-30]
 004CD3B9    push        eax
 004CD3BA    push        dword ptr [ebp-34]
 004CD3BD    push        dword ptr [ebp-38]
 004CD3C0    lea         eax,[ebp-94]
 004CD3C6    call        FloatToStr
 004CD3CB    mov         eax,dword ptr [ebp-94]
 004CD3D1    push        eax
 004CD3D2    movzx       esi,byte ptr [ebp-7]
 004CD3D6    mov         ecx,esi
 004CD3D8    mov         eax,[00616234];^gvar_006178F5
 004CD3DD    movzx       eax,byte ptr [eax]
 004CD3E0    add         ecx,eax
>004CD3E2    jno         004CD3E9
 004CD3E4    call        @IntOver
 004CD3E9    sub         ecx,1
>004CD3EC    jno         004CD3F3
 004CD3EE    call        @IntOver
 004CD3F3    xor         ebx,ebx
 004CD3F5    mov         bl,byte ptr [ebp-5]
 004CD3F8    add         ebx,1
>004CD3FB    jno         004CD402
 004CD3FD    call        @IntOver
 004CD402    mov         edx,ebx
 004CD404    mov         eax,dword ptr [ebp-4]
 004CD407    call        TStringGrid.SetCells
 004CD40C    mov         ax,word ptr [ebp-40]
 004CD410    push        eax
 004CD411    push        dword ptr [ebp-44]
 004CD414    push        dword ptr [ebp-48]
 004CD417    lea         eax,[ebp-98]
 004CD41D    call        FloatToStr
 004CD422    mov         eax,dword ptr [ebp-98]
 004CD428    push        eax
 004CD429    mov         ecx,esi
 004CD42B    mov         eax,[006161DC];^gvar_006178F6
 004CD430    movzx       eax,byte ptr [eax]
 004CD433    add         ecx,eax
>004CD435    jno         004CD43C
 004CD437    call        @IntOver
 004CD43C    sub         ecx,1
>004CD43F    jno         004CD446
 004CD441    call        @IntOver
 004CD446    mov         edx,ebx
 004CD448    mov         eax,dword ptr [ebp-4]
 004CD44B    call        TStringGrid.SetCells
 004CD450    fld         tbyte ptr [ebp-68]
 004CD453    fld         tbyte ptr [ebp-58]
 004CD456    fdivp       st(1),st
 004CD458    add         esp,0FFFFFFF4
 004CD45B    fstp        tbyte ptr [esp]
 004CD45E    wait
 004CD45F    lea         eax,[ebp-9C]
 004CD465    push        eax
 004CD466    mov         ecx,2
 004CD46B    mov         edx,12
 004CD470    mov         al,2
 004CD472    call        FloatToStrF
 004CD477    mov         eax,dword ptr [ebp-9C]
 004CD47D    push        eax
 004CD47E    mov         ecx,esi
 004CD480    mov         eax,[006161B4];^gvar_006178F7
 004CD485    movzx       eax,byte ptr [eax]
 004CD488    add         ecx,eax
>004CD48A    jno         004CD491
 004CD48C    call        @IntOver
 004CD491    mov         edx,ebx
 004CD493    mov         eax,dword ptr [ebp-4]
 004CD496    call        TStringGrid.SetCells
 004CD49B    fld         tbyte ptr [ebp-78]
 004CD49E    fld         tbyte ptr [ebp-58]
 004CD4A1    fdivp       st(1),st
 004CD4A3    fld         tbyte ptr [ebp-68]
 004CD4A6    fld         tbyte ptr [ebp-58]
 004CD4A9    fdivp       st(1),st
 004CD4AB    fld         tbyte ptr [ebp-68]
 004CD4AE    fld         tbyte ptr [ebp-58]
 004CD4B1    fdivp       st(1),st
 004CD4B3    fmulp       st(1),st
 004CD4B5    fsubp       st(1),st
 004CD4B7    fsqrt
 004CD4B9    add         esp,0FFFFFFF4
 004CD4BC    fstp        tbyte ptr [esp]
 004CD4BF    wait
 004CD4C0    lea         eax,[ebp-0A0]
 004CD4C6    push        eax
 004CD4C7    mov         ecx,2
 004CD4CC    mov         edx,12
 004CD4D1    mov         al,2
 004CD4D3    call        FloatToStrF
 004CD4D8    mov         eax,dword ptr [ebp-0A0]
 004CD4DE    push        eax
 004CD4DF    mov         ecx,esi
 004CD4E1    mov         eax,[00615C2C];^gvar_006178F8
 004CD4E6    movzx       eax,byte ptr [eax]
 004CD4E9    add         ecx,eax
>004CD4EB    jno         004CD4F2
 004CD4ED    call        @IntOver
 004CD4F2    sub         ecx,1
>004CD4F5    jno         004CD4FC
 004CD4F7    call        @IntOver
 004CD4FC    mov         edx,ebx
 004CD4FE    mov         eax,dword ptr [ebp-4]
 004CD501    call        TStringGrid.SetCells
 004CD506    xor         eax,eax
 004CD508    mov         al,byte ptr [ebp-9]
 004CD50B    mov         dword ptr [ebp-0A8],eax
 004CD511    fild        dword ptr [ebp-0A8]
 004CD517    xor         eax,eax
 004CD519    mov         al,byte ptr [ebp-8]
 004CD51C    mov         dword ptr [ebp-0AC],eax
 004CD522    fild        dword ptr [ebp-0AC]
 004CD528    fdivp       st(1),st
 004CD52A    fmul        dword ptr ds:[4CD7D0];100:Single
 004CD530    add         esp,0FFFFFFF4
 004CD533    fstp        tbyte ptr [esp]
 004CD536    wait
 004CD537    lea         eax,[ebp-0A4]
 004CD53D    push        eax
 004CD53E    mov         ecx,2
 004CD543    mov         edx,12
 004CD548    mov         al,2
 004CD54A    call        FloatToStrF
 004CD54F    lea         eax,[ebp-0A4]
 004CD555    mov         edx,4CD7DC;' %'
 004CD55A    call        @LStrCat
 004CD55F    mov         eax,dword ptr [ebp-0A4]
 004CD565    push        eax
 004CD566    mov         ecx,esi
 004CD568    mov         eax,[00615E00];^gvar_006178F9
 004CD56D    movzx       eax,byte ptr [eax]
 004CD570    add         ecx,eax
>004CD572    jno         004CD579
 004CD574    call        @IntOver
 004CD579    sub         ecx,1
>004CD57C    jno         004CD583
 004CD57E    call        @IntOver
 004CD583    mov         edx,ebx
 004CD585    mov         eax,dword ptr [ebp-4]
 004CD588    call        TStringGrid.SetCells
 004CD58D    lea         eax,[ebp-0B0]
 004CD593    push        eax
 004CD594    mov         ecx,esi
 004CD596    mov         eax,[006161B4];^gvar_006178F7
 004CD59B    movzx       eax,byte ptr [eax]
 004CD59E    add         ecx,eax
>004CD5A0    jno         004CD5A7
 004CD5A2    call        @IntOver
 004CD5A7    mov         edx,ebx
 004CD5A9    mov         eax,dword ptr [ebp-4]
 004CD5AC    call        TStringGrid.GetCells
 004CD5B1    mov         eax,dword ptr [ebp-0B0]
 004CD5B7    call        StrToFloat
 004CD5BC    fstp        tbyte ptr [ebp-88]
 004CD5C2    wait
 004CD5C3    mov         byte ptr [ebp-0A],0
 004CD5C7    mov         al,byte ptr [ebp-7]
 004CD5CA    test        al,al
>004CD5CC    jbe         004CD67C
 004CD5D2    mov         byte ptr [ebp-89],al
 004CD5D8    mov         byte ptr [ebp-6],1
 004CD5DC    xor         eax,eax
 004CD5DE    push        ebp
 004CD5DF    push        4CD641
 004CD5E4    push        dword ptr fs:[eax]
 004CD5E7    mov         dword ptr fs:[eax],esp
 004CD5EA    lea         eax,[ebp-0B4]
 004CD5F0    push        eax
 004CD5F1    xor         ecx,ecx
 004CD5F3    mov         cl,byte ptr [ebp-6]
 004CD5F6    xor         edx,edx
 004CD5F8    mov         dl,byte ptr [ebp-5]
 004CD5FB    add         edx,1
>004CD5FE    jno         004CD605
 004CD600    call        @IntOver
 004CD605    mov         eax,dword ptr [ebp-4]
 004CD608    call        TStringGrid.GetCells
 004CD60D    mov         eax,dword ptr [ebp-0B4]
 004CD613    call        StrToFloat
 004CD618    fstp        tbyte ptr [ebp-18]
 004CD61B    wait
 004CD61C    fld         tbyte ptr [ebp-18]
 004CD61F    fld         tbyte ptr [ebp-88]
 004CD625    fcompp
 004CD627    fnstsw      al
 004CD629    sahf
>004CD62A    jbe         004CD637
 004CD62C    add         byte ptr [ebp-0A],1
>004CD630    jae         004CD637
 004CD632    call        @IntOver
 004CD637    xor         eax,eax
 004CD639    pop         edx
 004CD63A    pop         ecx
 004CD63B    pop         ecx
 004CD63C    mov         dword ptr fs:[eax],edx
>004CD63F    jmp         004CD66D
>004CD641    jmp         @HandleOnException
 004CD646    dd          2
 004CD64A    dd          00409B50;EConvertError
 004CD64E    dd          004CD65A
 004CD652    dd          004098E0;EMathError
 004CD656    dd          004CD661
 004CD65A    call        @DoneExcept
>004CD65F    jmp         004CD66D
 004CD661    call        @DoneExcept
>004CD666    jmp         004CD66D
 004CD668    call        @DoneExcept
 004CD66D    inc         byte ptr [ebp-6]
 004CD670    dec         byte ptr [ebp-89]
>004CD676    jne         004CD5DC
 004CD67C    xor         eax,eax
 004CD67E    push        ebp
 004CD67F    push        4CD72B
 004CD684    push        dword ptr fs:[eax]
 004CD687    mov         dword ptr fs:[eax],esp
 004CD68A    xor         eax,eax
 004CD68C    mov         al,byte ptr [ebp-0A]
 004CD68F    mov         dword ptr [ebp-0A8],eax
 004CD695    fild        dword ptr [ebp-0A8]
 004CD69B    xor         eax,eax
 004CD69D    mov         al,byte ptr [ebp-8]
 004CD6A0    mov         dword ptr [ebp-0AC],eax
 004CD6A6    fild        dword ptr [ebp-0AC]
 004CD6AC    fdivp       st(1),st
 004CD6AE    fmul        dword ptr ds:[4CD7D0];100:Single
 004CD6B4    add         esp,0FFFFFFF4
 004CD6B7    fstp        tbyte ptr [esp]
 004CD6BA    wait
 004CD6BB    lea         eax,[ebp-0B8]
 004CD6C1    push        eax
 004CD6C2    mov         ecx,2
 004CD6C7    mov         edx,12
 004CD6CC    mov         al,2
 004CD6CE    call        FloatToStrF
 004CD6D3    lea         eax,[ebp-0B8]
 004CD6D9    mov         edx,4CD7DC;' %'
 004CD6DE    call        @LStrCat
 004CD6E3    mov         eax,dword ptr [ebp-0B8]
 004CD6E9    push        eax
 004CD6EA    xor         ecx,ecx
 004CD6EC    mov         cl,byte ptr [ebp-7]
 004CD6EF    mov         eax,[00615BEC];^gvar_006178FA
 004CD6F4    movzx       eax,byte ptr [eax]
 004CD6F7    add         ecx,eax
>004CD6F9    jno         004CD700
 004CD6FB    call        @IntOver
 004CD700    sub         ecx,1
>004CD703    jno         004CD70A
 004CD705    call        @IntOver
 004CD70A    xor         edx,edx
 004CD70C    mov         dl,byte ptr [ebp-5]
 004CD70F    add         edx,1
>004CD712    jno         004CD719
 004CD714    call        @IntOver
 004CD719    mov         eax,dword ptr [ebp-4]
 004CD71C    call        TStringGrid.SetCells
 004CD721    xor         eax,eax
 004CD723    pop         edx
 004CD724    pop         ecx
 004CD725    pop         ecx
 004CD726    mov         dword ptr fs:[eax],edx
>004CD729    jmp         004CD767
>004CD72B    jmp         @HandleOnException
 004CD730    dd          2
 004CD734    dd          00409B50;EConvertError
 004CD738    dd          004CD744
 004CD73C    dd          004098E0;EMathError
 004CD740    dd          004CD753
 004CD744    call        @DoneExcept
 004CD749    xor         eax,eax
 004CD74B    pop         edx
 004CD74C    pop         ecx
 004CD74D    pop         ecx
 004CD74E    mov         dword ptr fs:[eax],edx
>004CD751    jmp         004CD78E
 004CD753    call        @DoneExcept
 004CD758    xor         eax,eax
 004CD75A    pop         edx
 004CD75B    pop         ecx
 004CD75C    pop         ecx
 004CD75D    mov         dword ptr fs:[eax],edx
>004CD760    jmp         004CD78E
 004CD762    call        @DoneExcept
 004CD767    xor         eax,eax
 004CD769    pop         edx
 004CD76A    pop         ecx
 004CD76B    pop         ecx
 004CD76C    mov         dword ptr fs:[eax],edx
>004CD76F    jmp         004CD78E
>004CD771    jmp         @HandleOnException
 004CD776    dd          1
 004CD77A    dd          004098E0;EMathError
 004CD77E    dd          004CD782
 004CD782    call        @DoneExcept
>004CD787    jmp         004CD78E
 004CD789    call        @DoneExcept
 004CD78E    xor         eax,eax
 004CD790    pop         edx
 004CD791    pop         ecx
 004CD792    pop         ecx
 004CD793    mov         dword ptr fs:[eax],edx
 004CD796    push        4CD7C3
 004CD79B    lea         eax,[ebp-0B8]
 004CD7A1    mov         edx,3
 004CD7A6    call        @LStrArrayClr
 004CD7AB    lea         eax,[ebp-0A4]
 004CD7B1    mov         edx,6
 004CD7B6    call        @LStrArrayClr
 004CD7BB    ret
>004CD7BC    jmp         @HandleFinally
>004CD7C1    jmp         004CD79B
 004CD7C3    pop         edi
 004CD7C4    pop         esi
 004CD7C5    pop         ebx
 004CD7C6    mov         esp,ebp
 004CD7C8    pop         ebp
 004CD7C9    ret
end;*}

//004CEA48
destructor TGrilleBilanCarnetDeNotes.Destroy;
begin
 inherited;
{*
 004CEA48    push        ebx
 004CEA49    push        esi
 004CEA4A    call        @BeforeDestruction
 004CEA4F    mov         ebx,edx
 004CEA51    mov         esi,eax
 004CEA53    mov         eax,dword ptr [esi+2E8];TGrilleBilanCarnetDeNotes.?f2E8:dword
 004CEA59    push        eax
 004CEA5A    call        user32.DestroyMenu
 004CEA5F    mov         eax,dword ptr [esi+2EC];TGrilleBilanCarnetDeNotes.?f2EC:dword
 004CEA65    push        eax
 004CEA66    call        user32.DestroyMenu
 004CEA6B    mov         eax,dword ptr [esi+2F0];TGrilleBilanCarnetDeNotes.?f2F0:dword
 004CEA71    push        eax
 004CEA72    call        user32.DestroyMenu
 004CEA77    mov         eax,dword ptr [esi+2F4];TGrilleBilanCarnetDeNotes.?f2F4:dword
 004CEA7D    push        eax
 004CEA7E    call        user32.DestroyMenu
 004CEA83    mov         edx,ebx
 004CEA85    and         dl,0FC
 004CEA88    mov         eax,esi
 004CEA8A    call        TStringGrid.Destroy
 004CEA8F    test        bl,bl
>004CEA91    jle         004CEA9A
 004CEA93    mov         eax,esi
 004CEA95    call        @ClassDestroy
 004CEA9A    pop         esi
 004CEA9B    pop         ebx
 004CEA9C    ret
*}
end;

//004CEAA0
procedure TGrilleBilanCarnetDeNotes.WMCommand(var Message:TWMCommand);
begin
{*
 004CEAA0    push        ebp
 004CEAA1    mov         ebp,esp
 004CEAA3    xor         ecx,ecx
 004CEAA5    push        ecx
 004CEAA6    push        ecx
 004CEAA7    push        ecx
 004CEAA8    push        ecx
 004CEAA9    push        ecx
 004CEAAA    push        ecx
 004CEAAB    push        ecx
 004CEAAC    push        ecx
 004CEAAD    push        ebx
 004CEAAE    push        esi
 004CEAAF    push        edi
 004CEAB0    mov         edi,edx
 004CEAB2    mov         esi,eax
 004CEAB4    xor         eax,eax
 004CEAB6    push        ebp
 004CEAB7    push        4CEE74
 004CEABC    push        dword ptr fs:[eax]
 004CEABF    mov         dword ptr fs:[eax],esp
 004CEAC2    xor         ebx,ebx
 004CEAC4    mov         byte ptr [ebp-1],0
 004CEAC8    movzx       eax,word ptr [edi+4]
 004CEACC    cmp         eax,13
>004CEACF    ja          004CEE01
 004CEAD5    jmp         dword ptr [eax*4+4CEADC]
 004CEAD5    dd          004CEE01
 004CEAD5    dd          004CEB2C
 004CEAD5    dd          004CEB2C
 004CEAD5    dd          004CEB72
 004CEAD5    dd          004CEB95
 004CEAD5    dd          004CEBB8
 004CEAD5    dd          004CEC68
 004CEAD5    dd          004CEC7B
 004CEAD5    dd          004CEC7B
 004CEAD5    dd          004CEC7B
 004CEAD5    dd          004CEC7B
 004CEAD5    dd          004CEC7B
 004CEAD5    dd          004CECC5
 004CEAD5    dd          004CECC5
 004CEAD5    dd          004CECC5
 004CEAD5    dd          004CECC5
 004CEAD5    dd          004CECC5
 004CEAD5    dd          004CED0F
 004CEAD5    dd          004CED97
 004CEAD5    dd          004CEDF3
 004CEB2C    call        004B9EA0
 004CEB31    and         eax,0FF
 004CEB36    movzx       edx,word ptr [edi+4]
 004CEB3A    sub         edx,1
>004CEB3D    jno         004CEB44
 004CEB3F    call        @IntOver
 004CEB44    cmp         eax,edx
>004CEB46    je          004CEE01
 004CEB4C    movzx       eax,word ptr [edi+4]
 004CEB50    sub         eax,1
>004CEB53    jno         004CEB5A
 004CEB55    call        @IntOver
 004CEB5A    cmp         eax,0FF
>004CEB5F    jbe         004CEB66
 004CEB61    call        @BoundErr
 004CEB66    call        004B9DE4
 004CEB6B    mov         bl,1
>004CEB6D    jmp         004CEE01
 004CEB72    call        004B9E48
 004CEB77    cmp         eax,14
>004CEB7A    je          004CEE01
 004CEB80    mov         eax,14
 004CEB85    call        004B9DA4
 004CEB8A    mov         bl,1
 004CEB8C    mov         byte ptr [ebp-1],1
>004CEB90    jmp         004CEE01
 004CEB95    call        004B9E48
 004CEB9A    cmp         eax,0A
>004CEB9D    je          004CEE01
 004CEBA3    mov         eax,0A
 004CEBA8    call        004B9DA4
 004CEBAD    mov         bl,1
 004CEBAF    mov         byte ptr [ebp-1],1
>004CEBB3    jmp         004CEE01
 004CEBB8    push        4CEE8C;'Moyennes sur'
 004CEBBD    call        004B9E48
 004CEBC2    lea         edx,[ebp-10]
 004CEBC5    call        IntToStr
 004CEBCA    mov         eax,dword ptr [ebp-10]
 004CEBCD    push        eax
 004CEBCE    push        1
 004CEBD0    mov         ecx,esi
 004CEBD2    mov         dl,1
 004CEBD4    mov         eax,[004CA40C];TFormEdit
 004CEBD9    call        TFormEdit.Create;TFormEdit.Create
 004CEBDE    mov         edx,dword ptr ds:[616280];^gvar_00617CE0:TFormEdit
 004CEBE4    mov         dword ptr [edx],eax
 004CEBE6    mov         eax,[00616280];^gvar_00617CE0:TFormEdit
 004CEBEB    mov         eax,dword ptr [eax]
 004CEBED    mov         edx,dword ptr [eax]
 004CEBEF    call        dword ptr [edx+0D8]
 004CEBF5    mov         eax,[00616280];^gvar_00617CE0:TFormEdit
 004CEBFA    mov         eax,dword ptr [eax]
 004CEBFC    cmp         dword ptr [eax+234],1
>004CEC03    jne         004CEC55
 004CEC05    lea         edx,[ebp-14]
 004CEC08    mov         eax,[00616280];^gvar_00617CE0:TFormEdit
 004CEC0D    mov         eax,dword ptr [eax]
 004CEC0F    mov         eax,dword ptr [eax+2D0]
 004CEC15    call        TControl.GetText
 004CEC1A    mov         eax,dword ptr [ebp-14]
 004CEC1D    call        StrToInt
 004CEC22    mov         edi,eax
 004CEC24    call        004B9E48
 004CEC29    cmp         edi,eax
>004CEC2B    je          004CEC55
 004CEC2D    lea         edx,[ebp-18]
 004CEC30    mov         eax,[00616280];^gvar_00617CE0:TFormEdit
 004CEC35    mov         eax,dword ptr [eax]
 004CEC37    mov         eax,dword ptr [eax+2D0]
 004CEC3D    call        TControl.GetText
 004CEC42    mov         eax,dword ptr [ebp-18]
 004CEC45    call        StrToInt
 004CEC4A    call        004B9DA4
 004CEC4F    mov         bl,1
 004CEC51    mov         byte ptr [ebp-1],1
 004CEC55    mov         eax,[00616280];^gvar_00617CE0:TFormEdit
 004CEC5A    mov         eax,dword ptr [eax]
 004CEC5C    mov         dl,1
 004CEC5E    mov         ecx,dword ptr [eax]
 004CEC60    call        dword ptr [ecx-4]
>004CEC63    jmp         004CEE01
 004CEC68    call        004B9F30
 004CEC6D    xor         al,1
 004CEC6F    call        004B9ED4
 004CEC74    mov         bl,1
>004CEC76    jmp         004CEE01
 004CEC7B    call        004B9E10
 004CEC80    and         eax,0FF
 004CEC85    movzx       edx,word ptr [edi+4]
 004CEC89    sub         edx,7
>004CEC8C    jno         004CEC93
 004CEC8E    call        @IntOver
 004CEC93    cmp         eax,edx
>004CEC95    je          004CEE01
 004CEC9B    movzx       eax,word ptr [edi+4]
 004CEC9F    sub         eax,7
>004CECA2    jno         004CECA9
 004CECA4    call        @IntOver
 004CECA9    cmp         eax,0FF
>004CECAE    jbe         004CECB5
 004CECB0    call        @BoundErr
 004CECB5    call        004B9D74
 004CECBA    mov         bl,1
 004CECBC    mov         byte ptr [ebp-1],1
>004CECC0    jmp         004CEE01
 004CECC5    call        004BC298
 004CECCA    and         eax,0FF
 004CECCF    movzx       edx,word ptr [edi+4]
 004CECD3    sub         edx,0C
>004CECD6    jno         004CECDD
 004CECD8    call        @IntOver
 004CECDD    cmp         eax,edx
>004CECDF    je          004CEE01
 004CECE5    movzx       eax,word ptr [edi+4]
 004CECE9    sub         eax,0C
>004CECEC    jno         004CECF3
 004CECEE    call        @IntOver
 004CECF3    cmp         eax,0FF
>004CECF8    jbe         004CECFF
 004CECFA    call        @BoundErr
 004CECFF    call        004BC260
 004CED04    mov         bl,1
 004CED06    mov         byte ptr [ebp-1],1
>004CED0A    jmp         004CEE01
 004CED0F    call        Clipboard
 004CED14    call        TClipboard.Clear
 004CED19    lea         eax,[ebp-0C]
 004CED1C    call        @LStrClr
 004CED21    mov         eax,dword ptr [esi+2DC];TGrilleBilanCarnetDeNotes.?f2DC:dword
 004CED27    call        004BEA58
 004CED2C    mov         edi,eax
 004CED2E    and         edi,0FF
 004CED34    add         edi,8
>004CED37    jno         004CED3E
 004CED39    call        @IntOver
 004CED3E    test        edi,edi
>004CED40    jl          004CED81
 004CED42    inc         edi
 004CED43    mov         dword ptr [ebp-8],0
 004CED4A    push        dword ptr [ebp-0C]
 004CED4D    lea         eax,[ebp-1C]
 004CED50    push        eax
 004CED51    mov         ecx,dword ptr [ebp-8]
 004CED54    mov         edx,dword ptr [esi+2FC];TGrilleBilanCarnetDeNotes.?f2FC:dword
 004CED5A    mov         eax,esi
 004CED5C    call        TStringGrid.GetCells
 004CED61    push        dword ptr [ebp-1C]
 004CED64    push        4CEEA4;#13
 004CED69    push        4CEEB0;#10
 004CED6E    lea         eax,[ebp-0C]
 004CED71    mov         edx,4
 004CED76    call        @LStrCatN
 004CED7B    inc         dword ptr [ebp-8]
 004CED7E    dec         edi
>004CED7F    jne         004CED4A
 004CED81    mov         eax,dword ptr [ebp-0C]
 004CED84    call        @LStrToPChar
 004CED89    push        eax
 004CED8A    call        Clipboard
 004CED8F    pop         edx
 004CED90    call        TClipboard.SetTextBuf
>004CED95    jmp         004CEE01
 004CED97    call        Clipboard
 004CED9C    call        TClipboard.Clear
 004CEDA1    lea         eax,[ebp-0C]
 004CEDA4    call        @LStrClr
 004CEDA9    push        dword ptr [ebp-0C]
 004CEDAC    lea         eax,[ebp-20]
 004CEDAF    push        eax
 004CEDB0    mov         ecx,dword ptr [esi+300];TGrilleBilanCarnetDeNotes.?f300:dword
 004CEDB6    mov         edx,dword ptr [esi+2FC];TGrilleBilanCarnetDeNotes.?f2FC:dword
 004CEDBC    mov         eax,esi
 004CEDBE    call        TStringGrid.GetCells
 004CEDC3    push        dword ptr [ebp-20]
 004CEDC6    push        4CEEA4;#13
 004CEDCB    push        4CEEB0;#10
 004CEDD0    lea         eax,[ebp-0C]
 004CEDD3    mov         edx,4
 004CEDD8    call        @LStrCatN
 004CEDDD    mov         eax,dword ptr [ebp-0C]
 004CEDE0    call        @LStrToPChar
 004CEDE5    push        eax
 004CEDE6    call        Clipboard
 004CEDEB    pop         edx
 004CEDEC    call        TClipboard.SetTextBuf
>004CEDF1    jmp         004CEE01
 004CEDF3    call        004B9F60
 004CEDF8    xor         al,1
 004CEDFA    call        004B9F04
 004CEDFF    mov         bl,1
 004CEE01    or          bl,byte ptr [ebp-1]
>004CEE04    je          004CEE3F
 004CEE06    mov         ebx,dword ptr [esi+2DC];TGrilleBilanCarnetDeNotes.?f2DC:dword
 004CEE0C    mov         cl,1
 004CEE0E    mov         dl,byte ptr [esi+2D8];TGrilleBilanCarnetDeNotes.?f2D8:byte
 004CEE14    mov         eax,ebx
 004CEE16    call        004C4784
 004CEE1B    mov         eax,ebx
 004CEE1D    call        004C63C8
 004CEE22    push        0
 004CEE24    xor         eax,eax
 004CEE26    mov         al,byte ptr [esi+2D8];TGrilleBilanCarnetDeNotes.?f2D8:byte
 004CEE2C    push        eax
 004CEE2D    push        403
 004CEE32    mov         eax,esi
 004CEE34    call        TWinControl.GetHandle
 004CEE39    push        eax
 004CEE3A    call        user32.SendMessageA
 004CEE3F    xor         eax,eax
 004CEE41    pop         edx
 004CEE42    pop         ecx
 004CEE43    pop         ecx
 004CEE44    mov         dword ptr fs:[eax],edx
 004CEE47    push        4CEE7B
 004CEE4C    lea         eax,[ebp-20]
 004CEE4F    mov         edx,2
 004CEE54    call        @LStrArrayClr
 004CEE59    lea         eax,[ebp-18]
 004CEE5C    mov         edx,2
 004CEE61    call        @LStrArrayClr
 004CEE66    lea         eax,[ebp-10]
 004CEE69    mov         edx,2
 004CEE6E    call        @LStrArrayClr
 004CEE73    ret
>004CEE74    jmp         @HandleFinally
>004CEE79    jmp         004CEE4C
 004CEE7B    pop         edi
 004CEE7C    pop         esi
 004CEE7D    pop         ebx
 004CEE7E    mov         esp,ebp
 004CEE80    pop         ebp
 004CEE81    ret
*}
end;

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
  lvar_34 :TRect;
  lvar_14:string;
begin//0
  //004CD7E0
  {ESI := ARect;
  ECX := 4;
  lvar_24 := ARect;
  lvar_8 := ACol;}
  
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
    else
    begin//2
      //004CD8EF
      if (sub_004BB458) then
      begin//004CD8F8
        if (ARow mod 2 - 1 <> 0) then
        begin//4
          //004CD90A
          Canvas.Brush.Color := sub_004B9C80;
        end//4
        else
        begin//4
          //004CD924
          Canvas.Brush.Color := sub_004B9C34;
        end;//4
      end//3
      else
      begin//3
        //004CD93E
        Canvas.Brush.Color := $FFFFFF;
      end;//3
    end;//2
    Canvas.Font.Color := 0;
    if ((gdFixed in AState )) then
    begin//004CD96D
      Canvas.Brush.Color := $80000004;
    end//2
    else
    begin//004CD988
      
      //ESI := f2DC;
      
      if (sub_004BA2B0) then
      begin//3
        //004CD99E
        Canvas.Font.Style := [];//gvar_004CDEE8;
        Canvas.Font.Color := 0;
        if (f2D8 < FichierCdn.sub_004BE9E0) then
        begin//004CDA00
          ICol := ColCount-lvar_C + 2;
        end//4
        else
        begin//004CDA21
          ICol := ColCount - 1;//EBX
        end;//4
        IRow := FichierCdn.sub_004BEA58;
        if (ARow <= 255) then
        begin//4
          //004CDA62
          if (ARow < IRow) then
          begin//5
            //004CDA6C
            if (Cells[ACol, ARow] <> '') then
            begin//004CDA88
              if (ACol <= 255) then
              begin//7
                //004CDAAD
                if (ACol < ICol) then
                begin//8
                  //004CDAB7
                  try
                    //004CDAC5
                    if (ACol <> ICol) then
                    begin//10
                      //004CDACA
                      lvar_14 := Cells[ACol, ARow];
                    end//10
                    else
                    begin//004CDADE                   
                      lvar_14 := Copy(Cells[ACol, ARow], Pos('-> ', Cells[ACol, ARow]) + 2, Length(Cells[ACol, ARow]));
                    end;//10
					
                    if (strtofloat(lvar_14) > sub_004B9E48/2) then
                    begin//004CDB77
                      Canvas.Font.Color := sub_004B9F8C;
                    end//10
                    else
                    begin//10
                      //004CDB91
                      if (strtofloat(lvar_14) <= 3*sub_004B9E48/4) then//004CDBBC
                        Canvas.Font.Color := sub_004BA024
                      else//004CDBD6
                        Canvas.Font.Color := sub_004BA26C;
                    end;//10
                  except//9
                    on E:EConvertError do
                    begin//004CDC14
                      if (sub_004BB458) then//004CDC1D
                        Canvas.Brush.Color := sub_004BA0BC
                      else//004CDC37
                        Canvas.Brush.Color := $FFFFFF;
                    end;//10
                    on E:EMathError do
                    begin//004CDC4F
                      if (sub_004BB458 ) then//004CDC58
                        Canvas.Brush.Color := sub_004BA0BC
                      else//004CDC72
                        Canvas.Brush.Color := $FFFFFF;
                    end;//10
                  end;//9
                end;//8
              end;//7
            end;//6
          end;//5
        end;//4
      end//3
      else//004CDC8F
        Canvas.Font.Color := 0;
    end;//2
    if ((gdSelected in AState)) then
    begin//2
      //004CDCA8
      if (sub_004BB458 ) then//004CDCB1
        Canvas.Brush.Color := sub_004B9D24
      else//004CDCCB
        Canvas.Brush.Color := $C0C0C0;
    end;//2
    Canvas.FillRect(ARect);
    if (f2D8 < FichierCdn.sub_004BE9E0) then//004CDD33
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
		  lvar_34.Left := ARect.Left;
		  lvar_34.Top := ARect.Top + 2;//EAX
		  lvar_34.Right := ARect.Right;
		  lvar_34.Bottom := ARect.Bottom;
		  DrawTextA(Canvas.Handle, PChar(Cells[ACol, ARow]), Length(Cells[ACol, ARow]), lvar_34, 1);
	   end;
    end;//2
end;//0

procedure TGrilleBilanCarnetDeNotes.DrawCell(ACol, ARow: Longint; ARect: TRect; AState: TGridDrawState);
begin
    inherited DrawCell(ACol, ARow, ARect, AState);
	sub_004CD7E0(self, ACol, ARow, ARect, AState);
end;

end.