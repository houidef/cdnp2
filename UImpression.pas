{***********************************************************
* Version Original V0.01                                   *
* Decompiled by Houidef AEK v 14:44 Vendredi 17 aout 2018  *
* The disassembly process : 90%                            *
************************************************************}
unit UImpression;

interface

uses
Forms, Windows,  SysUtils, Classes, Graphics, Printers,UFichierCdn,Unit173,UInclureImpression;

type

  TImpression = class(TObject)
  public
  f4  : DWORD;
  f8  : DWORD;
  f3C : TFichierCdn;
  f40 : TCanvas;
  f38 : TFont;
  f44 : TEnteteBasDePage; //Entete De Page
  f48 : TEnteteBasDePage; //Bas De Page
  f2C : DWORD;
  f30 : byte;  //Nbr des page vertical imprimé
  f4C : TInclureImpression; 
  f34 : boolean;  //imprime Num de etudiant
  f14 : DWORD; //marge de page
  f1C : DWORD;
  fC  : DWORD;
  f10 : DWORD;
  f18 : DWORD;
  f20 : DWORD;
  f24 :DWORD; //witdth of page
  f28 :DWORD; //Height of page
    f50:array of integer;//f50
    procedure sub_00519534;//00519534
    procedure sub_0051954C;//0051954C
    function sub_00519578(Ligne:dword; b:TEnteteBasDePage; c:boolean):dword;//00519578}
    constructor create (FichierCdn:TFichierCdn; Canvas:TCanvas;  EnteteDePage:TEnteteBasDePage; BasDePage:TEnteteBasDePage; e:dword; f:TInclureImpression; ImpNum:boolean; font:TFont);//0051992C
    function sub_00519A90:integer;//00519A90
    function sub_00519AA8(a:TCanvas; b:AnsiString):dword;//00519AA8
    function sub_00519AF8(ImpDateNais:boolean; ImpRedoublage:boolean):dword;//00519AF8 get la taille de 1ere colone
    function sub_00519E00:dword;//00519E00
    function sub_00519E58:dword;//00519E58
    function sub_00519EB0:Boolean;//00519EB0}
  end;

implementation

//00519534
procedure TImpression.sub_00519534;
begin//0
  //00519534
  f4 := sub_00519578(f1C, f44{Entete de page}, True); //impression
end;//0


//0051954C
procedure TImpression.sub_0051954C;
begin//0
  //0051954C
  f8 := sub_00519578(f28 - f1C - 40, f48{Bas de page}, False);

end;//0


//00519578
function TImpression.sub_00519578(Ligne:dword; b:TEnteteBasDePage; c:boolean):dword;
var
  lvar_14,lvar_18,lvar_1C ,lvar_8,lvar_C, lvar_10,lvar_4,lvar_20:Integer;
begin//0
  //00519578
  //005195A3
    if (Trim(b.f4.f4) = '') then
    begin//005195B7
      if (Trim(b.f8.f4) = '') then
      begin//005195CB
        if (Trim(b.fC.f4) = '') then
        begin//005195DF
          //EBX := 40;
          Exit;
        end;//4
      end;//3
    end;//

    {f40.font.Name := f38.Name;}
    if (c) then
    begin//00519608
      f40.font.Size := 10;
    end//2
    else
    begin//0051961A
      f40.font.Size := 8;
    end;//2
    f40.MoveTo(f14, Ligne);
    f40.LineTo(f24 - f14, Ligne);
    lvar_18  := f40.TextWidth(b.f4.f4);
    lvar_1C  := f40.TextWidth(b.f8.f4);
    lvar_20  := f40.TextWidth(b.fC.f4);
    lvar_C   := f40.TextHeight(b.f4.f4);
    lvar_10  := f40.TextHeight(b.f8.f4);
    lvar_14  := f40.TextHeight(b.fC.f4);
    if ( b.f4.f8) then //????
    begin//2
      //005196BD
      f40.Rectangle(f14,Ligne + 8 ,Ligne + 8 + lvar_8 + 10,f14 + lvar_14 + 5 );
    end;//2
    f40.TextOut(f14, Ligne + 8 + 5, b.f4.f4);
    lvar_4 := TRUNC((fC - lvar_18) / 2){ Div -2147483648};
    if (lvar_4<> 0) then
    begin//2//00519765
      //f40.Rectangle(lvar_4 - 5, Ligne + 8, Ligne + 8 + lvar_C + 10,lvar_4 + lvar_18 + 5 );
    end;//2
    f40.TextOut(lvar_4, Ligne + 8 + 5,b.f8.f4 );
    if (b.fC.f8) then  //????????
    begin//2
      //f40.Rectangle(f24 - f14 - lvar_1C - 5, Ligne + 8, f24 - f14,Ligne + 8 + lvar_10 + 10);//,f24 - f14 );
    end;//2
    f40.TextOut(f24 - lvar_1C - f14 - 5, Ligne + 8 + 5, b.fC.f4);
    if (c ) then
    begin//00519895
      f40.MoveTo(f14, lvar_C + Ligne + 26);
      f40.LineTo(f24 - f14, lvar_C + Ligne + 26);
    end;//2

   // f40.font.Size := f38.Size;
    result := lvar_C + 40;
  //005198FE

  
end;//0


//0051992C
constructor TImpression.Create(FichierCdn:TFichierCdn; Canvas:TCanvas; EnteteDePage:TEnteteBasDePage; BasDePage:TEnteteBasDePage; e:dword; f:TInclureImpression; ImpNum:boolean; font:TFont);
begin//0
  //0051992C
  inherited create;
  f3C := FichierCdn;
  f40 := Canvas;
  f38 := font;
  //f40.Font := i;
  f44 := EnteteDePage;
  f48 := BasDePage;
  f2C := e;
  f30 := 0;//EAX
  f4C := f;
  f34 := ImpNum;
  f14 := GetDeviceCaps(Printer.Handle, 112);
  f1C := GetDeviceCaps(Printer.Handle, 113);
  fC  := GetDeviceCaps(Printer.Handle, 110);
  f10 := GetDeviceCaps(Printer.Handle, 111);
  f18 := fC - f14 - Printer.PageWidth;
  f20 := f10 - f1C - Printer.PageHeight;
  f24 := Printer.PageWidth;
  f28 := Printer.PageHeight;
  if (f20 < 100) then
  begin//00519A43
    f20 := 100;
  end;//1
  if (f1C < 100) then
  begin//00519A50
    f1C := 100;
  end;//1
  if (f14 < 100) then
  begin//1
    //00519A5D
    f14 := 100;
  end;//1
  if (f18 < 100) then
  begin//1
    //00519A6A
    f18 := 100;
  end;//1
end;//0


//00519A90
function TImpression.sub_00519A90:integer;
begin//0
  //00519A90
  if (sub_00519EB0) then//00519A9E
    result := f30
  else 
    result := -1;//error!
end;//0


//00519AA8
function TImpression.sub_00519AA8(a:TCanvas; b:AnsiString):dword; //get taille text
begin//0
  //00519AA8
    result := a.TextWidth(b);
end;//0

//00519AF8
function TImpression.sub_00519AF8(ImpDateNais:boolean; ImpRedoublage:boolean):dword; //get la taille de 1ere colone
var
 Max,I,Nbr : integer;
 buf,lvar_1C,lvar_18,lvar_130 : string;
begin//0
  //00519AF8

  Max :=0;

    //00519B40
    //f40.Name := f38.Name;
    //f40.Size := f38.Size;
	Nbr := byte(f3C.EleveCount);
      for I := 1 to Nbr do  //00519B94
      begin//00519B9B
        if (ImpRedoublage) then
        begin//00519BA1
          f3C.GetEleveName__(I, buf);
          lvar_1C := buf + ' (R)';
        end//4
        else
        begin//00519BDF
          f3C.GetEleveName__(I, buf);
		  lvar_1C := buf;
        end;//4
        if (ImpDateNais) then
        begin//00519C11
          f3C.GetElevDateNais(I, buf);
          lvar_18 := ' ' + lvar_1C + ' (' + buf + ')';
        end//4
        else
        begin//00519C67
          lvar_18 := ' ' + lvar_1C + ' ';
        end;//4
        if (sub_00519AA8(f40, lvar_18) > Max) then
			Max := sub_00519AA8(f40, lvar_18);
      end;//3
    if (f4C <> nil) then//00519CAB
        for I := 0 to f4C.f8.count - 1 do //00519CC1
        begin//00519CCB
          if (f4C.FC[I] = false) then
		  begin
			  lvar_130 :=  f4C.f8[I] + ' ';
			  if (sub_00519AA8(f40, lvar_130) > Max) then 
			  Max := sub_00519AA8(f40, lvar_130);
		  end;
        end;//4

    if (f34) then //00519D3C
      Max := sub_00519AA8(f40, IntToStr(Nbr)) + Max + 10;
    
    result := Max + 20;//EBX

  
end;//0


//00519E00
function TImpression.sub_00519E00:dword; // Nbre des lignes ajoutés apres tableau!
var
  I,Count: Integer;
begin//0
  //00519E00
   Count := 0;
  if (f4C <> nil) then
  begin//00519E0C
      for I := 0 to  f4C.f8.Count - 1 do
      begin//3
        //00519E27
        if (f4C.fC[I]) then
			Count := Count + 1;
      end;//3

    result := Count;

  end;
end;//0


//00519E58
function TImpression.sub_00519E58:dword;
begin//0
  //00519E58
  result := (f40.TextHeight('ALEXANDRE')+ 4)*(Byte(f3C.EleveCount)+1);

end;//0

//00519EB0
function TImpression.sub_00519EB0:Boolean;
begin//0
  //00519EB0
  result := ((f40.TextHeight('ALEXANDRE') + 4) * sub_00519E00 + sub_00519E58 + 140 < Printer.PageHeight);
end;//0


end.
