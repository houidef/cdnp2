{***************************************
* Version Original V0.01
* Decompiled by HOUIDEF AEK v.05.02.2018
***************************************}
unit _FormAppreciations;

interface

uses
Forms, Windows,  SysUtils, Classes, Buttons, ComCtrls, Grids, StdCtrls, ExtCtrls, Tabs, uFichierCdn;

type
  TFormAppreciations = class(TForm)
  published
    SpeedButton1:TSpeedButton;//f2D0
    PageControl1:TPageControl;//f2D4
    TabSheet1:TTabSheet;//f2D8
    TabSheet2:TTabSheet;//f2DC
    StringGrid1:TStringGrid;//f2E0
    TabControlPeriodes:TTabControl;//f2E4
    Label1:TLabel;//f2E8
    Label2:TLabel;//f2EC
    Label3:TLabel;//f2F0
    StringGrid2:TStringGrid;//f2F4
    SpeedButton2:TSpeedButton;//f2F8
    SpeedButton3:TSpeedButton;//f2FC
    Label4:TLabel;//f300
    SpeedButton4:TSpeedButton;//f304
    SpeedButton5:TSpeedButton;//f308
    Label5:TLabel;//f30C
    Bevel1:TBevel;//f310
    Label7:TLabel;//f314
    Memo1:TMemo;//f318
    SpeedButtonElevePrecedent:TSpeedButton;//f31C
    SpeedButtonEleveSuivant:TSpeedButton;//f320
    TabSetColonnesBulletin:TTabSet;//f324
    procedure Memo1Exit(Sender:TObject);//00514D2C
    procedure Memo1Change;//00514D4C
    procedure SpeedButtonElevePrecedentClick(Sender:TObject);//00514C30
    procedure SpeedButtonEleveSuivantClick(Sender:TObject);//00514CA8
    procedure StringGrid2DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);//005155D4
    procedure TabSetColonnesBulletinChange(Sender: TObject; NewTab: Integer;
  var AllowChange: Boolean);//00515830
    procedure PageControl1Change;//00514F80
    procedure Memo1KeyDown(Sender:TObject; var Key:Word; Shift:TShiftState);//00515260
    procedure SpeedButton5Click(Sender:TObject);//00514BF0
    procedure FormDestroy(Sender:TObject);//00514358
    procedure TabControlPeriodesChange;//00514368
    procedure SpeedButton1Click(Sender:TObject);//00513B60
    procedure StringGrid1SelectCell(Sender: TObject; ACol,
									ARow: Integer; var CanSelect: Boolean);//00513D5C
    procedure SpeedButton3Click(Sender:TObject);//00514B6C
    procedure SpeedButton4Click(Sender:TObject);//00514BBC
    procedure StringGrid2SelectCell(Sender: TObject; ACol,
									  ARow: Integer; var CanSelect: Boolean);//005143AC
    procedure SpeedButton2Click(Sender:TObject);//005145E0
  public
    f328:TFichierCdn;//f328
    f32C:dword;//f32C
    f330:dword;//f330
    f334:dword;//f334
    f338:dword;//f338
    f33C:dword;//f33C
    f340:String;//f340
    f344:String;//f344
    f348:String;//f348
    f34C:byte;//f34C
    constructor Create(Owner:TComponent;FichierCdn:TFichierCdn);//005133D4
    //procedure sub_00514620(?:TFormAppreciations);//00514620
    //procedure sub_005148C0(?:TFormAppreciations);//005148C0
  end;
 var 
   FormAppreciations:TFormAppreciations;

implementation

{$R *.DFM}

//005133D4
constructor TFormAppreciations.Create(Owner:TComponent; FichierCdn:TFichierCdn);
begin//0
  //005133D4
    //0051343A
    
    inherited Create(Owner);;
    Memo1.MaxLength := 255;
    f328 := FichierCdn;
    f338 := 1;
    f33C := 1;
    f334 := 1;
    (*
    EAX := inherited Create;
    EDX := Self;
    f32C := EAX;//EAX
    EAX := Self;
    EAX := f328;
    lvar_20 := f328;
    EAX := lvar_20;
    EAX := lvar_20.sub_004BEA4C;
    EDX := lvar_20.sub_004BEA4C;
    EAX := Self;
    EAX := TabControlPeriodes;
    TabControlPeriodes.SetTabs{Tabs}(EDX);
    EAX := lvar_20;
    EAX := lvar_20.sub_004C8BAC;
    EDX := lvar_20.sub_004C8BAC;
    EAX := Self;
    EAX := TabSetColonnesBulletin;
    TabSetColonnesBulletin.SetTabList{Tabs}(EDX);
    EAX := Self;
    EAX := StringGrid1;
    lvar_24 := StringGrid1;
    EDX := $12{18};
    EAX := lvar_24;
    lvar_24.SetDefaultRowHeight{DefaultRowHeight}({$12{18}});
    EAX := lvar_20;
    EAX := lvar_20.sub_004C8AE8;
    EDX := lvar_20.sub_004C8AE8;
    EDX := EDX + 1;//EDX
    EAX := lvar_24;
    lvar_24.SetColCount{ColCount}(EDX);
    EAX := lvar_20;
    EAX := lvar_20.sub_004BEA58;
    EDX := lvar_20.sub_004BEA58;
    EAX := lvar_24;
    lvar_24.SetRowCount{RowCount}(EDX);
    EAX := lvar_20;
    EAX := lvar_20.sub_004BEAC4;
    ECX := lvar_20.sub_004BEAC4;
    EDX := 0;
    EAX := lvar_24;
    lvar_24.SetCols{Cols}({0}, ECX);
    EAX := lvar_20;
    EAX := lvar_20.sub_004BEA58;
    EBX := lvar_20.sub_004BEA58;
    if (EBX > 0) then
    begin//2
      //00513548
      lvar_6 := 1;
      for lvar_6 := 1 to lvar_20.sub_004BEA58 do
      begin//3
        //0051354C
        EAX := Self;
        EAX := TabSetColonnesBulletin;
        EAX := TabSetColonnesBulletin.TabIndex;
        EAX := EAX + 1;//EAX
        //push EAX
        //push EAX
        ECX := lvar_6;
        EDX := 1;
        EAX := lvar_20;
        lvar_20.sub_004C2C00({1}, lvar_6, , lvar_134);
         := ;
        EAX := lvar_30;
        //push EAX
        ECX := lvar_6;
        ECX := ECX - 1;//ECX
        EDX := 1;
        EAX := lvar_24;
        lvar_24.SetCells{Cells}({1}, ECX, lvar_30{EAX});
      end;//3
    end;//2
    EAX := lvar_24;
    EAX := lvar_24.f3A205A48;
    EAX := EAX - 1;//EAX
    if (EAX >= 0) then
    begin//2
      //005135D6
      EAX := EAX + 1;//EAX
      lvar_28 := EAX;
      ESI := 0;
      for lvar_28 := 0 to  do
      begin//3
        //005135DC
        EAX := 0;
        lvar_C := EAX;
        EAX := lvar_24;
        EBX := lvar_24.f3A205A78;
        EBX := EBX - 1;//EBX
        if (EBX >= 0) then
        begin//4
          //005135F8
          EBX := EBX + 1;//EBX
          lvar_10 := 0;
          for lvar_10 := 0 to EBX - 1 do
          begin//5
            //00513600
            //push EAX
            ECX := lvar_10;
            EDX := ESI;
            EAX := lvar_24;
            lvar_138 := lvar_24.GetCells{Cells}(ESI, lvar_10);
            EDX := lvar_138;
            EAX := Self;
            EAX := StringGrid1;
            EAX := StringGrid1.....FCanvas;
            EAX := StringGrid1.....FCanvas.TextWidth(lvar_138);
            if (EAX{StringGrid1.....FCanvas.TextWidth(lvar_138)} <= lvar_C) then Continue;
            lvar_C := StringGrid1.....FCanvas.TextWidth(lvar_138);
          end;//5
        end;//4
        ECX := lvar_C;
        ECX := ECX + 10;//ECX
        EDX := ESI;
        EAX := lvar_24;
        lvar_24.SetColWidths{ColWidths}(ESI, ECX);
      end;//3
    end;//2
    EAX := lvar_24;
    lvar_24.f3A205AB8 := 0;
    EAX := lvar_24;
    EDX := Self;
    lvar_24.f3A205AD0 := EDX;//Self
    lvar_24.f3A205ACC := $513B68;
    EAX := Self;
    EAX := StringGrid2;
    lvar_30 := StringGrid2;
    EDX := $12{18};
    EAX := lvar_30;
    lvar_30.SetDefaultRowHeight{DefaultRowHeight}({$12{18}});
    EAX := lvar_20;
    EAX := lvar_20.sub_004C8AE8;
    EDX := lvar_20.sub_004C8AE8;
    EDX := EDX + 5;//EDX
    EAX := lvar_30;
    lvar_30.SetColCount{ColCount}(EDX);
    EAX := lvar_20;
    EAX := sub_004BE9E0(lvar_20);
    EDX := sub_004BE9E0(lvar_20);
    EDX := EDX + 1;//EDX
    EAX := lvar_30;
    lvar_30.SetRowCount{RowCount}(EDX);
    ECX := 0;
    EDX := 0;
    EAX := lvar_30;
    lvar_30.SetCells{Cells}({0}, {0}, 'Périodes');
    ECX := 0;
    EDX := 1;
    EAX := lvar_30;
    lvar_30.SetCells{Cells}({1}, {0}, '+ basse');
    ECX := 0;
    EDX := 2;
    EAX := lvar_30;
    lvar_30.SetCells{Cells}({2}, {0}, '+ haute');
    ECX := 0;
    EDX := 3;
    EAX := lvar_30;
    lvar_30.SetCells{Cells}({3}, {0}, 'Classe');
    ECX := 0;
    EDX := 4;
    EAX := lvar_30;
    lvar_30.SetCells{Cells}({4}, {0}, 'Elève');
    EAX := lvar_20;
    EAX := lvar_20.sub_004C8AE8;
    EAX := EAX And $FF{255};//lvar_20.sub_004C8AE8 And $FF{255}
    if (EAX{lvar_20.sub_004C8AE8 And $FF{255}} > 0) then
    begin//2
      //00513740
      lvar_28 := lvar_20.sub_004C8AE8 And $FF{255};
      ESI := 1;
      for ESI := 1 to lvar_20.sub_004C8AE8 And $FF{255} do
      begin//3
        //00513748
        EDX := ESI;//ESI
        EAX := lvar_20;
        lvar_20.sub_004C8AF4(ESI, lvar_134);
         := ;
        EAX := lvar_13C;
        //push EAX
        EDX := ESI;//ESI
        EDX := EDX + 4;//EDX
        ECX := 0;
        EAX := lvar_30;
        lvar_30.SetCells{Cells}(EDX, {0}, lvar_13C{EAX});
      end;//3
    end;//2
    EDX := 1;
    EAX := inherited Create;
    lvar_1C := EAX;
    EAX := lvar_20;
    EAX := sub_004BE9E0(lvar_20);
    EAX := EAX And $FF{255};//sub_004BE9E0(lvar_20) And $FF{255}
    if (EAX{sub_004BE9E0(lvar_20) And $FF{255}} > 0) then
    begin//2
      //005137BD
      lvar_28 := sub_004BE9E0(lvar_20) And $FF{255};
      lvar_14 := 1;
      for lvar_14 := 1 to sub_004BE9E0(lvar_20) And $FF{255} do
      begin//3
        //005137C7
        EAX := lvar_1C;
        EDX := lvar_1C.f3A205844;
        call(
        
        );
        EAX := lvar_20;
        EAX := lvar_20.sub_004BEA58;
        EBX := lvar_20.sub_004BEA58;
        if (EBX > 0) then
        begin//4
          //005137DD
          lvar_6 := 1;
          for lvar_6 := 1 to lvar_20.sub_004BEA58 do
          begin//5
            //005137E1
            EAX := sub_004B9E10;
            //push EAX
            //push EAX
            EDX := lvar_14;
            ECX := lvar_6;
            EAX := lvar_20;
            lvar_20.sub_004C2D10(lvar_14, lvar_6, sub_004B9E10{EAX}, lvar_134);
             := ;
            EDX := lvar_140;
            EAX := lvar_1C;
            ECX := lvar_1C.f3A205844;
            call(
            
            );
          end;//5
        end;//4
        EDX := lvar_14;
        EAX := lvar_20;
        lvar_20.sub_004BE9EC(lvar_14, lvar_134);
         := ;
        EAX := lvar_144;
        //push EAX
        ECX := lvar_14;
        EDX := 0;
        EAX := lvar_30;
        lvar_30.SetCells{Cells}({0}, lvar_14, lvar_144{EAX});
        EAX := lvar_1C;
        sub_004BDB3C(lvar_1C, lvar_134);
         := ;
        EAX := lvar_148;
        //push EAX
        ECX := lvar_14;
        EDX := 1;
        EAX := lvar_30;
        lvar_30.SetCells{Cells}({1}, lvar_14, lvar_148{EAX});
        EAX := lvar_1C;
        sub_004BDCFC(lvar_1C, lvar_134);
         := ;
        EAX := lvar_14C;
        //push EAX
        ECX := lvar_14;
        EDX := 2;
        EAX := lvar_30;
        lvar_30.SetCells{Cells}({2}, lvar_14, lvar_14C{EAX});
        EAX := lvar_1C;
        sub_004BDEBC(lvar_1C, lvar_134);
         := ;
        EAX := lvar_150;
        //push EAX
        ECX := lvar_14;
        EDX := 3;
        EAX := lvar_30;
        lvar_30.SetCells{Cells}({3}, lvar_14, lvar_150{EAX});
        ECX := lvar_14;
        EDX := 4;
        EAX := lvar_30;
        lvar_30.SetCells{Cells}({4}, lvar_14, 'élève');
        EAX := lvar_20;
        EAX := lvar_20.sub_004C8AE8;
        EBX := lvar_20.sub_004C8AE8;
        if (EBX <= 0) then Continue;
        ESI := 1;
        for ESI := 1 to lvar_20.sub_004C8AE8 do
        begin//4
          //0051393E
          //push ESI
          //push EAX
          EDX := lvar_14;
          ECX := 1;
          EAX := lvar_20;
          lvar_20.sub_004C2C00(lvar_14, {1}, , lvar_134);
           := ;
          EAX := lvar_154;
          //push EAX
          EDX := ESI;//ESI
          EDX := EDX + 4;//EDX
          ECX := lvar_14;
          EAX := lvar_30;
          lvar_30.SetCells{Cells}(EDX, lvar_14, lvar_154{EAX});
        end;//4
      end;//3
    end;//2
    EDX := 1;
    EAX := lvar_1C;
    ECX := lvar_1C.f3A205844;
    call(
    lvar_154{EAX}
    );
    EAX := lvar_30;
    EAX := ;
    EAX := EAX - 1;//EAX
    if (EAX >= 0) then
    begin//2
      //005139D1

      ESI := 0;
      for lvar_28 := 0 to  lvar_30.f3A205A48 -1do
      begin//3
        //005139D7
        lvar_C := 0;
          for lvar_10 := 0 to lvar_30.f3A205A78 - 1 do//005139F3
          begin//5
            //005139FB
          
            lvar_154 := lvar_30.Cells[ESI, lvar_10];
            if (StringGrid2.Canvas.TextWidth(lvar_154) <= lvar_C) then Continue;
            lvar_C := StringGrid2.Canvas.TextWidth(lvar_154);
          end;//5
        
        lvar_30.ColWidths[ESI]:=lvar_C + 10;
      end;//3
    end;//2
    sub_005148C0;
    StringGrid2SelectCell(Self, 1, f334);
    sub_00514620;
    StringGrid1SelectCell(Self, 1, f338 - 1, lvar_15);*)
end;//0

//00513B60
procedure TFormAppreciations.SpeedButton1Click(Sender:TObject);
begin
 close;
end;

//00513D5C
procedure TFormAppreciations.StringGrid1SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
{* 00513D5C    push        ebp
 00513D5D    mov         ebp,esp
 00513D5F    push        ecx
 00513D60    mov         ecx,2D
 00513D65    push        0
 00513D67    push        0
 00513D69    dec         ecx
>00513D6A    jne         00513D65
 00513D6C    xchg        ecx,dword ptr [ebp-4]
 00513D6F    push        ebx
 00513D70    push        esi
 00513D71    push        edi
 00513D72    mov         ebx,ecx
 00513D74    mov         dword ptr [ebp-4],eax
 00513D77    xor         eax,eax
 00513D79    push        ebp
 00513D7A    push        5142E0
 00513D7F    push        dword ptr fs:[eax]
 00513D82    mov         dword ptr fs:[eax],esp
 00513D85    mov         eax,dword ptr [ebp-4]
 00513D88    mov         eax,dword ptr [eax+328];TFormAppreciations.?f328:dword
 00513D8E    mov         dword ptr [ebp-24],eax
 00513D91    mov         eax,dword ptr [ebp-4]
 00513D94    mov         esi,dword ptr [eax+2E0];TFormAppreciations.StringGrid1:TStringGrid
 00513D9A    mov         edi,dword ptr [ebp+0C]
 00513D9D    add         edi,1
>00513DA0    jno         00513DA7
 00513DA2    call        @IntOver
 00513DA7    mov         eax,dword ptr [ebp-4]
 00513DAA    mov         dword ptr [eax+338],edi;TFormAppreciations.?f338:dword
 00513DB0    mov         eax,dword ptr [ebp-4]
 00513DB3    mov         edx,dword ptr [ebp+0C]
 00513DB6    mov         dword ptr [eax+330],edx;TFormAppreciations.?f330:dword
 00513DBC    mov         eax,dword ptr [ebp-4]
 00513DBF    cmp         dword ptr [eax+338],1;TFormAppreciations.?f338:dword
 00513DC6    setg        dl
 00513DC9    mov         eax,dword ptr [ebp-4]
 00513DCC    mov         eax,dword ptr [eax+31C];TFormAppreciations.SpeedButtonElevePrecedent:TSpeedButton
 00513DD2    mov         ecx,dword ptr [eax]
 00513DD4    call        dword ptr [ecx+5C];TControl.SetEnabled
 00513DD7    mov         eax,dword ptr [ebp-24]
 00513DDA    call        004BEA58
 00513DDF    and         eax,0FF
 00513DE4    mov         edx,dword ptr [ebp-4]
 00513DE7    cmp         eax,dword ptr [edx+338];TFormAppreciations.?f338:dword
 00513DED    setg        dl
 00513DF0    mov         eax,dword ptr [ebp-4]
 00513DF3    mov         eax,dword ptr [eax+320];TFormAppreciations.SpeedButtonEleveSuivant:TSpeedButton
 00513DF9    mov         ecx,dword ptr [eax]
 00513DFB    call        dword ptr [ecx+5C];TControl.SetEnabled
 00513DFE    cmp         ebx,1
>00513E01    jl          00513ECE
 00513E07    mov         eax,dword ptr [ebp-4]
 00513E0A    mov         byte ptr [eax+34C],0;TFormAppreciations.?f34C:byte
 00513E11    mov         eax,dword ptr [ebp-4]
 00513E14    mov         eax,dword ptr [eax+318];TFormAppreciations.Memo1:TMemo
 00513E1A    mov         edx,dword ptr [eax]
 00513E1C    call        dword ptr [edx+0CC];TCustomEdit.Clear
 00513E22    lea         eax,[ebp-3C]
 00513E25    push        eax
 00513E26    mov         ecx,dword ptr [ebp+0C]
 00513E29    mov         edx,ebx
 00513E2B    mov         eax,esi
 00513E2D    call        TStringGrid.GetCells
 00513E32    mov         eax,dword ptr [ebp-3C]
 00513E35    lea         edx,[ebp-38]
 00513E38    call        Trim
 00513E3D    cmp         dword ptr [ebp-38],0
>00513E41    je          00513E64
 00513E43    lea         eax,[ebp-40]
 00513E46    push        eax
 00513E47    mov         ecx,dword ptr [ebp+0C]
 00513E4A    mov         edx,ebx
 00513E4C    mov         eax,esi
 00513E4E    call        TStringGrid.GetCells
 00513E53    mov         edx,dword ptr [ebp-40]
 00513E56    mov         eax,dword ptr [ebp-4]
 00513E59    mov         eax,dword ptr [eax+318];TFormAppreciations.Memo1:TMemo
 00513E5F    call        TControl.SetText
 00513E64    mov         eax,dword ptr [ebp-4]
 00513E67    mov         byte ptr [eax+34C],1;TFormAppreciations.?f34C:byte
 00513E6E    mov         edx,ebx
 00513E70    sub         edx,1
>00513E73    jno         00513E7A
 00513E75    call        @IntOver
 00513E7A    mov         eax,dword ptr [ebp-4]
 00513E7D    mov         eax,dword ptr [eax+324];TFormAppreciations.TabSetColonnesBulletin:TTabSet
 00513E83    call        TTabSet.SetTabIndex
 00513E88    mov         eax,dword ptr [ebp-4]
 00513E8B    mov         eax,dword ptr [eax+318];TFormAppreciations.Memo1:TMemo
 00513E91    cmp         byte ptr [eax+168],0;TMemo.FShowing:Boolean
>00513E98    je          00513EA2
 00513E9A    mov         edx,dword ptr [eax]
 00513E9C    call        dword ptr [edx+0B0];TWinControl.SetFocus
 00513EA2    lea         edx,[ebp-44]
 00513EA5    mov         eax,dword ptr [ebp-4]
 00513EA8    mov         ebx,dword ptr [eax+318];TFormAppreciations.Memo1:TMemo
 00513EAE    mov         eax,ebx
 00513EB0    call        TControl.GetText
 00513EB5    mov         eax,dword ptr [ebp-44]
 00513EB8    call        @LStrLen
 00513EBD    mov         edx,eax
 00513EBF    mov         eax,ebx
 00513EC1    mov         ecx,dword ptr [eax]
 00513EC3    call        dword ptr [ecx+0C8];TCustomEdit.SetSelStart
>00513EC9    jmp         00513FAC
 00513ECE    test        ebx,ebx
>00513ED0    jne         00513FAC
 00513ED6    mov         eax,dword ptr [ebp-4]
 00513ED9    mov         byte ptr [eax+34C],0;TFormAppreciations.?f34C:byte
 00513EE0    mov         eax,dword ptr [ebp-4]
 00513EE3    mov         eax,dword ptr [eax+318];TFormAppreciations.Memo1:TMemo
 00513EE9    mov         edx,dword ptr [eax]
 00513EEB    call        dword ptr [edx+0CC];TCustomEdit.Clear
 00513EF1    lea         eax,[ebp-4C]
 00513EF4    push        eax
 00513EF5    mov         eax,dword ptr [ebp-4]
 00513EF8    mov         eax,dword ptr [eax+324];TFormAppreciations.TabSetColonnesBulletin:TTabSet
 00513EFE    mov         edx,dword ptr [eax+204];TTabSet.TabIndex:Integer
 00513F04    add         edx,1
>00513F07    jno         00513F0E
 00513F09    call        @IntOver
 00513F0E    mov         ecx,dword ptr [ebp+0C]
 00513F11    mov         eax,esi
 00513F13    call        TStringGrid.GetCells
 00513F18    mov         eax,dword ptr [ebp-4C]
 00513F1B    lea         edx,[ebp-48]
 00513F1E    call        Trim
 00513F23    cmp         dword ptr [ebp-48],0
>00513F27    je          00513F61
 00513F29    lea         eax,[ebp-50]
 00513F2C    push        eax
 00513F2D    mov         eax,dword ptr [ebp-4]
 00513F30    mov         eax,dword ptr [eax+324];TFormAppreciations.TabSetColonnesBulletin:TTabSet
 00513F36    mov         edx,dword ptr [eax+204];TTabSet.TabIndex:Integer
 00513F3C    add         edx,1
>00513F3F    jno         00513F46
 00513F41    call        @IntOver
 00513F46    mov         ecx,dword ptr [ebp+0C]
 00513F49    mov         eax,esi
 00513F4B    call        TStringGrid.GetCells
 00513F50    mov         edx,dword ptr [ebp-50]
 00513F53    mov         eax,dword ptr [ebp-4]
 00513F56    mov         eax,dword ptr [eax+318];TFormAppreciations.Memo1:TMemo
 00513F5C    call        TControl.SetText
 00513F61    mov         eax,dword ptr [ebp-4]
 00513F64    mov         byte ptr [eax+34C],1;TFormAppreciations.?f34C:byte
 00513F6B    mov         eax,dword ptr [ebp-4]
 00513F6E    mov         eax,dword ptr [eax+318];TFormAppreciations.Memo1:TMemo
 00513F74    cmp         byte ptr [eax+168],0;TMemo.FShowing:Boolean
>00513F7B    je          00513F85
 00513F7D    mov         edx,dword ptr [eax]
 00513F7F    call        dword ptr [edx+0B0];TWinControl.SetFocus
 00513F85    lea         edx,[ebp-54]
 00513F88    mov         eax,dword ptr [ebp-4]
 00513F8B    mov         ebx,dword ptr [eax+318];TFormAppreciations.Memo1:TMemo
 00513F91    mov         eax,ebx
 00513F93    call        TControl.GetText
 00513F98    mov         eax,dword ptr [ebp-54]
 00513F9B    call        @LStrLen
 00513FA0    mov         edx,eax
 00513FA2    mov         eax,ebx
 00513FA4    mov         ecx,dword ptr [eax]
 00513FA6    call        dword ptr [ecx+0C8];TCustomEdit.SetSelStart
 00513FAC    xor         eax,eax
 00513FAE    mov         dword ptr [ebp-34],eax
 00513FB1    mov         eax,dword ptr [ebp-4]
 00513FB4    mov         eax,dword ptr [eax+330];TFormAppreciations.?f330:dword
 00513FBA    mov         dword ptr [ebp-30],eax
 00513FBD    mov         edx,dword ptr [ebp-4]
 00513FC0    mov         edx,dword ptr [edx+2E0];TFormAppreciations.StringGrid1:TStringGrid
 00513FC6    mov         edx,dword ptr [edx+204];TStringGrid.FColCount:Longint
 00513FCC    sub         edx,1
>00513FCF    jno         00513FD6
 00513FD1    call        @IntOver
 00513FD6    mov         dword ptr [ebp-2C],edx
 00513FD9    mov         dword ptr [ebp-28],eax
 00513FDC    lea         edx,[ebp-34]
 00513FDF    mov         eax,esi
 00513FE1    call        TCustomGrid.SetSelection
 00513FE6    call        004BA2B0
 00513FEB    test        al,al
>00513FED    je          00514175
 00513FF3    xor         eax,eax
 00513FF5    push        ebp
 00513FF6    push        51414A
 00513FFB    push        dword ptr fs:[eax]
 00513FFE    mov         dword ptr fs:[eax],esp
 00514001    call        004B9E48
 00514006    mov         dword ptr [ebp-58],eax
 00514009    fild        dword ptr [ebp-58]
 0051400C    fstp        tbyte ptr [ebp-20]
 0051400F    wait
 00514010    call        004B9E10
 00514015    push        eax
 00514016    lea         eax,[ebp-15C]
 0051401C    push        eax
 0051401D    mov         eax,dword ptr [ebp-4]
 00514020    mov         eax,dword ptr [eax+2E4];TFormAppreciations.TabControlPeriodes:TTabControl
 00514026    call        TCustomTabControl.GetTabIndex
 0051402B    mov         edx,eax
 0051402D    add         edx,1
>00514030    jno         00514037
 00514032    call        @IntOver
 00514037    cmp         edx,0FF
>0051403D    jbe         00514044
 0051403F    call        @BoundErr
 00514044    mov         ecx,edi
 00514046    cmp         ecx,0FF
>0051404C    jbe         00514053
 0051404E    call        @BoundErr
 00514053    mov         eax,dword ptr [ebp-24]
 00514056    call        004C2D10
 0051405B    lea         edx,[ebp-15C]
 00514061    lea         eax,[ebp-5C]
 00514064    call        @LStrFromString
 00514069    mov         eax,dword ptr [ebp-5C]
 0051406C    call        StrToFloat
 00514071    fstp        tbyte ptr [ebp-10]
 00514074    wait
 00514075    fld         tbyte ptr [ebp-10]
 00514078    fcomp       dword ptr ds:[5142F0];0:Single
 0051407E    fnstsw      al
 00514080    sahf
>00514081    jb          00514090
 00514083    fld         tbyte ptr [ebp-10]
 00514086    fld         tbyte ptr [ebp-20]
 00514089    fcompp
 0051408B    fnstsw      al
 0051408D    sahf
>0051408E    jae         005140AD
 00514090    call        004BA070
 00514095    mov         edx,eax
 00514097    mov         eax,dword ptr [ebp-4]
 0051409A    mov         eax,dword ptr [eax+314];TFormAppreciations.Label7:TLabel
 005140A0    mov         eax,dword ptr [eax+58];TLabel.FFont:TFont
 005140A3    call        TFont.SetColor
>005140A8    jmp         00514140
 005140AD    fld         tbyte ptr [ebp-10]
 005140B0    fcomp       dword ptr ds:[5142F0];0:Single
 005140B6    fnstsw      al
 005140B8    sahf
>005140B9    jb          005140E8
 005140BB    fld         tbyte ptr [ebp-20]
 005140BE    fdiv        dword ptr ds:[5142F4];2:Single
 005140C4    fld         tbyte ptr [ebp-10]
 005140C7    fcompp
 005140C9    fnstsw      al
 005140CB    sahf
>005140CC    jae         005140E8
 005140CE    call        004B9F8C
 005140D3    mov         edx,eax
 005140D5    mov         eax,dword ptr [ebp-4]
 005140D8    mov         eax,dword ptr [eax+314];TFormAppreciations.Label7:TLabel
 005140DE    mov         eax,dword ptr [eax+58];TLabel.FFont:TFont
 005140E1    call        TFont.SetColor
>005140E6    jmp         00514140
 005140E8    fld         tbyte ptr [ebp-20]
 005140EB    fmul        dword ptr ds:[5142F8];3:Single
 005140F1    fdiv        dword ptr ds:[5142FC];4:Single
 005140F7    fld         tbyte ptr [ebp-10]
 005140FA    fcompp
 005140FC    fnstsw      al
 005140FE    sahf
>005140FF    jb          00514128
 00514101    fld         tbyte ptr [ebp-10]
 00514104    fld         tbyte ptr [ebp-20]
 00514107    fcompp
 00514109    fnstsw      al
 0051410B    sahf
>0051410C    jb          00514128
 0051410E    call        004BA024
 00514113    mov         edx,eax
 00514115    mov         eax,dword ptr [ebp-4]
 00514118    mov         eax,dword ptr [eax+314];TFormAppreciations.Label7:TLabel
 0051411E    mov         eax,dword ptr [eax+58];TLabel.FFont:TFont
 00514121    call        TFont.SetColor
>00514126    jmp         00514140
 00514128    call        004B9FD8
 0051412D    mov         edx,eax
 0051412F    mov         eax,dword ptr [ebp-4]
 00514132    mov         eax,dword ptr [eax+314];TFormAppreciations.Label7:TLabel
 00514138    mov         eax,dword ptr [eax+58];TLabel.FFont:TFont
 0051413B    call        TFont.SetColor
 00514140    xor         eax,eax
 00514142    pop         edx
 00514143    pop         ecx
 00514144    pop         ecx
 00514145    mov         dword ptr fs:[eax],edx
>00514148    jmp         00514188
>0051414A    jmp         @HandleOnException
 0051414F    dd          1
 00514153    dd          00409B50;EConvertError
 00514157    dd          0051415B
 0051415B    mov         eax,dword ptr [ebp-4]
 0051415E    mov         eax,dword ptr [eax+314];TFormAppreciations.Label7:TLabel
 00514164    mov         eax,dword ptr [eax+58];TLabel.FFont:TFont
 00514167    xor         edx,edx
 00514169    call        TFont.SetColor
 0051416E    call        @DoneExcept
>00514173    jmp         00514188
 00514175    mov         eax,dword ptr [ebp-4]
 00514178    mov         eax,dword ptr [eax+314];TFormAppreciations.Label7:TLabel
 0051417E    mov         eax,dword ptr [eax+58];TLabel.FFont:TFont
 00514181    xor         edx,edx
 00514183    call        TFont.SetColor
 00514188    call        004B9E10
 0051418D    push        eax
 0051418E    lea         eax,[ebp-15C]
 00514194    push        eax
 00514195    mov         eax,dword ptr [ebp-4]
 00514198    mov         eax,dword ptr [eax+2E4];TFormAppreciations.TabControlPeriodes:TTabControl
 0051419E    call        TCustomTabControl.GetTabIndex
 005141A3    mov         edx,eax
 005141A5    add         edx,1
>005141A8    jno         005141AF
 005141AA    call        @IntOver
 005141AF    cmp         edx,0FF
>005141B5    jbe         005141BC
 005141B7    call        @BoundErr
 005141BC    mov         ecx,dword ptr [ebp+0C]
 005141BF    add         ecx,1
>005141C2    jno         005141C9
 005141C4    call        @IntOver
 005141C9    cmp         ecx,0FF
>005141CF    jbe         005141D6
 005141D1    call        @BoundErr
 005141D6    mov         eax,dword ptr [ebp-24]
 005141D9    call        004C2D10
 005141DE    lea         edx,[ebp-15C]
 005141E4    lea         eax,[ebp-160]
 005141EA    call        @LStrFromString
 005141EF    mov         edx,dword ptr [ebp-160]
 005141F5    mov         eax,dword ptr [ebp-4]
 005141F8    mov         eax,dword ptr [eax+314];TFormAppreciations.Label7:TLabel
 005141FE    call        TControl.SetText
 00514203    mov         eax,dword ptr [ebp-4]
 00514206    mov         ecx,dword ptr [eax+340];TFormAppreciations.?f340:String
 0051420C    lea         eax,[ebp-164]
 00514212    mov         edx,514308;'Moy. la + basse : '
 00514217    call        @LStrCat3
 0051421C    mov         edx,dword ptr [ebp-164]
 00514222    mov         eax,dword ptr [ebp-4]
 00514225    mov         eax,dword ptr [eax+2EC];TFormAppreciations.Label2:TLabel
 0051422B    call        TControl.SetText
 00514230    mov         eax,dword ptr [ebp-4]
 00514233    mov         ecx,dword ptr [eax+344];TFormAppreciations.?f344:String
 00514239    lea         eax,[ebp-168]
 0051423F    mov         edx,514324;'Moy. la + haute : '
 00514244    call        @LStrCat3
 00514249    mov         edx,dword ptr [ebp-168]
 0051424F    mov         eax,dword ptr [ebp-4]
 00514252    mov         eax,dword ptr [eax+2F0];TFormAppreciations.Label3:TLabel
 00514258    call        TControl.SetText
 0051425D    mov         eax,dword ptr [ebp-4]
 00514260    mov         ecx,dword ptr [eax+348];TFormAppreciations.?f348:String
 00514266    lea         eax,[ebp-16C]
 0051426C    mov         edx,514340;'Moy. de la classe : '
 00514271    call        @LStrCat3
 00514276    mov         edx,dword ptr [ebp-16C]
 0051427C    mov         eax,dword ptr [ebp-4]
 0051427F    mov         eax,dword ptr [eax+30C];TFormAppreciations.Label5:TLabel
 00514285    call        TControl.SetText
 0051428A    mov         eax,dword ptr [ebp+8]
 0051428D    mov         byte ptr [eax],1
 00514290    xor         eax,eax
 00514292    pop         edx
 00514293    pop         ecx
 00514294    pop         ecx
 00514295    mov         dword ptr fs:[eax],edx
 00514298    push        5142E7
 0051429D    lea         eax,[ebp-16C]
 005142A3    mov         edx,4
 005142A8    call        @LStrArrayClr
 005142AD    lea         eax,[ebp-5C]
 005142B0    call        @LStrClr
 005142B5    lea         eax,[ebp-54]
 005142B8    call        @LStrClr
 005142BD    lea         eax,[ebp-50]
 005142C0    mov         edx,3
 005142C5    call        @LStrArrayClr
 005142CA    lea         eax,[ebp-44]
 005142CD    call        @LStrClr
 005142D2    lea         eax,[ebp-40]
 005142D5    mov         edx,3
 005142DA    call        @LStrArrayClr
 005142DF    ret
>005142E0    jmp         @HandleFinally
>005142E5    jmp         0051429D
 005142E7    pop         edi
 005142E8    pop         esi
 005142E9    pop         ebx
 005142EA    mov         esp,ebp
 005142EC    pop         ebp
 005142ED    ret         8*}
end;

//00514358
procedure TFormAppreciations.FormDestroy(Sender:TObject);
begin
 inherited;
{*
 00514358    mov         dl,1
 0051435A    mov         eax,dword ptr [eax+32C];TFormAppreciations.?f32C:dword
 00514360    mov         ecx,dword ptr [eax]
 00514362    call        dword ptr [ecx-4]
 00514365    ret
*}
end;

//00514368
procedure TFormAppreciations.TabControlPeriodesChange;
begin
{*
 00514368    push        ebx
 00514369    push        ecx
 0051436A    mov         ebx,eax
 0051436C    mov         eax,ebx
 0051436E    call        00514620
 00514373    mov         eax,dword ptr [ebx+338];TFormAppreciations.?f338:dword
 00514379    sub         eax,1
>0051437C    jno         00514383
 0051437E    call        @IntOver
 00514383    push        eax
 00514384    lea         eax,[esp+4]
 00514388    push        eax
 00514389    mov         eax,dword ptr [ebx+324];TFormAppreciations.TabSetColonnesBulletin:TTabSet
 0051438F    mov         ecx,dword ptr [eax+204];TTabSet.TabIndex:Integer
 00514395    add         ecx,1
>00514398    jno         0051439F
 0051439A    call        @IntOver
 0051439F    mov         edx,ebx
 005143A1    mov         eax,ebx
 005143A3    call        TFormAppreciations.StringGrid1SelectCell
 005143A8    pop         edx
 005143A9    pop         ebx
 005143AA    ret
*}
end;

//005143AC
procedure TFormAppreciations.StringGrid2SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
{* 005143AC    push        ebp
 005143AD    mov         ebp,esp
 005143AF    push        ecx
 005143B0    mov         ecx,6
 005143B5    push        0
 005143B7    push        0
 005143B9    dec         ecx
>005143BA    jne         005143B5
 005143BC    xchg        ecx,dword ptr [ebp-4]
 005143BF    push        ebx
 005143C0    push        esi
 005143C1    push        edi
 005143C2    mov         dword ptr [ebp-4],ecx
 005143C5    mov         esi,eax
 005143C7    mov         ebx,dword ptr [ebp+0C]
 005143CA    xor         eax,eax
 005143CC    push        ebp
 005143CD    push        5145CF
 005143D2    push        dword ptr fs:[eax]
 005143D5    mov         dword ptr fs:[eax],esp
 005143D8    mov         eax,ebx
 005143DA    mov         dword ptr [esi+334],eax;TFormAppreciations.?f334:dword
 005143E0    xor         edx,edx
 005143E2    mov         dword ptr [ebp-14],edx
 005143E5    mov         dword ptr [ebp-10],eax
 005143E8    mov         edi,dword ptr [esi+2F4];TFormAppreciations.StringGrid2:TStringGrid
 005143EE    mov         edx,dword ptr [edi+204];TStringGrid.FColCount:Longint
 005143F4    sub         edx,1
>005143F7    jno         005143FE
 005143F9    call        @IntOver
 005143FE    mov         dword ptr [ebp-0C],edx
 00514401    mov         dword ptr [ebp-8],eax
 00514404    lea         edx,[ebp-14]
 00514407    mov         eax,edi
 00514409    call        TCustomGrid.SetSelection
 0051440E    cmp         dword ptr [ebp-4],5
>00514412    jl          005144D3
 00514418    mov         byte ptr [esi+34C],0;TFormAppreciations.?f34C:byte
 0051441F    mov         eax,dword ptr [esi+318];TFormAppreciations.Memo1:TMemo
 00514425    mov         edx,dword ptr [eax]
 00514427    call        dword ptr [edx+0CC];TCustomEdit.Clear
 0051442D    lea         eax,[ebp-1C]
 00514430    push        eax
 00514431    mov         ecx,ebx
 00514433    mov         edx,dword ptr [ebp-4]
 00514436    mov         eax,dword ptr [esi+2F4];TFormAppreciations.StringGrid2:TStringGrid
 0051443C    call        TStringGrid.GetCells
 00514441    mov         eax,dword ptr [ebp-1C]
 00514444    lea         edx,[ebp-18]
 00514447    call        Trim
 0051444C    cmp         dword ptr [ebp-18],0
>00514450    je          00514474
 00514452    lea         eax,[ebp-20]
 00514455    push        eax
 00514456    mov         ecx,ebx
 00514458    mov         edx,dword ptr [ebp-4]
 0051445B    mov         eax,dword ptr [esi+2F4];TFormAppreciations.StringGrid2:TStringGrid
 00514461    call        TStringGrid.GetCells
 00514466    mov         edx,dword ptr [ebp-20]
 00514469    mov         eax,dword ptr [esi+318];TFormAppreciations.Memo1:TMemo
 0051446F    call        TControl.SetText
 00514474    mov         edx,dword ptr [ebp-4]
 00514477    sub         edx,5
>0051447A    jno         00514481
 0051447C    call        @IntOver
 00514481    mov         eax,dword ptr [esi+324];TFormAppreciations.TabSetColonnesBulletin:TTabSet
 00514487    call        TTabSet.SetTabIndex
 0051448C    mov         byte ptr [esi+34C],1;TFormAppreciations.?f34C:byte
 00514493    mov         eax,dword ptr [esi+318];TFormAppreciations.Memo1:TMemo
 00514499    cmp         byte ptr [eax+168],0;TMemo.FShowing:Boolean
>005144A0    je          005144AA
 005144A2    mov         edx,dword ptr [eax]
 005144A4    call        dword ptr [edx+0B0];TWinControl.SetFocus
 005144AA    lea         edx,[ebp-24]
 005144AD    mov         ebx,dword ptr [esi+318];TFormAppreciations.Memo1:TMemo
 005144B3    mov         eax,ebx
 005144B5    call        TControl.GetText
 005144BA    mov         eax,dword ptr [ebp-24]
 005144BD    call        @LStrLen
 005144C2    mov         edx,eax
 005144C4    mov         eax,ebx
 005144C6    mov         ecx,dword ptr [eax]
 005144C8    call        dword ptr [ecx+0C8];TCustomEdit.SetSelStart
>005144CE    jmp         00514597
 005144D3    mov         byte ptr [esi+34C],0;TFormAppreciations.?f34C:byte
 005144DA    mov         eax,dword ptr [esi+318];TFormAppreciations.Memo1:TMemo
 005144E0    mov         edx,dword ptr [eax]
 005144E2    call        dword ptr [edx+0CC];TCustomEdit.Clear
 005144E8    lea         eax,[ebp-2C]
 005144EB    push        eax
 005144EC    mov         eax,dword ptr [esi+324];TFormAppreciations.TabSetColonnesBulletin:TTabSet
 005144F2    mov         edx,dword ptr [eax+204];TTabSet.TabIndex:Integer
 005144F8    add         edx,5
>005144FB    jno         00514502
 005144FD    call        @IntOver
 00514502    mov         ecx,ebx
 00514504    mov         eax,dword ptr [esi+2F4];TFormAppreciations.StringGrid2:TStringGrid
 0051450A    call        TStringGrid.GetCells
 0051450F    mov         eax,dword ptr [ebp-2C]
 00514512    lea         edx,[ebp-28]
 00514515    call        Trim
 0051451A    cmp         dword ptr [ebp-28],0
>0051451E    je          00514555
 00514520    lea         eax,[ebp-30]
 00514523    push        eax
 00514524    mov         eax,dword ptr [esi+324];TFormAppreciations.TabSetColonnesBulletin:TTabSet
 0051452A    mov         edx,dword ptr [eax+204];TTabSet.TabIndex:Integer
 00514530    add         edx,5
>00514533    jno         0051453A
 00514535    call        @IntOver
 0051453A    mov         ecx,ebx
 0051453C    mov         eax,dword ptr [esi+2F4];TFormAppreciations.StringGrid2:TStringGrid
 00514542    call        TStringGrid.GetCells
 00514547    mov         edx,dword ptr [ebp-30]
 0051454A    mov         eax,dword ptr [esi+318];TFormAppreciations.Memo1:TMemo
 00514550    call        TControl.SetText
 00514555    mov         byte ptr [esi+34C],1;TFormAppreciations.?f34C:byte
 0051455C    mov         eax,dword ptr [esi+318];TFormAppreciations.Memo1:TMemo
 00514562    cmp         byte ptr [eax+168],0;TMemo.FShowing:Boolean
>00514569    je          00514573
 0051456B    mov         edx,dword ptr [eax]
 0051456D    call        dword ptr [edx+0B0];TWinControl.SetFocus
 00514573    lea         edx,[ebp-34]
 00514576    mov         ebx,dword ptr [esi+318];TFormAppreciations.Memo1:TMemo
 0051457C    mov         eax,ebx
 0051457E    call        TControl.GetText
 00514583    mov         eax,dword ptr [ebp-34]
 00514586    call        @LStrLen
 0051458B    mov         edx,eax
 0051458D    mov         eax,ebx
 0051458F    mov         ecx,dword ptr [eax]
 00514591    call        dword ptr [ecx+0C8];TCustomEdit.SetSelStart
 00514597    xor         eax,eax
 00514599    pop         edx
 0051459A    pop         ecx
 0051459B    pop         ecx
 0051459C    mov         dword ptr fs:[eax],edx
 0051459F    push        5145D6
 005145A4    lea         eax,[ebp-34]
 005145A7    call        @LStrClr
 005145AC    lea         eax,[ebp-30]
 005145AF    mov         edx,3
 005145B4    call        @LStrArrayClr
 005145B9    lea         eax,[ebp-24]
 005145BC    call        @LStrClr
 005145C1    lea         eax,[ebp-20]
 005145C4    mov         edx,3
 005145C9    call        @LStrArrayClr
 005145CE    ret
>005145CF    jmp         @HandleFinally
>005145D4    jmp         005145A4
 005145D6    pop         edi
 005145D7    pop         esi
 005145D8    pop         ebx
 005145D9    mov         esp,ebp
 005145DB    pop         ebp
 005145DC    ret         8*}
end;

//005145E0
procedure TFormAppreciations.SpeedButton2Click(Sender:TObject);
begin
{*
 005145E0    push        ebx
 005145E1    push        ecx
 005145E2    mov         ebx,eax
 005145E4    cmp         dword ptr [ebx+33C],1;TFormAppreciations.?f33C:dword
>005145EB    jle         0051461C
 005145ED    sub         dword ptr [ebx+33C],1
>005145F4    jno         005145FB
 005145F6    call        @IntOver
 005145FB    mov         eax,ebx
 005145FD    call        005148C0
 00514602    mov         eax,dword ptr [ebx+334];TFormAppreciations.?f334:dword
 00514608    push        eax
 00514609    lea         eax,[esp+4]
 0051460D    push        eax
 0051460E    mov         ecx,1
 00514613    mov         edx,ebx
 00514615    mov         eax,ebx
 00514617    call        TFormAppreciations.StringGrid2SelectCell
 0051461C    pop         edx
 0051461D    pop         ebx
 0051461E    ret
*}
end;

//00514620
//procedure sub_00514620(?:TFormAppreciations);
//begin
{*
 00514620    push        ebp
 00514621    mov         ebp,esp
 00514623    add         esp,0FFFFFEE4
 00514629    push        ebx
 0051462A    push        esi
 0051462B    push        edi
 0051462C    xor         edx,edx
 0051462E    mov         dword ptr [ebp-11C],edx
 00514634    mov         dword ptr [ebp-118],edx
 0051463A    mov         dword ptr [ebp-14],edx
 0051463D    mov         esi,eax
 0051463F    xor         eax,eax
 00514641    push        ebp
 00514642    push        5148B2
 00514647    push        dword ptr fs:[eax]
 0051464A    mov         dword ptr fs:[eax],esp
 0051464D    mov         eax,dword ptr [esi+328];TFormAppreciations.?f328:dword
 00514653    mov         dword ptr [ebp-0C],eax
 00514656    mov         edi,dword ptr [esi+2E0];TFormAppreciations.StringGrid1:TStringGrid
 0051465C    mov         eax,dword ptr [edi+204];TStringGrid.FColCount:Longint
 00514662    sub         eax,1
>00514665    jno         0051466C
 00514667    call        @IntOver
 0051466C    cmp         eax,0FF
>00514671    jbe         00514678
 00514673    call        @BoundErr
 00514678    test        al,al
>0051467A    jbe         005147A2
 00514680    mov         byte ptr [ebp-0D],al
 00514683    mov         byte ptr [ebp-3],1
 00514687    mov         eax,dword ptr [ebp-0C]
 0051468A    call        004BEA58
 0051468F    mov         ebx,eax
 00514691    test        bl,bl
>00514693    jbe         00514707
 00514695    mov         byte ptr [ebp-1],1
 00514699    mov         al,byte ptr [ebp-3]
 0051469C    push        eax
 0051469D    lea         eax,[ebp-114]
 005146A3    push        eax
 005146A4    mov         eax,dword ptr [esi+2E4];TFormAppreciations.TabControlPeriodes:TTabControl
 005146AA    call        TCustomTabControl.GetTabIndex
 005146AF    mov         edx,eax
 005146B1    add         edx,1
>005146B4    jno         005146BB
 005146B6    call        @IntOver
 005146BB    cmp         edx,0FF
>005146C1    jbe         005146C8
 005146C3    call        @BoundErr
 005146C8    mov         cl,byte ptr [ebp-1]
 005146CB    mov         eax,dword ptr [ebp-0C]
 005146CE    call        004C2C00
 005146D3    lea         edx,[ebp-114]
 005146D9    lea         eax,[ebp-14]
 005146DC    call        @LStrFromString
 005146E1    mov         eax,dword ptr [ebp-14]
 005146E4    push        eax
 005146E5    xor         ecx,ecx
 005146E7    mov         cl,byte ptr [ebp-1]
 005146EA    sub         ecx,1
>005146ED    jno         005146F4
 005146EF    call        @IntOver
 005146F4    xor         edx,edx
 005146F6    mov         dl,byte ptr [ebp-3]
 005146F9    mov         eax,edi
 005146FB    call        TStringGrid.SetCells
 00514700    inc         byte ptr [ebp-1]
 00514703    dec         bl
>00514705    jne         00514699
 00514707    xor         eax,eax
 00514709    mov         dword ptr [ebp-8],eax
 0051470C    mov         ebx,dword ptr [edi+234];TStringGrid.FRowCount:Longint
 00514712    sub         ebx,1
>00514715    jno         0051471C
 00514717    call        @IntOver
 0051471C    cmp         ebx,0FF
>00514722    jbe         00514729
 00514724    call        @BoundErr
 00514729    test        bl,bl
>0051472B    jb          00514770
 0051472D    inc         ebx
 0051472E    mov         byte ptr [ebp-2],0
 00514732    lea         eax,[ebp-118]
 00514738    push        eax
 00514739    xor         ecx,ecx
 0051473B    mov         cl,byte ptr [ebp-2]
 0051473E    xor         edx,edx
 00514740    mov         dl,byte ptr [ebp-3]
 00514743    mov         eax,edi
 00514745    call        TStringGrid.GetCells
 0051474A    mov         edx,dword ptr [ebp-118]
 00514750    mov         eax,dword ptr [esi+2E0];TFormAppreciations.StringGrid1:TStringGrid
 00514756    mov         eax,dword ptr [eax+1F0];TStringGrid........FCanvas:TCanvas
 0051475C    call        TCanvas.TextWidth
 00514761    cmp         eax,dword ptr [ebp-8]
>00514764    jle         00514769
 00514766    mov         dword ptr [ebp-8],eax
 00514769    inc         byte ptr [ebp-2]
 0051476C    dec         bl
>0051476E    jne         00514732
 00514770    cmp         dword ptr [ebp-8],64
>00514774    jge         0051477D
 00514776    mov         dword ptr [ebp-8],64
 0051477D    mov         ecx,dword ptr [ebp-8]
 00514780    add         ecx,0A
>00514783    jno         0051478A
 00514785    call        @IntOver
 0051478A    xor         edx,edx
 0051478C    mov         dl,byte ptr [ebp-3]
 0051478F    mov         eax,edi
 00514791    call        TCustomGrid.SetColWidths
 00514796    inc         byte ptr [ebp-3]
 00514799    dec         byte ptr [ebp-0D]
>0051479C    jne         00514687
 005147A2    mov         eax,dword ptr [esi+32C];TFormAppreciations.?f32C:dword
 005147A8    mov         edx,dword ptr [eax]
 005147AA    call        dword ptr [edx+40]
 005147AD    mov         eax,dword ptr [ebp-0C]
 005147B0    call        004BEA58
 005147B5    test        al,al
>005147B7    jbe         00514826
 005147B9    mov         byte ptr [ebp-0D],al
 005147BC    mov         byte ptr [ebp-1],1
 005147C0    call        004B9E10
 005147C5    push        eax
 005147C6    lea         eax,[ebp-114]
 005147CC    push        eax
 005147CD    mov         eax,dword ptr [esi+2E4];TFormAppreciations.TabControlPeriodes:TTabControl
 005147D3    call        TCustomTabControl.GetTabIndex
 005147D8    mov         edx,eax
 005147DA    add         edx,1
>005147DD    jno         005147E4
 005147DF    call        @IntOver
 005147E4    cmp         edx,0FF
>005147EA    jbe         005147F1
 005147EC    call        @BoundErr
 005147F1    mov         cl,byte ptr [ebp-1]
 005147F4    mov         eax,dword ptr [ebp-0C]
 005147F7    call        004C2D10
 005147FC    lea         edx,[ebp-114]
 00514802    lea         eax,[ebp-11C]
 00514808    call        @LStrFromString
 0051480D    mov         edx,dword ptr [ebp-11C]
 00514813    mov         eax,dword ptr [esi+32C];TFormAppreciations.?f32C:dword
 00514819    mov         ecx,dword ptr [eax]
 0051481B    call        dword ptr [ecx+34]
 0051481E    inc         byte ptr [ebp-1]
 00514821    dec         byte ptr [ebp-0D]
>00514824    jne         005147C0
 00514826    lea         edx,[ebp-114]
 0051482C    mov         eax,dword ptr [esi+32C];TFormAppreciations.?f32C:dword
 00514832    call        004BDB3C
 00514837    lea         edx,[ebp-114]
 0051483D    lea         eax,[esi+340];TFormAppreciations.?f340:String
 00514843    call        @LStrFromString
 00514848    lea         edx,[ebp-114]
 0051484E    mov         eax,dword ptr [esi+32C];TFormAppreciations.?f32C:dword
 00514854    call        004BDCFC
 00514859    lea         edx,[ebp-114]
 0051485F    lea         eax,[esi+344];TFormAppreciations.?f344:String
 00514865    call        @LStrFromString
 0051486A    lea         edx,[ebp-114]
 00514870    mov         eax,dword ptr [esi+32C];TFormAppreciations.?f32C:dword
 00514876    call        004BDEBC
 0051487B    lea         edx,[ebp-114]
 00514881    lea         eax,[esi+348];TFormAppreciations.?f348:String
 00514887    call        @LStrFromString
 0051488C    xor         eax,eax
 0051488E    pop         edx
 0051488F    pop         ecx
 00514890    pop         ecx
 00514891    mov         dword ptr fs:[eax],edx
 00514894    push        5148B9
 00514899    lea         eax,[ebp-11C]
 0051489F    mov         edx,2
 005148A4    call        @LStrArrayClr
 005148A9    lea         eax,[ebp-14]
 005148AC    call        @LStrClr
 005148B1    ret
>005148B2    jmp         @HandleFinally
>005148B7    jmp         00514899
 005148B9    pop         edi
 005148BA    pop         esi
 005148BB    pop         ebx
 005148BC    mov         esp,ebp
 005148BE    pop         ebp
 005148BF    ret
*}
//end;

//005148C0
//procedure sub_005148C0(?:TFormAppreciations);
//begin
{*
 005148C0    push        ebp
 005148C1    mov         ebp,esp
 005148C3    add         esp,0FFFFFEE0
 005148C9    push        ebx
 005148CA    push        esi
 005148CB    push        edi
 005148CC    xor         edx,edx
 005148CE    mov         dword ptr [ebp-120],edx
 005148D4    mov         dword ptr [ebp-11C],edx
 005148DA    mov         dword ptr [ebp-118],edx
 005148E0    mov         dword ptr [ebp-14],edx
 005148E3    mov         ebx,eax
 005148E5    xor         eax,eax
 005148E7    push        ebp
 005148E8    push        514B5D
 005148ED    push        dword ptr fs:[eax]
 005148F0    mov         dword ptr fs:[eax],esp
 005148F3    mov         eax,dword ptr [ebx+328];TFormAppreciations.?f328:dword
 005148F9    mov         dword ptr [ebp-0C],eax
 005148FC    cmp         dword ptr [ebx+33C],1;TFormAppreciations.?f33C:dword
 00514903    setg        dl
 00514906    mov         eax,dword ptr [ebx+2F8];TFormAppreciations.SpeedButton2:TSpeedButton
 0051490C    mov         ecx,dword ptr [eax]
 0051490E    call        dword ptr [ecx+5C];TControl.SetEnabled
 00514911    mov         eax,dword ptr [ebp-0C]
 00514914    call        004BEA58
 00514919    and         eax,0FF
 0051491E    cmp         eax,dword ptr [ebx+33C];TFormAppreciations.?f33C:dword
 00514924    setg        dl
 00514927    mov         eax,dword ptr [ebx+2FC];TFormAppreciations.SpeedButton3:TSpeedButton
 0051492D    mov         ecx,dword ptr [eax]
 0051492F    call        dword ptr [ecx+5C];TControl.SetEnabled
 00514932    lea         ecx,[ebp-114]
 00514938    mov         edx,dword ptr [ebx+33C];TFormAppreciations.?f33C:dword
 0051493E    cmp         edx,0FF
>00514944    jbe         0051494B
 00514946    call        @BoundErr
 0051494B    mov         eax,dword ptr [ebp-0C]
 0051494E    call        004BEA64
 00514953    lea         edx,[ebp-114]
 00514959    lea         eax,[ebp-14]
 0051495C    call        @LStrFromString
 00514961    mov         edx,dword ptr [ebp-14]
 00514964    mov         eax,dword ptr [ebx+300];TFormAppreciations.Label4:TLabel
 0051496A    call        TControl.SetText
 0051496F    mov         eax,dword ptr [ebp-0C]
 00514972    call        004C8AE8
 00514977    and         eax,0FF
 0051497C    test        eax,eax
>0051497E    jle         00514AB7
 00514984    mov         dword ptr [ebp-10],eax
 00514987    mov         dword ptr [ebp-4],1
 0051498E    mov         eax,dword ptr [ebp-0C]
 00514991    call        004BE9E0
 00514996    mov         esi,eax
 00514998    and         esi,0FF
 0051499E    test        esi,esi
>005149A0    jle         00514A1E
 005149A2    mov         edi,1
 005149A7    mov         eax,dword ptr [ebp-4]
 005149AA    cmp         eax,0FF
>005149AF    jbe         005149B6
 005149B1    call        @BoundErr
 005149B6    push        eax
 005149B7    lea         eax,[ebp-114]
 005149BD    push        eax
 005149BE    mov         ecx,dword ptr [ebx+33C];TFormAppreciations.?f33C:dword
 005149C4    cmp         ecx,0FF
>005149CA    jbe         005149D1
 005149CC    call        @BoundErr
 005149D1    mov         edx,edi
 005149D3    cmp         edx,0FF
>005149D9    jbe         005149E0
 005149DB    call        @BoundErr
 005149E0    mov         eax,dword ptr [ebp-0C]
 005149E3    call        004C2C00
 005149E8    lea         edx,[ebp-114]
 005149EE    lea         eax,[ebp-118]
 005149F4    call        @LStrFromString
 005149F9    mov         eax,dword ptr [ebp-118]
 005149FF    push        eax
 00514A00    mov         edx,dword ptr [ebp-4]
 00514A03    add         edx,4
>00514A06    jno         00514A0D
 00514A08    call        @IntOver
 00514A0D    mov         ecx,edi
 00514A0F    mov         eax,dword ptr [ebx+2F4];TFormAppreciations.StringGrid2:TStringGrid
 00514A15    call        TStringGrid.SetCells
 00514A1A    inc         edi
 00514A1B    dec         esi
>00514A1C    jne         005149A7
 00514A1E    xor         edi,edi
 00514A20    mov         eax,dword ptr [ebx+2F4];TFormAppreciations.StringGrid2:TStringGrid
 00514A26    mov         esi,dword ptr [eax+234];TStringGrid.FRowCount:Longint
 00514A2C    sub         esi,1
>00514A2F    jno         00514A36
 00514A31    call        @IntOver
 00514A36    test        esi,esi
>00514A38    jl          00514A87
 00514A3A    inc         esi
 00514A3B    mov         dword ptr [ebp-8],0
 00514A42    lea         eax,[ebp-11C]
 00514A48    push        eax
 00514A49    mov         edx,dword ptr [ebp-4]
 00514A4C    add         edx,4
>00514A4F    jno         00514A56
 00514A51    call        @IntOver
 00514A56    mov         ecx,dword ptr [ebp-8]
 00514A59    mov         eax,dword ptr [ebx+2F4];TFormAppreciations.StringGrid2:TStringGrid
 00514A5F    call        TStringGrid.GetCells
 00514A64    mov         edx,dword ptr [ebp-11C]
 00514A6A    mov         eax,dword ptr [ebx+2F4];TFormAppreciations.StringGrid2:TStringGrid
 00514A70    mov         eax,dword ptr [eax+1F0];TStringGrid.........FCanvas:TCanvas
 00514A76    call        TCanvas.TextWidth
 00514A7B    cmp         eax,edi
>00514A7D    jle         00514A81
 00514A7F    mov         edi,eax
 00514A81    inc         dword ptr [ebp-8]
 00514A84    dec         esi
>00514A85    jne         00514A42
 00514A87    mov         ecx,edi
 00514A89    add         ecx,0A
>00514A8C    jno         00514A93
 00514A8E    call        @IntOver
 00514A93    mov         edx,dword ptr [ebp-4]
 00514A96    add         edx,4
>00514A99    jno         00514AA0
 00514A9B    call        @IntOver
 00514AA0    mov         eax,dword ptr [ebx+2F4];TFormAppreciations.StringGrid2:TStringGrid
 00514AA6    call        TCustomGrid.SetColWidths
 00514AAB    inc         dword ptr [ebp-4]
 00514AAE    dec         dword ptr [ebp-10]
>00514AB1    jne         0051498E
 00514AB7    mov         eax,dword ptr [ebp-0C]
 00514ABA    call        004BE9E0
 00514ABF    and         eax,0FF
 00514AC4    test        eax,eax
>00514AC6    jle         00514B37
 00514AC8    mov         dword ptr [ebp-10],eax
 00514ACB    mov         edi,1
 00514AD0    call        004B9E10
 00514AD5    push        eax
 00514AD6    lea         eax,[ebp-114]
 00514ADC    push        eax
 00514ADD    mov         ecx,dword ptr [ebx+33C];TFormAppreciations.?f33C:dword
 00514AE3    cmp         ecx,0FF
>00514AE9    jbe         00514AF0
 00514AEB    call        @BoundErr
 00514AF0    mov         edx,edi
 00514AF2    cmp         edx,0FF
>00514AF8    jbe         00514AFF
 00514AFA    call        @BoundErr
 00514AFF    mov         eax,dword ptr [ebp-0C]
 00514B02    call        004C2D10
 00514B07    lea         edx,[ebp-114]
 00514B0D    lea         eax,[ebp-120]
 00514B13    call        @LStrFromString
 00514B18    mov         eax,dword ptr [ebp-120]
 00514B1E    push        eax
 00514B1F    mov         ecx,edi
 00514B21    mov         edx,4
 00514B26    mov         eax,dword ptr [ebx+2F4];TFormAppreciations.StringGrid2:TStringGrid
 00514B2C    call        TStringGrid.SetCells
 00514B31    inc         edi
 00514B32    dec         dword ptr [ebp-10]
>00514B35    jne         00514AD0
 00514B37    xor         eax,eax
 00514B39    pop         edx
 00514B3A    pop         ecx
 00514B3B    pop         ecx
 00514B3C    mov         dword ptr fs:[eax],edx
 00514B3F    push        514B64
 00514B44    lea         eax,[ebp-120]
 00514B4A    mov         edx,3
 00514B4F    call        @LStrArrayClr
 00514B54    lea         eax,[ebp-14]
 00514B57    call        @LStrClr
 00514B5C    ret
>00514B5D    jmp         @HandleFinally
>00514B62    jmp         00514B44
 00514B64    pop         edi
 00514B65    pop         esi
 00514B66    pop         ebx
 00514B67    mov         esp,ebp
 00514B69    pop         ebp
 00514B6A    ret
*}
//end;

//00514B6C
procedure TFormAppreciations.SpeedButton3Click(Sender:TObject);
begin
{*
 00514B6C    push        ebx
 00514B6D    push        ecx
 00514B6E    mov         ebx,eax
 00514B70    mov         eax,dword ptr [ebx+328];TFormAppreciations.?f328:dword
 00514B76    call        004BEA58
 00514B7B    and         eax,0FF
 00514B80    cmp         eax,dword ptr [ebx+33C];TFormAppreciations.?f33C:dword
>00514B86    jle         00514BB7
 00514B88    add         dword ptr [ebx+33C],1;TFormAppreciations.?f33C:dword
>00514B8F    jno         00514B96
 00514B91    call        @IntOver
 00514B96    mov         eax,ebx
 00514B98    call        005148C0
 00514B9D    mov         eax,dword ptr [ebx+334];TFormAppreciations.?f334:dword
 00514BA3    push        eax
 00514BA4    lea         eax,[esp+4]
 00514BA8    push        eax
 00514BA9    mov         ecx,1
 00514BAE    mov         edx,ebx
 00514BB0    mov         eax,ebx
 00514BB2    call        TFormAppreciations.StringGrid2SelectCell
 00514BB7    pop         edx
 00514BB8    pop         ebx
 00514BB9    ret
*}
end;

//00514BBC
procedure TFormAppreciations.SpeedButton4Click(Sender:TObject);
begin
{*
 00514BBC    push        ebx
 00514BBD    push        ecx
 00514BBE    mov         ebx,eax
 00514BC0    mov         dword ptr [ebx+33C],1;TFormAppreciations.?f33C:dword
 00514BCA    mov         eax,ebx
 00514BCC    call        005148C0
 00514BD1    mov         eax,dword ptr [ebx+334];TFormAppreciations.?f334:dword
 00514BD7    push        eax
 00514BD8    lea         eax,[esp+4]
 00514BDC    push        eax
 00514BDD    mov         ecx,1
 00514BE2    mov         edx,ebx
 00514BE4    mov         eax,ebx
 00514BE6    call        TFormAppreciations.StringGrid2SelectCell
 00514BEB    pop         edx
 00514BEC    pop         ebx
 00514BED    ret
*}
end;

//00514BF0
procedure TFormAppreciations.SpeedButton5Click(Sender:TObject);
begin
{*
 00514BF0    push        ebx
 00514BF1    push        ecx
 00514BF2    mov         ebx,eax
 00514BF4    mov         eax,dword ptr [ebx+328];TFormAppreciations.?f328:dword
 00514BFA    call        004BEA58
 00514BFF    and         eax,0FF
 00514C04    mov         dword ptr [ebx+33C],eax;TFormAppreciations.?f33C:dword
 00514C0A    mov         eax,ebx
 00514C0C    call        005148C0
 00514C11    mov         eax,dword ptr [ebx+334];TFormAppreciations.?f334:dword
 00514C17    push        eax
 00514C18    lea         eax,[esp+4]
 00514C1C    push        eax
 00514C1D    mov         ecx,1
 00514C22    mov         edx,ebx
 00514C24    mov         eax,ebx
 00514C26    call        TFormAppreciations.StringGrid2SelectCell
 00514C2B    pop         edx
 00514C2C    pop         ebx
 00514C2D    ret
*}
end;

//00514C30
procedure TFormAppreciations.SpeedButtonElevePrecedentClick(Sender:TObject);
begin
{*
 00514C30    push        ebx
 00514C31    push        ecx
 00514C32    mov         ebx,eax
 00514C34    cmp         dword ptr [ebx+338],1;TFormAppreciations.?f338:dword
>00514C3B    jle         00514CA2
 00514C3D    sub         dword ptr [ebx+338],1
>00514C44    jno         00514C4B
 00514C46    call        @IntOver
 00514C4B    mov         eax,ebx
 00514C4D    call        00514620
 00514C52    mov         eax,dword ptr [ebx+338];TFormAppreciations.?f338:dword
 00514C58    sub         eax,1
>00514C5B    jno         00514C62
 00514C5D    call        @IntOver
 00514C62    push        eax
 00514C63    lea         eax,[esp+4]
 00514C67    push        eax
 00514C68    mov         eax,dword ptr [ebx+324];TFormAppreciations.TabSetColonnesBulletin:TTabSet
 00514C6E    mov         ecx,dword ptr [eax+204];TTabSet.TabIndex:Integer
 00514C74    add         ecx,1
>00514C77    jno         00514C7E
 00514C79    call        @IntOver
 00514C7E    mov         edx,ebx
 00514C80    mov         eax,ebx
 00514C82    call        TFormAppreciations.StringGrid1SelectCell
 00514C87    mov         edx,dword ptr [ebx+338];TFormAppreciations.?f338:dword
 00514C8D    sub         edx,1
>00514C90    jno         00514C97
 00514C92    call        @IntOver
 00514C97    mov         eax,dword ptr [ebx+2E0];TFormAppreciations.StringGrid1:TStringGrid
 00514C9D    call        TCustomGrid.SetTopRow
 00514CA2    pop         edx
 00514CA3    pop         ebx
 00514CA4    ret
*}
end;

//00514CA8
procedure TFormAppreciations.SpeedButtonEleveSuivantClick(Sender:TObject);
begin
{*
 00514CA8    push        ebx
 00514CA9    push        ecx
 00514CAA    mov         ebx,eax
 00514CAC    mov         eax,dword ptr [ebx+328];TFormAppreciations.?f328:dword
 00514CB2    call        004BEA58
 00514CB7    and         eax,0FF
 00514CBC    cmp         eax,dword ptr [ebx+338];TFormAppreciations.?f338:dword
>00514CC2    jle         00514D29
 00514CC4    add         dword ptr [ebx+338],1;TFormAppreciations.?f338:dword
>00514CCB    jno         00514CD2
 00514CCD    call        @IntOver
 00514CD2    mov         eax,ebx
 00514CD4    call        00514620
 00514CD9    mov         eax,dword ptr [ebx+338];TFormAppreciations.?f338:dword
 00514CDF    sub         eax,1
>00514CE2    jno         00514CE9
 00514CE4    call        @IntOver
 00514CE9    push        eax
 00514CEA    lea         eax,[esp+4]
 00514CEE    push        eax
 00514CEF    mov         eax,dword ptr [ebx+324];TFormAppreciations.TabSetColonnesBulletin:TTabSet
 00514CF5    mov         ecx,dword ptr [eax+204];TTabSet.TabIndex:Integer
 00514CFB    add         ecx,1
>00514CFE    jno         00514D05
 00514D00    call        @IntOver
 00514D05    mov         edx,ebx
 00514D07    mov         eax,ebx
 00514D09    call        TFormAppreciations.StringGrid1SelectCell
 00514D0E    mov         edx,dword ptr [ebx+338];TFormAppreciations.?f338:dword
 00514D14    sub         edx,2
>00514D17    jno         00514D1E
 00514D19    call        @IntOver
 00514D1E    mov         eax,dword ptr [ebx+2E0];TFormAppreciations.StringGrid1:TStringGrid
 00514D24    call        TCustomGrid.SetTopRow
 00514D29    pop         edx
 00514D2A    pop         ebx
 00514D2B    ret
*}
end;

//00514D2C
procedure TFormAppreciations.Memo1Exit(Sender:TObject);
begin
{*
 00514D2C    mov         edx,dword ptr [eax+2D4];TFormAppreciations.PageControl1:TPageControl
 00514D32    mov         edx,dword ptr [edx+244];TPageControl.ActivePage:TTabSheet
 00514D38    cmp         edx,dword ptr [eax+2D8];TFormAppreciations.TabSheet1:TTabSheet
>00514D3E    jne         00514D46
 00514D40    call        00514620
 00514D45    ret
 00514D46    call        005148C0
 00514D4B    ret
*}
end;

//00514D4C
procedure TFormAppreciations.Memo1Change;
begin
{*
 00514D4C    push        ebp
 00514D4D    mov         ebp,esp
 00514D4F    add         esp,0FFFFFEF0
 00514D55    push        ebx
 00514D56    push        esi
 00514D57    xor         ecx,ecx
 00514D59    mov         dword ptr [ebp-110],ecx
 00514D5F    mov         dword ptr [ebp-10C],ecx
 00514D65    mov         dword ptr [ebp-108],ecx
 00514D6B    mov         dword ptr [ebp-104],ecx
 00514D71    mov         ebx,eax
 00514D73    xor         eax,eax
 00514D75    push        ebp
 00514D76    push        514F71
 00514D7B    push        dword ptr fs:[eax]
 00514D7E    mov         dword ptr fs:[eax],esp
 00514D81    mov         esi,dword ptr [ebx+328];TFormAppreciations.?f328:dword
 00514D87    mov         eax,dword ptr [ebx+2D4];TFormAppreciations.PageControl1:TPageControl
 00514D8D    mov         eax,dword ptr [eax+244];TPageControl.ActivePage:TTabSheet
 00514D93    cmp         eax,dword ptr [ebx+2D8];TFormAppreciations.TabSheet1:TTabSheet
>00514D99    jne         00514E89
 00514D9F    cmp         byte ptr [ebx+34C],0;TFormAppreciations.?f34C:byte
>00514DA6    je          00514F53
 00514DAC    lea         edx,[ebp-104]
 00514DB2    mov         eax,dword ptr [ebx+318];TFormAppreciations.Memo1:TMemo
 00514DB8    call        TControl.GetText
 00514DBD    mov         edx,dword ptr [ebp-104]
 00514DC3    lea         eax,[ebp-100]
 00514DC9    mov         ecx,0FF
 00514DCE    call        @LStrToString
 00514DD3    lea         eax,[ebp-100]
 00514DD9    push        eax
 00514DDA    mov         eax,dword ptr [ebx+324];TFormAppreciations.TabSetColonnesBulletin:TTabSet
 00514DE0    mov         eax,dword ptr [eax+204];TTabSet.TabIndex:Integer
 00514DE6    add         eax,1
>00514DE9    jno         00514DF0
 00514DEB    call        @IntOver
 00514DF0    cmp         eax,0FF
>00514DF5    jbe         00514DFC
 00514DF7    call        @BoundErr
 00514DFC    push        eax
 00514DFD    mov         eax,dword ptr [ebx+2E4];TFormAppreciations.TabControlPeriodes:TTabControl
 00514E03    call        TCustomTabControl.GetTabIndex
 00514E08    mov         edx,eax
 00514E0A    add         edx,1
>00514E0D    jno         00514E14
 00514E0F    call        @IntOver
 00514E14    cmp         edx,0FF
>00514E1A    jbe         00514E21
 00514E1C    call        @BoundErr
 00514E21    mov         ecx,dword ptr [ebx+330];TFormAppreciations.?f330:dword
 00514E27    add         ecx,1
>00514E2A    jno         00514E31
 00514E2C    call        @IntOver
 00514E31    cmp         ecx,0FF
>00514E37    jbe         00514E3E
 00514E39    call        @BoundErr
 00514E3E    mov         eax,esi
 00514E40    call        004C3798
 00514E45    lea         edx,[ebp-108]
 00514E4B    mov         eax,dword ptr [ebx+318];TFormAppreciations.Memo1:TMemo
 00514E51    call        TControl.GetText
 00514E56    mov         eax,dword ptr [ebp-108]
 00514E5C    push        eax
 00514E5D    mov         eax,dword ptr [ebx+324];TFormAppreciations.TabSetColonnesBulletin:TTabSet
 00514E63    mov         edx,dword ptr [eax+204];TTabSet.TabIndex:Integer
 00514E69    add         edx,1
>00514E6C    jno         00514E73
 00514E6E    call        @IntOver
 00514E73    mov         ecx,dword ptr [ebx+330];TFormAppreciations.?f330:dword
 00514E79    mov         eax,dword ptr [ebx+2E0];TFormAppreciations.StringGrid1:TStringGrid
 00514E7F    call        TStringGrid.SetCells
>00514E84    jmp         00514F53
 00514E89    cmp         byte ptr [ebx+34C],0;TFormAppreciations.?f34C:byte
>00514E90    je          00514F53
 00514E96    lea         edx,[ebp-10C]
 00514E9C    mov         eax,dword ptr [ebx+318];TFormAppreciations.Memo1:TMemo
 00514EA2    call        TControl.GetText
 00514EA7    mov         edx,dword ptr [ebp-10C]
 00514EAD    lea         eax,[ebp-100]
 00514EB3    mov         ecx,0FF
 00514EB8    call        @LStrToString
 00514EBD    lea         eax,[ebp-100]
 00514EC3    push        eax
 00514EC4    mov         eax,dword ptr [ebx+324];TFormAppreciations.TabSetColonnesBulletin:TTabSet
 00514ECA    mov         eax,dword ptr [eax+204];TTabSet.TabIndex:Integer
 00514ED0    add         eax,1
>00514ED3    jno         00514EDA
 00514ED5    call        @IntOver
 00514EDA    cmp         eax,0FF
>00514EDF    jbe         00514EE6
 00514EE1    call        @BoundErr
 00514EE6    push        eax
 00514EE7    mov         ecx,dword ptr [ebx+33C];TFormAppreciations.?f33C:dword
 00514EED    cmp         ecx,0FF
>00514EF3    jbe         00514EFA
 00514EF5    call        @BoundErr
 00514EFA    mov         edx,dword ptr [ebx+334];TFormAppreciations.?f334:dword
 00514F00    cmp         edx,0FF
>00514F06    jbe         00514F0D
 00514F08    call        @BoundErr
 00514F0D    mov         eax,esi
 00514F0F    call        004C3798
 00514F14    lea         edx,[ebp-110]
 00514F1A    mov         eax,dword ptr [ebx+318];TFormAppreciations.Memo1:TMemo
 00514F20    call        TControl.GetText
 00514F25    mov         eax,dword ptr [ebp-110]
 00514F2B    push        eax
 00514F2C    mov         eax,dword ptr [ebx+324];TFormAppreciations.TabSetColonnesBulletin:TTabSet
 00514F32    mov         edx,dword ptr [eax+204];TTabSet.TabIndex:Integer
 00514F38    add         edx,5
>00514F3B    jno         00514F42
 00514F3D    call        @IntOver
 00514F42    mov         ecx,dword ptr [ebx+334];TFormAppreciations.?f334:dword
 00514F48    mov         eax,dword ptr [ebx+2F4];TFormAppreciations.StringGrid2:TStringGrid
 00514F4E    call        TStringGrid.SetCells
 00514F53    xor         eax,eax
 00514F55    pop         edx
 00514F56    pop         ecx
 00514F57    pop         ecx
 00514F58    mov         dword ptr fs:[eax],edx
 00514F5B    push        514F78
 00514F60    lea         eax,[ebp-110]
 00514F66    mov         edx,4
 00514F6B    call        @LStrArrayClr
 00514F70    ret
>00514F71    jmp         @HandleFinally
>00514F76    jmp         00514F60
 00514F78    pop         esi
 00514F79    pop         ebx
 00514F7A    mov         esp,ebp
 00514F7C    pop         ebp
 00514F7D    ret
*}
end;

//00514F80
procedure TFormAppreciations.PageControl1Change;
begin
{*
 00514F80    push        ebp
 00514F81    mov         ebp,esp
 00514F83    add         esp,0FFFFFEE8
 00514F89    push        ebx
 00514F8A    push        esi
 00514F8B    xor         ecx,ecx
 00514F8D    mov         dword ptr [ebp-118],ecx
 00514F93    mov         dword ptr [ebp-114],ecx
 00514F99    mov         dword ptr [ebp-110],ecx
 00514F9F    mov         dword ptr [ebp-10C],ecx
 00514FA5    mov         dword ptr [ebp-4],ecx
 00514FA8    mov         esi,eax
 00514FAA    xor         eax,eax
 00514FAC    push        ebp
 00514FAD    push        515252
 00514FB2    push        dword ptr fs:[eax]
 00514FB5    mov         dword ptr fs:[eax],esp
 00514FB8    mov         eax,dword ptr [esi+2D4];TFormAppreciations.PageControl1:TPageControl
 00514FBE    mov         eax,dword ptr [eax+244];TPageControl.ActivePage:TTabSheet
 00514FC4    cmp         eax,dword ptr [esi+2D8];TFormAppreciations.TabSheet1:TTabSheet
>00514FCA    jne         00515105
 00514FD0    mov         eax,esi
 00514FD2    call        00514620
 00514FD7    mov         eax,dword ptr [esi+338];TFormAppreciations.?f338:dword
 00514FDD    sub         eax,1
>00514FE0    jno         00514FE7
 00514FE2    call        @IntOver
 00514FE7    push        eax
 00514FE8    lea         eax,[ebp-5]
 00514FEB    push        eax
 00514FEC    mov         ecx,1
 00514FF1    mov         edx,esi
 00514FF3    mov         eax,esi
 00514FF5    call        TFormAppreciations.StringGrid1SelectCell
 00514FFA    mov         byte ptr [esi+34C],0;TFormAppreciations.?f34C:byte
 00515001    mov         eax,dword ptr [esi+318];TFormAppreciations.Memo1:TMemo
 00515007    mov         edx,dword ptr [eax]
 00515009    call        dword ptr [edx+0CC];TCustomEdit.Clear
 0051500F    mov         eax,dword ptr [esi+324];TFormAppreciations.TabSetColonnesBulletin:TTabSet
 00515015    mov         eax,dword ptr [eax+204];TTabSet.TabIndex:Integer
 0051501B    add         eax,1
>0051501E    jno         00515025
 00515020    call        @IntOver
 00515025    cmp         eax,0FF
>0051502A    jbe         00515031
 0051502C    call        @BoundErr
 00515031    push        eax
 00515032    lea         eax,[ebp-108]
 00515038    push        eax
 00515039    mov         eax,dword ptr [esi+2E4];TFormAppreciations.TabControlPeriodes:TTabControl
 0051503F    call        TCustomTabControl.GetTabIndex
 00515044    mov         edx,eax
 00515046    add         edx,1
>00515049    jno         00515050
 0051504B    call        @IntOver
 00515050    cmp         edx,0FF
>00515056    jbe         0051505D
 00515058    call        @BoundErr
 0051505D    mov         ecx,dword ptr [esi+330];TFormAppreciations.?f330:dword
 00515063    add         ecx,1
>00515066    jno         0051506D
 00515068    call        @IntOver
 0051506D    cmp         ecx,0FF
>00515073    jbe         0051507A
 00515075    call        @BoundErr
 0051507A    mov         eax,dword ptr [esi+328];TFormAppreciations.?f328:dword
 00515080    call        004C2C00
 00515085    lea         edx,[ebp-108]
 0051508B    lea         eax,[ebp-4]
 0051508E    call        @LStrFromString
 00515093    lea         edx,[ebp-10C]
 00515099    mov         eax,dword ptr [ebp-4]
 0051509C    call        Trim
 005150A1    cmp         dword ptr [ebp-10C],0
>005150A8    je          005150B8
 005150AA    mov         edx,dword ptr [ebp-4]
 005150AD    mov         eax,dword ptr [esi+318];TFormAppreciations.Memo1:TMemo
 005150B3    call        TControl.SetText
 005150B8    mov         eax,dword ptr [esi+318];TFormAppreciations.Memo1:TMemo
 005150BE    cmp         byte ptr [eax+168],0;TMemo.FShowing:Boolean
>005150C5    je          005150CF
 005150C7    mov         edx,dword ptr [eax]
 005150C9    call        dword ptr [edx+0B0];TWinControl.SetFocus
 005150CF    lea         edx,[ebp-110]
 005150D5    mov         ebx,dword ptr [esi+318];TFormAppreciations.Memo1:TMemo
 005150DB    mov         eax,ebx
 005150DD    call        TControl.GetText
 005150E2    mov         eax,dword ptr [ebp-110]
 005150E8    call        @LStrLen
 005150ED    mov         edx,eax
 005150EF    mov         eax,ebx
 005150F1    mov         ecx,dword ptr [eax]
 005150F3    call        dword ptr [ecx+0C8];TCustomEdit.SetSelStart
 005150F9    mov         byte ptr [esi+34C],1;TFormAppreciations.?f34C:byte
>00515100    jmp         00515210
 00515105    mov         eax,esi
 00515107    call        005148C0
 0051510C    mov         eax,dword ptr [esi+334];TFormAppreciations.?f334:dword
 00515112    push        eax
 00515113    lea         eax,[ebp-5]
 00515116    push        eax
 00515117    mov         ecx,1
 0051511C    mov         edx,esi
 0051511E    mov         eax,esi
 00515120    call        TFormAppreciations.StringGrid2SelectCell
 00515125    mov         byte ptr [esi+34C],0;TFormAppreciations.?f34C:byte
 0051512C    mov         eax,dword ptr [esi+318];TFormAppreciations.Memo1:TMemo
 00515132    mov         edx,dword ptr [eax]
 00515134    call        dword ptr [edx+0CC];TCustomEdit.Clear
 0051513A    mov         eax,dword ptr [esi+324];TFormAppreciations.TabSetColonnesBulletin:TTabSet
 00515140    mov         eax,dword ptr [eax+204];TTabSet.TabIndex:Integer
 00515146    add         eax,1
>00515149    jno         00515150
 0051514B    call        @IntOver
 00515150    cmp         eax,0FF
>00515155    jbe         0051515C
 00515157    call        @BoundErr
 0051515C    push        eax
 0051515D    lea         eax,[ebp-108]
 00515163    push        eax
 00515164    mov         ecx,dword ptr [esi+33C];TFormAppreciations.?f33C:dword
 0051516A    cmp         ecx,0FF
>00515170    jbe         00515177
 00515172    call        @BoundErr
 00515177    mov         edx,dword ptr [esi+334];TFormAppreciations.?f334:dword
 0051517D    cmp         edx,0FF
>00515183    jbe         0051518A
 00515185    call        @BoundErr
 0051518A    mov         eax,dword ptr [esi+328];TFormAppreciations.?f328:dword
 00515190    call        004C2C00
 00515195    lea         edx,[ebp-108]
 0051519B    lea         eax,[ebp-4]
 0051519E    call        @LStrFromString
 005151A3    lea         edx,[ebp-114]
 005151A9    mov         eax,dword ptr [ebp-4]
 005151AC    call        Trim
 005151B1    cmp         dword ptr [ebp-114],0
>005151B8    je          005151C8
 005151BA    mov         edx,dword ptr [ebp-4]
 005151BD    mov         eax,dword ptr [esi+318];TFormAppreciations.Memo1:TMemo
 005151C3    call        TControl.SetText
 005151C8    mov         eax,dword ptr [esi+318];TFormAppreciations.Memo1:TMemo
 005151CE    cmp         byte ptr [eax+168],0;TMemo.FShowing:Boolean
>005151D5    je          005151DF
 005151D7    mov         edx,dword ptr [eax]
 005151D9    call        dword ptr [edx+0B0];TWinControl.SetFocus
 005151DF    lea         edx,[ebp-118]
 005151E5    mov         ebx,dword ptr [esi+318];TFormAppreciations.Memo1:TMemo
 005151EB    mov         eax,ebx
 005151ED    call        TControl.GetText
 005151F2    mov         eax,dword ptr [ebp-118]
 005151F8    call        @LStrLen
 005151FD    mov         edx,eax
 005151FF    mov         eax,ebx
 00515201    mov         ecx,dword ptr [eax]
 00515203    call        dword ptr [ecx+0C8];TCustomEdit.SetSelStart
 00515209    mov         byte ptr [esi+34C],1;TFormAppreciations.?f34C:byte
 00515210    xor         eax,eax
 00515212    pop         edx
 00515213    pop         ecx
 00515214    pop         ecx
 00515215    mov         dword ptr fs:[eax],edx
 00515218    push        515259
 0051521D    lea         eax,[ebp-118]
 00515223    call        @LStrClr
 00515228    lea         eax,[ebp-114]
 0051522E    call        @LStrClr
 00515233    lea         eax,[ebp-110]
 00515239    call        @LStrClr
 0051523E    lea         eax,[ebp-10C]
 00515244    call        @LStrClr
 00515249    lea         eax,[ebp-4]
 0051524C    call        @LStrClr
 00515251    ret
>00515252    jmp         @HandleFinally
>00515257    jmp         0051521D
 00515259    pop         esi
 0051525A    pop         ebx
 0051525B    mov         esp,ebp
 0051525D    pop         ebp
 0051525E    ret
*}
end;

//00515260
procedure TFormAppreciations.Memo1KeyDown(Sender:TObject; var Key:Word; Shift:TShiftState);
begin
{*
 00515260    push        ebp
 00515261    mov         ebp,esp
 00515263    add         esp,0FFFFFEE8
 00515269    push        ebx
 0051526A    push        esi
 0051526B    xor         ebx,ebx
 0051526D    mov         dword ptr [ebp-118],ebx
 00515273    mov         dword ptr [ebp-114],ebx
 00515279    mov         dword ptr [ebp-110],ebx
 0051527F    mov         dword ptr [ebp-10C],ebx
 00515285    mov         dword ptr [ebp-8],ebx
 00515288    mov         esi,eax
 0051528A    xor         eax,eax
 0051528C    push        ebp
 0051528D    push        5155C5
 00515292    push        dword ptr fs:[eax]
 00515295    mov         dword ptr fs:[eax],esp
 00515298    cmp         word ptr [ecx],0D
>0051529C    jne         00515583
 005152A2    mov         eax,dword ptr [esi+2D4];TFormAppreciations.PageControl1:TPageControl
 005152A8    mov         eax,dword ptr [eax+244];TPageControl.ActivePage:TTabSheet
 005152AE    cmp         eax,dword ptr [esi+2D8];TFormAppreciations.TabSheet1:TTabSheet
>005152B4    jne         00515441
 005152BA    mov         eax,dword ptr [esi+328];TFormAppreciations.?f328:dword
 005152C0    call        004BEA58
 005152C5    and         eax,0FF
 005152CA    cmp         eax,dword ptr [esi+338];TFormAppreciations.?f338:dword
>005152D0    jle         005152E0
 005152D2    add         dword ptr [esi+338],1;TFormAppreciations.?f338:dword
>005152D9    jno         005152E0
 005152DB    call        @IntOver
 005152E0    mov         eax,esi
 005152E2    call        00514620
 005152E7    mov         eax,dword ptr [esi+338];TFormAppreciations.?f338:dword
 005152ED    sub         eax,1
>005152F0    jno         005152F7
 005152F2    call        @IntOver
 005152F7    push        eax
 005152F8    lea         eax,[ebp-1]
 005152FB    push        eax
 005152FC    mov         eax,dword ptr [esi+324];TFormAppreciations.TabSetColonnesBulletin:TTabSet
 00515302    mov         ecx,dword ptr [eax+204];TTabSet.TabIndex:Integer
 00515308    add         ecx,1
>0051530B    jno         00515312
 0051530D    call        @IntOver
 00515312    mov         edx,esi
 00515314    mov         eax,esi
 00515316    call        TFormAppreciations.StringGrid1SelectCell
 0051531B    mov         edx,dword ptr [esi+338];TFormAppreciations.?f338:dword
 00515321    sub         edx,2
>00515324    jno         0051532B
 00515326    call        @IntOver
 0051532B    mov         eax,dword ptr [esi+2E0];TFormAppreciations.StringGrid1:TStringGrid
 00515331    call        TCustomGrid.SetTopRow
 00515336    mov         byte ptr [esi+34C],0;TFormAppreciations.?f34C:byte
 0051533D    mov         eax,dword ptr [esi+318];TFormAppreciations.Memo1:TMemo
 00515343    mov         edx,dword ptr [eax]
 00515345    call        dword ptr [edx+0CC];TCustomEdit.Clear
 0051534B    mov         eax,dword ptr [esi+324];TFormAppreciations.TabSetColonnesBulletin:TTabSet
 00515351    mov         eax,dword ptr [eax+204];TTabSet.TabIndex:Integer
 00515357    add         eax,1
>0051535A    jno         00515361
 0051535C    call        @IntOver
 00515361    cmp         eax,0FF
>00515366    jbe         0051536D
 00515368    call        @BoundErr
 0051536D    push        eax
 0051536E    lea         eax,[ebp-108]
 00515374    push        eax
 00515375    mov         eax,dword ptr [esi+2E4];TFormAppreciations.TabControlPeriodes:TTabControl
 0051537B    call        TCustomTabControl.GetTabIndex
 00515380    mov         edx,eax
 00515382    add         edx,1
>00515385    jno         0051538C
 00515387    call        @IntOver
 0051538C    cmp         edx,0FF
>00515392    jbe         00515399
 00515394    call        @BoundErr
 00515399    mov         ecx,dword ptr [esi+330];TFormAppreciations.?f330:dword
 0051539F    add         ecx,1
>005153A2    jno         005153A9
 005153A4    call        @IntOver
 005153A9    cmp         ecx,0FF
>005153AF    jbe         005153B6
 005153B1    call        @BoundErr
 005153B6    mov         eax,dword ptr [esi+328];TFormAppreciations.?f328:dword
 005153BC    call        004C2C00
 005153C1    lea         edx,[ebp-108]
 005153C7    lea         eax,[ebp-8]
 005153CA    call        @LStrFromString
 005153CF    lea         edx,[ebp-10C]
 005153D5    mov         eax,dword ptr [ebp-8]
 005153D8    call        Trim
 005153DD    cmp         dword ptr [ebp-10C],0
>005153E4    je          005153F4
 005153E6    mov         edx,dword ptr [ebp-8]
 005153E9    mov         eax,dword ptr [esi+318];TFormAppreciations.Memo1:TMemo
 005153EF    call        TControl.SetText
 005153F4    mov         eax,dword ptr [esi+318];TFormAppreciations.Memo1:TMemo
 005153FA    cmp         byte ptr [eax+168],0;TMemo.FShowing:Boolean
>00515401    je          0051540B
 00515403    mov         edx,dword ptr [eax]
 00515405    call        dword ptr [edx+0B0];TWinControl.SetFocus
 0051540B    lea         edx,[ebp-110]
 00515411    mov         ebx,dword ptr [esi+318];TFormAppreciations.Memo1:TMemo
 00515417    mov         eax,ebx
 00515419    call        TControl.GetText
 0051541E    mov         eax,dword ptr [ebp-110]
 00515424    call        @LStrLen
 00515429    mov         edx,eax
 0051542B    mov         eax,ebx
 0051542D    mov         ecx,dword ptr [eax]
 0051542F    call        dword ptr [ecx+0C8];TCustomEdit.SetSelStart
 00515435    mov         byte ptr [esi+34C],1;TFormAppreciations.?f34C:byte
>0051543C    jmp         00515583
 00515441    mov         eax,dword ptr [esi+328];TFormAppreciations.?f328:dword
 00515447    call        004BE9E0
 0051544C    and         eax,0FF
 00515451    cmp         eax,dword ptr [esi+334];TFormAppreciations.?f334:dword
>00515457    jle         00515467
 00515459    add         dword ptr [esi+334],1;TFormAppreciations.?f334:dword
>00515460    jno         00515467
 00515462    call        @IntOver
 00515467    mov         eax,esi
 00515469    call        005148C0
 0051546E    mov         eax,dword ptr [esi+334];TFormAppreciations.?f334:dword
 00515474    push        eax
 00515475    lea         eax,[ebp-1]
 00515478    push        eax
 00515479    mov         eax,dword ptr [esi+324];TFormAppreciations.TabSetColonnesBulletin:TTabSet
 0051547F    mov         ecx,dword ptr [eax+204];TTabSet.TabIndex:Integer
 00515485    add         ecx,1
>00515488    jno         0051548F
 0051548A    call        @IntOver
 0051548F    mov         edx,esi
 00515491    mov         eax,esi
 00515493    call        TFormAppreciations.StringGrid2SelectCell
 00515498    mov         byte ptr [esi+34C],0;TFormAppreciations.?f34C:byte
 0051549F    mov         eax,dword ptr [esi+318];TFormAppreciations.Memo1:TMemo
 005154A5    mov         edx,dword ptr [eax]
 005154A7    call        dword ptr [edx+0CC];TCustomEdit.Clear
 005154AD    mov         eax,dword ptr [esi+324];TFormAppreciations.TabSetColonnesBulletin:TTabSet
 005154B3    mov         eax,dword ptr [eax+204];TTabSet.TabIndex:Integer
 005154B9    add         eax,1
>005154BC    jno         005154C3
 005154BE    call        @IntOver
 005154C3    cmp         eax,0FF
>005154C8    jbe         005154CF
 005154CA    call        @BoundErr
 005154CF    push        eax
 005154D0    lea         eax,[ebp-108]
 005154D6    push        eax
 005154D7    mov         ecx,dword ptr [esi+33C];TFormAppreciations.?f33C:dword
 005154DD    cmp         ecx,0FF
>005154E3    jbe         005154EA
 005154E5    call        @BoundErr
 005154EA    mov         edx,dword ptr [esi+334];TFormAppreciations.?f334:dword
 005154F0    cmp         edx,0FF
>005154F6    jbe         005154FD
 005154F8    call        @BoundErr
 005154FD    mov         eax,dword ptr [esi+328];TFormAppreciations.?f328:dword
 00515503    call        004C2C00
 00515508    lea         edx,[ebp-108]
 0051550E    lea         eax,[ebp-8]
 00515511    call        @LStrFromString
 00515516    lea         edx,[ebp-114]
 0051551C    mov         eax,dword ptr [ebp-8]
 0051551F    call        Trim
 00515524    cmp         dword ptr [ebp-114],0
>0051552B    je          0051553B
 0051552D    mov         edx,dword ptr [ebp-8]
 00515530    mov         eax,dword ptr [esi+318];TFormAppreciations.Memo1:TMemo
 00515536    call        TControl.SetText
 0051553B    mov         eax,dword ptr [esi+318];TFormAppreciations.Memo1:TMemo
 00515541    cmp         byte ptr [eax+168],0;TMemo.FShowing:Boolean
>00515548    je          00515552
 0051554A    mov         edx,dword ptr [eax]
 0051554C    call        dword ptr [edx+0B0];TWinControl.SetFocus
 00515552    lea         edx,[ebp-118]
 00515558    mov         ebx,dword ptr [esi+318];TFormAppreciations.Memo1:TMemo
 0051555E    mov         eax,ebx
 00515560    call        TControl.GetText
 00515565    mov         eax,dword ptr [ebp-118]
 0051556B    call        @LStrLen
 00515570    mov         edx,eax
 00515572    mov         eax,ebx
 00515574    mov         ecx,dword ptr [eax]
 00515576    call        dword ptr [ecx+0C8];TCustomEdit.SetSelStart
 0051557C    mov         byte ptr [esi+34C],1;TFormAppreciations.?f34C:byte
 00515583    xor         eax,eax
 00515585    pop         edx
 00515586    pop         ecx
 00515587    pop         ecx
 00515588    mov         dword ptr fs:[eax],edx
 0051558B    push        5155CC
 00515590    lea         eax,[ebp-118]
 00515596    call        @LStrClr
 0051559B    lea         eax,[ebp-114]
 005155A1    call        @LStrClr
 005155A6    lea         eax,[ebp-110]
 005155AC    call        @LStrClr
 005155B1    lea         eax,[ebp-10C]
 005155B7    call        @LStrClr
 005155BC    lea         eax,[ebp-8]
 005155BF    call        @LStrClr
 005155C4    ret
>005155C5    jmp         @HandleFinally
>005155CA    jmp         00515590
 005155CC    pop         esi
 005155CD    pop         ebx
 005155CE    mov         esp,ebp
 005155D0    pop         ebp
 005155D1    ret         4
*}
end;

//005155D4
procedure TFormAppreciations.StringGrid2DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
{* 005155D4    push        ebp
 005155D5    mov         ebp,esp
 005155D7    add         esp,0FFFFFFE4
 005155DA    push        ebx
 005155DB    push        esi
 005155DC    push        edi
 005155DD    xor         ebx,ebx
 005155DF    mov         dword ptr [ebp-1C],ebx
 005155E2    mov         dword ptr [ebp-18],ebx
 005155E5    mov         dword ptr [ebp-14],ebx
 005155E8    mov         esi,dword ptr [ebp+0C]
 005155EB    lea         edi,[ebp-10]
 005155EE    push        ecx
 005155EF    mov         ecx,4
 005155F4    rep movs    dword ptr [edi],dword ptr [esi]
 005155F6    pop         ecx
 005155F7    mov         edi,ecx
 005155F9    mov         ebx,eax
 005155FB    mov         esi,dword ptr [ebp+10]
 005155FE    xor         eax,eax
 00515600    push        ebp
 00515601    push        51581D
 00515606    push        dword ptr fs:[eax]
 00515609    mov         dword ptr fs:[eax],esp
 0051560C    mov         eax,dword ptr [ebx+2F4];TFormAppreciations.StringGrid2:TStringGrid
 00515612    mov         eax,dword ptr [eax+1F0];TStringGrid..........FCanvas:TCanvas
 00515618    mov         eax,dword ptr [eax+0C];TCanvas.Font:TFont
 0051561B    xor         edx,edx
 0051561D    call        TFont.SetColor
 00515622    test        esi,esi
>00515624    jne         005156AB
 0051562A    mov         eax,dword ptr [ebx+2F4];TFormAppreciations.StringGrid2:TStringGrid
 00515630    mov         eax,dword ptr [eax+1F0];TStringGrid...........FCanvas:TCanvas
 00515636    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00515639    mov         edx,80000004
 0051563E    call        TBrush.SetColor
 00515643    lea         edx,[ebp-10]
 00515646    mov         eax,dword ptr [ebx+2F4];TFormAppreciations.StringGrid2:TStringGrid
 0051564C    mov         eax,dword ptr [eax+1F0];TStringGrid............FCanvas:TCanvas
 00515652    call        TCanvas.FillRect
 00515657    mov         eax,dword ptr [ebx+2F4];TFormAppreciations.StringGrid2:TStringGrid
 0051565D    mov         eax,dword ptr [eax+58];TStringGrid.FFont:TFont
 00515660    xor         edx,edx
 00515662    call        TFont.SetColor
 00515667    lea         eax,[ebp-14]
 0051566A    push        eax
 0051566B    mov         ecx,esi
 0051566D    mov         edx,edi
 0051566F    mov         eax,dword ptr [ebx+2F4];TFormAppreciations.StringGrid2:TStringGrid
 00515675    call        TStringGrid.GetCells
 0051567A    mov         eax,dword ptr [ebp-14]
 0051567D    push        eax
 0051567E    mov         ecx,dword ptr [ebp-0C]
 00515681    add         ecx,2
>00515684    jno         0051568B
 00515686    call        @IntOver
 0051568B    mov         edx,dword ptr [ebp-10]
 0051568E    add         edx,5;TRect.Top:Integer
>00515691    jno         00515698
 00515693    call        @IntOver
 00515698    mov         eax,dword ptr [ebx+2F4];TFormAppreciations.StringGrid2:TStringGrid
 0051569E    mov         eax,dword ptr [eax+1F0];TStringGrid.............FCanvas:TCanvas
 005156A4    call        TCanvas.TextOut
>005156A9    jmp         005156F0
 005156AB    mov         eax,esi
 005156AD    and         eax,80000001
>005156B2    jns         005156B9
 005156B4    dec         eax
 005156B5    or          eax,0FFFFFFFE
 005156B8    inc         eax
 005156B9    dec         eax
>005156BA    je          005156D7
 005156BC    mov         eax,dword ptr [ebx+2F4];TFormAppreciations.StringGrid2:TStringGrid
 005156C2    mov         eax,dword ptr [eax+1F0];TStringGrid..............FCanvas:TCanvas
 005156C8    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 005156CB    mov         edx,0FFFFFF
 005156D0    call        TBrush.SetColor
>005156D5    jmp         005156F0
 005156D7    mov         eax,dword ptr [ebx+2F4];TFormAppreciations.StringGrid2:TStringGrid
 005156DD    mov         eax,dword ptr [eax+1F0];TStringGrid...............FCanvas:TCanvas
 005156E3    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 005156E6    mov         edx,0F4F3EE
 005156EB    call        TBrush.SetColor
 005156F0    lea         edx,[ebp-10]
 005156F3    mov         eax,dword ptr [ebx+2F4];TFormAppreciations.StringGrid2:TStringGrid
 005156F9    mov         eax,dword ptr [eax+1F0];TStringGrid................FCanvas:TCanvas
 005156FF    call        TCanvas.FillRect
 00515704    mov         eax,dword ptr [ebx+2F4];TFormAppreciations.StringGrid2:TStringGrid
 0051570A    mov         eax,dword ptr [eax+58];TStringGrid.FFont:TFont
 0051570D    xor         edx,edx
 0051570F    call        TFont.SetColor
 00515714    lea         eax,[ebp-18]
 00515717    push        eax
 00515718    mov         ecx,esi
 0051571A    mov         edx,edi
 0051571C    mov         eax,dword ptr [ebx+2F4];TFormAppreciations.StringGrid2:TStringGrid
 00515722    call        TStringGrid.GetCells
 00515727    mov         eax,dword ptr [ebp-18]
 0051572A    push        eax
 0051572B    mov         ecx,dword ptr [ebp-0C]
 0051572E    add         ecx,2
>00515731    jno         00515738
 00515733    call        @IntOver
 00515738    mov         edx,dword ptr [ebp-10]
 0051573B    add         edx,5;TRect.Top:Integer
>0051573E    jno         00515745
 00515740    call        @IntOver
 00515745    mov         eax,dword ptr [ebx+2F4];TFormAppreciations.StringGrid2:TStringGrid
 0051574B    mov         eax,dword ptr [eax+1F0];TStringGrid.................FCanvas:TCanvas
 00515751    call        TCanvas.TextOut
 00515756    test        byte ptr [ebp+8],1
>0051575A    je          00515802
 00515760    mov         eax,dword ptr [ebx+324];TFormAppreciations.TabSetColonnesBulletin:TTabSet
 00515766    mov         eax,dword ptr [eax+204];TTabSet.TabIndex:Integer
 0051576C    add         eax,5
>0051576F    jno         00515776
 00515771    call        @IntOver
 00515776    cmp         edi,eax
>00515778    jne         00515793
 0051577A    mov         eax,dword ptr [ebx+2F4];TFormAppreciations.StringGrid2:TStringGrid
 00515780    mov         eax,dword ptr [eax+1F0];TStringGrid..................FCanvas:TCanva...
 00515786    mov         eax,dword ptr [eax+0C];TCanvas.Font:TFont
 00515789    mov         edx,0FF
 0051578E    call        TFont.SetColor
 00515793    mov         eax,dword ptr [ebx+2F4];TFormAppreciations.StringGrid2:TStringGrid
 00515799    mov         eax,dword ptr [eax+1F0];TStringGrid...................FCanvas:TCanv...
 0051579F    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 005157A2    mov         edx,0F8D1C5
 005157A7    call        TBrush.SetColor
 005157AC    lea         edx,[ebp-10]
 005157AF    mov         eax,dword ptr [ebx+2F4];TFormAppreciations.StringGrid2:TStringGrid
 005157B5    mov         eax,dword ptr [eax+1F0];TStringGrid....................FCanvas:TCan...
 005157BB    call        TCanvas.FillRect
 005157C0    lea         eax,[ebp-1C]
 005157C3    push        eax
 005157C4    mov         ecx,esi
 005157C6    mov         edx,edi
 005157C8    mov         eax,dword ptr [ebx+2F4];TFormAppreciations.StringGrid2:TStringGrid
 005157CE    call        TStringGrid.GetCells
 005157D3    mov         eax,dword ptr [ebp-1C]
 005157D6    push        eax
 005157D7    mov         ecx,dword ptr [ebp-0C]
 005157DA    add         ecx,2
>005157DD    jno         005157E4
 005157DF    call        @IntOver
 005157E4    mov         edx,dword ptr [ebp-10]
 005157E7    add         edx,5;TRect.Top:Integer
>005157EA    jno         005157F1
 005157EC    call        @IntOver
 005157F1    mov         eax,dword ptr [ebx+2F4];TFormAppreciations.StringGrid2:TStringGrid
 005157F7    mov         eax,dword ptr [eax+1F0];TStringGridFCanvas:TCa...
 005157FD    call        TCanvas.TextOut
 00515802    xor         eax,eax
 00515804    pop         edx
 00515805    pop         ecx
 00515806    pop         ecx
 00515807    mov         dword ptr fs:[eax],edx
 0051580A    push        515824
 0051580F    lea         eax,[ebp-1C]
 00515812    mov         edx,3
 00515817    call        @LStrArrayClr
 0051581C    ret
>0051581D    jmp         @HandleFinally
>00515822    jmp         0051580F
 00515824    pop         edi
 00515825    pop         esi
 00515826    pop         ebx
 00515827    mov         esp,ebp
 00515829    pop         ebp
 0051582A    ret         0C*}
end;

//00515830
procedure TFormAppreciations.TabSetColonnesBulletinChange(Sender: TObject; NewTab: Integer;
  var AllowChange: Boolean);
begin
{* 00515830    push        ebp
 00515831    mov         ebp,esp
 00515833    add         esp,0FFFFFEF8
 00515839    push        ebx
 0051583A    push        esi
 0051583B    push        edi
 0051583C    xor         ebx,ebx
 0051583E    mov         dword ptr [ebp-108],ebx
 00515844    mov         dword ptr [ebp-4],ebx
 00515847    mov         edi,ecx
 00515849    mov         ebx,eax
 0051584B    xor         eax,eax
 0051584D    push        ebp
 0051584E    push        5159C2
 00515853    push        dword ptr fs:[eax]
 00515856    mov         dword ptr fs:[eax],esp
 00515859    cmp         byte ptr [ebx+168],0;TFormAppreciations.FShowing:Boolean
>00515860    je          005159A1
 00515866    mov         esi,dword ptr [ebx+328];TFormAppreciations.?f328:dword
 0051586C    mov         eax,dword ptr [ebx+318];TFormAppreciations.Memo1:TMemo
 00515872    mov         edx,dword ptr [eax]
 00515874    call        dword ptr [edx+0CC];TCustomEdit.Clear
 0051587A    mov         byte ptr [ebx+34C],0;TFormAppreciations.?f34C:byte
 00515881    mov         eax,dword ptr [ebx+2D4];TFormAppreciations.PageControl1:TPageControl
 00515887    mov         eax,dword ptr [eax+244];TPageControl.ActivePage:TTabSheet
 0051588D    cmp         eax,dword ptr [ebx+2D8];TFormAppreciations.TabSheet1:TTabSheet
>00515893    jne         00515925
 00515899    mov         eax,ebx
 0051589B    call        00514620
 005158A0    add         edi,1
>005158A3    jno         005158AA
 005158A5    call        @IntOver
 005158AA    cmp         edi,0FF
>005158B0    jbe         005158B7
 005158B2    call        @BoundErr
 005158B7    push        edi
 005158B8    lea         eax,[ebp-104]
 005158BE    push        eax
 005158BF    mov         eax,dword ptr [ebx+2E4];TFormAppreciations.TabControlPeriodes:TTabControl
 005158C5    call        TCustomTabControl.GetTabIndex
 005158CA    mov         edx,eax
 005158CC    add         edx,1
>005158CF    jno         005158D6
 005158D1    call        @IntOver
 005158D6    cmp         edx,0FF
>005158DC    jbe         005158E3
 005158DE    call        @BoundErr
 005158E3    mov         ecx,dword ptr [ebx+330];TFormAppreciations.?f330:dword
 005158E9    add         ecx,1
>005158EC    jno         005158F3
 005158EE    call        @IntOver
 005158F3    cmp         ecx,0FF
>005158F9    jbe         00515900
 005158FB    call        @BoundErr
 00515900    mov         eax,esi
 00515902    call        004C2C00
 00515907    lea         edx,[ebp-104]
 0051590D    lea         eax,[ebp-4]
 00515910    call        @LStrFromString
 00515915    mov         edx,dword ptr [ebp-4]
 00515918    mov         eax,dword ptr [ebx+318];TFormAppreciations.Memo1:TMemo
 0051591E    call        TControl.SetText
>00515923    jmp         0051599A
 00515925    mov         eax,ebx
 00515927    call        005148C0
 0051592C    add         edi,1
>0051592F    jno         00515936
 00515931    call        @IntOver
 00515936    cmp         edi,0FF
>0051593C    jbe         00515943
 0051593E    call        @BoundErr
 00515943    push        edi
 00515944    lea         eax,[ebp-104]
 0051594A    push        eax
 0051594B    mov         ecx,dword ptr [ebx+33C];TFormAppreciations.?f33C:dword
 00515951    cmp         ecx,0FF
>00515957    jbe         0051595E
 00515959    call        @BoundErr
 0051595E    mov         edx,dword ptr [ebx+334];TFormAppreciations.?f334:dword
 00515964    cmp         edx,0FF
>0051596A    jbe         00515971
 0051596C    call        @BoundErr
 00515971    mov         eax,esi
 00515973    call        004C2C00
 00515978    lea         edx,[ebp-104]
 0051597E    lea         eax,[ebp-108]
 00515984    call        @LStrFromString
 00515989    mov         edx,dword ptr [ebp-108]
 0051598F    mov         eax,dword ptr [ebx+318];TFormAppreciations.Memo1:TMemo
 00515995    call        TControl.SetText
 0051599A    mov         byte ptr [ebx+34C],1;TFormAppreciations.?f34C:byte
 005159A1    xor         eax,eax
 005159A3    pop         edx
 005159A4    pop         ecx
 005159A5    pop         ecx
 005159A6    mov         dword ptr fs:[eax],edx
 005159A9    push        5159C9
 005159AE    lea         eax,[ebp-108]
 005159B4    call        @LStrClr
 005159B9    lea         eax,[ebp-4]
 005159BC    call        @LStrClr
 005159C1    ret
>005159C2    jmp         @HandleFinally
>005159C7    jmp         005159AE
 005159C9    pop         edi
 005159CA    pop         esi
 005159CB    pop         ebx
 005159CC    mov         esp,ebp
 005159CE    pop         ebp
 005159CF    ret         4*}
end;

end.