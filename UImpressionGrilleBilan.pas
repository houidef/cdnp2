{***********************************************************
* Version Original V0.03 build 1                           *
* Decompiled by HOUIDEF AEK v 12:20 mercredi, août 29, 2018*
* The disassembly process : 100%                            *
************************************************************}
unit UImpressionGrilleBilan;

interface

uses
Forms, Windows,  SysUtils, Classes, UImpression, UFichierCdn,
Graphics, UBlocTexte, UInclureImpression,
Printers, _FormProgression, UBiblio, PeriodeCalc, dialogs;

type
  TImpressionGrilleBilan = class(TImpression)
    FNbrColonnes : dword;
    FIsFinPeriode : boolean;
    constructor Create(FichierCdn:TFichierCdn; Canvas:TCanvas; EnteteDePage:TEnteteBasDePage; BasDePage:TEnteteBasDePage; e:dword; f:TInclureImpression; g:boolean; Font:TFont);//0051C9D0
	procedure sub_0051CAF8(a:dword; b:dword; c:dword; d:dword; e:boolean);//0051CAF8
    function GetNbrPageGrilleBilan:dword;//0051CD9C
    function sub_0051D080:dword;//0051D080
    function sub_0051D370:dword;//0051D370
    procedure sub_0051D450(a:dword);//0051D450
    procedure sub_0051D5B0(a:dword);//0051D5B0
    function sub_00520890(a:dword):dword;//00520890
	destructor Destroy;
  end;


implementation

//0051C9D0
constructor TImpressionGrilleBilan.Create(FichierCdn:TFichierCdn; Canvas:TCanvas; EnteteDePage:TEnteteBasDePage; BasDePage:TEnteteBasDePage; e:dword; f:TInclureImpression; g:boolean; Font:TFont);
begin//0
    inherited create(FichierCdn,Canvas,EnteteDePage,BasDePage,e,f,g,Font);
    FIsFinPeriode := (FCdn.NbrePeriodes() + 1 = FIdPeriode);
    Printer.Title := 'Carnet de Notes version Personnelle - ' + FCdn.GetClasseName;
    Printer.BeginDoc;
    FNbrPageV := GetNbrPageGrilleBilan;
end;//0

//0051CAF8
procedure TImpressionGrilleBilan.sub_0051CAF8(a:dword; b:dword; c:dword; d:dword; e:boolean);
var
  s,I,J:integer;
begin//0
  //0051CAF8
  if (a > b) then
  begin//1
    //0051CB0E
    s := b;
    b := a;
    a := s;
  end;//1
  if (c > 0) then
  begin//1
    //0051CB21
    for I := 1 to c do
    begin//2
      //0051CB2B
      FormProgression{gvar_00617DE4} := TFormProgression.Create(Nil);
      FormProgression.ProgressBar1.Min := a;
      FormProgression.ProgressBar1.Max := b + 1;
      FormProgression.ProgressBar1.Step := 1;
      FormProgression.ProgressBar1.Position := a - 1;
      if (e = false) then
      begin//3
        //0051CB94
          for J := a to b - 1 do//0051CBA1
          begin//5
            //0051CBA2
            case d of
              0:
              begin//7
                //0051CBB8
                sub_0051D450(a);
                if (I * a <> b * c) then 
					Printer.NewPage;
              end;//7
              1:
              begin//7
                //0051CBF3
                if (a mod 2 - 1 = 0) then
                begin//8
                  //0051CC04
                  sub_0051D450(a);
                  if (I * a = b * c) then Continue;
					Printer.NewPage;
                end;//8
              end;//7
              2:
              begin//7
                //0051CC38
                if (a mod 2 = 0) then 
                    sub_0051D450(a);
                
                if (I* a <> b * c) then 
                    Printer.NewPage;
              end;//7
            end;//6
          end;//5
      end//3
      else
      begin//3
        //0051CC89
          for J := b to a - 1 do//0051CC96
          begin//5
            //0051CC97
            case d of
              0:
              begin//7
                //0051CCAD
                sub_0051D450(b);
                if (I * b <> a * c) then 
                   Printer.NewPage;
              end;//7
              1:
              begin//7
                //0051CCE7
                if (b mod 2 - 1 = 0) then
                begin//8
                  //0051CCF8
                  sub_0051D450(b);
                  if (I * b <> a * c) then 
                  Printer.NewPage;
                end;//8
              end;//7
              2:
              begin//7
                //0051CD2B
                if (b mod 2 = 0) then 
					sub_0051D450( b);
					if (I * b <> a * c) then 
						Printer.NewPage;
              end;//7
            end;//6
          end;//5
        end;//4
      end;//3
      FormProgression.Destroy;
    end;//2
end;//0

//0051CD9C
function TImpressionGrilleBilan.GetNbrPageGrilleBilan:dword;
var
NbrCololTotal,NbrCol,I,J,K: integer; 
begin//0
  //0051CD9C
  SetLength(FNbrCellInTab, 1);
  FNbrCellInTab[0] := 1;
  K := (Fwidth - GetMaxTailleColonne( GetImpressionDatesDeNaissanceBilans, GetImpressionRBilans))  Div sub_0051D370;
  if (K = 0) then //0051CE0D
    result := 0
  else
  begin//1
    //0051CE14
    if (GetImpressionColonneClassement ) then //0051CE1D
      NbrCololTotal := 2
    else //0051CE26
      NbrCololTotal := 1;
    if (GetimpressionMoyennesEcritOral ) then //0051CE36
      NbrCol := 2
    else //0051CE40
      NbrCol := 0;
    if (not(FIsFinPeriode)) then
    begin//2
      //0051CE53
      if (GetcolonnesBilanDetaillees) then
      begin//3
        //0051CE5C
        NbrCol := NbrCol + FCdn.GetDataTypeNoteList(FIdPeriode).count;
      end;//3
      NbrCololTotal := NbrCololTotal + NbrCol;
    end//2
    else
    begin//2
      //0051CE94
      if (GetcolonnesBilanDetaillees = false) then //0051CE9D
        NbrCololTotal:= NbrCololTotal + FCdn.NbrePeriodes()
      else
      begin//3
        //0051CEB7
        NbrCol:= FCdn.GetDataTypeNoteList(FIdPeriode).count + NbrCol + FCdn.NbrePeriodes();
      end;//3
      NbrCololTotal := NbrCololTotal + NbrCol;
    end;//2
	I := 0;
	J := 0;
    while (J < NbrCololTotal) do
    begin//2
      //0051CF0E
        //0051CF0E
        I := I + 1;
        SetLength(FNbrCellInTab, {1, }I + 1);
        FNbrCellInTab[I] := FNbrCellInTab[I - 1] + K;
        J := J + K;
    end;//2
    FNbrCellInTab[I] := NbrCololTotal + 1;
    if (not(FIsFinPeriode)) then
    begin//2
      //0051CFA4
      if (GetcolonnesBilanDetaillees) then
      begin//3
        //0051CFAD
        FNbrColonnes := FCdn.GetDataTypeNoteList(FIdPeriode).count + 2;//EAX
      end//3
      else
      begin//3
        //0051CFD8
        FNbrColonnes := 2;
      end;//3
      FNbrColonnes := FNbrColonnes + NbrCol;
    end//2
    else
    begin//2
      //0051CFEF
      if (GetcolonnesBilanDetaillees = false) then
      begin//3
        //0051CFF8
        FNbrColonnes :=  FCdn.NbrePeriodes() + 2;
      end//3
      else
      begin//3
        //0051D013
        FNbrColonnes := FCdn.GetDataTypeNoteList(FIdPeriode).count + FCdn.NbrePeriodes() + 2;
      end;//3
      FNbrColonnes := FNbrColonnes + NbrCol;
    end;//2
    if (GetImpressionColonneClassement = false) then
    begin//2
      //0051D06A
      FNbrColonnes := FNbrColonnes - 1;
    end;//2
    result := I;
  end;//1
end;//0

//0051D080
function TImpressionGrilleBilan.sub_0051D080:dword;
var
 I,K:integer;
 buf:string; 
 Strlist : TStringlist;
begin//0
  //0051D080
    //0051D0B4
    K := 0;
    if (GetmoyenneParTypeDeNotes) then
    begin//2
      //0051D0C8
      Strlist := FCdn.GetDataTypeNoteList(FIdPeriode);
        for I := 1 to Strlist.count do//0051D0F8
        begin//4
          //0051D0FF
          buf := Strlist[I - 1];
          if (FCanvas.TextWidth(buf) > K) then 
			K := FCanvas.TextWidth(buf);
        end;//4
    end//2
    else
    begin//2
      //0051D136
        for I := 0 to FCdn.NbrePeriodes() - 1 do//0051D150
        begin//4
          //0051D153
          if (FCdn.NbrSerieNotes(I + 1) > 0) then
          begin		  
				buf := FCdn.GetTypePeriode;
			  if (FCanvas.TextWidth(buf) > K) then 
				K := FCanvas.TextWidth(buf);
		  end;
        end;//4
    end;//2
    if (GetImpressionColonneClassement ) then
    begin//2
      //0051D1C3
      if (GettrierMoyennesImpression = 0) then //0051D1CC
        buf := ' Classement ascendant '
      else //0051D1DB
        buf := ' Classement descendant ';
      if (K < FCanvas.TextWidth(buf)) then
      begin//3
        //0051D1FA
        K := FCanvas.TextWidth(buf);
      end;//3
    end;//2
    buf := ' Moyennes bulletin sur ' + IntToStr(GetMoyennesSur);
    if (K < FCanvas.TextWidth(buf)) then
    begin//2
      //0051D23F
      K := FCanvas.TextWidth(buf);
    end;//2
    if (FIsFinPeriode) then
    begin//2
      //0051D258
      buf := ' Moyennes annuelles sur ' + IntToStr(GetMoyennesSur);
      if (K < FCanvas.TextWidth(buf)) then
      begin//3
        //0051D28D
        K := FCanvas.TextWidth(buf);
      end;//3
    end;//2
    result := K + 4;//EBX
    //0051D2B6
end;//0

//0051D370
function TImpressionGrilleBilan.sub_0051D370:dword;
var
  S,Max,I:integer;
  lvar_C : TStringlist;
begin//0
  //0051D370
    //0051D38D
    Max := 0;
    if (GetImpressionColonneClassement) then
    begin//2
      //0051D39E
      lvar_C := FCdn.DataTrier(FIdPeriode, GettrierMoyennesImpression, GetArrondirMoyennes, GetArrondirMoyennesAnnuelles, GettypeMoyennesAnnuelles);
        for I := 1 to lvar_C.count do//0051D3D0
        begin//4
          //0051D3DA
          S:=GetTailleText(FCanvas, lvar_C[I- 1]);
          if (S > Max) then 
				Max := S;
        end;//4
    end;//2
    S:=sub_0051D080;
    if (S > Max) then //0051D41B
      Max := S;
    result := Max + 20;
    //0051D438
end;//0

//0051D450
procedure TImpressionGrilleBilan.sub_0051D450(a:dword);
begin//0
  //0051D450
    //0051D46E
    Application.ProcessMessages;
    if (FormProgression.Visible = False) then//0051D487
      FormProgression.Show;
    FormProgression.Caption := 'Préparation de l''impression en cours ... page ' + IntToStr(FormProgression.ProgressBar1.Position) + '/' + IntToStr(FormProgression.ProgressBar1.Max - 1);
    FormProgression.ProgressBar1.Position := FormProgression.ProgressBar1.Position + 1;
    ImpEnteteBasDePage;
    sub_0051D5B0( a);
    ImpEnteteBasDePage2;
    //0051D54D
end;//0

//0051D5B0
procedure TImpressionGrilleBilan.sub_0051D5B0(a:dword);
var
  lvar_48,lvar_14,lvar_18,lvar_C,lvar_24,lvar_10,lvar_2C,lvar_40,lvar_30,lvar_C4 : integer;
  I,J,K,lvar_34,lvar_38,lvar_3C,lvar_58,lvar_28,lvar_BC,lvar_B8,lvar_B4 :integer;
  lvar_E4,lvar_4C,lvar_1C:integer;
  lvar_54,lvar_50,lvar_7C,lvar_20 : integer;
  buf,text,lvar_64,lvar_200,lvar_68,lvar_6C,lvar_30C:string;
  lvar_70,lvar_74,lvar_78 :TStringlist;
  R : TRect;//lvar_C0
  E:real;
begin//0
    lvar_48 := NbrLigneBasTableau;
    lvar_14 := sub_0051D370;
    lvar_18 := FCanvas.TextHeight('ALEXANDRE') + 4;//EAX
    lvar_C  := FNbrCellInTab[a] - FNbrCellInTab[a - 1];
    lvar_24 := GetMaxTailleColonne(GetImpressionDatesDeNaissanceBilans, GetImpressionRBilans);
    lvar_10 := FCdn.NbreEleves ;
    lvar_2C := sub_00520890(a);
    lvar_40 := GetTopTableau;
    lvar_30 := lvar_18 * lvar_48 + lvar_40 + 20;//EAX
    lvar_34 := TRUNC((Fwidth - lvar_2C) / 2){ sar $1F};
    lvar_38 := TRUNC((FHeight - lvar_30) / 2){ sar $1F};
    lvar_70 := FCdn.GetDataTypeNoteList(FIdPeriode);
    lvar_58 := lvar_70.count;
    lvar_3C := 1;
	
    for lvar_28 := FNbrCellInTab[a - 1] to FNbrCellInTab[a] - 1 do //0051D79E
    begin//3
        //0051D7A5
        text := '';
        R.left := lvar_34 + lvar_24 + (lvar_3C - 1) * lvar_14;
        R.Top := lvar_38;
        R.Right := R.left + lvar_14;
        R.Bottom := R.Top + lvar_18;
        if (not(FIsFinPeriode)) then
        begin//4
          //0051D829
          if (GetcolonnesBilanDetaillees) then//0051D832
              if (lvar_28 < lvar_58) then //0051D85B
                text := lvar_70[lvar_28 - 1];
          if (GetImpressionColonneClassement) then //0051D885
            K := FNbrColonnes - 1
          else //0051D897
            K := FNbrColonnes;
          if (GetimpressionMoyennesEcritOral) then
          begin//5
            //0051D8A6
            if (K - 1 = lvar_28) then
            begin//6
              //0051D8B7
              text := ' Moy. Oral';
            end;//6
            if (K - 2 = lvar_28) then
            begin//6
              //0051D8D5
              text := ' Moy. Ecrit';
            end;//6
          end;//5
          if (K = lvar_28) then
          begin//5
            //0051D8EB
            text := 'Moyennes bulletin sur ' + IntToStr(GetMoyennesSur);
          end;//5
        end//4
        else
        begin//4
          //0051D913
          if (GetImpressionColonneClassement) then//0051D91C
            K := FNbrColonnes - 1//ESI
          else//0051D92E
            K := FNbrColonnes;
          if (GetcolonnesBilanDetaillees) then
          begin//5
            //0051D941
			  lvar_E4 := lvar_58;
              if (lvar_28 < lvar_E4) then//0051D96A
              begin//7
                //0051D973
                text := lvar_70[lvar_28 - 1];
              end;//7
              lvar_E4 := FCdn.NbrePeriodes() + lvar_58;
              //EAX := lvar_58 + 1;//EAX
                if (lvar_28 <lvar_E4) then//0051D9DD
                begin//8
                  //0051D9E6
                  text := FCdn.GetPeriodeNameList[lvar_28 - 1 - lvar_58];
                end;//8
          end//5
          else
          begin//5
            //0051DA0E
            lvar_E4 := FCdn.NbrePeriodes();
            if (lvar_28 <= 255) then
            begin//6
              //0051DA3F
              if (lvar_28 < lvar_E4) then
              begin//7
                //0051DA48
                text := FCdn.GetPeriodeNameList[lvar_28 - 1];
              end;//7
            end;//6
          end;//5
          if (GetimpressionMoyennesEcritOral ) then
          begin//5
            //0051DA6D
            if (K - 1 = lvar_28) then
            begin//6
              //0051DA7E
              text := 'Moy. Oral';
            end;//6
            if (K - 2 = lvar_28) then
            begin//6
              //0051DA9C
              text := 'Moy. Ecrit';
            end;//6
          end;//5
          if (K = lvar_28) then
          begin//5
            //0051DAAE
            text := 'Moyennes annuelles sur ' + IntToStr(GetMoyennesSur);
          end;//5
        end;//4
        if (GetImpressionColonneClassement) then
        begin//4
          //0051DADA
          if (FNbrColonnes = lvar_28) then
          begin//5
            //0051DAE5
            if (GettrierMoyennesImpression = 0) then//0051DAEE
              text := ' Classement ascendant '
            else//0051DAFD
              text := ' Classement descendant ';
          end;//5
        end;//4
        if (GetImpressionColonneClassement) then
        begin//4
          //0051DB13
          if (FNbrColonnes <> lvar_28) then
          begin//5
            //0051DB1E
            DrawTextA(FCanvas.Handle, PChar(text), Length(text), R, 5);
          end//5
          else//0051DB4C
            DrawTextA(FCanvas.Handle, PChar(text), Length(text), R, 4);
        end//4
        else//0051DB7A
          DrawTextA(FCanvas.Handle, PChar(text), Length(text), R, 5);
        lvar_3C := lvar_3C + 1;
      end;//3
	// fin boucle  !
    lvar_74 := FCdn.DataTrier(FIdPeriode, GettrierMoyennesImpression, GetArrondirMoyennes, GetArrondirMoyennesAnnuelles, GettypeMoyennesAnnuelles);
    lvar_54 := FCdn.NbreEleves;
    if (FImprNbrEleve) then //0051DC0C
      lvar_50 := FCanvas.TextWidth(' ' + IntToStr(lvar_54) + ' ')
    else //0051DC50
      lvar_50 := 0;
      
      for lvar_20 := 1 to lvar_54 do//0051DC60
      begin//3
        //0051DC6A
        if (FImprNbrEleve) then
        begin//4
          //0051DC77
          if (lvar_20 - 1 - 9 < 0) then
          begin//5
            //0051DC80
            lvar_64 := '  ' + IntToStr(lvar_20) + ' ';
          end//5
          else
          begin//5
            //0051DCAD
            lvar_64 := ' ' + IntToStr(lvar_20) + ' ';
          end;//5
          R.Left := lvar_34;
          R.Top := lvar_18 * lvar_20 + lvar_38;//EAX
          R.Right := R.Left + lvar_50;//EAX
          R.Bottom := R.Top + lvar_18;//EAX
          text := lvar_64;
           DrawTextA(FCanvas.Handle, PChar(text), Length(text), R, 4);
          R.Left := lvar_34 + lvar_50;//EAX
          R.Top := lvar_18 * lvar_20 + lvar_38;//EAX
          R.Right := R.Left + lvar_24 + lvar_50;//EAX
          R.Bottom := R.Top + lvar_18;//EAX
          if ((FCdn.IsRedoublant(lvar_20)) and GetImpressionRBilans) then //0051DDE6
          begin//5
              //0051DDEF
              lvar_200 := FCdn.GetEleveName(lvar_20);
              lvar_6C := lvar_200 + ' (R)';
          end//5
          else
          begin//5
            //0051DE36
            lvar_6C:= FCdn.GetEleveName(lvar_20);
          end;//5
          if (GetImpressionDatesDeNaissanceBilans) then
          begin//5
            //0051DE72
             lvar_200:=FCdn.GetDateNais(lvar_20);
            if (Trim(lvar_200) <> '') then
            begin//6
              //0051DEB8
              text := ' ' + lvar_6C + ' (' + lvar_200 + ')';
            end//6
            else
            begin//6
              //0051DEDC
              text := ' ' + lvar_6C + ' ';
            end;//6
          end//5
          else
          begin//5
            //0051DEF8
            text := ' ' + lvar_6C + ' ';
          end;//5
           DrawTextA(FCanvas.Handle, PChar(text), Length(text), R, 4);
        end//4
        else
        begin//4
          //0051DF43
          R.Left := lvar_34;//lvar_34
          R.Top := lvar_18 * lvar_20 + lvar_38;//EAX
          R.Right := R.Left + lvar_24;//EAX
          R.Bottom := R.Top + lvar_18;//EAX
          if ((FCdn.IsRedoublant(lvar_20)) and GetImpressionRBilans) then//0051DFB4
          begin//5
              //0051DFBD
              lvar_6C := FCdn.GetEleveName(lvar_20) + ' (R)';
          end//5
          else
          begin//5
            //0051E004
            lvar_6C := FCdn.GetEleveName(lvar_20);
          end;//5
          if (GetImpressionDatesDeNaissanceBilans) then
          begin//5
            //0051E040
            lvar_200:=FCdn.GetDateNais(lvar_20);
            if (Trim(lvar_200) <> '') then
            begin//6
              //0051E086
              text := ' ' + lvar_6C + ' (' + lvar_200 + ')';
            end//6
            else
            begin//6
              //0051E0AA
              text := ' ' + lvar_6C + ' ';
            end;//6
          end//5
          else
          begin//5
            //0051E0C6
            text := ' ' + lvar_6C + ' ';
          end;//5
           DrawTextA(FCanvas.Handle, PChar(text), Length(text), R, 4);
        end;//4
        lvar_3C := 1;
          for lvar_28 := FNbrCellInTab[a - 1] to FNbrCellInTab[a] - 1 do//0051E15B
          begin//5
            //0051E165
            text := '';
            R.Left :=  lvar_34 + lvar_24 + (lvar_3C - 1) * lvar_14;//EAX
            R.Top := lvar_18 * lvar_20 + lvar_38;//EAX
            R.Right := R.Left + lvar_14;//EAX
            R.Bottom := R.Top + lvar_18;//EAX
            if (FIsFinPeriode = false) then
            begin//6
              //0051E1FD
              if (GetcolonnesBilanDetaillees ) then
              begin//7
                //0051E20A
                lvar_E4 := lvar_58;
                if (lvar_28 <= 255) then
                begin//8
                  //0051E233
                  if (lvar_28 < lvar_E4) then
                  begin//9
                    //0051E240
                    FCdn.CalcMoyBrute_V06(lvar_70[lvar_28 - 1], FIdPeriode,lvar_20, lvar_200);
                    FCdn.Arrondir__(lvar_200, GetArrondirMoyennes, text);
                  end;//9
                end;//8
              end;//7
              if (GetimpressionMoyennesEcritOral ) then
              begin//7
                //0051E2E0
                if (GetImpressionColonneClassement) then
                begin//8
                  //0051E2E9
                  K := FNbrColonnes - 1;//ESI
                end//8
                else
                begin//8
                  //0051E2FB
                  K := FNbrColonnes;
                end;//8
                if (K - 1 = lvar_28) then
                begin//8
                  //0051E312
                  FCdn.CalcMoyAndArrondir(FIdPeriode, lvar_20, GetArrondirMoyennes, text);
                end;//8
                K := K - 2;//ESI
                if (K = lvar_28) then
                begin//8
                  //0051E366
                  FCdn.CalcMoyBrute___Vx01(FIdPeriode, lvar_20, GetArrondirMoyennes, text);
                end;//8
              end;//7
              if (GetImpressionColonneClassement ) then
              begin//7
                //0051E3B8
                if (FNbrColonnes - 1 = lvar_28) then
                begin//8
                  //0051E3CD
                   text := FCdn.GetMoyennePeriode(FIdPeriode,lvar_20, GetArrondirMoyennes);
                end;//8
                if (FNbrColonnes = lvar_28) then
                begin//8
                  //0051E421
                  if (lvar_74.count > lvar_20) then
                  begin//9
                    //0051E42E
                    text := ' ' + lvar_74[lvar_20] + ' ';
                  end//9
                  else
                  begin//9
                    //0051E461
                    text := '';
                  end;//9
                end;//8
              end//7
              else
              begin//7
                //0051E46E
                if (FNbrColonnes = lvar_28) then
                begin//8
                  //0051E47D
                  text := FCdn.GetMoyennePeriode(FIdPeriode, lvar_20, GetArrondirMoyennes);
                end;//8
              end;//7
            end//6
            else
            begin//6
              //0051E4C7
              if (GetcolonnesBilanDetaillees) then
              begin//7
                //0051E4D4
                lvar_E4 := lvar_58;
                if (lvar_28 <= 255) then
                begin//8
                  //0051E4FD
                  if (lvar_28 < lvar_E4) then
                  begin//9
                    //0051E50A
                    FCdn.CalcMoyBrute_V06__h(lvar_70[lvar_28 - 1], lvar_20,lvar_200);
                    FCdn.Arrondir__(lvar_200, GetArrondirMoyennesAnnuelles, text);
                  end;//9
                  lvar_E4 := FCdn.NbrePeriodes() + lvar_58;
                  if (lvar_28 <= 255) then
                  begin//9
                    //0051E5DC
                    if (lvar_28 < lvar_E4) then
                    begin//10
                      //0051E5E5
                      text := FCdn.GetMoyennePeriode(lvar_28 - lvar_58, lvar_20, GetArrondirMoyennes);
                    end;//10
                    if (GetimpressionMoyennesEcritOral) then
                    begin//10
                      //0051E63E
                      if (lvar_C - 3 = lvar_28) then
                      begin//11
                        //0051E650
                        //push EAX
                        FCdn.CalcMoyBrute___Vx03(lvar_20, GetArrondirMoyennesAnnuelles, text);
                      end;//11
                      if (lvar_C - 4 = lvar_28) then
                      begin//11
                        //0051E699
                        FCdn.CalcMoyBrute___Vx04(lvar_20, GetArrondirMoyennesAnnuelles, text);
                      end;//11
                    end;//10
                  end;//9
                end;//8
              end//7
              else
              begin//7
                //0051E6CE
                lvar_E4 := FCdn.NbrePeriodes();
                if (lvar_28 <= 255) then
                begin//8
                  //0051E6FF
                  if (lvar_28 < lvar_E4) then
                  begin//9
                    //0051E708
                    text := FCdn.GetMoyennePeriode(lvar_28, lvar_20, GetArrondirMoyennes);
                  end;//9
                end;//8
              end;//7
              if (GetImpressionColonneClassement) then
              begin//7
                //0051E757
                if (FNbrColonnes - 1 = lvar_28) then
                begin//8
                  //0051E76C
                  FCdn.CalcMoyBrute_V07(lvar_20,GetArrondirMoyennes, GetArrondirMoyennesAnnuelles, GettypeMoyennesAnnuelles, text);
                end;//8
                if (FNbrColonnes = lvar_28) then
                begin//8
                  //0051E7BA
                  if (lvar_74.count > lvar_20) then
                  begin//9
                    //0051E7C7
                    text :=  ' ' + lvar_74[lvar_20] + ' ';
                  end//9
                  else
                  begin//9
                    //0051E7F7
                    text := '';
                  end;//9
                end;//8
              end//7
              else
              begin//7
                //0051E801
                if (FNbrColonnes = lvar_28) then
                begin//8
                  //0051E80C
                  FCdn.CalcMoyBrute_V07(lvar_20,GetArrondirMoyennes, GetArrondirMoyennesAnnuelles, GettypeMoyennesAnnuelles, text);
                end;//8
              end;//7
              if (GetimpressionMoyennesEcritOral ) then
              begin//7
                //0051E858
                K := FNbrColonnes - 1;//ESI
                if (GetImpressionColonneClassement = false) then
                begin//8
                  //0051E871
                  K := K + 1;//ESI
                end;//8
                if (K - 1 = lvar_28) then
                begin//8
                  //0051E88C
                  FCdn.CalcMoyBrute___Vx03(lvar_20, GetArrondirMoyennesAnnuelles, text);
                end;//8
                K := K - 2;//ESI
                if (K = lvar_28) then
                begin//8
                  //0051E8CE
                  FCdn.CalcMoyBrute___Vx04(lvar_20, GetArrondirMoyennesAnnuelles, text);
                end;//8
              end;//7
            end;//6
            if (GetImpressionColonneClassement) then
            begin//6
              //0051E90E
              if (FNbrColonnes <> lvar_28) then
              begin//7
                //0051E91D
                if (GetimpressionCouleurNote_) then
                begin//8
                  //0051E92A
                  try
                    //0051E938
                    E := GetMoyennesSur;//moyennesSur
                    if (Strtofloat(text) >  GetMoyennesSur/ 2) then
                    begin//10
                      //0051E960
                      FCanvas.font.Color := GetColor1Note;
                    end//10
                    else
                    begin//10
                      //0051E977
                      if (Strtofloat(text) <= 3 / 4 * E) then
                      begin//11
                        //0051E9A2
                        FCanvas.Font.Color := GetColor3Note;
                      end//11
                      else
                      begin//11
                        //0051E9B9
                        FCanvas.Font.Color := BlackColor;
                      end;//11
                    end;//10
                  except//9
                    //0051E9DD
                  end;//9
                end;//8
                 DrawTextA(FCanvas.Handle, PChar(text), Length(text), R, 5);
              end//7
              else
              begin//7
                //0051EA13
                if (GetimpressionCouleurNote_) then
                begin//8
                  //0051EA20
                  try
                    //0051EA2E
                    lvar_68 := Copy(text, Pos('-> ', text) + 2, Length(text));
                    E := GetMoyennesSur;
					
                    if ( StrToFloat(lvar_68) > E / 2 ) then
                    begin//10
                      //0051EA85
                      FCanvas.Font.Color := GetColor1Note;
                    end//10
                    else
                    begin//10
                      //0051EA9C
                      if ( StrToFloat(lvar_68)<=  3 * E / 4) then
                      begin//11
                        //0051EAC7
                        FCanvas.Font.Color := GetColor3Note;
                      end//11
                      else
                      begin//11
                        //0051EADE
                        FCanvas.Font.Color := BlackColor;
                      end;//11
                    end;//10
                  except//9
                    //0051EB02
                  end;//9
                end;//8
                 DrawTextA(FCanvas.Handle, PChar(text), Length(text), R, 4);
              end;//7
            end//6
            else
            begin//6
              //0051EB38
              if (GetimpressionCouleurNote_) then
              begin//7
                //0051EB45
                try
                  //0051EB53
                  E := GetMoyennesSur;
                  if ( STrtoFloat(text)> E / 2) then
                  begin//9
                    //0051EB7B
                    FCanvas.Font.Color:= GetColor1Note;
                  end//9
                  else
                  begin//9
                    //0051EB92
                    if (StrToFloat(text) <= 3 * E / 4) then
                    begin//10
                      //0051EBBD
                      FCanvas.Font.Color := GetColor3Note;
                    end//10
                    else
                    begin//10
                      //0051EBD4
                      FCanvas.Font.Color := BlackColor;
                    end;//10
                  end;//9
                except//8
                  //0051EBF8
                end;//8
              end;//7
               DrawTextA(FCanvas.Handle, PChar(text), Length(text), R, 5);
            end;//6
            FCanvas.Font.Color := 0;
            lvar_3C := lvar_3C + 1;
          end;//5
      end;//3
	lvar_4C := 0;
    if (lvar_48 > 0) then
    begin//2
      //0051EC6E
        for lvar_1C := 0 to FInclureImpression.f8.count - 1 do//0051EC8E
        begin//4
          //0051EC99
          if (FInclureImpression.FC[lvar_1C]) then 
		  begin
			R.Left :=lvar_34;//lvar_34
			R.Top := lvar_18 * (FCdn.NbreEleves + lvar_4C + 1) + lvar_38 + 20;//EAX
			R.Right := R.Left + lvar_24;//EAX
			R.Bottom := R.Top + lvar_18;//EAX
			text := ' ' + FInclureImpression.F8[lvar_1C] + ' ';
			DrawTextA(FCanvas.Handle, PChar(text), Length(text), R, 4);
			lvar_3C := 1;
			if (FNbrCellInTab[a] - 1 - FNbrCellInTab[a - 1] >= FNbrCellInTab[a - 1]) then
			begin//5
				//0051EDE5
				//lvar_84 := EDX;
				lvar_28 := FNbrCellInTab[a - 1];
				for lvar_28 :=  FNbrCellInTab[a - 1]to FNbrCellInTab[a] - 1    do
				begin//6
					//0051EDEF
					R.Left := lvar_34 + lvar_24 + (lvar_3C - 1) * lvar_14;//EAX
					R.Top := lvar_18 * (FCdn.NbreEleves + lvar_4C + 1) + lvar_38 + 20;//EAX
					R.Right := R.Left + lvar_14;//EAX
					R.Bottom := R.Top + lvar_18;//EAX
					if (FIsFinPeriode = false) then
					begin//7
						//0051EEA4
						if (GetcolonnesBilanDetaillees) then
						begin//8
							//0051EEB1
							lvar_E4 := lvar_58;
							if (lvar_28 <= 255) then
							begin//9
								//0051EEDA
								if (lvar_28 < lvar_E4) then
								begin//10
									//0051EEE7
									lvar_78 := TStringList.Create;
									//lvar_88 := FCdn;
									//EBX := FCdn.NbreEleves;
									if (FCdn.NbreEleves > 0) then
									begin//11
										//0051EF19
										for lvar_20 := 1 to FCdn.NbreEleves do
										begin//12
											//0051EF20
											FCdn.CalcMoyBrute_V06(lvar_70[lvar_28 - 1], FIdPeriode,lvar_20,lvar_200 );
											lvar_78.Add(lvar_200);
										end;//12
									end;//11
									case lvar_1C of
									0:
									begin//12
										//0051EFE0
										text := GetPeriodeMin(lvar_78);
									end;//12
									1:
									begin//12
									  //0051F001
									  text := GetPeriodeMax(lvar_78);
									end;//12
									2:
									begin//12
									  //0051F01F
									  text := GetPeriodeMoy(lvar_78);
									end;//12
									3:
									begin//12
									  //0051F03D
									  text := GetPeriodeSomme(lvar_78);
									end;//12
									4:
									begin//12
									  //0051F05B
									  text := GetPeriodeMoySur(lvar_78);
									end;//12
									5:
									begin//12
									  //0051F079
									  text := GetPeriodeMoyFloat(lvar_78);
									end;//12
								end;//11
									lvar_78.Destroy;
								end;//10
							end;//9
						end;//8
						if (GetimpressionMoyennesEcritOral ) then
						begin//8
						  //0051F0AC
						  if (GetImpressionColonneClassement) then
						  begin//9
							//0051F0B5
							K := FNbrColonnes - 1;//ESI
						  end//9
						  else
						  begin//9
							//0051F0C7
							K := FNbrColonnes;
						  end;//9
						  if (K - 1 = lvar_28) then
						  begin//9
							//0051F0E2
							lvar_78 := TStringList.Create;
							//lvar_8C := FCdn;
							if (FCdn.NbreEleves > 0) then
							begin//10
							  //0051F110
							  for lvar_20 := 1 to FCdn.NbreEleves do
							  begin//11
								//0051F117
								FCdn.CalcMoyAndArrondir(FIdPeriode, lvar_20, GetArrondirMoyennes, lvar_200);
								lvar_78.Add(lvar_200);
							  end;//11
							end;//10
							case lvar_1C of
							  0:
							  begin//11
								//0051F1A2
								text := GetPeriodeMin(lvar_78);
							  end;//11
							  1:
							  begin//11
								//0051F1C3
								text := GetPeriodeMax(lvar_78);
							  end;//11
							  2:
							  begin//11
								//0051F1E1
								text := GetPeriodeMoy(lvar_78);
							  end;//11
							  3:
							  begin//11
								//0051F1FF
								text := GetPeriodeSomme(lvar_78);
							  end;//11
							  4:
							  begin//11
								//0051F21D
								text := GetPeriodeMoySur(lvar_78);
							  end;//11
							  5:
							  begin//11
								//0051F23B
								text := GetPeriodeMoyFloat(lvar_78);
							  end;//11
							end;//10
							lvar_78.Destroy;
						  end;//9
						  K := K - 2;//ESI
						  if (K = lvar_28) then
						  begin//9
							//0051F274
							lvar_78 := TStringList.Create;
							//lvar_90 := FCdn;
							if (FCdn.NbreEleves > 0) then
							begin//10
							  //0051F2A2
							  for lvar_20 := 1 to FCdn.NbreEleves do
							  begin//11
								//0051F2A9
								FCdn.CalcMoyBrute___Vx01(FIdPeriode, lvar_20, GetArrondirMoyennes, lvar_200);
								lvar_78.Add(lvar_200);
							  end;//11
							end;//10
							case lvar_1C of
							  0:
							  begin//11
								//0051F334
								text := GetPeriodeMin(lvar_78);
							  end;//11
							  1:
							  begin//11
								//0051F355
								text := GetPeriodeMax(lvar_78);
							  end;//11
							  2:
							  begin//11
								//0051F373
								text := GetPeriodeMoy(lvar_78);
							  end;//11
							  3:
							  begin//11
								//0051F391
								text := GetPeriodeSomme(lvar_78);
							  end;//11
							  4:
							  begin//11
								//0051F3AF
								text := GetPeriodeMoySur(lvar_78);
							  end;//11
							  5:
							  begin//11
								//0051F3CD
								text := GetPeriodeMoyFloat(lvar_78);
							  end;//11
							end;//10
							lvar_78.Destroy;
						  end;//9
						end;//8
						if (GetImpressionColonneClassement ) then
						begin//8
						  //0051F400
						  if (FNbrColonnes - 1 = lvar_28) then
						  begin//9
							//0051F419
							lvar_78 := TStringList.Create;
							//lvar_94 := FCdn;
							if (FCdn.NbreEleves > 0) then
							begin//10
							  //0051F447
							  for lvar_20 := 1 to FCdn.NbreEleves do
							  begin//11
								//0051F44E
								lvar_200 := FCdn.GetMoyennePeriode(FIdPeriode, lvar_20, GetArrondirMoyennes);
								lvar_78.Add(lvar_200);
							  end;//11
							end;//10
							case lvar_1C of
							  0:
							  begin//11
								//0051F4D9
								text := GetPeriodeMin(lvar_78);
							  end;//11
							  1:
							  begin//11
								//0051F4FA
								text := GetPeriodeMax(lvar_78);
							  end;//11
							  2:
							  begin//11
								//0051F518
								text := GetPeriodeMoy(lvar_78);
							  end;//11
							  3:
							  begin//11
								//0051F536
								text := GetPeriodeSomme(lvar_78);
							  end;//11
							  4:
							  begin//11
								//0051F554
								text := GetPeriodeMoySur(lvar_78);
							  end;//11
							  5:
							  begin//11
								//0051F572
								text := GetPeriodeMoyFloat(lvar_78);
							  end;//11
							end;//10
							lvar_78.Destroy;
						  end;//9
						  if (FNbrColonnes = lvar_28) then
						  begin//9
							//0051F5A7
							text := '';
						  end;//9
						end//8
						else
						begin//8
						  //0051F5B4
						  if (FNbrColonnes = lvar_28) then
						  begin//9
							//0051F5C3
							lvar_78 := TStringList.Create;
							//lvar_98 := FCdn;
							if (FCdn.NbreEleves > 0) then
							begin//10
							  //0051F5F1
							  for lvar_20 := 1 to FCdn.NbreEleves do
							  begin//11
								//0051F5F8
								lvar_200 := FCdn.GetMoyennePeriode(FIdPeriode, lvar_20, GetArrondirMoyennes);
								lvar_78.Add(lvar_200);
							  end;//11
							end;//10
							case lvar_1C of
							  0:
							  begin//11
								//0051F683
								text := GetPeriodeMin(lvar_78);
							  end;//11
							  1:
							  begin//11
								//0051F6A4
								text := GetPeriodeMax(lvar_78);
							  end;//11
							  2:
							  begin//11
								//0051F6C2
								text := GetPeriodeMoy(lvar_78);
							  end;//11
							  3:
							  begin//11
								//0051F6E0
								text := GetPeriodeSomme(lvar_78);
							  end;//11
							  4:
							  begin//11
								//0051F6FE
								text := GetPeriodeMoySur(lvar_78);
							  end;//11
							  5:
							  begin//11
								//0051F71C
								text := GetPeriodeMoyFloat(lvar_78);
							  end;//11
							end;//10
							lvar_78.Destroy;
						  end;//9
						end;//8
					end//7
              else
              begin//7
                //0051F747
                text := '';
                if (GetcolonnesBilanDetaillees ) then
                begin//8
                  //0051F758
                  K := lvar_58;
                end//8
                else
                begin//8
                  //0051F75D
                  K := 0;
                end;//8
                lvar_78 := TStringList.Create;
                //lvar_9C := FCdn;
                lvar_E4 := K;
                if (lvar_28 <= 255) then
                begin//8
                  //0051F7A2
                  if (lvar_28 < lvar_E4) then
                  begin//9
                    //0051F7AF
                    if (FCdn.NbreEleves > 0) then
                    begin//10
                      //0051F7C6
                      for lvar_20 := 1 to FCdn.NbreEleves do
                      begin//11
                        //0051F7CD
                        FCdn.CalcMoyBrute_V06__h(lvar_70[lvar_28 - 1], lvar_20,lvar_200);
                        FCdn.Arrondir__(lvar_200, GetArrondirMoyennesAnnuelles, lvar_200);
                        lvar_78.Add(lvar_200);
                      end;//11
                    end;//10
                    case lvar_1C of
                      0:
                      begin//11
                        //0051F89B
                        text := GetPeriodeMin(lvar_78);
                      end;//11
                      1:
                      begin//11
                        //0051F8BC
                        text := GetPeriodeMax(lvar_78);
                      end;//11
                      2:
                      begin//11
                        //0051F8DA
                        text := GetPeriodeMoy(lvar_78);
                      end;//11
                      3:
                      begin//11
                        //0051F8F8
                        text := GetPeriodeSomme(lvar_78);
                      end;//11
                      4:
                      begin//11
                        //0051F916
                        text := GetPeriodeMoySur(lvar_78);
                      end;//11
                      5:
                      begin//11
                        //0051F934
                        text := GetPeriodeMoyFloat(lvar_78);
                      end;//11
                    end;//10
                  end;//9
                  lvar_78.Destroy;
                  lvar_78 := TStringList.Create;
                  lvar_E4 := FCdn.NbrePeriodes() + K;
                  //EAX := K+1;
                  if (lvar_28 <= 255) then
                  begin//9
                    //0051F9C9
                    if (lvar_28 < lvar_E4) then
                    begin//10
                      //0051F9D6
                      if (FCdn.NbreEleves > 0) then
                      begin//11
                        //0051F9E9
                        for lvar_20 := 1 to FCdn.NbreEleves do
                        begin//12
                          //0051F9F0
                          lvar_200 := FCdn.GetMoyennePeriode(lvar_28 - K, lvar_20, GetArrondirMoyennes);
                          lvar_78.Add(lvar_200);
                        end;//12
                      end;//11
                      case lvar_1C of
                        0:
                        begin//12
                          //0051FA81
                          text := GetPeriodeMin(lvar_78);
                        end;//12
                        1:
                        begin//12
                          //0051FAA2
                          text := GetPeriodeMax(lvar_78);
                        end;//12
                        2:
                        begin//12
                          //0051FAC0
                          text := GetPeriodeMoy(lvar_78);
                        end;//12
                        3:
                        begin//12
                          //0051FADE
                          text := GetPeriodeSomme(lvar_78);
                        end;//12
                        4:
                        begin//12
                          //0051FAFC
                          text := GetPeriodeMoySur(lvar_78);
                        end;//12
                        5:
                        begin//12
                          //0051FB1A
                          text := GetPeriodeMoyFloat(lvar_78);
                        end;//12
                      end;//11
                    end;//10
                    lvar_78.Destroy;
                    if (GetimpressionMoyennesEcritOral ) then
                    begin//10
                      //0051FB4D
                      if (GetImpressionColonneClassement) then
                      begin//11
                        //0051FB56
                        K := FNbrColonnes - 1;//ESI
                      end//11
                      else
                      begin//11
                        //0051FB68
                        K := FNbrColonnes;
                      end;//11
                      if (K - 1 = lvar_28) then
                      begin//11
                        //0051FB83
                        lvar_78 := TStringList.Create;
                        //lvar_A4 := FCdn;
                        if (FCdn.NbreEleves > 0) then
                        begin//12
                          //0051FBB1
                          for lvar_20 := 1 to FCdn.NbreEleves do
                          begin//13
                            //0051FBB8
                            FCdn.CalcMoyBrute___Vx03(lvar_20, GetArrondirMoyennesAnnuelles, lvar_200);
                            lvar_78.Add(lvar_200);
                          end;//13
                        end;//12
                        case lvar_1C of
                          0:
                          begin//13
                            //0051FC31
                            text := GetPeriodeMin(lvar_78);
                          end;//13
                          1:
                          begin//13
                            //0051FC52
                            text := GetPeriodeMax(lvar_78);
                          end;//13
                          2:
                          begin//13
                            //0051FC70
                            text := GetPeriodeMoy(lvar_78);
                          end;//13
                          3:
                          begin//13
                            //0051FC8E
                            text := GetPeriodeSomme(lvar_78);
                          end;//13
                          4:
                          begin//13
                            //0051FCAC
                            text := GetPeriodeMoySur(lvar_78);
                          end;//13
                          5:
                          begin//13
                            //0051FCCA
                            text := GetPeriodeMoyFloat(lvar_78);
                          end;//13
                        end;//12
                        lvar_78.Destroy;
                      end;//11
                      K := K - 2;//ESI
                      if (K = lvar_28) then
                      begin//11
                        //0051FD03
                        lvar_78 := TStringList.Create;
                        //lvar_A8 := FCdn;
                        if (FCdn.NbreEleves > 0) then
                        begin//12
                          //0051FD31
                          for lvar_20 := 1 to FCdn.NbreEleves do
                          begin//13
                            //0051FD38
                            FCdn.CalcMoyBrute___Vx04(lvar_20, GetArrondirMoyennesAnnuelles, lvar_200);
                            lvar_78.Add(lvar_200);
                          end;//13
                        end;//12
                        case lvar_1C of
                          0:
                          begin//13
                            //0051FDB1
                            text := GetPeriodeMin(lvar_78);
                          end;//13
                          1:
                          begin//13
                            //0051FDD2
                            text := GetPeriodeMax(lvar_78);
                          end;//13
                          2:
                          begin//13
                            //0051FDF0
                            text := GetPeriodeMoy(lvar_78);
                          end;//13
                          3:
                          begin//13
                            //0051FE0E
                            text := GetPeriodeSomme(lvar_78);
                          end;//13
                          4:
                          begin//13
                            //0051FE2C
                            text := GetPeriodeMoySur(lvar_78);
                          end;//13
                          5:
                          begin//13
                            //0051FE4A
                            text := GetPeriodeMoyFloat(lvar_78);
                          end;//13
                        end;//12
                        lvar_78.Destroy;
                      end;//11
                    end;//10
                    if (GetImpressionColonneClassement) then
                    begin//10
                      //0051FE7D
                      if (FNbrColonnes - 1 = lvar_28) then
                      begin//11
                        //0051FE96
                        lvar_78 := TStringList.Create;
                        //lvar_AC := FCdn;
                        if (FCdn.NbreEleves > 0) then
                        begin//12
                          //0051FEC4
                          for lvar_20 := 1 to FCdn.NbreEleves do
                          begin//13
                            //0051FECB
                            FCdn.CalcMoyBrute_V07( lvar_20, GetArrondirMoyennes, GetArrondirMoyennesAnnuelles, GettypeMoyennesAnnuelles, lvar_200);
                            lvar_78.Add(lvar_200);
                          end;//13
                        end;//12
                        case lvar_1C of
                          0:
                          begin//13
                            //0051FF50
                            text := GetPeriodeMin(lvar_78);
                          end;//13
                          1:
                          begin//13
                            //0051FF71
                            text := GetPeriodeMax(lvar_78);
                          end;//13
                          2:
                          begin//13
                            //0051FF8F
                            text := GetPeriodeMoy(lvar_78);
                          end;//13
                          3:
                          begin//13
                            //0051FFAD
                            text := GetPeriodeSomme(lvar_78);
                          end;//13
                          4:
                          begin//13
                            //0051FFCB
                            text := GetPeriodeMoySur(lvar_78);
                          end;//13
                          5:
                          begin//13
                            //0051FFE9
                            text := GetPeriodeMoyFloat(lvar_78);
                          end;//13
                        end;//12
                        lvar_78.Destroy;
                      end;//11
                      if (FNbrColonnes = lvar_28) then
                      begin//11
                        //0052001E
                        text := '';
                      end;//11
                    end//10
                    else
                    begin//10
                      //0052002B
                      if (FNbrColonnes = lvar_28) then
                      begin//11
                        //0052003A
                        lvar_78 := TStringList.Create;
                        if (FCdn.NbreEleves > 0) then
                        begin//12
                          //00520068
                          for lvar_20 := 1 to FCdn.NbreEleves do
                          begin//13
                            //0052006F
                            FCdn.CalcMoyBrute_V07( lvar_20, GetArrondirMoyennes, GetArrondirMoyennesAnnuelles, GettypeMoyennesAnnuelles, lvar_200);
                            lvar_78.Add(lvar_200);
                          end;//13
                        end;//12
                        case lvar_1C of
                          0:
                          begin//13
                            //005200F4
                            text := GetPeriodeMin(lvar_78);
                          end;//13
                          1:
                          begin//13
                            //00520115
                            text := GetPeriodeMax(lvar_78);
                          end;//13
                          2:
                          begin//13
                            //00520133
                            text := GetPeriodeMoy(lvar_78);
                          end;//13
                          3:
                          begin//13
                            //00520151
                            text := GetPeriodeSomme(lvar_78);
                          end;//13
                          4:
                          begin//13
                            //0052016F
                            text := GetPeriodeMoySur(lvar_78);
                          end;//13
                          5:
                          begin//13
                            //0052018D
                            text := GetPeriodeMoyFloat(lvar_78);
                          end;//13
                        end;//12
                        lvar_78.Destroy;
                      end;//11
                    end;//10
                  end;//9
                end;//8
              end;//7
              if (GetImpressionColonneClassement ) then
              begin//7
                //005201BC
                if (FNbrColonnes <> lvar_28) then //005201C7
                   DrawTextA(FCanvas.Handle, PChar(text), Length(text), R, 5)
                else //005201F5
                   DrawTextA(FCanvas.Handle, PChar(text), Length(text), R, 4);
              end//7
              else//00520223
                 DrawTextA(FCanvas.Handle, PChar(text), Length(text), R, 5);
              lvar_3C := lvar_3C + 1;
            end;//6
          end;//5
			lvar_4C := lvar_4C + 1;
		  end;
        end;//4
    end;//2
	// Fin Boucle !
      for lvar_1C := 0 to lvar_10 + 1 do //00520295
      begin//3
        //005202A0
        if (lvar_1C = 0) then
        begin//4
          //005202A6
          FCanvas.MoveTo(lvar_34 + lvar_24, lvar_38);
          FCanvas.LineTo(lvar_34 + lvar_2C, lvar_38);
        end//4
        else
        begin//4
          //005202DE
          FCanvas.MoveTo(lvar_34, lvar_1C * lvar_18 + lvar_38);
          FCanvas.LineTo(lvar_34 + lvar_2C, lvar_1C * lvar_18 + lvar_38);
        end;//4
      end;//3
      //0052034A
        for lvar_1C := 0 to lvar_48 do //00520355
        begin//4
          //00520360
          FCanvas.MoveTo(lvar_34, (FCdn.NbreEleves + 1 + lvar_1C) * lvar_18 + lvar_38 + 20);
          FCanvas.LineTo(lvar_34 + lvar_2C, (FCdn.NbreEleves + 1 + lvar_1C) * lvar_18 + lvar_38 + 20);
        end;//4
      for lvar_7C := 0 to lvar_C + 1 do//0052042B
      begin//3
        //00520431
        if (lvar_7C = 0) then
        begin//4
          //00520435
          FCanvas.MoveTo(lvar_34, lvar_38 + lvar_18);
          FCanvas.LineTo(lvar_34, lvar_38 + lvar_40);
        end//4
        else
        begin//4
          //00520470
          if (lvar_7C = 1) then
          begin//5
            //00520475
            FCanvas.MoveTo(lvar_34 + lvar_24, lvar_38);
            FCanvas.LineTo(lvar_34 + lvar_24, lvar_38 + lvar_40);
          end//5
          else
          begin//5
            //005204BA
            FCanvas.MoveTo(lvar_34 + lvar_24 + (lvar_7C - 1) * lvar_14, lvar_38);
            FCanvas.LineTo(lvar_34 + lvar_24 + (lvar_7C - 1) * lvar_14, lvar_38 + lvar_40);
          end;//5
        end;//4
      end;//3
    if (lvar_48 > 0) then
    begin//2
      //0052054E
        for lvar_7C := 0 to lvar_C + 1 do//00520563
        begin//4
          //00520569
          if (lvar_7C = 0) then
          begin//5
            //0052056D
            FCanvas.MoveTo(lvar_34, lvar_38 + lvar_40 + 20);
            FCanvas.LineTo(lvar_34, lvar_38 + lvar_30);
          end//5
          else
          begin//5
            //005205B2
            FCanvas.MoveTo(lvar_34 + lvar_24 + (lvar_7C - 1) * lvar_14, lvar_38 + lvar_40 + 20);
            FCanvas.LineTo(lvar_34 + lvar_24 + (lvar_7C - 1) * lvar_14, lvar_38 + lvar_30);
          end;//5
        end;//4
    end;//2
    if (FImprNbrEleve ) then
	begin
		lvar_50 := FCanvas.TextWidth(' ' +  IntToStr(lvar_54) + ' ');
		FCanvas.MoveTo(lvar_34 + lvar_50, lvar_38 + lvar_18);
		FCanvas.LineTo(lvar_34 + lvar_50, (lvar_54 + 1) * lvar_18 + lvar_38);
	end;
    //0052070B
end;//0

//00520890
function TImpressionGrilleBilan.sub_00520890(a:dword):dword;
begin//0
  //00520890
  result := sub_0051D370 * (FNbrCellInTab[a] - FNbrCellInTab[a - 1]) + GetMaxTailleColonne(GetImpressionDatesDeNaissanceBilans, GetImpressionRBilans);
end;//0
destructor TImpressionGrilleBilan.Destroy;
begin//0
  Printer.EndDoc;
  inherited  Destroy;
end;//0

end.