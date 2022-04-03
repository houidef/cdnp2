{***********************************************************
* Version Original V0.03 build 1                           *
* Decompiled by HOUIDEF AEK v 12:20 mercredi, août 29, 2018*
* The disassembly process : 0%                             *
************************************************************}
unit UImpressionGrilleVierge;

interface

uses
  SysUtils, Windows, Classes, Graphics, Printers,  UImpression, UFichierCdn, UInclureImpression, 
  UBlocTexte,_FormProgression,Dialogs,Forms,UBiblio;

type
  TImpressionGrilleVierge = class(TImpression)
  public
    f54:String;//f54
    constructor Create(FichierCdn:TFichierCdn; Canvas:TCanvas; EnteteDePage:TEnteteBasDePage; BasDePage:TEnteteBasDePage; e:dword; f:TInclureImpression; g:boolean; Font:TFont);//00523FFC
    procedure sub_0052309C(a:dword);//0052309C
    function sub_00523FE0:dword;//00523FE0
    procedure sub_00524130(a:dword; b:dword; c:dword; d:dword; OrdreInverse:boolean);//00524130
    function sub_005243D4:dword;//005243D4
    function sub_005243EC:dword;//005243EC
    procedure sub_00524480(a:dword);//00524480
    function sub_005245A0(a:dword):dword;//005245A0
	destructor Destroy;
end;


implementation

//0052309C
procedure TImpressionGrilleVierge.sub_0052309C(a:dword);
var
  lvar_38,lvar_10,ESI,lvar_8,lvar_1C,lvar_C,lvar_20, lvar_30,lvar_24,lvar_8C: integer;
  lvar_28,lvar_2C,lvar_74,lvar_84,lvar_80,lvar_7C, lvar_44,lvar_40,lvar_18:integer;
  lvar_78,lvar_14,lvar_3C:integer;
  lvar_4C,lvar_50,lvar_1A0,lvar_54,lvar_A0,lvar_48 : string;
  lvar_88 : TRect;
begin//0
  //0052309C
    //005230C1
    lvar_38 := sub_00519E00;
    lvar_10 := sub_005243D4;
    ESI := f40.TextHeight('ALEXANDRE') + 4;//ESI
    lvar_8 := f50[a] - f50[a - 1];
    lvar_1C := sub_00519AF8(GetImpressionDatesDeNaissanceGrilleVierge, GetimpressionRGrilleVierge);
    lvar_C := f3C.NbreEleves ;
    lvar_20 := sub_005245A0(a);
    lvar_30 := sub_00519E58;
    lvar_24 := ESI * lvar_38 + lvar_30 + 20;//EAX
    lvar_8C := f24 - lvar_20;
    lvar_28 := TRUNC(lvar_8C / 2);
    lvar_8C := f28 - lvar_24;
    lvar_2C := TRUNC(lvar_8C / 2);
      for lvar_74 := 1 to f50[a - 1] - f50[a] - 1  do//0052323B
      begin//3
        //0052323F
        lvar_88.left := lvar_28 + lvar_1C + (lvar_74 - 1) * lvar_10;
        lvar_88.Top := lvar_2C;
        lvar_88.Right := lvar_88.left + lvar_10;
        lvar_88.bottom := lvar_88.Top + ESI;
        lvar_4C := '';
        DrawTextA(f40.Handle, PChar(lvar_4C), Length(lvar_4C), lvar_88, 5);
      end;//3
    lvar_44 := f3C.NbreEleves ;
    if (f34 ) then
    begin//2
      //005232FA
      lvar_40 := f40.TextWidth(' ' + IntToStr(lvar_44) + ' ');
    end//2
    else
    begin//2
      //0052333B
      lvar_40 := 0;
    end;//2
    if (lvar_44 > 0) then
    begin//2
      //0052334B
      for lvar_18 := 1 to lvar_44 do
      begin//3
        //00523355
        if (f34 ) then
        begin//4
          //0052335F
          if (lvar_18 - 1 - 9 < 0) then
          begin//5
            //00523368
            lvar_50 := '  ' + IntToStr(lvar_18) + ' ';
          end//5
          else
          begin//5
            //00523395
            lvar_50 := ' ' + IntToStr(lvar_18) + ' ';
          end;//5
          lvar_88.Left := lvar_28;
          lvar_88.Top := lvar_18 * ESI + lvar_2C;//EDI
          lvar_88.Right := lvar_88.Left + lvar_40;//EAX
          lvar_88.Bottom := lvar_88.Top + ESI;//EAX
          lvar_4C := lvar_50;
          DrawTextA(f40.Handle, PChar(lvar_4C), Length(lvar_4C), lvar_88, 4);
          lvar_88.Left := lvar_28 + lvar_40;//EAX
          lvar_88.Top := lvar_18 * ESI + lvar_2C;
          lvar_88.Right := lvar_88.Left + lvar_1C + lvar_40;
          lvar_88.Bottom := lvar_88.Top + ESI;
          if ((f3C.IsRedoublant(lvar_18)) and GetimpressionRGrilleVierge) then//005234A3
          begin//5
              //005234AC
              lvar_1A0 := f3C.GetEleveName(lvar_18);
              lvar_54  := lvar_1A0 + ' (R)';
          end//5
          else
          begin//5
            //005234F0
            lvar_54:=f3C.GetEleveName(lvar_18);
          end;//5
          if (GetImpressionDatesDeNaissanceGrilleVierge) then
          begin//5
            //00523529
            lvar_1A0:=f3C.GetDateNais(lvar_18);
            if (Trim(lvar_1A0) <> '') then
            begin//6
              //0052356C
              lvar_4C := ' ' + lvar_54 + ' (' + lvar_1A0 + ')';
            end//6
            else
            begin//6
              //00523590
              lvar_4C := ' ' + lvar_54 + ' ';
            end;//6
          end//5
          else
          begin//5
            //005235AC
            lvar_4C := ' ' + lvar_54 + ' ';
          end;//5
           DrawTextA(f40.Handle, PChar(lvar_4C), Length(lvar_4C), lvar_88, 4);
        end//4
        else
        begin//4
          //005235F4
          lvar_88.Left := lvar_28;//lvar_28
          lvar_88.Top := ESI * lvar_18 + lvar_2C;//EAX
          lvar_88.Right := lvar_88.Left + lvar_1C;//EAX
          lvar_88.Bottom := lvar_88.Top + ESI;//EAX
          if ((f3C.IsRedoublant(lvar_18)) and GetimpressionRGrilleVierge) then//0052365A
          begin//5
              //00523663
              lvar_1A0:= f3C.GetEleveName(lvar_18);
              lvar_54 := lvar_1A0 + '(R)';
          end//5
          else
          begin//5
            //005236A7
            lvar_54:=f3C.GetEleveName(lvar_18);
          end;//5
          if (GetImpressionDatesDeNaissanceGrilleVierge ) then
          begin//5
            //005236E0
            lvar_1A0:=f3C.GetDateNais(lvar_18);
            if ( Trim(lvar_1A0) <> '') then
            begin//6
              //00523723
              lvar_4C := ' ' + lvar_54 + ' (' + lvar_1A0 + ')';
            end//6
            else
            begin//6
              //00523747
              lvar_4C := ' ' + lvar_54 + ' ';
            end;//6
          end//5
          else
          begin//5
            //00523763
            lvar_4C := ' ' + lvar_54 + ' ';
          end;//5
          DrawTextA(f40.Handle, PChar(lvar_4C), Length(lvar_4C), lvar_88, 4);
        end;//4
        //005237ED
        for lvar_78 := 1 to  f50[a] - 1 - f50[a - 1] do
          begin//5
            //005237F1
            lvar_88.Left := lvar_28 + lvar_1C + (lvar_78 - 1) * lvar_10;
            lvar_88.Top := ESI * lvar_18 + lvar_2C;
            lvar_88.Right := lvar_88.Left + lvar_10;//EAX
            lvar_88.Bottom := lvar_88.Top + ESI;//EAX
            lvar_4C := '';
            DrawTextA(f40.Handle, PChar(lvar_4C), Length(lvar_4C), lvar_88, 5);
          end;//5
      end;//3
    end;//2
	
    lvar_3C := 0;
    if (lvar_38 > 0) then
    begin//2
      //005238C4
        for lvar_14 := 0 to f4C.f8.count - 1 do//005238E1
        begin//4
          //005238EC
          f4C.fc[lvar_14] := false;  
          lvar_88.Left := lvar_28;//lvar_28
          lvar_88.Top := ESI * (f3C.NbreEleves + lvar_3C + 1) + lvar_2C + 20;//EAX
          lvar_88.Right := lvar_88.Left + lvar_1C;//EAX
          lvar_88.Bottom := lvar_88.Top + ESI;//EAX
          lvar_4C := ' ' + f4C.f8[lvar_14] + ' ';
          DrawTextA(f40.Handle, PChar(lvar_4C), Length(lvar_4C), lvar_88, 4);
            //00523A1C
            for lvar_78 := 1 to f50[a] - 1 - f50[a - 1] do
            begin//6
              //00523A20
              lvar_88.Left := lvar_28 + lvar_1C + (lvar_78 - 1) * lvar_10;//EAX
              lvar_88.Top := ESI * (f3C.NbreEleves + lvar_3C + 1) + lvar_2C + 20;//EAX
              lvar_88.Right := lvar_88.Left + lvar_10;//EAX
              lvar_88.Bottom := lvar_88.Top + ESI;//EAX
              lvar_4C := '';
              DrawTextA(f40.Handle, PChar(lvar_4C), Length(lvar_4C), lvar_88, 5);
            end;//6
          lvar_3C := lvar_3C + 1;
        end;//4
    end;//2
      
      for lvar_14 := 0 to lvar_C + 1 do//00523B2C
      begin//3
        //00523B37
        if (lvar_14 = 0) then
        begin//4
          //00523B3D
          f40.MoveTo(lvar_28 + lvar_1C, lvar_2C);
          f40.LineTo(lvar_28 + lvar_20, lvar_2C);
        end//4
        else
        begin//4
          //00523B6F
          f40.MoveTo(lvar_28, lvar_14 * ESI + lvar_2C);
          f40.LineTo(lvar_28 + lvar_20, lvar_14 * ESI + lvar_2C);
        end;//4
      end;//3
    if (lvar_38 > 0) then
    begin//2
      //00523BBC
      if (lvar_38 >= 0) then
      begin//3
        for lvar_14 := 0 to lvar_38 - 1 do//00523BC7
        begin//4
          //00523BD2
          f40.MoveTo(lvar_28, (f3C.NbreEleves + 1 + lvar_14) * ESI + lvar_2C + 20);
          f40.LineTo(lvar_28 + lvar_20, (f3C.NbreEleves + 1 + lvar_14) * ESI + lvar_2C + 20);
        end;//4
      end;//3
    end;//2
      
      for lvar_74 := 0 to lvar_8 + 1 do//00523C8F
      begin//3
        //00523C95
        if (lvar_74 = 0) then
        begin//4
          //00523C99
          f40.MoveTo(lvar_28, lvar_2C + ESI);
          f40.LineTo(lvar_28, lvar_2C + lvar_30);
        end//4
        else
        begin//4
          //00523CCD
          if (lvar_74 = 1) then
          begin//5
            //00523CD2
            f40.MoveTo(lvar_28 + lvar_1C, lvar_2C);
            f40.LineTo(lvar_28 + lvar_1C, lvar_2C + lvar_30);
          end//5
          else
          begin//5
            //00523D0E
            f40.MoveTo(lvar_28 + lvar_1C + (lvar_74 - 1) * lvar_10, lvar_2C);
            f40.LineTo(lvar_28 + lvar_1C + (lvar_74 - 1) * lvar_10, lvar_2C + lvar_30);
          end;//5
        end;//4
      end;//3
    if (lvar_38 > 0) then
    begin//2
      //00523D9C
        //00523DB1
        for lvar_74 := 0 to lvar_8 + 1  do
        begin//4
          //00523DB7
          if (lvar_74 = 0) then
          begin//5
            //00523DBB
            f40.MoveTo(lvar_28, lvar_2C + lvar_30 + 20);
            f40.LineTo(lvar_28, lvar_2C + lvar_24);
          end//5
          else
          begin//5
            //00523DFA
            f40.MoveTo(lvar_28 + lvar_1C + (lvar_74 - 1) * lvar_10, lvar_2C + lvar_30 + 20);
            f40.LineTo(lvar_28 + lvar_1C + (lvar_74 - 1) * lvar_10, lvar_2C + lvar_24);
          end;//5
        end;//4
    end;//2
    if (f34) then 
	begin
		lvar_40 := f40.TextWidth(' ' + IntToStr(lvar_44) + ' ');
		f40.MoveTo(lvar_28 + lvar_40, lvar_2C + ESI);
		f40.LineTo(lvar_28 + lvar_40, (lvar_44 + 1) * ESI + lvar_2C);
	end;
	
    //00523F3F
end;//0

//00523FE0
function TImpressionGrilleVierge.sub_00523FE0:dword;
begin//0
  //00523FE0
  result := f40.TextWidth(f54) + 4;//EAX
end;//0

//00523FFC
constructor TImpressionGrilleVierge.Create(FichierCdn:TFichierCdn; Canvas:TCanvas; EnteteDePage:TEnteteBasDePage; BasDePage:TEnteteBasDePage; e:dword; f:TInclureImpression; g:boolean; Font:TFont);
var
 buf :string;
 i :integer;
begin//0
  //00523FFC
    //0052402B
    inherited create(FichierCdn,Canvas,EnteteDePage,BasDePage,e,f,g,Font);
    f54 := '';
      for I := 1 to e do//0052405D
      begin//3
        //0052405D
        f54 := f54 + ' ';
      end;//3
    Printer.Title := 'Carnet de Notes version Personnelle - ' + f3C.GetClasseName;
    Printer.BeginDoc;
    f30 := sub_005243EC;
    //005240C1
end;//0

//00524130
procedure TImpressionGrilleVierge.sub_00524130(a:dword; b:dword; c:dword; d:dword; OrdreInverse:boolean);
var
S,lvar_C,I: integer;
begin//0
  //00524130
  if (a > b) then
  begin//1
    //00524146
    S := b;
    b := a;
    a := S;
  end;//1
    for lvar_C := 1 to c do //00524159
    begin//2
      //00524163
      FormProgression{gvar_00617DE4} := TFormProgression.Create(Nil);
      FormProgression.ProgressBar1.Min := a;
      FormProgression.ProgressBar1.Max := b + 1;
      FormProgression.ProgressBar1.Step := 1;
      FormProgression.ProgressBar1.Position := a - 1;
      if (OrdreInverse = false) then
      begin//3
        //005241CC
          for I := a to b  do//005241D9
          begin//5
            //005241DA
            case d of
              0:
              begin//7
                //005241F0
                sub_00524480( a);
                if (lvar_C * a <> b * c) then 
                Printer.NewPage;
              end;//7
              1:
              begin//7
                //0052422B
                if (a mod 2 - 1 = 0) then
                begin//8
                  //0052423C
                  sub_00524480(a);
                  if (lvar_C * a <> b * c) then 
                  Printer.NewPage;
                end;//8
              end;//7
              2:
              begin//7
                //00524270
                if (a mod 2 = 0) then 
				begin
					sub_00524480( a);
					if (lvar_C * a <> b * c) then 
						Printer.NewPage;
              end;//7
            end;//6
          end;//5
        end;//4
      end//3
      else
      begin//3
        //005242C1
          //005242CE
          for I := b to a  do
          begin//5
            //005242CF
            case d of
              0:
              begin//7
                //005242E5
                sub_00524480(b);
                if (lvar_C * b <> a * c) then 
					Printer.NewPage;
              end;//7
              1:
              begin//7
                //0052431F
                if (b mod 2 - 1 = 0) then
                begin//8
                  //00524330
                  sub_00524480(b);
                  if (lvar_C * b <> a * c) then 
					Printer.NewPage;
                end;//8
              end;//7
              2:
              begin//7
                //00524363
                if (b mod 2 = 0) then
				begin
					sub_00524480( b);
					if (lvar_C * b <> a * c) then 
					Printer.NewPage;
				end;
              end;//7
            end;//6
          end;//5
        end;//4
      end;//3
      FormProgression.Destroy;
  
end;//0

//005243D4
function TImpressionGrilleVierge.sub_005243D4:dword;
begin//0
  //005243D4
  sub_00523FE0;
  result := f14;
end;//0

//005243EC
function TImpressionGrilleVierge.sub_005243EC:dword;
var
  K:integer;
begin//0
  //005243EC
  K:=(f24 - sub_00519AF8(GetImpressionDatesDeNaissanceGrilleVierge, GetimpressionRGrilleVierge)) Div sub_005243D4;
  if (K = 0) then //00524426
    result := 0
  else 
  begin
	SetLength(f50, 2);
  f50[0] := 1;
  f50[1] := K + 1;//ESI
	result := 1;
  end;
end;//0

//00524480
procedure TImpressionGrilleVierge.sub_00524480(a:dword);
begin//0
  //00524480
    //0052449C
    Application.ProcessMessages;
    if (FormProgression.Visible = False) then//005244B5
      FormProgression.Show;
    FormProgression.Caption := 'Préparation de l''impression en cours ... page ' + IntToStr(FormProgression.ProgressBar1.Position);
    FormProgression.ProgressBar1.Position := FormProgression.ProgressBar1.Position + 1;
    sub_00519534;
    sub_0052309C(a);
    sub_0051954C;
    //0052454A
end;//0

//005245A0
function TImpressionGrilleVierge.sub_005245A0(a:dword):dword;
begin//0
  //005245A0
  result := sub_005243D4 * (f50[a] - f50[a - 1]) + sub_00519AF8(GetImpressionDatesDeNaissanceGrilleVierge, GetimpressionRGrilleVierge);
end;//0
destructor TImpressionGrilleVierge.Destroy;
begin//0

  Printer.EndDoc;
  inherited  Destroy;
end;//0

end.