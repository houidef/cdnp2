{***************************************
* Version Original V0.01
* Decompiled by Houidef AEK v.05.02.2018
***************************************}
unit _FormImporterSeries;

interface

uses
  Forms,Windows, SysUtils, Classes, ExtCtrls, StdCtrls, Buttons, ComCtrls, CheckLst, Controls,UFichierCdn;

type
  TFormImporterSeries = class(TForm)
  published
    Panel2:TPanel;//f2D0
    Bevel2:TBevel;//f2D4
    Image1:TImage;//f2D8
    ComboBoxPeriodes:TComboBox;//f2DC
    LabelLibelle:TLabel;//f2E0
    SpeedButtonExecuter:TSpeedButton;//f2E4
    SpeedButton2:TSpeedButton;//f2E8
    TabControl1:TTabControl;//f2EC
    LabelLibelleSeries:TLabel;//f2F0
    CheckListBoxSeries:TCheckListBox;//f2F4
    SpeedButton3:TSpeedButton;//f2F8
    SpeedButton4:TSpeedButton;//f2FC
    Label3:TLabel;//f300
    procedure SpeedButton4Click(Sender:TObject);//0050F398
    procedure SpeedButton3Click(Sender:TObject);//0050F334
    procedure FormKeyPress(Sender:TObject; var Key:Char);//0050F574
    procedure CheckListBoxSeriesClickCheck(Sender:TObject);//0050F3FC
    procedure SpeedButton2Click(Sender:TObject);//0050EBF8
    procedure CheckListBoxSeriesDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);//0050EA8C
    procedure SpeedButtonExecuterClick(Sender:TObject);//0050ED1C
    procedure TabControl1Change(Sender:TObject);//0050EC00
  public
    f304:TFichierCdn;//f304
    FichierCdn2:TFichierCdn;//f308
    f30C:byte;//f30C
    constructor Create(Owner:TComponent; F1:TFichierCdn; F2:TFichierCdn; logo:Timage; e:dword);//0050E744
	 // procedure sub_0050F454(?:TFormImporterSeries);//0050F454
  end;
  var 
    FormImporterSeries:TFormImporterSeries;

implementation

{$R *.DFM}

//0050E744
constructor TFormImporterSeries.Create(Owner:TComponent; F1:TFichierCdn; F2:TFichierCdn; logo:Timage; e:dword);
var
  buf:string;
  I:integer;
begin//0
  //0050E744
    //0050E77F
    inherited Create(Owner);
    f30C := e;
    if (e <> 0) then
    begin//2
      //0050E799
      LabelLibelle.Caption := '&Copier le modèle des séries vers';
      LabelLibelleSeries.Caption := '&Modèles de séries de notes à copier';
      LabelLibelleSeries.Left := LabelLibelleSeries.Left - 15;
      LabelLibelle.Left := 140;
      ComboBoxPeriodes.Left := ComboBoxPeriodes.Left + $1E{30};
      SpeedButtonExecuter.Caption := 'C&opier';
      SpeedButtonExecuter.Hint := 'Copier le modèle des séries de notes sélectionnées';
      Caption:='Copier le modèle des séries de notes de ';
    end;//2
    Image1.Picture := logo.Picture;

    f304 := F1;
    FichierCdn2 := F2;

    Buf := FichierCdn2.__GetFileName();
 

    Caption := Caption + '"' + ExtractFileName(Buf) + '"';


    ComboBoxPeriodes.Items := f304.GetPeriodesList_;

    ComboBoxPeriodes.ItemIndex := 0;


    TabControl1.Tabs := FichierCdn2.GetPeriodesList_;

     
      for I := 1 to FichierCdn2.GetNbreModules(1) do //0050E8EE
      begin//3
        //0050E8F5
        FichierCdn2.GetModuleName__v( 1, Buf, I);
        CheckListBoxSeries.Items.Add(buf);
      end;//3

    
    //sub_0050F454;

end;//0

//0050EA8C
procedure TFormImporterSeries.CheckListBoxSeriesDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
begin
    if (Index mod 2  <> 1) then
    begin//2
      //0055303B
      CheckListBoxSeries.Canvas.Brush.Color := $FFFFFF;
      CheckListBoxSeries.Canvas.FillRect(Rect);
    end//2
    else
    begin//2
      //0055306A
      CheckListBoxSeries.Canvas.Brush.Color := $F4F3EE;
      CheckListBoxSeries.Canvas.FillRect(Rect);
    end;//2

    CheckListBoxSeries.Canvas.TextOut(Rect.Left + 5, Rect.Top + 2, CheckListBoxSeries.Items[Index]);
    if ( odSelected in State) then
    begin//2
      //005530E6
      CheckListBoxSeries.Canvas.Brush.Color := $F8D1C5;
      CheckListBoxSeries.Canvas.FillRect(Rect);
      CheckListBoxSeries.Canvas.Font.Color := $FF0000;
      CheckListBoxSeries.Canvas.TextOut(Rect.Left + 5, Rect.Top + 2, CheckListBoxSeries.Items[Index]);
    end;//2
end;

//0050EBF8
procedure TFormImporterSeries.SpeedButton2Click(Sender:TObject);
begin
  Close;
end;

//0050EC00
procedure TFormImporterSeries.TabControl1Change(Sender:TObject);
begin
{*
 0050EC00    push        ebp
 0050EC01    mov         ebp,esp
 0050EC03    add         esp,0FFFFFEF4
 0050EC09    push        ebx
 0050EC0A    push        esi
 0050EC0B    xor         ecx,ecx
 0050EC0D    mov         dword ptr [ebp-0C],ecx
 0050EC10    mov         ebx,eax
 0050EC12    xor         eax,eax
 0050EC14    push        ebp
 0050EC15    push        50ED0E
 0050EC1A    push        dword ptr fs:[eax]
 0050EC1D    mov         dword ptr fs:[eax],esp
 0050EC20    mov         eax,dword ptr [ebx+2F4];TFormImporterSeries.CheckListBoxSeries:TCheckListBox
 0050EC26    mov         eax,dword ptr [eax+1F0];TCheckListBox.FItems:TStrings
 0050EC2C    mov         edx,dword ptr [eax]
 0050EC2E    call        dword ptr [edx+40];TStrings.Clear
 0050EC31    xor         edx,edx
 0050EC33    mov         eax,dword ptr [ebx+2E4];TFormImporterSeries.SpeedButtonExecuter:TSpeedButton
 0050EC39    mov         ecx,dword ptr [eax]
 0050EC3B    call        dword ptr [ecx+5C];TControl.SetEnabled
 0050EC3E    mov         eax,dword ptr [ebx+308];TFormImporterSeries.?FichierCdn2:dword
 0050EC44    mov         dword ptr [ebp-8],eax
 0050EC47    mov         eax,dword ptr [ebx+2EC];TFormImporterSeries.TabControl1:TTabControl
 0050EC4D    call        TCustomTabControl.GetTabIndex
 0050EC52    mov         edx,eax
 0050EC54    add         edx,1
>0050EC57    jno         0050EC5E
 0050EC59    call        @IntOver
 0050EC5E    cmp         edx,0FF
>0050EC64    jbe         0050EC6B
 0050EC66    call        @BoundErr
 0050EC6B    mov         eax,dword ptr [ebp-8]
 0050EC6E    call        004BEAD0
 0050EC73    mov         esi,eax
 0050EC75    and         esi,0FF
 0050EC7B    test        esi,esi
>0050EC7D    jle         0050ECF1
 0050EC7F    mov         dword ptr [ebp-4],1
 0050EC86    lea         eax,[ebp-10C]
 0050EC8C    push        eax
 0050EC8D    mov         eax,dword ptr [ebx+2EC];TFormImporterSeries.TabControl1:TTabControl
 0050EC93    call        TCustomTabControl.GetTabIndex
 0050EC98    mov         edx,eax
 0050EC9A    add         edx,1
>0050EC9D    jno         0050ECA4
 0050EC9F    call        @IntOver
 0050ECA4    cmp         edx,0FF
>0050ECAA    jbe         0050ECB1
 0050ECAC    call        @BoundErr
 0050ECB1    mov         ecx,dword ptr [ebp-4]
 0050ECB4    cmp         ecx,0FF
>0050ECBA    jbe         0050ECC1
 0050ECBC    call        @BoundErr
 0050ECC1    mov         eax,dword ptr [ebp-8]
 0050ECC4    call        004BED04
 0050ECC9    lea         edx,[ebp-10C]
 0050ECCF    lea         eax,[ebp-0C]
 0050ECD2    call        @LStrFromString
 0050ECD7    mov         edx,dword ptr [ebp-0C]
 0050ECDA    mov         eax,dword ptr [ebx+2F4];TFormImporterSeries.CheckListBoxSeries:TCheckListBox
 0050ECE0    mov         eax,dword ptr [eax+1F0];TCheckListBox.FItems:TStrings
 0050ECE6    mov         ecx,dword ptr [eax]
 0050ECE8    call        dword ptr [ecx+34];TStrings.Add
 0050ECEB    inc         dword ptr [ebp-4]
 0050ECEE    dec         esi
>0050ECEF    jne         0050EC86
 0050ECF1    mov         eax,ebx
 0050ECF3    call        0050F454
 0050ECF8    xor         eax,eax
 0050ECFA    pop         edx
 0050ECFB    pop         ecx
 0050ECFC    pop         ecx
 0050ECFD    mov         dword ptr fs:[eax],edx
 0050ED00    push        50ED15
 0050ED05    lea         eax,[ebp-0C]
 0050ED08    call        @LStrClr
 0050ED0D    ret
>0050ED0E    jmp         @HandleFinally
>0050ED13    jmp         0050ED05
 0050ED15    pop         esi
 0050ED16    pop         ebx
 0050ED17    mov         esp,ebp
 0050ED19    pop         ebp
 0050ED1A    ret
*}
end;

//0050ED1C
procedure TFormImporterSeries.SpeedButtonExecuterClick(Sender:TObject);
begin
{*
 0050ED1C    push        ebp
 0050ED1D    mov         ebp,esp
 0050ED1F    add         esp,0FFFFF7DC
 0050ED25    push        ebx
 0050ED26    push        esi
 0050ED27    push        edi
 0050ED28    xor         ecx,ecx
 0050ED2A    mov         dword ptr [ebp-820],ecx
 0050ED30    mov         dword ptr [ebp-824],ecx
 0050ED36    mov         dword ptr [ebp-10],ecx
 0050ED39    mov         ebx,eax
 0050ED3B    xor         eax,eax
 0050ED3D    push        ebp
 0050ED3E    push        50F247
 0050ED43    push        dword ptr fs:[eax]
 0050ED46    mov         dword ptr fs:[eax],esp
 0050ED49    mov         eax,dword ptr [ebx+2F4];TFormImporterSeries.CheckListBoxSeries:TCheckListBox
 0050ED4F    mov         eax,dword ptr [eax+1F0];TCheckListBox.FItems:TStrings
 0050ED55    mov         edx,dword ptr [eax]
 0050ED57    call        dword ptr [edx+14];TStrings.GetCount
 0050ED5A    test        eax,eax
>0050ED5C    jle         0050F217
 0050ED62    mov         eax,dword ptr [ebx+2F4];TFormImporterSeries.CheckListBoxSeries:TCheckListBox
 0050ED68    mov         eax,dword ptr [eax+1F0];TCheckListBox.FItems:TStrings
 0050ED6E    mov         edx,dword ptr [eax]
 0050ED70    call        dword ptr [edx+14];TStrings.GetCount
 0050ED73    mov         edi,eax
 0050ED75    test        edi,edi
>0050ED77    jle         0050F217
 0050ED7D    mov         esi,1
 0050ED82    mov         edx,esi
 0050ED84    sub         edx,1
>0050ED87    jno         0050ED8E
 0050ED89    call        @IntOver
 0050ED8E    mov         eax,dword ptr [ebx+2F4];TFormImporterSeries.CheckListBoxSeries:TCheckListBox
 0050ED94    call        TCheckListBox.GetChecked
 0050ED99    test        al,al
>0050ED9B    je          0050F20F
 0050EDA1    mov         eax,dword ptr [ebx+304];TFormImporterSeries.?f304:dword
 0050EDA7    call        004C4790
 0050EDAC    mov         edx,dword ptr ds:[6161A0];^gvar_00617903
 0050EDB2    cmp         al,byte ptr [edx]
>0050EDB4    jae         0050F146
 0050EDBA    mov         eax,dword ptr [ebx+2DC];TFormImporterSeries.ComboBoxPeriodes:TComboBox
 0050EDC0    call        TCustomComboBox.GetItemIndex
 0050EDC5    add         eax,1
>0050EDC8    jno         0050EDCF
 0050EDCA    call        @IntOver
 0050EDCF    mov         dword ptr [ebp-4],eax
 0050EDD2    mov         eax,dword ptr [ebx+308];TFormImporterSeries.?FichierCdn2:dword
 0050EDD8    mov         dword ptr [ebp-14],eax
 0050EDDB    lea         eax,[ebp-11C]
 0050EDE1    push        eax
 0050EDE2    mov         eax,dword ptr [ebx+2EC];TFormImporterSeries.TabControl1:TTabControl
 0050EDE8    call        TCustomTabControl.GetTabIndex
 0050EDED    mov         edx,eax
 0050EDEF    add         edx,1
>0050EDF2    jno         0050EDF9
 0050EDF4    call        @IntOver
 0050EDF9    cmp         edx,0FF
>0050EDFF    jbe         0050EE06
 0050EE01    call        @BoundErr
 0050EE06    mov         ecx,esi
 0050EE08    cmp         ecx,0FF
>0050EE0E    jbe         0050EE15
 0050EE10    call        @BoundErr
 0050EE15    mov         eax,dword ptr [ebp-14]
 0050EE18    call        004BED04
 0050EE1D    lea         eax,[ebp-21C]
 0050EE23    push        eax
 0050EE24    mov         eax,dword ptr [ebx+2EC];TFormImporterSeries.TabControl1:TTabControl
 0050EE2A    call        TCustomTabControl.GetTabIndex
 0050EE2F    mov         edx,eax
 0050EE31    add         edx,1
>0050EE34    jno         0050EE3B
 0050EE36    call        @IntOver
 0050EE3B    cmp         edx,0FF
>0050EE41    jbe         0050EE48
 0050EE43    call        @BoundErr
 0050EE48    mov         ecx,esi
 0050EE4A    cmp         ecx,0FF
>0050EE50    jbe         0050EE57
 0050EE52    call        @BoundErr
 0050EE57    mov         eax,dword ptr [ebp-14]
 0050EE5A    call        004BED2C
 0050EE5F    lea         eax,[ebp-31C]
 0050EE65    push        eax
 0050EE66    mov         eax,dword ptr [ebx+2EC];TFormImporterSeries.TabControl1:TTabControl
 0050EE6C    call        TCustomTabControl.GetTabIndex
 0050EE71    mov         edx,eax
 0050EE73    add         edx,1
>0050EE76    jno         0050EE7D
 0050EE78    call        @IntOver
 0050EE7D    cmp         edx,0FF
>0050EE83    jbe         0050EE8A
 0050EE85    call        @BoundErr
 0050EE8A    mov         ecx,esi
 0050EE8C    cmp         ecx,0FF
>0050EE92    jbe         0050EE99
 0050EE94    call        @BoundErr
 0050EE99    mov         eax,dword ptr [ebp-14]
 0050EE9C    call        004BED7C
 0050EEA1    lea         eax,[ebp-41C]
 0050EEA7    push        eax
 0050EEA8    mov         eax,dword ptr [ebx+2EC];TFormImporterSeries.TabControl1:TTabControl
 0050EEAE    call        TCustomTabControl.GetTabIndex
 0050EEB3    mov         edx,eax
 0050EEB5    add         edx,1
>0050EEB8    jno         0050EEBF
 0050EEBA    call        @IntOver
 0050EEBF    cmp         edx,0FF
>0050EEC5    jbe         0050EECC
 0050EEC7    call        @BoundErr
 0050EECC    mov         ecx,esi
 0050EECE    cmp         ecx,0FF
>0050EED4    jbe         0050EEDB
 0050EED6    call        @BoundErr
 0050EEDB    mov         eax,dword ptr [ebp-14]
 0050EEDE    call        004BEDCC
 0050EEE3    lea         eax,[ebp-51C]
 0050EEE9    push        eax
 0050EEEA    mov         eax,dword ptr [ebx+2EC];TFormImporterSeries.TabControl1:TTabControl
 0050EEF0    call        TCustomTabControl.GetTabIndex
 0050EEF5    mov         edx,eax
 0050EEF7    add         edx,1
>0050EEFA    jno         0050EF01
 0050EEFC    call        @IntOver
 0050EF01    cmp         edx,0FF
>0050EF07    jbe         0050EF0E
 0050EF09    call        @BoundErr
 0050EF0E    mov         ecx,esi
 0050EF10    cmp         ecx,0FF
>0050EF16    jbe         0050EF1D
 0050EF18    call        @BoundErr
 0050EF1D    mov         eax,dword ptr [ebp-14]
 0050EF20    call        004BEE1C
 0050EF25    lea         eax,[ebp-61C]
 0050EF2B    push        eax
 0050EF2C    mov         eax,dword ptr [ebx+2EC];TFormImporterSeries.TabControl1:TTabControl
 0050EF32    call        TCustomTabControl.GetTabIndex
 0050EF37    mov         edx,eax
 0050EF39    add         edx,1
>0050EF3C    jno         0050EF43
 0050EF3E    call        @IntOver
 0050EF43    cmp         edx,0FF
>0050EF49    jbe         0050EF50
 0050EF4B    call        @BoundErr
 0050EF50    mov         ecx,esi
 0050EF52    cmp         ecx,0FF
>0050EF58    jbe         0050EF5F
 0050EF5A    call        @BoundErr
 0050EF5F    mov         eax,dword ptr [ebp-14]
 0050EF62    call        004BEE6C
 0050EF67    lea         eax,[ebp-71C]
 0050EF6D    push        eax
 0050EF6E    mov         eax,dword ptr [ebx+2EC];TFormImporterSeries.TabControl1:TTabControl
 0050EF74    call        TCustomTabControl.GetTabIndex
 0050EF79    mov         edx,eax
 0050EF7B    add         edx,1
>0050EF7E    jno         0050EF85
 0050EF80    call        @IntOver
 0050EF85    cmp         edx,0FF
>0050EF8B    jbe         0050EF92
 0050EF8D    call        @BoundErr
 0050EF92    mov         ecx,esi
 0050EF94    cmp         ecx,0FF
>0050EF9A    jbe         0050EFA1
 0050EF9C    call        @BoundErr
 0050EFA1    mov         eax,dword ptr [ebp-14]
 0050EFA4    call        004BEEBC
 0050EFA9    lea         eax,[ebp-81C]
 0050EFAF    push        eax
 0050EFB0    mov         eax,dword ptr [ebx+2EC];TFormImporterSeries.TabControl1:TTabControl
 0050EFB6    call        TCustomTabControl.GetTabIndex
 0050EFBB    mov         edx,eax
 0050EFBD    add         edx,1
>0050EFC0    jno         0050EFC7
 0050EFC2    call        @IntOver
 0050EFC7    cmp         edx,0FF
>0050EFCD    jbe         0050EFD4
 0050EFCF    call        @BoundErr
 0050EFD4    mov         ecx,esi
 0050EFD6    cmp         ecx,0FF
>0050EFDC    jbe         0050EFE3
 0050EFDE    call        @BoundErr
 0050EFE3    mov         eax,dword ptr [ebp-14]
 0050EFE6    call        004BEF0C
 0050EFEB    lea         eax,[ebp-81C]
 0050EFF1    mov         edx,50F258;'Oral'
 0050EFF6    xor         ecx,ecx
 0050EFF8    mov         cl,byte ptr [eax]
 0050EFFA    inc         ecx
 0050EFFB    call        @AStrCmp
 0050F000    sete        al
 0050F003    mov         edx,dword ptr [ebx+304];TFormImporterSeries.?f304:dword
 0050F009    mov         dword ptr [ebp-18],edx
 0050F00C    lea         edx,[ebp-21C]
 0050F012    push        edx
 0050F013    lea         edx,[ebp-31C]
 0050F019    push        edx
 0050F01A    lea         edx,[ebp-41C]
 0050F020    push        edx
 0050F021    lea         edx,[ebp-51C]
 0050F027    push        edx
 0050F028    lea         edx,[ebp-61C]
 0050F02E    push        edx
 0050F02F    lea         edx,[ebp-71C]
 0050F035    push        edx
 0050F036    push        eax
 0050F037    mov         edx,dword ptr [ebp-4]
 0050F03A    cmp         edx,0FF
>0050F040    jbe         0050F047
 0050F042    call        @BoundErr
 0050F047    lea         ecx,[ebp-11C]
 0050F04D    mov         eax,dword ptr [ebp-18]
 0050F050    call        004BF7F0
 0050F055    cmp         byte ptr [ebx+30C],0;TFormImporterSeries.?f30C:byte
>0050F05C    jne         0050F20F
 0050F062    mov         edx,dword ptr [ebp-4]
 0050F065    cmp         edx,0FF
>0050F06B    jbe         0050F072
 0050F06D    call        @BoundErr
 0050F072    mov         eax,dword ptr [ebp-18]
 0050F075    call        004BEAD0
 0050F07A    and         eax,0FF
 0050F07F    mov         dword ptr [ebp-0C],eax
 0050F082    mov         eax,dword ptr [ebp-18]
 0050F085    call        004BEA58
 0050F08A    and         eax,0FF
 0050F08F    test        eax,eax
>0050F091    jle         0050F20F
 0050F097    mov         dword ptr [ebp-1C],eax
 0050F09A    mov         dword ptr [ebp-8],1
 0050F0A1    mov         eax,dword ptr [ebp-8]
 0050F0A4    cmp         eax,0FF
>0050F0A9    jbe         0050F0B0
 0050F0AB    call        @BoundErr
 0050F0B0    push        eax
 0050F0B1    mov         eax,dword ptr [ebp-8]
 0050F0B4    cmp         eax,0FF
>0050F0B9    jbe         0050F0C0
 0050F0BB    call        @BoundErr
 0050F0C0    push        eax
 0050F0C1    lea         eax,[ebp-81C]
 0050F0C7    push        eax
 0050F0C8    mov         eax,dword ptr [ebx+2EC];TFormImporterSeries.TabControl1:TTabControl
 0050F0CE    call        TCustomTabControl.GetTabIndex
 0050F0D3    mov         edx,eax
 0050F0D5    add         edx,1
>0050F0D8    jno         0050F0DF
 0050F0DA    call        @IntOver
 0050F0DF    cmp         edx,0FF
>0050F0E5    jbe         0050F0EC
 0050F0E7    call        @BoundErr
 0050F0EC    mov         ecx,esi
 0050F0EE    cmp         ecx,0FF
>0050F0F4    jbe         0050F0FB
 0050F0F6    call        @BoundErr
 0050F0FB    mov         eax,dword ptr [ebx+308];TFormImporterSeries.?FichierCdn2:dword
 0050F101    call        004BEF5C
 0050F106    lea         eax,[ebp-81C]
 0050F10C    push        eax
 0050F10D    mov         ecx,dword ptr [ebp-0C]
 0050F110    cmp         ecx,0FF
>0050F116    jbe         0050F11D
 0050F118    call        @BoundErr
 0050F11D    mov         edx,dword ptr [ebp-4]
 0050F120    cmp         edx,0FF
>0050F126    jbe         0050F12D
 0050F128    call        @BoundErr
 0050F12D    mov         eax,dword ptr [ebp-18]
 0050F130    call        004C1074
 0050F135    inc         dword ptr [ebp-8]
 0050F138    dec         dword ptr [ebp-1C]
>0050F13B    jne         0050F0A1
>0050F141    jmp         0050F20F
 0050F146    push        50F268;'Impossible d'importer la série "'
 0050F14B    lea         eax,[ebp-81C]
 0050F151    push        eax
 0050F152    mov         eax,dword ptr [ebx+2EC];TFormImporterSeries.TabControl1:TTabControl
 0050F158    call        TCustomTabControl.GetTabIndex
 0050F15D    mov         edx,eax
 0050F15F    add         edx,1
>0050F162    jno         0050F169
 0050F164    call        @IntOver
 0050F169    cmp         edx,0FF
>0050F16F    jbe         0050F176
 0050F171    call        @BoundErr
 0050F176    mov         ecx,esi
 0050F178    cmp         ecx,0FF
>0050F17E    jbe         0050F185
 0050F180    call        @BoundErr
 0050F185    mov         eax,dword ptr [ebx+308];TFormImporterSeries.?FichierCdn2:dword
 0050F18B    call        004BED04
 0050F190    lea         edx,[ebp-81C]
 0050F196    lea         eax,[ebp-820]
 0050F19C    call        @LStrFromString
 0050F1A1    push        dword ptr [ebp-820]
 0050F1A7    push        50F294;'"'
 0050F1AC    push        50F2A0;#13
 0050F1B1    push        50F2AC;#10
 0050F1B6    push        50F2A0;#13
 0050F1BB    push        50F2AC;#10
 0050F1C0    push        50F2B8;'Le nombre de séries de notes est limité à '
 0050F1C5    lea         edx,[ebp-824]
 0050F1CB    mov         eax,[006161A0];^gvar_00617903
 0050F1D0    movzx       eax,byte ptr [eax]
 0050F1D3    call        IntToStr
 0050F1D8    push        dword ptr [ebp-824]
 0050F1DE    push        50F2EC;' pour la version non enregistrée.'
 0050F1E3    lea         eax,[ebp-10]
 0050F1E6    mov         edx,0A
 0050F1EB    call        @LStrCatN
 0050F1F0    push        10
 0050F1F2    mov         eax,dword ptr [ebp-10]
 0050F1F5    call        @LStrToPChar
 0050F1FA    mov         edx,eax
 0050F1FC    mov         ecx,50F310
 0050F201    mov         eax,[00615FEC];^Application:TApplication
 0050F206    mov         eax,dword ptr [eax]
 0050F208    call        TApplication.MessageBox
>0050F20D    jmp         0050F217
 0050F20F    inc         esi
 0050F210    dec         edi
>0050F211    jne         0050ED82
 0050F217    mov         dword ptr [ebx+234],1;TFormImporterSeries.FModalResult:TModalResult
 0050F221    xor         eax,eax
 0050F223    pop         edx
 0050F224    pop         ecx
 0050F225    pop         ecx
 0050F226    mov         dword ptr fs:[eax],edx
 0050F229    push        50F24E
 0050F22E    lea         eax,[ebp-824]
 0050F234    mov         edx,2
 0050F239    call        @LStrArrayClr
 0050F23E    lea         eax,[ebp-10]
 0050F241    call        @LStrClr
 0050F246    ret
>0050F247    jmp         @HandleFinally
>0050F24C    jmp         0050F22E
 0050F24E    pop         edi
 0050F24F    pop         esi
 0050F250    pop         ebx
 0050F251    mov         esp,ebp
 0050F253    pop         ebp
 0050F254    ret
*}
end;

//0050F334
procedure TFormImporterSeries.SpeedButton3Click(Sender:TObject);
begin
{*
 0050F334    push        ebx
 0050F335    push        esi
 0050F336    push        edi
 0050F337    mov         edi,eax
 0050F339    mov         eax,dword ptr [edi+2F4];TFormImporterSeries.CheckListBoxSeries:TCheckListBox
 0050F33F    mov         eax,dword ptr [eax+1F0];TCheckListBox.FItems:TStrings
 0050F345    mov         edx,dword ptr [eax]
 0050F347    call        dword ptr [edx+14];TStrings.GetCount
 0050F34A    mov         ebx,eax
 0050F34C    sub         ebx,1
>0050F34F    jno         0050F356
 0050F351    call        @IntOver
 0050F356    test        ebx,ebx
>0050F358    jl          0050F370
 0050F35A    inc         ebx
 0050F35B    xor         esi,esi
 0050F35D    mov         eax,dword ptr [edi+2F4];TFormImporterSeries.CheckListBoxSeries:TCheckListBox
 0050F363    mov         cl,1
 0050F365    mov         edx,esi
 0050F367    call        TCheckListBox.SetChecked
 0050F36C    inc         esi
 0050F36D    dec         ebx
>0050F36E    jne         0050F35D
 0050F370    mov         eax,dword ptr [edi+2F4];TFormImporterSeries.CheckListBoxSeries:TCheckListBox
 0050F376    mov         eax,dword ptr [eax+1F0];TCheckListBox.FItems:TStrings
 0050F37C    mov         edx,dword ptr [eax]
 0050F37E    call        dword ptr [edx+14];TStrings.GetCount
 0050F381    test        eax,eax
>0050F383    jle         0050F392
 0050F385    mov         eax,dword ptr [edi+2E4];TFormImporterSeries.SpeedButtonExecuter:TSpeedButton
 0050F38B    mov         dl,1
 0050F38D    mov         ecx,dword ptr [eax]
 0050F38F    call        dword ptr [ecx+5C];TControl.SetEnabled
 0050F392    pop         edi
 0050F393    pop         esi
 0050F394    pop         ebx
 0050F395    ret
*}
end;

//0050F398
procedure TFormImporterSeries.SpeedButton4Click(Sender:TObject);
begin
{*
 0050F398    push        ebx
 0050F399    push        esi
 0050F39A    push        edi
 0050F39B    mov         edi,eax
 0050F39D    mov         eax,dword ptr [edi+2F4];TFormImporterSeries.CheckListBoxSeries:TCheckListBox
 0050F3A3    mov         eax,dword ptr [eax+1F0];TCheckListBox.FItems:TStrings
 0050F3A9    mov         edx,dword ptr [eax]
 0050F3AB    call        dword ptr [edx+14];TStrings.GetCount
 0050F3AE    mov         ebx,eax
 0050F3B0    sub         ebx,1
>0050F3B3    jno         0050F3BA
 0050F3B5    call        @IntOver
 0050F3BA    test        ebx,ebx
>0050F3BC    jl          0050F3D4
 0050F3BE    inc         ebx
 0050F3BF    xor         esi,esi
 0050F3C1    mov         eax,dword ptr [edi+2F4];TFormImporterSeries.CheckListBoxSeries:TCheckListBox
 0050F3C7    xor         ecx,ecx
 0050F3C9    mov         edx,esi
 0050F3CB    call        TCheckListBox.SetChecked
 0050F3D0    inc         esi
 0050F3D1    dec         ebx
>0050F3D2    jne         0050F3C1
 0050F3D4    mov         eax,dword ptr [edi+2F4];TFormImporterSeries.CheckListBoxSeries:TCheckListBox
 0050F3DA    mov         eax,dword ptr [eax+1F0];TCheckListBox.FItems:TStrings
 0050F3E0    mov         edx,dword ptr [eax]
 0050F3E2    call        dword ptr [edx+14];TStrings.GetCount
 0050F3E5    test        eax,eax
>0050F3E7    jle         0050F3F6
 0050F3E9    mov         eax,dword ptr [edi+2E4];TFormImporterSeries.SpeedButtonExecuter:TSpeedButton
 0050F3EF    xor         edx,edx
 0050F3F1    mov         ecx,dword ptr [eax]
 0050F3F3    call        dword ptr [ecx+5C];TControl.SetEnabled
 0050F3F6    pop         edi
 0050F3F7    pop         esi
 0050F3F8    pop         ebx
 0050F3F9    ret
*}
end;

//0050F3FC
procedure TFormImporterSeries.CheckListBoxSeriesClickCheck(Sender:TObject);
begin
{*
 0050F3FC    push        ebx
 0050F3FD    push        esi
 0050F3FE    push        edi
 0050F3FF    push        ebp
 0050F400    mov         edi,eax
 0050F402    xor         ebx,ebx
 0050F404    mov         eax,dword ptr [edi+2F4];TFormImporterSeries.CheckListBoxSeries:TCheckListBox
 0050F40A    mov         eax,dword ptr [eax+1F0];TCheckListBox.FItems:TStrings
 0050F410    mov         edx,dword ptr [eax]
 0050F412    call        dword ptr [edx+14];TStrings.GetCount
 0050F415    mov         ebp,eax
 0050F417    sub         ebp,1
>0050F41A    jno         0050F421
 0050F41C    call        @IntOver
 0050F421    test        ebp,ebp
>0050F423    jl          0050F43F
 0050F425    inc         ebp
 0050F426    xor         esi,esi
 0050F428    mov         eax,dword ptr [edi+2F4];TFormImporterSeries.CheckListBoxSeries:TCheckListBox
 0050F42E    mov         edx,esi
 0050F430    call        TCheckListBox.GetChecked
 0050F435    test        al,al
>0050F437    je          0050F43B
 0050F439    mov         bl,1
 0050F43B    inc         esi
 0050F43C    dec         ebp
>0050F43D    jne         0050F428
 0050F43F    mov         eax,dword ptr [edi+2E4];TFormImporterSeries.SpeedButtonExecuter:TSpeedButton
 0050F445    mov         edx,ebx
 0050F447    mov         ecx,dword ptr [eax]
 0050F449    call        dword ptr [ecx+5C];TControl.SetEnabled
 0050F44C    pop         ebp
 0050F44D    pop         edi
 0050F44E    pop         esi
 0050F44F    pop         ebx
 0050F450    ret
*}
end;

//0050F454
//procedure sub_0050F454(?:TFormImporterSeries);
//begin
{*
 0050F454    push        ebp
 0050F455    mov         ebp,esp
 0050F457    push        0
 0050F459    push        ebx
 0050F45A    push        esi
 0050F45B    mov         ebx,eax
 0050F45D    xor         eax,eax
 0050F45F    push        ebp
 0050F460    push        50F50D
 0050F465    push        dword ptr fs:[eax]
 0050F468    mov         dword ptr fs:[eax],esp
 0050F46B    mov         esi,dword ptr [ebx+308];TFormImporterSeries.?FichierCdn2:dword
 0050F471    mov         eax,dword ptr [ebx+2EC];TFormImporterSeries.TabControl1:TTabControl
 0050F477    call        TCustomTabControl.GetTabIndex
 0050F47C    mov         edx,eax
 0050F47E    add         edx,1
>0050F481    jno         0050F488
 0050F483    call        @IntOver
 0050F488    cmp         edx,0FF
>0050F48E    jbe         0050F495
 0050F490    call        @BoundErr
 0050F495    mov         eax,esi
 0050F497    call        004BEAD0
 0050F49C    and         eax,0FF
 0050F4A1    mov         esi,eax
 0050F4A3    mov         eax,esi
 0050F4A5    sub         eax,1
>0050F4A8    jb          0050F4AE
>0050F4AA    je          0050F4C0
>0050F4AC    jmp         0050F4D2
 0050F4AE    mov         edx,50F524;'aucune série de notes'
 0050F4B3    mov         eax,dword ptr [ebx+300];TFormImporterSeries.Label3:TLabel
 0050F4B9    call        TControl.SetText
>0050F4BE    jmp         0050F4F7
 0050F4C0    mov         edx,50F544;'1 série de notes'
 0050F4C5    mov         eax,dword ptr [ebx+300];TFormImporterSeries.Label3:TLabel
 0050F4CB    call        TControl.SetText
>0050F4D0    jmp         0050F4F7
 0050F4D2    lea         edx,[ebp-4]
 0050F4D5    mov         eax,esi
 0050F4D7    call        IntToStr
 0050F4DC    lea         eax,[ebp-4]
 0050F4DF    mov         edx,50F560;' séries de notes'
 0050F4E4    call        @LStrCat
 0050F4E9    mov         edx,dword ptr [ebp-4]
 0050F4EC    mov         eax,dword ptr [ebx+300];TFormImporterSeries.Label3:TLabel
 0050F4F2    call        TControl.SetText
 0050F4F7    xor         eax,eax
 0050F4F9    pop         edx
 0050F4FA    pop         ecx
 0050F4FB    pop         ecx
 0050F4FC    mov         dword ptr fs:[eax],edx
 0050F4FF    push        50F514
 0050F504    lea         eax,[ebp-4]
 0050F507    call        @LStrClr
 0050F50C    ret
>0050F50D    jmp         @HandleFinally
>0050F512    jmp         0050F504
 0050F514    pop         esi
 0050F515    pop         ebx
 0050F516    pop         ecx
 0050F517    pop         ebp
 0050F518    ret
*}
//end;

//0050F574
procedure TFormImporterSeries.FormKeyPress(Sender:TObject; var Key:Char);
begin//0
  //0050F574
  if (Key = char($1B)) then 
  ModalResult := 2;
end;//0



end.