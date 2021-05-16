{***********************************************************
* Version Original V0.03 build 1                           *
* Decompiled by Houidef AEK v 12:20 mercredi, août 29, 2018*
* The disassembly process : 50%                            *
************************************************************}
unit _Unit112;

interface

uses
  SysUtils, Classes;

    procedure __GetStrPeriodeMin(a:TStringList; var b:String);//004BDB3C
    procedure __GetStrPeriodeMax(a:TStringList; var b:string);//004BDCFC
    procedure __GetStrPeriodeMoy(a:TStringList; var b:string);//004BDEBC
    procedure sub_004BDFE8(a:TStringList; var b:string);//004BDFE8
    procedure sub_004BE1C4(a:TStringList; var b:string);//004BE1C4
    procedure sub_004BE364(a:TStringList; var b:string);//004BE364

implementation

//004BDB3C
procedure __GetStrPeriodeMin(a:TStringList; var b:String);
var
I,J,L :integer;
Res,Min :real;
K:boolean;
begin//0
  //004BDB3C

    //004BDB64
    Min := 0;
    L := 0;
    K := false;
    if (a.Count - 1 >= 0) then
    begin//2
      //004BDB93
      I := a.Count;
	  repeat
      J := 0;
      try
        //004BDBAC
        if (K) then
        begin//4
          //004BDBB2
          Res := StrToFloat(a[J]);
          if (Res < Min ) then
          begin//5
            //004BDBD9
            Min := Res;
            //lvar_14 := lvar_24;
            //lvar_10 := lvar_20;
          end;//5
          L := L + 1;
        end//4
        else
        begin//4
          //004BDBFA
          try
            //004BDC08
            Min := StrToFloat(a[J]);
            L := L + 1;
            K := true;
          except//5
            on E:EConvertError do
            begin//6
              //004BDC4C
             // EAX := 0;
            end;//6
          end;//5
        end;//4
      except//3
        on E:EConvertError do
        begin//4
          //004BDC7B
        end;//4
      end;//3
      J := J + 1;
      I := I - 1;
      until (I = 0);//004BDC93
    end;//2
    if (L > 0) then
    begin//2
      //004BDC99
      //EAX := lvar_10;

       b := FloatToStrF(Min,{2}ffFixed, $12{18}, 2);
      
    end//2
	else
		b := '';
    //004BDCDE

end;//0

//004BDCFC
procedure __GetStrPeriodeMax(a:TStringList; var b:string);
begin
b:='01';
{*
 004BDCFC    push        ebp
 004BDCFD    mov         ebp,esp
 004BDCFF    add         esp,0FFFFFFBC
 004BDD02    push        ebx
 004BDD03    push        esi
 004BDD04    push        edi
 004BDD05    xor         ecx,ecx
 004BDD07    mov         dword ptr [ebp-44],ecx
 004BDD0A    mov         dword ptr [ebp-40],ecx
 004BDD0D    mov         dword ptr [ebp-3C],ecx
 004BDD10    mov         dword ptr [ebp-8],edx
 004BDD13    mov         dword ptr [ebp-4],eax
 004BDD16    xor         eax,eax
 004BDD18    push        ebp
 004BDD19    push        4BDEAC
 004BDD1E    push        dword ptr fs:[eax]
 004BDD21    mov         dword ptr fs:[eax],esp
 004BDD24    xor         eax,eax
 004BDD26    mov         dword ptr [ebp-18],eax
 004BDD29    mov         dword ptr [ebp-14],eax
 004BDD2C    mov         word ptr [ebp-10],ax
 004BDD30    xor         eax,eax
 004BDD32    mov         dword ptr [ebp-30],eax
 004BDD35    mov         byte ptr [ebp-31],0
 004BDD39    mov         eax,dword ptr [ebp-4]
 004BDD3C    mov         edx,dword ptr [eax]
 004BDD3E    call        dword ptr [edx+14]
 004BDD41    sub         eax,1
>004BDD44    jno         004BDD4B
 004BDD46    call        @IntOver
 004BDD4B    test        eax,eax
>004BDD4D    jl          004BDE53
 004BDD53    inc         eax
 004BDD54    mov         dword ptr [ebp-38],eax
 004BDD57    mov         dword ptr [ebp-2C],0
 004BDD5E    xor         eax,eax
 004BDD60    push        ebp
 004BDD61    push        4BDE2A
 004BDD66    push        dword ptr fs:[eax]
 004BDD69    mov         dword ptr fs:[eax],esp
 004BDD6C    cmp         byte ptr [ebp-31],0
>004BDD70    je          004BDDBA
 004BDD72    lea         ecx,[ebp-3C]
 004BDD75    mov         edx,dword ptr [ebp-2C]
 004BDD78    mov         eax,dword ptr [ebp-4]
 004BDD7B    mov         ebx,dword ptr [eax]
 004BDD7D    call        dword ptr [ebx+0C]
 004BDD80    mov         eax,dword ptr [ebp-3C]
 004BDD83    call        StrToFloat
 004BDD88    fstp        tbyte ptr [ebp-28]
 004BDD8B    wait
 004BDD8C    fld         tbyte ptr [ebp-28]
 004BDD8F    fld         tbyte ptr [ebp-18]
 004BDD92    fcompp
 004BDD94    fnstsw      al
 004BDD96    sahf
>004BDD97    jae         004BDDAD
 004BDD99    mov         eax,dword ptr [ebp-28]
 004BDD9C    mov         dword ptr [ebp-18],eax
 004BDD9F    mov         eax,dword ptr [ebp-24]
 004BDDA2    mov         dword ptr [ebp-14],eax
 004BDDA5    mov         ax,word ptr [ebp-20]
 004BDDA9    mov         word ptr [ebp-10],ax
 004BDDAD    add         dword ptr [ebp-30],1
>004BDDB1    jno         004BDDB8
 004BDDB3    call        @IntOver
>004BDDB8    jmp         004BDE20
 004BDDBA    xor         eax,eax
 004BDDBC    push        ebp
 004BDDBD    push        4BDDFB
 004BDDC2    push        dword ptr fs:[eax]
 004BDDC5    mov         dword ptr fs:[eax],esp
 004BDDC8    lea         ecx,[ebp-40]
 004BDDCB    mov         edx,dword ptr [ebp-2C]
 004BDDCE    mov         eax,dword ptr [ebp-4]
 004BDDD1    mov         ebx,dword ptr [eax]
 004BDDD3    call        dword ptr [ebx+0C]
 004BDDD6    mov         eax,dword ptr [ebp-40]
 004BDDD9    call        StrToFloat
 004BDDDE    fstp        tbyte ptr [ebp-18]
 004BDDE1    wait
 004BDDE2    add         dword ptr [ebp-30],1
>004BDDE6    jno         004BDDED
 004BDDE8    call        @IntOver
 004BDDED    mov         byte ptr [ebp-31],1
 004BDDF1    xor         eax,eax
 004BDDF3    pop         edx
 004BDDF4    pop         ecx
 004BDDF5    pop         ecx
 004BDDF6    mov         dword ptr fs:[eax],edx
>004BDDF9    jmp         004BDE20
>004BDDFB    jmp         @HandleOnException
 004BDE00    dd          1
 004BDE04    dd          00409B50;EConvertError
 004BDE08    dd          004BDE0C
 004BDE0C    call        @DoneExcept
 004BDE11    xor         eax,eax
 004BDE13    pop         edx
 004BDE14    pop         ecx
 004BDE15    pop         ecx
 004BDE16    mov         dword ptr fs:[eax],edx
>004BDE19    jmp         004BDE47
 004BDE1B    call        @DoneExcept
 004BDE20    xor         eax,eax
 004BDE22    pop         edx
 004BDE23    pop         ecx
 004BDE24    pop         ecx
 004BDE25    mov         dword ptr fs:[eax],edx
>004BDE28    jmp         004BDE47
>004BDE2A    jmp         @HandleOnException
 004BDE2F    dd          1
 004BDE33    dd          00409B50;EConvertError
 004BDE37    dd          004BDE3B
 004BDE3B    call        @DoneExcept
>004BDE40    jmp         004BDE47
 004BDE42    call        @DoneExcept
 004BDE47    inc         dword ptr [ebp-2C]
 004BDE4A    dec         dword ptr [ebp-38]
>004BDE4D    jne         004BDD5E
 004BDE53    cmp         dword ptr [ebp-30],0
>004BDE57    jle         004BDE8B
 004BDE59    mov         ax,word ptr [ebp-10]
 004BDE5D    push        eax
 004BDE5E    push        dword ptr [ebp-14]
 004BDE61    push        dword ptr [ebp-18]
 004BDE64    lea         eax,[ebp-44]
 004BDE67    push        eax
 004BDE68    mov         ecx,2
 004BDE6D    mov         edx,12
 004BDE72    mov         al,2
 004BDE74    call        FloatToStrF
 004BDE79    mov         edx,dword ptr [ebp-44]
 004BDE7C    mov         eax,dword ptr [ebp-8]
 004BDE7F    mov         ecx,0FF
 004BDE84    call        @LStrToString
>004BDE89    jmp         004BDE91
 004BDE8B    mov         eax,dword ptr [ebp-8]
 004BDE8E    mov         byte ptr [eax],0
 004BDE91    xor         eax,eax
 004BDE93    pop         edx
 004BDE94    pop         ecx
 004BDE95    pop         ecx
 004BDE96    mov         dword ptr fs:[eax],edx
 004BDE99    push        4BDEB3
 004BDE9E    lea         eax,[ebp-44]
 004BDEA1    mov         edx,3
 004BDEA6    call        @LStrArrayClr
 004BDEAB    ret
>004BDEAC    jmp         @HandleFinally
>004BDEB1    jmp         004BDE9E
 004BDEB3    pop         edi
 004BDEB4    pop         esi
 004BDEB5    pop         ebx
 004BDEB6    mov         esp,ebp
 004BDEB8    pop         ebp
 004BDEB9    ret
*}
end;

//004BDEBC
procedure __GetStrPeriodeMoy(a:TStringList; var b:string);
begin
b:='02';
{*
 004BDEBC    push        ebp
 004BDEBD    mov         ebp,esp
 004BDEBF    add         esp,0FFFFFFD4
 004BDEC2    push        ebx
 004BDEC3    push        esi
 004BDEC4    push        edi
 004BDEC5    xor         ecx,ecx
 004BDEC7    mov         dword ptr [ebp-2C],ecx
 004BDECA    mov         dword ptr [ebp-28],ecx
 004BDECD    mov         dword ptr [ebp-8],edx
 004BDED0    mov         dword ptr [ebp-4],eax
 004BDED3    xor         eax,eax
 004BDED5    push        ebp
 004BDED6    push        4BDFD7
 004BDEDB    push        dword ptr fs:[eax]
 004BDEDE    mov         dword ptr fs:[eax],esp
 004BDEE1    xor         eax,eax
 004BDEE3    mov         dword ptr [ebp-20],eax
 004BDEE6    xor         eax,eax
 004BDEE8    mov         dword ptr [ebp-18],eax
 004BDEEB    mov         dword ptr [ebp-14],eax
 004BDEEE    mov         word ptr [ebp-10],ax
 004BDEF2    mov         eax,dword ptr [ebp-4]
 004BDEF5    mov         edx,dword ptr [eax]
 004BDEF7    call        dword ptr [edx+14]
 004BDEFA    sub         eax,1
>004BDEFD    jno         004BDF04
 004BDEFF    call        @IntOver
 004BDF04    test        eax,eax
>004BDF06    jl          004BDF7A
 004BDF08    inc         eax
 004BDF09    mov         dword ptr [ebp-24],eax
 004BDF0C    mov         dword ptr [ebp-1C],0
 004BDF13    xor         eax,eax
 004BDF15    push        ebp
 004BDF16    push        4BDF55
 004BDF1B    push        dword ptr fs:[eax]
 004BDF1E    mov         dword ptr fs:[eax],esp
 004BDF21    lea         ecx,[ebp-28]
 004BDF24    mov         edx,dword ptr [ebp-1C]
 004BDF27    mov         eax,dword ptr [ebp-4]
 004BDF2A    mov         ebx,dword ptr [eax]
 004BDF2C    call        dword ptr [ebx+0C]
 004BDF2F    mov         eax,dword ptr [ebp-28]
 004BDF32    call        StrToFloat
 004BDF37    fld         tbyte ptr [ebp-18]
 004BDF3A    faddp       st(1),st
 004BDF3C    fstp        tbyte ptr [ebp-18]
 004BDF3F    wait
 004BDF40    add         dword ptr [ebp-20],1
>004BDF44    jno         004BDF4B
 004BDF46    call        @IntOver
 004BDF4B    xor         eax,eax
 004BDF4D    pop         edx
 004BDF4E    pop         ecx
 004BDF4F    pop         ecx
 004BDF50    mov         dword ptr fs:[eax],edx
>004BDF53    jmp         004BDF72
>004BDF55    jmp         @HandleOnException
 004BDF5A    dd          1
 004BDF5E    dd          00409B50;EConvertError
 004BDF62    dd          004BDF66
 004BDF66    call        @DoneExcept
>004BDF6B    jmp         004BDF72
 004BDF6D    call        @DoneExcept
 004BDF72    inc         dword ptr [ebp-1C]
 004BDF75    dec         dword ptr [ebp-24]
>004BDF78    jne         004BDF13
 004BDF7A    cmp         dword ptr [ebp-20],0
>004BDF7E    jle         004BDFB6
 004BDF80    fild        dword ptr [ebp-20]
 004BDF83    fld         tbyte ptr [ebp-18]
 004BDF86    fdivrp      st(1),st
 004BDF88    add         esp,0FFFFFFF4
 004BDF8B    fstp        tbyte ptr [esp]
 004BDF8E    wait
 004BDF8F    lea         eax,[ebp-2C]
 004BDF92    push        eax
 004BDF93    mov         ecx,2
 004BDF98    mov         edx,12
 004BDF9D    mov         al,2
 004BDF9F    call        FloatToStrF
 004BDFA4    mov         edx,dword ptr [ebp-2C]
 004BDFA7    mov         eax,dword ptr [ebp-8]
 004BDFAA    mov         ecx,0FF
 004BDFAF    call        @LStrToString
>004BDFB4    jmp         004BDFBC
 004BDFB6    mov         eax,dword ptr [ebp-8]
 004BDFB9    mov         byte ptr [eax],0
 004BDFBC    xor         eax,eax
 004BDFBE    pop         edx
 004BDFBF    pop         ecx
 004BDFC0    pop         ecx
 004BDFC1    mov         dword ptr fs:[eax],edx
 004BDFC4    push        4BDFDE
 004BDFC9    lea         eax,[ebp-2C]
 004BDFCC    mov         edx,2
 004BDFD1    call        @LStrArrayClr
 004BDFD6    ret
>004BDFD7    jmp         @HandleFinally
>004BDFDC    jmp         004BDFC9
 004BDFDE    pop         edi
 004BDFDF    pop         esi
 004BDFE0    pop         ebx
 004BDFE1    mov         esp,ebp
 004BDFE3    pop         ebp
 004BDFE4    ret
*}
end;

//004BDFE8
procedure sub_004BDFE8(a:TStringList; var b:string);
begin
b:='03';
{*
 004BDFE8    push        ebp
 004BDFE9    mov         ebp,esp
 004BDFEB    add         esp,0FFFFFFA4
 004BDFEE    push        ebx
 004BDFEF    push        esi
 004BDFF0    push        edi
 004BDFF1    xor         ecx,ecx
 004BDFF3    mov         dword ptr [ebp-5C],ecx
 004BDFF6    mov         dword ptr [ebp-58],ecx
 004BDFF9    mov         dword ptr [ebp-8],edx
 004BDFFC    mov         dword ptr [ebp-4],eax
 004BDFFF    xor         eax,eax
 004BE001    push        ebp
 004BE002    push        4BE1B1
 004BE007    push        dword ptr fs:[eax]
 004BE00A    mov         dword ptr fs:[eax],esp
 004BE00D    xor         eax,eax
 004BE00F    mov         dword ptr [ebp-28],eax
 004BE012    mov         dword ptr [ebp-24],eax
 004BE015    mov         word ptr [ebp-20],ax
 004BE019    xor         eax,eax
 004BE01B    mov         dword ptr [ebp-48],eax
 004BE01E    mov         dword ptr [ebp-44],eax
 004BE021    mov         word ptr [ebp-40],ax
 004BE025    xor         eax,eax
 004BE027    mov         dword ptr [ebp-38],eax
 004BE02A    mov         dword ptr [ebp-34],eax
 004BE02D    mov         word ptr [ebp-30],ax
 004BE031    xor         eax,eax
 004BE033    mov         dword ptr [ebp-50],eax
 004BE036    mov         eax,dword ptr [ebp-4]
 004BE039    mov         edx,dword ptr [eax]
 004BE03B    call        dword ptr [edx+14]
 004BE03E    sub         eax,1
>004BE041    jno         004BE048
 004BE043    call        @IntOver
 004BE048    test        eax,eax
>004BE04A    jl          004BE0FA
 004BE050    inc         eax
 004BE051    mov         dword ptr [ebp-54],eax
 004BE054    mov         dword ptr [ebp-4C],0
 004BE05B    xor         eax,eax
 004BE05D    push        ebp
 004BE05E    push        4BE0C2
 004BE063    push        dword ptr fs:[eax]
 004BE066    mov         dword ptr fs:[eax],esp
 004BE069    lea         ecx,[ebp-58]
 004BE06C    mov         edx,dword ptr [ebp-4C]
 004BE06F    mov         eax,dword ptr [ebp-4]
 004BE072    mov         ebx,dword ptr [eax]
 004BE074    call        dword ptr [ebx+0C]
 004BE077    mov         eax,dword ptr [ebp-58]
 004BE07A    call        StrToFloat
 004BE07F    fstp        tbyte ptr [ebp-18]
 004BE082    wait
 004BE083    fld         tbyte ptr [ebp-28]
 004BE086    fld         tbyte ptr [ebp-18]
 004BE089    faddp       st(1),st
 004BE08B    fstp        tbyte ptr [ebp-28]
 004BE08E    wait
 004BE08F    fld         tbyte ptr [ebp-18]
 004BE092    fld         tbyte ptr [ebp-18]
 004BE095    fmulp       st(1),st
 004BE097    fld         tbyte ptr [ebp-38]
 004BE09A    faddp       st(1),st
 004BE09C    fstp        tbyte ptr [ebp-38]
 004BE09F    wait
 004BE0A0    fld         tbyte ptr [ebp-48]
 004BE0A3    fadd        dword ptr ds:[4BE1C0];1:Single
 004BE0A9    fstp        tbyte ptr [ebp-48]
 004BE0AC    wait
 004BE0AD    add         dword ptr [ebp-50],1
>004BE0B1    jno         004BE0B8
 004BE0B3    call        @IntOver
 004BE0B8    xor         eax,eax
 004BE0BA    pop         edx
 004BE0BB    pop         ecx
 004BE0BC    pop         ecx
 004BE0BD    mov         dword ptr fs:[eax],edx
>004BE0C0    jmp         004BE0EE
>004BE0C2    jmp         @HandleOnException
 004BE0C7    dd          2
 004BE0CB    dd          00409B50;EConvertError
 004BE0CF    dd          004BE0DB
 004BE0D3    dd          004098E0;EMathError
 004BE0D7    dd          004BE0E2
 004BE0DB    call        @DoneExcept
>004BE0E0    jmp         004BE0EE
 004BE0E2    call        @DoneExcept
>004BE0E7    jmp         004BE0EE
 004BE0E9    call        @DoneExcept
 004BE0EE    inc         dword ptr [ebp-4C]
 004BE0F1    dec         dword ptr [ebp-54]
>004BE0F4    jne         004BE05B
 004BE0FA    xor         eax,eax
 004BE0FC    push        ebp
 004BE0FD    push        4BE16A
 004BE102    push        dword ptr fs:[eax]
 004BE105    mov         dword ptr fs:[eax],esp
 004BE108    cmp         dword ptr [ebp-50],0
>004BE10C    jle         004BE15A
 004BE10E    fld         tbyte ptr [ebp-38]
 004BE111    fld         tbyte ptr [ebp-48]
 004BE114    fdivp       st(1),st
 004BE116    fld         tbyte ptr [ebp-28]
 004BE119    fld         tbyte ptr [ebp-48]
 004BE11C    fdivp       st(1),st
 004BE11E    fld         tbyte ptr [ebp-28]
 004BE121    fld         tbyte ptr [ebp-48]
 004BE124    fdivp       st(1),st
 004BE126    fmulp       st(1),st
 004BE128    fsubp       st(1),st
 004BE12A    fsqrt
 004BE12C    add         esp,0FFFFFFF4
 004BE12F    fstp        tbyte ptr [esp]
 004BE132    wait
 004BE133    lea         eax,[ebp-5C]
 004BE136    push        eax
 004BE137    mov         ecx,2
 004BE13C    mov         edx,12
 004BE141    mov         al,2
 004BE143    call        FloatToStrF
 004BE148    mov         edx,dword ptr [ebp-5C]
 004BE14B    mov         eax,dword ptr [ebp-8]
 004BE14E    mov         ecx,0FF
 004BE153    call        @LStrToString
>004BE158    jmp         004BE160
 004BE15A    mov         eax,dword ptr [ebp-8]
 004BE15D    mov         byte ptr [eax],0
 004BE160    xor         eax,eax
 004BE162    pop         edx
 004BE163    pop         ecx
 004BE164    pop         ecx
 004BE165    mov         dword ptr fs:[eax],edx
>004BE168    jmp         004BE196
>004BE16A    jmp         @HandleOnException
 004BE16F    dd          2
 004BE173    dd          00409B50;EConvertError
 004BE177    dd          004BE183
 004BE17B    dd          004098E0;EMathError
 004BE17F    dd          004BE18B
 004BE183    mov         eax,dword ptr [ebp-8]
 004BE186    mov         byte ptr [eax],0
>004BE189    jmp         004BE191
 004BE18B    mov         eax,dword ptr [ebp-8]
 004BE18E    mov         byte ptr [eax],0
 004BE191    call        @DoneExcept
 004BE196    xor         eax,eax
 004BE198    pop         edx
 004BE199    pop         ecx
 004BE19A    pop         ecx
 004BE19B    mov         dword ptr fs:[eax],edx
 004BE19E    push        4BE1B8
 004BE1A3    lea         eax,[ebp-5C]
 004BE1A6    mov         edx,2
 004BE1AB    call        @LStrArrayClr
 004BE1B0    ret
>004BE1B1    jmp         @HandleFinally
>004BE1B6    jmp         004BE1A3
 004BE1B8    pop         edi
 004BE1B9    pop         esi
 004BE1BA    pop         ebx
 004BE1BB    mov         esp,ebp
 004BE1BD    pop         ebp
 004BE1BE    ret
*}
end;

//004BE1C4
procedure sub_004BE1C4(a:TStringList; var b:string);
begin
b:='04';
{*
 004BE1C4    push        ebp
 004BE1C5    mov         ebp,esp
 004BE1C7    add         esp,0FFFFFFCC
 004BE1CA    push        ebx
 004BE1CB    push        esi
 004BE1CC    push        edi
 004BE1CD    xor         ecx,ecx
 004BE1CF    mov         dword ptr [ebp-34],ecx
 004BE1D2    mov         dword ptr [ebp-30],ecx
 004BE1D5    mov         dword ptr [ebp-8],edx
 004BE1D8    mov         dword ptr [ebp-4],eax
 004BE1DB    xor         eax,eax
 004BE1DD    push        ebp
 004BE1DE    push        4BE340
 004BE1E3    push        dword ptr fs:[eax]
 004BE1E6    mov         dword ptr fs:[eax],esp
 004BE1E9    xor         eax,eax
 004BE1EB    mov         dword ptr [ebp-20],eax
 004BE1EE    xor         eax,eax
 004BE1F0    mov         dword ptr [ebp-24],eax
 004BE1F3    xor         eax,eax
 004BE1F5    push        ebp
 004BE1F6    push        4BE309
 004BE1FB    push        dword ptr fs:[eax]
 004BE1FE    mov         dword ptr fs:[eax],esp
 004BE201    call        004B9E48
 004BE206    mov         dword ptr [ebp-2C],eax
 004BE209    fild        dword ptr [ebp-2C]
 004BE20C    fdiv        dword ptr ds:[4BE350];2:Single
 004BE212    fstp        tbyte ptr [ebp-18]
 004BE215    wait
 004BE216    mov         eax,dword ptr [ebp-4]
 004BE219    mov         edx,dword ptr [eax]
 004BE21B    call        dword ptr [edx+14]
 004BE21E    sub         eax,1
>004BE221    jno         004BE228
 004BE223    call        @IntOver
 004BE228    test        eax,eax
>004BE22A    jl          004BE2AA
 004BE22C    inc         eax
 004BE22D    mov         dword ptr [ebp-28],eax
 004BE230    mov         dword ptr [ebp-1C],0
 004BE237    xor         eax,eax
 004BE239    push        ebp
 004BE23A    push        4BE285
 004BE23F    push        dword ptr fs:[eax]
 004BE242    mov         dword ptr fs:[eax],esp
 004BE245    lea         ecx,[ebp-30]
 004BE248    mov         edx,dword ptr [ebp-1C]
 004BE24B    mov         eax,dword ptr [ebp-4]
 004BE24E    mov         ebx,dword ptr [eax]
 004BE250    call        dword ptr [ebx+0C]
 004BE253    mov         eax,dword ptr [ebp-30]
 004BE256    call        StrToFloat
 004BE25B    fld         tbyte ptr [ebp-18]
 004BE25E    fcompp
 004BE260    fnstsw      al
 004BE262    sahf
>004BE263    jbe         004BE270
 004BE265    add         dword ptr [ebp-24],1
>004BE269    jno         004BE270
 004BE26B    call        @IntOver
 004BE270    add         dword ptr [ebp-20],1
>004BE274    jno         004BE27B
 004BE276    call        @IntOver
 004BE27B    xor         eax,eax
 004BE27D    pop         edx
 004BE27E    pop         ecx
 004BE27F    pop         ecx
 004BE280    mov         dword ptr fs:[eax],edx
>004BE283    jmp         004BE2A2
>004BE285    jmp         @HandleOnException
 004BE28A    dd          1
 004BE28E    dd          00409B50;EConvertError
 004BE292    dd          004BE296
 004BE296    call        @DoneExcept
>004BE29B    jmp         004BE2A2
 004BE29D    call        @DoneExcept
 004BE2A2    inc         dword ptr [ebp-1C]
 004BE2A5    dec         dword ptr [ebp-28]
>004BE2A8    jne         004BE237
 004BE2AA    cmp         dword ptr [ebp-20],0
>004BE2AE    jle         004BE2F9
 004BE2B0    fild        dword ptr [ebp-24]
 004BE2B3    fild        dword ptr [ebp-20]
 004BE2B6    fdivp       st(1),st
 004BE2B8    fmul        dword ptr ds:[4BE354];100:Single
 004BE2BE    add         esp,0FFFFFFF4
 004BE2C1    fstp        tbyte ptr [esp]
 004BE2C4    wait
 004BE2C5    lea         eax,[ebp-34]
 004BE2C8    push        eax
 004BE2C9    mov         ecx,2
 004BE2CE    mov         edx,12
 004BE2D3    mov         al,2
 004BE2D5    call        FloatToStrF
 004BE2DA    lea         eax,[ebp-34]
 004BE2DD    mov         edx,4BE360;' %'
 004BE2E2    call        @LStrCat
 004BE2E7    mov         edx,dword ptr [ebp-34]
 004BE2EA    mov         eax,dword ptr [ebp-8]
 004BE2ED    mov         ecx,0FF
 004BE2F2    call        @LStrToString
>004BE2F7    jmp         004BE2FF
 004BE2F9    mov         eax,dword ptr [ebp-8]
 004BE2FC    mov         byte ptr [eax],0
 004BE2FF    xor         eax,eax
 004BE301    pop         edx
 004BE302    pop         ecx
 004BE303    pop         ecx
 004BE304    mov         dword ptr fs:[eax],edx
>004BE307    jmp         004BE325
>004BE309    jmp         @HandleOnException
 004BE30E    dd          1
 004BE312    dd          00409B50;EConvertError
 004BE316    dd          004BE31A
 004BE31A    mov         eax,dword ptr [ebp-8]
 004BE31D    mov         byte ptr [eax],0
 004BE320    call        @DoneExcept
 004BE325    xor         eax,eax
 004BE327    pop         edx
 004BE328    pop         ecx
 004BE329    pop         ecx
 004BE32A    mov         dword ptr fs:[eax],edx
 004BE32D    push        4BE347
 004BE332    lea         eax,[ebp-34]
 004BE335    mov         edx,2
 004BE33A    call        @LStrArrayClr
 004BE33F    ret
>004BE340    jmp         @HandleFinally
>004BE345    jmp         004BE332
 004BE347    pop         edi
 004BE348    pop         esi
 004BE349    pop         ebx
 004BE34A    mov         esp,ebp
 004BE34C    pop         ebp
 004BE34D    ret
*}
end;

//004BE364
procedure sub_004BE364(a:TStringList; var b:string);
begin
b:='05';
{*
 004BE364    push        ebp
 004BE365    mov         ebp,esp
 004BE367    add         esp,0FFFFFECC
 004BE36D    push        ebx
 004BE36E    push        esi
 004BE36F    push        edi
 004BE370    xor         ecx,ecx
 004BE372    mov         dword ptr [ebp-134],ecx
 004BE378    mov         dword ptr [ebp-130],ecx
 004BE37E    mov         dword ptr [ebp-2C],ecx
 004BE381    mov         dword ptr [ebp-8],edx
 004BE384    mov         dword ptr [ebp-4],eax
 004BE387    xor         eax,eax
 004BE389    push        ebp
 004BE38A    push        4BE51D
 004BE38F    push        dword ptr fs:[eax]
 004BE392    mov         dword ptr fs:[eax],esp
 004BE395    xor         eax,eax
 004BE397    mov         dword ptr [ebp-20],eax
 004BE39A    xor         eax,eax
 004BE39C    mov         dword ptr [ebp-24],eax
 004BE39F    xor         eax,eax
 004BE3A1    push        ebp
 004BE3A2    push        4BE4DB
 004BE3A7    push        dword ptr fs:[eax]
 004BE3AA    mov         dword ptr fs:[eax],esp
 004BE3AD    lea         edx,[ebp-12C]
 004BE3B3    mov         eax,dword ptr [ebp-4]
 004BE3B6    call        004BDEBC
 004BE3BB    lea         edx,[ebp-12C]
 004BE3C1    lea         eax,[ebp-2C]
 004BE3C4    call        @LStrFromString
 004BE3C9    mov         eax,dword ptr [ebp-2C]
 004BE3CC    call        StrToFloat
 004BE3D1    fstp        tbyte ptr [ebp-18]
 004BE3D4    wait
 004BE3D5    mov         eax,dword ptr [ebp-4]
 004BE3D8    mov         edx,dword ptr [eax]
 004BE3DA    call        dword ptr [edx+14]
 004BE3DD    sub         eax,1
>004BE3E0    jno         004BE3E7
 004BE3E2    call        @IntOver
 004BE3E7    test        eax,eax
>004BE3E9    jl          004BE473
 004BE3EF    inc         eax
 004BE3F0    mov         dword ptr [ebp-28],eax
 004BE3F3    mov         dword ptr [ebp-1C],0
 004BE3FA    xor         eax,eax
 004BE3FC    push        ebp
 004BE3FD    push        4BE44E
 004BE402    push        dword ptr fs:[eax]
 004BE405    mov         dword ptr fs:[eax],esp
 004BE408    lea         ecx,[ebp-130]
 004BE40E    mov         edx,dword ptr [ebp-1C]
 004BE411    mov         eax,dword ptr [ebp-4]
 004BE414    mov         ebx,dword ptr [eax]
 004BE416    call        dword ptr [ebx+0C]
 004BE419    mov         eax,dword ptr [ebp-130]
 004BE41F    call        StrToFloat
 004BE424    fld         tbyte ptr [ebp-18]
 004BE427    fcompp
 004BE429    fnstsw      al
 004BE42B    sahf
>004BE42C    jbe         004BE439
 004BE42E    add         dword ptr [ebp-24],1
>004BE432    jno         004BE439
 004BE434    call        @IntOver
 004BE439    add         dword ptr [ebp-20],1
>004BE43D    jno         004BE444
 004BE43F    call        @IntOver
 004BE444    xor         eax,eax
 004BE446    pop         edx
 004BE447    pop         ecx
 004BE448    pop         ecx
 004BE449    mov         dword ptr fs:[eax],edx
>004BE44C    jmp         004BE46B
>004BE44E    jmp         @HandleOnException
 004BE453    dd          1
 004BE457    dd          00409B50;EConvertError
 004BE45B    dd          004BE45F
 004BE45F    call        @DoneExcept
>004BE464    jmp         004BE46B
 004BE466    call        @DoneExcept
 004BE46B    inc         dword ptr [ebp-1C]
 004BE46E    dec         dword ptr [ebp-28]
>004BE471    jne         004BE3FA
 004BE473    cmp         dword ptr [ebp-20],0
>004BE477    jle         004BE4CB
 004BE479    fild        dword ptr [ebp-24]
 004BE47C    fild        dword ptr [ebp-20]
 004BE47F    fdivp       st(1),st
 004BE481    fmul        dword ptr ds:[4BE52C];100:Single
 004BE487    add         esp,0FFFFFFF4
 004BE48A    fstp        tbyte ptr [esp]
 004BE48D    wait
 004BE48E    lea         eax,[ebp-134]
 004BE494    push        eax
 004BE495    mov         ecx,2
 004BE49A    mov         edx,12
 004BE49F    mov         al,2
 004BE4A1    call        FloatToStrF
 004BE4A6    lea         eax,[ebp-134]
 004BE4AC    mov         edx,4BE538;' %'
 004BE4B1    call        @LStrCat
 004BE4B6    mov         edx,dword ptr [ebp-134]
 004BE4BC    mov         eax,dword ptr [ebp-8]
 004BE4BF    mov         ecx,0FF
 004BE4C4    call        @LStrToString
>004BE4C9    jmp         004BE4D1
 004BE4CB    mov         eax,dword ptr [ebp-8]
 004BE4CE    mov         byte ptr [eax],0
 004BE4D1    xor         eax,eax
 004BE4D3    pop         edx
 004BE4D4    pop         ecx
 004BE4D5    pop         ecx
 004BE4D6    mov         dword ptr fs:[eax],edx
>004BE4D9    jmp         004BE4F7
>004BE4DB    jmp         @HandleOnException
 004BE4E0    dd          1
 004BE4E4    dd          00409B50;EConvertError
 004BE4E8    dd          004BE4EC
 004BE4EC    mov         eax,dword ptr [ebp-8]
 004BE4EF    mov         byte ptr [eax],0
 004BE4F2    call        @DoneExcept
 004BE4F7    xor         eax,eax
 004BE4F9    pop         edx
 004BE4FA    pop         ecx
 004BE4FB    pop         ecx
 004BE4FC    mov         dword ptr fs:[eax],edx
 004BE4FF    push        4BE524
 004BE504    lea         eax,[ebp-134]
 004BE50A    mov         edx,2
 004BE50F    call        @LStrArrayClr
 004BE514    lea         eax,[ebp-2C]
 004BE517    call        @LStrClr
 004BE51C    ret
>004BE51D    jmp         @HandleFinally
>004BE522    jmp         004BE504
 004BE524    pop         edi
 004BE525    pop         esi
 004BE526    pop         ebx
 004BE527    mov         esp,ebp
 004BE529    pop         ebp
 004BE52A    ret
*}
end;

end.