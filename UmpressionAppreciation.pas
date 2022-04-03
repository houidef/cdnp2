{***********************************************************
* Version Original V0.03 build 1                           *
* Decompiled by HOUIDEF AEK v 0:57 samedi, septembre 29, 2018*
* The disassembly process : 0%                             *
************************************************************}
unit UmpressionAppreciation;

interface

uses
  SysUtils, Windows, Classes, Graphics, Printers, UImpression, UFichierCdn, UInclureImpression, 
  UBlocTexte, _FormProgression,UBiblio,Forms, Dialogs,PeriodeCalc;
type
  TImpressionAppreciation = class(TImpression)
    constructor Create(FichierCdn:TFichierCdn; Canvas:TCanvas; EnteteDePage:TEnteteBasDePage; BasDePage:TEnteteBasDePage; e:dword; f:TInclureImpression; g:boolean; Font:TFont);
    procedure sub_00521464(a:dword; b:dword; c:dword; d:dword; e:boolean);//00521464
    function sub_00521708:dword;//00521708
    function sub_00521834:dword;//00521834
    function sub_0052199C:dword;//0052199C
    procedure sub_00521AB0(a:dword);//00521AB0
    procedure sub_00521C10(a:dword);//00521C10
    function sub_00522F04(a:dword):dword;//00522F04
    function sub_00522F88:dword;//00522F88
	destructor Destroy;
	end;


implementation

//00521360
constructor TImpressionAppreciation.Create(FichierCdn:TFichierCdn; Canvas:TCanvas; EnteteDePage:TEnteteBasDePage; BasDePage:TEnteteBasDePage; e:dword; f:TInclureImpression; g:boolean; Font:TFont);
var
  buf :string;
begin//0
  //00521360
    //0052138E
    inherited create(FichierCdn,Canvas,EnteteDePage,BasDePage,e,f,g,Font);
    Printer.Title := 'Carnet de Notes version Personnelle - ' + f3C.GetClasseName;
    Printer.BeginDoc;
    f30 := sub_00521708;
    //00521405
end;//0

//00521464
procedure TImpressionAppreciation.sub_00521464(a:dword; b:dword; c:dword; d:dword; e:boolean);
var
 S,lvar_C,I:integer;
begin//0
  //00521464
  if (a > b) then
  begin//1
    //0052147A
    S := b;
    b := a ;
    a := S
  end;//1
    
    //lvar_10 := c;
    for lvar_C := 1 to c do//0052148D
    begin//2
      //00521497
      FormProgression{gvar_00617DE4} := TFormProgression.Create(Nil);
      FormProgression.ProgressBar1.Min := a;
      FormProgression.ProgressBar1.Max := b + 1;
      FormProgression.ProgressBar1.Step := 1;
      FormProgression.ProgressBar1.Position := a - 1;
      if (e = false) then
      begin//3
        //00521500
          for I := a to b - 1 do //0052150D
          begin//5
            //0052150E
            case d of
              0:
              begin//7
                //00521524
                sub_00521AB0(a);
                if (lvar_C * a <> b * c) then 
					Printer.NewPage;
              end;//7
              1:
              begin//7
                //0052155F
                if (a mod 2 - 1 = 0) then
                begin//8
                  //00521570
                  sub_00521AB0(a);
                  if (lvar_C * a <> b * c) then 
					Printer.NewPage;
                end;//8
              end;//7
              2:
              begin//7
                //005215A4
                if (a mod 2 = 0) then 
                sub_00521AB0(a);
                if (lvar_C * a <> b * c) then 
					Printer.NewPage;
              end;//7
            end;//6
          end;//5
        end//4
      else
      begin//3
        //005215F5
          for I := b to a - 2 do//00521602
          begin//5
            //00521603
            case d of
              0:
              begin//7
                //00521619
                sub_00521AB0(b);
                if (lvar_C * b <> a * c) then 
                Printer.NewPage;
              end;//7
              1:
              begin//7
                //00521653
                if (b mod 2 - 1 = 0) then
                begin//8
                  //00521664
                  sub_00521AB0(b);
                  if (lvar_C * b <> a * c) then
                  Printer.NewPage;
                end;//8
              end;//7
              2:
              begin//7
                //00521697
                if (b mod 2 = 0) then 
                sub_00521AB0(b);
                if (lvar_C * b <> a * c) then 
					Printer.NewPage;
              end;//7
            end;//6
          end;//5
        end;//4
      end;//3
      FormProgression.Destroy;
end;//0

//00521708
function TImpressionAppreciation.sub_00521708:dword;
var
  I,J,K,L :integer;
begin//0
  //00521708
  SetLength(f50, 1);
  I := 0;
  J := 0;
  f50[0] := 1;
  L := sub_0052199C Div (f24 - sub_00519AF8(GetImpressionDatesDeNaissanceAppreciations, GetImpressionRAppreciations) - sub_00522F88);
  if (L = 0) then //00521783
    result := 0
  else 
  begin
	K := f3C.GetbulletinsCount;
	while (J < K) do
	begin//1
		//0052179F
		//0052179F
		I := I + 1;//ESI
		SetLength(f50,{1,}  I + 1);
		f50[I] := f50[I - 1] + L;
		J := J + L;
	end;//1
	f50[I] := K + 1;//EDX
	result := I;
  end;
end;//0

//00521834
function TImpressionAppreciation.sub_00521834:dword;
var
  Val,I : integer;
  buf : string;
begin//0
  //00521834
    //00521864
    Val := 0;
    if (f3C.GetbulletinsCount > 0) then
    begin//2
      for I := 1 to f3C.GetbulletinsCount do//00521887
      begin//3
        //0052188C
        f3C.GetNomsbulletins(I, buf);
        if (f40.TextWidth(' ' + buf + ' ') > Val) then 
		begin
			f3C.GetNomsbulletins(I, buf);
			Val := f40.TextWidth(' ' + buf + ' ');
		end;
      end;//3
    end;//2
    result := Val + 4;
    //00521962
end;//0

//0052199C
function TImpressionAppreciation.sub_0052199C:dword;
var
 Val, I,J :integer;
 buf :string;
begin//0
  //0052199C
    //005219BC
    Val := 0;
      for I := 1 to f3C.NbreEleves  do//005219DC
      begin//3
        //005219E6
        for J := 1 to f3C.GetbulletinsCount do
        begin//4
          //005219FD
          f3C.GetApreciations(f2C, I, J, buf);
          if (f40.TextWidth(buf) > Val) then 
			Val := f40.TextWidth(buf);
        end;//4
      end;//3
    if (sub_00521834 > Val) then //00521A7B
      Val := sub_00521834;
    result := Val + $14{20};//EBX
    //00521A98
end;//0

//00521AB0
procedure TImpressionAppreciation.sub_00521AB0(a:dword);
begin//0
  //00521AB0
    //00521ACE
    Application.ProcessMessages;
    if (FormProgression{gvar_00617DE4}.Visible = False) then//00521AE7
      FormProgression.Show;
    FormProgression.Caption := 'Préparation de l''impression en cours ... page ' + IntToStr(FormProgression.ProgressBar1.Position) + '/' + IntToStr(FormProgression.ProgressBar1.Max - 1);
    FormProgression.ProgressBar1.Position := FormProgression.ProgressBar1.Position + 1;
    sub_00519534;
    sub_00521C10(a);
    sub_0051954C;
    //00521BAD
end;//0

//00521C10
procedure TImpressionAppreciation.sub_00521C10(a:dword);
var
 lvar_78,E,lvar_1BC,lvar_90 : real;
 I,J,K,lvar_1E8,lvar_1EC : integer;
 lvar_14,lvar_18,lvar_C,lvar_24,lvar_10,lvar_2C : integer;
 lvar_30,lvar_34,lvar_20,lvar_194,lvar_94,lvar_4C,lvar_1C,lvar_3C:integer;
 lvar_7C,lvar_48,lvar_1A0,lvar_19C,lvar_44,lvar_28: integer;
 StrList:TStringList;
 buf,lvar_54,lvar_58,lvar_5C,lvar_60,lvar_64,lvar_68,lvar_50 : string;
 lvar_8C : TRect;
begin//0
  //00521C10
    //00521C36
    lvar_14 := sub_0052199C;
    lvar_18 := f40.TextHeight('ALEXANDRE') + 4;
    lvar_C := f50[a] - f50[a - 1];
    lvar_24 := sub_00519AF8(GetImpressionDatesDeNaissanceAppreciations, GetImpressionRAppreciations);
    lvar_10 := f3C.NbreEleves;
    lvar_2C := sub_00519E58 + $14{20};//EAX
    lvar_90 := f24 - sub_00522F04(a);
    lvar_30 := TRUNC(lvar_90 / 2) {Sar $1F};
    lvar_90 := f28 - lvar_2C;
    lvar_34 := TRUNC(lvar_90 / 2) {Sar $1F};
    StrList := TStringList.Create;
      for lvar_20 := 1 to f3C.NbreEleves  do//00521D87
      begin//3
        //00521D91
        StrList.Add(f3C.GetMoyennePeriode(f2C, lvar_20, GetArrondirMoyennes));
      end;//3
    lvar_5C := GetPeriodeMax(StrList);
    lvar_60 := GetPeriodeMin(StrList);
    lvar_64 := GetPeriodeMoy(StrList);
    StrList.Destroy;
    lvar_90 := sub_00522F88;
    lvar_4C := TRUNC(lvar_90 / 4) {sar $1F};
    for lvar_1C := 0 to 4 do
    begin//2
      //00521E7F
      lvar_8C.left := lvar_30 + lvar_24 + (lvar_1C - 1) * lvar_4C;
      lvar_8C.Top := lvar_34;
      lvar_8C.right := lvar_8C.left + lvar_4C;
      lvar_8C.bottom := lvar_8C.Top + lvar_18;
      case lvar_1C of
        1:
        begin//4
          //00521EF6
          lvar_54 := 'Elève';
        end;//4
        2:
        begin//4
          //00521F05
          lvar_54 := '+ haute';
        end;//4
        3:
        begin//4
          //00521F14
          lvar_54 := 'Classe';
        end;//4
        4:
        begin//4
          //00521F23
          lvar_54 := '+ basse';
        end;//4
      end;//3
      DrawTextA(f40.Handle, PChar(lvar_54), Length(lvar_54), lvar_8C, 5);
    end;//2
    lvar_1C := 1;
      
      for lvar_7C := f50[a - 1] to f50[a] - 1 do//00521FB8
      begin//3
        //00521FBC
        lvar_8C.Left := sub_00522F88 + lvar_30 + lvar_24 + (lvar_1C - 1) * lvar_14;//EAX
        lvar_8C.Top := lvar_34;
        lvar_8C.Right := lvar_8C.Left + lvar_14;//EAX
        lvar_8C.Bottom := lvar_8C.Top + lvar_18;//EAX
        f3C.GetNomsbulletins(f50[a - 1], buf);
        lvar_54 := ' ' + buf + ' ';
        lvar_1C := lvar_1C + 1;
        DrawTextA(f40.Handle, PChar(lvar_54), Length(lvar_54), lvar_8C, 4);
      end;//3
    lvar_48 := f3C.NbreEleves;
    if (f34) then
    begin//2
      //005220DE
      lvar_44 := f40.TextWidth(' ' + IntToStr(lvar_48) + ' ');
    end//2
    else
    begin//2
      //00522122
      lvar_44 := 0;
    end;//2
      //00522132
      //lvar_7C := lvar_48;
      for lvar_20 := 1 to lvar_48 do
      begin//3
        //0052213C
        if (f34 ) then
        begin//4
          //00522149
          if (lvar_20 - 1 - 9 < 0) then
          begin//5
            //00522152
            lvar_58 := '  ' + IntToStr(lvar_20) + ' ';
          end//5
          else
          begin//5
            //0052217F
            lvar_58 := ' ' + IntToStr(lvar_20) + ' ';
          end;//5
          lvar_8C.Left := lvar_30;
		  K:=lvar_20 * lvar_18 + lvar_34;
          lvar_8C.Top := K;//EBX
          lvar_8C.Right := lvar_8C.Left + lvar_44;//EAX
          lvar_8C.Bottom := lvar_8C.Top + lvar_18;//EAX
          lvar_54 := lvar_58;
          DrawTextA(f40.Handle, PChar(lvar_54), Length(lvar_54), lvar_8C, 4);
          lvar_8C.Left := lvar_30 + lvar_44;//EAX
          lvar_8C.Top := K;//EBX
          lvar_8C.Right := lvar_8C.Left + lvar_24 + lvar_44;//EAX
          lvar_8C.Bottom := lvar_8C.Top + lvar_18;//EAX
          if ((f3C.IsRedoublant(lvar_20)) and (GetImpressionRAppreciations))then//0052229E
          begin//5
              //005222A7
              lvar_68 := f3C.GetEleveName(lvar_20) + ' (R)';
          end//5
          else
          begin//5
            //005222EF
            lvar_68:=f3C.GetEleveName(lvar_20);
          end;//5
          if (GetImpressionDatesDeNaissanceAppreciations ) then
          begin//5
            //0052232C
            lvar_50:=f3C.GetDateNais(lvar_20);
            if (Trim(lvar_50) <> '') then
            begin//6
              //00522373
              lvar_54 := ' ' + lvar_68 + ' (' + lvar_50 + ')';
            end//6
            else
            begin//6
              //00522397
              lvar_54 := ' ' + lvar_68 + ' ';
            end;//6
          end//5
          else
          begin//5
            //005223B3
            lvar_54 := ' ' + lvar_68 + ' ';
          end;//5
          DrawTextA(f40.Handle, PChar(lvar_54), Length(lvar_54), lvar_8C, 4);
        end//4
        else
        begin//4
          //005223FE
          lvar_8C.Left := lvar_30;//lvar_30
          lvar_8C.Top := lvar_18 * lvar_20 + lvar_34;//EAX
          lvar_8C.Right := lvar_8C.Left + lvar_24;//EAX
          lvar_8C.Bottom := lvar_8C.Top + lvar_18;//EAX
          if ((f3C.IsRedoublant(lvar_20) ) and (GetImpressionRAppreciations )) then//0052246E
          begin//5
              //00522477
              lvar_68 :=f3C.GetEleveName(lvar_20) + ' (R)';
          end//5
          else
          begin//5
            //005224BF
            lvar_68 := f3C.GetEleveName(lvar_20);
          end;//5
          if (GetImpressionDatesDeNaissanceAppreciations ) then
          begin//5
            //005224FC
            lvar_50:=f3C.GetDateNais(lvar_20);
            if (Trim(lvar_50) <> '') then
            begin//6
              //00522543
              lvar_54 := ' ' + lvar_68 + ' (' + lvar_50 + ')';
            end//6
            else
            begin//6
              //00522567
              lvar_54 := ' ' + lvar_68 + ' ';
            end;//6
          end//5
          else
          begin//5
            //00522583
            lvar_54 := ' ' + lvar_68 + ' ';
          end;//5
          DrawTextA(f40.Handle, PChar(lvar_54), Length(lvar_54), lvar_8C, 4);
        end;//4
        lvar_90 := sub_00522F88;
        lvar_4C := TRUNC(lvar_90 / 4);
        //lvar_1C := 1;
        for lvar_1C := 0 to 4 do
        begin//4
          //00522600
          lvar_8C.Left := lvar_30 + lvar_24 + (lvar_1C - 1) * lvar_4C;//EAX
          lvar_8C.Top := lvar_18 * lvar_20 + lvar_34;//EAX
          lvar_8C.Right := lvar_8C.Left + lvar_4C;//EAX
          lvar_8C.Bottom := lvar_8C.Top + lvar_18;//EAX
          f40.Font.Color := 0;
          case lvar_1C of
            1:
            begin//6
              //0052269B
              lvar_54 := f3C.GetMoyennePeriode(f2C, lvar_20, GetArrondirMoyennes);
            end;//6
            2:
            begin//6
              //005226E6
              lvar_54 := lvar_5C;
            end;//6
            3:
            begin//6
              //005226F3
              lvar_54 := lvar_64;
            end;//6
            4:
            begin//6
              //00522700
              lvar_54 := lvar_60;
            end;//6
          end;//5
          if (GetimpressionCouleurNote_ ) then
          begin//5
            //00522718
            if (lvar_1C = 1) then
            begin//6
              //00522722
              //0052272A
              if (lvar_54 = 'abs') Or (lvar_54 = '') then
              begin//7
                //00522737
                f40.Font.Color := 0;
              end//7
              else
              begin//7
                //0052274C
                try
                  //0052275A
                  lvar_78 := StrToFloat(lvar_54);
                  //00522770
                  E := GetMoyennesSur;//moyennesSur
				  lvar_90 := E;
                  if (lvar_78 < 0) Or (lvar_78 > lvar_90) then
                  begin//9
                    //00522791
                    f40.Font.Color := GetColor4Note;;
                  end//9
                  else
                  begin//9
                    //005227AB
                    if (lvar_78 >= 0) then
                    begin//10
                      //005227B9
                      lvar_90 := E;
                      if (lvar_90 / 2 < lvar_78) then
                      begin//11
                        //005227D5
                        f40.Font.Color := GetColor1Note;
                      end//11
                      else
                      begin//11
                        //005227EC
                      end;//11
                    end//10
                    else
                    begin//10
                      //005227EC??? And ???
                      lvar_90 := 3 * E / 4;
                      if (lvar_90 >= lvar_78) then
                      begin//11
                        //00522812
                        lvar_1BC := E;
                        if (lvar_1BC <= lvar_78) then
                        begin//12
                          //00522828
                          f40.Font.Color := GetColor3Note;
                        end//12
                        else
                        begin//12
                          //0052283F
                        end;//12
                      end//11
                      else
                      begin//11
                        //0052283F??? And ???
                        f40.Font.Color := GetColor2Note;
                      end;//11
                    end;//10
                  end;//9
                except//8
                  //00522863
                end;//8
              end;//7
            end;//6
          end;//5
          DrawTextA(f40.Handle, PChar(lvar_54), Length(lvar_54), lvar_8C, 5);
        end;//4
        lvar_1C := 1;
          for I := f50[a - 1] to f50[a] - 1 do//005228F0
          begin//5
            //005228F1
            lvar_8C.Left := sub_00522F88 + lvar_30 + lvar_24 + (lvar_1C - 1) * lvar_14;//EAX
            lvar_8C.Top :=  lvar_18 * lvar_20 + lvar_34;//EAX
            lvar_8C.Right := lvar_8C.Left + lvar_14;//EAX
            lvar_8C.Bottom := lvar_8C.Top + lvar_18;//EAX
            f3C.GetApreciations(f2C, lvar_20, f50[a - 1], buf);
            lvar_54 := ' ' + buf + ' ';
            DrawTextA(f40.Handle, PChar(lvar_54), Length(lvar_54), lvar_8C, 4);
          end;//5
      
      for lvar_7C := 0 to lvar_10 + 1 do//00522A44
      begin//3
        //00522A4A
        if (lvar_7C = 0) then
        begin//4
          //00522A4E
          f40.MoveTo(lvar_30 + lvar_24, lvar_34);
          f40.LineTo(lvar_30 + lvar_28, lvar_34);
        end//4
        else
        begin//4
          //00522A86
          f40.MoveTo(lvar_30, lvar_7C * lvar_18 + lvar_34);
          f40.LineTo(lvar_30 + lvar_28, lvar_7C * lvar_18 + lvar_34);
        end;//4
      end;//3
      for lvar_1C := 0 to f3C.GetbulletinsCount + lvar_C + 4 - 1 do//00522AFF
      begin//3
        //00522B0A
        if (lvar_1C = 0) then
        begin//4
          //00522B10
          f40.MoveTo(lvar_30, lvar_34 + lvar_18);
          f40.LineTo(lvar_30, lvar_34 + lvar_3C);
        end//4
        else
        begin//4
          //00522B4B
          if (lvar_1C = 1) then
          begin//5
            //00522B51
            f40.MoveTo(lvar_30 + lvar_24, lvar_34);
            f40.LineTo(lvar_30 + lvar_24, lvar_34 + lvar_3C);
          end//5
          else
          begin//5
            //00522B8D
            if (lvar_1C + -2 - 4 < 0) then
            begin//6
              //00522B9C  
             // EAX := TRUNC(sub_00522F88 / 4) * (lvar_1C - 1) ;
              f40.MoveTo((lvar_30 + lvar_24 + lvar_1E8) {sar $1F}, lvar_34);
              //EAX := TRUNC(sub_00522F88 / 4)*(lvar_1C - 1);
              f40.LineTo((lvar_30 + lvar_24 + lvar_1EC){sar $1F}, lvar_34 + lvar_3C);
            end//6
            else
            begin//6
              //00522C9F
              f40.MoveTo(sub_00522F88 + lvar_30 + lvar_24 + (lvar_1C - 5) * lvar_14, lvar_34);
              f40.LineTo(sub_00522F88 + lvar_30 + lvar_24 + (lvar_1C - 5) * lvar_14, lvar_34 + lvar_3C);
            end;//6
          end;//5
        end;//4
      end;//3
    if (f34) then 
	begin
		lvar_44 := f40.TextWidth(' ' + IntToStr(lvar_48) + ' ');
		f40.MoveTo(lvar_30 + lvar_44, lvar_34 + lvar_18);
		f40.LineTo(lvar_30 + lvar_44, (lvar_48 + 1) * lvar_18 + lvar_34);
	end;
  end;
    //00522E0E
end;//0

//00522F04
function TImpressionAppreciation.sub_00522F04(a:dword):dword;
begin//0
  //00522F04
  result := sub_0052199C * (f50[a] - f50[a - 1]) + sub_00519AF8(GetImpressionDatesDeNaissanceAppreciations, GetImpressionRAppreciations) + sub_00522F88;//EDI
end;//0

//00522F88
function TImpressionAppreciation.sub_00522F88:dword;
begin//0
  //00522F88
  result := 4 * sub_00519AA8(f40, ' + haute ');
end;//0
destructor TImpressionAppreciation.Destroy;
begin//0
  Printer.EndDoc;
  inherited  Destroy;
end;//0

end.