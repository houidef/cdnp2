{***********************************************************
* Version Original V0.03 build 1                           *
* Decompiled by HOUIDEF AEK v 12:20 mercredi, août 29, 2018*
* The disassembly process : 100%                           *
************************************************************}
unit UWindow;

interface

uses
Forms, Windows,  SysUtils, Classes;

    function FindWindow(t:string):Boolean;//00497A28
    procedure findwindow2(s:string);//00497A3C
    procedure sub_00497A7C(a:AnsiString; var b:string);//00497A7C
    function Comparer2List(a:TStringlist; b:TStringlist):boolean;//00497B4C
    function FindPERSONNELLE:Boolean;//00497C3C
    function FindETABLISSEMENT:Boolean;//00497C70

implementation

//00497A28
function FindWindow(t:string):Boolean;
begin//0
  result := (FindWindowA(Pchar(t), '') <> 0);
end;//0

//00497A3C
procedure findwindow2(s:string);
var
 Wind:integer;
begin//0
  Wind:=FindWindowA(Pchar(s), '');
  if (Wind <> 0) then
  begin//1
    ShowWindow(Wind, 5);
    SetForegroundWindow(Wind);
  end;//1
end;//0

//00497A7C
procedure sub_00497A7C(a:AnsiString; var b:string);
var
  I:integer;
begin//0
    b := '';
      for I := 1 to Length(a) do//00497AB9
      begin//3
        //00497ABE
        if (ord(a[I]) + $E0{224} <= $5F{95}) then 
        begin//4
          //00497AD7
          //if ((ord(a[I]) + $E0{224}) And $7F{127})  in gvar_00497B40) then 
          b := b + a[I] ;
        end;//4
      end;//3
end;//0

//00497B4C
function Comparer2List(a:TStringList; b:TStringList):boolean;
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
function FindPERSONNELLE:Boolean;
begin//0
  //00497C3C
  result := (FindWindowA('TFormMarqueCdn', 'PERSONNELLE') <> 0);
end;//0


//00497C70
function FindETABLISSEMENT:Boolean;
begin//0
  //00497C70
  result := (FindWindowA('TFormMarqueCdn', 'ETABLISSEMENT') <> 0);
end;//0


end.