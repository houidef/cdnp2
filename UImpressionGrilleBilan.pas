//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit UImpressionGrilleBilan;

interface

uses
Forms, Windows,  SysUtils, Classes;

type
  TImpressionGrilleBilan = class(TImpression)
    //constructor Create(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//0051C9D0
	//procedure sub_0051CAF8(?:TImpressionGrilleBilan; ?:?; ?:?; ?:?; ?:?; ?:?);//0051CAF8
    //function sub_0051CD9C(?:?):?;//0051CD9C
    //function sub_0051D080(?:?):?;//0051D080
    //function sub_0051D370(?:?):?;//0051D370
    //procedure sub_0051D450(?:?; ?:?);//0051D450
    //procedure sub_0051D5B0(?:?; ?:?);//0051D5B0
    //function sub_00520890(?:?; ?:?):?;//00520890
  end;


implementation

//0051C9D0
{*constructor TImpressionGrilleBilan.Create(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0051C9D0    push        ebp
 0051C9D1    mov         ebp,esp
 0051C9D3    add         esp,0FFFFFEFC
 0051C9D9    push        ebx
 0051C9DA    push        esi
 0051C9DB    xor         ebx,ebx
 0051C9DD    mov         dword ptr [ebp-4],ebx
 0051C9E0    test        dl,dl
>0051C9E2    je          0051C9EC
 0051C9E4    add         esp,0FFFFFFF0
 0051C9E7    call        @ClassCreate
 0051C9EC    mov         ebx,edx
 0051C9EE    mov         esi,eax
 0051C9F0    xor         eax,eax
 0051C9F2    push        ebp
 0051C9F3    push        51CAA0
 0051C9F8    push        dword ptr fs:[eax]
 0051C9FB    mov         dword ptr fs:[eax],esp
 0051C9FE    mov         eax,dword ptr [ebp+20]
 0051CA01    push        eax
 0051CA02    mov         eax,dword ptr [ebp+1C]
 0051CA05    push        eax
 0051CA06    mov         eax,dword ptr [ebp+18]
 0051CA09    push        eax
 0051CA0A    mov         eax,dword ptr [ebp+14]
 0051CA0D    push        eax
 0051CA0E    mov         eax,dword ptr [ebp+10]
 0051CA11    push        eax
 0051CA12    mov         al,byte ptr [ebp+0C]
 0051CA15    push        eax
 0051CA16    mov         eax,dword ptr [ebp+8]
 0051CA19    push        eax
 0051CA1A    xor         edx,edx
 0051CA1C    mov         eax,esi
 0051CA1E    call        0051992C
 0051CA23    mov         eax,dword ptr [esi+3C]
 0051CA26    call        004BE9E0
 0051CA2B    and         eax,0FF
 0051CA30    add         eax,1
>0051CA33    jno         0051CA3A
 0051CA35    call        @IntOver
 0051CA3A    cmp         eax,dword ptr [esi+2C]
 0051CA3D    sete        al
 0051CA40    mov         byte ptr [esi+58],al
 0051CA43    lea         edx,[ebp-104]
 0051CA49    mov         eax,dword ptr [esi+3C]
 0051CA4C    call        004BE8FC
 0051CA51    lea         edx,[ebp-104]
 0051CA57    lea         eax,[ebp-4]
 0051CA5A    call        @LStrFromString
 0051CA5F    mov         eax,dword ptr [ebp-4]
 0051CA62    push        eax
 0051CA63    call        Printer
 0051CA68    add         eax,18;TPrinter.FTitle:String
 0051CA6B    mov         edx,51CAD0;'Carnet de Notes version Personnelle - '
 0051CA70    pop         ecx
 0051CA71    call        @LStrCat3
 0051CA76    call        Printer
 0051CA7B    call        TPrinter.BeginDoc
 0051CA80    mov         eax,esi
 0051CA82    call        0051CD9C
 0051CA87    mov         dword ptr [esi+30],eax
 0051CA8A    xor         eax,eax
 0051CA8C    pop         edx
 0051CA8D    pop         ecx
 0051CA8E    pop         ecx
 0051CA8F    mov         dword ptr fs:[eax],edx
 0051CA92    push        51CAA7
 0051CA97    lea         eax,[ebp-4]
 0051CA9A    call        @LStrClr
 0051CA9F    ret
>0051CAA0    jmp         @HandleFinally
>0051CAA5    jmp         0051CA97
 0051CAA7    mov         eax,esi
 0051CAA9    test        bl,bl
>0051CAAB    je          0051CABC
 0051CAAD    call        @AfterConstruction
 0051CAB2    pop         dword ptr fs:[0]
 0051CAB9    add         esp,0C
 0051CABC    mov         eax,esi
 0051CABE    pop         esi
 0051CABF    pop         ebx
 0051CAC0    mov         esp,ebp
 0051CAC2    pop         ebp
 0051CAC3    ret         1C
end;*}

//0051CAF8
{*procedure sub_0051CAF8(?:TImpressionGrilleBilan; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0051CAF8    push        ebp
 0051CAF9    mov         ebp,esp
 0051CAFB    add         esp,0FFFFFFF0
 0051CAFE    push        ebx
 0051CAFF    push        esi
 0051CB00    push        edi
 0051CB01    mov         dword ptr [ebp-8],ecx
 0051CB04    mov         edi,edx
 0051CB06    mov         dword ptr [ebp-4],eax
 0051CB09    cmp         edi,dword ptr [ebp-8]
>0051CB0C    jle         0051CB16
 0051CB0E    mov         eax,dword ptr [ebp-8]
 0051CB11    mov         dword ptr [ebp-8],edi
 0051CB14    mov         edi,eax
 0051CB16    mov         eax,dword ptr [ebp+10]
 0051CB19    test        eax,eax
>0051CB1B    jle         0051CD90
 0051CB21    mov         dword ptr [ebp-10],eax
 0051CB24    mov         dword ptr [ebp-0C],1
 0051CB2B    xor         ecx,ecx
 0051CB2D    mov         dl,1
 0051CB2F    mov         eax,[00519F58];TFormProgression
 0051CB34    call        TCustomForm.Create;TFormProgression.Create
 0051CB39    mov         edx,dword ptr ds:[616298];^gvar_00617DE4:TFormProgression
 0051CB3F    mov         dword ptr [edx],eax
 0051CB41    mov         eax,[00616298];^gvar_00617DE4:TFormProgression
 0051CB46    mov         eax,dword ptr [eax]
 0051CB48    mov         ebx,dword ptr [eax+2D0]
 0051CB4E    mov         edx,edi
 0051CB50    mov         eax,ebx
 0051CB52    call        TProgressBar.SetMin
 0051CB57    mov         edx,dword ptr [ebp-8]
 0051CB5A    add         edx,1
>0051CB5D    jno         0051CB64
 0051CB5F    call        @IntOver
 0051CB64    mov         eax,ebx
 0051CB66    call        TProgressBar.SetMax
 0051CB6B    mov         edx,1
 0051CB70    mov         eax,ebx
 0051CB72    call        TProgressBar.SetStep
 0051CB77    mov         edx,edi
 0051CB79    sub         edx,1
>0051CB7C    jno         0051CB83
 0051CB7E    call        @IntOver
 0051CB83    mov         eax,ebx
 0051CB85    call        TProgressBar.SetPosition
 0051CB8A    cmp         byte ptr [ebp+8],0
>0051CB8E    jne         0051CC89
 0051CB94    mov         ebx,edi
 0051CB96    mov         esi,dword ptr [ebp-8]
 0051CB99    sub         esi,ebx
>0051CB9B    jl          0051CD76
 0051CBA1    inc         esi
 0051CBA2    mov         eax,dword ptr [ebp+0C]
 0051CBA5    sub         eax,1
>0051CBA8    jb          0051CBB8
>0051CBAA    je          0051CBF3
 0051CBAC    dec         eax
>0051CBAD    je          0051CC38
>0051CBB3    jmp         0051CC7C
 0051CBB8    mov         edx,ebx
 0051CBBA    mov         eax,dword ptr [ebp-4]
 0051CBBD    call        0051D450
 0051CBC2    mov         eax,ebx
 0051CBC4    imul        dword ptr [ebp-0C]
>0051CBC7    jno         0051CBCE
 0051CBC9    call        @IntOver
 0051CBCE    mov         edx,dword ptr [ebp-8]
 0051CBD1    imul        edx,dword ptr [ebp+10]
>0051CBD5    jno         0051CBDC
 0051CBD7    call        @IntOver
 0051CBDC    cmp         eax,edx
>0051CBDE    je          0051CC7C
 0051CBE4    call        Printer
 0051CBE9    call        TPrinter.NewPage
>0051CBEE    jmp         0051CC7C
 0051CBF3    mov         eax,ebx
 0051CBF5    and         eax,80000001
>0051CBFA    jns         0051CC01
 0051CBFC    dec         eax
 0051CBFD    or          eax,0FFFFFFFE
 0051CC00    inc         eax
 0051CC01    dec         eax
>0051CC02    jne         0051CC7C
 0051CC04    mov         edx,ebx
 0051CC06    mov         eax,dword ptr [ebp-4]
 0051CC09    call        0051D450
 0051CC0E    mov         eax,ebx
 0051CC10    imul        dword ptr [ebp-0C]
>0051CC13    jno         0051CC1A
 0051CC15    call        @IntOver
 0051CC1A    mov         edx,dword ptr [ebp-8]
 0051CC1D    imul        edx,dword ptr [ebp+10]
>0051CC21    jno         0051CC28
 0051CC23    call        @IntOver
 0051CC28    cmp         eax,edx
>0051CC2A    je          0051CC7C
 0051CC2C    call        Printer
 0051CC31    call        TPrinter.NewPage
>0051CC36    jmp         0051CC7C
 0051CC38    mov         eax,ebx
 0051CC3A    and         eax,80000001
>0051CC3F    jns         0051CC46
 0051CC41    dec         eax
 0051CC42    or          eax,0FFFFFFFE
 0051CC45    inc         eax
 0051CC46    test        eax,eax
>0051CC48    jne         0051CC7C
 0051CC4A    mov         edx,ebx
 0051CC4C    mov         eax,dword ptr [ebp-4]
 0051CC4F    call        0051D450
 0051CC54    mov         eax,ebx
 0051CC56    imul        dword ptr [ebp-0C]
>0051CC59    jno         0051CC60
 0051CC5B    call        @IntOver
 0051CC60    mov         edx,dword ptr [ebp-8]
 0051CC63    imul        edx,dword ptr [ebp+10]
>0051CC67    jno         0051CC6E
 0051CC69    call        @IntOver
 0051CC6E    cmp         eax,edx
>0051CC70    je          0051CC7C
 0051CC72    call        Printer
 0051CC77    call        TPrinter.NewPage
 0051CC7C    inc         ebx
 0051CC7D    dec         esi
>0051CC7E    jne         0051CBA2
>0051CC84    jmp         0051CD76
 0051CC89    mov         ebx,dword ptr [ebp-8]
 0051CC8C    mov         esi,edi
 0051CC8E    sub         esi,ebx
>0051CC90    jg          0051CD76
 0051CC96    dec         esi
 0051CC97    mov         eax,dword ptr [ebp+0C]
 0051CC9A    sub         eax,1
>0051CC9D    jb          0051CCAD
>0051CC9F    je          0051CCE7
 0051CCA1    dec         eax
>0051CCA2    je          0051CD2B
>0051CCA8    jmp         0051CD6E
 0051CCAD    mov         edx,ebx
 0051CCAF    mov         eax,dword ptr [ebp-4]
 0051CCB2    call        0051D450
 0051CCB7    mov         eax,ebx
 0051CCB9    imul        dword ptr [ebp-0C]
>0051CCBC    jno         0051CCC3
 0051CCBE    call        @IntOver
 0051CCC3    mov         edx,edi
 0051CCC5    imul        edx,dword ptr [ebp+10]
>0051CCC9    jno         0051CCD0
 0051CCCB    call        @IntOver
 0051CCD0    cmp         eax,edx
>0051CCD2    je          0051CD6E
 0051CCD8    call        Printer
 0051CCDD    call        TPrinter.NewPage
>0051CCE2    jmp         0051CD6E
 0051CCE7    mov         eax,ebx
 0051CCE9    and         eax,80000001
>0051CCEE    jns         0051CCF5
 0051CCF0    dec         eax
 0051CCF1    or          eax,0FFFFFFFE
 0051CCF4    inc         eax
 0051CCF5    dec         eax
>0051CCF6    jne         0051CD6E
 0051CCF8    mov         edx,ebx
 0051CCFA    mov         eax,dword ptr [ebp-4]
 0051CCFD    call        0051D450
 0051CD02    mov         eax,ebx
 0051CD04    imul        dword ptr [ebp-0C]
>0051CD07    jno         0051CD0E
 0051CD09    call        @IntOver
 0051CD0E    mov         edx,edi
 0051CD10    imul        edx,dword ptr [ebp+10]
>0051CD14    jno         0051CD1B
 0051CD16    call        @IntOver
 0051CD1B    cmp         eax,edx
>0051CD1D    je          0051CD6E
 0051CD1F    call        Printer
 0051CD24    call        TPrinter.NewPage
>0051CD29    jmp         0051CD6E
 0051CD2B    mov         eax,ebx
 0051CD2D    and         eax,80000001
>0051CD32    jns         0051CD39
 0051CD34    dec         eax
 0051CD35    or          eax,0FFFFFFFE
 0051CD38    inc         eax
 0051CD39    test        eax,eax
>0051CD3B    jne         0051CD6E
 0051CD3D    mov         edx,ebx
 0051CD3F    mov         eax,dword ptr [ebp-4]
 0051CD42    call        0051D450
 0051CD47    mov         eax,ebx
 0051CD49    imul        dword ptr [ebp-0C]
>0051CD4C    jno         0051CD53
 0051CD4E    call        @IntOver
 0051CD53    mov         edx,edi
 0051CD55    imul        edx,dword ptr [ebp+10]
>0051CD59    jno         0051CD60
 0051CD5B    call        @IntOver
 0051CD60    cmp         eax,edx
>0051CD62    je          0051CD6E
 0051CD64    call        Printer
 0051CD69    call        TPrinter.NewPage
 0051CD6E    dec         ebx
 0051CD6F    inc         esi
>0051CD70    jne         0051CC97
 0051CD76    mov         eax,[00616298];^gvar_00617DE4:TFormProgression
 0051CD7B    mov         eax,dword ptr [eax]
 0051CD7D    mov         dl,1
 0051CD7F    mov         ecx,dword ptr [eax]
 0051CD81    call        dword ptr [ecx-4]
 0051CD84    inc         dword ptr [ebp-0C]
 0051CD87    dec         dword ptr [ebp-10]
>0051CD8A    jne         0051CB2B
 0051CD90    pop         edi
 0051CD91    pop         esi
 0051CD92    pop         ebx
 0051CD93    mov         esp,ebp
 0051CD95    pop         ebp
 0051CD96    ret         0C
end;*}

//0051CD9C
{*function sub_0051CD9C(?:?):?;
begin
 0051CD9C    push        ebx
 0051CD9D    push        esi
 0051CD9E    push        edi
 0051CD9F    push        ebp
 0051CDA0    add         esp,0FFFFFFF4
 0051CDA3    mov         ebx,eax
 0051CDA5    push        1
 0051CDA7    lea         eax,[ebx+50]
 0051CDAA    mov         ecx,1
 0051CDAF    mov         edx,dword ptr ds:[5194B4];_DynArr_174_2
 0051CDB5    call        @DynArraySetLength
 0051CDBA    add         esp,4
 0051CDBD    xor         esi,esi
 0051CDBF    xor         ebp,ebp
 0051CDC1    xor         eax,eax
 0051CDC3    mov         edx,dword ptr [ebx+50]
 0051CDC6    cmp         eax,dword ptr [edx-4]
>0051CDC9    jb          0051CDD0
 0051CDCB    call        @BoundErr
 0051CDD0    mov         dword ptr [edx+eax*4],1
 0051CDD7    call        004BDA2C
 0051CDDC    push        eax
 0051CDDD    call        004BD1FC
 0051CDE2    mov         edx,eax
 0051CDE4    mov         eax,ebx
 0051CDE6    pop         ecx
 0051CDE7    call        00519AF8
 0051CDEC    mov         edx,dword ptr [ebx+24]
 0051CDEF    sub         edx,eax
>0051CDF1    jno         0051CDF8
 0051CDF3    call        @IntOver
 0051CDF8    push        edx
 0051CDF9    mov         eax,ebx
 0051CDFB    call        0051D370
 0051CE00    pop         edx
 0051CE01    xchg        eax,edx
 0051CE02    mov         ecx,edx
 0051CE04    cdq
 0051CE05    idiv        eax,ecx
 0051CE07    mov         edi,eax
 0051CE09    test        edi,edi
>0051CE0B    jne         0051CE14
 0051CE0D    xor         eax,eax
>0051CE0F    jmp         0051D077
 0051CE14    call        004BC1BC
 0051CE19    test        al,al
>0051CE1B    je          0051CE26
 0051CE1D    mov         dword ptr [esp],2
>0051CE24    jmp         0051CE2D
 0051CE26    mov         dword ptr [esp],1
 0051CE2D    call        004BC188
 0051CE32    test        al,al
>0051CE34    je          0051CE40
 0051CE36    mov         dword ptr [esp+4],2
>0051CE3E    jmp         0051CE46
 0051CE40    xor         eax,eax
 0051CE42    mov         dword ptr [esp+4],eax
 0051CE46    mov         eax,dword ptr [ebx+3C]
 0051CE49    mov         dword ptr [esp+8],eax
 0051CE4D    cmp         byte ptr [ebx+58],0
>0051CE51    jne         0051CE94
 0051CE53    call        004BB35C
 0051CE58    test        al,al
>0051CE5A    je          0051CE84
 0051CE5C    mov         edx,dword ptr [ebx+2C]
 0051CE5F    cmp         edx,0FF
>0051CE65    jbe         0051CE6C
 0051CE67    call        @BoundErr
 0051CE6C    mov         eax,dword ptr [esp+8]
 0051CE70    call        004C3134
 0051CE75    mov         edx,dword ptr [eax]
 0051CE77    call        dword ptr [edx+14]
 0051CE7A    add         dword ptr [esp],eax
>0051CE7D    jno         0051CE84
 0051CE7F    call        @IntOver
 0051CE84    mov         eax,dword ptr [esp+4]
 0051CE88    add         dword ptr [esp],eax
>0051CE8B    jno         0051CE92
 0051CE8D    call        @IntOver
>0051CE92    jmp         0051CF09
 0051CE94    call        004BB35C
 0051CE99    test        al,al
>0051CE9B    jne         0051CEB7
 0051CE9D    mov         eax,dword ptr [esp+8]
 0051CEA1    call        004BE9E0
 0051CEA6    and         eax,0FF
 0051CEAB    add         dword ptr [esp],eax
>0051CEAE    jno         0051CEB5
 0051CEB0    call        @IntOver
>0051CEB5    jmp         0051CEFB
 0051CEB7    mov         edx,dword ptr [ebx+2C]
 0051CEBA    cmp         edx,0FF
>0051CEC0    jbe         0051CEC7
 0051CEC2    call        @BoundErr
 0051CEC7    mov         eax,dword ptr [esp+8]
 0051CECB    call        004C3134
 0051CED0    mov         edx,dword ptr [eax]
 0051CED2    call        dword ptr [edx+14]
 0051CED5    add         eax,dword ptr [esp]
>0051CED8    jno         0051CEDF
 0051CEDA    call        @IntOver
 0051CEDF    push        eax
 0051CEE0    mov         eax,dword ptr [esp+0C]
 0051CEE4    call        004BE9E0
 0051CEE9    and         eax,0FF
 0051CEEE    pop         edx
 0051CEEF    add         edx,eax
>0051CEF1    jno         0051CEF8
 0051CEF3    call        @IntOver
 0051CEF8    mov         dword ptr [esp],edx
 0051CEFB    mov         eax,dword ptr [esp+4]
 0051CEFF    add         dword ptr [esp],eax
>0051CF02    jno         0051CF09
 0051CF04    call        @IntOver
 0051CF09    cmp         ebp,dword ptr [esp]
>0051CF0C    jge         0051CF7E
 0051CF0E    add         esi,1
>0051CF11    jno         0051CF18
 0051CF13    call        @IntOver
 0051CF18    mov         eax,esi
 0051CF1A    add         eax,1
>0051CF1D    jno         0051CF24
 0051CF1F    call        @IntOver
 0051CF24    push        eax
 0051CF25    lea         eax,[ebx+50]
 0051CF28    mov         ecx,1
 0051CF2D    mov         edx,dword ptr ds:[5194B4];_DynArr_174_2
 0051CF33    call        @DynArraySetLength
 0051CF38    add         esp,4
 0051CF3B    mov         eax,esi
 0051CF3D    sub         eax,1
>0051CF40    jno         0051CF47
 0051CF42    call        @IntOver
 0051CF47    mov         edx,dword ptr [ebx+50]
 0051CF4A    cmp         eax,dword ptr [edx-4]
>0051CF4D    jb          0051CF54
 0051CF4F    call        @BoundErr
 0051CF54    mov         eax,dword ptr [edx+eax*4]
 0051CF57    add         eax,edi
>0051CF59    jno         0051CF60
 0051CF5B    call        @IntOver
 0051CF60    mov         edx,dword ptr [ebx+50]
 0051CF63    cmp         esi,dword ptr [edx-4]
>0051CF66    jb          0051CF6D
 0051CF68    call        @BoundErr
 0051CF6D    mov         dword ptr [edx+esi*4],eax
 0051CF70    add         ebp,edi
>0051CF72    jno         0051CF79
 0051CF74    call        @IntOver
 0051CF79    cmp         ebp,dword ptr [esp]
>0051CF7C    jl          0051CF0E
 0051CF7E    mov         eax,dword ptr [ebx+50]
 0051CF81    cmp         esi,dword ptr [eax-4]
>0051CF84    jb          0051CF8B
 0051CF86    call        @BoundErr
 0051CF8B    mov         edx,dword ptr [esp]
 0051CF8E    add         edx,1
>0051CF91    jno         0051CF98
 0051CF93    call        @IntOver
 0051CF98    mov         dword ptr [eax+esi*4],edx
 0051CF9B    mov         edi,dword ptr [ebx+3C]
 0051CF9E    cmp         byte ptr [ebx+58],0
>0051CFA2    jne         0051CFEF
 0051CFA4    call        004BB35C
 0051CFA9    test        al,al
>0051CFAB    je          0051CFD8
 0051CFAD    mov         edx,dword ptr [ebx+2C]
 0051CFB0    cmp         edx,0FF
>0051CFB6    jbe         0051CFBD
 0051CFB8    call        @BoundErr
 0051CFBD    mov         eax,edi
 0051CFBF    call        004C3134
 0051CFC4    mov         edx,dword ptr [eax]
 0051CFC6    call        dword ptr [edx+14]
 0051CFC9    add         eax,2
>0051CFCC    jno         0051CFD3
 0051CFCE    call        @IntOver
 0051CFD3    mov         dword ptr [ebx+54],eax
>0051CFD6    jmp         0051CFDF
 0051CFD8    mov         dword ptr [ebx+54],2
 0051CFDF    mov         eax,dword ptr [esp+4]
 0051CFE3    add         dword ptr [ebx+54],eax
>0051CFE6    jno         0051CFED
 0051CFE8    call        @IntOver
>0051CFED    jmp         0051D061
 0051CFEF    call        004BB35C
 0051CFF4    test        al,al
>0051CFF6    jne         0051D013
 0051CFF8    mov         eax,edi
 0051CFFA    call        004BE9E0
 0051CFFF    and         eax,0FF
 0051D004    add         eax,2
>0051D007    jno         0051D00E
 0051D009    call        @IntOver
 0051D00E    mov         dword ptr [ebx+54],eax
>0051D011    jmp         0051D053
 0051D013    mov         edx,dword ptr [ebx+2C]
 0051D016    cmp         edx,0FF
>0051D01C    jbe         0051D023
 0051D01E    call        @BoundErr
 0051D023    mov         eax,edi
 0051D025    call        004C3134
 0051D02A    mov         edx,dword ptr [eax]
 0051D02C    call        dword ptr [edx+14]
 0051D02F    mov         ebp,eax
 0051D031    mov         eax,edi
 0051D033    call        004BE9E0
 0051D038    and         eax,0FF
 0051D03D    add         eax,2
>0051D040    jno         0051D047
 0051D042    call        @IntOver
 0051D047    add         ebp,eax
>0051D049    jno         0051D050
 0051D04B    call        @IntOver
 0051D050    mov         dword ptr [ebx+54],ebp
 0051D053    mov         eax,dword ptr [esp+4]
 0051D057    add         dword ptr [ebx+54],eax
>0051D05A    jno         0051D061
 0051D05C    call        @IntOver
 0051D061    call        004BC1BC
 0051D066    test        al,al
>0051D068    jne         0051D075
 0051D06A    sub         dword ptr [ebx+54],1
>0051D06E    jno         0051D075
 0051D070    call        @IntOver
 0051D075    mov         eax,esi
 0051D077    add         esp,0C
 0051D07A    pop         ebp
 0051D07B    pop         edi
 0051D07C    pop         esi
 0051D07D    pop         ebx
 0051D07E    ret
end;*}

//0051D080
{*function sub_0051D080(?:?):?;
begin
 0051D080    push        ebp
 0051D081    mov         ebp,esp
 0051D083    add         esp,0FFFFFEDC
 0051D089    push        ebx
 0051D08A    push        esi
 0051D08B    push        edi
 0051D08C    xor         edx,edx
 0051D08E    mov         dword ptr [ebp-124],edx
 0051D094    mov         dword ptr [ebp-120],edx
 0051D09A    mov         dword ptr [ebp-1C],edx
 0051D09D    mov         dword ptr [ebp-18],edx
 0051D0A0    mov         dword ptr [ebp-10],edx
 0051D0A3    mov         dword ptr [ebp-4],eax
 0051D0A6    xor         eax,eax
 0051D0A8    push        ebp
 0051D0A9    push        51D2DC
 0051D0AE    push        dword ptr fs:[eax]
 0051D0B1    mov         dword ptr fs:[eax],esp
 0051D0B4    xor         esi,esi
 0051D0B6    mov         eax,dword ptr [ebp-4]
 0051D0B9    mov         eax,dword ptr [eax+3C]
 0051D0BC    mov         dword ptr [ebp-14],eax
 0051D0BF    call        004B9F30
 0051D0C4    test        al,al
>0051D0C6    je          0051D136
 0051D0C8    mov         eax,dword ptr [ebp-4]
 0051D0CB    mov         edx,dword ptr [eax+2C]
 0051D0CE    cmp         edx,0FF
>0051D0D4    jbe         0051D0DB
 0051D0D6    call        @BoundErr
 0051D0DB    mov         eax,dword ptr [ebp-14]
 0051D0DE    call        004C3134
 0051D0E3    mov         dword ptr [ebp-0C],eax
 0051D0E6    mov         eax,dword ptr [ebp-0C]
 0051D0E9    mov         edx,dword ptr [eax]
 0051D0EB    call        dword ptr [edx+14]
 0051D0EE    mov         ebx,eax
 0051D0F0    test        ebx,ebx
>0051D0F2    jle         0051D1BA
 0051D0F8    mov         dword ptr [ebp-8],1
 0051D0FF    lea         ecx,[ebp-18]
 0051D102    mov         edx,dword ptr [ebp-8]
 0051D105    sub         edx,1
>0051D108    jno         0051D10F
 0051D10A    call        @IntOver
 0051D10F    mov         eax,dword ptr [ebp-0C]
 0051D112    mov         edi,dword ptr [eax]
 0051D114    call        dword ptr [edi+0C]
 0051D117    mov         edx,dword ptr [ebp-18]
 0051D11A    mov         eax,dword ptr [ebp-4]
 0051D11D    mov         eax,dword ptr [eax+40]
 0051D120    call        TCanvas.TextWidth
 0051D125    cmp         eax,esi
>0051D127    jle         0051D12B
 0051D129    mov         esi,eax
 0051D12B    inc         dword ptr [ebp-8]
 0051D12E    dec         ebx
>0051D12F    jne         0051D0FF
>0051D131    jmp         0051D1BA
 0051D136    mov         eax,dword ptr [ebp-14]
 0051D139    call        004BE9E0
 0051D13E    xor         ebx,ebx
 0051D140    mov         bl,al
 0051D142    sub         ebx,1
>0051D145    jno         0051D14C
 0051D147    call        @IntOver
 0051D14C    test        ebx,ebx
>0051D14E    jl          0051D1BA
 0051D150    inc         ebx
 0051D151    xor         edi,edi
 0051D153    mov         edx,edi
 0051D155    add         edx,1
>0051D158    jno         0051D15F
 0051D15A    call        @IntOver
 0051D15F    cmp         edx,0FF
>0051D165    jbe         0051D16C
 0051D167    call        @BoundErr
 0051D16C    mov         eax,dword ptr [ebp-14]
 0051D16F    call        004BEAD0
 0051D174    test        al,al
>0051D176    jbe         0051D1B6
 0051D178    lea         edx,[ebp-11C]
 0051D17E    mov         eax,dword ptr [ebp-14]
 0051D181    call        004BE988
 0051D186    cmp         edi,0FF
>0051D18C    jbe         0051D193
 0051D18E    call        @BoundErr
 0051D193    mov         dl,byte ptr [ebp+edi-11C]
 0051D19A    lea         eax,[ebp-1C]
 0051D19D    call        @LStrFromChar
 0051D1A2    mov         edx,dword ptr [ebp-1C]
 0051D1A5    mov         eax,dword ptr [ebp-4]
 0051D1A8    mov         eax,dword ptr [eax+40]
 0051D1AB    call        TCanvas.TextWidth
 0051D1B0    cmp         eax,esi
>0051D1B2    jle         0051D1B6
 0051D1B4    mov         esi,eax
 0051D1B6    inc         edi
 0051D1B7    dec         ebx
>0051D1B8    jne         0051D153
 0051D1BA    call        004BC1BC
 0051D1BF    test        al,al
>0051D1C1    je          0051D20A
 0051D1C3    call        004BB3F0
 0051D1C8    test        al,al
>0051D1CA    jne         0051D1DB
 0051D1CC    lea         eax,[ebp-10]
 0051D1CF    mov         edx,51D2F4;' Classement ascendant '
 0051D1D4    call        @LStrLAsg
>0051D1D9    jmp         0051D1E8
 0051D1DB    lea         eax,[ebp-10]
 0051D1DE    mov         edx,51D314;' Classement descendant '
 0051D1E3    call        @LStrLAsg
 0051D1E8    mov         eax,dword ptr [ebp-4]
 0051D1EB    mov         eax,dword ptr [eax+40]
 0051D1EE    mov         edx,dword ptr [ebp-10]
 0051D1F1    call        TCanvas.TextWidth
 0051D1F6    cmp         esi,eax
>0051D1F8    jge         0051D20A
 0051D1FA    mov         eax,dword ptr [ebp-4]
 0051D1FD    mov         eax,dword ptr [eax+40]
 0051D200    mov         edx,dword ptr [ebp-10]
 0051D203    call        TCanvas.TextWidth
 0051D208    mov         esi,eax
 0051D20A    call        004B9E48
 0051D20F    lea         edx,[ebp-120]
 0051D215    call        IntToStr
 0051D21A    mov         ecx,dword ptr [ebp-120]
 0051D220    lea         eax,[ebp-10]
 0051D223    mov         edx,51D334;' Moyennes bulletin sur '
 0051D228    call        @LStrCat3
 0051D22D    mov         eax,dword ptr [ebp-4]
 0051D230    mov         eax,dword ptr [eax+40]
 0051D233    mov         edx,dword ptr [ebp-10]
 0051D236    call        TCanvas.TextWidth
 0051D23B    cmp         esi,eax
>0051D23D    jge         0051D24F
 0051D23F    mov         eax,dword ptr [ebp-4]
 0051D242    mov         eax,dword ptr [eax+40]
 0051D245    mov         edx,dword ptr [ebp-10]
 0051D248    call        TCanvas.TextWidth
 0051D24D    mov         esi,eax
 0051D24F    mov         eax,dword ptr [ebp-4]
 0051D252    cmp         byte ptr [eax+58],0
>0051D256    je          0051D29D
 0051D258    call        004B9E48
 0051D25D    lea         edx,[ebp-124]
 0051D263    call        IntToStr
 0051D268    mov         ecx,dword ptr [ebp-124]
 0051D26E    lea         eax,[ebp-10]
 0051D271    mov         edx,51D354;' Moyennes annuelles sur '
 0051D276    call        @LStrCat3
 0051D27B    mov         eax,dword ptr [ebp-4]
 0051D27E    mov         eax,dword ptr [eax+40]
 0051D281    mov         edx,dword ptr [ebp-10]
 0051D284    call        TCanvas.TextWidth
 0051D289    cmp         esi,eax
>0051D28B    jge         0051D29D
 0051D28D    mov         eax,dword ptr [ebp-4]
 0051D290    mov         eax,dword ptr [eax+40]
 0051D293    mov         edx,dword ptr [ebp-10]
 0051D296    call        TCanvas.TextWidth
 0051D29B    mov         esi,eax
 0051D29D    mov         ebx,esi
 0051D29F    add         ebx,4
>0051D2A2    jno         0051D2A9
 0051D2A4    call        @IntOver
 0051D2A9    xor         eax,eax
 0051D2AB    pop         edx
 0051D2AC    pop         ecx
 0051D2AD    pop         ecx
 0051D2AE    mov         dword ptr fs:[eax],edx
 0051D2B1    push        51D2E3
 0051D2B6    lea         eax,[ebp-124]
 0051D2BC    mov         edx,2
 0051D2C1    call        @LStrArrayClr
 0051D2C6    lea         eax,[ebp-1C]
 0051D2C9    mov         edx,2
 0051D2CE    call        @LStrArrayClr
 0051D2D3    lea         eax,[ebp-10]
 0051D2D6    call        @LStrClr
 0051D2DB    ret
>0051D2DC    jmp         @HandleFinally
>0051D2E1    jmp         0051D2B6
 0051D2E3    mov         eax,ebx
 0051D2E5    pop         edi
 0051D2E6    pop         esi
 0051D2E7    pop         ebx
 0051D2E8    mov         esp,ebp
 0051D2EA    pop         ebp
 0051D2EB    ret
end;*}

//0051D370
{*function sub_0051D370(?:?):?;
begin
 0051D370    push        ebp
 0051D371    mov         ebp,esp
 0051D373    add         esp,0FFFFFFEC
 0051D376    push        ebx
 0051D377    push        esi
 0051D378    xor         edx,edx
 0051D37A    mov         dword ptr [ebp-14],edx
 0051D37D    mov         ebx,eax
 0051D37F    xor         eax,eax
 0051D381    push        ebp
 0051D382    push        51D441
 0051D387    push        dword ptr fs:[eax]
 0051D38A    mov         dword ptr fs:[eax],esp
 0051D38D    xor         eax,eax
 0051D38F    mov         dword ptr [ebp-4],eax
 0051D392    mov         esi,dword ptr [ebx+3C]
 0051D395    call        004BC1BC
 0051D39A    test        al,al
>0051D39C    je          0051D40F
 0051D39E    call        004B9E10
 0051D3A3    push        eax
 0051D3A4    call        004BC298
 0051D3A9    push        eax
 0051D3AA    call        004BC30C
 0051D3AF    push        eax
 0051D3B0    call        004BB3F0
 0051D3B5    mov         ecx,eax
 0051D3B7    mov         edx,dword ptr [ebx+2C]
 0051D3BA    mov         eax,esi
 0051D3BC    call        004C5078
 0051D3C1    mov         dword ptr [ebp-0C],eax
 0051D3C4    mov         eax,dword ptr [ebp-0C]
 0051D3C7    mov         edx,dword ptr [eax]
 0051D3C9    call        dword ptr [edx+14]
 0051D3CC    test        eax,eax
>0051D3CE    jle         0051D40F
 0051D3D0    mov         dword ptr [ebp-10],eax
 0051D3D3    mov         dword ptr [ebp-8],1
 0051D3DA    lea         ecx,[ebp-14]
 0051D3DD    mov         edx,dword ptr [ebp-8]
 0051D3E0    sub         edx,1
>0051D3E3    jno         0051D3EA
 0051D3E5    call        @IntOver
 0051D3EA    mov         eax,dword ptr [ebp-0C]
 0051D3ED    mov         esi,dword ptr [eax]
 0051D3EF    call        dword ptr [esi+0C]
 0051D3F2    mov         ecx,dword ptr [ebp-14]
 0051D3F5    mov         edx,dword ptr [ebx+40]
 0051D3F8    mov         eax,ebx
 0051D3FA    call        00519AA8
 0051D3FF    cmp         eax,dword ptr [ebp-4]
>0051D402    jle         0051D407
 0051D404    mov         dword ptr [ebp-4],eax
 0051D407    inc         dword ptr [ebp-8]
 0051D40A    dec         dword ptr [ebp-10]
>0051D40D    jne         0051D3DA
 0051D40F    mov         eax,ebx
 0051D411    call        0051D080
 0051D416    cmp         eax,dword ptr [ebp-4]
>0051D419    jle         0051D41E
 0051D41B    mov         dword ptr [ebp-4],eax
 0051D41E    mov         ebx,dword ptr [ebp-4]
 0051D421    add         ebx,14
>0051D424    jno         0051D42B
 0051D426    call        @IntOver
 0051D42B    xor         eax,eax
 0051D42D    pop         edx
 0051D42E    pop         ecx
 0051D42F    pop         ecx
 0051D430    mov         dword ptr fs:[eax],edx
 0051D433    push        51D448
 0051D438    lea         eax,[ebp-14]
 0051D43B    call        @LStrClr
 0051D440    ret
>0051D441    jmp         @HandleFinally
>0051D446    jmp         0051D438
 0051D448    mov         eax,ebx
 0051D44A    pop         esi
 0051D44B    pop         ebx
 0051D44C    mov         esp,ebp
 0051D44E    pop         ebp
 0051D44F    ret
end;*}

//0051D450
{*procedure sub_0051D450(?:?; ?:?);
begin
 0051D450    push        ebp
 0051D451    mov         ebp,esp
 0051D453    push        0
 0051D455    push        0
 0051D457    push        0
 0051D459    push        ebx
 0051D45A    push        esi
 0051D45B    push        edi
 0051D45C    mov         edi,edx
 0051D45E    mov         ebx,eax
 0051D460    xor         eax,eax
 0051D462    push        ebp
 0051D463    push        51D55B
 0051D468    push        dword ptr fs:[eax]
 0051D46B    mov         dword ptr fs:[eax],esp
 0051D46E    mov         eax,[00615FEC];^Application:TApplication
 0051D473    mov         eax,dword ptr [eax]
 0051D475    call        TApplication.ProcessMessages
 0051D47A    mov         eax,[00616298];^gvar_00617DE4:TFormProgression
 0051D47F    mov         eax,dword ptr [eax]
 0051D481    cmp         byte ptr [eax+47],0
>0051D485    jne         0051D493
 0051D487    mov         eax,[00616298];^gvar_00617DE4:TFormProgression
 0051D48C    mov         eax,dword ptr [eax]
 0051D48E    call        TCustomForm.Show
 0051D493    push        51D574;'Préparation de l'impression en cours ... page '
 0051D498    mov         eax,[00616298];^gvar_00617DE4:TFormProgression
 0051D49D    mov         eax,dword ptr [eax]
 0051D49F    mov         eax,dword ptr [eax+2D0]
 0051D4A5    call        TProgressBar.GetPosition
 0051D4AA    lea         edx,[ebp-8]
 0051D4AD    call        IntToStr
 0051D4B2    push        dword ptr [ebp-8]
 0051D4B5    push        51D5AC;'/'
 0051D4BA    mov         eax,[00616298];^gvar_00617DE4:TFormProgression
 0051D4BF    mov         eax,dword ptr [eax]
 0051D4C1    mov         eax,dword ptr [eax+2D0]
 0051D4C7    call        TProgressBar.GetMax
 0051D4CC    sub         eax,1
>0051D4CF    jno         0051D4D6
 0051D4D1    call        @IntOver
 0051D4D6    lea         edx,[ebp-0C]
 0051D4D9    call        IntToStr
 0051D4DE    push        dword ptr [ebp-0C]
 0051D4E1    lea         eax,[ebp-4]
 0051D4E4    mov         edx,4
 0051D4E9    call        @LStrCatN
 0051D4EE    mov         edx,dword ptr [ebp-4]
 0051D4F1    mov         eax,[00616298];^gvar_00617DE4:TFormProgression
 0051D4F6    mov         eax,dword ptr [eax]
 0051D4F8    call        TControl.SetText
 0051D4FD    mov         eax,[00616298];^gvar_00617DE4:TFormProgression
 0051D502    mov         eax,dword ptr [eax]
 0051D504    mov         esi,dword ptr [eax+2D0]
 0051D50A    mov         eax,esi
 0051D50C    call        TProgressBar.GetPosition
 0051D511    mov         edx,eax
 0051D513    add         edx,1
>0051D516    jno         0051D51D
 0051D518    call        @IntOver
 0051D51D    mov         eax,[00616298];^gvar_00617DE4:TFormProgression
 0051D522    mov         eax,esi
 0051D524    call        TProgressBar.SetPosition
 0051D529    mov         eax,ebx
 0051D52B    call        00519534
 0051D530    mov         edx,edi
 0051D532    mov         eax,ebx
 0051D534    call        0051D5B0
 0051D539    mov         eax,ebx
 0051D53B    call        0051954C
 0051D540    xor         eax,eax
 0051D542    pop         edx
 0051D543    pop         ecx
 0051D544    pop         ecx
 0051D545    mov         dword ptr fs:[eax],edx
 0051D548    push        51D562
 0051D54D    lea         eax,[ebp-0C]
 0051D550    mov         edx,3
 0051D555    call        @LStrArrayClr
 0051D55A    ret
>0051D55B    jmp         @HandleFinally
>0051D560    jmp         0051D54D
 0051D562    pop         edi
 0051D563    pop         esi
 0051D564    pop         ebx
 0051D565    mov         esp,ebp
 0051D567    pop         ebp
 0051D568    ret
end;*}

//0051D5B0
{*procedure sub_0051D5B0(?:?; ?:?);
begin
 0051D5B0    push        ebp
 0051D5B1    mov         ebp,esp
 0051D5B3    mov         ecx,6B
 0051D5B8    push        0
 0051D5BA    push        0
 0051D5BC    dec         ecx
>0051D5BD    jne         0051D5B8
 0051D5BF    push        ecx
 0051D5C0    push        ebx
 0051D5C1    push        esi
 0051D5C2    push        edi
 0051D5C3    mov         dword ptr [ebp-8],edx
 0051D5C6    mov         dword ptr [ebp-4],eax
 0051D5C9    xor         eax,eax
 0051D5CB    push        ebp
 0051D5CC    push        520749
 0051D5D1    push        dword ptr fs:[eax]
 0051D5D4    mov         dword ptr fs:[eax],esp
 0051D5D7    mov         eax,dword ptr [ebp-4]
 0051D5DA    call        00519E00
 0051D5DF    mov         dword ptr [ebp-48],eax
 0051D5E2    mov         eax,dword ptr [ebp-4]
 0051D5E5    call        0051D370
 0051D5EA    mov         dword ptr [ebp-14],eax
 0051D5ED    mov         eax,dword ptr [ebp-4]
 0051D5F0    mov         eax,dword ptr [eax+40]
 0051D5F3    mov         edx,520760;'ALEXANDRE'
 0051D5F8    call        TCanvas.TextHeight
 0051D5FD    add         eax,4
>0051D600    jno         0051D607
 0051D602    call        @IntOver
 0051D607    mov         dword ptr [ebp-18],eax
 0051D60A    mov         eax,dword ptr [ebp-8]
 0051D60D    mov         edx,dword ptr [ebp-4]
 0051D610    mov         edx,dword ptr [edx+50]
 0051D613    cmp         eax,dword ptr [edx-4]
>0051D616    jb          0051D61D
 0051D618    call        @BoundErr
 0051D61D    mov         eax,dword ptr [edx+eax*4]
 0051D620    mov         edx,dword ptr [ebp-8]
 0051D623    sub         edx,1
>0051D626    jno         0051D62D
 0051D628    call        @IntOver
 0051D62D    mov         ecx,dword ptr [ebp-4]
 0051D630    mov         ecx,dword ptr [ecx+50]
 0051D633    cmp         edx,dword ptr [ecx-4]
>0051D636    jb          0051D63D
 0051D638    call        @BoundErr
 0051D63D    sub         eax,dword ptr [ecx+edx*4]
>0051D640    jno         0051D647
 0051D642    call        @IntOver
 0051D647    mov         dword ptr [ebp-0C],eax
 0051D64A    call        004BDA2C
 0051D64F    push        eax
 0051D650    call        004BD1FC
 0051D655    mov         edx,eax
 0051D657    mov         eax,dword ptr [ebp-4]
 0051D65A    pop         ecx
 0051D65B    call        00519AF8
 0051D660    mov         dword ptr [ebp-24],eax
 0051D663    mov         eax,dword ptr [ebp-4]
 0051D666    mov         eax,dword ptr [eax+3C]
 0051D669    call        004BEA58
 0051D66E    and         eax,0FF
 0051D673    mov         dword ptr [ebp-10],eax
 0051D676    mov         edx,dword ptr [ebp-8]
 0051D679    mov         eax,dword ptr [ebp-4]
 0051D67C    call        00520890
 0051D681    mov         dword ptr [ebp-2C],eax
 0051D684    mov         eax,dword ptr [ebp-4]
 0051D687    call        00519E58
 0051D68C    mov         dword ptr [ebp-40],eax
 0051D68F    mov         eax,dword ptr [ebp-48]
 0051D692    imul        dword ptr [ebp-18]
>0051D695    jno         0051D69C
 0051D697    call        @IntOver
 0051D69C    add         eax,dword ptr [ebp-40]
>0051D69F    jno         0051D6A6
 0051D6A1    call        @IntOver
 0051D6A6    add         eax,14
>0051D6A9    jno         0051D6B0
 0051D6AB    call        @IntOver
 0051D6B0    mov         dword ptr [ebp-30],eax
 0051D6B3    mov         eax,dword ptr [ebp-4]
 0051D6B6    mov         eax,dword ptr [eax+24]
 0051D6B9    sub         eax,dword ptr [ebp-2C]
>0051D6BC    jno         0051D6C3
 0051D6BE    call        @IntOver
 0051D6C3    mov         dword ptr [ebp-0C4],eax
 0051D6C9    fild        dword ptr [ebp-0C4]
 0051D6CF    fdiv        dword ptr ds:[52076C];2:Single
 0051D6D5    call        @TRUNC
 0051D6DA    push        eax
 0051D6DB    sar         eax,1F
 0051D6DE    cmp         eax,edx
 0051D6E0    pop         eax
>0051D6E1    je          0051D6E8
 0051D6E3    call        @BoundErr
 0051D6E8    mov         dword ptr [ebp-34],eax
 0051D6EB    mov         eax,dword ptr [ebp-4]
 0051D6EE    mov         eax,dword ptr [eax+28]
 0051D6F1    sub         eax,dword ptr [ebp-30]
>0051D6F4    jno         0051D6FB
 0051D6F6    call        @IntOver
 0051D6FB    mov         dword ptr [ebp-0C4],eax
 0051D701    fild        dword ptr [ebp-0C4]
 0051D707    fdiv        dword ptr ds:[52076C];2:Single
 0051D70D    call        @TRUNC
 0051D712    push        eax
 0051D713    sar         eax,1F
 0051D716    cmp         eax,edx
 0051D718    pop         eax
>0051D719    je          0051D720
 0051D71B    call        @BoundErr
 0051D720    mov         dword ptr [ebp-38],eax
 0051D723    mov         eax,dword ptr [ebp-4]
 0051D726    mov         edx,dword ptr [eax+2C]
 0051D729    cmp         edx,0FF
>0051D72F    jbe         0051D736
 0051D731    call        @BoundErr
 0051D736    mov         eax,dword ptr [ebp-4]
 0051D739    mov         eax,dword ptr [eax+3C]
 0051D73C    call        004C3134
 0051D741    mov         dword ptr [ebp-70],eax
 0051D744    mov         eax,dword ptr [ebp-70]
 0051D747    mov         edx,dword ptr [eax]
 0051D749    call        dword ptr [edx+14]
 0051D74C    mov         dword ptr [ebp-58],eax
 0051D74F    mov         dword ptr [ebp-3C],1
 0051D756    mov         eax,dword ptr [ebp-8]
 0051D759    sub         eax,1
>0051D75C    jno         0051D763
 0051D75E    call        @IntOver
 0051D763    mov         edx,dword ptr [ebp-4]
 0051D766    mov         edx,dword ptr [edx+50]
 0051D769    cmp         eax,dword ptr [edx-4]
>0051D76C    jb          0051D773
 0051D76E    call        @BoundErr
 0051D773    mov         eax,dword ptr [edx+eax*4]
 0051D776    mov         edx,dword ptr [ebp-8]
 0051D779    mov         ecx,dword ptr [ebp-4]
 0051D77C    mov         ecx,dword ptr [ecx+50]
 0051D77F    cmp         edx,dword ptr [ecx-4]
>0051D782    jb          0051D789
 0051D784    call        @BoundErr
 0051D789    mov         edx,dword ptr [ecx+edx*4]
 0051D78C    sub         edx,1
>0051D78F    jno         0051D796
 0051D791    call        @IntOver
 0051D796    sub         edx,eax
>0051D798    jl          0051DBBD
 0051D79E    inc         edx
 0051D79F    mov         dword ptr [ebp-7C],edx
 0051D7A2    mov         dword ptr [ebp-28],eax
 0051D7A5    lea         eax,[ebp-60]
 0051D7A8    call        @LStrClr
 0051D7AD    mov         eax,dword ptr [ebp-34]
 0051D7B0    add         eax,dword ptr [ebp-24]
>0051D7B3    jno         0051D7BA
 0051D7B5    call        @IntOver
 0051D7BA    mov         edx,dword ptr [ebp-3C]
 0051D7BD    sub         edx,1
>0051D7C0    jno         0051D7C7
 0051D7C2    call        @IntOver
 0051D7C7    imul        edx,dword ptr [ebp-14]
>0051D7CB    jno         0051D7D2
 0051D7CD    call        @IntOver
 0051D7D2    add         eax,edx
>0051D7D4    jno         0051D7DB
 0051D7D6    call        @IntOver
 0051D7DB    mov         dword ptr [ebp-0C0],eax
 0051D7E1    mov         eax,dword ptr [ebp-38]
 0051D7E4    mov         dword ptr [ebp-0BC],eax
 0051D7EA    mov         eax,dword ptr [ebp-0C0]
 0051D7F0    add         eax,dword ptr [ebp-14]
>0051D7F3    jno         0051D7FA
 0051D7F5    call        @IntOver
 0051D7FA    mov         dword ptr [ebp-0B8],eax
 0051D800    mov         eax,dword ptr [ebp-0BC]
 0051D806    add         eax,dword ptr [ebp-18]
>0051D809    jno         0051D810
 0051D80B    call        @IntOver
 0051D810    mov         dword ptr [ebp-0B4],eax
 0051D816    mov         eax,dword ptr [ebp-4]
 0051D819    mov         ebx,dword ptr [eax+3C]
 0051D81C    mov         eax,dword ptr [ebp-4]
 0051D81F    cmp         byte ptr [eax+58],0
>0051D823    jne         0051D913
 0051D829    call        004BB35C
 0051D82E    test        al,al
>0051D830    je          0051D87C
 0051D832    mov         al,1
 0051D834    mov         edx,dword ptr [ebp-58]
 0051D837    cmp         edx,0FF
>0051D83D    jbe         0051D844
 0051D83F    call        @BoundErr
 0051D844    lea         ecx,[ebp-0E4]
 0051D84A    mov         ah,20
 0051D84C    call        @SetRange
 0051D851    mov         eax,dword ptr [ebp-28]
 0051D854    cmp         eax,0FF
>0051D859    ja          0051D862
 0051D85B    bt          dword ptr [ebp-0E4],eax
>0051D862    jae         0051D87C
 0051D864    lea         ecx,[ebp-60]
 0051D867    mov         edx,dword ptr [ebp-28]
 0051D86A    sub         edx,1
>0051D86D    jno         0051D874
 0051D86F    call        @IntOver
 0051D874    mov         eax,dword ptr [ebp-70]
 0051D877    mov         ebx,dword ptr [eax]
 0051D879    call        dword ptr [ebx+0C]
 0051D87C    call        004BC1BC
 0051D881    test        al,al
>0051D883    je          0051D897
 0051D885    mov         eax,dword ptr [ebp-4]
 0051D888    mov         esi,dword ptr [eax+54]
 0051D88B    sub         esi,1
>0051D88E    jno         0051D895
 0051D890    call        @IntOver
>0051D895    jmp         0051D89D
 0051D897    mov         eax,dword ptr [ebp-4]
 0051D89A    mov         esi,dword ptr [eax+54]
 0051D89D    call        004BC188
 0051D8A2    test        al,al
>0051D8A4    je          0051D8E2
 0051D8A6    mov         eax,esi
 0051D8A8    sub         eax,1
>0051D8AB    jno         0051D8B2
 0051D8AD    call        @IntOver
 0051D8B2    cmp         eax,dword ptr [ebp-28]
>0051D8B5    jne         0051D8C4
 0051D8B7    lea         eax,[ebp-60]
 0051D8BA    mov         edx,520778;' Moy. Oral'
 0051D8BF    call        @LStrLAsg
 0051D8C4    mov         eax,esi
 0051D8C6    sub         eax,2
>0051D8C9    jno         0051D8D0
 0051D8CB    call        @IntOver
 0051D8D0    cmp         eax,dword ptr [ebp-28]
>0051D8D3    jne         0051D8E2
 0051D8D5    lea         eax,[ebp-60]
 0051D8D8    mov         edx,52078C;' Moy. Ecrit'
 0051D8DD    call        @LStrLAsg
 0051D8E2    cmp         esi,dword ptr [ebp-28]
>0051D8E5    jne         0051DAD1
 0051D8EB    call        004B9E48
 0051D8F0    lea         edx,[ebp-0E8]
 0051D8F6    call        IntToStr
 0051D8FB    mov         ecx,dword ptr [ebp-0E8]
 0051D901    lea         eax,[ebp-60]
 0051D904    mov         edx,5207A0;'Moyennes bulletin sur '
 0051D909    call        @LStrCat3
>0051D90E    jmp         0051DAD1
 0051D913    call        004BC1BC
 0051D918    test        al,al
>0051D91A    je          0051D92E
 0051D91C    mov         eax,dword ptr [ebp-4]
 0051D91F    mov         esi,dword ptr [eax+54]
 0051D922    sub         esi,1
>0051D925    jno         0051D92C
 0051D927    call        @IntOver
>0051D92C    jmp         0051D934
 0051D92E    mov         eax,dword ptr [ebp-4]
 0051D931    mov         esi,dword ptr [eax+54]
 0051D934    call        004BB35C
 0051D939    test        al,al
>0051D93B    je          0051DA0E
 0051D941    mov         al,1
 0051D943    mov         edx,dword ptr [ebp-58]
 0051D946    cmp         edx,0FF
>0051D94C    jbe         0051D953
 0051D94E    call        @BoundErr
 0051D953    lea         ecx,[ebp-0E4]
 0051D959    mov         ah,20
 0051D95B    call        @SetRange
 0051D960    mov         eax,dword ptr [ebp-28]
 0051D963    cmp         eax,0FF
>0051D968    ja          0051D971
 0051D96A    bt          dword ptr [ebp-0E4],eax
>0051D971    jae         0051D98B
 0051D973    lea         ecx,[ebp-60]
 0051D976    mov         edx,dword ptr [ebp-28]
 0051D979    sub         edx,1
>0051D97C    jno         0051D983
 0051D97E    call        @IntOver
 0051D983    mov         eax,dword ptr [ebp-70]
 0051D986    mov         edi,dword ptr [eax]
 0051D988    call        dword ptr [edi+0C]
 0051D98B    mov         eax,ebx
 0051D98D    call        004BE9E0
 0051D992    xor         edx,edx
 0051D994    mov         dl,al
 0051D996    add         edx,dword ptr [ebp-58]
>0051D999    jno         0051D9A0
 0051D99B    call        @IntOver
 0051D9A0    cmp         edx,0FF
>0051D9A6    jbe         0051D9AD
 0051D9A8    call        @BoundErr
 0051D9AD    mov         eax,dword ptr [ebp-58]
 0051D9B0    add         eax,1
>0051D9B3    jno         0051D9BA
 0051D9B5    call        @IntOver
 0051D9BA    cmp         eax,0FF
>0051D9BF    jbe         0051D9C6
 0051D9C1    call        @BoundErr
 0051D9C6    lea         ecx,[ebp-0E4]
 0051D9CC    mov         ah,20
 0051D9CE    call        @SetRange
 0051D9D3    mov         eax,dword ptr [ebp-28]
 0051D9D6    cmp         eax,0FF
>0051D9DB    ja          0051D9E4
 0051D9DD    bt          dword ptr [ebp-0E4],eax
>0051D9E4    jae         0051DA64
 0051D9E6    mov         eax,ebx
 0051D9E8    call        004BEA4C
 0051D9ED    lea         ecx,[ebp-60]
 0051D9F0    mov         edx,dword ptr [ebp-28]
 0051D9F3    sub         edx,1
>0051D9F6    jno         0051D9FD
 0051D9F8    call        @IntOver
 0051D9FD    sub         edx,dword ptr [ebp-58]
>0051DA00    jno         0051DA07
 0051DA02    call        @IntOver
 0051DA07    mov         ebx,dword ptr [eax]
 0051DA09    call        dword ptr [ebx+0C]
>0051DA0C    jmp         0051DA64
 0051DA0E    mov         eax,ebx
 0051DA10    call        004BE9E0
 0051DA15    xor         edx,edx
 0051DA17    mov         dl,al
 0051DA19    cmp         edx,0FF
>0051DA1F    jbe         0051DA26
 0051DA21    call        @BoundErr
 0051DA26    mov         al,1
 0051DA28    lea         ecx,[ebp-0E4]
 0051DA2E    mov         ah,20
 0051DA30    call        @SetRange
 0051DA35    mov         eax,dword ptr [ebp-28]
 0051DA38    cmp         eax,0FF
>0051DA3D    ja          0051DA46
 0051DA3F    bt          dword ptr [ebp-0E4],eax
>0051DA46    jae         0051DA64
 0051DA48    mov         eax,ebx
 0051DA4A    call        004BEA4C
 0051DA4F    lea         ecx,[ebp-60]
 0051DA52    mov         edx,dword ptr [ebp-28]
 0051DA55    sub         edx,1
>0051DA58    jno         0051DA5F
 0051DA5A    call        @IntOver
 0051DA5F    mov         ebx,dword ptr [eax]
 0051DA61    call        dword ptr [ebx+0C]
 0051DA64    call        004BC188
 0051DA69    test        al,al
>0051DA6B    je          0051DAA9
 0051DA6D    mov         eax,esi
 0051DA6F    sub         eax,1
>0051DA72    jno         0051DA79
 0051DA74    call        @IntOver
 0051DA79    cmp         eax,dword ptr [ebp-28]
>0051DA7C    jne         0051DA8B
 0051DA7E    lea         eax,[ebp-60]
 0051DA81    mov         edx,5207C0;'Moy. Oral'
 0051DA86    call        @LStrLAsg
 0051DA8B    mov         eax,esi
 0051DA8D    sub         eax,2
>0051DA90    jno         0051DA97
 0051DA92    call        @IntOver
 0051DA97    cmp         eax,dword ptr [ebp-28]
>0051DA9A    jne         0051DAA9
 0051DA9C    lea         eax,[ebp-60]
 0051DA9F    mov         edx,5207D4;'Moy. Ecrit'
 0051DAA4    call        @LStrLAsg
 0051DAA9    cmp         esi,dword ptr [ebp-28]
>0051DAAC    jne         0051DAD1
 0051DAAE    call        004B9E48
 0051DAB3    lea         edx,[ebp-0EC]
 0051DAB9    call        IntToStr
 0051DABE    mov         ecx,dword ptr [ebp-0EC]
 0051DAC4    lea         eax,[ebp-60]
 0051DAC7    mov         edx,5207E8;'Moyennes annuelles sur '
 0051DACC    call        @LStrCat3
 0051DAD1    call        004BC1BC
 0051DAD6    test        al,al
>0051DAD8    je          0051DB0A
 0051DADA    mov         eax,dword ptr [ebp-4]
 0051DADD    mov         eax,dword ptr [eax+54]
 0051DAE0    cmp         eax,dword ptr [ebp-28]
>0051DAE3    jne         0051DB0A
 0051DAE5    call        004BB3F0
 0051DAEA    test        al,al
>0051DAEC    jne         0051DAFD
 0051DAEE    lea         eax,[ebp-60]
 0051DAF1    mov         edx,520808;' Classement ascendant '
 0051DAF6    call        @LStrLAsg
>0051DAFB    jmp         0051DB0A
 0051DAFD    lea         eax,[ebp-60]
 0051DB00    mov         edx,520828;' Classement descendant '
 0051DB05    call        @LStrLAsg
 0051DB0A    call        004BC1BC
 0051DB0F    test        al,al
>0051DB11    je          0051DB7A
 0051DB13    mov         eax,dword ptr [ebp-4]
 0051DB16    mov         eax,dword ptr [eax+54]
 0051DB19    cmp         eax,dword ptr [ebp-28]
>0051DB1C    je          0051DB4C
 0051DB1E    push        5
 0051DB20    lea         eax,[ebp-0C0]
 0051DB26    push        eax
 0051DB27    mov         eax,dword ptr [ebp-60]
 0051DB2A    call        @LStrLen
 0051DB2F    push        eax
 0051DB30    mov         eax,dword ptr [ebp-60]
 0051DB33    call        @LStrToPChar
 0051DB38    push        eax
 0051DB39    mov         eax,dword ptr [ebp-4]
 0051DB3C    mov         eax,dword ptr [eax+40]
 0051DB3F    call        TCanvas.GetHandle
 0051DB44    push        eax
 0051DB45    call        user32.DrawTextA
>0051DB4A    jmp         0051DBA6
 0051DB4C    push        4
 0051DB4E    lea         eax,[ebp-0C0]
 0051DB54    push        eax
 0051DB55    mov         eax,dword ptr [ebp-60]
 0051DB58    call        @LStrLen
 0051DB5D    push        eax
 0051DB5E    mov         eax,dword ptr [ebp-60]
 0051DB61    call        @LStrToPChar
 0051DB66    push        eax
 0051DB67    mov         eax,dword ptr [ebp-4]
 0051DB6A    mov         eax,dword ptr [eax+40]
 0051DB6D    call        TCanvas.GetHandle
 0051DB72    push        eax
 0051DB73    call        user32.DrawTextA
>0051DB78    jmp         0051DBA6
 0051DB7A    push        5
 0051DB7C    lea         eax,[ebp-0C0]
 0051DB82    push        eax
 0051DB83    mov         eax,dword ptr [ebp-60]
 0051DB86    call        @LStrLen
 0051DB8B    push        eax
 0051DB8C    mov         eax,dword ptr [ebp-60]
 0051DB8F    call        @LStrToPChar
 0051DB94    push        eax
 0051DB95    mov         eax,dword ptr [ebp-4]
 0051DB98    mov         eax,dword ptr [eax+40]
 0051DB9B    call        TCanvas.GetHandle
 0051DBA0    push        eax
 0051DBA1    call        user32.DrawTextA
 0051DBA6    add         dword ptr [ebp-3C],1
>0051DBAA    jno         0051DBB1
 0051DBAC    call        @IntOver
 0051DBB1    inc         dword ptr [ebp-28]
 0051DBB4    dec         dword ptr [ebp-7C]
>0051DBB7    jne         0051D7A5
 0051DBBD    mov         eax,dword ptr [ebp-4]
 0051DBC0    mov         eax,dword ptr [eax+3C]
 0051DBC3    mov         dword ptr [ebp-80],eax
 0051DBC6    call        004B9E10
 0051DBCB    push        eax
 0051DBCC    call        004BC298
 0051DBD1    push        eax
 0051DBD2    call        004BC30C
 0051DBD7    push        eax
 0051DBD8    call        004BB3F0
 0051DBDD    mov         ecx,eax
 0051DBDF    mov         eax,dword ptr [ebp-4]
 0051DBE2    mov         edx,dword ptr [eax+2C]
 0051DBE5    mov         eax,dword ptr [ebp-80]
 0051DBE8    call        004C5078
 0051DBED    mov         dword ptr [ebp-74],eax
 0051DBF0    mov         eax,dword ptr [ebp-4]
 0051DBF3    mov         eax,dword ptr [eax+3C]
 0051DBF6    call        004BEA58
 0051DBFB    and         eax,0FF
 0051DC00    mov         dword ptr [ebp-54],eax
 0051DC03    mov         eax,dword ptr [ebp-4]
 0051DC06    cmp         byte ptr [eax+34],0
>0051DC0A    je          0051DC50
 0051DC0C    push        520848;' '
 0051DC11    lea         edx,[ebp-0F4]
 0051DC17    mov         eax,dword ptr [ebp-54]
 0051DC1A    call        IntToStr
 0051DC1F    push        dword ptr [ebp-0F4]
 0051DC25    push        520848;' '
 0051DC2A    lea         eax,[ebp-0F0]
 0051DC30    mov         edx,3
 0051DC35    call        @LStrCatN
 0051DC3A    mov         edx,dword ptr [ebp-0F0]
 0051DC40    mov         eax,dword ptr [ebp-4]
 0051DC43    mov         eax,dword ptr [eax+40]
 0051DC46    call        TCanvas.TextWidth
 0051DC4B    mov         dword ptr [ebp-50],eax
>0051DC4E    jmp         0051DC55
 0051DC50    xor         eax,eax
 0051DC52    mov         dword ptr [ebp-50],eax
 0051DC55    mov         eax,dword ptr [ebp-54]
 0051DC58    test        eax,eax
>0051DC5A    jle         0051EC5F
 0051DC60    mov         dword ptr [ebp-7C],eax
 0051DC63    mov         dword ptr [ebp-20],1
 0051DC6A    mov         eax,dword ptr [ebp-4]
 0051DC6D    cmp         byte ptr [eax+34],0
>0051DC71    je          0051DF43
 0051DC77    mov         eax,dword ptr [ebp-20]
 0051DC7A    dec         eax
 0051DC7B    sub         eax,9
>0051DC7E    jae         0051DCAD
 0051DC80    push        520854;'  '
 0051DC85    lea         edx,[ebp-0F8]
 0051DC8B    mov         eax,dword ptr [ebp-20]
 0051DC8E    call        IntToStr
 0051DC93    push        dword ptr [ebp-0F8]
 0051DC99    push        520848;' '
 0051DC9E    lea         eax,[ebp-64]
 0051DCA1    mov         edx,3
 0051DCA6    call        @LStrCatN
>0051DCAB    jmp         0051DCD8
 0051DCAD    push        520848;' '
 0051DCB2    lea         edx,[ebp-0FC]
 0051DCB8    mov         eax,dword ptr [ebp-20]
 0051DCBB    call        IntToStr
 0051DCC0    push        dword ptr [ebp-0FC]
 0051DCC6    push        520848;' '
 0051DCCB    lea         eax,[ebp-64]
 0051DCCE    mov         edx,3
 0051DCD3    call        @LStrCatN
 0051DCD8    mov         eax,dword ptr [ebp-34]
 0051DCDB    mov         dword ptr [ebp-0C0],eax
 0051DCE1    mov         eax,dword ptr [ebp-20]
 0051DCE4    imul        dword ptr [ebp-18]
>0051DCE7    jno         0051DCEE
 0051DCE9    call        @IntOver
 0051DCEE    add         eax,dword ptr [ebp-38]
>0051DCF1    jno         0051DCF8
 0051DCF3    call        @IntOver
 0051DCF8    mov         dword ptr [ebp-0BC],eax
 0051DCFE    mov         eax,dword ptr [ebp-0C0]
 0051DD04    add         eax,dword ptr [ebp-50]
>0051DD07    jno         0051DD0E
 0051DD09    call        @IntOver
 0051DD0E    mov         dword ptr [ebp-0B8],eax
 0051DD14    mov         eax,dword ptr [ebp-0BC]
 0051DD1A    add         eax,dword ptr [ebp-18]
>0051DD1D    jno         0051DD24
 0051DD1F    call        @IntOver
 0051DD24    mov         dword ptr [ebp-0B4],eax
 0051DD2A    lea         eax,[ebp-60]
 0051DD2D    mov         edx,dword ptr [ebp-64]
 0051DD30    call        @LStrLAsg
 0051DD35    push        4
 0051DD37    lea         eax,[ebp-0C0]
 0051DD3D    push        eax
 0051DD3E    mov         eax,dword ptr [ebp-60]
 0051DD41    call        @LStrLen
 0051DD46    push        eax
 0051DD47    mov         eax,dword ptr [ebp-60]
 0051DD4A    call        @LStrToPChar
 0051DD4F    push        eax
 0051DD50    mov         eax,dword ptr [ebp-4]
 0051DD53    mov         eax,dword ptr [eax+40]
 0051DD56    call        TCanvas.GetHandle
 0051DD5B    push        eax
 0051DD5C    call        user32.DrawTextA
 0051DD61    mov         eax,dword ptr [ebp-34]
 0051DD64    add         eax,dword ptr [ebp-50]
>0051DD67    jno         0051DD6E
 0051DD69    call        @IntOver
 0051DD6E    mov         dword ptr [ebp-0C0],eax
 0051DD74    mov         eax,dword ptr [ebp-20]
 0051DD77    imul        dword ptr [ebp-18]
>0051DD7A    jno         0051DD81
 0051DD7C    call        @IntOver
 0051DD81    add         eax,dword ptr [ebp-38]
>0051DD84    jno         0051DD8B
 0051DD86    call        @IntOver
 0051DD8B    mov         dword ptr [ebp-0BC],eax
 0051DD91    mov         eax,dword ptr [ebp-0C0]
 0051DD97    add         eax,dword ptr [ebp-24]
>0051DD9A    jno         0051DDA1
 0051DD9C    call        @IntOver
 0051DDA1    add         eax,dword ptr [ebp-50]
>0051DDA4    jno         0051DDAB
 0051DDA6    call        @IntOver
 0051DDAB    mov         dword ptr [ebp-0B8],eax
 0051DDB1    mov         eax,dword ptr [ebp-0BC]
 0051DDB7    add         eax,dword ptr [ebp-18]
>0051DDBA    jno         0051DDC1
 0051DDBC    call        @IntOver
 0051DDC1    mov         dword ptr [ebp-0B4],eax
 0051DDC7    mov         edx,dword ptr [ebp-20]
 0051DDCA    cmp         edx,0FF
>0051DDD0    jbe         0051DDD7
 0051DDD2    call        @BoundErr
 0051DDD7    mov         eax,dword ptr [ebp-4]
 0051DDDA    mov         eax,dword ptr [eax+3C]
 0051DDDD    call        004C8E50
 0051DDE2    test        al,al
>0051DDE4    je          0051DE36
 0051DDE6    call        004BDA2C
 0051DDEB    test        al,al
>0051DDED    je          0051DE36
 0051DDEF    lea         ecx,[ebp-200]
 0051DDF5    mov         edx,dword ptr [ebp-20]
 0051DDF8    cmp         edx,0FF
>0051DDFE    jbe         0051DE05
 0051DE00    call        @BoundErr
 0051DE05    mov         eax,dword ptr [ebp-4]
 0051DE08    mov         eax,dword ptr [eax+3C]
 0051DE0B    call        004BEA64
 0051DE10    lea         edx,[ebp-200]
 0051DE16    lea         eax,[ebp-100]
 0051DE1C    call        @LStrFromString
 0051DE21    mov         edx,dword ptr [ebp-100]
 0051DE27    lea         eax,[ebp-6C]
 0051DE2A    mov         ecx,520860;' (R)'
 0051DE2F    call        @LStrCat3
>0051DE34    jmp         0051DE65
 0051DE36    lea         ecx,[ebp-200]
 0051DE3C    mov         edx,dword ptr [ebp-20]
 0051DE3F    cmp         edx,0FF
>0051DE45    jbe         0051DE4C
 0051DE47    call        @BoundErr
 0051DE4C    mov         eax,dword ptr [ebp-4]
 0051DE4F    mov         eax,dword ptr [eax+3C]
 0051DE52    call        004BEA64
 0051DE57    lea         edx,[ebp-200]
 0051DE5D    lea         eax,[ebp-6C]
 0051DE60    call        @LStrFromString
 0051DE65    call        004BD1FC
 0051DE6A    test        al,al
>0051DE6C    je          0051DEF8
 0051DE72    lea         ecx,[ebp-200]
 0051DE78    mov         edx,dword ptr [ebp-20]
 0051DE7B    cmp         edx,0FF
>0051DE81    jbe         0051DE88
 0051DE83    call        @BoundErr
 0051DE88    mov         eax,dword ptr [ebp-4]
 0051DE8B    mov         eax,dword ptr [eax+3C]
 0051DE8E    call        004C8BB8
 0051DE93    lea         edx,[ebp-200]
 0051DE99    lea         eax,[ebp-5C]
 0051DE9C    call        @LStrFromString
 0051DEA1    lea         edx,[ebp-204]
 0051DEA7    mov         eax,dword ptr [ebp-5C]
 0051DEAA    call        Trim
 0051DEAF    cmp         dword ptr [ebp-204],0
>0051DEB6    je          0051DEDC
 0051DEB8    push        520848;' '
 0051DEBD    push        dword ptr [ebp-6C]
 0051DEC0    push        520870;' ('
 0051DEC5    push        dword ptr [ebp-5C]
 0051DEC8    push        52087C;')'
 0051DECD    lea         eax,[ebp-60]
 0051DED0    mov         edx,5
 0051DED5    call        @LStrCatN
>0051DEDA    jmp         0051DF12
 0051DEDC    push        520848;' '
 0051DEE1    push        dword ptr [ebp-6C]
 0051DEE4    push        520848;' '
 0051DEE9    lea         eax,[ebp-60]
 0051DEEC    mov         edx,3
 0051DEF1    call        @LStrCatN
>0051DEF6    jmp         0051DF12
 0051DEF8    push        520848;' '
 0051DEFD    push        dword ptr [ebp-6C]
 0051DF00    push        520848;' '
 0051DF05    lea         eax,[ebp-60]
 0051DF08    mov         edx,3
 0051DF0D    call        @LStrCatN
 0051DF12    push        4
 0051DF14    lea         eax,[ebp-0C0]
 0051DF1A    push        eax
 0051DF1B    mov         eax,dword ptr [ebp-60]
 0051DF1E    call        @LStrLen
 0051DF23    push        eax
 0051DF24    mov         eax,dword ptr [ebp-60]
 0051DF27    call        @LStrToPChar
 0051DF2C    push        eax
 0051DF2D    mov         eax,dword ptr [ebp-4]
 0051DF30    mov         eax,dword ptr [eax+40]
 0051DF33    call        TCanvas.GetHandle
 0051DF38    push        eax
 0051DF39    call        user32.DrawTextA
>0051DF3E    jmp         0051E10C
 0051DF43    mov         eax,dword ptr [ebp-34]
 0051DF46    mov         dword ptr [ebp-0C0],eax
 0051DF4C    mov         eax,dword ptr [ebp-20]
 0051DF4F    imul        dword ptr [ebp-18]
>0051DF52    jno         0051DF59
 0051DF54    call        @IntOver
 0051DF59    add         eax,dword ptr [ebp-38]
>0051DF5C    jno         0051DF63
 0051DF5E    call        @IntOver
 0051DF63    mov         dword ptr [ebp-0BC],eax
 0051DF69    mov         eax,dword ptr [ebp-0C0]
 0051DF6F    add         eax,dword ptr [ebp-24]
>0051DF72    jno         0051DF79
 0051DF74    call        @IntOver
 0051DF79    mov         dword ptr [ebp-0B8],eax
 0051DF7F    mov         eax,dword ptr [ebp-0BC]
 0051DF85    add         eax,dword ptr [ebp-18]
>0051DF88    jno         0051DF8F
 0051DF8A    call        @IntOver
 0051DF8F    mov         dword ptr [ebp-0B4],eax
 0051DF95    mov         edx,dword ptr [ebp-20]
 0051DF98    cmp         edx,0FF
>0051DF9E    jbe         0051DFA5
 0051DFA0    call        @BoundErr
 0051DFA5    mov         eax,dword ptr [ebp-4]
 0051DFA8    mov         eax,dword ptr [eax+3C]
 0051DFAB    call        004C8E50
 0051DFB0    test        al,al
>0051DFB2    je          0051E004
 0051DFB4    call        004BDA2C
 0051DFB9    test        al,al
>0051DFBB    je          0051E004
 0051DFBD    lea         ecx,[ebp-200]
 0051DFC3    mov         edx,dword ptr [ebp-20]
 0051DFC6    cmp         edx,0FF
>0051DFCC    jbe         0051DFD3
 0051DFCE    call        @BoundErr
 0051DFD3    mov         eax,dword ptr [ebp-4]
 0051DFD6    mov         eax,dword ptr [eax+3C]
 0051DFD9    call        004BEA64
 0051DFDE    lea         edx,[ebp-200]
 0051DFE4    lea         eax,[ebp-208]
 0051DFEA    call        @LStrFromString
 0051DFEF    mov         edx,dword ptr [ebp-208]
 0051DFF5    lea         eax,[ebp-6C]
 0051DFF8    mov         ecx,520860;' (R)'
 0051DFFD    call        @LStrCat3
>0051E002    jmp         0051E033
 0051E004    lea         ecx,[ebp-200]
 0051E00A    mov         edx,dword ptr [ebp-20]
 0051E00D    cmp         edx,0FF
>0051E013    jbe         0051E01A
 0051E015    call        @BoundErr
 0051E01A    mov         eax,dword ptr [ebp-4]
 0051E01D    mov         eax,dword ptr [eax+3C]
 0051E020    call        004BEA64
 0051E025    lea         edx,[ebp-200]
 0051E02B    lea         eax,[ebp-6C]
 0051E02E    call        @LStrFromString
 0051E033    call        004BD1FC
 0051E038    test        al,al
>0051E03A    je          0051E0C6
 0051E040    lea         ecx,[ebp-200]
 0051E046    mov         edx,dword ptr [ebp-20]
 0051E049    cmp         edx,0FF
>0051E04F    jbe         0051E056
 0051E051    call        @BoundErr
 0051E056    mov         eax,dword ptr [ebp-4]
 0051E059    mov         eax,dword ptr [eax+3C]
 0051E05C    call        004C8BB8
 0051E061    lea         edx,[ebp-200]
 0051E067    lea         eax,[ebp-5C]
 0051E06A    call        @LStrFromString
 0051E06F    lea         edx,[ebp-20C]
 0051E075    mov         eax,dword ptr [ebp-5C]
 0051E078    call        Trim
 0051E07D    cmp         dword ptr [ebp-20C],0
>0051E084    je          0051E0AA
 0051E086    push        520848;' '
 0051E08B    push        dword ptr [ebp-6C]
 0051E08E    push        520870;' ('
 0051E093    push        dword ptr [ebp-5C]
 0051E096    push        52087C;')'
 0051E09B    lea         eax,[ebp-60]
 0051E09E    mov         edx,5
 0051E0A3    call        @LStrCatN
>0051E0A8    jmp         0051E0E0
 0051E0AA    push        520848;' '
 0051E0AF    push        dword ptr [ebp-6C]
 0051E0B2    push        520848;' '
 0051E0B7    lea         eax,[ebp-60]
 0051E0BA    mov         edx,3
 0051E0BF    call        @LStrCatN
>0051E0C4    jmp         0051E0E0
 0051E0C6    push        520848;' '
 0051E0CB    push        dword ptr [ebp-6C]
 0051E0CE    push        520848;' '
 0051E0D3    lea         eax,[ebp-60]
 0051E0D6    mov         edx,3
 0051E0DB    call        @LStrCatN
 0051E0E0    push        4
 0051E0E2    lea         eax,[ebp-0C0]
 0051E0E8    push        eax
 0051E0E9    mov         eax,dword ptr [ebp-60]
 0051E0EC    call        @LStrLen
 0051E0F1    push        eax
 0051E0F2    mov         eax,dword ptr [ebp-60]
 0051E0F5    call        @LStrToPChar
 0051E0FA    push        eax
 0051E0FB    mov         eax,dword ptr [ebp-4]
 0051E0FE    mov         eax,dword ptr [eax+40]
 0051E101    call        TCanvas.GetHandle
 0051E106    push        eax
 0051E107    call        user32.DrawTextA
 0051E10C    mov         dword ptr [ebp-3C],1
 0051E113    mov         eax,dword ptr [ebp-8]
 0051E116    sub         eax,1
>0051E119    jno         0051E120
 0051E11B    call        @IntOver
 0051E120    mov         edx,dword ptr [ebp-4]
 0051E123    mov         edx,dword ptr [edx+50]
 0051E126    cmp         eax,dword ptr [edx-4]
>0051E129    jb          0051E130
 0051E12B    call        @BoundErr
 0051E130    mov         eax,dword ptr [edx+eax*4]
 0051E133    mov         edx,dword ptr [ebp-8]
 0051E136    mov         ecx,dword ptr [ebp-4]
 0051E139    mov         ecx,dword ptr [ecx+50]
 0051E13C    cmp         edx,dword ptr [ecx-4]
>0051E13F    jb          0051E146
 0051E141    call        @BoundErr
 0051E146    mov         edx,dword ptr [ecx+edx*4]
 0051E149    sub         edx,1
>0051E14C    jno         0051E153
 0051E14E    call        @IntOver
 0051E153    sub         edx,eax
>0051E155    jl          0051EC53
 0051E15B    inc         edx
 0051E15C    mov         dword ptr [ebp-84],edx
 0051E162    mov         dword ptr [ebp-28],eax
 0051E165    lea         eax,[ebp-60]
 0051E168    call        @LStrClr
 0051E16D    mov         eax,dword ptr [ebp-34]
 0051E170    add         eax,dword ptr [ebp-24]
>0051E173    jno         0051E17A
 0051E175    call        @IntOver
 0051E17A    mov         edx,dword ptr [ebp-3C]
 0051E17D    sub         edx,1
>0051E180    jno         0051E187
 0051E182    call        @IntOver
 0051E187    imul        edx,dword ptr [ebp-14]
>0051E18B    jno         0051E192
 0051E18D    call        @IntOver
 0051E192    add         eax,edx
>0051E194    jno         0051E19B
 0051E196    call        @IntOver
 0051E19B    mov         dword ptr [ebp-0C0],eax
 0051E1A1    mov         eax,dword ptr [ebp-20]
 0051E1A4    imul        dword ptr [ebp-18]
>0051E1A7    jno         0051E1AE
 0051E1A9    call        @IntOver
 0051E1AE    add         eax,dword ptr [ebp-38]
>0051E1B1    jno         0051E1B8
 0051E1B3    call        @IntOver
 0051E1B8    mov         dword ptr [ebp-0BC],eax
 0051E1BE    mov         eax,dword ptr [ebp-0C0]
 0051E1C4    add         eax,dword ptr [ebp-14]
>0051E1C7    jno         0051E1CE
 0051E1C9    call        @IntOver
 0051E1CE    mov         dword ptr [ebp-0B8],eax
 0051E1D4    mov         eax,dword ptr [ebp-0BC]
 0051E1DA    add         eax,dword ptr [ebp-18]
>0051E1DD    jno         0051E1E4
 0051E1DF    call        @IntOver
 0051E1E4    mov         dword ptr [ebp-0B4],eax
 0051E1EA    mov         eax,dword ptr [ebp-4]
 0051E1ED    mov         ebx,dword ptr [eax+3C]
 0051E1F0    mov         eax,dword ptr [ebp-4]
 0051E1F3    cmp         byte ptr [eax+58],0
>0051E1F7    jne         0051E4C7
 0051E1FD    call        004BB35C
 0051E202    test        al,al
>0051E204    je          0051E2D3
 0051E20A    mov         al,1
 0051E20C    mov         edx,dword ptr [ebp-58]
 0051E20F    cmp         edx,0FF
>0051E215    jbe         0051E21C
 0051E217    call        @BoundErr
 0051E21C    lea         ecx,[ebp-0E4]
 0051E222    mov         ah,20
 0051E224    call        @SetRange
 0051E229    mov         eax,dword ptr [ebp-28]
 0051E22C    cmp         eax,0FF
>0051E231    ja          0051E23A
 0051E233    bt          dword ptr [ebp-0E4],eax
>0051E23A    jae         0051E2D3
 0051E240    lea         eax,[ebp-200]
 0051E246    push        eax
 0051E247    mov         eax,dword ptr [ebp-20]
 0051E24A    cmp         eax,0FF
>0051E24F    jbe         0051E256
 0051E251    call        @BoundErr
 0051E256    push        eax
 0051E257    lea         eax,[ebp-30C]
 0051E25D    push        eax
 0051E25E    lea         ecx,[ebp-310]
 0051E264    mov         edx,dword ptr [ebp-28]
 0051E267    sub         edx,1
>0051E26A    jno         0051E271
 0051E26C    call        @IntOver
 0051E271    mov         eax,dword ptr [ebp-70]
 0051E274    mov         esi,dword ptr [eax]
 0051E276    call        dword ptr [esi+0C]
 0051E279    mov         edx,dword ptr [ebp-310]
 0051E27F    lea         eax,[ebp-200]
 0051E285    mov         ecx,0FF
 0051E28A    call        @LStrToString
 0051E28F    lea         edx,[ebp-200]
 0051E295    mov         eax,dword ptr [ebp-4]
 0051E298    mov         ecx,dword ptr [eax+2C]
 0051E29B    cmp         ecx,0FF
>0051E2A1    jbe         0051E2A8
 0051E2A3    call        @BoundErr
 0051E2A8    mov         eax,ebx
 0051E2AA    call        004C2E60
 0051E2AF    lea         eax,[ebp-30C]
 0051E2B5    push        eax
 0051E2B6    call        004B9E10
 0051E2BB    mov         ecx,eax
 0051E2BD    mov         eax,ebx
 0051E2BF    pop         edx
 0051E2C0    call        004C2410
 0051E2C5    lea         edx,[ebp-200]
 0051E2CB    lea         eax,[ebp-60]
 0051E2CE    call        @LStrFromString
 0051E2D3    call        004BC188
 0051E2D8    test        al,al
>0051E2DA    je          0051E3AB
 0051E2E0    call        004BC1BC
 0051E2E5    test        al,al
>0051E2E7    je          0051E2FB
 0051E2E9    mov         eax,dword ptr [ebp-4]
 0051E2EC    mov         esi,dword ptr [eax+54]
 0051E2EF    sub         esi,1
>0051E2F2    jno         0051E2F9
 0051E2F4    call        @IntOver
>0051E2F9    jmp         0051E301
 0051E2FB    mov         eax,dword ptr [ebp-4]
 0051E2FE    mov         esi,dword ptr [eax+54]
 0051E301    mov         eax,esi
 0051E303    sub         eax,1
>0051E306    jno         0051E30D
 0051E308    call        @IntOver
 0051E30D    cmp         eax,dword ptr [ebp-28]
>0051E310    jne         0051E357
 0051E312    call        004B9E10
 0051E317    push        eax
 0051E318    lea         eax,[ebp-200]
 0051E31E    push        eax
 0051E31F    mov         ecx,dword ptr [ebp-20]
 0051E322    cmp         ecx,0FF
>0051E328    jbe         0051E32F
 0051E32A    call        @BoundErr
 0051E32F    mov         eax,dword ptr [ebp-4]
 0051E332    mov         edx,dword ptr [eax+2C]
 0051E335    cmp         edx,0FF
>0051E33B    jbe         0051E342
 0051E33D    call        @BoundErr
 0051E342    mov         eax,ebx
 0051E344    call        004C8F6C
 0051E349    lea         edx,[ebp-200]
 0051E34F    lea         eax,[ebp-60]
 0051E352    call        @LStrFromString
 0051E357    sub         esi,2
>0051E35A    jno         0051E361
 0051E35C    call        @IntOver
 0051E361    cmp         esi,dword ptr [ebp-28]
>0051E364    jne         0051E3AB
 0051E366    call        004B9E10
 0051E36B    push        eax
 0051E36C    lea         eax,[ebp-200]
 0051E372    push        eax
 0051E373    mov         ecx,dword ptr [ebp-20]
 0051E376    cmp         ecx,0FF
>0051E37C    jbe         0051E383
 0051E37E    call        @BoundErr
 0051E383    mov         eax,dword ptr [ebp-4]
 0051E386    mov         edx,dword ptr [eax+2C]
 0051E389    cmp         edx,0FF
>0051E38F    jbe         0051E396
 0051E391    call        @BoundErr
 0051E396    mov         eax,ebx
 0051E398    call        004C9280
 0051E39D    lea         edx,[ebp-200]
 0051E3A3    lea         eax,[ebp-60]
 0051E3A6    call        @LStrFromString
 0051E3AB    call        004BC1BC
 0051E3B0    test        al,al
>0051E3B2    je          0051E46E
 0051E3B8    mov         eax,dword ptr [ebp-4]
 0051E3BB    mov         eax,dword ptr [eax+54]
 0051E3BE    sub         eax,1
>0051E3C1    jno         0051E3C8
 0051E3C3    call        @IntOver
 0051E3C8    cmp         eax,dword ptr [ebp-28]
>0051E3CB    jne         0051E412
 0051E3CD    call        004B9E10
 0051E3D2    push        eax
 0051E3D3    lea         eax,[ebp-200]
 0051E3D9    push        eax
 0051E3DA    mov         ecx,dword ptr [ebp-20]
 0051E3DD    cmp         ecx,0FF
>0051E3E3    jbe         0051E3EA
 0051E3E5    call        @BoundErr
 0051E3EA    mov         eax,dword ptr [ebp-4]
 0051E3ED    mov         edx,dword ptr [eax+2C]
 0051E3F0    cmp         edx,0FF
>0051E3F6    jbe         0051E3FD
 0051E3F8    call        @BoundErr
 0051E3FD    mov         eax,ebx
 0051E3FF    call        004C2D10
 0051E404    lea         edx,[ebp-200]
 0051E40A    lea         eax,[ebp-60]
 0051E40D    call        @LStrFromString
 0051E412    mov         eax,dword ptr [ebp-4]
 0051E415    mov         eax,dword ptr [eax+54]
 0051E418    cmp         eax,dword ptr [ebp-28]
>0051E41B    jne         0051E901
 0051E421    mov         eax,dword ptr [ebp-74]
 0051E424    mov         edx,dword ptr [eax]
 0051E426    call        dword ptr [edx+14]
 0051E429    cmp         eax,dword ptr [ebp-20]
>0051E42C    jle         0051E461
 0051E42E    push        520848;' '
 0051E433    lea         ecx,[ebp-314]
 0051E439    mov         edx,dword ptr [ebp-20]
 0051E43C    mov         eax,dword ptr [ebp-74]
 0051E43F    mov         ebx,dword ptr [eax]
 0051E441    call        dword ptr [ebx+0C]
 0051E444    push        dword ptr [ebp-314]
 0051E44A    push        520848;' '
 0051E44F    lea         eax,[ebp-60]
 0051E452    mov         edx,3
 0051E457    call        @LStrCatN
>0051E45C    jmp         0051E901
 0051E461    lea         eax,[ebp-60]
 0051E464    call        @LStrClr
>0051E469    jmp         0051E901
 0051E46E    mov         eax,dword ptr [ebp-4]
 0051E471    mov         eax,dword ptr [eax+54]
 0051E474    cmp         eax,dword ptr [ebp-28]
>0051E477    jne         0051E901
 0051E47D    call        004B9E10
 0051E482    push        eax
 0051E483    lea         eax,[ebp-200]
 0051E489    push        eax
 0051E48A    mov         ecx,dword ptr [ebp-20]
 0051E48D    cmp         ecx,0FF
>0051E493    jbe         0051E49A
 0051E495    call        @BoundErr
 0051E49A    mov         eax,dword ptr [ebp-4]
 0051E49D    mov         edx,dword ptr [eax+2C]
 0051E4A0    cmp         edx,0FF
>0051E4A6    jbe         0051E4AD
 0051E4A8    call        @BoundErr
 0051E4AD    mov         eax,ebx
 0051E4AF    call        004C2D10
 0051E4B4    lea         edx,[ebp-200]
 0051E4BA    lea         eax,[ebp-60]
 0051E4BD    call        @LStrFromString
>0051E4C2    jmp         0051E901
 0051E4C7    call        004BB35C
 0051E4CC    test        al,al
>0051E4CE    je          0051E6CE
 0051E4D4    mov         al,1
 0051E4D6    mov         edx,dword ptr [ebp-58]
 0051E4D9    cmp         edx,0FF
>0051E4DF    jbe         0051E4E6
 0051E4E1    call        @BoundErr
 0051E4E6    lea         ecx,[ebp-0E4]
 0051E4EC    mov         ah,20
 0051E4EE    call        @SetRange
 0051E4F3    mov         eax,dword ptr [ebp-28]
 0051E4F6    cmp         eax,0FF
>0051E4FB    ja          0051E504
 0051E4FD    bt          dword ptr [ebp-0E4],eax
>0051E504    jae         0051E58A
 0051E50A    lea         eax,[ebp-200]
 0051E510    push        eax
 0051E511    lea         eax,[ebp-30C]
 0051E517    push        eax
 0051E518    lea         ecx,[ebp-318]
 0051E51E    mov         edx,dword ptr [ebp-28]
 0051E521    sub         edx,1
>0051E524    jno         0051E52B
 0051E526    call        @IntOver
 0051E52B    mov         eax,dword ptr [ebp-70]
 0051E52E    mov         esi,dword ptr [eax]
 0051E530    call        dword ptr [esi+0C]
 0051E533    mov         edx,dword ptr [ebp-318]
 0051E539    lea         eax,[ebp-200]
 0051E53F    mov         ecx,0FF
 0051E544    call        @LStrToString
 0051E549    lea         edx,[ebp-200]
 0051E54F    mov         ecx,dword ptr [ebp-20]
 0051E552    cmp         ecx,0FF
>0051E558    jbe         0051E55F
 0051E55A    call        @BoundErr
 0051E55F    mov         eax,ebx
 0051E561    call        004C64CC
 0051E566    lea         eax,[ebp-30C]
 0051E56C    push        eax
 0051E56D    call        004BC298
 0051E572    mov         ecx,eax
 0051E574    mov         eax,ebx
 0051E576    pop         edx
 0051E577    call        004C2410
 0051E57C    lea         edx,[ebp-200]
 0051E582    lea         eax,[ebp-60]
 0051E585    call        @LStrFromString
 0051E58A    mov         eax,ebx
 0051E58C    call        004BE9E0
 0051E591    xor         edx,edx
 0051E593    mov         dl,al
 0051E595    add         edx,dword ptr [ebp-58]
>0051E598    jno         0051E59F
 0051E59A    call        @IntOver
 0051E59F    cmp         edx,0FF
>0051E5A5    jbe         0051E5AC
 0051E5A7    call        @BoundErr
 0051E5AC    mov         eax,dword ptr [ebp-58]
 0051E5AF    add         eax,1
>0051E5B2    jno         0051E5B9
 0051E5B4    call        @IntOver
 0051E5B9    cmp         eax,0FF
>0051E5BE    jbe         0051E5C5
 0051E5C0    call        @BoundErr
 0051E5C5    lea         ecx,[ebp-0E4]
 0051E5CB    mov         ah,20
 0051E5CD    call        @SetRange
 0051E5D2    mov         eax,dword ptr [ebp-28]
 0051E5D5    cmp         eax,0FF
>0051E5DA    ja          0051E5E3
 0051E5DC    bt          dword ptr [ebp-0E4],eax
>0051E5E3    jae         0051E631
 0051E5E5    call        004B9E10
 0051E5EA    push        eax
 0051E5EB    lea         eax,[ebp-200]
 0051E5F1    push        eax
 0051E5F2    mov         ecx,dword ptr [ebp-20]
 0051E5F5    cmp         ecx,0FF
>0051E5FB    jbe         0051E602
 0051E5FD    call        @BoundErr
 0051E602    mov         edx,dword ptr [ebp-28]
 0051E605    sub         edx,dword ptr [ebp-58]
>0051E608    jno         0051E60F
 0051E60A    call        @IntOver
 0051E60F    cmp         edx,0FF
>0051E615    jbe         0051E61C
 0051E617    call        @BoundErr
 0051E61C    mov         eax,ebx
 0051E61E    call        004C2D10
 0051E623    lea         edx,[ebp-200]
 0051E629    lea         eax,[ebp-60]
 0051E62C    call        @LStrFromString
 0051E631    call        004BC188
 0051E636    test        al,al
>0051E638    je          0051E74A
 0051E63E    mov         eax,dword ptr [ebp-0C]
 0051E641    sub         eax,3
>0051E644    jno         0051E64B
 0051E646    call        @IntOver
 0051E64B    cmp         eax,dword ptr [ebp-28]
>0051E64E    jne         0051E683
 0051E650    lea         eax,[ebp-200]
 0051E656    push        eax
 0051E657    call        004BC298
 0051E65C    mov         ecx,eax
 0051E65E    mov         edx,dword ptr [ebp-20]
 0051E661    cmp         edx,0FF
>0051E667    jbe         0051E66E
 0051E669    call        @BoundErr
 0051E66E    mov         eax,ebx
 0051E670    call        004C9594
 0051E675    lea         edx,[ebp-200]
 0051E67B    lea         eax,[ebp-60]
 0051E67E    call        @LStrFromString
 0051E683    mov         eax,dword ptr [ebp-0C]
 0051E686    sub         eax,4
>0051E689    jno         0051E690
 0051E68B    call        @IntOver
 0051E690    cmp         eax,dword ptr [ebp-28]
>0051E693    jne         0051E74A
 0051E699    lea         eax,[ebp-200]
 0051E69F    push        eax
 0051E6A0    call        004BC298
 0051E6A5    mov         ecx,eax
 0051E6A7    mov         edx,dword ptr [ebp-20]
 0051E6AA    cmp         edx,0FF
>0051E6B0    jbe         0051E6B7
 0051E6B2    call        @BoundErr
 0051E6B7    mov         eax,ebx
 0051E6B9    call        004C9708
 0051E6BE    lea         edx,[ebp-200]
 0051E6C4    lea         eax,[ebp-60]
 0051E6C7    call        @LStrFromString
>0051E6CC    jmp         0051E74A
 0051E6CE    mov         eax,ebx
 0051E6D0    call        004BE9E0
 0051E6D5    xor         edx,edx
 0051E6D7    mov         dl,al
 0051E6D9    cmp         edx,0FF
>0051E6DF    jbe         0051E6E6
 0051E6E1    call        @BoundErr
 0051E6E6    mov         al,1
 0051E6E8    lea         ecx,[ebp-0E4]
 0051E6EE    mov         ah,20
 0051E6F0    call        @SetRange
 0051E6F5    mov         eax,dword ptr [ebp-28]
 0051E6F8    cmp         eax,0FF
>0051E6FD    ja          0051E706
 0051E6FF    bt          dword ptr [ebp-0E4],eax
>0051E706    jae         0051E74A
 0051E708    call        004B9E10
 0051E70D    push        eax
 0051E70E    lea         eax,[ebp-200]
 0051E714    push        eax
 0051E715    mov         ecx,dword ptr [ebp-20]
 0051E718    cmp         ecx,0FF
>0051E71E    jbe         0051E725
 0051E720    call        @BoundErr
 0051E725    mov         edx,dword ptr [ebp-28]
 0051E728    cmp         edx,0FF
>0051E72E    jbe         0051E735
 0051E730    call        @BoundErr
 0051E735    mov         eax,ebx
 0051E737    call        004C2D10
 0051E73C    lea         edx,[ebp-200]
 0051E742    lea         eax,[ebp-60]
 0051E745    call        @LStrFromString
 0051E74A    call        004BC1BC
 0051E74F    test        al,al
>0051E751    je          0051E801
 0051E757    mov         eax,dword ptr [ebp-4]
 0051E75A    mov         eax,dword ptr [eax+54]
 0051E75D    sub         eax,1
>0051E760    jno         0051E767
 0051E762    call        @IntOver
 0051E767    cmp         eax,dword ptr [ebp-28]
>0051E76A    jne         0051E7AB
 0051E76C    call        004BC298
 0051E771    push        eax
 0051E772    call        004BC30C
 0051E777    push        eax
 0051E778    lea         eax,[ebp-200]
 0051E77E    push        eax
 0051E77F    call        004B9E10
 0051E784    mov         ecx,eax
 0051E786    mov         edx,dword ptr [ebp-20]
 0051E789    cmp         edx,0FF
>0051E78F    jbe         0051E796
 0051E791    call        @BoundErr
 0051E796    mov         eax,ebx
 0051E798    call        004C32B4
 0051E79D    lea         edx,[ebp-200]
 0051E7A3    lea         eax,[ebp-60]
 0051E7A6    call        @LStrFromString
 0051E7AB    mov         eax,dword ptr [ebp-4]
 0051E7AE    mov         eax,dword ptr [eax+54]
 0051E7B1    cmp         eax,dword ptr [ebp-28]
>0051E7B4    jne         0051E84B
 0051E7BA    mov         eax,dword ptr [ebp-74]
 0051E7BD    mov         edx,dword ptr [eax]
 0051E7BF    call        dword ptr [edx+14]
 0051E7C2    cmp         eax,dword ptr [ebp-20]
>0051E7C5    jle         0051E7F7
 0051E7C7    push        520848;' '
 0051E7CC    lea         ecx,[ebp-31C]
 0051E7D2    mov         edx,dword ptr [ebp-20]
 0051E7D5    mov         eax,dword ptr [ebp-74]
 0051E7D8    mov         esi,dword ptr [eax]
 0051E7DA    call        dword ptr [esi+0C]
 0051E7DD    push        dword ptr [ebp-31C]
 0051E7E3    push        520848;' '
 0051E7E8    lea         eax,[ebp-60]
 0051E7EB    mov         edx,3
 0051E7F0    call        @LStrCatN
>0051E7F5    jmp         0051E84B
 0051E7F7    lea         eax,[ebp-60]
 0051E7FA    call        @LStrClr
>0051E7FF    jmp         0051E84B
 0051E801    mov         eax,dword ptr [ebp-4]
 0051E804    mov         eax,dword ptr [eax+54]
 0051E807    cmp         eax,dword ptr [ebp-28]
>0051E80A    jne         0051E84B
 0051E80C    call        004BC298
 0051E811    push        eax
 0051E812    call        004BC30C
 0051E817    push        eax
 0051E818    lea         eax,[ebp-200]
 0051E81E    push        eax
 0051E81F    call        004B9E10
 0051E824    mov         ecx,eax
 0051E826    mov         edx,dword ptr [ebp-20]
 0051E829    cmp         edx,0FF
>0051E82F    jbe         0051E836
 0051E831    call        @BoundErr
 0051E836    mov         eax,ebx
 0051E838    call        004C32B4
 0051E83D    lea         edx,[ebp-200]
 0051E843    lea         eax,[ebp-60]
 0051E846    call        @LStrFromString
 0051E84B    call        004BC188
 0051E850    test        al,al
>0051E852    je          0051E901
 0051E858    mov         eax,dword ptr [ebp-4]
 0051E85B    mov         esi,dword ptr [eax+54]
 0051E85E    sub         esi,1
>0051E861    jno         0051E868
 0051E863    call        @IntOver
 0051E868    call        004BC1BC
 0051E86D    test        al,al
>0051E86F    jne         0051E87B
 0051E871    add         esi,1
>0051E874    jno         0051E87B
 0051E876    call        @IntOver
 0051E87B    mov         eax,esi
 0051E87D    sub         eax,1
>0051E880    jno         0051E887
 0051E882    call        @IntOver
 0051E887    cmp         eax,dword ptr [ebp-28]
>0051E88A    jne         0051E8BF
 0051E88C    lea         eax,[ebp-200]
 0051E892    push        eax
 0051E893    call        004BC298
 0051E898    mov         ecx,eax
 0051E89A    mov         edx,dword ptr [ebp-20]
 0051E89D    cmp         edx,0FF
>0051E8A3    jbe         0051E8AA
 0051E8A5    call        @BoundErr
 0051E8AA    mov         eax,ebx
 0051E8AC    call        004C9594
 0051E8B1    lea         edx,[ebp-200]
 0051E8B7    lea         eax,[ebp-60]
 0051E8BA    call        @LStrFromString
 0051E8BF    sub         esi,2
>0051E8C2    jno         0051E8C9
 0051E8C4    call        @IntOver
 0051E8C9    cmp         esi,dword ptr [ebp-28]
>0051E8CC    jne         0051E901
 0051E8CE    lea         eax,[ebp-200]
 0051E8D4    push        eax
 0051E8D5    call        004BC298
 0051E8DA    mov         ecx,eax
 0051E8DC    mov         edx,dword ptr [ebp-20]
 0051E8DF    cmp         edx,0FF
>0051E8E5    jbe         0051E8EC
 0051E8E7    call        @BoundErr
 0051E8EC    mov         eax,ebx
 0051E8EE    call        004C9708
 0051E8F3    lea         edx,[ebp-200]
 0051E8F9    lea         eax,[ebp-60]
 0051E8FC    call        @LStrFromString
 0051E901    call        004BC1BC
 0051E906    test        al,al
>0051E908    je          0051EB38
 0051E90E    mov         eax,dword ptr [ebp-4]
 0051E911    mov         eax,dword ptr [eax+54]
 0051E914    cmp         eax,dword ptr [ebp-28]
>0051E917    je          0051EA13
 0051E91D    call        004BBFB8
 0051E922    test        al,al
>0051E924    je          0051E9E2
 0051E92A    xor         eax,eax
 0051E92C    push        ebp
 0051E92D    push        51E9D8
 0051E932    push        dword ptr fs:[eax]
 0051E935    mov         dword ptr fs:[eax],esp
 0051E938    call        004B9E48
 0051E93D    mov         ebx,eax
 0051E93F    mov         eax,dword ptr [ebp-60]
 0051E942    call        StrToFloat
 0051E947    mov         dword ptr [ebp-0C4],ebx
 0051E94D    fild        dword ptr [ebp-0C4]
 0051E953    fdiv        dword ptr ds:[52076C];2:Single
 0051E959    fcompp
 0051E95B    fnstsw      al
 0051E95D    sahf
>0051E95E    jbe         0051E977
 0051E960    call        004B9F8C
 0051E965    mov         edx,eax
 0051E967    mov         eax,dword ptr [ebp-4]
 0051E96A    mov         eax,dword ptr [eax+40]
 0051E96D    mov         eax,dword ptr [eax+0C]
 0051E970    call        TFont.SetColor
>0051E975    jmp         0051E9CE
 0051E977    mov         eax,dword ptr [ebp-60]
 0051E97A    call        StrToFloat
 0051E97F    imul        eax,ebx,3
>0051E982    jno         0051E989
 0051E984    call        @IntOver
 0051E989    mov         dword ptr [ebp-0C4],eax
 0051E98F    fild        dword ptr [ebp-0C4]
 0051E995    fdiv        dword ptr ds:[520880];4:Single
 0051E99B    fcompp
 0051E99D    fnstsw      al
 0051E99F    sahf
>0051E9A0    ja          0051E9B9
 0051E9A2    call        004BA024
 0051E9A7    mov         edx,eax
 0051E9A9    mov         eax,dword ptr [ebp-4]
 0051E9AC    mov         eax,dword ptr [eax+40]
 0051E9AF    mov         eax,dword ptr [eax+0C]
 0051E9B2    call        TFont.SetColor
>0051E9B7    jmp         0051E9CE
 0051E9B9    call        004BA26C
 0051E9BE    mov         edx,eax
 0051E9C0    mov         eax,dword ptr [ebp-4]
 0051E9C3    mov         eax,dword ptr [eax+40]
 0051E9C6    mov         eax,dword ptr [eax+0C]
 0051E9C9    call        TFont.SetColor
 0051E9CE    xor         eax,eax
 0051E9D0    pop         edx
 0051E9D1    pop         ecx
 0051E9D2    pop         ecx
 0051E9D3    mov         dword ptr fs:[eax],edx
>0051E9D6    jmp         0051E9E2
>0051E9D8    jmp         @HandleAnyException
 0051E9DD    call        @DoneExcept
 0051E9E2    push        5
 0051E9E4    lea         eax,[ebp-0C0]
 0051E9EA    push        eax
 0051E9EB    mov         eax,dword ptr [ebp-60]
 0051E9EE    call        @LStrLen
 0051E9F3    push        eax
 0051E9F4    mov         eax,dword ptr [ebp-60]
 0051E9F7    call        @LStrToPChar
 0051E9FC    push        eax
 0051E9FD    mov         eax,dword ptr [ebp-4]
 0051EA00    mov         eax,dword ptr [eax+40]
 0051EA03    call        TCanvas.GetHandle
 0051EA08    push        eax
 0051EA09    call        user32.DrawTextA
>0051EA0E    jmp         0051EC29
 0051EA13    call        004BBFB8
 0051EA18    test        al,al
>0051EA1A    je          0051EB07
 0051EA20    xor         eax,eax
 0051EA22    push        ebp
 0051EA23    push        51EAFD
 0051EA28    push        dword ptr fs:[eax]
 0051EA2B    mov         dword ptr fs:[eax],esp
 0051EA2E    lea         eax,[ebp-68]
 0051EA31    push        eax
 0051EA32    mov         edx,dword ptr [ebp-60]
 0051EA35    mov         eax,52088C;'-> '
 0051EA3A    call        @LStrPos
 0051EA3F    add         eax,2
>0051EA42    jno         0051EA49
 0051EA44    call        @IntOver
 0051EA49    push        eax
 0051EA4A    mov         eax,dword ptr [ebp-60]
 0051EA4D    call        @LStrLen
 0051EA52    mov         ecx,eax
 0051EA54    mov         eax,dword ptr [ebp-60]
 0051EA57    pop         edx
 0051EA58    call        @LStrCopy
 0051EA5D    call        004B9E48
 0051EA62    mov         ebx,eax
 0051EA64    mov         eax,dword ptr [ebp-68]
 0051EA67    call        StrToFloat
 0051EA6C    mov         dword ptr [ebp-0C4],ebx
 0051EA72    fild        dword ptr [ebp-0C4]
 0051EA78    fdiv        dword ptr ds:[52076C];2:Single
 0051EA7E    fcompp
 0051EA80    fnstsw      al
 0051EA82    sahf
>0051EA83    jbe         0051EA9C
 0051EA85    call        004B9F8C
 0051EA8A    mov         edx,eax
 0051EA8C    mov         eax,dword ptr [ebp-4]
 0051EA8F    mov         eax,dword ptr [eax+40]
 0051EA92    mov         eax,dword ptr [eax+0C]
 0051EA95    call        TFont.SetColor
>0051EA9A    jmp         0051EAF3
 0051EA9C    mov         eax,dword ptr [ebp-68]
 0051EA9F    call        StrToFloat
 0051EAA4    imul        eax,ebx,3
>0051EAA7    jno         0051EAAE
 0051EAA9    call        @IntOver
 0051EAAE    mov         dword ptr [ebp-0C4],eax
 0051EAB4    fild        dword ptr [ebp-0C4]
 0051EABA    fdiv        dword ptr ds:[520880];4:Single
 0051EAC0    fcompp
 0051EAC2    fnstsw      al
 0051EAC4    sahf
>0051EAC5    ja          0051EADE
 0051EAC7    call        004BA024
 0051EACC    mov         edx,eax
 0051EACE    mov         eax,dword ptr [ebp-4]
 0051EAD1    mov         eax,dword ptr [eax+40]
 0051EAD4    mov         eax,dword ptr [eax+0C]
 0051EAD7    call        TFont.SetColor
>0051EADC    jmp         0051EAF3
 0051EADE    call        004BA26C
 0051EAE3    mov         edx,eax
 0051EAE5    mov         eax,dword ptr [ebp-4]
 0051EAE8    mov         eax,dword ptr [eax+40]
 0051EAEB    mov         eax,dword ptr [eax+0C]
 0051EAEE    call        TFont.SetColor
 0051EAF3    xor         eax,eax
 0051EAF5    pop         edx
 0051EAF6    pop         ecx
 0051EAF7    pop         ecx
 0051EAF8    mov         dword ptr fs:[eax],edx
>0051EAFB    jmp         0051EB07
>0051EAFD    jmp         @HandleAnyException
 0051EB02    call        @DoneExcept
 0051EB07    push        4
 0051EB09    lea         eax,[ebp-0C0]
 0051EB0F    push        eax
 0051EB10    mov         eax,dword ptr [ebp-60]
 0051EB13    call        @LStrLen
 0051EB18    push        eax
 0051EB19    mov         eax,dword ptr [ebp-60]
 0051EB1C    call        @LStrToPChar
 0051EB21    push        eax
 0051EB22    mov         eax,dword ptr [ebp-4]
 0051EB25    mov         eax,dword ptr [eax+40]
 0051EB28    call        TCanvas.GetHandle
 0051EB2D    push        eax
 0051EB2E    call        user32.DrawTextA
>0051EB33    jmp         0051EC29
 0051EB38    call        004BBFB8
 0051EB3D    test        al,al
>0051EB3F    je          0051EBFD
 0051EB45    xor         eax,eax
 0051EB47    push        ebp
 0051EB48    push        51EBF3
 0051EB4D    push        dword ptr fs:[eax]
 0051EB50    mov         dword ptr fs:[eax],esp
 0051EB53    call        004B9E48
 0051EB58    mov         ebx,eax
 0051EB5A    mov         eax,dword ptr [ebp-60]
 0051EB5D    call        StrToFloat
 0051EB62    mov         dword ptr [ebp-0C4],ebx
 0051EB68    fild        dword ptr [ebp-0C4]
 0051EB6E    fdiv        dword ptr ds:[52076C];2:Single
 0051EB74    fcompp
 0051EB76    fnstsw      al
 0051EB78    sahf
>0051EB79    jbe         0051EB92
 0051EB7B    call        004B9F8C
 0051EB80    mov         edx,eax
 0051EB82    mov         eax,dword ptr [ebp-4]
 0051EB85    mov         eax,dword ptr [eax+40]
 0051EB88    mov         eax,dword ptr [eax+0C]
 0051EB8B    call        TFont.SetColor
>0051EB90    jmp         0051EBE9
 0051EB92    mov         eax,dword ptr [ebp-60]
 0051EB95    call        StrToFloat
 0051EB9A    imul        eax,ebx,3
>0051EB9D    jno         0051EBA4
 0051EB9F    call        @IntOver
 0051EBA4    mov         dword ptr [ebp-0C4],eax
 0051EBAA    fild        dword ptr [ebp-0C4]
 0051EBB0    fdiv        dword ptr ds:[520880];4:Single
 0051EBB6    fcompp
 0051EBB8    fnstsw      al
 0051EBBA    sahf
>0051EBBB    ja          0051EBD4
 0051EBBD    call        004BA024
 0051EBC2    mov         edx,eax
 0051EBC4    mov         eax,dword ptr [ebp-4]
 0051EBC7    mov         eax,dword ptr [eax+40]
 0051EBCA    mov         eax,dword ptr [eax+0C]
 0051EBCD    call        TFont.SetColor
>0051EBD2    jmp         0051EBE9
 0051EBD4    call        004BA26C
 0051EBD9    mov         edx,eax
 0051EBDB    mov         eax,dword ptr [ebp-4]
 0051EBDE    mov         eax,dword ptr [eax+40]
 0051EBE1    mov         eax,dword ptr [eax+0C]
 0051EBE4    call        TFont.SetColor
 0051EBE9    xor         eax,eax
 0051EBEB    pop         edx
 0051EBEC    pop         ecx
 0051EBED    pop         ecx
 0051EBEE    mov         dword ptr fs:[eax],edx
>0051EBF1    jmp         0051EBFD
>0051EBF3    jmp         @HandleAnyException
 0051EBF8    call        @DoneExcept
 0051EBFD    push        5
 0051EBFF    lea         eax,[ebp-0C0]
 0051EC05    push        eax
 0051EC06    mov         eax,dword ptr [ebp-60]
 0051EC09    call        @LStrLen
 0051EC0E    push        eax
 0051EC0F    mov         eax,dword ptr [ebp-60]
 0051EC12    call        @LStrToPChar
 0051EC17    push        eax
 0051EC18    mov         eax,dword ptr [ebp-4]
 0051EC1B    mov         eax,dword ptr [eax+40]
 0051EC1E    call        TCanvas.GetHandle
 0051EC23    push        eax
 0051EC24    call        user32.DrawTextA
 0051EC29    mov         eax,dword ptr [ebp-4]
 0051EC2C    mov         eax,dword ptr [eax+40]
 0051EC2F    mov         eax,dword ptr [eax+0C]
 0051EC32    xor         edx,edx
 0051EC34    call        TFont.SetColor
 0051EC39    add         dword ptr [ebp-3C],1
>0051EC3D    jno         0051EC44
 0051EC3F    call        @IntOver
 0051EC44    inc         dword ptr [ebp-28]
 0051EC47    dec         dword ptr [ebp-84]
>0051EC4D    jne         0051E165
 0051EC53    inc         dword ptr [ebp-20]
 0051EC56    dec         dword ptr [ebp-7C]
>0051EC59    jne         0051DC6A
 0051EC5F    xor         eax,eax
 0051EC61    mov         dword ptr [ebp-4C],eax
 0051EC64    cmp         dword ptr [ebp-48],0
>0051EC68    jle         00520280
 0051EC6E    mov         eax,dword ptr [ebp-4]
 0051EC71    mov         eax,dword ptr [eax+4C]
 0051EC74    mov         eax,dword ptr [eax+8]
 0051EC77    mov         edx,dword ptr [eax]
 0051EC79    call        dword ptr [edx+14]
 0051EC7C    sub         eax,1
>0051EC7F    jno         0051EC86
 0051EC81    call        @IntOver
 0051EC86    test        eax,eax
>0051EC88    jl          00520280
 0051EC8E    inc         eax
 0051EC8F    mov         dword ptr [ebp-7C],eax
 0051EC92    mov         dword ptr [ebp-1C],0
 0051EC99    mov         eax,dword ptr [ebp-1C]
 0051EC9C    mov         edx,dword ptr [ebp-4]
 0051EC9F    mov         edx,dword ptr [edx+4C]
 0051ECA2    mov         edx,dword ptr [edx+0C]
 0051ECA5    cmp         eax,dword ptr [edx-4]
>0051ECA8    jb          0051ECAF
 0051ECAA    call        @BoundErr
 0051ECAF    cmp         byte ptr [edx+eax],0
>0051ECB3    je          00520274
 0051ECB9    mov         eax,dword ptr [ebp-34]
 0051ECBC    mov         dword ptr [ebp-0C0],eax
 0051ECC2    mov         eax,dword ptr [ebp-4]
 0051ECC5    mov         eax,dword ptr [eax+3C]
 0051ECC8    call        004BEA58
 0051ECCD    and         eax,0FF
 0051ECD2    add         eax,dword ptr [ebp-4C]
>0051ECD5    jno         0051ECDC
 0051ECD7    call        @IntOver
 0051ECDC    add         eax,1
>0051ECDF    jno         0051ECE6
 0051ECE1    call        @IntOver
 0051ECE6    imul        dword ptr [ebp-18]
>0051ECE9    jno         0051ECF0
 0051ECEB    call        @IntOver
 0051ECF0    add         eax,dword ptr [ebp-38]
>0051ECF3    jno         0051ECFA
 0051ECF5    call        @IntOver
 0051ECFA    add         eax,14
>0051ECFD    jno         0051ED04
 0051ECFF    call        @IntOver
 0051ED04    mov         dword ptr [ebp-0BC],eax
 0051ED0A    mov         eax,dword ptr [ebp-0C0]
 0051ED10    add         eax,dword ptr [ebp-24]
>0051ED13    jno         0051ED1A
 0051ED15    call        @IntOver
 0051ED1A    mov         dword ptr [ebp-0B8],eax
 0051ED20    mov         eax,dword ptr [ebp-0BC]
 0051ED26    add         eax,dword ptr [ebp-18]
>0051ED29    jno         0051ED30
 0051ED2B    call        @IntOver
 0051ED30    mov         dword ptr [ebp-0B4],eax
 0051ED36    push        520848;' '
 0051ED3B    lea         ecx,[ebp-320]
 0051ED41    mov         eax,dword ptr [ebp-4]
 0051ED44    mov         eax,dword ptr [eax+4C]
 0051ED47    mov         eax,dword ptr [eax+8]
 0051ED4A    mov         edx,dword ptr [ebp-1C]
 0051ED4D    mov         ebx,dword ptr [eax]
 0051ED4F    call        dword ptr [ebx+0C]
 0051ED52    push        dword ptr [ebp-320]
 0051ED58    push        520848;' '
 0051ED5D    lea         eax,[ebp-60]
 0051ED60    mov         edx,3
 0051ED65    call        @LStrCatN
 0051ED6A    push        4
 0051ED6C    lea         eax,[ebp-0C0]
 0051ED72    push        eax
 0051ED73    mov         eax,dword ptr [ebp-60]
 0051ED76    call        @LStrLen
 0051ED7B    push        eax
 0051ED7C    mov         eax,dword ptr [ebp-60]
 0051ED7F    call        @LStrToPChar
 0051ED84    push        eax
 0051ED85    mov         eax,dword ptr [ebp-4]
 0051ED88    mov         eax,dword ptr [eax+40]
 0051ED8B    call        TCanvas.GetHandle
 0051ED90    push        eax
 0051ED91    call        user32.DrawTextA
 0051ED96    mov         dword ptr [ebp-3C],1
 0051ED9D    mov         eax,dword ptr [ebp-8]
 0051EDA0    sub         eax,1
>0051EDA3    jno         0051EDAA
 0051EDA5    call        @IntOver
 0051EDAA    mov         edx,dword ptr [ebp-4]
 0051EDAD    mov         edx,dword ptr [edx+50]
 0051EDB0    cmp         eax,dword ptr [edx-4]
>0051EDB3    jb          0051EDBA
 0051EDB5    call        @BoundErr
 0051EDBA    mov         eax,dword ptr [edx+eax*4]
 0051EDBD    mov         edx,dword ptr [ebp-8]
 0051EDC0    mov         ecx,dword ptr [ebp-4]
 0051EDC3    mov         ecx,dword ptr [ecx+50]
 0051EDC6    cmp         edx,dword ptr [ecx-4]
>0051EDC9    jb          0051EDD0
 0051EDCB    call        @BoundErr
 0051EDD0    mov         edx,dword ptr [ecx+edx*4]
 0051EDD3    sub         edx,1
>0051EDD6    jno         0051EDDD
 0051EDD8    call        @IntOver
 0051EDDD    sub         edx,eax
>0051EDDF    jl          00520269
 0051EDE5    inc         edx
 0051EDE6    mov         dword ptr [ebp-84],edx
 0051EDEC    mov         dword ptr [ebp-28],eax
 0051EDEF    mov         eax,dword ptr [ebp-34]
 0051EDF2    add         eax,dword ptr [ebp-24]
>0051EDF5    jno         0051EDFC
 0051EDF7    call        @IntOver
 0051EDFC    mov         edx,dword ptr [ebp-3C]
 0051EDFF    sub         edx,1
>0051EE02    jno         0051EE09
 0051EE04    call        @IntOver
 0051EE09    imul        edx,dword ptr [ebp-14]
>0051EE0D    jno         0051EE14
 0051EE0F    call        @IntOver
 0051EE14    add         eax,edx
>0051EE16    jno         0051EE1D
 0051EE18    call        @IntOver
 0051EE1D    mov         dword ptr [ebp-0C0],eax
 0051EE23    mov         eax,dword ptr [ebp-4]
 0051EE26    mov         eax,dword ptr [eax+3C]
 0051EE29    call        004BEA58
 0051EE2E    and         eax,0FF
 0051EE33    add         eax,dword ptr [ebp-4C]
>0051EE36    jno         0051EE3D
 0051EE38    call        @IntOver
 0051EE3D    add         eax,1
>0051EE40    jno         0051EE47
 0051EE42    call        @IntOver
 0051EE47    imul        dword ptr [ebp-18]
>0051EE4A    jno         0051EE51
 0051EE4C    call        @IntOver
 0051EE51    add         eax,dword ptr [ebp-38]
>0051EE54    jno         0051EE5B
 0051EE56    call        @IntOver
 0051EE5B    add         eax,14
>0051EE5E    jno         0051EE65
 0051EE60    call        @IntOver
 0051EE65    mov         dword ptr [ebp-0BC],eax
 0051EE6B    mov         eax,dword ptr [ebp-0C0]
 0051EE71    add         eax,dword ptr [ebp-14]
>0051EE74    jno         0051EE7B
 0051EE76    call        @IntOver
 0051EE7B    mov         dword ptr [ebp-0B8],eax
 0051EE81    mov         eax,dword ptr [ebp-0BC]
 0051EE87    add         eax,dword ptr [ebp-18]
>0051EE8A    jno         0051EE91
 0051EE8C    call        @IntOver
 0051EE91    mov         dword ptr [ebp-0B4],eax
 0051EE97    mov         eax,dword ptr [ebp-4]
 0051EE9A    cmp         byte ptr [eax+58],0
>0051EE9E    jne         0051F747
 0051EEA4    call        004BB35C
 0051EEA9    test        al,al
>0051EEAB    je          0051F09F
 0051EEB1    mov         al,1
 0051EEB3    mov         edx,dword ptr [ebp-58]
 0051EEB6    cmp         edx,0FF
>0051EEBC    jbe         0051EEC3
 0051EEBE    call        @BoundErr
 0051EEC3    lea         ecx,[ebp-0E4]
 0051EEC9    mov         ah,20
 0051EECB    call        @SetRange
 0051EED0    mov         eax,dword ptr [ebp-28]
 0051EED3    cmp         eax,0FF
>0051EED8    ja          0051EEE1
 0051EEDA    bt          dword ptr [ebp-0E4],eax
>0051EEE1    jae         0051F09F
 0051EEE7    mov         dl,1
 0051EEE9    mov         eax,[004120B8];TStringList
 0051EEEE    call        TObject.Create;TStringList.Create
 0051EEF3    mov         dword ptr [ebp-78],eax
 0051EEF6    mov         eax,dword ptr [ebp-4]
 0051EEF9    mov         eax,dword ptr [eax+3C]
 0051EEFC    mov         dword ptr [ebp-88],eax
 0051EF02    mov         eax,dword ptr [ebp-88]
 0051EF08    call        004BEA58
 0051EF0D    xor         ebx,ebx
 0051EF0F    mov         bl,al
 0051EF11    test        ebx,ebx
>0051EF13    jle         0051EFB5
 0051EF19    mov         dword ptr [ebp-20],1
 0051EF20    mov         eax,dword ptr [ebp-20]
 0051EF23    cmp         eax,0FF
>0051EF28    jbe         0051EF2F
 0051EF2A    call        @BoundErr
 0051EF2F    push        eax
 0051EF30    lea         eax,[ebp-200]
 0051EF36    push        eax
 0051EF37    lea         ecx,[ebp-328]
 0051EF3D    mov         edx,dword ptr [ebp-28]
 0051EF40    sub         edx,1
>0051EF43    jno         0051EF4A
 0051EF45    call        @IntOver
 0051EF4A    mov         eax,dword ptr [ebp-70]
 0051EF4D    mov         esi,dword ptr [eax]
 0051EF4F    call        dword ptr [esi+0C]
 0051EF52    mov         edx,dword ptr [ebp-328]
 0051EF58    lea         eax,[ebp-30C]
 0051EF5E    mov         ecx,0FF
 0051EF63    call        @LStrToString
 0051EF68    lea         edx,[ebp-30C]
 0051EF6E    mov         eax,dword ptr [ebp-4]
 0051EF71    mov         ecx,dword ptr [eax+2C]
 0051EF74    cmp         ecx,0FF
>0051EF7A    jbe         0051EF81
 0051EF7C    call        @BoundErr
 0051EF81    mov         eax,dword ptr [ebp-88]
 0051EF87    call        004C2E60
 0051EF8C    lea         edx,[ebp-200]
 0051EF92    lea         eax,[ebp-324]
 0051EF98    call        @LStrFromString
 0051EF9D    mov         edx,dword ptr [ebp-324]
 0051EFA3    mov         eax,dword ptr [ebp-78]
 0051EFA6    mov         ecx,dword ptr [eax]
 0051EFA8    call        dword ptr [ecx+34];TStringList.Add
 0051EFAB    inc         dword ptr [ebp-20]
 0051EFAE    dec         ebx
>0051EFAF    jne         0051EF20
 0051EFB5    mov         eax,dword ptr [ebp-1C]
 0051EFB8    cmp         eax,5
>0051EFBB    ja          0051F095
 0051EFC1    jmp         dword ptr [eax*4+51EFC8]
 0051EFC1    dd          0051EFE0
 0051EFC1    dd          0051F001
 0051EFC1    dd          0051F01F
 0051EFC1    dd          0051F03D
 0051EFC1    dd          0051F05B
 0051EFC1    dd          0051F079
 0051EFE0    lea         edx,[ebp-200]
 0051EFE6    mov         eax,dword ptr [ebp-78]
 0051EFE9    call        004BDB3C
 0051EFEE    lea         edx,[ebp-200]
 0051EFF4    lea         eax,[ebp-60]
 0051EFF7    call        @LStrFromString
>0051EFFC    jmp         0051F095
 0051F001    lea         edx,[ebp-200]
 0051F007    mov         eax,dword ptr [ebp-78]
 0051F00A    call        004BDCFC
 0051F00F    lea         edx,[ebp-200]
 0051F015    lea         eax,[ebp-60]
 0051F018    call        @LStrFromString
>0051F01D    jmp         0051F095
 0051F01F    lea         edx,[ebp-200]
 0051F025    mov         eax,dword ptr [ebp-78]
 0051F028    call        004BDEBC
 0051F02D    lea         edx,[ebp-200]
 0051F033    lea         eax,[ebp-60]
 0051F036    call        @LStrFromString
>0051F03B    jmp         0051F095
 0051F03D    lea         edx,[ebp-200]
 0051F043    mov         eax,dword ptr [ebp-78]
 0051F046    call        004BDFE8
 0051F04B    lea         edx,[ebp-200]
 0051F051    lea         eax,[ebp-60]
 0051F054    call        @LStrFromString
>0051F059    jmp         0051F095
 0051F05B    lea         edx,[ebp-200]
 0051F061    mov         eax,dword ptr [ebp-78]
 0051F064    call        004BE1C4
 0051F069    lea         edx,[ebp-200]
 0051F06F    lea         eax,[ebp-60]
 0051F072    call        @LStrFromString
>0051F077    jmp         0051F095
 0051F079    lea         edx,[ebp-200]
 0051F07F    mov         eax,dword ptr [ebp-78]
 0051F082    call        004BE364
 0051F087    lea         edx,[ebp-200]
 0051F08D    lea         eax,[ebp-60]
 0051F090    call        @LStrFromString
 0051F095    mov         dl,1
 0051F097    mov         eax,dword ptr [ebp-78]
 0051F09A    mov         ecx,dword ptr [eax]
 0051F09C    call        dword ptr [ecx-4];TStringList.Destroy
 0051F09F    call        004BC188
 0051F0A4    test        al,al
>0051F0A6    je          0051F3F3
 0051F0AC    call        004BC1BC
 0051F0B1    test        al,al
>0051F0B3    je          0051F0C7
 0051F0B5    mov         eax,dword ptr [ebp-4]
 0051F0B8    mov         esi,dword ptr [eax+54]
 0051F0BB    sub         esi,1
>0051F0BE    jno         0051F0C5
 0051F0C0    call        @IntOver
>0051F0C5    jmp         0051F0CD
 0051F0C7    mov         eax,dword ptr [ebp-4]
 0051F0CA    mov         esi,dword ptr [eax+54]
 0051F0CD    mov         eax,esi
 0051F0CF    sub         eax,1
>0051F0D2    jno         0051F0D9
 0051F0D4    call        @IntOver
 0051F0D9    cmp         eax,dword ptr [ebp-28]
>0051F0DC    jne         0051F261
 0051F0E2    mov         dl,1
 0051F0E4    mov         eax,[004120B8];TStringList
 0051F0E9    call        TObject.Create;TStringList.Create
 0051F0EE    mov         dword ptr [ebp-78],eax
 0051F0F1    mov         eax,dword ptr [ebp-4]
 0051F0F4    mov         eax,dword ptr [eax+3C]
 0051F0F7    mov         dword ptr [ebp-8C],eax
 0051F0FD    mov         eax,dword ptr [ebp-8C]
 0051F103    call        004BEA58
 0051F108    xor         ebx,ebx
 0051F10A    mov         bl,al
 0051F10C    test        ebx,ebx
>0051F10E    jle         0051F177
 0051F110    mov         dword ptr [ebp-20],1
 0051F117    call        004B9E10
 0051F11C    push        eax
 0051F11D    lea         eax,[ebp-200]
 0051F123    push        eax
 0051F124    mov         ecx,dword ptr [ebp-20]
 0051F127    cmp         ecx,0FF
>0051F12D    jbe         0051F134
 0051F12F    call        @BoundErr
 0051F134    mov         eax,dword ptr [ebp-4]
 0051F137    mov         edx,dword ptr [eax+2C]
 0051F13A    cmp         edx,0FF
>0051F140    jbe         0051F147
 0051F142    call        @BoundErr
 0051F147    mov         eax,dword ptr [ebp-8C]
 0051F14D    call        004C8F6C
 0051F152    lea         edx,[ebp-200]
 0051F158    lea         eax,[ebp-32C]
 0051F15E    call        @LStrFromString
 0051F163    mov         edx,dword ptr [ebp-32C]
 0051F169    mov         eax,dword ptr [ebp-78]
 0051F16C    mov         ecx,dword ptr [eax]
 0051F16E    call        dword ptr [ecx+34];TStringList.Add
 0051F171    inc         dword ptr [ebp-20]
 0051F174    dec         ebx
>0051F175    jne         0051F117
 0051F177    mov         eax,dword ptr [ebp-1C]
 0051F17A    cmp         eax,5
>0051F17D    ja          0051F257
 0051F183    jmp         dword ptr [eax*4+51F18A]
 0051F183    dd          0051F1A2
 0051F183    dd          0051F1C3
 0051F183    dd          0051F1E1
 0051F183    dd          0051F1FF
 0051F183    dd          0051F21D
 0051F183    dd          0051F23B
 0051F1A2    lea         edx,[ebp-200]
 0051F1A8    mov         eax,dword ptr [ebp-78]
 0051F1AB    call        004BDB3C
 0051F1B0    lea         edx,[ebp-200]
 0051F1B6    lea         eax,[ebp-60]
 0051F1B9    call        @LStrFromString
>0051F1BE    jmp         0051F257
 0051F1C3    lea         edx,[ebp-200]
 0051F1C9    mov         eax,dword ptr [ebp-78]
 0051F1CC    call        004BDCFC
 0051F1D1    lea         edx,[ebp-200]
 0051F1D7    lea         eax,[ebp-60]
 0051F1DA    call        @LStrFromString
>0051F1DF    jmp         0051F257
 0051F1E1    lea         edx,[ebp-200]
 0051F1E7    mov         eax,dword ptr [ebp-78]
 0051F1EA    call        004BDEBC
 0051F1EF    lea         edx,[ebp-200]
 0051F1F5    lea         eax,[ebp-60]
 0051F1F8    call        @LStrFromString
>0051F1FD    jmp         0051F257
 0051F1FF    lea         edx,[ebp-200]
 0051F205    mov         eax,dword ptr [ebp-78]
 0051F208    call        004BDFE8
 0051F20D    lea         edx,[ebp-200]
 0051F213    lea         eax,[ebp-60]
 0051F216    call        @LStrFromString
>0051F21B    jmp         0051F257
 0051F21D    lea         edx,[ebp-200]
 0051F223    mov         eax,dword ptr [ebp-78]
 0051F226    call        004BE1C4
 0051F22B    lea         edx,[ebp-200]
 0051F231    lea         eax,[ebp-60]
 0051F234    call        @LStrFromString
>0051F239    jmp         0051F257
 0051F23B    lea         edx,[ebp-200]
 0051F241    mov         eax,dword ptr [ebp-78]
 0051F244    call        004BE364
 0051F249    lea         edx,[ebp-200]
 0051F24F    lea         eax,[ebp-60]
 0051F252    call        @LStrFromString
 0051F257    mov         dl,1
 0051F259    mov         eax,dword ptr [ebp-78]
 0051F25C    mov         ecx,dword ptr [eax]
 0051F25E    call        dword ptr [ecx-4];TStringList.Destroy
 0051F261    sub         esi,2
>0051F264    jno         0051F26B
 0051F266    call        @IntOver
 0051F26B    cmp         esi,dword ptr [ebp-28]
>0051F26E    jne         0051F3F3
 0051F274    mov         dl,1
 0051F276    mov         eax,[004120B8];TStringList
 0051F27B    call        TObject.Create;TStringList.Create
 0051F280    mov         dword ptr [ebp-78],eax
 0051F283    mov         eax,dword ptr [ebp-4]
 0051F286    mov         eax,dword ptr [eax+3C]
 0051F289    mov         dword ptr [ebp-90],eax
 0051F28F    mov         eax,dword ptr [ebp-90]
 0051F295    call        004BEA58
 0051F29A    xor         ebx,ebx
 0051F29C    mov         bl,al
 0051F29E    test        ebx,ebx
>0051F2A0    jle         0051F309
 0051F2A2    mov         dword ptr [ebp-20],1
 0051F2A9    call        004B9E10
 0051F2AE    push        eax
 0051F2AF    lea         eax,[ebp-200]
 0051F2B5    push        eax
 0051F2B6    mov         ecx,dword ptr [ebp-20]
 0051F2B9    cmp         ecx,0FF
>0051F2BF    jbe         0051F2C6
 0051F2C1    call        @BoundErr
 0051F2C6    mov         eax,dword ptr [ebp-4]
 0051F2C9    mov         edx,dword ptr [eax+2C]
 0051F2CC    cmp         edx,0FF
>0051F2D2    jbe         0051F2D9
 0051F2D4    call        @BoundErr
 0051F2D9    mov         eax,dword ptr [ebp-90]
 0051F2DF    call        004C9280
 0051F2E4    lea         edx,[ebp-200]
 0051F2EA    lea         eax,[ebp-330]
 0051F2F0    call        @LStrFromString
 0051F2F5    mov         edx,dword ptr [ebp-330]
 0051F2FB    mov         eax,dword ptr [ebp-78]
 0051F2FE    mov         ecx,dword ptr [eax]
 0051F300    call        dword ptr [ecx+34];TStringList.Add
 0051F303    inc         dword ptr [ebp-20]
 0051F306    dec         ebx
>0051F307    jne         0051F2A9
 0051F309    mov         eax,dword ptr [ebp-1C]
 0051F30C    cmp         eax,5
>0051F30F    ja          0051F3E9
 0051F315    jmp         dword ptr [eax*4+51F31C]
 0051F315    dd          0051F334
 0051F315    dd          0051F355
 0051F315    dd          0051F373
 0051F315    dd          0051F391
 0051F315    dd          0051F3AF
 0051F315    dd          0051F3CD
 0051F334    lea         edx,[ebp-200]
 0051F33A    mov         eax,dword ptr [ebp-78]
 0051F33D    call        004BDB3C
 0051F342    lea         edx,[ebp-200]
 0051F348    lea         eax,[ebp-60]
 0051F34B    call        @LStrFromString
>0051F350    jmp         0051F3E9
 0051F355    lea         edx,[ebp-200]
 0051F35B    mov         eax,dword ptr [ebp-78]
 0051F35E    call        004BDCFC
 0051F363    lea         edx,[ebp-200]
 0051F369    lea         eax,[ebp-60]
 0051F36C    call        @LStrFromString
>0051F371    jmp         0051F3E9
 0051F373    lea         edx,[ebp-200]
 0051F379    mov         eax,dword ptr [ebp-78]
 0051F37C    call        004BDEBC
 0051F381    lea         edx,[ebp-200]
 0051F387    lea         eax,[ebp-60]
 0051F38A    call        @LStrFromString
>0051F38F    jmp         0051F3E9
 0051F391    lea         edx,[ebp-200]
 0051F397    mov         eax,dword ptr [ebp-78]
 0051F39A    call        004BDFE8
 0051F39F    lea         edx,[ebp-200]
 0051F3A5    lea         eax,[ebp-60]
 0051F3A8    call        @LStrFromString
>0051F3AD    jmp         0051F3E9
 0051F3AF    lea         edx,[ebp-200]
 0051F3B5    mov         eax,dword ptr [ebp-78]
 0051F3B8    call        004BE1C4
 0051F3BD    lea         edx,[ebp-200]
 0051F3C3    lea         eax,[ebp-60]
 0051F3C6    call        @LStrFromString
>0051F3CB    jmp         0051F3E9
 0051F3CD    lea         edx,[ebp-200]
 0051F3D3    mov         eax,dword ptr [ebp-78]
 0051F3D6    call        004BE364
 0051F3DB    lea         edx,[ebp-200]
 0051F3E1    lea         eax,[ebp-60]
 0051F3E4    call        @LStrFromString
 0051F3E9    mov         dl,1
 0051F3EB    mov         eax,dword ptr [ebp-78]
 0051F3EE    mov         ecx,dword ptr [eax]
 0051F3F0    call        dword ptr [ecx-4];TStringList.Destroy
 0051F3F3    call        004BC1BC
 0051F3F8    test        al,al
>0051F3FA    je          0051F5B4
 0051F400    mov         eax,dword ptr [ebp-4]
 0051F403    mov         eax,dword ptr [eax+54]
 0051F406    sub         eax,1
>0051F409    jno         0051F410
 0051F40B    call        @IntOver
 0051F410    cmp         eax,dword ptr [ebp-28]
>0051F413    jne         0051F598
 0051F419    mov         dl,1
 0051F41B    mov         eax,[004120B8];TStringList
 0051F420    call        TObject.Create;TStringList.Create
 0051F425    mov         dword ptr [ebp-78],eax
 0051F428    mov         eax,dword ptr [ebp-4]
 0051F42B    mov         eax,dword ptr [eax+3C]
 0051F42E    mov         dword ptr [ebp-94],eax
 0051F434    mov         eax,dword ptr [ebp-94]
 0051F43A    call        004BEA58
 0051F43F    xor         ebx,ebx
 0051F441    mov         bl,al
 0051F443    test        ebx,ebx
>0051F445    jle         0051F4AE
 0051F447    mov         dword ptr [ebp-20],1
 0051F44E    call        004B9E10
 0051F453    push        eax
 0051F454    lea         eax,[ebp-200]
 0051F45A    push        eax
 0051F45B    mov         ecx,dword ptr [ebp-20]
 0051F45E    cmp         ecx,0FF
>0051F464    jbe         0051F46B
 0051F466    call        @BoundErr
 0051F46B    mov         eax,dword ptr [ebp-4]
 0051F46E    mov         edx,dword ptr [eax+2C]
 0051F471    cmp         edx,0FF
>0051F477    jbe         0051F47E
 0051F479    call        @BoundErr
 0051F47E    mov         eax,dword ptr [ebp-94]
 0051F484    call        004C2D10
 0051F489    lea         edx,[ebp-200]
 0051F48F    lea         eax,[ebp-334]
 0051F495    call        @LStrFromString
 0051F49A    mov         edx,dword ptr [ebp-334]
 0051F4A0    mov         eax,dword ptr [ebp-78]
 0051F4A3    mov         ecx,dword ptr [eax]
 0051F4A5    call        dword ptr [ecx+34];TStringList.Add
 0051F4A8    inc         dword ptr [ebp-20]
 0051F4AB    dec         ebx
>0051F4AC    jne         0051F44E
 0051F4AE    mov         eax,dword ptr [ebp-1C]
 0051F4B1    cmp         eax,5
>0051F4B4    ja          0051F58E
 0051F4BA    jmp         dword ptr [eax*4+51F4C1]
 0051F4BA    dd          0051F4D9
 0051F4BA    dd          0051F4FA
 0051F4BA    dd          0051F518
 0051F4BA    dd          0051F536
 0051F4BA    dd          0051F554
 0051F4BA    dd          0051F572
 0051F4D9    lea         edx,[ebp-200]
 0051F4DF    mov         eax,dword ptr [ebp-78]
 0051F4E2    call        004BDB3C
 0051F4E7    lea         edx,[ebp-200]
 0051F4ED    lea         eax,[ebp-60]
 0051F4F0    call        @LStrFromString
>0051F4F5    jmp         0051F58E
 0051F4FA    lea         edx,[ebp-200]
 0051F500    mov         eax,dword ptr [ebp-78]
 0051F503    call        004BDCFC
 0051F508    lea         edx,[ebp-200]
 0051F50E    lea         eax,[ebp-60]
 0051F511    call        @LStrFromString
>0051F516    jmp         0051F58E
 0051F518    lea         edx,[ebp-200]
 0051F51E    mov         eax,dword ptr [ebp-78]
 0051F521    call        004BDEBC
 0051F526    lea         edx,[ebp-200]
 0051F52C    lea         eax,[ebp-60]
 0051F52F    call        @LStrFromString
>0051F534    jmp         0051F58E
 0051F536    lea         edx,[ebp-200]
 0051F53C    mov         eax,dword ptr [ebp-78]
 0051F53F    call        004BDFE8
 0051F544    lea         edx,[ebp-200]
 0051F54A    lea         eax,[ebp-60]
 0051F54D    call        @LStrFromString
>0051F552    jmp         0051F58E
 0051F554    lea         edx,[ebp-200]
 0051F55A    mov         eax,dword ptr [ebp-78]
 0051F55D    call        004BE1C4
 0051F562    lea         edx,[ebp-200]
 0051F568    lea         eax,[ebp-60]
 0051F56B    call        @LStrFromString
>0051F570    jmp         0051F58E
 0051F572    lea         edx,[ebp-200]
 0051F578    mov         eax,dword ptr [ebp-78]
 0051F57B    call        004BE364
 0051F580    lea         edx,[ebp-200]
 0051F586    lea         eax,[ebp-60]
 0051F589    call        @LStrFromString
 0051F58E    mov         dl,1
 0051F590    mov         eax,dword ptr [ebp-78]
 0051F593    mov         ecx,dword ptr [eax]
 0051F595    call        dword ptr [ecx-4];TStringList.Destroy
 0051F598    mov         eax,dword ptr [ebp-4]
 0051F59B    mov         eax,dword ptr [eax+54]
 0051F59E    cmp         eax,dword ptr [ebp-28]
>0051F5A1    jne         005201B3
 0051F5A7    lea         eax,[ebp-60]
 0051F5AA    call        @LStrClr
>0051F5AF    jmp         005201B3
 0051F5B4    mov         eax,dword ptr [ebp-4]
 0051F5B7    mov         eax,dword ptr [eax+54]
 0051F5BA    cmp         eax,dword ptr [ebp-28]
>0051F5BD    jne         005201B3
 0051F5C3    mov         dl,1
 0051F5C5    mov         eax,[004120B8];TStringList
 0051F5CA    call        TObject.Create;TStringList.Create
 0051F5CF    mov         dword ptr [ebp-78],eax
 0051F5D2    mov         eax,dword ptr [ebp-4]
 0051F5D5    mov         eax,dword ptr [eax+3C]
 0051F5D8    mov         dword ptr [ebp-98],eax
 0051F5DE    mov         eax,dword ptr [ebp-98]
 0051F5E4    call        004BEA58
 0051F5E9    xor         ebx,ebx
 0051F5EB    mov         bl,al
 0051F5ED    test        ebx,ebx
>0051F5EF    jle         0051F658
 0051F5F1    mov         dword ptr [ebp-20],1
 0051F5F8    call        004B9E10
 0051F5FD    push        eax
 0051F5FE    lea         eax,[ebp-200]
 0051F604    push        eax
 0051F605    mov         ecx,dword ptr [ebp-20]
 0051F608    cmp         ecx,0FF
>0051F60E    jbe         0051F615
 0051F610    call        @BoundErr
 0051F615    mov         eax,dword ptr [ebp-4]
 0051F618    mov         edx,dword ptr [eax+2C]
 0051F61B    cmp         edx,0FF
>0051F621    jbe         0051F628
 0051F623    call        @BoundErr
 0051F628    mov         eax,dword ptr [ebp-98]
 0051F62E    call        004C2D10
 0051F633    lea         edx,[ebp-200]
 0051F639    lea         eax,[ebp-338]
 0051F63F    call        @LStrFromString
 0051F644    mov         edx,dword ptr [ebp-338]
 0051F64A    mov         eax,dword ptr [ebp-78]
 0051F64D    mov         ecx,dword ptr [eax]
 0051F64F    call        dword ptr [ecx+34];TStringList.Add
 0051F652    inc         dword ptr [ebp-20]
 0051F655    dec         ebx
>0051F656    jne         0051F5F8
 0051F658    mov         eax,dword ptr [ebp-1C]
 0051F65B    cmp         eax,5
>0051F65E    ja          0051F738
 0051F664    jmp         dword ptr [eax*4+51F66B]
 0051F664    dd          0051F683
 0051F664    dd          0051F6A4
 0051F664    dd          0051F6C2
 0051F664    dd          0051F6E0
 0051F664    dd          0051F6FE
 0051F664    dd          0051F71C
 0051F683    lea         edx,[ebp-200]
 0051F689    mov         eax,dword ptr [ebp-78]
 0051F68C    call        004BDB3C
 0051F691    lea         edx,[ebp-200]
 0051F697    lea         eax,[ebp-60]
 0051F69A    call        @LStrFromString
>0051F69F    jmp         0051F738
 0051F6A4    lea         edx,[ebp-200]
 0051F6AA    mov         eax,dword ptr [ebp-78]
 0051F6AD    call        004BDCFC
 0051F6B2    lea         edx,[ebp-200]
 0051F6B8    lea         eax,[ebp-60]
 0051F6BB    call        @LStrFromString
>0051F6C0    jmp         0051F738
 0051F6C2    lea         edx,[ebp-200]
 0051F6C8    mov         eax,dword ptr [ebp-78]
 0051F6CB    call        004BDEBC
 0051F6D0    lea         edx,[ebp-200]
 0051F6D6    lea         eax,[ebp-60]
 0051F6D9    call        @LStrFromString
>0051F6DE    jmp         0051F738
 0051F6E0    lea         edx,[ebp-200]
 0051F6E6    mov         eax,dword ptr [ebp-78]
 0051F6E9    call        004BDFE8
 0051F6EE    lea         edx,[ebp-200]
 0051F6F4    lea         eax,[ebp-60]
 0051F6F7    call        @LStrFromString
>0051F6FC    jmp         0051F738
 0051F6FE    lea         edx,[ebp-200]
 0051F704    mov         eax,dword ptr [ebp-78]
 0051F707    call        004BE1C4
 0051F70C    lea         edx,[ebp-200]
 0051F712    lea         eax,[ebp-60]
 0051F715    call        @LStrFromString
>0051F71A    jmp         0051F738
 0051F71C    lea         edx,[ebp-200]
 0051F722    mov         eax,dword ptr [ebp-78]
 0051F725    call        004BE364
 0051F72A    lea         edx,[ebp-200]
 0051F730    lea         eax,[ebp-60]
 0051F733    call        @LStrFromString
 0051F738    mov         dl,1
 0051F73A    mov         eax,dword ptr [ebp-78]
 0051F73D    mov         ecx,dword ptr [eax]
 0051F73F    call        dword ptr [ecx-4];TStringList.Destroy
>0051F742    jmp         005201B3
 0051F747    lea         eax,[ebp-60]
 0051F74A    call        @LStrClr
 0051F74F    call        004BB35C
 0051F754    test        al,al
>0051F756    je          0051F75D
 0051F758    mov         esi,dword ptr [ebp-58]
>0051F75B    jmp         0051F75F
 0051F75D    xor         esi,esi
 0051F75F    mov         dl,1
 0051F761    mov         eax,[004120B8];TStringList
 0051F766    call        TObject.Create;TStringList.Create
 0051F76B    mov         dword ptr [ebp-78],eax
 0051F76E    mov         eax,dword ptr [ebp-4]
 0051F771    mov         eax,dword ptr [eax+3C]
 0051F774    mov         dword ptr [ebp-9C],eax
 0051F77A    mov         al,1
 0051F77C    mov         edx,esi
 0051F77E    cmp         edx,0FF
>0051F784    jbe         0051F78B
 0051F786    call        @BoundErr
 0051F78B    lea         ecx,[ebp-0E4]
 0051F791    mov         ah,20
 0051F793    call        @SetRange
 0051F798    mov         eax,dword ptr [ebp-28]
 0051F79B    cmp         eax,0FF
>0051F7A0    ja          0051F7A9
 0051F7A2    bt          dword ptr [ebp-0E4],eax
>0051F7A9    jae         0051F950
 0051F7AF    mov         eax,dword ptr [ebp-9C]
 0051F7B5    call        004BEA58
 0051F7BA    xor         ebx,ebx
 0051F7BC    mov         bl,al
 0051F7BE    test        ebx,ebx
>0051F7C0    jle         0051F870
 0051F7C6    mov         dword ptr [ebp-20],1
 0051F7CD    lea         eax,[ebp-200]
 0051F7D3    push        eax
 0051F7D4    lea         eax,[ebp-30C]
 0051F7DA    push        eax
 0051F7DB    lea         ecx,[ebp-340]
 0051F7E1    mov         edx,dword ptr [ebp-28]
 0051F7E4    sub         edx,1
>0051F7E7    jno         0051F7EE
 0051F7E9    call        @IntOver
 0051F7EE    mov         eax,dword ptr [ebp-70]
 0051F7F1    mov         edi,dword ptr [eax]
 0051F7F3    call        dword ptr [edi+0C]
 0051F7F6    mov         edx,dword ptr [ebp-340]
 0051F7FC    lea         eax,[ebp-200]
 0051F802    mov         ecx,0FF
 0051F807    call        @LStrToString
 0051F80C    lea         edx,[ebp-200]
 0051F812    mov         ecx,dword ptr [ebp-20]
 0051F815    cmp         ecx,0FF
>0051F81B    jbe         0051F822
 0051F81D    call        @BoundErr
 0051F822    mov         eax,dword ptr [ebp-9C]
 0051F828    call        004C64CC
 0051F82D    lea         eax,[ebp-30C]
 0051F833    push        eax
 0051F834    call        004BC298
 0051F839    mov         ecx,eax
 0051F83B    mov         eax,dword ptr [ebp-9C]
 0051F841    pop         edx
 0051F842    call        004C2410
 0051F847    lea         edx,[ebp-200]
 0051F84D    lea         eax,[ebp-33C]
 0051F853    call        @LStrFromString
 0051F858    mov         edx,dword ptr [ebp-33C]
 0051F85E    mov         eax,dword ptr [ebp-78]
 0051F861    mov         ecx,dword ptr [eax]
 0051F863    call        dword ptr [ecx+34];TStringList.Add
 0051F866    inc         dword ptr [ebp-20]
 0051F869    dec         ebx
>0051F86A    jne         0051F7CD
 0051F870    mov         eax,dword ptr [ebp-1C]
 0051F873    cmp         eax,5
>0051F876    ja          0051F950
 0051F87C    jmp         dword ptr [eax*4+51F883]
 0051F87C    dd          0051F89B
 0051F87C    dd          0051F8BC
 0051F87C    dd          0051F8DA
 0051F87C    dd          0051F8F8
 0051F87C    dd          0051F916
 0051F87C    dd          0051F934
 0051F89B    lea         edx,[ebp-200]
 0051F8A1    mov         eax,dword ptr [ebp-78]
 0051F8A4    call        004BDB3C
 0051F8A9    lea         edx,[ebp-200]
 0051F8AF    lea         eax,[ebp-60]
 0051F8B2    call        @LStrFromString
>0051F8B7    jmp         0051F950
 0051F8BC    lea         edx,[ebp-200]
 0051F8C2    mov         eax,dword ptr [ebp-78]
 0051F8C5    call        004BDCFC
 0051F8CA    lea         edx,[ebp-200]
 0051F8D0    lea         eax,[ebp-60]
 0051F8D3    call        @LStrFromString
>0051F8D8    jmp         0051F950
 0051F8DA    lea         edx,[ebp-200]
 0051F8E0    mov         eax,dword ptr [ebp-78]
 0051F8E3    call        004BDEBC
 0051F8E8    lea         edx,[ebp-200]
 0051F8EE    lea         eax,[ebp-60]
 0051F8F1    call        @LStrFromString
>0051F8F6    jmp         0051F950
 0051F8F8    lea         edx,[ebp-200]
 0051F8FE    mov         eax,dword ptr [ebp-78]
 0051F901    call        004BDFE8
 0051F906    lea         edx,[ebp-200]
 0051F90C    lea         eax,[ebp-60]
 0051F90F    call        @LStrFromString
>0051F914    jmp         0051F950
 0051F916    lea         edx,[ebp-200]
 0051F91C    mov         eax,dword ptr [ebp-78]
 0051F91F    call        004BE1C4
 0051F924    lea         edx,[ebp-200]
 0051F92A    lea         eax,[ebp-60]
 0051F92D    call        @LStrFromString
>0051F932    jmp         0051F950
 0051F934    lea         edx,[ebp-200]
 0051F93A    mov         eax,dword ptr [ebp-78]
 0051F93D    call        004BE364
 0051F942    lea         edx,[ebp-200]
 0051F948    lea         eax,[ebp-60]
 0051F94B    call        @LStrFromString
 0051F950    mov         dl,1
 0051F952    mov         eax,dword ptr [ebp-78]
 0051F955    mov         ecx,dword ptr [eax]
 0051F957    call        dword ptr [ecx-4];TStringList.Destroy
 0051F95A    mov         dl,1
 0051F95C    mov         eax,[004120B8];TStringList
 0051F961    call        TObject.Create;TStringList.Create
 0051F966    mov         dword ptr [ebp-78],eax
 0051F969    mov         eax,dword ptr [ebp-4]
 0051F96C    mov         eax,dword ptr [eax+3C]
 0051F96F    mov         dword ptr [ebp-0A0],eax
 0051F975    mov         eax,dword ptr [ebp-0A0]
 0051F97B    call        004BE9E0
 0051F980    xor         edx,edx
 0051F982    mov         dl,al
 0051F984    add         edx,esi
>0051F986    jno         0051F98D
 0051F988    call        @IntOver
 0051F98D    cmp         edx,0FF
>0051F993    jbe         0051F99A
 0051F995    call        @BoundErr
 0051F99A    mov         eax,esi
 0051F99C    add         eax,1
>0051F99F    jno         0051F9A6
 0051F9A1    call        @IntOver
 0051F9A6    cmp         eax,0FF
>0051F9AB    jbe         0051F9B2
 0051F9AD    call        @BoundErr
 0051F9B2    lea         ecx,[ebp-0E4]
 0051F9B8    mov         ah,20
 0051F9BA    call        @SetRange
 0051F9BF    mov         eax,dword ptr [ebp-28]
 0051F9C2    cmp         eax,0FF
>0051F9C7    ja          0051F9D0
 0051F9C9    bt          dword ptr [ebp-0E4],eax
>0051F9D0    jae         0051FB36
 0051F9D6    mov         eax,dword ptr [ebp-0A0]
 0051F9DC    call        004BEA58
 0051F9E1    xor         ebx,ebx
 0051F9E3    mov         bl,al
 0051F9E5    test        ebx,ebx
>0051F9E7    jle         0051FA56
 0051F9E9    mov         dword ptr [ebp-20],1
 0051F9F0    call        004B9E10
 0051F9F5    push        eax
 0051F9F6    lea         eax,[ebp-200]
 0051F9FC    push        eax
 0051F9FD    mov         ecx,dword ptr [ebp-20]
 0051FA00    cmp         ecx,0FF
>0051FA06    jbe         0051FA0D
 0051FA08    call        @BoundErr
 0051FA0D    mov         edx,dword ptr [ebp-28]
 0051FA10    sub         edx,esi
>0051FA12    jno         0051FA19
 0051FA14    call        @IntOver
 0051FA19    cmp         edx,0FF
>0051FA1F    jbe         0051FA26
 0051FA21    call        @BoundErr
 0051FA26    mov         eax,dword ptr [ebp-0A0]
 0051FA2C    call        004C2D10
 0051FA31    lea         edx,[ebp-200]
 0051FA37    lea         eax,[ebp-344]
 0051FA3D    call        @LStrFromString
 0051FA42    mov         edx,dword ptr [ebp-344]
 0051FA48    mov         eax,dword ptr [ebp-78]
 0051FA4B    mov         ecx,dword ptr [eax]
 0051FA4D    call        dword ptr [ecx+34];TStringList.Add
 0051FA50    inc         dword ptr [ebp-20]
 0051FA53    dec         ebx
>0051FA54    jne         0051F9F0
 0051FA56    mov         eax,dword ptr [ebp-1C]
 0051FA59    cmp         eax,5
>0051FA5C    ja          0051FB36
 0051FA62    jmp         dword ptr [eax*4+51FA69]
 0051FA62    dd          0051FA81
 0051FA62    dd          0051FAA2
 0051FA62    dd          0051FAC0
 0051FA62    dd          0051FADE
 0051FA62    dd          0051FAFC
 0051FA62    dd          0051FB1A
 0051FA81    lea         edx,[ebp-200]
 0051FA87    mov         eax,dword ptr [ebp-78]
 0051FA8A    call        004BDB3C
 0051FA8F    lea         edx,[ebp-200]
 0051FA95    lea         eax,[ebp-60]
 0051FA98    call        @LStrFromString
>0051FA9D    jmp         0051FB36
 0051FAA2    lea         edx,[ebp-200]
 0051FAA8    mov         eax,dword ptr [ebp-78]
 0051FAAB    call        004BDCFC
 0051FAB0    lea         edx,[ebp-200]
 0051FAB6    lea         eax,[ebp-60]
 0051FAB9    call        @LStrFromString
>0051FABE    jmp         0051FB36
 0051FAC0    lea         edx,[ebp-200]
 0051FAC6    mov         eax,dword ptr [ebp-78]
 0051FAC9    call        004BDEBC
 0051FACE    lea         edx,[ebp-200]
 0051FAD4    lea         eax,[ebp-60]
 0051FAD7    call        @LStrFromString
>0051FADC    jmp         0051FB36
 0051FADE    lea         edx,[ebp-200]
 0051FAE4    mov         eax,dword ptr [ebp-78]
 0051FAE7    call        004BDFE8
 0051FAEC    lea         edx,[ebp-200]
 0051FAF2    lea         eax,[ebp-60]
 0051FAF5    call        @LStrFromString
>0051FAFA    jmp         0051FB36
 0051FAFC    lea         edx,[ebp-200]
 0051FB02    mov         eax,dword ptr [ebp-78]
 0051FB05    call        004BE1C4
 0051FB0A    lea         edx,[ebp-200]
 0051FB10    lea         eax,[ebp-60]
 0051FB13    call        @LStrFromString
>0051FB18    jmp         0051FB36
 0051FB1A    lea         edx,[ebp-200]
 0051FB20    mov         eax,dword ptr [ebp-78]
 0051FB23    call        004BE364
 0051FB28    lea         edx,[ebp-200]
 0051FB2E    lea         eax,[ebp-60]
 0051FB31    call        @LStrFromString
 0051FB36    mov         dl,1
 0051FB38    mov         eax,dword ptr [ebp-78]
 0051FB3B    mov         ecx,dword ptr [eax]
 0051FB3D    call        dword ptr [ecx-4];TStringList.Destroy
 0051FB40    call        004BC188
 0051FB45    test        al,al
>0051FB47    je          0051FE70
 0051FB4D    call        004BC1BC
 0051FB52    test        al,al
>0051FB54    je          0051FB68
 0051FB56    mov         eax,dword ptr [ebp-4]
 0051FB59    mov         esi,dword ptr [eax+54]
 0051FB5C    sub         esi,1
>0051FB5F    jno         0051FB66
 0051FB61    call        @IntOver
>0051FB66    jmp         0051FB6E
 0051FB68    mov         eax,dword ptr [ebp-4]
 0051FB6B    mov         esi,dword ptr [eax+54]
 0051FB6E    mov         eax,esi
 0051FB70    sub         eax,1
>0051FB73    jno         0051FB7A
 0051FB75    call        @IntOver
 0051FB7A    cmp         eax,dword ptr [ebp-28]
>0051FB7D    jne         0051FCF0
 0051FB83    mov         dl,1
 0051FB85    mov         eax,[004120B8];TStringList
 0051FB8A    call        TObject.Create;TStringList.Create
 0051FB8F    mov         dword ptr [ebp-78],eax
 0051FB92    mov         eax,dword ptr [ebp-4]
 0051FB95    mov         eax,dword ptr [eax+3C]
 0051FB98    mov         dword ptr [ebp-0A4],eax
 0051FB9E    mov         eax,dword ptr [ebp-0A4]
 0051FBA4    call        004BEA58
 0051FBA9    xor         ebx,ebx
 0051FBAB    mov         bl,al
 0051FBAD    test        ebx,ebx
>0051FBAF    jle         0051FC06
 0051FBB1    mov         dword ptr [ebp-20],1
 0051FBB8    lea         eax,[ebp-200]
 0051FBBE    push        eax
 0051FBBF    call        004BC298
 0051FBC4    mov         ecx,eax
 0051FBC6    mov         edx,dword ptr [ebp-20]
 0051FBC9    cmp         edx,0FF
>0051FBCF    jbe         0051FBD6
 0051FBD1    call        @BoundErr
 0051FBD6    mov         eax,dword ptr [ebp-0A4]
 0051FBDC    call        004C9594
 0051FBE1    lea         edx,[ebp-200]
 0051FBE7    lea         eax,[ebp-348]
 0051FBED    call        @LStrFromString
 0051FBF2    mov         edx,dword ptr [ebp-348]
 0051FBF8    mov         eax,dword ptr [ebp-78]
 0051FBFB    mov         ecx,dword ptr [eax]
 0051FBFD    call        dword ptr [ecx+34];TStringList.Add
 0051FC00    inc         dword ptr [ebp-20]
 0051FC03    dec         ebx
>0051FC04    jne         0051FBB8
 0051FC06    mov         eax,dword ptr [ebp-1C]
 0051FC09    cmp         eax,5
>0051FC0C    ja          0051FCE6
 0051FC12    jmp         dword ptr [eax*4+51FC19]
 0051FC12    dd          0051FC31
 0051FC12    dd          0051FC52
 0051FC12    dd          0051FC70
 0051FC12    dd          0051FC8E
 0051FC12    dd          0051FCAC
 0051FC12    dd          0051FCCA
 0051FC31    lea         edx,[ebp-200]
 0051FC37    mov         eax,dword ptr [ebp-78]
 0051FC3A    call        004BDB3C
 0051FC3F    lea         edx,[ebp-200]
 0051FC45    lea         eax,[ebp-60]
 0051FC48    call        @LStrFromString
>0051FC4D    jmp         0051FCE6
 0051FC52    lea         edx,[ebp-200]
 0051FC58    mov         eax,dword ptr [ebp-78]
 0051FC5B    call        004BDCFC
 0051FC60    lea         edx,[ebp-200]
 0051FC66    lea         eax,[ebp-60]
 0051FC69    call        @LStrFromString
>0051FC6E    jmp         0051FCE6
 0051FC70    lea         edx,[ebp-200]
 0051FC76    mov         eax,dword ptr [ebp-78]
 0051FC79    call        004BDEBC
 0051FC7E    lea         edx,[ebp-200]
 0051FC84    lea         eax,[ebp-60]
 0051FC87    call        @LStrFromString
>0051FC8C    jmp         0051FCE6
 0051FC8E    lea         edx,[ebp-200]
 0051FC94    mov         eax,dword ptr [ebp-78]
 0051FC97    call        004BDFE8
 0051FC9C    lea         edx,[ebp-200]
 0051FCA2    lea         eax,[ebp-60]
 0051FCA5    call        @LStrFromString
>0051FCAA    jmp         0051FCE6
 0051FCAC    lea         edx,[ebp-200]
 0051FCB2    mov         eax,dword ptr [ebp-78]
 0051FCB5    call        004BE1C4
 0051FCBA    lea         edx,[ebp-200]
 0051FCC0    lea         eax,[ebp-60]
 0051FCC3    call        @LStrFromString
>0051FCC8    jmp         0051FCE6
 0051FCCA    lea         edx,[ebp-200]
 0051FCD0    mov         eax,dword ptr [ebp-78]
 0051FCD3    call        004BE364
 0051FCD8    lea         edx,[ebp-200]
 0051FCDE    lea         eax,[ebp-60]
 0051FCE1    call        @LStrFromString
 0051FCE6    mov         dl,1
 0051FCE8    mov         eax,dword ptr [ebp-78]
 0051FCEB    mov         ecx,dword ptr [eax]
 0051FCED    call        dword ptr [ecx-4];TStringList.Destroy
 0051FCF0    sub         esi,2
>0051FCF3    jno         0051FCFA
 0051FCF5    call        @IntOver
 0051FCFA    cmp         esi,dword ptr [ebp-28]
>0051FCFD    jne         0051FE70
 0051FD03    mov         dl,1
 0051FD05    mov         eax,[004120B8];TStringList
 0051FD0A    call        TObject.Create;TStringList.Create
 0051FD0F    mov         dword ptr [ebp-78],eax
 0051FD12    mov         eax,dword ptr [ebp-4]
 0051FD15    mov         eax,dword ptr [eax+3C]
 0051FD18    mov         dword ptr [ebp-0A8],eax
 0051FD1E    mov         eax,dword ptr [ebp-0A8]
 0051FD24    call        004BEA58
 0051FD29    xor         ebx,ebx
 0051FD2B    mov         bl,al
 0051FD2D    test        ebx,ebx
>0051FD2F    jle         0051FD86
 0051FD31    mov         dword ptr [ebp-20],1
 0051FD38    lea         eax,[ebp-200]
 0051FD3E    push        eax
 0051FD3F    call        004BC298
 0051FD44    mov         ecx,eax
 0051FD46    mov         edx,dword ptr [ebp-20]
 0051FD49    cmp         edx,0FF
>0051FD4F    jbe         0051FD56
 0051FD51    call        @BoundErr
 0051FD56    mov         eax,dword ptr [ebp-0A8]
 0051FD5C    call        004C9708
 0051FD61    lea         edx,[ebp-200]
 0051FD67    lea         eax,[ebp-34C]
 0051FD6D    call        @LStrFromString
 0051FD72    mov         edx,dword ptr [ebp-34C]
 0051FD78    mov         eax,dword ptr [ebp-78]
 0051FD7B    mov         ecx,dword ptr [eax]
 0051FD7D    call        dword ptr [ecx+34];TStringList.Add
 0051FD80    inc         dword ptr [ebp-20]
 0051FD83    dec         ebx
>0051FD84    jne         0051FD38
 0051FD86    mov         eax,dword ptr [ebp-1C]
 0051FD89    cmp         eax,5
>0051FD8C    ja          0051FE66
 0051FD92    jmp         dword ptr [eax*4+51FD99]
 0051FD92    dd          0051FDB1
 0051FD92    dd          0051FDD2
 0051FD92    dd          0051FDF0
 0051FD92    dd          0051FE0E
 0051FD92    dd          0051FE2C
 0051FD92    dd          0051FE4A
 0051FDB1    lea         edx,[ebp-200]
 0051FDB7    mov         eax,dword ptr [ebp-78]
 0051FDBA    call        004BDB3C
 0051FDBF    lea         edx,[ebp-200]
 0051FDC5    lea         eax,[ebp-60]
 0051FDC8    call        @LStrFromString
>0051FDCD    jmp         0051FE66
 0051FDD2    lea         edx,[ebp-200]
 0051FDD8    mov         eax,dword ptr [ebp-78]
 0051FDDB    call        004BDCFC
 0051FDE0    lea         edx,[ebp-200]
 0051FDE6    lea         eax,[ebp-60]
 0051FDE9    call        @LStrFromString
>0051FDEE    jmp         0051FE66
 0051FDF0    lea         edx,[ebp-200]
 0051FDF6    mov         eax,dword ptr [ebp-78]
 0051FDF9    call        004BDEBC
 0051FDFE    lea         edx,[ebp-200]
 0051FE04    lea         eax,[ebp-60]
 0051FE07    call        @LStrFromString
>0051FE0C    jmp         0051FE66
 0051FE0E    lea         edx,[ebp-200]
 0051FE14    mov         eax,dword ptr [ebp-78]
 0051FE17    call        004BDFE8
 0051FE1C    lea         edx,[ebp-200]
 0051FE22    lea         eax,[ebp-60]
 0051FE25    call        @LStrFromString
>0051FE2A    jmp         0051FE66
 0051FE2C    lea         edx,[ebp-200]
 0051FE32    mov         eax,dword ptr [ebp-78]
 0051FE35    call        004BE1C4
 0051FE3A    lea         edx,[ebp-200]
 0051FE40    lea         eax,[ebp-60]
 0051FE43    call        @LStrFromString
>0051FE48    jmp         0051FE66
 0051FE4A    lea         edx,[ebp-200]
 0051FE50    mov         eax,dword ptr [ebp-78]
 0051FE53    call        004BE364
 0051FE58    lea         edx,[ebp-200]
 0051FE5E    lea         eax,[ebp-60]
 0051FE61    call        @LStrFromString
 0051FE66    mov         dl,1
 0051FE68    mov         eax,dword ptr [ebp-78]
 0051FE6B    mov         ecx,dword ptr [eax]
 0051FE6D    call        dword ptr [ecx-4];TStringList.Destroy
 0051FE70    call        004BC1BC
 0051FE75    test        al,al
>0051FE77    je          0052002B
 0051FE7D    mov         eax,dword ptr [ebp-4]
 0051FE80    mov         eax,dword ptr [eax+54]
 0051FE83    sub         eax,1
>0051FE86    jno         0051FE8D
 0051FE88    call        @IntOver
 0051FE8D    cmp         eax,dword ptr [ebp-28]
>0051FE90    jne         0052000F
 0051FE96    mov         dl,1
 0051FE98    mov         eax,[004120B8];TStringList
 0051FE9D    call        TObject.Create;TStringList.Create
 0051FEA2    mov         dword ptr [ebp-78],eax
 0051FEA5    mov         eax,dword ptr [ebp-4]
 0051FEA8    mov         eax,dword ptr [eax+3C]
 0051FEAB    mov         dword ptr [ebp-0AC],eax
 0051FEB1    mov         eax,dword ptr [ebp-0AC]
 0051FEB7    call        004BEA58
 0051FEBC    xor         ebx,ebx
 0051FEBE    mov         bl,al
 0051FEC0    test        ebx,ebx
>0051FEC2    jle         0051FF25
 0051FEC4    mov         dword ptr [ebp-20],1
 0051FECB    call        004BC298
 0051FED0    push        eax
 0051FED1    call        004BC30C
 0051FED6    push        eax
 0051FED7    lea         eax,[ebp-200]
 0051FEDD    push        eax
 0051FEDE    call        004B9E10
 0051FEE3    mov         ecx,eax
 0051FEE5    mov         edx,dword ptr [ebp-20]
 0051FEE8    cmp         edx,0FF
>0051FEEE    jbe         0051FEF5
 0051FEF0    call        @BoundErr
 0051FEF5    mov         eax,dword ptr [ebp-0AC]
 0051FEFB    call        004C32B4
 0051FF00    lea         edx,[ebp-200]
 0051FF06    lea         eax,[ebp-350]
 0051FF0C    call        @LStrFromString
 0051FF11    mov         edx,dword ptr [ebp-350]
 0051FF17    mov         eax,dword ptr [ebp-78]
 0051FF1A    mov         ecx,dword ptr [eax]
 0051FF1C    call        dword ptr [ecx+34];TStringList.Add
 0051FF1F    inc         dword ptr [ebp-20]
 0051FF22    dec         ebx
>0051FF23    jne         0051FECB
 0051FF25    mov         eax,dword ptr [ebp-1C]
 0051FF28    cmp         eax,5
>0051FF2B    ja          00520005
 0051FF31    jmp         dword ptr [eax*4+51FF38]
 0051FF31    dd          0051FF50
 0051FF31    dd          0051FF71
 0051FF31    dd          0051FF8F
 0051FF31    dd          0051FFAD
 0051FF31    dd          0051FFCB
 0051FF31    dd          0051FFE9
 0051FF50    lea         edx,[ebp-200]
 0051FF56    mov         eax,dword ptr [ebp-78]
 0051FF59    call        004BDB3C
 0051FF5E    lea         edx,[ebp-200]
 0051FF64    lea         eax,[ebp-60]
 0051FF67    call        @LStrFromString
>0051FF6C    jmp         00520005
 0051FF71    lea         edx,[ebp-200]
 0051FF77    mov         eax,dword ptr [ebp-78]
 0051FF7A    call        004BDCFC
 0051FF7F    lea         edx,[ebp-200]
 0051FF85    lea         eax,[ebp-60]
 0051FF88    call        @LStrFromString
>0051FF8D    jmp         00520005
 0051FF8F    lea         edx,[ebp-200]
 0051FF95    mov         eax,dword ptr [ebp-78]
 0051FF98    call        004BDEBC
 0051FF9D    lea         edx,[ebp-200]
 0051FFA3    lea         eax,[ebp-60]
 0051FFA6    call        @LStrFromString
>0051FFAB    jmp         00520005
 0051FFAD    lea         edx,[ebp-200]
 0051FFB3    mov         eax,dword ptr [ebp-78]
 0051FFB6    call        004BDFE8
 0051FFBB    lea         edx,[ebp-200]
 0051FFC1    lea         eax,[ebp-60]
 0051FFC4    call        @LStrFromString
>0051FFC9    jmp         00520005
 0051FFCB    lea         edx,[ebp-200]
 0051FFD1    mov         eax,dword ptr [ebp-78]
 0051FFD4    call        004BE1C4
 0051FFD9    lea         edx,[ebp-200]
 0051FFDF    lea         eax,[ebp-60]
 0051FFE2    call        @LStrFromString
>0051FFE7    jmp         00520005
 0051FFE9    lea         edx,[ebp-200]
 0051FFEF    mov         eax,dword ptr [ebp-78]
 0051FFF2    call        004BE364
 0051FFF7    lea         edx,[ebp-200]
 0051FFFD    lea         eax,[ebp-60]
 00520000    call        @LStrFromString
 00520005    mov         dl,1
 00520007    mov         eax,dword ptr [ebp-78]
 0052000A    mov         ecx,dword ptr [eax]
 0052000C    call        dword ptr [ecx-4];TStringList.Destroy
 0052000F    mov         eax,dword ptr [ebp-4]
 00520012    mov         eax,dword ptr [eax+54]
 00520015    cmp         eax,dword ptr [ebp-28]
>00520018    jne         005201B3
 0052001E    lea         eax,[ebp-60]
 00520021    call        @LStrClr
>00520026    jmp         005201B3
 0052002B    mov         eax,dword ptr [ebp-4]
 0052002E    mov         eax,dword ptr [eax+54]
 00520031    cmp         eax,dword ptr [ebp-28]
>00520034    jne         005201B3
 0052003A    mov         dl,1
 0052003C    mov         eax,[004120B8];TStringList
 00520041    call        TObject.Create;TStringList.Create
 00520046    mov         dword ptr [ebp-78],eax
 00520049    mov         eax,dword ptr [ebp-4]
 0052004C    mov         eax,dword ptr [eax+3C]
 0052004F    mov         dword ptr [ebp-0B0],eax
 00520055    mov         eax,dword ptr [ebp-0B0]
 0052005B    call        004BEA58
 00520060    xor         ebx,ebx
 00520062    mov         bl,al
 00520064    test        ebx,ebx
>00520066    jle         005200C9
 00520068    mov         dword ptr [ebp-20],1
 0052006F    call        004BC298
 00520074    push        eax
 00520075    call        004BC30C
 0052007A    push        eax
 0052007B    lea         eax,[ebp-200]
 00520081    push        eax
 00520082    call        004B9E10
 00520087    mov         ecx,eax
 00520089    mov         edx,dword ptr [ebp-20]
 0052008C    cmp         edx,0FF
>00520092    jbe         00520099
 00520094    call        @BoundErr
 00520099    mov         eax,dword ptr [ebp-0B0]
 0052009F    call        004C32B4
 005200A4    lea         edx,[ebp-200]
 005200AA    lea         eax,[ebp-354]
 005200B0    call        @LStrFromString
 005200B5    mov         edx,dword ptr [ebp-354]
 005200BB    mov         eax,dword ptr [ebp-78]
 005200BE    mov         ecx,dword ptr [eax]
 005200C0    call        dword ptr [ecx+34];TStringList.Add
 005200C3    inc         dword ptr [ebp-20]
 005200C6    dec         ebx
>005200C7    jne         0052006F
 005200C9    mov         eax,dword ptr [ebp-1C]
 005200CC    cmp         eax,5
>005200CF    ja          005201A9
 005200D5    jmp         dword ptr [eax*4+5200DC]
 005200D5    dd          005200F4
 005200D5    dd          00520115
 005200D5    dd          00520133
 005200D5    dd          00520151
 005200D5    dd          0052016F
 005200D5    dd          0052018D
 005200F4    lea         edx,[ebp-200]
 005200FA    mov         eax,dword ptr [ebp-78]
 005200FD    call        004BDB3C
 00520102    lea         edx,[ebp-200]
 00520108    lea         eax,[ebp-60]
 0052010B    call        @LStrFromString
>00520110    jmp         005201A9
 00520115    lea         edx,[ebp-200]
 0052011B    mov         eax,dword ptr [ebp-78]
 0052011E    call        004BDCFC
 00520123    lea         edx,[ebp-200]
 00520129    lea         eax,[ebp-60]
 0052012C    call        @LStrFromString
>00520131    jmp         005201A9
 00520133    lea         edx,[ebp-200]
 00520139    mov         eax,dword ptr [ebp-78]
 0052013C    call        004BDEBC
 00520141    lea         edx,[ebp-200]
 00520147    lea         eax,[ebp-60]
 0052014A    call        @LStrFromString
>0052014F    jmp         005201A9
 00520151    lea         edx,[ebp-200]
 00520157    mov         eax,dword ptr [ebp-78]
 0052015A    call        004BDFE8
 0052015F    lea         edx,[ebp-200]
 00520165    lea         eax,[ebp-60]
 00520168    call        @LStrFromString
>0052016D    jmp         005201A9
 0052016F    lea         edx,[ebp-200]
 00520175    mov         eax,dword ptr [ebp-78]
 00520178    call        004BE1C4
 0052017D    lea         edx,[ebp-200]
 00520183    lea         eax,[ebp-60]
 00520186    call        @LStrFromString
>0052018B    jmp         005201A9
 0052018D    lea         edx,[ebp-200]
 00520193    mov         eax,dword ptr [ebp-78]
 00520196    call        004BE364
 0052019B    lea         edx,[ebp-200]
 005201A1    lea         eax,[ebp-60]
 005201A4    call        @LStrFromString
 005201A9    mov         dl,1
 005201AB    mov         eax,dword ptr [ebp-78]
 005201AE    mov         ecx,dword ptr [eax]
 005201B0    call        dword ptr [ecx-4];TStringList.Destroy
 005201B3    call        004BC1BC
 005201B8    test        al,al
>005201BA    je          00520223
 005201BC    mov         eax,dword ptr [ebp-4]
 005201BF    mov         eax,dword ptr [eax+54]
 005201C2    cmp         eax,dword ptr [ebp-28]
>005201C5    je          005201F5
 005201C7    push        5
 005201C9    lea         eax,[ebp-0C0]
 005201CF    push        eax
 005201D0    mov         eax,dword ptr [ebp-60]
 005201D3    call        @LStrLen
 005201D8    push        eax
 005201D9    mov         eax,dword ptr [ebp-60]
 005201DC    call        @LStrToPChar
 005201E1    push        eax
 005201E2    mov         eax,dword ptr [ebp-4]
 005201E5    mov         eax,dword ptr [eax+40]
 005201E8    call        TCanvas.GetHandle
 005201ED    push        eax
 005201EE    call        user32.DrawTextA
>005201F3    jmp         0052024F
 005201F5    push        4
 005201F7    lea         eax,[ebp-0C0]
 005201FD    push        eax
 005201FE    mov         eax,dword ptr [ebp-60]
 00520201    call        @LStrLen
 00520206    push        eax
 00520207    mov         eax,dword ptr [ebp-60]
 0052020A    call        @LStrToPChar
 0052020F    push        eax
 00520210    mov         eax,dword ptr [ebp-4]
 00520213    mov         eax,dword ptr [eax+40]
 00520216    call        TCanvas.GetHandle
 0052021B    push        eax
 0052021C    call        user32.DrawTextA
>00520221    jmp         0052024F
 00520223    push        5
 00520225    lea         eax,[ebp-0C0]
 0052022B    push        eax
 0052022C    mov         eax,dword ptr [ebp-60]
 0052022F    call        @LStrLen
 00520234    push        eax
 00520235    mov         eax,dword ptr [ebp-60]
 00520238    call        @LStrToPChar
 0052023D    push        eax
 0052023E    mov         eax,dword ptr [ebp-4]
 00520241    mov         eax,dword ptr [eax+40]
 00520244    call        TCanvas.GetHandle
 00520249    push        eax
 0052024A    call        user32.DrawTextA
 0052024F    add         dword ptr [ebp-3C],1
>00520253    jno         0052025A
 00520255    call        @IntOver
 0052025A    inc         dword ptr [ebp-28]
 0052025D    dec         dword ptr [ebp-84]
>00520263    jne         0051EDEF
 00520269    add         dword ptr [ebp-4C],1
>0052026D    jno         00520274
 0052026F    call        @IntOver
 00520274    inc         dword ptr [ebp-1C]
 00520277    dec         dword ptr [ebp-7C]
>0052027A    jne         0051EC99
 00520280    mov         eax,dword ptr [ebp-10]
 00520283    add         eax,1
>00520286    jno         0052028D
 00520288    call        @IntOver
 0052028D    test        eax,eax
>0052028F    jl          00520340
 00520295    inc         eax
 00520296    mov         dword ptr [ebp-7C],eax
 00520299    mov         dword ptr [ebp-1C],0
 005202A0    cmp         dword ptr [ebp-1C],0
>005202A4    jne         005202DE
 005202A6    mov         edx,dword ptr [ebp-34]
 005202A9    add         edx,dword ptr [ebp-24]
>005202AC    jno         005202B3
 005202AE    call        @IntOver
 005202B3    mov         eax,dword ptr [ebp-4]
 005202B6    mov         eax,dword ptr [eax+40]
 005202B9    mov         ecx,dword ptr [ebp-38]
 005202BC    call        TCanvas.MoveTo
 005202C1    mov         edx,dword ptr [ebp-34]
 005202C4    add         edx,dword ptr [ebp-2C]
>005202C7    jno         005202CE
 005202C9    call        @IntOver
 005202CE    mov         eax,dword ptr [ebp-4]
 005202D1    mov         eax,dword ptr [eax+40]
 005202D4    mov         ecx,dword ptr [ebp-38]
 005202D7    call        TCanvas.LineTo
>005202DC    jmp         00520334
 005202DE    mov         ecx,dword ptr [ebp-1C]
 005202E1    imul        ecx,dword ptr [ebp-18]
>005202E5    jno         005202EC
 005202E7    call        @IntOver
 005202EC    add         ecx,dword ptr [ebp-38]
>005202EF    jno         005202F6
 005202F1    call        @IntOver
 005202F6    mov         eax,dword ptr [ebp-4]
 005202F9    mov         eax,dword ptr [eax+40]
 005202FC    mov         edx,dword ptr [ebp-34]
 005202FF    call        TCanvas.MoveTo
 00520304    mov         ecx,dword ptr [ebp-1C]
 00520307    imul        ecx,dword ptr [ebp-18]
>0052030B    jno         00520312
 0052030D    call        @IntOver
 00520312    add         ecx,dword ptr [ebp-38]
>00520315    jno         0052031C
 00520317    call        @IntOver
 0052031C    mov         edx,dword ptr [ebp-34]
 0052031F    add         edx,dword ptr [ebp-2C]
>00520322    jno         00520329
 00520324    call        @IntOver
 00520329    mov         eax,dword ptr [ebp-4]
 0052032C    mov         eax,dword ptr [eax+40]
 0052032F    call        TCanvas.LineTo
 00520334    inc         dword ptr [ebp-1C]
 00520337    dec         dword ptr [ebp-7C]
>0052033A    jne         005202A0
 00520340    cmp         dword ptr [ebp-48],0
>00520344    jle         00520416
 0052034A    mov         eax,dword ptr [ebp-48]
 0052034D    test        eax,eax
>0052034F    jl          00520416
 00520355    inc         eax
 00520356    mov         dword ptr [ebp-7C],eax
 00520359    mov         dword ptr [ebp-1C],0
 00520360    mov         eax,dword ptr [ebp-4]
 00520363    mov         eax,dword ptr [eax+3C]
 00520366    call        004BEA58
 0052036B    xor         ecx,ecx
 0052036D    mov         cl,al
 0052036F    add         ecx,1
>00520372    jno         00520379
 00520374    call        @IntOver
 00520379    add         ecx,dword ptr [ebp-1C]
>0052037C    jno         00520383
 0052037E    call        @IntOver
 00520383    imul        ecx,dword ptr [ebp-18]
>00520387    jno         0052038E
 00520389    call        @IntOver
 0052038E    add         ecx,dword ptr [ebp-38]
>00520391    jno         00520398
 00520393    call        @IntOver
 00520398    add         ecx,14
>0052039B    jno         005203A2
 0052039D    call        @IntOver
 005203A2    mov         eax,dword ptr [ebp-4]
 005203A5    mov         eax,dword ptr [eax+40]
 005203A8    mov         edx,dword ptr [ebp-34]
 005203AB    call        TCanvas.MoveTo
 005203B0    mov         eax,dword ptr [ebp-4]
 005203B3    mov         eax,dword ptr [eax+3C]
 005203B6    call        004BEA58
 005203BB    xor         ecx,ecx
 005203BD    mov         cl,al
 005203BF    add         ecx,1
>005203C2    jno         005203C9
 005203C4    call        @IntOver
 005203C9    add         ecx,dword ptr [ebp-1C]
>005203CC    jno         005203D3
 005203CE    call        @IntOver
 005203D3    imul        ecx,dword ptr [ebp-18]
>005203D7    jno         005203DE
 005203D9    call        @IntOver
 005203DE    add         ecx,dword ptr [ebp-38]
>005203E1    jno         005203E8
 005203E3    call        @IntOver
 005203E8    add         ecx,14
>005203EB    jno         005203F2
 005203ED    call        @IntOver
 005203F2    mov         edx,dword ptr [ebp-34]
 005203F5    add         edx,dword ptr [ebp-2C]
>005203F8    jno         005203FF
 005203FA    call        @IntOver
 005203FF    mov         eax,dword ptr [ebp-4]
 00520402    mov         eax,dword ptr [eax+40]
 00520405    call        TCanvas.LineTo
 0052040A    inc         dword ptr [ebp-1C]
 0052040D    dec         dword ptr [ebp-7C]
>00520410    jne         00520360
 00520416    mov         eax,dword ptr [ebp-0C]
 00520419    add         eax,1
>0052041C    jno         00520423
 0052041E    call        @IntOver
 00520423    test        eax,eax
>00520425    jl          00520544
 0052042B    inc         eax
 0052042C    mov         dword ptr [ebp-7C],eax
 0052042F    xor         ebx,ebx
 00520431    test        ebx,ebx
>00520433    jne         00520470
 00520435    mov         ecx,dword ptr [ebp-38]
 00520438    add         ecx,dword ptr [ebp-18]
>0052043B    jno         00520442
 0052043D    call        @IntOver
 00520442    mov         eax,dword ptr [ebp-4]
 00520445    mov         eax,dword ptr [eax+40]
 00520448    mov         edx,dword ptr [ebp-34]
 0052044B    call        TCanvas.MoveTo
 00520450    mov         ecx,dword ptr [ebp-38]
 00520453    add         ecx,dword ptr [ebp-40]
>00520456    jno         0052045D
 00520458    call        @IntOver
 0052045D    mov         eax,dword ptr [ebp-4]
 00520460    mov         eax,dword ptr [eax+40]
 00520463    mov         edx,dword ptr [ebp-34]
 00520466    call        TCanvas.LineTo
>0052046B    jmp         0052053A
 00520470    cmp         ebx,1
>00520473    jne         005204BA
 00520475    mov         edx,dword ptr [ebp-34]
 00520478    add         edx,dword ptr [ebp-24]
>0052047B    jno         00520482
 0052047D    call        @IntOver
 00520482    mov         eax,dword ptr [ebp-4]
 00520485    mov         eax,dword ptr [eax+40]
 00520488    mov         ecx,dword ptr [ebp-38]
 0052048B    call        TCanvas.MoveTo
 00520490    mov         ecx,dword ptr [ebp-38]
 00520493    add         ecx,dword ptr [ebp-40]
>00520496    jno         0052049D
 00520498    call        @IntOver
 0052049D    mov         edx,dword ptr [ebp-34]
 005204A0    add         edx,dword ptr [ebp-24]
>005204A3    jno         005204AA
 005204A5    call        @IntOver
 005204AA    mov         eax,dword ptr [ebp-4]
 005204AD    mov         eax,dword ptr [eax+40]
 005204B0    call        TCanvas.LineTo
>005204B5    jmp         0052053A
 005204BA    mov         edx,dword ptr [ebp-34]
 005204BD    add         edx,dword ptr [ebp-24]
>005204C0    jno         005204C7
 005204C2    call        @IntOver
 005204C7    mov         eax,ebx
 005204C9    sub         eax,1
>005204CC    jno         005204D3
 005204CE    call        @IntOver
 005204D3    imul        eax,dword ptr [ebp-14]
>005204D7    jno         005204DE
 005204D9    call        @IntOver
 005204DE    add         edx,eax
>005204E0    jno         005204E7
 005204E2    call        @IntOver
 005204E7    mov         eax,dword ptr [ebp-4]
 005204EA    mov         eax,dword ptr [eax+40]
 005204ED    mov         ecx,dword ptr [ebp-38]
 005204F0    call        TCanvas.MoveTo
 005204F5    mov         edx,dword ptr [ebp-34]
 005204F8    add         edx,dword ptr [ebp-24]
>005204FB    jno         00520502
 005204FD    call        @IntOver
 00520502    mov         eax,ebx
 00520504    sub         eax,1
>00520507    jno         0052050E
 00520509    call        @IntOver
 0052050E    imul        eax,dword ptr [ebp-14]
>00520512    jno         00520519
 00520514    call        @IntOver
 00520519    add         edx,eax
>0052051B    jno         00520522
 0052051D    call        @IntOver
 00520522    mov         ecx,dword ptr [ebp-38]
 00520525    add         ecx,dword ptr [ebp-40]
>00520528    jno         0052052F
 0052052A    call        @IntOver
 0052052F    mov         eax,dword ptr [ebp-4]
 00520532    mov         eax,dword ptr [eax+40]
 00520535    call        TCanvas.LineTo
 0052053A    inc         ebx
 0052053B    dec         dword ptr [ebp-7C]
>0052053E    jne         00520431
 00520544    cmp         dword ptr [ebp-48],0
>00520548    jle         00520650
 0052054E    mov         eax,dword ptr [ebp-0C]
 00520551    add         eax,1
>00520554    jno         0052055B
 00520556    call        @IntOver
 0052055B    test        eax,eax
>0052055D    jl          00520650
 00520563    inc         eax
 00520564    mov         dword ptr [ebp-7C],eax
 00520567    xor         ebx,ebx
 00520569    test        ebx,ebx
>0052056B    jne         005205B2
 0052056D    mov         ecx,dword ptr [ebp-38]
 00520570    add         ecx,dword ptr [ebp-40]
>00520573    jno         0052057A
 00520575    call        @IntOver
 0052057A    add         ecx,14
>0052057D    jno         00520584
 0052057F    call        @IntOver
 00520584    mov         eax,dword ptr [ebp-4]
 00520587    mov         eax,dword ptr [eax+40]
 0052058A    mov         edx,dword ptr [ebp-34]
 0052058D    call        TCanvas.MoveTo
 00520592    mov         ecx,dword ptr [ebp-38]
 00520595    add         ecx,dword ptr [ebp-30]
>00520598    jno         0052059F
 0052059A    call        @IntOver
 0052059F    mov         eax,dword ptr [ebp-4]
 005205A2    mov         eax,dword ptr [eax+40]
 005205A5    mov         edx,dword ptr [ebp-34]
 005205A8    call        TCanvas.LineTo
>005205AD    jmp         00520646
 005205B2    mov         edx,dword ptr [ebp-34]
 005205B5    add         edx,dword ptr [ebp-24]
>005205B8    jno         005205BF
 005205BA    call        @IntOver
 005205BF    mov         eax,ebx
 005205C1    sub         eax,1
>005205C4    jno         005205CB
 005205C6    call        @IntOver
 005205CB    imul        eax,dword ptr [ebp-14]
>005205CF    jno         005205D6
 005205D1    call        @IntOver
 005205D6    add         edx,eax
>005205D8    jno         005205DF
 005205DA    call        @IntOver
 005205DF    mov         ecx,dword ptr [ebp-38]
 005205E2    add         ecx,dword ptr [ebp-40]
>005205E5    jno         005205EC
 005205E7    call        @IntOver
 005205EC    add         ecx,14
>005205EF    jno         005205F6
 005205F1    call        @IntOver
 005205F6    mov         eax,dword ptr [ebp-4]
 005205F9    mov         eax,dword ptr [eax+40]
 005205FC    call        TCanvas.MoveTo
 00520601    mov         edx,dword ptr [ebp-34]
 00520604    add         edx,dword ptr [ebp-24]
>00520607    jno         0052060E
 00520609    call        @IntOver
 0052060E    mov         eax,ebx
 00520610    sub         eax,1
>00520613    jno         0052061A
 00520615    call        @IntOver
 0052061A    imul        eax,dword ptr [ebp-14]
>0052061E    jno         00520625
 00520620    call        @IntOver
 00520625    add         edx,eax
>00520627    jno         0052062E
 00520629    call        @IntOver
 0052062E    mov         ecx,dword ptr [ebp-38]
 00520631    add         ecx,dword ptr [ebp-30]
>00520634    jno         0052063B
 00520636    call        @IntOver
 0052063B    mov         eax,dword ptr [ebp-4]
 0052063E    mov         eax,dword ptr [eax+40]
 00520641    call        TCanvas.LineTo
 00520646    inc         ebx
 00520647    dec         dword ptr [ebp-7C]
>0052064A    jne         00520569
 00520650    mov         eax,dword ptr [ebp-4]
 00520653    cmp         byte ptr [eax+34],0
>00520657    je          005206FE
 0052065D    push        520848;' '
 00520662    lea         edx,[ebp-35C]
 00520668    mov         eax,dword ptr [ebp-54]
 0052066B    call        IntToStr
 00520670    push        dword ptr [ebp-35C]
 00520676    push        520848;' '
 0052067B    lea         eax,[ebp-358]
 00520681    mov         edx,3
 00520686    call        @LStrCatN
 0052068B    mov         edx,dword ptr [ebp-358]
 00520691    mov         eax,dword ptr [ebp-4]
 00520694    mov         eax,dword ptr [eax+40]
 00520697    call        TCanvas.TextWidth
 0052069C    mov         dword ptr [ebp-50],eax
 0052069F    mov         ecx,dword ptr [ebp-38]
 005206A2    add         ecx,dword ptr [ebp-18]
>005206A5    jno         005206AC
 005206A7    call        @IntOver
 005206AC    mov         edx,dword ptr [ebp-34]
 005206AF    add         edx,dword ptr [ebp-50]
>005206B2    jno         005206B9
 005206B4    call        @IntOver
 005206B9    mov         eax,dword ptr [ebp-4]
 005206BC    mov         eax,dword ptr [eax+40]
 005206BF    call        TCanvas.MoveTo
 005206C4    mov         ecx,dword ptr [ebp-54]
 005206C7    add         ecx,1
>005206CA    jno         005206D1
 005206CC    call        @IntOver
 005206D1    imul        ecx,dword ptr [ebp-18]
>005206D5    jno         005206DC
 005206D7    call        @IntOver
 005206DC    add         ecx,dword ptr [ebp-38]
>005206DF    jno         005206E6
 005206E1    call        @IntOver
 005206E6    mov         edx,dword ptr [ebp-34]
 005206E9    add         edx,dword ptr [ebp-50]
>005206EC    jno         005206F3
 005206EE    call        @IntOver
 005206F3    mov         eax,dword ptr [ebp-4]
 005206F6    mov         eax,dword ptr [eax+40]
 005206F9    call        TCanvas.LineTo
 005206FE    xor         eax,eax
 00520700    pop         edx
 00520701    pop         ecx
 00520702    pop         ecx
 00520703    mov         dword ptr fs:[eax],edx
 00520706    push        520750
 0052070B    lea         eax,[ebp-35C]
 00520711    mov         edx,14
 00520716    call        @LStrArrayClr
 0052071B    lea         eax,[ebp-20C]
 00520721    mov         edx,3
 00520726    call        @LStrArrayClr
 0052072B    lea         eax,[ebp-100]
 00520731    mov         edx,7
 00520736    call        @LStrArrayClr
 0052073B    lea         eax,[ebp-6C]
 0052073E    mov         edx,5
 00520743    call        @LStrArrayClr
 00520748    ret
>00520749    jmp         @HandleFinally
>0052074E    jmp         0052070B
 00520750    pop         edi
 00520751    pop         esi
 00520752    pop         ebx
 00520753    mov         esp,ebp
 00520755    pop         ebp
 00520756    ret
end;*}

//00520890
{*function sub_00520890(?:?; ?:?):?;
begin
 00520890    push        ebx
 00520891    push        esi
 00520892    push        edi
 00520893    mov         esi,edx
 00520895    mov         ebx,eax
 00520897    mov         eax,ebx
 00520899    call        0051D370
 0052089E    mov         edi,eax
 005208A0    mov         eax,dword ptr [ebx+50]
 005208A3    cmp         esi,dword ptr [eax-4]
>005208A6    jb          005208AD
 005208A8    call        @BoundErr
 005208AD    mov         eax,dword ptr [eax+esi*4]
 005208B0    sub         esi,1
>005208B3    jno         005208BA
 005208B5    call        @IntOver
 005208BA    mov         edx,dword ptr [ebx+50]
 005208BD    cmp         esi,dword ptr [edx-4]
>005208C0    jb          005208C7
 005208C2    call        @BoundErr
 005208C7    sub         eax,dword ptr [edx+esi*4]
>005208CA    jno         005208D1
 005208CC    call        @IntOver
 005208D1    imul        edi,eax
>005208D4    jno         005208DB
 005208D6    call        @IntOver
 005208DB    call        004BDA2C
 005208E0    push        eax
 005208E1    call        004BD1FC
 005208E6    mov         edx,eax
 005208E8    mov         eax,ebx
 005208EA    pop         ecx
 005208EB    call        00519AF8
 005208F0    add         edi,eax
>005208F2    jno         005208F9
 005208F4    call        @IntOver
 005208F9    mov         eax,edi
 005208FB    pop         edi
 005208FC    pop         esi
 005208FD    pop         ebx
 005208FE    ret
end;*}

end.