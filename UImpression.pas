//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit UImpression;

interface

uses
Forms, Windows,  SysUtils, Classes, Graphics, Printers,UFichierCdn,Unit173;

type

  TImpression = class(TObject)
  public
  f4  : DWORD;
  f8  : DWORD;
  f3C : TFichierCdn;
  f40 : TCanvas;
  f38 : TFont;
  f44 : TEnteteBasDePage;
  f48 : TEnteteBasDePage;
  f2C : DWORD;
  f30 : byte;  //erreur d''impression
  f4C : array of integer; //????????????
  f34 : boolean;
  f14 : DWORD;
  f1C : DWORD;
  fC  : DWORD;
  f10 : DWORD;
  f18 : DWORD;
  f20 : DWORD;
  f24 :DWORD;
  f28 :DWORD;
    f50:array of integer;//f50
    {procedure sub_00519534;//00519534
    procedure sub_0051954C;//0051954C
    function sub_00519578(a:dword; b:dword; c:dword):dword;//00519578}
    constructor create (a:TFichierCdn; b:TCanvas; c:TEnteteBasDePage; d:TEnteteBasDePage; e:dword; f:dword; g:boolean; i:dword);//0051992C
    function sub_00519A90:integer;//00519A90
    //function sub_00519AA8(a:TCanvas; b:AnsiString):dword;//00519AA8
    //function sub_00519AF8(a:dword; b:dword):dword;//00519AF8
    function sub_00519E00:dword;//00519E00
    function sub_00519E58:dword;//00519E58
    function sub_00519EB0:Boolean;//00519EB0}
  end;

implementation

//00519534
(*procedure TImpression.sub_00519534;
begin//0
  //00519534
  f4 := sub_00519578(f1C, f44, 1); //impression
end;//0


//0051954C
procedure TImpression.sub_0051954C;
begin//0
  //0051954C
  f8 := sub_00519578(f28 - f1C - 40, f48, 0);

end;//0


//00519578
function TImpression.sub_00519578(a:dword; b:TBlocTexte; c:dword):dword;
var
  lvar_14,lvar_18,lvar_1C ,lvar_8,lvar_C, lvar_10,lvar_4:Integer;
begin//0
  //00519578
  try//005195A3
    if (Trim(b.f4.f4) = '') then
    begin//005195B7
      if (Trim(b.f8.f4) = '') then
      begin//005195CB
        if (Trim(b.fC.f4) = '') then
        begin//005195DF
          EBX := 40;
          Exit;
        end;//4
      end;//3
    end;//

    f40.font.Name := f38.Name;
    if (c <> 0) then
    begin//00519608
      f40.font.Size := 10;
    end//2
    else
    begin//0051961A
      f40.font.Size := 8;
    end;//2
    f40.MoveTo(f14, a);
    f40.LineTo(f24 - f14, a);
    lvar_18  := f40.TextWidth(b.f4.f4);
    lvar_1C  := f40.TextWidth(b.f8.f4);
    lvar_20  := f40.TextWidth(b.fC.f4);
    lvar_C   := f40.TextHeight(b.f4.f4);
    lvar_10  := f40.TextHeight(b.f8.f4);
    lvar_14  := f40.TextHeight(b.fC.f4);
    if ( b.f4.f8 <> '') then //????
    begin//2
      //005196BD
      f40.Rectangle(f14,a + 8 ,a + 8 + lvar_8 + 10,f14 + lvar_14 + 5 );
    end;//2
    f40.TextOut(f14, a + 8 + 5, b.f4.f4);
    lvar_4 := TRUNC((fC - lvar_18) / 2){ Div -2147483648};
    if ( lvar_4<> 0) then
    begin//2//00519765
      f40.Rectangle(lvar_4 - 5, a + 8, a + 8 + lvar_C + 10,lvar_4 + lvar_18 + 5 );
    end;//2
    f40.TextOut(lvar_4, a + 8 + 5,b.f8.f4 );
    if (b.fC.f8 <> 0) then  //????????
    begin//2
      f40.Rectangle(f24 - f14 - lvar_1C - 5, a + 8, f24 - f14,a + 8 + lvar_10 + 10);//,f24 - f14 );
    end;//2
    f40.TextOut(f24 - lvar_1C - f14 - 5, a + 8 + 5, b.fC.f4);
    if (c <> 0) then
    begin//00519895
      f40.MoveTo(f14, lvar_C + a + 26);
      f40.LineTo(f24 - f14, lvar_C + a + 26);
    end;//2

    f40.font.Size := f38.Size;
    result := lvar_C + 40;
  finally//005198FE
  end;//1
  
end;//0
*)

//0051992C
constructor TImpression.Create(a:TFichierCdn; b:TCanvas; c:TEnteteBasDePage; d:TEnteteBasDePage; e:dword; f:dword; g:boolean; i:dword);
begin//0
  //0051992C
  inherited create;
  f3C := a;
  f40 := b;
  //f38 := i;
  //f40.Font := i;
  f44 := c;
  f48 := d;
  f2C := e;
  f30 := 0;//EAX
  //f4C := f;
  f34 := g;
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
    result := -1;
end;//0
(*

//00519AA8
function TImpression.sub_00519AA8(a:TCanvas; b:AnsiString):dword;
var
  lvar_4:AnsiString;
begin//0
  //00519AA8
    result := a.TextWidth(b);
end;//0

//00519AF8
function TImpression.sub_00519AF8(a:dword; b:dword):dword;
var
 Max : integer;
begin//0
  //00519AF8
  lvar_2 := b;
  lvar_1 := a;
  Max :=0;
  EBX := Self;
  try
    //00519B40
    f40.Name := f38.Name;
    f40.Size := f38.Size;
      for lvar_8 := 1 to byte(f3C.sub_004BEA58) do  //00519B94
      begin//00519B9B
        if (b <> 0) then
        begin//00519BA1
          lvar_20.sub_004BEA64(lvar_8, lvar_128);
          lvar_1C := lvar_28 + ' (R)';
        end//4
        else
        begin//00519BDF
          lvar_20.sub_004BEA64(lvar_8, lvar_128);
        end;//4
        if (a <> 0) then
        begin//00519C11
          lvar_20.sub_004C8BB8(lvar_8, lvar_128);
          lvar_18 := ' ' + lvar_1C + ' (' + lvar_12C + ')';
        end//4
        else
        begin//00519C67
          lvar_18 := ' ' + lvar_1C + ' ';
        end;//4
        if (sub_00519AA8(f40, lvar_18) > Max) then
        Max := sub_00519AA8(f40, lvar_18);
      end;//3
    if (f4C <> 0) then//00519CAB
        for lvar_10 := 0 to f4C.f8.count - 1 do //00519CC1
        begin//00519CCB
          if (f4C[lvar_10] = '') then
          EAX := f4C;
          EAX := f4C.f8;
          EDX := lvar_10;
          call(' ');
          lvar_130 :=  + lvar_134 + ' ';
          if (sub_00519AA8(f40, lvar_130) > Max) then 
          Max := sub_00519AA8(f40, lvar_130);
        end;//4
    end;//2
    if (f34 <> 0) then //00519D3C
      Max := sub_00519AA8(f40, IntToStr(lvar_14)) + Max + 10;
    
    result := Max + 20;//EBX
  finally//00519D8B
  end;//1
  
end;//0

*)
//00519E00
function TImpression.sub_00519E00:dword; // Nbre des ligne dans une page
var
  I,Count: Integer;
begin//0
  //00519E00
   Count := 0;
  if (f4C <> nil) then
  begin//00519E0C
     { for I := 0 to  f4C.f8.Count - 1 do
      begin//3
        //00519E27
        if (length(f4C[I]) = 0) then
        Count := Count + 1;
      end;//3}

    result := 0;//Count;

  end;
end;//0


//00519E58
function TImpression.sub_00519E58:dword;
begin//0
  //00519E58
  result := (f40.TextHeight('ALEXANDRE')+ 4)*(Byte(f3C.sub_004BEA58)+1);

end;//0

//00519EB0
function TImpression.sub_00519EB0:Boolean;
begin//0
  //00519EB0
  result := ((f40.TextHeight('ALEXANDRE') + 4) * sub_00519E00 + sub_00519E58 + 140 < Printer.PageHeight);
end;//0


end.
