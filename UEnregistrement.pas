{***************************************
* Version Original V0.01
* Created by HOUIDEF AEK v 16:24 mardi 27 février 2018
***************************************}
unit UEnregistrement;

interface

uses
Forms, Windows,  SysUtils, Classes, URegistry,unit51;

    //function sub_004982F8:?;//004982F8
    //procedure sub_00498460(?:TStrings);//00498460
    //function sub_0049856C:?;//0049856C
    procedure sub_004986C0(NumUser:dword; var NomUser:String);//004986C0
    procedure sub_0049878C(NumUser:dword; var CleUser:String);//0049878C
    //procedure sub_0049884C(?:?; ?:?);//0049884C
    //procedure sub_00498978(?:?; ?:?);//00498978
    function sub_00498A40:boolean;//00498A40
    function sub_00498B20:dword;//00498B20
    //procedure sub_00498BFC(?:?);//00498BFC

implementation

//004982F8
{*function sub_004982F8:?;
begin
 004982F8    push        ebp
 004982F9    mov         ebp,esp
 004982FB    push        0
 004982FD    push        ebx
 004982FE    push        esi
 004982FF    xor         eax,eax
 00498301    push        ebp
 00498302    push        4983D0
 00498307    push        dword ptr fs:[eax]
 0049830A    mov         dword ptr fs:[eax],esp
 0049830D    mov         dl,1
 0049830F    mov         eax,[004120B8];TStringList
 00498314    call        TObject.Create;TStringList.Create
 00498319    mov         esi,eax
 0049831B    mov         dl,1
 0049831D    mov         eax,esi
 0049831F    call        TStringList.SetSorted
 00498324    mov         dl,1
 00498326    mov         eax,[00490114];TRegistry
 0049832B    call        TRegistry.Create;TRegistry.Create
 00498330    mov         ebx,eax
 00498332    mov         edx,80000001
 00498337    mov         eax,ebx
 00498339    call        TRegistry.SetRootKey
 0049833E    mov         edx,4983E8;'Software\Carnet de Notes 2.x\Utilisateurs'
 00498343    mov         eax,ebx
 00498345    call        TRegistry.KeyExists
 0049834A    test        al,al
>0049834C    je          00498367
 0049834E    mov         cl,1
 00498350    mov         edx,4983E8;'Software\Carnet de Notes 2.x\Utilisateurs'
 00498355    mov         eax,ebx
 00498357    call        TRegistry.OpenKey
 0049835C    mov         edx,esi
 0049835E    mov         eax,ebx
 00498360    call        TRegistry.GetValueNames
>00498365    jmp         004983AA
 00498367    mov         edx,80000002
 0049836C    mov         eax,ebx
 0049836E    call        TRegistry.SetRootKey
 00498373    xor         ecx,ecx
 00498375    mov         edx,49841C;'SOFTWARE\Microsoft\Windows\CurrentVersion'
 0049837A    mov         eax,ebx
 0049837C    call        TRegistry.OpenKey
 00498381    mov         edx,498450;'RegisteredOwner'
 00498386    mov         eax,ebx
 00498388    call        TRegistry.ValueExists
 0049838D    test        al,al
>0049838F    je          004983AA
 00498391    lea         ecx,[ebp-4]
 00498394    mov         edx,498450;'RegisteredOwner'
 00498399    mov         eax,ebx
 0049839B    call        TRegistry.ReadString
 004983A0    mov         edx,dword ptr [ebp-4]
 004983A3    mov         eax,esi
 004983A5    mov         ecx,dword ptr [eax]
 004983A7    call        dword ptr [ecx+34];TStringList.Add
 004983AA    mov         eax,ebx
 004983AC    call        TRegistry.CloseKey
 004983B1    mov         eax,ebx
 004983B3    call        TObject.Free
 004983B8    mov         ebx,esi
 004983BA    xor         eax,eax
 004983BC    pop         edx
 004983BD    pop         ecx
 004983BE    pop         ecx
 004983BF    mov         dword ptr fs:[eax],edx
 004983C2    push        4983D7
 004983C7    lea         eax,[ebp-4]
 004983CA    call        @LStrClr
 004983CF    ret
>004983D0    jmp         @HandleFinally
>004983D5    jmp         004983C7
 004983D7    mov         eax,ebx
 004983D9    pop         esi
 004983DA    pop         ebx
 004983DB    pop         ecx
 004983DC    pop         ebp
 004983DD    ret
end;*}

//00498460
//procedure sub_00498460(?:TStrings);
//begin
{*
 00498460    push        ebp
 00498461    mov         ebp,esp
 00498463    add         esp,0FFFFFFF4
 00498466    push        ebx
 00498467    push        esi
 00498468    push        edi
 00498469    xor         edx,edx
 0049846B    mov         dword ptr [ebp-0C],edx
 0049846E    mov         dword ptr [ebp-4],eax
 00498471    xor         eax,eax
 00498473    push        ebp
 00498474    push        498527
 00498479    push        dword ptr fs:[eax]
 0049847C    mov         dword ptr fs:[eax],esp
 0049847F    mov         dl,1
 00498481    mov         eax,[00490114];TRegistry
 00498486    call        TRegistry.Create;TRegistry.Create
 0049848B    mov         ebx,eax
 0049848D    mov         edx,80000001
 00498492    mov         eax,ebx
 00498494    call        TRegistry.SetRootKey
 00498499    mov         edx,498540;'Software\Carnet de Notes 2.x\Utilisateurs'
 0049849E    mov         eax,ebx
 004984A0    call        TRegistry.KeyExists
 004984A5    test        al,al
>004984A7    je          004984B5
 004984A9    mov         edx,498540;'Software\Carnet de Notes 2.x\Utilisateurs'
 004984AE    mov         eax,ebx
 004984B0    call        TRegistry.DeleteKey
 004984B5    mov         cl,1
 004984B7    mov         edx,498540;'Software\Carnet de Notes 2.x\Utilisateurs'
 004984BC    mov         eax,ebx
 004984BE    call        TRegistry.OpenKey
 004984C3    mov         eax,dword ptr [ebp-4]
 004984C6    mov         edx,dword ptr [eax]
 004984C8    call        dword ptr [edx+14]
 004984CB    mov         esi,eax
 004984CD    sub         esi,1
>004984D0    jno         004984D7
 004984D2    call        @IntOver
 004984D7    test        esi,esi
>004984D9    jl          00498503
 004984DB    inc         esi
 004984DC    mov         dword ptr [ebp-8],0
 004984E3    lea         ecx,[ebp-0C]
 004984E6    mov         edx,dword ptr [ebp-8]
 004984E9    mov         eax,dword ptr [ebp-4]
 004984EC    mov         edi,dword ptr [eax]
 004984EE    call        dword ptr [edi+0C]
 004984F1    mov         edx,dword ptr [ebp-0C]
 004984F4    xor         ecx,ecx
 004984F6    mov         eax,ebx
 004984F8    call        TRegistry.WriteString
 004984FD    inc         dword ptr [ebp-8]
 00498500    dec         esi
>00498501    jne         004984E3
 00498503    mov         eax,ebx
 00498505    call        TRegistry.CloseKey
 0049850A    mov         eax,ebx
 0049850C    call        TObject.Free
 00498511    xor         eax,eax
 00498513    pop         edx
 00498514    pop         ecx
 00498515    pop         ecx
 00498516    mov         dword ptr fs:[eax],edx
 00498519    push        49852E
 0049851E    lea         eax,[ebp-0C]
 00498521    call        @LStrClr
 00498526    ret
>00498527    jmp         @HandleFinally
>0049852C    jmp         0049851E
 0049852E    pop         edi
 0049852F    pop         esi
 00498530    pop         ebx
 00498531    mov         esp,ebp
 00498533    pop         ebp
 00498534    ret
*}
//end;

//0049856C
{*function sub_0049856C:?;
begin
 0049856C    push        ebp
 0049856D    mov         ebp,esp
 0049856F    push        0
 00498571    push        0
 00498573    push        0
 00498575    push        ebx
 00498576    push        esi
 00498577    xor         eax,eax
 00498579    push        ebp
 0049857A    push        49864A
 0049857F    push        dword ptr fs:[eax]
 00498582    mov         dword ptr fs:[eax],esp
 00498585    mov         dl,1
 00498587    mov         eax,[004120B8];TStringList
 0049858C    call        TObject.Create;TStringList.Create
 00498591    mov         dword ptr [ebp-4],eax
 00498594    mov         dl,1
 00498596    mov         eax,[00490114];TRegistry
 0049859B    call        TRegistry.Create;TRegistry.Create
 004985A0    mov         ebx,eax
 004985A2    mov         edx,80000002
 004985A7    mov         eax,ebx
 004985A9    call        TRegistry.SetRootKey
 004985AE    xor         ecx,ecx
 004985B0    mov         edx,498664;'SOFTWARE\Microsoft\Windows\CurrentVersion'
 004985B5    mov         eax,ebx
 004985B7    call        TRegistry.OpenKey
 004985BC    mov         edx,498698;'RegisteredOwner'
 004985C1    mov         eax,ebx
 004985C3    call        TRegistry.ValueExists
 004985C8    test        al,al
>004985CA    je          004985E8
 004985CC    lea         ecx,[ebp-8]
 004985CF    mov         edx,498698;'RegisteredOwner'
 004985D4    mov         eax,ebx
 004985D6    call        TRegistry.ReadString
 004985DB    mov         edx,dword ptr [ebp-8]
 004985DE    mov         eax,dword ptr [ebp-4]
 004985E1    mov         ecx,dword ptr [eax]
 004985E3    call        dword ptr [ecx+34];TStringList.Add
>004985E6    jmp         004985F5
 004985E8    mov         edx,4986B0;'Le prof inconnu'
 004985ED    mov         eax,dword ptr [ebp-4]
 004985F0    mov         ecx,dword ptr [eax]
 004985F2    call        dword ptr [ecx+34];TStringList.Add
 004985F5    mov         eax,ebx
 004985F7    call        TRegistry.CloseKey
 004985FC    mov         eax,ebx
 004985FE    call        TObject.Free
 00498603    call        00498B20
 00498608    mov         ebx,eax
 0049860A    test        ebx,ebx
>0049860C    jle         0049862C
 0049860E    mov         esi,1
 00498613    lea         edx,[ebp-0C]
 00498616    mov         eax,esi
 00498618    call        004986C0
 0049861D    mov         edx,dword ptr [ebp-0C]
 00498620    mov         eax,dword ptr [ebp-4]
 00498623    mov         ecx,dword ptr [eax]
 00498625    call        dword ptr [ecx+34];TStringList.Add
 00498628    inc         esi
 00498629    dec         ebx
>0049862A    jne         00498613
 0049862C    mov         ebx,dword ptr [ebp-4]
 0049862F    xor         eax,eax
 00498631    pop         edx
 00498632    pop         ecx
 00498633    pop         ecx
 00498634    mov         dword ptr fs:[eax],edx
 00498637    push        498651
 0049863C    lea         eax,[ebp-0C]
 0049863F    mov         edx,2
 00498644    call        @LStrArrayClr
 00498649    ret
>0049864A    jmp         @HandleFinally
>0049864F    jmp         0049863C
 00498651    mov         eax,ebx
 00498653    pop         esi
 00498654    pop         ebx
 00498655    mov         esp,ebp
 00498657    pop         ebp
 00498658    ret
end;*}

//004986C0
procedure sub_004986C0(NumUser:dword; var NomUser:String);
begin//0
  //004986C0

    if (NumUser = 1) then//004986E0
      sub_0049733C('nomUtilisateurEnregistrement', '', '\Enregistrement', NomUser)
    else
      sub_0049733C('nomUtilisateurEnregistrement' + IntToStr(NumUser), '', '\Enregistrement',NomUser);
end;//0


//0049878C
procedure sub_0049878C(NumUser:dword; var CleUser:String);
begin//0
  //0049878C
    if (NumUser = 1) then//004987AC
      sub_0049733C('cleEnregistrement', '', '\Enregistrement', CleUser)
	else 
		sub_0049733C('cleEnregistrement' + IntToStr(NumUser), '', '\Enregistrement', CleUser);

end;//0


//0049884C
{*procedure sub_0049884C(?:?; ?:?);
begin
 0049884C    push        ebp
 0049884D    mov         ebp,esp
 0049884F    xor         ecx,ecx
 00498851    push        ecx
 00498852    push        ecx
 00498853    push        ecx
 00498854    push        ecx
 00498855    push        ebx
 00498856    mov         dword ptr [ebp-4],edx
 00498859    mov         ebx,eax
 0049885B    mov         eax,dword ptr [ebp-4]
 0049885E    call        @LStrAddRef
 00498863    xor         eax,eax
 00498865    push        ebp
 00498866    push        498902
 0049886B    push        dword ptr fs:[eax]
 0049886E    mov         dword ptr fs:[eax],esp
 00498871    cmp         ebx,1
>00498874    jne         0049888C
 00498876    push        1
 00498878    mov         ecx,498918;'\Enregistrement'
 0049887D    mov         edx,dword ptr [ebp-4]
 00498880    mov         eax,498930;'nomUtilisateurEnregistrement'
 00498885    call        00497660
>0049888A    jmp         004988B8
 0049888C    push        1
 0049888E    lea         edx,[ebp-0C]
 00498891    mov         eax,ebx
 00498893    call        IntToStr
 00498898    mov         ecx,dword ptr [ebp-0C]
 0049889B    lea         eax,[ebp-8]
 0049889E    mov         edx,498930;'nomUtilisateurEnregistrement'
 004988A3    call        @LStrCat3
 004988A8    mov         eax,dword ptr [ebp-8]
 004988AB    mov         ecx,498918;'\Enregistrement'
 004988B0    mov         edx,dword ptr [ebp-4]
 004988B3    call        00497660
 004988B8    call        00498B20
 004988BD    mov         ebx,eax
 004988BF    push        1
 004988C1    lea         edx,[ebp-10]
 004988C4    mov         eax,ebx
 004988C6    add         eax,1
>004988C9    jno         004988D0
 004988CB    call        @IntOver
 004988D0    call        IntToStr
 004988D5    mov         edx,dword ptr [ebp-10]
 004988D8    mov         ecx,498918;'\Enregistrement'
 004988DD    mov         eax,498958;'nombreUtilisateursEnregistres'
 004988E2    call        00497660
 004988E7    xor         eax,eax
 004988E9    pop         edx
 004988EA    pop         ecx
 004988EB    pop         ecx
 004988EC    mov         dword ptr fs:[eax],edx
 004988EF    push        498909
 004988F4    lea         eax,[ebp-10]
 004988F7    mov         edx,4
 004988FC    call        @LStrArrayClr
 00498901    ret
>00498902    jmp         @HandleFinally
>00498907    jmp         004988F4
 00498909    pop         ebx
 0049890A    mov         esp,ebp
 0049890C    pop         ebp
 0049890D    ret
end;*}

//00498978
{*procedure sub_00498978(?:?; ?:?);
begin
 00498978    push        ebp
 00498979    mov         ebp,esp
 0049897B    push        0
 0049897D    push        0
 0049897F    push        0
 00498981    push        ebx
 00498982    mov         dword ptr [ebp-4],edx
 00498985    mov         ebx,eax
 00498987    mov         eax,dword ptr [ebp-4]
 0049898A    call        @LStrAddRef
 0049898F    xor         eax,eax
 00498991    push        ebp
 00498992    push        4989FF
 00498997    push        dword ptr fs:[eax]
 0049899A    mov         dword ptr fs:[eax],esp
 0049899D    cmp         ebx,1
>004989A0    jne         004989B8
 004989A2    push        1
 004989A4    mov         ecx,498A14;'\Enregistrement'
 004989A9    mov         edx,dword ptr [ebp-4]
 004989AC    mov         eax,498A2C;'cleEnregistrement'
 004989B1    call        00497660
>004989B6    jmp         004989E4
 004989B8    push        1
 004989BA    lea         edx,[ebp-0C]
 004989BD    mov         eax,ebx
 004989BF    call        IntToStr
 004989C4    mov         ecx,dword ptr [ebp-0C]
 004989C7    lea         eax,[ebp-8]
 004989CA    mov         edx,498A2C;'cleEnregistrement'
 004989CF    call        @LStrCat3
 004989D4    mov         eax,dword ptr [ebp-8]
 004989D7    mov         ecx,498A14;'\Enregistrement'
 004989DC    mov         edx,dword ptr [ebp-4]
 004989DF    call        00497660
 004989E4    xor         eax,eax
 004989E6    pop         edx
 004989E7    pop         ecx
 004989E8    pop         ecx
 004989E9    mov         dword ptr fs:[eax],edx
 004989EC    push        498A06
 004989F1    lea         eax,[ebp-0C]
 004989F4    mov         edx,3
 004989F9    call        @LStrArrayClr
 004989FE    ret
>004989FF    jmp         @HandleFinally
>00498A04    jmp         004989F1
 00498A06    pop         ebx
 00498A07    mov         esp,ebp
 00498A09    pop         ebp
 00498A0A    ret
end;*}

//00498A40
function sub_00498A40:boolean;
var
 NumUser:integer; 
 CleUser,NomUser : string;
begin//0
  //00498A40

	result := true;
    if (sub_00498B20 = 0) then//00498A71
      result := false
	else 
      for NumUser := 1 to sub_00498B20 do //00498A82
	  begin
	    sub_004986C0(NumUser, NomUser);
		sub_0049878C(NumUser, CleUser);
        if (not sub_004981D4(NomUser,CleUser,0)) then 
			result := false;
	  end;

end;//0


//00498B20
function sub_00498B20:dword;
var
  buf:string;
begin//0
  //00498B20
  
    //00498B36
    sub_0049733C('nombreUtilisateursEnregistres', '0', '\Enregistrement',buf);
    try
      //00498B5E
      result := StrToInt(buf);
    except//2
      on E:Exception do
      begin//00498B83
        result := 0;
      end;//3
    end;//2
end;//0


//00498BFC
{*procedure sub_00498BFC(?:?);
begin
 00498BFC    push        ebp
 00498BFD    mov         ebp,esp
 00498BFF    xor         ecx,ecx
 00498C01    push        ecx
 00498C02    push        ecx
 00498C03    push        ecx
 00498C04    push        ecx
 00498C05    push        ecx
 00498C06    push        ecx
 00498C07    push        ebx
 00498C08    push        esi
 00498C09    push        edi
 00498C0A    mov         edi,eax
 00498C0C    xor         eax,eax
 00498C0E    push        ebp
 00498C0F    push        498D2F
 00498C14    push        dword ptr fs:[eax]
 00498C17    mov         dword ptr fs:[eax],esp
 00498C1A    mov         dl,1
 00498C1C    mov         eax,[004120B8];TStringList
 00498C21    call        TObject.Create;TStringList.Create
 00498C26    mov         dword ptr [ebp-4],eax
 00498C29    mov         dl,1
 00498C2B    mov         eax,[004120B8];TStringList
 00498C30    call        TObject.Create;TStringList.Create
 00498C35    mov         dword ptr [ebp-8],eax
 00498C38    call        00498B20
 00498C3D    mov         esi,eax
 00498C3F    test        esi,esi
>00498C41    jle         00498C7A
 00498C43    mov         ebx,1
 00498C48    cmp         edi,ebx
>00498C4A    je          00498C76
 00498C4C    lea         edx,[ebp-0C]
 00498C4F    mov         eax,ebx
 00498C51    call        004986C0
 00498C56    mov         edx,dword ptr [ebp-0C]
 00498C59    mov         eax,dword ptr [ebp-4]
 00498C5C    mov         ecx,dword ptr [eax]
 00498C5E    call        dword ptr [ecx+34];TStringList.Add
 00498C61    lea         edx,[ebp-10]
 00498C64    mov         eax,ebx
 00498C66    call        0049878C
 00498C6B    mov         edx,dword ptr [ebp-10]
 00498C6E    mov         eax,dword ptr [ebp-8]
 00498C71    mov         ecx,dword ptr [eax]
 00498C73    call        dword ptr [ecx+34];TStringList.Add
 00498C76    inc         ebx
 00498C77    dec         esi
>00498C78    jne         00498C48
 00498C7A    mov         dl,1
 00498C7C    mov         eax,[00490114];TRegistry
 00498C81    call        TRegistry.Create;TRegistry.Create
 00498C86    mov         ebx,eax
 00498C88    mov         edx,80000001
 00498C8D    mov         eax,ebx
 00498C8F    call        TRegistry.SetRootKey
 00498C94    mov         edx,498D48;'Software\Carnet de Notes 2.x\Enregistrement'
 00498C99    mov         eax,ebx
 00498C9B    call        TRegistry.DeleteKey
 00498CA0    mov         eax,ebx
 00498CA2    call        TObject.Free
 00498CA7    mov         eax,dword ptr [ebp-8]
 00498CAA    mov         edx,dword ptr [eax]
 00498CAC    call        dword ptr [edx+14];TStringList.GetCount
 00498CAF    mov         esi,eax
 00498CB1    test        esi,esi
>00498CB3    jle         00498D00
 00498CB5    mov         ebx,1
 00498CBA    lea         ecx,[ebp-14]
 00498CBD    mov         edx,ebx
 00498CBF    sub         edx,1
>00498CC2    jno         00498CC9
 00498CC4    call        @IntOver
 00498CC9    mov         eax,dword ptr [ebp-4]
 00498CCC    mov         edi,dword ptr [eax]
 00498CCE    call        dword ptr [edi+0C];TStringList.Get
 00498CD1    mov         edx,dword ptr [ebp-14]
 00498CD4    mov         eax,ebx
 00498CD6    call        0049884C
 00498CDB    lea         ecx,[ebp-18]
 00498CDE    mov         edx,ebx
 00498CE0    sub         edx,1
>00498CE3    jno         00498CEA
 00498CE5    call        @IntOver
 00498CEA    mov         eax,dword ptr [ebp-8]
 00498CED    mov         edi,dword ptr [eax]
 00498CEF    call        dword ptr [edi+0C];TStringList.Get
 00498CF2    mov         edx,dword ptr [ebp-18]
 00498CF5    mov         eax,ebx
 00498CF7    call        00498978
 00498CFC    inc         ebx
 00498CFD    dec         esi
>00498CFE    jne         00498CBA
 00498D00    mov         dl,1
 00498D02    mov         eax,dword ptr [ebp-4]
 00498D05    mov         ecx,dword ptr [eax]
 00498D07    call        dword ptr [ecx-4];TStringList.Destroy
 00498D0A    mov         dl,1
 00498D0C    mov         eax,dword ptr [ebp-8]
 00498D0F    mov         ecx,dword ptr [eax]
 00498D11    call        dword ptr [ecx-4];TStringList.Destroy
 00498D14    xor         eax,eax
 00498D16    pop         edx
 00498D17    pop         ecx
 00498D18    pop         ecx
 00498D19    mov         dword ptr fs:[eax],edx
 00498D1C    push        498D36
 00498D21    lea         eax,[ebp-18]
 00498D24    mov         edx,4
 00498D29    call        @LStrArrayClr
 00498D2E    ret
>00498D2F    jmp         @HandleFinally
>00498D34    jmp         00498D21
 00498D36    pop         edi
 00498D37    pop         esi
 00498D38    pop         ebx
 00498D39    mov         esp,ebp
 00498D3B    pop         ebp
 00498D3C    ret
end;*}

end.