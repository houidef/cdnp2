unit QSort;

(*
 *  TQSort component version 1.0
 *  Copyright (c) 1996 by Vitaly Furman
 *  vf@etas.kharkov.ua
 *  http://www.geocities.com/SiliconValley/1593
 *
 *  Freeware - for both Delphi 1.0 & 2.0
 *  
 *  Full source code included
 *
 *  If you can, sponsor me by sending 5 american dollars
 *  to address below:
 *
 *  310202, Ukraine, Kharkov
 *  Prospekt Pobedy 60a, 144
 *  Vitaly Furman
 *
 *)

interface

uses Classes,SysUtils,windows;

type
  //TCompareProc 	= procedure( Sender : TObject; i, j : Integer; var Result : Integer ) of object ;
  //TSwapProc 	= procedure( Sender : TObject; i, j : Integer ) of object ;
  TSwapProc = procedure(Sender:TObject; e1:Word; i:Word; j:dword) of object;
  TCompareProc = procedure(Sender:TObject; e1:Word; i:Word; j:dword; Result:integer) of object;
  TQSort = class (TComponent)
  private
    FOnCompare: TCompareProc;
    FOnSwap: TSwapProc;
  protected
    function Compare(i, j : string): Integer;
    procedure Swap(var i,j:string);
  public
    procedure Sort(From : TStringlist; Count : Integer);
  published
    property OnCompare: TCompareProc read FOnCompare write FOnCompare;
    property OnSwap: TSwapProc read FOnSwap write FOnSwap;
  end;


procedure	Register;

implementation

{
************************************ TQSort ************************************
}
function TQSort.Compare(i, j : string): Integer;
var
  St1,St2:string;
  Val1,Val2:real;
begin
  Result := 0;
  St1 := Copy(i, Pos('->', i) + 2, Length(i));
  St2 := Copy(j, Pos('->', j) + 2, Length(j));
  
    try
      //004C4EC8
      Val1 := StrToFloat(St1);//lvar_120
      Val2 := StrToFloat(St2);
      if (Val2 > Val1) then
      begin//3
        //004C4F15
        Result := -1;
      end//3
	  else 
      if (Val2 < Val1) then
      begin//3
        //004C4F2D
        Result := 1;
      end//3
	  else
      Result := 0;
    except//2
      on E:EConvertError do
      begin//3
        
        Result := 0;//EDX
      end;//3
    end;//2  
  
  
  //if Assigned(FOnCompare) then
  	//FOnCompare(Self,i,j,Result);
end;

procedure TQSort.Sort(From : TStringlist; Count : Integer);
  procedure   Sort( iL, iR : Integer ) ;
  var
  	L, R, M : Integer ;
	s:string;
  begin
  	repeat
          	L := iL ;
              	R := iR ;
              	M := ( L + R ) div 2 ;
  
              	repeat
                  	while Compare(From[L],From[M] ) < 0 do Inc(L) ;
                  	while Compare( From[M], From[R] ) < 0 do Dec(R) ;
                  	if L <= R then begin
                      		//Swap( From[L], From[R] ) ;
							s:=From[L];
							From[L] := From[R];
							From[R]:= s;
                      		if M = L then
                          		M := R
                      		else if M = R then
                          		M := L ;
                      		Inc(L) ;
                      		Dec(R) ;
                  	end ;
              	until L > R ;
  
              	if ( R - iL ) > ( iR - L ) then begin {Sort left here}
                  	if L < iR then
                      		Sort( L, iR ) ;
                  	iR := R ;
              	end else begin
                  	if iL < R then
                      		Sort( iL, R ) ;
                  	iL := L ;
              	end ;
          until iL >= iR ;
  end ;
begin
  if Count > 1 then
  	Sort( 0, Count - 1 ) ;
end;

procedure TQSort.Swap(var i,j:string);
var
s:string;
begin
   s:= i;
   i:= j;
   j:= s;
  //if Assigned(FOnSwap) then
  	//FOnSwap(Self,i,j);
end;


procedure	Register;
begin
	RegisterComponents('Freeware',[TQSort]);
end;

initialization
end.
