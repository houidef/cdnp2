//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _FormExportation;

interface

uses
Forms, Windows,  SysUtils, Classes, ExtCtrls, StdCtrls, FileCtrl, Buttons, uFichierCdn,dialogs;

type
  TFormExportation = class(TForm)
  published
    Panel2:TPanel;//f2D0
    Bevel2:TBevel;//f2D4
    Image1:TImage;//f2D8
    ListBoxPetiteDescription:TListBox;//f2DC
    FileListBox1:TFileListBox;//f2E0
    Label1:TLabel;//f2E4
    ListBoxNomsFichiers:TListBox;//f2E8
    SpeedButton2:TSpeedButton;//f2EC
    SpeedButton1:TSpeedButton;//f2F0
    SpeedButton3:TSpeedButton;//f2F4
    ListBoxNumerosFormats:TListBox;//f2F8
    procedure SpeedButton2Click(Sender:TObject);//005165F0
    procedure FormKeyPress(Sender:TObject; var Key:Char);//005165FC
    procedure BitBtnInformationsClick(Sender:TObject);//00516258
    procedure ListBoxPetiteDescriptionClick(Sender:TObject);//0051600C
    procedure BitBtnExporterClick(Sender:TObject);//00516048
  public
    f2FC:TFichierCdn;//f2FC
    constructor Create(Owner:TComponent; logo:Timage;FichierCdn:TFichierCdn);//00515D00
  end;
  var 
    FormExportation:TFormExportation;
implementation

{$R *.DFM}

//00515D00
constructor TFormExportation.Create(Owner:TComponent; logo:Timage;FichierCdn:TFichierCdn);
var
  renvoieIdentification: function: shortstring; stdcall;
  renvoieNombreFormatsProposes: function: byte;stdcall;
  renvoiePetiteDescription: function(I:integer): shortstring;// stdcall;
  Handle:  THandle;
  I,J:integer;
  x:Pshortstring;
begin//0
  //00515D00
    //00515D51
    inherited Create(Owner);
    Image1.Picture := logo.Picture;;
    f2FC := FichierCdn;
    FileListBox1.Directory := ExtractFilePath(ParamStr(0)) + 'export';
      for I := 1 to FileListBox1.Items.Count do//00515DD2
      begin//3
        //00515DDC
		showmessage(PChar(FileListBox1.Items[I - 1]));
		Handle := LoadLibraryA(PChar(FileListBox1.Items[I - 1]));
        if (Handle <> 0) then 
        if (GetProcAddress(Handle, 'renvoieIdentification') <> nil) then
        begin//4
          //00515E2E
          renvoieIdentification := GetProcAddress(Handle, 'renvoieIdentification');;
          if ( renvoieIdentification= 'Carnet de notes') then
          begin//5
            //00515E5E
            renvoieNombreFormatsProposes := GetProcAddress(Handle, 'renvoieNombreFormatsProposes');
             
              for J := 1 to renvoieNombreFormatsProposes do//00515E7A
              begin//7
                //00515E84
                renvoiePetiteDescription := GetProcAddress(Handle, 'renvoiePetiteDescription');
                ListBoxPetiteDescription.Items.Add(renvoiePetiteDescription(J));
                ListBoxNomsFichiers.Items.Add(FileListBox1.Items[I - 1]);
                ListBoxNumerosFormats.Items.Add(IntToStr(J));
              end;//7
            
          end;//5
        end;//4
        //push ESI
        FreeLibrary(Handle);
    end;//2
end;//0

//0051600C
procedure TFormExportation.ListBoxPetiteDescriptionClick(Sender:TObject);
begin
{*
 0051600C    push        ebx
 0051600D    mov         ebx,eax
 0051600F    mov         eax,dword ptr [ebx+2DC];TFormExportation.ListBoxPetiteDescription:TListBox
 00516015    call        TCustomListBox.GetItemIndex
 0051601A    inc         eax
 0051601B    setne       dl
 0051601E    mov         eax,dword ptr [ebx+2F0];TFormExportation.SpeedButton1:TSpeedButton
 00516024    mov         ecx,dword ptr [eax]
 00516026    call        dword ptr [ecx+5C];TControl.SetEnabled
 00516029    mov         eax,dword ptr [ebx+2DC];TFormExportation.ListBoxPetiteDescription:TListBox
 0051602F    call        TCustomListBox.GetItemIndex
 00516034    inc         eax
 00516035    setne       dl
 00516038    mov         eax,dword ptr [ebx+2F4];TFormExportation.SpeedButton3:TSpeedButton
 0051603E    mov         ecx,dword ptr [eax]
 00516040    call        dword ptr [ecx+5C];TControl.SetEnabled
 00516043    pop         ebx
 00516044    ret
*}
end;

//00516048
procedure TFormExportation.BitBtnExporterClick(Sender:TObject);
begin
{*
 00516048    push        ebp
 00516049    mov         ebp,esp
 0051604B    mov         ecx,5
 00516050    push        0
 00516052    push        0
 00516054    dec         ecx
>00516055    jne         00516050
 00516057    push        ebx
 00516058    push        esi
 00516059    push        edi
 0051605A    mov         ebx,eax
 0051605C    xor         eax,eax
 0051605E    push        ebp
 0051605F    push        5161B1
 00516064    push        dword ptr fs:[eax]
 00516067    mov         dword ptr fs:[eax],esp
 0051606A    lea         edx,[ebp-10]
 0051606D    xor         eax,eax
 0051606F    call        ParamStr
 00516074    mov         eax,dword ptr [ebp-10]
 00516077    lea         edx,[ebp-0C]
 0051607A    call        ExtractFilePath
 0051607F    push        dword ptr [ebp-0C]
 00516082    push        5161C8;'export'
 00516087    push        5161D8;'\'
 0051608C    mov         eax,dword ptr [ebx+2DC];TFormExportation.ListBoxPetiteDescription:TListBox
 00516092    call        TCustomListBox.GetItemIndex
 00516097    mov         edx,eax
 00516099    lea         ecx,[ebp-14]
 0051609C    mov         eax,dword ptr [ebx+2E8];TFormExportation.ListBoxNomsFichiers:TListBox
 005160A2    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 005160A8    mov         esi,dword ptr [eax]
 005160AA    call        dword ptr [esi+0C];TStrings.Get
 005160AD    push        dword ptr [ebp-14]
 005160B0    lea         eax,[ebp-8]
 005160B3    mov         edx,4
 005160B8    call        @LStrCatN
 005160BD    mov         eax,dword ptr [ebp-8]
 005160C0    call        @LStrToPChar
 005160C5    push        eax
 005160C6    call        kernel32.LoadLibraryA
 005160CB    mov         esi,eax
 005160CD    lea         eax,[ebp-24]
 005160D0    mov         edx,esi
 005160D2    call        @VarFromInt
 005160D7    lea         eax,[ebp-24]
 005160DA    mov         edx,dword ptr ds:[6159FC];^gvar_00617404:Variant
 005160E0    call        @VarCmp
>005160E5    je          00516186
 005160EB    push        5161DC;'exporter'
 005160F0    push        esi
 005160F1    call        kernel32.GetProcAddress
 005160F6    test        eax,eax
>005160F8    je          00516168
 005160FA    push        5161DC;'exporter'
 005160FF    push        esi
 00516100    call        kernel32.GetProcAddress
 00516105    mov         dword ptr [ebp-4],eax
 00516108    mov         eax,dword ptr [ebx+2DC];TFormExportation.ListBoxPetiteDescription:TListBox
 0051610E    call        TCustomListBox.GetItemIndex
 00516113    mov         edx,eax
 00516115    lea         ecx,[ebp-28]
 00516118    mov         eax,dword ptr [ebx+2F8];TFormExportation.ListBoxNumerosFormats:TListBox
 0051611E    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 00516124    mov         edi,dword ptr [eax]
 00516126    call        dword ptr [edi+0C];TStrings.Get
 00516129    mov         eax,dword ptr [ebp-28]
 0051612C    call        StrToInt
 00516131    mov         edi,eax
 00516133    mov         eax,edi
 00516135    cmp         eax,0FF
>0051613A    jbe         00516141
 0051613C    call        @BoundErr
 00516141    mov         edx,dword ptr [ebx+2FC];TFormExportation.?f2FC:dword
 00516147    call        dword ptr [ebp-4]
 0051614A    test        al,al
>0051614C    jne         00516180
 0051614E    push        10
 00516150    mov         ecx,5161E8
 00516155    mov         edx,51620C
 0051615A    mov         eax,[00615FEC];^Application:TApplication
 0051615F    mov         eax,dword ptr [eax]
 00516161    call        TApplication.MessageBox
>00516166    jmp         00516180
 00516168    push        10
 0051616A    mov         ecx,5161E8
 0051616F    mov         edx,516228
 00516174    mov         eax,[00615FEC];^Application:TApplication
 00516179    mov         eax,dword ptr [eax]
 0051617B    call        TApplication.MessageBox
 00516180    push        esi
 00516181    call        kernel32.FreeLibrary
 00516186    xor         eax,eax
 00516188    pop         edx
 00516189    pop         ecx
 0051618A    pop         ecx
 0051618B    mov         dword ptr fs:[eax],edx
 0051618E    push        5161B8
 00516193    lea         eax,[ebp-28]
 00516196    call        @LStrClr
 0051619B    lea         eax,[ebp-24]
 0051619E    call        @VarClr
 005161A3    lea         eax,[ebp-14]
 005161A6    mov         edx,4
 005161AB    call        @LStrArrayClr
 005161B0    ret
>005161B1    jmp         @HandleFinally
>005161B6    jmp         00516193
 005161B8    pop         edi
 005161B9    pop         esi
 005161BA    pop         ebx
 005161BB    mov         esp,ebp
 005161BD    pop         ebp
 005161BE    ret
*}
end;

//00516258
procedure TFormExportation.BitBtnInformationsClick(Sender:TObject);
begin
{*
 00516258    push        ebp
 00516259    mov         ebp,esp
 0051625B    add         esp,0FFFFFCDC
 00516261    push        ebx
 00516262    push        esi
 00516263    push        edi
 00516264    xor         ecx,ecx
 00516266    mov         dword ptr [ebp-31C],ecx
 0051626C    mov         dword ptr [ebp-320],ecx
 00516272    mov         dword ptr [ebp-324],ecx
 00516278    mov         dword ptr [ebp-318],ecx
 0051627E    mov         dword ptr [ebp-308],ecx
 00516284    mov         dword ptr [ebp-30C],ecx
 0051628A    mov         dword ptr [ebp-314],ecx
 00516290    mov         dword ptr [ebp-310],ecx
 00516296    mov         dword ptr [ebp-4],ecx
 00516299    mov         esi,eax
 0051629B    xor         eax,eax
 0051629D    push        ebp
 0051629E    push        5164BE
 005162A3    push        dword ptr fs:[eax]
 005162A6    mov         dword ptr fs:[eax],esp
 005162A9    mov         byte ptr [ebp-104],0
 005162B0    mov         byte ptr [ebp-204],0
 005162B7    mov         byte ptr [ebp-304],0
 005162BE    lea         edx,[ebp-310]
 005162C4    xor         eax,eax
 005162C6    call        ParamStr
 005162CB    mov         eax,dword ptr [ebp-310]
 005162D1    lea         edx,[ebp-30C]
 005162D7    call        ExtractFilePath
 005162DC    push        dword ptr [ebp-30C]
 005162E2    push        5164D4;'export'
 005162E7    push        5164E4;'\'
 005162EC    mov         eax,dword ptr [esi+2DC];TFormExportation.ListBoxPetiteDescription:TListBox
 005162F2    call        TCustomListBox.GetItemIndex
 005162F7    mov         edx,eax
 005162F9    lea         ecx,[ebp-314]
 005162FF    mov         eax,dword ptr [esi+2E8];TFormExportation.ListBoxNomsFichiers:TListBox
 00516305    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 0051630B    mov         ebx,dword ptr [eax]
 0051630D    call        dword ptr [ebx+0C];TStrings.Get
 00516310    push        dword ptr [ebp-314]
 00516316    lea         eax,[ebp-308]
 0051631C    mov         edx,4
 00516321    call        @LStrCatN
 00516326    mov         eax,dword ptr [ebp-308]
 0051632C    call        @LStrToPChar
 00516331    push        eax
 00516332    call        kernel32.LoadLibraryA
 00516337    mov         ebx,eax
 00516339    test        ebx,ebx
>0051633B    je          00516498
 00516341    mov         eax,dword ptr [esi+2DC];TFormExportation.ListBoxPetiteDescription:TListBox
 00516347    call        TCustomListBox.GetItemIndex
 0051634C    mov         edx,eax
 0051634E    lea         ecx,[ebp-318]
 00516354    mov         eax,dword ptr [esi+2F8];TFormExportation.ListBoxNumerosFormats:TListBox
 0051635A    mov         eax,dword ptr [eax+1F0];TListBox.FItems:TStrings
 00516360    mov         esi,dword ptr [eax]
 00516362    call        dword ptr [esi+0C];TStrings.Get
 00516365    mov         eax,dword ptr [ebp-318]
 0051636B    call        StrToInt
 00516370    mov         esi,eax
 00516372    push        5164E8;'renvoieGrandeDescription'
 00516377    push        ebx
 00516378    call        kernel32.GetProcAddress
 0051637D    test        eax,eax
>0051637F    je          005163A4
 00516381    push        5164E8;'renvoieGrandeDescription'
 00516386    push        ebx
 00516387    call        kernel32.GetProcAddress
 0051638C    mov         edi,eax
 0051638E    lea         edx,[ebp-104]
 00516394    mov         eax,esi
 00516396    cmp         eax,0FF
>0051639B    jbe         005163A2
 0051639D    call        @BoundErr
 005163A2    call        edi
 005163A4    push        516504;'renvoieCopyright'
 005163A9    push        ebx
 005163AA    call        kernel32.GetProcAddress
 005163AF    test        eax,eax
>005163B1    je          005163C8
 005163B3    push        516504;'renvoieCopyright'
 005163B8    push        ebx
 005163B9    call        kernel32.GetProcAddress
 005163BE    mov         esi,eax
 005163C0    lea         eax,[ebp-204]
 005163C6    call        esi
 005163C8    push        516518;'renvoieVersion'
 005163CD    push        ebx
 005163CE    call        kernel32.GetProcAddress
 005163D3    test        eax,eax
>005163D5    je          005163EC
 005163D7    push        516518;'renvoieVersion'
 005163DC    push        ebx
 005163DD    call        kernel32.GetProcAddress
 005163E2    mov         esi,eax
 005163E4    lea         eax,[ebp-304]
 005163EA    call        esi
 005163EC    push        516530;'Librairie d'exportation pour Carnet de Notes version Personnelle'+#13+#10+#13+#1...
 005163F1    lea         eax,[ebp-31C]
 005163F7    lea         edx,[ebp-104]
 005163FD    call        @LStrFromString
 00516402    push        dword ptr [ebp-31C]
 00516408    push        516590;#13
 0051640D    push        51659C;#10
 00516412    push        516590;#13
 00516417    push        51659C;#10
 0051641C    push        5165A8;'Copyright : '
 00516421    lea         eax,[ebp-320]
 00516427    lea         edx,[ebp-204]
 0051642D    call        @LStrFromString
 00516432    push        dword ptr [ebp-320]
 00516438    push        516590;#13
 0051643D    push        51659C;#10
 00516442    push        516590;#13
 00516447    push        51659C;#10
 0051644C    push        5165C0;'Version : '
 00516451    lea         eax,[ebp-324]
 00516457    lea         edx,[ebp-304]
 0051645D    call        @LStrFromString
 00516462    push        dword ptr [ebp-324]
 00516468    lea         eax,[ebp-4]
 0051646B    mov         edx,0E
 00516470    call        @LStrCatN
 00516475    push        40
 00516477    mov         eax,dword ptr [ebp-4]
 0051647A    call        @LStrToPChar
 0051647F    mov         edx,eax
 00516481    mov         ecx,5165CC
 00516486    mov         eax,[00615FEC];^Application:TApplication
 0051648B    mov         eax,dword ptr [eax]
 0051648D    call        TApplication.MessageBox
 00516492    push        ebx
 00516493    call        kernel32.FreeLibrary
 00516498    xor         eax,eax
 0051649A    pop         edx
 0051649B    pop         ecx
 0051649C    pop         ecx
 0051649D    mov         dword ptr fs:[eax],edx
 005164A0    push        5164C5
 005164A5    lea         eax,[ebp-324]
 005164AB    mov         edx,8
 005164B0    call        @LStrArrayClr
 005164B5    lea         eax,[ebp-4]
 005164B8    call        @LStrClr
 005164BD    ret
>005164BE    jmp         @HandleFinally
>005164C3    jmp         005164A5
 005164C5    pop         edi
 005164C6    pop         esi
 005164C7    pop         ebx
 005164C8    mov         esp,ebp
 005164CA    pop         ebp
 005164CB    ret
*}
end;

//005165F0
procedure TFormExportation.SpeedButton2Click(Sender:TObject);
begin
 ModalResult:=2;
end;

//005165FC
procedure TFormExportation.FormKeyPress(Sender:TObject; var Key:Char);
begin
  if (Key = char($1B)) then 
  ModalResult := 2;
end;

end.