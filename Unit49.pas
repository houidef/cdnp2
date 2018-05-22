//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit Unit49;

interface

uses
Forms, Windows,  SysUtils, Classes;

    function FindWindow(t:string):Boolean;//00497A28
    procedure findwindow2(s:string);//00497A3C
    procedure sub_00497A7C(a:AnsiString; var b:dword);//00497A7C
    function sub_00497B4C(a:TStringlist; b:TStringlist):boolean;//00497B4C
    function sub_00497C3C:Boolean;//00497C3C
    function sub_00497C70:Boolean;//00497C70

implementation

//00497A28
function FindWindow(t:string):Boolean;
begin//0
  //00497A28 
  result := (FindWindowA(Pchar(t), '') <> 0);
end;//0

//00497A3C
procedure findwindow2(s:string);
var
 Wind:integer;
begin//0
  //00497A3C
  Wind:=FindWindowA(Pchar(s), '');
  if (Wind <> 0) then
  begin//1
    //00497A57
    ShowWindow(Wind, 5);
    SetForegroundWindow(Wind);
  end;//1
end;//0

//00497A7C
procedure sub_00497A7C(a:AnsiString; var b:dword);
var
  I,lvar_8:integer;
begin//0
  //00497A7C
    //00497AA3
    lvar_8 := 0;
      for I := 1 to Length(a) do//00497AB9
      begin//3
        //00497ABE
        if (ord(a[I]) + $E0{224} <= $5F{95}) then
        begin//4
          //00497AD7
          //if ((ord(a[I]) + $E0{224}) And $7F{127})  in gvar_00497B40) then 
          lvar_8 := lvar_8 + ord(a[I]) ;
        end;//4
      end;//3
    
    b := lvar_8;
	//00497B24
  
end;//0

//00497B4C
function sub_00497B4C(a:TStringList; b:TStringList):boolean;
var
 I:integer;
begin//0
  //00497B4C

    //00497B73
    result := true;

    if (a.Count <> b.Count) then//00497B8D
      result := false
    else
    begin//2
      //00497B93
        for I := 0 to a.Count - 1 do //00497BAB
        begin//4
          //00497BAE
          if (Trim(UpperCase(a[I])) <> Trim(UpperCase(b[I]))) then
          begin//5
            //00497C03
            result := false;
          end;//5
        end;//4
    end;//2
    
	//00497C1B
  
end;//0

//00497C3C
function sub_00497C3C:Boolean;
begin//0
  //00497C3C
  result := (FindWindowA('TFormMarqueCdn', 'PERSONNELLE') <> 0);
end;//0


//00497C70
function sub_00497C70:Boolean;
begin//0
  //00497C70
  result := (FindWindowA('TFormMarqueCdn', 'ETABLISSEMENT') <> 0);
end;//0


end.