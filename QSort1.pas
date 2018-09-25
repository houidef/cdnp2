//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit QSort;

interface

uses
  SysUtils, Classes;

type
  TSwapEvent = procedure(Sender:TObject; e1:Word; e2:Word) of object;
  TCompareEvent = procedure(Sender:TObject; e1:Word; e2:Word; var uneAction:Integer) of object;
  TQSort = class(TComponent)
  public
    Compare:TCompareEvent;//f28
    f2C:TFichierCdn;//f2C
    Swap:TSwapEvent;//f30
    f34:TFichierCdn;//f34
    //procedure sub_004B8778(?:?; ?:?; ?:?);//004B8778
    //procedure sub_004B8B48(?:TQSort; ?:TStringList; ?:?);//004B8B48
  end;


implementation

//004B8778


//004B8B48
procedure TQSort.sub_004B8B48(From:TStringList; count:dword);
var
  I,J:integer;
begin//0
  //004B8B48
  lvar_8 := From;
  lvar_4 := Self;
  EAX := Self;
  if (f2A = 0) then Exit;
  EAX := Self;
  if (f32 = 0) then Exit;
  if (count < 2) then Exit;
  EDX := count;
  EAX := 0;
  //BEGIN_EMBEDDED_004B8778
  procedure sub_004B8778(iL,:iR   Integer);
  begin//1
    //004B8778??? And ???
    lvar_4 := count;
    lvar_2 := From;
    lvar_C := 0;
	while () do 
	//if (lvar_4 <= 2) and (lvar_4 <> 2) then exit
    if (lvar_4 <= 2) then 
    begin//2
      //004B8795??? And ???
      if (lvar_4 = 2) then 
	  begin
			Compare(f2C,From,lvar_2,lvar_2 + 1,lvar_C );  
		  if (lvar_C > 0) then 
			Swap(f34,From,lvar_2,lvar_2 + 1);
	  end;
    end//2
	else 
	begin
	    //004B8824
		I := lvar_4 - 1 + lvar_2;  //ESI
		J := lvar_4 Shr 1 + lvar_2; // EBX
		//push ESI
		//push EAX
		EAX := Compare(f2C,From, J,lvar_C);
		if (lvar_C > 0) then
		begin//2
		  //004B8863??? And ???
		  //push ESI
		  Swap(f34,From,J);
		end;//2
		EAX := Compare(f2C,From,J, lvar_2,lvar_C );
		if (lvar_C > 0) then
		begin//2
		  //004B889B??? And ???
		  Swap(f34,From,J,lvar_2);
		end//2
		else
		begin//2
		  //004B88B6??? And ???
		  EAX := Compare(f2C,From,lvar_2,I,lvar_C );
		  if (lvar_C > 0) then
		  begin//3
			//004B88D7??? And ???
			Swap(f34,From,lvar_2,I);
		  end;//3
		end;//2
		if (lvar_4 = 3) then//004B88F5
		begin//2
		  Swap(f34,From,lvar_2,J);
		  Exit;
		end;//2
		lvar_6 := lvar_2 + 1;
		EBX := lvar_6;
		EAX := lvar_2;
		EAX := Compare(f2C,From,J,lvar_2,lvar_C );
		if (lvar_C <= 0) then//004B8956
		begin//2
		  if (lvar_C = 0) then//004B895C
		  begin//3
			Swap(f34,From,EBX,lvar_6);
			lvar_6 := lvar_6 + 1;
		  end;//3
		  if (ESI > EBX{lvar_6}) then//004B898A
		  begin//3
			EBX := EBX + 1;//EBX
			EAX := Compare(f2C,From,EBX,lvar_2, lvar_C);
			if (lvar_C <= 0) then Continue;
		  end;//3
		end;//2
		if (ESI > EBX{lvar_6}) then
		begin//2
		  //004B89BD??? And ???
		  EAX := Compare(f2C,From,lvar_2,ESI, EAX,lvar_C);
		  if (lvar_C < 0) then
		  begin//3
			//004B89DE??? And ???
			ESI := ESI - 1;//ESI
		  end//3
		  else
		  begin//3
			//004B89EB??? And ???
			Swap(f34,From,EBX,ESI);
			if (lvar_C <> 0) then
			begin//4
			  //004B8A06
			  EBX := EBX + 1;//EBX
			  ESI := ESI - 1;//ESI
			end;//4
		  end;//3
		  if (ESI > EBX) then Continue;
		end;//2
		if (ESI > EBX) then Continue;

		EAX := Compare(f2C,From,EBX,lvar_2,lvar_C );
		if (lvar_C <= 0) then//004B8A4F
		begin//2
		  EBX := EBX + 1;//EBX
		end;//2
		lvar_8 := EBX - 1;//EAX
		ESI := lvar_2;
		repeat 
			Swap(f34,From,ESI,lvar_8);
			ESI := ESI + 1;//ESI
			lvar_8 := lvar_8 - 1;
		until ((ESI >= lvar_6) or (lvar_8 < lvar_6));//004B8AB3
			ESI := EBX - lvar_6;
			EDX :=  lvar_4 + lvar_2 - EAX;
			lvar_4 := EDX;
			if (ESI <= lvar_4) then Break;
			EAX := lvar_C;//edp+8
			sub_004B8778(lvar_6,lvar_4);
			lvar_4 := ESI;
		jmp --> while
		EAX := lvar_C;//edp+8
		sub_004B8778(lvar_2,ESI);
		lvar_2 := EBX;
		jmp --> while
	end;
  end;//1
  //END_EMBEDDED_004B8778
  sub_004B8778(0,lvar_2);
end;//0



end.