{***************************************
* Version Original V0.01
* Created by HOUIDEF AEK v 12:04 mardi 27 février 2018
***************************************}
unit _FormImprimer;

interface

uses
Forms, Windows,  SysUtils, Classes, ExtCtrls, Buttons, Dialogs, StdCtrls, CheckLst, Tabs, Graphics, UFichierCdn,Unit173,
UImpressionGrilleNotes,Printers,Unit111, _FormConfirmerImpression,UEnregistrement;

type
  TFormImprimer = class(TForm)
  published
    Panel2:TPanel;//f2D0
    Bevel2:TBevel;//f2D4
    Image1:TImage;//f2D8
    SpeedButton1:TSpeedButton;//f2DC
    SpeedButton3:TSpeedButton;//f2E0
    SpeedButton4:TSpeedButton;//f2E4
    SpeedButton5:TSpeedButton;//f2E8
    PrinterSetupDialog1:TPrinterSetupDialog;//f2EC
    Notebook1:TNotebook;//f2F0
    Label1:TLabel;//f2F4
    CheckListBoxPeriodes:TCheckListBox;//f2F8
    Label6:TLabel;//f2FC
    Label7:TLabel;//f300
    Label8:TLabel;//f304
    ComboBoxEnteteGauche:TComboBox;//f308
    ComboBoxEnteteCentre:TComboBox;//f30C
    ComboBoxEnteteDroite:TComboBox;//f310
    CheckBoxEnTeteGauche:TCheckBox;//f314
    CheckBoxEnTeteCentre:TCheckBox;//f318
    CheckBoxEnTeteDroite:TCheckBox;//f31C
    Label5:TLabel;//f320
    Label9:TLabel;//f324
    Label10:TLabel;//f328
    ComboBoxBasdepageGauche:TComboBox;//f32C
    ComboBoxBasdepageCentre:TComboBox;//f330
    ComboBoxBasdepageDroite:TComboBox;//f334
    CheckBoxBasdepageGauche:TCheckBox;//f338
    CheckBoxBasdepageCentre:TCheckBox;//f33C
    CheckBoxBasdepageDroite:TCheckBox;//f340
    TabSet1:TTabSet;//f344
    ComboBox1:TComboBox;//f348
    Label2:TLabel;//f34C
    FontDialog1:TFontDialog;//f350
    SpeedButton2:TSpeedButton;//f354
    Label3:TLabel;//f358
    Bevel1:TBevel;//f35C
    Bevel3:TBevel;//f360
    Panel1:TPanel;//f364
    Label4:TLabel;//f368
    CheckBox1:TCheckBox;//f36C
    procedure ComboBox1Change(Sender:TObject);//00526028
    procedure SpeedButton1Click(Sender:TObject);//00525884
    procedure FormKeyPress(Sender:TObject; var Key:Char);//005262E8
    procedure FormDestroy(Sender:TObject);//005263D0
    procedure SpeedButton2Click(Sender:TObject);//00526304
    procedure BitBtn1Click(Sender:TObject);//005257C4
    procedure BitBtnImprimerClick(Sender:TObject);//005250F4
    procedure BitBtn3Click(Sender:TObject);//005250D0
    procedure FormCreate(Sender:TObject);//005252F0
    procedure CheckListBoxPeriodesClickCheck(Sender:TObject);//00525734
    procedure TabSet1Change(Sender: TObject; NewTab: Integer; var AllowChange: Boolean);//00525450
  public
    f370:TFont;//f370
    f374:TFichierCdn;//f374
    f378:TStringList;//f378
    destructor Destroy; virtual;//0052561C
    constructor Create(Aowner:TComponent; FichierCdn:TFichierCdn; logo:Timage);//00524C1C
   //procedure sub_00525464(?:?);//00525464
    procedure sub_00525794(a:dword);//00525794
    procedure sub_005257AC(a:dword);//005257AC
    procedure sub_0052588C(a:dword; b:dword);//0052588C
    procedure sub_005262DC(a:dword);//005262DC
    procedure sub_005262F8;//005262F8
  end;
var 
  FormImprimer :TFormImprimer; {gvar_00617E04} 
implementation

{$R *.DFM}

//00524C1C
constructor TFormImprimer.Create(Aowner:TComponent; FichierCdn:TFichierCdn; logo:Timage);
var
  I,J:integer;
  lvar_14 : string;
begin//0
  //00524C1C
    //00524C52
    inherited Create(Aowner);
    f374 := FichierCdn{d};
    Image1.Picture := logo.Picture;
    f370 := TFont.Create;
    //sub_004BD7D0(lvar_14);
    f370.Name := lvar_14;
    //sub_004BD79C(f370,lvar_14);
    //f370.Size := EBX;
    Panel1.Color := $E2FFFF;
    Label3.Caption := f370.Name + ' (' + IntToStr(f370.Size) + ')';
    FontDialog1.Font.Name := 'Times New Roman';
    FontDialog1.Font.Size := 9;
    CheckListBoxPeriodes.Items := f374.sub_004BEA4C;
    for I := 0 to CheckListBoxPeriodes.Items.Count-1 do //00524D71
    begin//00524D77
	    J:= f374.sub_004BEAD0(I+1);
        if (J = 0) then//00524DA6
          CheckListBoxPeriodes.Items.Strings[I] := CheckListBoxPeriodes.Items[I] + ' (aucune série de notes)'
        else//00524DE4
          if (J = 1) then//00524DEA
            CheckListBoxPeriodes.Items.Strings[I] := CheckListBoxPeriodes.Items[I] + ' (1 série de notes)'
          else //00524E25
            CheckListBoxPeriodes.Items.Strings[I] := CheckListBoxPeriodes.Items[I] + ' (' + IntToStr(J) + ' séries de notes)';
    end;//3
    ComboBox1.ItemIndex := 0;
    f378 := TStringList.Create;
    //sub_00525464(Self);
    ComboBoxEnteteGauche.Items := f378;
    ComboBoxEnteteCentre.Items := f378;
    ComboBoxEnteteDroite.Items := f378;
    ComboBoxBasdepageGauche.Items := f378;
    ComboBoxBasdepageDroite.Items := f378;
    //sub_004BE92C(f374, lvar_138);
    //ComboBoxEnteteGauche.Caption := lvar_138;
    //f374.sub_004BE8FC(lvar_138);
    //ComboBoxEnteteCentre.Caption := lvar_138;
    //sub_004BE944(f374, lvar_138);
    //ComboBoxEnteteDroite.Caption := lvar_138;
    ComboBoxBasdepageGauche.text := TimeToStr(Time);
    ComboBoxBasdepageDroite.text := DateToStr(Date);  
end;//0


//005250F4
procedure TFormImprimer.BitBtnImprimerClick(Sender:TObject);
var
 F,I:integer;
begin
  //005250F4
  if (ComboBox1.ItemIndex = 0) then
  begin//1
    //00525109
      F := 0;
      for I := 0 to CheckListBoxPeriodes.Items.Count - 1 do //0052512C
      begin//0052512F
        if (CheckListBoxPeriodes.Checked[I] ) then 
		begin
        F := F+1;
		end;
      end;//3
    
    if (F = 0) then
    begin//00525154
      MessageBoxA(0, 'Aucune période sélectionnée !', 'Carnet de Notes version Personnelle', 16);
      Exit;
    end;//2
    sub_00525794(F);
  end;
  if (ComboBox1.ItemIndex  = 1) then
  begin//00525183
    F := 0;
      for I := 0 to CheckListBoxPeriodes.Items.Count - 1 do//005251A9
        if (CheckListBoxPeriodes.Checked[I]) then 
			F := F+1;

    
    if (F = 0) then //005251CE
      MessageBoxA(0, 'Aucune période sélectionnée !', 'Carnet de Notes version Personnelle', 16)
	else 
      sub_005257AC(F);
  end;//1
  
  if (ComboBox1.ItemIndex = 2) then
  begin//1
    //005251FF
    F:=0;
      for I := 0 to CheckListBoxPeriodes.Items.Count - 1 do//00525222
        if (CheckListBoxPeriodes.Checked[I]) then //00525225
			F := F + 1;//EBP

   
    if (F = 0) then//0052524A
      MessageBoxA(0, 'Aucune période sélectionnée !', 'Carnet de Notes version Personnelle', 16)
    else 
      sub_005262DC(F);
  end;//1
  if (ComboBox1.ItemIndex = 3) then
  begin//1//00525285
    //sub_005262F8;
  end;//1

  if (CheckBox1.Checked ) then //0052529E
    Close;
end;

//005250D0
procedure TFormImprimer.BitBtn3Click(Sender:TObject);
begin//0
  //005250D0
  if (Printer.Printers.Count > 0) then//005250E6
     PrinterSetupDialog1.Execute;

end;//0

//005252F0
procedure TFormImprimer.FormCreate(Sender:TObject);
var
  buf:string;
  I:integer;
begin//0
  //005252F0
    //0052530F
    CheckBox1.Checked := sub_004BD904;
    TabSet1.Tabs := Notebook1.Pages;
    //EDI := ComboBoxBasdepageCentre;
    if (sub_00498A40) then
    begin//2
      //0052534A
        for I := 1 to sub_00498B20 do //00525355
        begin//0052535C
          sub_004986C0(I, buf);
          ComboBoxBasdepageCentre.Items.Add(buf);
        end;//4
    end//2
    else//0052537D
      ComboBoxBasdepageCentre.Items.Add('VERSION NON ENREGISTREE');

    ComboBoxBasdepageCentre.ItemIndex := 0;
    sub_004BD3B4(buf); //basDePageGauche
    ComboBoxBasdepageGauche.Text := buf;
    sub_004BD3FC(buf); //basDePageDroite
    ComboBoxBasdepageDroite.Text := buf;
    sub_004BD444(buf); //enTeteGauche
    ComboBoxEnteteGauche.Text := buf;
    sub_004BD48C(buf); //enTeteGauche
    ComboBoxEnteteCentre.Text := buf;
    sub_004BD4D4(buf);
    ComboBoxEnteteDroite.Text := buf;
end;//0


//00525450
procedure TFormImprimer.TabSet1Change(Sender: TObject; NewTab: Integer;var AllowChange: Boolean);
begin
  Notebook1.PageIndex := NewTab;
end;

//00525464
{*procedure sub_00525464(?:?);
begin
 00525464    push        ebp
 00525465    mov         ebp,esp
 00525467    add         esp,0FFFFFEE0
 0052546D    push        ebx
 0052546E    push        esi
 0052546F    xor         edx,edx
 00525471    mov         dword ptr [ebp-120],edx
 00525477    mov         dword ptr [ebp-11C],edx
 0052547D    mov         dword ptr [ebp-118],edx
 00525483    mov         dword ptr [ebp-114],edx
 00525489    mov         dword ptr [ebp-110],edx
 0052548F    mov         dword ptr [ebp-10C],edx
 00525495    mov         dword ptr [ebp-8],edx
 00525498    xor         edx,edx
 0052549A    push        ebp
 0052549B    push        52560E
 005254A0    push        dword ptr fs:[edx]
 005254A3    mov         dword ptr fs:[edx],esp
 005254A6    mov         ebx,dword ptr [eax+378]
 005254AC    mov         esi,dword ptr [eax+374]
 005254B2    lea         edx,[ebp-108]
 005254B8    mov         eax,esi
 005254BA    call        004BE8FC
 005254BF    lea         edx,[ebp-108]
 005254C5    lea         eax,[ebp-8]
 005254C8    call        @LStrFromString
 005254CD    mov         edx,dword ptr [ebp-8]
 005254D0    mov         eax,ebx
 005254D2    mov         ecx,dword ptr [eax]
 005254D4    call        dword ptr [ecx+34]
 005254D7    lea         edx,[ebp-108]
 005254DD    mov         eax,esi
 005254DF    call        004BE92C
 005254E4    lea         edx,[ebp-108]
 005254EA    lea         eax,[ebp-10C]
 005254F0    call        @LStrFromString
 005254F5    mov         edx,dword ptr [ebp-10C]
 005254FB    mov         eax,ebx
 005254FD    mov         ecx,dword ptr [eax]
 005254FF    call        dword ptr [ecx+34]
 00525502    lea         edx,[ebp-108]
 00525508    mov         eax,esi
 0052550A    call        004C3908
 0052550F    lea         edx,[ebp-108]
 00525515    lea         eax,[ebp-110]
 0052551B    call        @LStrFromString
 00525520    mov         edx,dword ptr [ebp-110]
 00525526    mov         eax,ebx
 00525528    mov         ecx,dword ptr [eax]
 0052552A    call        dword ptr [ecx+34]
 0052552D    lea         edx,[ebp-108]
 00525533    mov         eax,esi
 00525535    call        004BE944
 0052553A    lea         edx,[ebp-108]
 00525540    lea         eax,[ebp-114]
 00525546    call        @LStrFromString
 0052554B    mov         edx,dword ptr [ebp-114]
 00525551    mov         eax,ebx
 00525553    mov         ecx,dword ptr [eax]
 00525555    call        dword ptr [ecx+34]
 00525558    mov         eax,esi
 0052555A    call        004BE9E0
 0052555F    test        al,al
>00525561    jbe         005255A0
 00525563    mov         byte ptr [ebp-2],al
 00525566    mov         byte ptr [ebp-1],1
 0052556A    lea         ecx,[ebp-108]
 00525570    mov         dl,byte ptr [ebp-1]
 00525573    mov         eax,esi
 00525575    call        004BE9EC
 0052557A    lea         edx,[ebp-108]
 00525580    lea         eax,[ebp-118]
 00525586    call        @LStrFromString
 0052558B    mov         edx,dword ptr [ebp-118]
 00525591    mov         eax,ebx
 00525593    mov         ecx,dword ptr [eax]
 00525595    call        dword ptr [ecx+34]
 00525598    inc         byte ptr [ebp-1]
 0052559B    dec         byte ptr [ebp-2]
>0052559E    jne         0052556A
 005255A0    call        Date
 005255A5    add         esp,0FFFFFFF8
 005255A8    fstp        qword ptr [esp]
 005255AB    wait
 005255AC    lea         eax,[ebp-11C]
 005255B2    call        DateToStr
 005255B7    mov         edx,dword ptr [ebp-11C]
 005255BD    mov         eax,ebx
 005255BF    mov         ecx,dword ptr [eax]
 005255C1    call        dword ptr [ecx+34]
 005255C4    call        Time
 005255C9    add         esp,0FFFFFFF8
 005255CC    fstp        qword ptr [esp]
 005255CF    wait
 005255D0    lea         eax,[ebp-120]
 005255D6    call        TimeToStr
 005255DB    mov         edx,dword ptr [ebp-120]
 005255E1    mov         eax,ebx
 005255E3    mov         ecx,dword ptr [eax]
 005255E5    call        dword ptr [ecx+34]
 005255E8    xor         eax,eax
 005255EA    pop         edx
 005255EB    pop         ecx
 005255EC    pop         ecx
 005255ED    mov         dword ptr fs:[eax],edx
 005255F0    push        525615
 005255F5    lea         eax,[ebp-120]
 005255FB    mov         edx,6
 00525600    call        @LStrArrayClr
 00525605    lea         eax,[ebp-8]
 00525608    call        @LStrClr
 0052560D    ret
>0052560E    jmp         @HandleFinally
>00525613    jmp         005255F5
 00525615    pop         esi
 00525616    pop         ebx
 00525617    mov         esp,ebp
 00525619    pop         ebp
 0052561A    ret
end;*}

//0052561C
destructor TFormImprimer.Destroy;
begin
 inherited Destroy;
{*
 0052561C    push        ebp
 0052561D    mov         ebp,esp
 0052561F    xor         ecx,ecx
 00525621    push        ecx
 00525622    push        ecx
 00525623    push        ecx
 00525624    push        ecx
 00525625    push        ecx
 00525626    push        ecx
 00525627    push        ebx
 00525628    push        esi
 00525629    call        @BeforeDestruction
 0052562E    mov         ebx,edx
 00525630    mov         esi,eax
 00525632    xor         eax,eax
 00525634    push        ebp
 00525635    push        52571C
 0052563A    push        dword ptr fs:[eax]
 0052563D    mov         dword ptr fs:[eax],esp
 00525640    lea         edx,[ebp-4]
 00525643    mov         eax,dword ptr [esi+32C];TFormImprimer.ComboBoxBasdepageGauche:TComboBox
 00525649    call        TControl.GetText
 0052564E    mov         eax,dword ptr [ebp-4]
 00525651    call        004BD51C
 00525656    lea         edx,[ebp-8]
 00525659    mov         eax,dword ptr [esi+334];TFormImprimer.ComboBoxBasdepageDroite:TComboBox
 0052565F    call        TControl.GetText
 00525664    mov         eax,dword ptr [ebp-8]
 00525667    call        004BD59C
 0052566C    lea         edx,[ebp-0C]
 0052566F    mov         eax,dword ptr [esi+308];TFormImprimer.ComboBoxEnteteGauche:TComboBox
 00525675    call        TControl.GetText
 0052567A    mov         eax,dword ptr [ebp-0C]
 0052567D    call        004BD61C
 00525682    lea         edx,[ebp-10]
 00525685    mov         eax,dword ptr [esi+30C];TFormImprimer.ComboBoxEnteteCentre:TComboBox
 0052568B    call        TControl.GetText
 00525690    mov         eax,dword ptr [ebp-10]
 00525693    call        004BD69C
 00525698    lea         edx,[ebp-14]
 0052569B    mov         eax,dword ptr [esi+310];TFormImprimer.ComboBoxEnteteDroite:TComboBox
 005256A1    call        TControl.GetText
 005256A6    mov         eax,dword ptr [ebp-14]
 005256A9    call        004BD71C
 005256AE    lea         edx,[ebp-18]
 005256B1    mov         eax,dword ptr [esi+370];TFormImprimer.?f370:TFont
 005256B7    call        TFont.GetName
 005256BC    mov         eax,dword ptr [ebp-18]
 005256BF    call        004BD858
 005256C4    mov         eax,dword ptr [esi+370];TFormImprimer.?f370:TFont
 005256CA    call        TFont.GetSize
 005256CF    cmp         eax,0FF
>005256D4    jbe         005256DB
 005256D6    call        @BoundErr
 005256DB    call        004BD82C
 005256E0    mov         dl,1
 005256E2    mov         eax,dword ptr [esi+378];TFormImprimer.?f378:dword
 005256E8    mov         ecx,dword ptr [eax]
 005256EA    call        dword ptr [ecx-4]
 005256ED    mov         edx,ebx
 005256EF    and         dl,0FC
 005256F2    mov         eax,esi
 005256F4    call        TCustomForm.Destroy
 005256F9    xor         eax,eax
 005256FB    pop         edx
 005256FC    pop         ecx
 005256FD    pop         ecx
 005256FE    mov         dword ptr fs:[eax],edx
 00525701    push        525723
 00525706    lea         eax,[ebp-18]
 00525709    call        @LStrClr
 0052570E    lea         eax,[ebp-14]
 00525711    mov         edx,5
 00525716    call        @LStrArrayClr
 0052571B    ret
>0052571C    jmp         @HandleFinally
>00525721    jmp         00525706
 00525723    test        bl,bl
>00525725    jle         0052572E
 00525727    mov         eax,esi
 00525729    call        @ClassDestroy
 0052572E    pop         esi
 0052572F    pop         ebx
 00525730    mov         esp,ebp
 00525732    pop         ebp
 00525733    ret
*}
end;

//00525734
procedure TFormImprimer.CheckListBoxPeriodesClickCheck;
begin
{*
 00525734    push        ebx
 00525735    push        esi
 00525736    push        edi
 00525737    mov         edi,eax
 00525739    mov         eax,dword ptr [edi+2F8];TFormImprimer.CheckListBoxPeriodes:TCheckListBox
 0052573F    mov         eax,dword ptr [eax+1F0];TCheckListBox.FItems:TStrings
 00525745    mov         edx,dword ptr [eax]
 00525747    call        dword ptr [edx+14];TStrings.GetCount
 0052574A    mov         esi,eax
 0052574C    sub         esi,1
>0052574F    jno         00525756
 00525751    call        @IntOver
 00525756    test        esi,esi
>00525758    jl          00525790
 0052575A    inc         esi
 0052575B    xor         ebx,ebx
 0052575D    mov         eax,dword ptr [edi+2F8];TFormImprimer.CheckListBoxPeriodes:TCheckListBox
 00525763    call        TCustomListBox.GetItemIndex
 00525768    cmp         ebx,eax
>0052576A    je          0052578C
 0052576C    mov         eax,dword ptr [edi+2F8];TFormImprimer.CheckListBoxPeriodes:TCheckListBox
 00525772    mov         edx,ebx
 00525774    call        TCheckListBox.GetChecked
 00525779    test        al,al
>0052577B    je          0052578C
 0052577D    mov         eax,dword ptr [edi+2F8];TFormImprimer.CheckListBoxPeriodes:TCheckListBox
 00525783    xor         ecx,ecx
 00525785    mov         edx,ebx
 00525787    call        TCheckListBox.SetChecked
 0052578C    inc         ebx
 0052578D    dec         esi
>0052578E    jne         0052575D
 00525790    pop         edi
 00525791    pop         esi
 00525792    pop         ebx
 00525793    ret
*}
end;

//00525794
procedure TFormImprimer.sub_00525794(a:dword);
begin//0
  //00525794
  sub_0052588C(0, a);
end;//0



//005257AC
procedure TFormImprimer.sub_005257AC(a:dword);
begin//0
  //005257AC
  sub_0052588C(1, a);
end;//0


//005257C4
procedure TFormImprimer.BitBtn1Click(Sender:TObject);
begin
{*
 005257C4    push        ebx
 005257C5    push        esi
 005257C6    mov         ebx,eax
 005257C8    mov         esi,dword ptr ds:[615EFC];^gvar_00617D64:TFormOptions
 005257CE    mov         eax,dword ptr [ebx+2D8];TFormImprimer.Image1:TImage
 005257D4    push        eax
 005257D5    mov         ecx,ebx
 005257D7    mov         dl,1
 005257D9    mov         eax,[00502EAC];TFormOptions
 005257DE    call        TFormOptions.Create;TFormOptions.Create
 005257E3    mov         dword ptr [esi],eax
 005257E5    mov         eax,dword ptr [esi]
 005257E7    mov         edx,dword ptr [eax+2F4]
 005257ED    mov         eax,dword ptr [esi]
 005257EF    mov         eax,dword ptr [eax+2DC]
 005257F5    call        TPageControl.SetActivePage
 005257FA    mov         eax,dword ptr [ebx+348];TFormImprimer.ComboBox1:TComboBox
 00525800    call        TCustomComboBox.GetItemIndex
 00525805    sub         eax,1
>00525808    jb          00525814
>0052580A    je          0052582B
 0052580C    dec         eax
>0052580D    je          00525842
 0052580F    dec         eax
>00525810    je          00525859
>00525812    jmp         0052586E
 00525814    mov         eax,dword ptr [esi]
 00525816    mov         edx,dword ptr [eax+438]
 0052581C    mov         eax,dword ptr [esi]
 0052581E    mov         eax,dword ptr [eax+434]
 00525824    call        TPageControl.SetActivePage
>00525829    jmp         0052586E
 0052582B    mov         eax,dword ptr [esi]
 0052582D    mov         edx,dword ptr [eax+43C]
 00525833    mov         eax,dword ptr [esi]
 00525835    mov         eax,dword ptr [eax+434]
 0052583B    call        TPageControl.SetActivePage
>00525840    jmp         0052586E
 00525842    mov         eax,dword ptr [esi]
 00525844    mov         edx,dword ptr [eax+558]
 0052584A    mov         eax,dword ptr [esi]
 0052584C    mov         eax,dword ptr [eax+434]
 00525852    call        TPageControl.SetActivePage
>00525857    jmp         0052586E
 00525859    mov         eax,dword ptr [esi]
 0052585B    mov         edx,dword ptr [eax+52C]
 00525861    mov         eax,dword ptr [esi]
 00525863    mov         eax,dword ptr [eax+434]
 00525869    call        TPageControl.SetActivePage
 0052586E    mov         eax,dword ptr [esi]
 00525870    mov         edx,dword ptr [eax]
 00525872    call        dword ptr [edx+0D8]
 00525878    mov         eax,dword ptr [esi]
 0052587A    mov         dl,1
 0052587C    mov         ecx,dword ptr [eax]
 0052587E    call        dword ptr [ecx-4]
 00525881    pop         esi
 00525882    pop         ebx
 00525883    ret
*}
end;

//00525884
procedure TFormImprimer.SpeedButton1Click(Sender:TObject);
begin
 close;
end;

//0052588C
procedure TFormImprimer.sub_0052588C(a:dword; b:dword);
var
 Page1 : TEnteteBasDePage;
 Page2 : TEnteteBasDePage;
 lvar_18,lvar_1C,lvar_20,lvar_24 : TImpressionGrilleNotes;
begin//0
 //0052588C
    //005258BE
    if (a = 0) then
    begin//005258D6
      if (f374.sub_004BEAD0(b) = 0) then
      begin//005258E8
        MessageBoxA(0, 'Aucune série de notes pour cette période !', 'Carnet de Notes version Personnelle', $10{16});
        Exit;
      end;//3
    end;//2
    Page1 := TEnteteBasDePage.Create(TBlocTexte.Create(ComboBoxEnteteGauche.Text,CheckBoxEnTeteGauche.Checked),
								     TBlocTexte.Create(ComboBoxEnteteCentre.Text,CheckBoxEnTeteCentre.Checked),
								     TBlocTexte.Create(ComboBoxEnteteDroite.Text,CheckBoxEnTeteDroite.Checked));
    Page2 := TEnteteBasDePage.Create(TBlocTexte.Create(ComboBoxBasdepageGauche.Text,CheckBoxBasdepageGauche.Checked),
									 TBlocTexte.Create(ComboBoxBasdepageCentre.Text,CheckBoxBasdepageCentre.Checked), 
								     TBlocTexte.Create(ComboBoxBasdepageDroite.Text,CheckBoxBasdepageDroite.Checked));
    case a of
      0://00525A5C        
        lvar_18 := TImpressionGrilleNotes.Create(f374, Printer.Canvas,Page1 , Page2, b, sub_004BAA88(0), sub_004BAEC4,0{?????});
      (*1://00525AA1
        lvar_1C := TImpressionGrilleBilan.Create(f374, Printer.Canvas,Page1 , Page2, b, sub_004BAA88(1), sub_004BAF34,0{?????});

      2://00525AE3
        lvar_20 := TImpressionAppreciation.Create(f374, Printer.Canvas,Page1 , Page2, b, sub_004BC228);

      3://00525B1D        
        lvar_24 := TImpressionGrilleVierge.Create(f374, Printer.Canvas,Page1 , Page2, sub_004BAA88(2), sub_004BC01C, sub_004BC01C);*)

    end;//2

    {gvar_00617DF4}FormConfirmerImpression := TFormConfirmerImpression.Create(Self);
    FormConfirmerImpression.f30C := 1;
    FormConfirmerImpression.f314 := 1;
    case a of
      0://00525BAC
        FormConfirmerImpression.f310 := 1;//lvar_18.sub_00519A90;
      1://00525BC4
        FormConfirmerImpression.f310 := lvar_1C.sub_00519A90;
      2://00525BDC
        FormConfirmerImpression.f310 := lvar_20.sub_00519A90;
      3://00525BF4
        FormConfirmerImpression.f310 := lvar_24.sub_00519A90;
    end;//2
    FormConfirmerImpression.f318 := FormConfirmerImpression.f310;
    if (FormConfirmerImpression.f310 = 0) then //00525C36
      MessageBoxA(0, 'Impossible d''imprimer. La largeur d''une colonne ne tient pas sur une page !'+#13+#10+'Si vous êtes en mode portrait, essayez le mode paysage.', 'Carnet de Notes version Personnelle', $10{16})
    else
    begin//00525C4E
      if (FormConfirmerImpression.f310 = -1) then //00525C57
        MessageBoxA(0, 'Impossible d''imprimer. La hauteur d''une colonne ne tient pas sur une page !'+#13+#10+'Si vous êtes en mode paysage, essayez le mode portrait et/ou une fonte plus petite.', 'Carnet de Notes version Personnelle', $10{16})
      else
      begin//00525C6F
        FormConfirmerImpression.ShowModal;
        if (FormConfirmerImpression.ModalResult = 1) then
        begin//00525C92
          case a of
            0://00525CAF
              lvar_18.sub_0051BD4C(FormConfirmerImpression.f314, FormConfirmerImpression.f318, FormConfirmerImpression.f31C, FormConfirmerImpression.RadioGroupParite.ItemIndex, FormConfirmerImpression.CheckBoxOrdreInverse.Checked);
            {1://00525D0E
              lvar_1C.sub_0051CAF8(FormConfirmerImpression.f314, FormConfirmerImpression.f318, FormConfirmerImpression.f31C, FormConfirmerImpression.RadioGroupParite.ItemIndex, FormConfirmerImpression.CheckBoxOrdreInverse.Checked);
            2://00525D6D
              lvar_20.sub_00521464(FormConfirmerImpression.f314, FormConfirmerImpression.f318, FormConfirmerImpression.f31C, FormConfirmerImpression.RadioGroupParite.FItemIndex, FormConfirmerImpression.CheckBoxOrdreInverse.Checked);
            3://00525DC9
              lvar_24.sub_00524130(FormConfirmerImpression.f314, FormConfirmerImpression.f318, FormConfirmerImpression.f31C, FormConfirmerImpression.RadioGroupParite.ItemIndex, FormConfirmerImpression.CheckBoxOrdreInverse.Checked);
          }end;//5
        end;//4
      end;//3
    end;//2
    FormConfirmerImpression.Destroy;
end;

//00526028
procedure TFormImprimer.ComboBox1Change;
begin
{*
 00526028    push        ebp
 00526029    mov         ebp,esp
 0052602B    xor         ecx,ecx
 0052602D    push        ecx
 0052602E    push        ecx
 0052602F    push        ecx
 00526030    push        ecx
 00526031    push        ecx
 00526032    push        ecx
 00526033    push        ecx
 00526034    push        ecx
 00526035    push        ebx
 00526036    push        esi
 00526037    push        edi
 00526038    mov         ebx,eax
 0052603A    xor         eax,eax
 0052603C    push        ebp
 0052603D    push        52624F
 00526042    push        dword ptr fs:[eax]
 00526045    mov         dword ptr fs:[eax],esp
 00526048    mov         eax,dword ptr [ebx+348];TFormImprimer.ComboBox1:TComboBox
 0052604E    call        TCustomComboBox.GetItemIndex
 00526053    sub         eax,1
>00526056    jb          00526071
>00526058    je          005261C6
 0052605E    dec         eax
>0052605F    je          00526207
 00526065    dec         eax
>00526066    je          00526223
>0052606C    jmp         00526234
 00526071    mov         eax,dword ptr [ebx+374];TFormImprimer.?f374:dword
 00526077    mov         dword ptr [ebp-8],eax
 0052607A    mov         eax,dword ptr [ebp-8]
 0052607D    call        004BEA4C
 00526082    mov         edx,eax
 00526084    mov         eax,dword ptr [ebx+2F8];TFormImprimer.CheckListBoxPeriodes:TCheckListBox
 0052608A    call        TCustomListBox.SetItems
 0052608F    mov         eax,dword ptr [ebx+2F8];TFormImprimer.CheckListBoxPeriodes:TCheckListBox
 00526095    mov         eax,dword ptr [eax+1F0];TCheckListBox.FItems:TStrings
 0052609B    mov         edx,dword ptr [eax]
 0052609D    call        dword ptr [edx+14];TStrings.GetCount
 005260A0    sub         eax,1
>005260A3    jno         005260AA
 005260A5    call        @IntOver
 005260AA    test        eax,eax
>005260AC    jl          00526234
 005260B2    inc         eax
 005260B3    mov         dword ptr [ebp-0C],eax
 005260B6    xor         esi,esi
 005260B8    mov         edx,esi
 005260BA    add         edx,1
>005260BD    jno         005260C4
 005260BF    call        @IntOver
 005260C4    cmp         edx,0FF
>005260CA    jbe         005260D1
 005260CC    call        @BoundErr
 005260D1    mov         eax,dword ptr [ebp-8]
 005260D4    call        004BEAD0
 005260D9    and         eax,0FF
 005260DE    mov         dword ptr [ebp-4],eax
 005260E1    cmp         dword ptr [ebp-4],0
>005260E5    jne         00526125
 005260E7    lea         ecx,[ebp-10]
 005260EA    mov         eax,dword ptr [ebx+2F8];TFormImprimer.CheckListBoxPeriodes:TCheckListBox
 005260F0    mov         eax,dword ptr [eax+1F0];TCheckListBox.FItems:TStrings
 005260F6    mov         edx,esi
 005260F8    mov         edi,dword ptr [eax]
 005260FA    call        dword ptr [edi+0C];TStrings.Get
 005260FD    lea         eax,[ebp-10]
 00526100    mov         edx,526268;' (aucune série de notes)'
 00526105    call        @LStrCat
 0052610A    mov         ecx,dword ptr [ebp-10]
 0052610D    mov         eax,dword ptr [ebx+2F8];TFormImprimer.CheckListBoxPeriodes:TCheckListBox
 00526113    mov         eax,dword ptr [eax+1F0];TCheckListBox.FItems:TStrings
 00526119    mov         edx,esi
 0052611B    mov         edi,dword ptr [eax]
 0052611D    call        dword ptr [edi+20];TStrings.Put
>00526120    jmp         005261BA
 00526125    cmp         dword ptr [ebp-4],1
>00526129    jne         00526166
 0052612B    lea         ecx,[ebp-14]
 0052612E    mov         eax,dword ptr [ebx+2F8];TFormImprimer.CheckListBoxPeriodes:TCheckListBox
 00526134    mov         eax,dword ptr [eax+1F0];TCheckListBox.FItems:TStrings
 0052613A    mov         edx,esi
 0052613C    mov         edi,dword ptr [eax]
 0052613E    call        dword ptr [edi+0C];TStrings.Get
 00526141    lea         eax,[ebp-14]
 00526144    mov         edx,52628C;' (1 série de notes)'
 00526149    call        @LStrCat
 0052614E    mov         ecx,dword ptr [ebp-14]
 00526151    mov         eax,dword ptr [ebx+2F8];TFormImprimer.CheckListBoxPeriodes:TCheckListBox
 00526157    mov         eax,dword ptr [eax+1F0];TCheckListBox.FItems:TStrings
 0052615D    mov         edx,esi
 0052615F    mov         edi,dword ptr [eax]
 00526161    call        dword ptr [edi+20];TStrings.Put
>00526164    jmp         005261BA
 00526166    lea         ecx,[ebp-1C]
 00526169    mov         eax,dword ptr [ebx+2F8];TFormImprimer.CheckListBoxPeriodes:TCheckListBox
 0052616F    mov         eax,dword ptr [eax+1F0];TCheckListBox.FItems:TStrings
 00526175    mov         edx,esi
 00526177    mov         edi,dword ptr [eax]
 00526179    call        dword ptr [edi+0C];TStrings.Get
 0052617C    push        dword ptr [ebp-1C]
 0052617F    push        5262A8;' ('
 00526184    lea         edx,[ebp-20]
 00526187    mov         eax,dword ptr [ebp-4]
 0052618A    call        IntToStr
 0052618F    push        dword ptr [ebp-20]
 00526192    push        5262B4;' séries de notes)'
 00526197    lea         eax,[ebp-18]
 0052619A    mov         edx,4
 0052619F    call        @LStrCatN
 005261A4    mov         ecx,dword ptr [ebp-18]
 005261A7    mov         eax,dword ptr [ebx+2F8];TFormImprimer.CheckListBoxPeriodes:TCheckListBox
 005261AD    mov         eax,dword ptr [eax+1F0];TCheckListBox.FItems:TStrings
 005261B3    mov         edx,esi
 005261B5    mov         edi,dword ptr [eax]
 005261B7    call        dword ptr [edi+20];TStrings.Put
 005261BA    inc         esi
 005261BB    dec         dword ptr [ebp-0C]
>005261BE    jne         005260B8
>005261C4    jmp         00526234
 005261C6    mov         eax,dword ptr [ebx+2F8];TFormImprimer.CheckListBoxPeriodes:TCheckListBox
 005261CC    mov         eax,dword ptr [eax+1F0];TCheckListBox.FItems:TStrings
 005261D2    mov         edx,dword ptr [eax]
 005261D4    call        dword ptr [edx+40];TStrings.Clear
 005261D7    mov         eax,dword ptr [ebx+374];TFormImprimer.?f374:dword
 005261DD    call        004BEA4C
 005261E2    mov         edx,eax
 005261E4    mov         eax,dword ptr [ebx+2F8];TFormImprimer.CheckListBoxPeriodes:TCheckListBox
 005261EA    call        TCustomListBox.SetItems
 005261EF    mov         eax,dword ptr [ebx+2F8];TFormImprimer.CheckListBoxPeriodes:TCheckListBox
 005261F5    mov         eax,dword ptr [eax+1F0];TCheckListBox.FItems:TStrings
 005261FB    mov         edx,5262D0;'Sur l'année'
 00526200    mov         ecx,dword ptr [eax]
 00526202    call        dword ptr [ecx+34];TStrings.Add
>00526205    jmp         00526234
 00526207    mov         esi,dword ptr [ebx+374];TFormImprimer.?f374:dword
 0052620D    mov         eax,esi
 0052620F    call        004BEA4C
 00526214    mov         edx,eax
 00526216    mov         eax,dword ptr [ebx+2F8];TFormImprimer.CheckListBoxPeriodes:TCheckListBox
 0052621C    call        TCustomListBox.SetItems
>00526221    jmp         00526234
 00526223    mov         eax,dword ptr [ebx+2F8];TFormImprimer.CheckListBoxPeriodes:TCheckListBox
 00526229    mov         eax,dword ptr [eax+1F0];TCheckListBox.FItems:TStrings
 0052622F    mov         edx,dword ptr [eax]
 00526231    call        dword ptr [edx+40];TStrings.Clear
 00526234    xor         eax,eax
 00526236    pop         edx
 00526237    pop         ecx
 00526238    pop         ecx
 00526239    mov         dword ptr fs:[eax],edx
 0052623C    push        526256
 00526241    lea         eax,[ebp-20]
 00526244    mov         edx,5
 00526249    call        @LStrArrayClr
 0052624E    ret
>0052624F    jmp         @HandleFinally
>00526254    jmp         00526241
 00526256    pop         edi
 00526257    pop         esi
 00526258    pop         ebx
 00526259    mov         esp,ebp
 0052625B    pop         ebp
 0052625C    ret
*}
end;

//005262DC
procedure TFormImprimer.sub_005262DC(a:dword);
begin//005262DC
  sub_0052588C(2, a);
end;//0


//005262E8
procedure TFormImprimer.FormKeyPress(Sender:TObject; var Key:Char);
begin//0
  //005262E8
  if (Key = char($1B)) then 
  ModalResult := 2;
end;//0


//005262F8
procedure TFormImprimer.sub_005262F8;
begin
{*
 005262F8    mov         cl,1
 005262FA    mov         dl,3
 005262FC    call        0052588C
 00526301    ret
*}
end;

//00526304
procedure TFormImprimer.SpeedButton2Click(Sender:TObject);
begin
{*
 00526304    push        ebp
 00526305    mov         ebp,esp
 00526307    push        0
 00526309    push        0
 0052630B    push        0
 0052630D    push        ebx
 0052630E    mov         ebx,eax
 00526310    xor         eax,eax
 00526312    push        ebp
 00526313    push        5263AB
 00526318    push        dword ptr fs:[eax]
 0052631B    mov         dword ptr fs:[eax],esp
 0052631E    mov         eax,dword ptr [ebx+350];TFormImprimer.FontDialog1:TFontDialog
 00526324    mov         edx,dword ptr [eax]
 00526326    call        dword ptr [edx+3C];TFontDialog.Execute
 00526329    test        al,al
>0052632B    je          0052633C
 0052632D    mov         eax,dword ptr [ebx+350];TFormImprimer.FontDialog1:TFontDialog
 00526333    mov         eax,dword ptr [eax+50];TFontDialog.Font:TFont
 00526336    mov         dword ptr [ebx+370],eax;TFormImprimer.?f370:TFont
 0052633C    lea         edx,[ebp-8]
 0052633F    mov         eax,dword ptr [ebx+370];TFormImprimer.?f370:TFont
 00526345    call        TFont.GetName
 0052634A    push        dword ptr [ebp-8]
 0052634D    push        5263C0;' ('
 00526352    mov         eax,dword ptr [ebx+370];TFormImprimer.?f370:TFont
 00526358    call        TFont.GetSize
 0052635D    lea         edx,[ebp-0C]
 00526360    call        IntToStr
 00526365    push        dword ptr [ebp-0C]
 00526368    push        5263CC;')'
 0052636D    lea         eax,[ebp-4]
 00526370    mov         edx,4
 00526375    call        @LStrCatN
 0052637A    mov         edx,dword ptr [ebp-4]
 0052637D    mov         eax,dword ptr [ebx+358];TFormImprimer.Label3:TLabel
 00526383    call        TControl.SetText
 00526388    xor         eax,eax
 0052638A    pop         edx
 0052638B    pop         ecx
 0052638C    pop         ecx
 0052638D    mov         dword ptr fs:[eax],edx
 00526390    push        5263B2
 00526395    lea         eax,[ebp-0C]
 00526398    call        @LStrClr
 0052639D    lea         eax,[ebp-8]
 005263A0    mov         edx,2
 005263A5    call        @LStrArrayClr
 005263AA    ret
>005263AB    jmp         @HandleFinally
>005263B0    jmp         00526395
 005263B2    pop         ebx
 005263B3    mov         esp,ebp
 005263B5    pop         ebp
 005263B6    ret
*}
end;

//005263D0
procedure TFormImprimer.FormDestroy(Sender:TObject);
begin
{*
 005263D0    push        ebx
 005263D1    mov         ebx,eax
 005263D3    mov         eax,dword ptr [ebx+36C];TFormImprimer.CheckBox1:TCheckBox
 005263D9    mov         edx,dword ptr [eax]
 005263DB    call        dword ptr [edx+0B4];TCustomCheckBox.GetChecked
 005263E1    call        004BD8D4
 005263E6    pop         ebx
 005263E7    ret
*}
end;

end.