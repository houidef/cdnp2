{***************************************
* Version Original V0.01
* Decompiled by HOUIDEF AEK v.16:39 mardi 20 février 2018
***************************************}
unit Unit51;

interface

uses
Forms, Windows,  SysUtils, Classes,dialogs;
    procedure sub_00497D18_v1(a:String; b:string; c:dword;var  d:string);
    procedure sub_00497D18(a:String; b:string; c:dword;var  d:string);//00497D18
    function sub_004981D4(NomUser:String; CleUser:string;c:dword):boolean;//004981D4 
var
Const1 : string = 'Carnet de Notes';
Const2 : string = 'cdn2.0';
implementation
procedure sub_00497D18_v1(a:String; b:string; c:dword;var  d:string);
asm
                       push        ebp
                       mov         ebp,esp
                       add         esp,0FFFFFCC4h
                       push        ebx
                       push        esi
                       push        edi
                       xor         ebx,ebx
                       mov         dword ptr [ebp-33Ch],ebx
                       mov         dword ptr [ebp-334h],ebx
                       mov         dword ptr [ebp-338h],ebx
                       mov         dword ptr [ebp-330h],ebx
                       mov         dword ptr [ebp-32Ch],ebx
                       mov         dword ptr [ebp-324h],ebx
                       mov         dword ptr [ebp-328h],ebx
                       mov         esi,edx
                       lea         edi,[ebp-220h]
                       push        ecx
                       xor         ecx,ecx
                       mov         cl,byte ptr [esi]
                       inc         ecx
                       rep movs    byte ptr [edi],byte ptr [esi]
                       pop         ecx
                       mov         esi,eax
                       lea         edi,[ebp-120h]
                       push        ecx
                       xor         ecx,ecx
                       mov         cl,byte ptr [esi]
                       inc         ecx
                       rep movs    byte ptr [edi],byte ptr [esi]
                       pop         ecx
                       mov         edi,dword ptr [ebp+8h]
                       xor         eax,eax
                       push        ebp
                       push        49819Ch
                       push        dword ptr fs:[eax]
                       mov         dword ptr fs:[eax],esp
                       test        cl,cl
                       je          @@Label_00498081
                       mov         dword ptr [ebp-20h],0
                       mov         dword ptr [ebp-1Ch],0
                       movzx       esi,byte ptr [ebp-120h]
                       sub         esi,1
                       jno         @@Label_00497DAA
                       call       system.@IntOver
@@Label_00497DAA:      test        esi,esi
                       jl          @@Label_00497DF9
                       inc         esi
                       xor         ebx,ebx
@@Label_00497DB1:      cmp         ebx,0FFh
@@Label_00497DB7:      jbe         @@Label_00497DBE
                       call       system.@BoundErr
@@Label_00497DBE:      xor         eax,eax
                       mov         al,byte ptr [ebp+ebx-120h]
                       imul        eax,eax,16h
@@Label_00497DCA:       jno         @@Label_00497DD1
                       call       system.@IntOver
@@Label_00497DD1:        add         eax,7B1h
                      jno         @@Label_00497DDD
                       call       system.@IntOver
@@Label_00497DDD:        and         eax,1
                       xor         edx,edx
                       add         eax,dword ptr [ebp-20h]
                       adc         edx,dword ptr [ebp-1Ch]
                      jno         @@Label_00497DEF
                       call       system.@IntOver
@@Label_00497DEF:        mov         dword ptr [ebp-20h],eax
                       mov         dword ptr [ebp-1Ch],edx
                       inc         ebx
                       dec         esi
                      jne         @@Label_00497DB1
@@Label_00497DF9:         push        dword ptr [ebp-1Ch]
                       push        dword ptr [ebp-20h]
                       mov         eax,4227Ah
                       xor         edx,edx
                       call       system.@_llmulo
                      jno         @@Label_00497E12
                       call       system.@IntOver
@@Label_00497E12:      push        edx
                       push        eax
                       mov         eax,1
                       mov         edx,Const1
                       dec         eax
                       cmp         eax,dword ptr [edx-4]
                       jb          @@Label_00497E29
                       call       system.@BoundErr
@@Label_00497E29:      inc         eax
                       movzx       eax,byte ptr [edx+eax-1]
                       imul        eax,eax,0Fh
@@Label_00497E32:       jno         @@Label_00497E39
                       call       system.@IntOver
@@Label_00497E39:      cdq
                       add         eax,dword ptr [esp]
                       adc         edx,dword ptr [esp+4]
                       jno         @@Label_00497E48
                       call       system.@IntOver
@@Label_00497E48:      add         esp,8
                       mov         dword ptr [ebp-8h],eax
                       mov         dword ptr [ebp-4h],edx
                       mov         dword ptr [ebp-20h],0
                       mov         dword ptr [ebp-1Ch],0
                       movzx       esi,byte ptr [ebp-220h]
                       test        esi,esi
                       jle         @@Label_00497EA1
                       mov         ebx,1
@@Label_00497E6F:      cmp         ebx,0FFh
                       jbe         @@Label_00497E7C
                       call       system.@BoundErr
@@Label_00497E7C:      mov         al,byte ptr [ebp+ebx-220h]
                       and         eax,0FFh
                       xor         edx,edx
                       add         eax,dword ptr [ebp-20h]
                       adc         edx,dword ptr [ebp-1Ch]
                       jno         @@Label_00497E97
                       call       system.@IntOver
@@Label_00497E97:      mov         dword ptr [ebp-20h],eax
                       mov         dword ptr [ebp-1Ch],edx
                       inc         ebx
                       dec         esi
                       jne         @@Label_00497E6F
@@Label_00497EA1:      mov         eax,dword ptr [ebp-8h]
                       mov         edx,dword ptr [ebp-4h]
                       add         eax,dword ptr [ebp-20h]
                       adc         edx,dword ptr [ebp-1Ch]
                      jno         @@Label_00497EB4
                       call       system.@IntOver
@@Label_00497EB4:        mov         dword ptr [ebp-10h],eax
                       mov         dword ptr [ebp-0Ch],edx
                       mov         dword ptr [ebp-20h],0
                       mov         dword ptr [ebp-1Ch],0
                       mov         ebx,1
@@Label_00497ECD:        mov         eax,const2
                       dec         ebx
                       cmp         ebx,dword ptr [eax-4h]
                      jb          @@Label_00497EDD
                       call       system.@BoundErr
@@Label_00497EDD:        inc         ebx
                       mov         al,byte ptr [eax+ebx-1h]
                       and         eax,0FFh
                       xor         edx,edx
                       add         eax,dword ptr [ebp-20h]
                       adc         edx,dword ptr [ebp-1Ch]
                      jno         @@Label_00497EF6
                       call       system.@IntOver
@@Label_00497EF6:        mov         dword ptr [ebp-20h],eax
                       mov         dword ptr [ebp-1Ch],edx
                       inc         ebx
                       cmp         ebx,7h
                      jne         @@Label_00497ECD
                       push        dword ptr [ebp-1Ch]
                       push        dword ptr [ebp-20h]
                       lea         eax,[ebp-324h]
                       call        IntToStr
                       lea         eax,[ebp-324h]
                       push        eax
                       push        dword ptr [ebp-0Ch]
                       push        dword ptr [ebp-10h]
                       lea         eax,[ebp-328h]
                       call        IntToStr
                       mov         edx,dword ptr [ebp-328h]
                       pop         eax
                       call       system.@LStrCat
                       mov         edx,dword ptr [ebp-324h]
                       lea         eax,[ebp-320h]
                       mov         ecx,0FFh
                       call       system.@LStrToString
                       mov         dword ptr [ebp-20h],0
                       mov         dword ptr [ebp-1Ch],0
                       xor         eax,eax
                       mov         al,byte ptr [ebp-320h]
                       mov         ebx,eax
                       mov         esi,eax
                       sub         esi,3h
                      jno         @@Label_00497F71
                       call       system.@IntOver
@@Label_00497F71:      sub         esi,ebx
                      jg          @@Label_00497FB8
                       dec         esi
@@Label_00497F76:        lea         eax,[ebp-32Ch]
                       cmp         ebx,0FFh
                      jbe         @@Label_00497F89
                       call       system.@BoundErr
@@Label_00497F89:        mov         dl,byte ptr [ebp+ebx-320h]
                       call       system.@LStrFromChar
                       mov         eax,dword ptr [ebp-32Ch]
                       call        StrToInt
                       cdq
                       add         eax,dword ptr [ebp-20h]
                       adc         edx,dword ptr [ebp-1Ch]
                      jno         @@Label_00497FAE
                       call       system.@IntOver
@@Label_00497FAE:        mov         dword ptr [ebp-20h],eax
                       mov         dword ptr [ebp-1Ch],edx
                       dec         ebx
                       inc         esi
                      jne         @@Label_00497F76
@@Label_00497FB8:        push        dword ptr [ebp-1Ch]
                       push        dword ptr [ebp-20h]
                       push        dword ptr [ebp-1Ch]
                       push        dword ptr [ebp-20h]
                       push        dword ptr [ebp-1Ch]
                       push        dword ptr [ebp-20h]
                       push        dword ptr [ebp-1Ch]
                       push        dword ptr [ebp-20h]
                       mov         eax,dword ptr [ebp-20h]
                       mov         edx,dword ptr [ebp-1Ch]
                       call       system.@_llmulo
                      jno         @@Label_00497FE2
                       call       system.@IntOver
@@Label_00497FE2:        call       system.@_llmulo
                      jno         @@Label_00497FEE
                       call       system.@IntOver
@@Label_00497FEE:        call       system.@_llmulo
                      jno         @@Label_00497FFA
                       call       system.@IntOver
@@Label_00497FFA:        call       system.@_llmulo
                      jno         @@Label_00498006
                       call       system.@IntOver
@@Label_00498006:        push        edx
                       push        eax
                       push        dword ptr [ebp-1Ch]
                       push        dword ptr [ebp-20h]
                       push        dword ptr [ebp-1Ch]
                       push        dword ptr [ebp-20h]
                       mov         eax,2h
                       xor         edx,edx
                       call       system.@_llmulo
                      jno         @@Label_00498027
                       call       system.@IntOver
@@Label_00498027:        call       system.@_llmulo
                      jno         @@Label_00498033
                       call       system.@IntOver
@@Label_00498033:        add         eax,dword ptr [esp]
                       adc         edx,dword ptr [esp+4]
                      jno         @@Label_00498041
                       call       system.@IntOver
@@Label_00498041:        add         esp,8h
                       add         eax,35C6Dh
                       adc         edx,0h
                      jno         @@Label_00498053
                       call       system.@IntOver
@@Label_00498053:        mov         dword ptr [ebp-18h],eax
                       mov         dword ptr [ebp-14h],edx
                       push        dword ptr [ebp-14h]
                       push        dword ptr [ebp-18h]
                       lea         eax,[ebp-330h]
                       call        IntToStr
                       mov         edx,dword ptr [ebp-330h]
                       mov         eax,edi
                       mov         ecx,0FFh
                       call       system.@LStrToString
                      jmp         @@Label_0049817E
@@Label_00498081:        lea         eax,[ebp-334h]
                       lea         edx,[ebp-120h]
                       call       system.@LStrFromString
                       lea         eax,[ebp-334h]
                       push        eax
                       lea         eax,[ebp-338h]
                       lea         edx,[ebp-220h]
                       call       system.@LStrFromString
                       mov         edx,dword ptr [ebp-338h]
                       pop         eax
                       call       system.@LStrCat
                       mov         edx,dword ptr [ebp-334h]
                       lea         eax,[ebp-320h]
                       mov         ecx,0FFh
                       call       system.@LStrToString
                       mov         dword ptr [ebp-20h],0
                       mov         dword ptr [ebp-1Ch],0
                       movzx       esi,byte ptr [ebp-320h]
                       sub         esi,1h
                      jno         @@Label_004980EB
                       call       system.@IntOver
@@Label_004980EB:        test        esi,esi
                      jl          @@Label_0049812B
                       inc         esi
                       xor         ebx,ebx
@@Label_004980F2:        cmp         ebx,0FFh
                      jbe         @@Label_004980FF
                       call       system.@BoundErr
@@Label_004980FF:        xor         eax,eax
                       mov         al,byte ptr [ebp+ebx-320h]
                       imul        eax,eax,16h
                      jno         @@Label_00498112
                       call       system.@IntOver
@@Label_00498112:        xor         edx,edx
                       add         eax,dword ptr [ebp-20h]
                       adc         edx,dword ptr [ebp-1Ch]
                      jno         @@Label_00498121
                       call       system.@IntOver
@@Label_00498121:        mov         dword ptr [ebp-20h],eax
                       mov         dword ptr [ebp-1Ch],edx
                       inc         ebx
                       dec         esi
                      jne         @@Label_004980F2
@@Label_0049812B:      push        dword ptr [ebp-1Ch]
                       push        dword ptr [ebp-20h]
                       push        dword ptr [ebp-1Ch]
                       push        dword ptr [ebp-20h]
                       mov         eax,dword ptr [ebp-20h]
                       mov         edx,dword ptr [ebp-1Ch]
                       call       system.@_llmulo
                       jno         @@Label_00498149
                       call       system.@IntOver
@@Label_00498149:      call       system.@_llmulo
                       jno         @@Label_00498155
                       call       system.@IntOver
@@Label_00498155:      mov         dword ptr [ebp-18h],eax
                       mov         dword ptr [ebp-14h],edx
                       push        dword ptr [ebp-14h]
                       push        dword ptr [ebp-18h]
                       lea         eax,[ebp-33Ch]
                       call        IntToStr
                       mov         edx,dword ptr [ebp-33Ch]
                       mov         eax,edi
                       mov         ecx,0FFh
                       call       system.@LStrToString
@@Label_0049817E:      xor         eax,eax
{                       pop         edx
                       pop         ecx
                       pop         ecx
                       mov         dword ptr fs:[eax],edx
                       push        4981A3
@@Label_0049818B:      lea         eax,[ebp-33C]
                       mov         edx,7
                       call        @LStrArrayClr
                       ret
                       jmp         @HandleFinally
                       jmp         @@Label_0049818B}
                       pop         edi
                       pop         esi
                       pop         ebx
                       mov         esp,ebp
                       pop         ebp
                      // ret         4
end;
//00497D18
procedure sub_00497D18(a:String; b:string; c:dword;var  d:string);
var
  lvar_20:int64;
  Text,lvar_320 : string[255];
  I:integer;
begin//0
  //00497D18

    if (c <> 0) then
    begin//00497D8B
      lvar_20 := 0;
        
       (* for I := 0 to length(a) - 1 do //00497DAE
          lvar_20 := (ord(22 * a[I] + 1969) And 1) + lvar_20;

      lvar_20:=lvar_20 * $4227A;

      EAX := 1;
      Text := 'Carnet de Notes';
      EAX := EAX - 1;//EAX
	  if(EAX = [EDX-4]) then error
      EAX := EAX + 1;//EAX
	  
      EAX = EDX[EAX-1]
	  EAX := 15 * EAX;
	  
	  lvar_20 = lvar_20+esp //EAX := EAX + lvar_350{270970 * EAX{EAX}};
      lvar_4 := 15 * EDX[EAX];
	  
      lvar_20 := 0;
    
   
	  for I := 1 to length(b) do //00497E6A
	  begin//00497E6F
	   lvar_20 := byte(b[I]) + lvar_20;
	  end;//4

      lvar_10 := lvar_8 + lvar_20;
     
	 
      lvar_20 := 0;
      lvar_1C := 0;
      text := 'cdn2.0'
      for I := 1 to 6 do
      begin//00497ECD
        lvar_20 := byte(Text[I]) + lvar_20;
      end;//3
     
      lvar_328 := IntToStr(lvar_20) + IntToStr(lvar_10);
      lvar_320 := lvar_328;
	  
	  
      lvar_20 := 0;
      EBX := length(lvar_320);

      ESI := length(lvar_320) - 3 - EBX;//ESI - lvar_324
        for ESI := lvar_324 to ESI + lvar_324 - 1 do  //00497F75
        begin//4
          //00497F76
          lvar_32C := lvar_320[ebx];
		  lvar_20:=strtoint(lvar_32C)+lvar_20;
        end;//4
     
      lvar_20 := lvar_20*lvar_20*lvar_20*lvar_20;
	  lvar_20 := 2*lvar_20*lvar_20*lvar_20;

      lvar_20 := lvar_20 + lvar_350;
      lvar_20 := lvar_20 + $35C6D;*)
	  d := inttostr(lvar_20);
    end
	else 
	begin

		lvar_320 := a + b;
		 
		lvar_20 := 0;
		
		for I := 0 to length(lvar_320) - 1 do //004980EF
		begin//004980F2
		   
			lvar_20 := 22 * ord(lvar_320[I])+ lvar_20;
	    end;//3
	   

		lvar_20 := lvar_20 * lvar_20 * lvar_20;
		d := IntToStr(lvar_20);
	end;
end;//0


//004981D4
function sub_004981D4(NomUser:String; CleUser:string;c:dword):boolean;
var
  buf : string;
begin//0
  //004981D4
    if (Trim(NomUser) <> '') then
    begin//0049824B
      sub_00497D18(NomUser, '27572cdn2.x', c,buf);
      result := (CleUser = buf);
	  //sub_00497D18_v1(NomUser, '27572cdn2.x', CleUser,buf);
    end
	else 
    result := false;

end;

end.