{***************************************
* Version Original V0.01
* Decompiled by HOUIDEF AEK v.15:51 samedi 17 février 2018
***************************************}
unit _TGrilleMoyennes;

interface

uses
Forms, Windows,  SysUtils, Classes, Messages, Grids, Controls, dialogs, _TGrilleGenerique , UFichierCdn, Unit111,_FormHint;

type
  TGrilleMoyennesCarnetDeNotes = class(TGrilleGeneriqueCarnetDeNotes)
  protected
    procedure DrawCell(ACol, ARow: Longint; ARect: TRect; AState: TGridDrawState);override; //supprimer le
  public
    f2E8:dword;//f2E8
    f2EC:dword;//f2EC
    f2F0:HMENU;//f2F0
    f2F4:array of TStringList;//f2F4
    destructor Destroy; virtual;//004CF9F8
    procedure WMCommand(var Message:TWMCommand); message WM_COMMAND;//004CFC74
    procedure sub_004D0A5C(var Msg:TMsg);  message 1032;//004D0A5C
    constructor Create(AOwner:TComponent; FeuilleClasse:TComponent; Periode:byte; FichierCdn:TFichierCdn);//004CF0A8
    procedure sub_004CF21C;//004CF21C
    //procedure sub_004CF4CC;//004CF4CC
    //procedure sub_004CF830;//004CF830
    procedure sub_004CFA2C(Sender:TObject; Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer);//004CFA2C
    procedure sub_004D072C;//004D072C
    function sub_004D08DC(Periode:dword; ARow:dword):dword;//004D08DC
	procedure sub_004D03C8(Sender:TObject;ACol:Longint; ARow:Longint; ARect:TRect; AState:TGridDrawState);
  end;


implementation

//004CF0A8
constructor TGrilleMoyennesCarnetDeNotes.Create(AOwner:TComponent; FeuilleClasse:TComponent; Periode:byte; FichierCdn:TFichierCdn);
var 
  I:integer;
begin
 //004CF0A8
 inherited Create(AOwner,0,FeuilleClasse,FichierCdn,Periode);
 f2E4:=2;
 
  SetLength(f2f4,FichierCdn.sub_004BE9E0*4);
  //FOwner := FOwner + _DynArr_121_2;
    for I := 0 to FichierCdn.sub_004BE9E0*4 -1 do
    begin//004CF134
      f2F4[I] := TStringList.Create;
    end;//2

  FixedRows := 1;
  FixedCols := 0;
  ColCount :=4;
  DefaultRowHeight := 18;
  //DefaultDrawing := False;
  //f28C := Self
  //fBC := Self
  //sub_04D03C8
  OnMouseDown := sub_004CFA2C;
  Options := Options + [goRowSelect];

 sub_004D072C;
    for I := 1 to FichierCdn.sub_004BEA58 do //004CF1E0
    begin//004CF1E4
      sub_004D08DC(1, I);
    end;//2
end;

//004CF21C
procedure TGrilleMoyennesCarnetDeNotes.sub_004CF21C;
var 
  x:integer;
begin//0
  //004CF21C
    DestroyMenu(f2F0);
    f2F0 := CreatePopupMenu;
	x:=sub_004B9E10;
    AppendMenuA(f2F0, 0, 0, 'Turbo Menu "Arrondir les moyennes"');
    AppendMenuA(f2F0, 2048, 0, '-');
    if (x = 0) then
    begin//004CF284
      AppendMenuA(f2F0, 8, 1, 'Ne pas arrondir les moyennes');
    end//2
    else
    begin//004CF29B
      AppendMenuA(f2F0, 0, 1, 'Ne pas arrondir les moyennes');
    end;//2
    if (x = 1) then
    begin//004CF2B5
      AppendMenuA(f2F0, 8, 2, 'Arrondir les moyennes au dixième de point');
    end//2
    else
    begin//004CF2CC
      AppendMenuA(f2F0, 0, 2, 'Arrondir les moyennes au dixième de point');
    end;//2
    if (x = 2) then
    begin//004CF2E6
      AppendMenuA(f2F0, 8, 3, 'Arrondir les moyennes au quart de point');
    end//2
    else
    begin//004CF2FD
      AppendMenuA(f2F0, 0, 3, 'Arrondir les moyennes au quart de point');
    end;//2
    if (x = 3) then
    begin//004CF317
      AppendMenuA(f2F0, 8, 4, 'Arrondir les moyennes au demi-point');
    end//2
    else
    begin//004CF32E
      AppendMenuA(f2F0, 0, 4, 'Arrondir les moyennes au demi-point');
    end;//2
    AppendMenuA(f2F0, 2048, 0, '-');
    AppendMenuA(f2F0,0 , 18, PChar('Copier la colonne "' + Cells[f2E8, 0] + '" dans le Presse-Papiers'));
end;//0


//004CF4CC
{*procedure sub_004CF4CC(?:?);
begin
 004CF4CC    push        ebp
 004CF4CD    mov         ebp,esp
 004CF4CF    xor         ecx,ecx
 004CF4D1    push        ecx
 004CF4D2    push        ecx
 004CF4D3    push        ecx
 004CF4D4    push        ecx
 004CF4D5    push        ecx
 004CF4D6    push        ecx
 004CF4D7    push        ebx
 004CF4D8    push        esi
 004CF4D9    mov         ebx,eax
 004CF4DB    xor         eax,eax
 004CF4DD    push        ebp
 004CF4DE    push        4CF714
 004CF4E3    push        dword ptr fs:[eax]
 004CF4E6    mov         dword ptr fs:[eax],esp
 004CF4E9    mov         eax,dword ptr [ebx+2F0]
 004CF4EF    push        eax
 004CF4F0    call        user32.DestroyMenu
 004CF4F5    call        user32.CreatePopupMenu
 004CF4FA    mov         esi,eax
 004CF4FC    mov         dword ptr [ebx+2F0],esi
 004CF502    push        4CF724;'Turbo Menu "Point(s) en plus ou en moins"'
 004CF507    push        0
 004CF509    push        0
 004CF50B    push        esi
 004CF50C    call        user32.AppendMenuA
 004CF511    push        4CF750;'-'
 004CF516    push        0
 004CF518    push        800
 004CF51D    mov         eax,dword ptr [ebx+2F0]
 004CF523    push        eax
 004CF524    call        user32.AppendMenuA
 004CF529    push        4CF754;'- 2'
 004CF52E    push        5
 004CF530    push        0
 004CF532    mov         eax,dword ptr [ebx+2F0]
 004CF538    push        eax
 004CF539    call        user32.AppendMenuA
 004CF53E    push        4CF758;'- 1,5'
 004CF543    push        6
 004CF545    push        0
 004CF547    mov         eax,dword ptr [ebx+2F0]
 004CF54D    push        eax
 004CF54E    call        user32.AppendMenuA
 004CF553    push        4CF760;'- 1'
 004CF558    push        7
 004CF55A    push        0
 004CF55C    mov         eax,dword ptr [ebx+2F0]
 004CF562    push        eax
 004CF563    call        user32.AppendMenuA
 004CF568    push        4CF764;'- 0,5'
 004CF56D    push        8
 004CF56F    push        0
 004CF571    mov         eax,dword ptr [ebx+2F0]
 004CF577    push        eax
 004CF578    call        user32.AppendMenuA
 004CF57D    push        4CF76C;'Aucun point en plus ou en moins'
 004CF582    push        9
 004CF584    push        0
 004CF586    mov         eax,dword ptr [ebx+2F0]
 004CF58C    push        eax
 004CF58D    call        user32.AppendMenuA
 004CF592    push        4CF78C;'+ 0,5'
 004CF597    push        0A
 004CF599    push        0
 004CF59B    mov         eax,dword ptr [ebx+2F0]
 004CF5A1    push        eax
 004CF5A2    call        user32.AppendMenuA
 004CF5A7    push        4CF794;'+ 1'
 004CF5AC    push        0B
 004CF5AE    push        0
 004CF5B0    mov         eax,dword ptr [ebx+2F0]
 004CF5B6    push        eax
 004CF5B7    call        user32.AppendMenuA
 004CF5BC    push        4CF798;'+ 1,5'
 004CF5C1    push        0C
 004CF5C3    push        0
 004CF5C5    mov         eax,dword ptr [ebx+2F0]
 004CF5CB    push        eax
 004CF5CC    call        user32.AppendMenuA
 004CF5D1    push        4CF7A0;'+ 2'
 004CF5D6    push        0D
 004CF5D8    push        0
 004CF5DA    mov         eax,dword ptr [ebx+2F0]
 004CF5E0    push        eax
 004CF5E1    call        user32.AppendMenuA
 004CF5E6    push        4CF7A4;'Autre ...'
 004CF5EB    push        0E
 004CF5ED    push        0
 004CF5EF    mov         eax,dword ptr [ebx+2F0]
 004CF5F5    push        eax
 004CF5F6    call        user32.AppendMenuA
 004CF5FB    push        4CF750;'-'
 004CF600    push        0
 004CF602    push        800
 004CF607    mov         eax,dword ptr [ebx+2F0]
 004CF60D    push        eax
 004CF60E    call        user32.AppendMenuA
 004CF613    push        4CF7B8;'Copier la colonne "'
 004CF618    lea         eax,[ebp-8]
 004CF61B    push        eax
 004CF61C    xor         ecx,ecx
 004CF61E    mov         edx,dword ptr [ebx+2E8]
 004CF624    mov         eax,ebx
 004CF626    call        TStringGrid.GetCells
 004CF62B    push        dword ptr [ebp-8]
 004CF62E    push        4CF7D4;'" dans le Presse-Papiers'
 004CF633    lea         eax,[ebp-4]
 004CF636    mov         edx,3
 004CF63B    call        @LStrCatN
 004CF640    mov         eax,dword ptr [ebp-4]
 004CF643    call        @LStrToPChar
 004CF648    push        eax
 004CF649    push        12
 004CF64B    push        0
 004CF64D    mov         eax,dword ptr [ebx+2F0]
 004CF653    push        eax
 004CF654    call        user32.AppendMenuA
 004CF659    call        Clipboard
 004CF65E    mov         dx,1
 004CF662    call        TClipboard.HasFormat
 004CF667    test        al,al
>004CF669    je          004CF6B3
 004CF66B    push        4CF7F8;'Coller la colonne "'
 004CF670    lea         eax,[ebp-10]
 004CF673    push        eax
 004CF674    xor         ecx,ecx
 004CF676    mov         edx,dword ptr [ebx+2E8]
 004CF67C    mov         eax,ebx
 004CF67E    call        TStringGrid.GetCells
 004CF683    push        dword ptr [ebp-10]
 004CF686    push        4CF814;'" depuis le Presse-Papiers'
 004CF68B    lea         eax,[ebp-0C]
 004CF68E    mov         edx,3
 004CF693    call        @LStrCatN
 004CF698    mov         eax,dword ptr [ebp-0C]
 004CF69B    call        @LStrToPChar
 004CF6A0    push        eax
 004CF6A1    push        13
 004CF6A3    push        0
 004CF6A5    mov         eax,dword ptr [ebx+2F0]
 004CF6AB    push        eax
 004CF6AC    call        user32.AppendMenuA
>004CF6B1    jmp         004CF6F9
 004CF6B3    push        4CF7F8;'Coller la colonne "'
 004CF6B8    lea         eax,[ebp-18]
 004CF6BB    push        eax
 004CF6BC    xor         ecx,ecx
 004CF6BE    mov         edx,dword ptr [ebx+2E8]
 004CF6C4    mov         eax,ebx
 004CF6C6    call        TStringGrid.GetCells
 004CF6CB    push        dword ptr [ebp-18]
 004CF6CE    push        4CF814;'" depuis le Presse-Papiers'
 004CF6D3    lea         eax,[ebp-14]
 004CF6D6    mov         edx,3
 004CF6DB    call        @LStrCatN
 004CF6E0    mov         eax,dword ptr [ebp-14]
 004CF6E3    call        @LStrToPChar
 004CF6E8    push        eax
 004CF6E9    push        13
 004CF6EB    push        1
 004CF6ED    mov         eax,dword ptr [ebx+2F0]
 004CF6F3    push        eax
 004CF6F4    call        user32.AppendMenuA
 004CF6F9    xor         eax,eax
 004CF6FB    pop         edx
 004CF6FC    pop         ecx
 004CF6FD    pop         ecx
 004CF6FE    mov         dword ptr fs:[eax],edx
 004CF701    push        4CF71B
 004CF706    lea         eax,[ebp-18]
 004CF709    mov         edx,6
 004CF70E    call        @LStrArrayClr
 004CF713    ret
>004CF714    jmp         @HandleFinally
>004CF719    jmp         004CF706
 004CF71B    pop         esi
 004CF71C    pop         ebx
 004CF71D    mov         esp,ebp
 004CF71F    pop         ebp
 004CF720    ret
end;*}

//004CF830
{*procedure sub_004CF830(?:?);
begin
 004CF830    push        ebp
 004CF831    mov         ebp,esp
 004CF833    push        0
 004CF835    push        0
 004CF837    push        ebx
 004CF838    push        esi
 004CF839    mov         ebx,eax
 004CF83B    xor         eax,eax
 004CF83D    push        ebp
 004CF83E    push        4CF941
 004CF843    push        dword ptr fs:[eax]
 004CF846    mov         dword ptr fs:[eax],esp
 004CF849    mov         eax,dword ptr [ebx+2F0]
 004CF84F    push        eax
 004CF850    call        user32.DestroyMenu
 004CF855    call        user32.CreatePopupMenu
 004CF85A    mov         esi,eax
 004CF85C    mov         dword ptr [ebx+2F0],esi
 004CF862    push        4CF950;'Turbo Menu "Moyennes calculées sur ..."'
 004CF867    push        0
 004CF869    push        0
 004CF86B    push        esi
 004CF86C    call        user32.AppendMenuA
 004CF871    push        4CF978;'-'
 004CF876    push        0
 004CF878    push        800
 004CF87D    mov         eax,dword ptr [ebx+2F0]
 004CF883    push        eax
 004CF884    call        user32.AppendMenuA
 004CF889    push        4CF97C;'Moyenne calculée sur 20'
 004CF88E    push        0F
 004CF890    push        0
 004CF892    mov         eax,dword ptr [ebx+2F0]
 004CF898    push        eax
 004CF899    call        user32.AppendMenuA
 004CF89E    push        4CF994;'Moyenne calculée sur 10'
 004CF8A3    push        10
 004CF8A5    push        0
 004CF8A7    mov         eax,dword ptr [ebx+2F0]
 004CF8AD    push        eax
 004CF8AE    call        user32.AppendMenuA
 004CF8B3    push        4CF9AC;'Autre ...'
 004CF8B8    push        11
 004CF8BA    push        0
 004CF8BC    mov         eax,dword ptr [ebx+2F0]
 004CF8C2    push        eax
 004CF8C3    call        user32.AppendMenuA
 004CF8C8    push        4CF978;'-'
 004CF8CD    push        0
 004CF8CF    push        800
 004CF8D4    mov         eax,dword ptr [ebx+2F0]
 004CF8DA    push        eax
 004CF8DB    call        user32.AppendMenuA
 004CF8E0    push        4CF9C0;'Copier la colonne "'
 004CF8E5    lea         eax,[ebp-8]
 004CF8E8    push        eax
 004CF8E9    xor         ecx,ecx
 004CF8EB    mov         edx,dword ptr [ebx+2E8]
 004CF8F1    mov         eax,ebx
 004CF8F3    call        TStringGrid.GetCells
 004CF8F8    push        dword ptr [ebp-8]
 004CF8FB    push        4CF9DC;'" dans le Presse-Papiers'
 004CF900    lea         eax,[ebp-4]
 004CF903    mov         edx,3
 004CF908    call        @LStrCatN
 004CF90D    mov         eax,dword ptr [ebp-4]
 004CF910    call        @LStrToPChar
 004CF915    push        eax
 004CF916    push        12
 004CF918    push        0
 004CF91A    mov         eax,dword ptr [ebx+2F0]
 004CF920    push        eax
 004CF921    call        user32.AppendMenuA
 004CF926    xor         eax,eax
 004CF928    pop         edx
 004CF929    pop         ecx
 004CF92A    pop         ecx
 004CF92B    mov         dword ptr fs:[eax],edx
 004CF92E    push        4CF948
 004CF933    lea         eax,[ebp-8]
 004CF936    mov         edx,2
 004CF93B    call        @LStrArrayClr
 004CF940    ret
>004CF941    jmp         @HandleFinally
>004CF946    jmp         004CF933
 004CF948    pop         esi
 004CF949    pop         ebx
 004CF94A    pop         ecx
 004CF94B    pop         ecx
 004CF94C    pop         ebp
 004CF94D    ret
end;*}

//004CF9F8
destructor TGrilleMoyennesCarnetDeNotes.Destroy;
begin
 inherited Destroy; 
{*
 004CF9F8    push        ebx
 004CF9F9    push        esi
 004CF9FA    call        @BeforeDestruction
 004CF9FF    mov         ebx,edx
 004CFA01    mov         esi,eax
 004CFA03    mov         eax,dword ptr [esi+2F0];TGrilleMoyennesCarnetDeNotes.?f2F0:dword
 004CFA09    push        eax
 004CFA0A    call        user32.DestroyMenu
 004CFA0F    mov         edx,ebx
 004CFA11    and         dl,0FC
 004CFA14    mov         eax,esi
 004CFA16    call        TStringGrid.Destroy
 004CFA1B    test        bl,bl
>004CFA1D    jle         004CFA26
 004CFA1F    mov         eax,esi
 004CFA21    call        @ClassDestroy
 004CFA26    pop         esi
 004CFA27    pop         ebx
 004CFA28    ret
*}
end;

//004CFA2C
procedure TGrilleMoyennesCarnetDeNotes.sub_004CFA2C(Sender:TObject; Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer);
var
  ACol,ARow,CS,CXX:integer;
  lvar_1C,I :integer;
begin//0
  //004CFA2C
  if (FormHint.Visible <> False) then
  begin//004CFA4D
    FormHint.Hide;
  end;
  if (Button <> mbRight{1}) then Exit;
  
  MouseToCell(X, Y, ACol, ARow);
  //showmessage('ACol:'+inttostr(ACol)+' ARow:'+inttostr(ARow));
  f2E8 := ACol;
  f2EC := ARow;
  CS := ACol;
  if (ACol <> 2) then//004CFA9A
    CS := 1
  else//004CFAA3
    CS := ARow;

  //CXX := ACol;
  if (ACol <> 2) then//004CFAB5
    lvar_1C := RowCount
  else//004CFAC0
    lvar_1C := ARow;

  //004CFAC6
  if (ARow <> 0) Or (ACol <> 2) then
  begin//004CFAD2
    //Selection := CS;
  end;//1
  SendMessageA(f2E0, 1039, ARow, 255);
  I := byte(FichierCdn.sub_004BEA58);
  if (ACol = 1) then
  begin//004CFB0C
    if (ARow <= 255) then //lvar14 = ACol
    begin//004CFB31
	  if({ARow in I} ARow <I) then 
      begin//004CFB37
        sub_004CF21C;
        TrackPopupMenu(f2F0, 10, ClientToScreen(Point(X,Y)).x, ClientToScreen(Point(X,Y)).y, 0{ reserved }, Handle, nil);
      end;//3
    end;//2
  end;
  if(ACol = 2) then
  begin//004CFB80
    if (ARow <= 255) then
    begin//004CFBA5
      if ({ARow in I} ARow <I) then
      begin//004CFBAB
        //sub_004CF4CC;
        //TrackPopupMenu(f2F0, 10, ClientToScreen(TPoint(X,Y)).X, ClientToScreen(TPoint(X,Y)).Y, 0, Handle, 0);
      end;//3
    end;//2
  end;//1
  if (X <> 3) then
  begin//004CFBF4
    if (ACol <> 0) then Exit;
  end;//1
  if (ARow <= 255) then
  begin//004CFC1F
    if ({ARow in I} ARow <I) then
    begin//004CFC25
      //sub_004CF830;
      //TrackPopupMenu(f2F0, 10, ClientToScreen(X),  ClientToScreen(X), 0, Handle, 0);
    end;//2
  end;//1
end;//0



//004CFC74
procedure TGrilleMoyennesCarnetDeNotes.WMCommand(var Message:TWMCommand);
begin
 showmessage('WMCommand');
{*
 004CFC74    push        ebp
 004CFC75    mov         ebp,esp
 004CFC77    add         esp,0FFFFFED8
 004CFC7D    push        ebx
 004CFC7E    push        esi
 004CFC7F    push        edi
 004CFC80    xor         ecx,ecx
 004CFC82    mov         dword ptr [ebp-128],ecx
 004CFC88    mov         dword ptr [ebp-124],ecx
 004CFC8E    mov         dword ptr [ebp-120],ecx
 004CFC94    mov         dword ptr [ebp-11C],ecx
 004CFC9A    mov         dword ptr [ebp-118],ecx
 004CFCA0    mov         dword ptr [ebp-114],ecx
 004CFCA6    mov         dword ptr [ebp-4],ecx
 004CFCA9    mov         esi,edx
 004CFCAB    mov         ebx,eax
 004CFCAD    xor         eax,eax
 004CFCAF    push        ebp
 004CFCB0    push        4D0330
 004CFCB5    push        dword ptr fs:[eax]
 004CFCB8    mov         dword ptr fs:[eax],esp
 004CFCBB    mov         ax,word ptr [esi+4]
 004CFCBF    mov         edx,eax
 004CFCC1    dec         edx
 004CFCC2    sub         dx,4
>004CFCC6    jae         004CFCEB
 004CFCC8    movzx       eax,ax
 004CFCCB    sub         eax,1
>004CFCCE    jno         004CFCD5
 004CFCD0    call        @IntOver
 004CFCD5    cmp         eax,0FF
>004CFCDA    jbe         004CFCE1
 004CFCDC    call        @BoundErr
 004CFCE1    call        004B9D74
>004CFCE6    jmp         004D0263
 004CFCEB    cmp         ax,5
>004CFCEF    jne         004CFD1F
 004CFCF1    push        4D0340
 004CFCF6    mov         ecx,dword ptr [ebx+2EC];TGrilleMoyennesCarnetDeNotes.?f2EC:dword
 004CFCFC    cmp         ecx,0FF
>004CFD02    jbe         004CFD09
 004CFD04    call        @BoundErr
 004CFD09    mov         dl,byte ptr [ebx+2D8];TGrilleMoyennesCarnetDeNotes.?f2D8:byte
 004CFD0F    mov         eax,dword ptr [ebx+2DC];TGrilleMoyennesCarnetDeNotes.?f2DC:dword
 004CFD15    call        004C3678
>004CFD1A    jmp         004D0263
 004CFD1F    cmp         ax,6
>004CFD23    jne         004CFD53
 004CFD25    push        4D0344
 004CFD2A    mov         ecx,dword ptr [ebx+2EC];TGrilleMoyennesCarnetDeNotes.?f2EC:dword
 004CFD30    cmp         ecx,0FF
>004CFD36    jbe         004CFD3D
 004CFD38    call        @BoundErr
 004CFD3D    mov         dl,byte ptr [ebx+2D8];TGrilleMoyennesCarnetDeNotes.?f2D8:byte
 004CFD43    mov         eax,dword ptr [ebx+2DC];TGrilleMoyennesCarnetDeNotes.?f2DC:dword
 004CFD49    call        004C3678
>004CFD4E    jmp         004D0263
 004CFD53    cmp         ax,7
>004CFD57    jne         004CFD87
 004CFD59    push        4D034C
 004CFD5E    mov         ecx,dword ptr [ebx+2EC];TGrilleMoyennesCarnetDeNotes.?f2EC:dword
 004CFD64    cmp         ecx,0FF
>004CFD6A    jbe         004CFD71
 004CFD6C    call        @BoundErr
 004CFD71    mov         dl,byte ptr [ebx+2D8];TGrilleMoyennesCarnetDeNotes.?f2D8:byte
 004CFD77    mov         eax,dword ptr [ebx+2DC];TGrilleMoyennesCarnetDeNotes.?f2DC:dword
 004CFD7D    call        004C3678
>004CFD82    jmp         004D0263
 004CFD87    cmp         ax,8
>004CFD8B    jne         004CFDBB
 004CFD8D    push        4D0350
 004CFD92    mov         ecx,dword ptr [ebx+2EC];TGrilleMoyennesCarnetDeNotes.?f2EC:dword
 004CFD98    cmp         ecx,0FF
>004CFD9E    jbe         004CFDA5
 004CFDA0    call        @BoundErr
 004CFDA5    mov         dl,byte ptr [ebx+2D8];TGrilleMoyennesCarnetDeNotes.?f2D8:byte
 004CFDAB    mov         eax,dword ptr [ebx+2DC];TGrilleMoyennesCarnetDeNotes.?f2DC:dword
 004CFDB1    call        004C3678
>004CFDB6    jmp         004D0263
 004CFDBB    cmp         ax,9
>004CFDBF    jne         004CFDEF
 004CFDC1    push        4D0358
 004CFDC6    mov         ecx,dword ptr [ebx+2EC];TGrilleMoyennesCarnetDeNotes.?f2EC:dword
 004CFDCC    cmp         ecx,0FF
>004CFDD2    jbe         004CFDD9
 004CFDD4    call        @BoundErr
 004CFDD9    mov         dl,byte ptr [ebx+2D8];TGrilleMoyennesCarnetDeNotes.?f2D8:byte
 004CFDDF    mov         eax,dword ptr [ebx+2DC];TGrilleMoyennesCarnetDeNotes.?f2DC:dword
 004CFDE5    call        004C3678
>004CFDEA    jmp         004D0263
 004CFDEF    cmp         ax,0A
>004CFDF3    jne         004CFE23
 004CFDF5    push        4D035C
 004CFDFA    mov         ecx,dword ptr [ebx+2EC];TGrilleMoyennesCarnetDeNotes.?f2EC:dword
 004CFE00    cmp         ecx,0FF
>004CFE06    jbe         004CFE0D
 004CFE08    call        @BoundErr
 004CFE0D    mov         dl,byte ptr [ebx+2D8];TGrilleMoyennesCarnetDeNotes.?f2D8:byte
 004CFE13    mov         eax,dword ptr [ebx+2DC];TGrilleMoyennesCarnetDeNotes.?f2DC:dword
 004CFE19    call        004C3678
>004CFE1E    jmp         004D0263
 004CFE23    cmp         ax,0B
>004CFE27    jne         004CFE57
 004CFE29    push        4D0360
 004CFE2E    mov         ecx,dword ptr [ebx+2EC];TGrilleMoyennesCarnetDeNotes.?f2EC:dword
 004CFE34    cmp         ecx,0FF
>004CFE3A    jbe         004CFE41
 004CFE3C    call        @BoundErr
 004CFE41    mov         dl,byte ptr [ebx+2D8];TGrilleMoyennesCarnetDeNotes.?f2D8:byte
 004CFE47    mov         eax,dword ptr [ebx+2DC];TGrilleMoyennesCarnetDeNotes.?f2DC:dword
 004CFE4D    call        004C3678
>004CFE52    jmp         004D0263
 004CFE57    cmp         ax,0C
>004CFE5B    jne         004CFE8B
 004CFE5D    push        4D0364
 004CFE62    mov         ecx,dword ptr [ebx+2EC];TGrilleMoyennesCarnetDeNotes.?f2EC:dword
 004CFE68    cmp         ecx,0FF
>004CFE6E    jbe         004CFE75
 004CFE70    call        @BoundErr
 004CFE75    mov         dl,byte ptr [ebx+2D8];TGrilleMoyennesCarnetDeNotes.?f2D8:byte
 004CFE7B    mov         eax,dword ptr [ebx+2DC];TGrilleMoyennesCarnetDeNotes.?f2DC:dword
 004CFE81    call        004C3678
>004CFE86    jmp         004D0263
 004CFE8B    cmp         ax,0D
>004CFE8F    jne         004CFEBF
 004CFE91    push        4D0368
 004CFE96    mov         ecx,dword ptr [ebx+2EC];TGrilleMoyennesCarnetDeNotes.?f2EC:dword
 004CFE9C    cmp         ecx,0FF
>004CFEA2    jbe         004CFEA9
 004CFEA4    call        @BoundErr
 004CFEA9    mov         dl,byte ptr [ebx+2D8];TGrilleMoyennesCarnetDeNotes.?f2D8:byte
 004CFEAF    mov         eax,dword ptr [ebx+2DC];TGrilleMoyennesCarnetDeNotes.?f2DC:dword
 004CFEB5    call        004C3678
>004CFEBA    jmp         004D0263
 004CFEBF    cmp         ax,0E
>004CFEC3    jne         004CFF9E
 004CFEC9    push        4D0374;'Points en plus ou en moins'
 004CFECE    push        0
 004CFED0    push        1
 004CFED2    mov         ecx,ebx
 004CFED4    mov         dl,1
 004CFED6    mov         eax,[004CA40C];TFormEdit
 004CFEDB    call        TFormEdit.Create;TFormEdit.Create
 004CFEE0    mov         edx,dword ptr ds:[616280];^gvar_00617CE0:TFormEdit
 004CFEE6    mov         dword ptr [edx],eax
 004CFEE8    mov         eax,[00616280];^gvar_00617CE0:TFormEdit
 004CFEED    mov         eax,dword ptr [eax]
 004CFEEF    mov         edx,dword ptr [eax]
 004CFEF1    call        dword ptr [edx+0D8]
 004CFEF7    mov         eax,[00616280];^gvar_00617CE0:TFormEdit
 004CFEFC    mov         eax,dword ptr [eax]
 004CFEFE    cmp         dword ptr [eax+234],1
>004CFF05    jne         004CFF8B
 004CFF0B    lea         edx,[ebp-114]
 004CFF11    mov         eax,[00616280];^gvar_00617CE0:TFormEdit
 004CFF16    mov         eax,dword ptr [eax]
 004CFF18    mov         eax,dword ptr [eax+2D0]
 004CFF1E    call        TControl.GetText
 004CFF23    mov         edx,dword ptr [ebp-114]
 004CFF29    lea         eax,[ebp-110]
 004CFF2F    mov         ecx,0FF
 004CFF34    call        @LStrToString
 004CFF39    lea         eax,[ebp-110]
 004CFF3F    push        eax
 004CFF40    mov         ecx,dword ptr [ebx+2EC];TGrilleMoyennesCarnetDeNotes.?f2EC:dword
 004CFF46    cmp         ecx,0FF
>004CFF4C    jbe         004CFF53
 004CFF4E    call        @BoundErr
 004CFF53    mov         dl,byte ptr [ebx+2D8];TGrilleMoyennesCarnetDeNotes.?f2D8:byte
 004CFF59    mov         eax,dword ptr [ebx+2DC];TGrilleMoyennesCarnetDeNotes.?f2DC:dword
 004CFF5F    call        004C3678
 004CFF64    mov         eax,dword ptr [ebx+2EC];TGrilleMoyennesCarnetDeNotes.?f2EC:dword
 004CFF6A    push        eax
 004CFF6B    xor         eax,eax
 004CFF6D    mov         al,byte ptr [ebx+2D8];TGrilleMoyennesCarnetDeNotes.?f2D8:byte
 004CFF73    push        eax
 004CFF74    push        408
 004CFF79    mov         eax,[00616280];^gvar_00617CE0:TFormEdit
 004CFF7E    mov         eax,dword ptr [eax]
 004CFF80    call        TWinControl.GetHandle
 004CFF85    push        eax
 004CFF86    call        user32.SendMessageA
 004CFF8B    mov         eax,[00616280];^gvar_00617CE0:TFormEdit
 004CFF90    mov         eax,dword ptr [eax]
 004CFF92    mov         dl,1
 004CFF94    mov         ecx,dword ptr [eax]
 004CFF96    call        dword ptr [ecx-4]
>004CFF99    jmp         004D0263
 004CFF9E    cmp         ax,0F
>004CFFA2    jne         004CFFB3
 004CFFA4    mov         eax,14
 004CFFA9    call        004B9DA4
>004CFFAE    jmp         004D0263
 004CFFB3    cmp         ax,10
>004CFFB7    jne         004CFFC8
 004CFFB9    mov         eax,0A
 004CFFBE    call        004B9DA4
>004CFFC3    jmp         004D0263
 004CFFC8    cmp         ax,11
>004CFFCC    jne         004D007B
 004CFFD2    push        4D0398;'Moyennes exprimées sur'
 004CFFD7    push        0
 004CFFD9    push        1
 004CFFDB    mov         ecx,ebx
 004CFFDD    mov         dl,1
 004CFFDF    mov         eax,[004CA40C];TFormEdit
 004CFFE4    call        TFormEdit.Create;TFormEdit.Create
 004CFFE9    mov         edx,dword ptr ds:[616280];^gvar_00617CE0:TFormEdit
 004CFFEF    mov         dword ptr [edx],eax
 004CFFF1    mov         eax,[00616280];^gvar_00617CE0:TFormEdit
 004CFFF6    mov         eax,dword ptr [eax]
 004CFFF8    mov         edx,dword ptr [eax]
 004CFFFA    call        dword ptr [edx+0D8]
 004D0000    mov         eax,[00616280];^gvar_00617CE0:TFormEdit
 004D0005    mov         eax,dword ptr [eax]
 004D0007    cmp         dword ptr [eax+234],1
>004D000E    jne         004D0068
 004D0010    lea         edx,[ebp-118]
 004D0016    mov         eax,[00616280];^gvar_00617CE0:TFormEdit
 004D001B    mov         eax,dword ptr [eax]
 004D001D    mov         eax,dword ptr [eax+2D0]
 004D0023    call        TControl.GetText
 004D0028    mov         eax,dword ptr [ebp-118]
 004D002E    call        StrToInt
 004D0033    call        004B9DA4
 004D0038    mov         cl,1
 004D003A    mov         dl,byte ptr [ebx+2D8];TGrilleMoyennesCarnetDeNotes.?f2D8:byte
 004D0040    mov         eax,dword ptr [ebx+2DC];TGrilleMoyennesCarnetDeNotes.?f2DC:dword
 004D0046    call        004C4784
 004D004B    push        0
 004D004D    xor         eax,eax
 004D004F    mov         al,byte ptr [ebx+2D8];TGrilleMoyennesCarnetDeNotes.?f2D8:byte
 004D0055    push        eax
 004D0056    push        408
 004D005B    mov         eax,ebx
 004D005D    call        TWinControl.GetHandle
 004D0062    push        eax
 004D0063    call        user32.SendMessageA
 004D0068    mov         eax,[00616280];^gvar_00617CE0:TFormEdit
 004D006D    mov         eax,dword ptr [eax]
 004D006F    mov         dl,1
 004D0071    mov         ecx,dword ptr [eax]
 004D0073    call        dword ptr [ecx-4]
>004D0076    jmp         004D0263
 004D007B    cmp         ax,12
>004D007F    jne         004D010E
 004D0085    call        Clipboard
 004D008A    call        TClipboard.Clear
 004D008F    lea         eax,[ebp-4]
 004D0092    call        @LStrClr
 004D0097    mov         eax,dword ptr [ebx+2DC];TGrilleMoyennesCarnetDeNotes.?f2DC:dword
 004D009D    call        004BEA58
 004D00A2    and         eax,0FF
 004D00A7    test        eax,eax
>004D00A9    jl          004D00F5
 004D00AB    inc         eax
 004D00AC    mov         dword ptr [ebp-10],eax
 004D00AF    mov         dword ptr [ebp-8],0
 004D00B6    push        dword ptr [ebp-4]
 004D00B9    lea         eax,[ebp-11C]
 004D00BF    push        eax
 004D00C0    mov         ecx,dword ptr [ebp-8]
 004D00C3    mov         edx,dword ptr [ebx+2E8];TGrilleMoyennesCarnetDeNotes.?f2E8:dword
 004D00C9    mov         eax,ebx
 004D00CB    call        TStringGrid.GetCells
 004D00D0    push        dword ptr [ebp-11C]
 004D00D6    push        4D03B8;#13
 004D00DB    push        4D03C4;#10
 004D00E0    lea         eax,[ebp-4]
 004D00E3    mov         edx,4
 004D00E8    call        @LStrCatN
 004D00ED    inc         dword ptr [ebp-8]
 004D00F0    dec         dword ptr [ebp-10]
>004D00F3    jne         004D00B6
 004D00F5    mov         eax,dword ptr [ebp-4]
 004D00F8    call        @LStrToPChar
 004D00FD    push        eax
 004D00FE    call        Clipboard
 004D0103    pop         edx
 004D0104    call        TClipboard.SetTextBuf
>004D0109    jmp         004D0263
 004D010E    cmp         ax,13
>004D0112    jne         004D0263
 004D0118    call        Clipboard
 004D011D    mov         dx,1
 004D0121    call        TClipboard.HasFormat
 004D0126    test        al,al
>004D0128    je          004D0263
 004D012E    mov         dl,1
 004D0130    mov         eax,[004120B8];TStringList
 004D0135    call        TObject.Create;TStringList.Create
 004D013A    mov         dword ptr [ebp-0C],eax
 004D013D    call        Clipboard
 004D0142    lea         edx,[ebp-120]
 004D0148    call        TClipboard.GetAsText
 004D014D    mov         edx,dword ptr [ebp-120]
 004D0153    mov         eax,dword ptr [ebp-0C]
 004D0156    mov         ecx,dword ptr [eax]
 004D0158    call        dword ptr [ecx+2C];TStrings.SetTextStr
 004D015B    mov         eax,dword ptr [ebp-0C]
 004D015E    mov         edx,dword ptr [eax]
 004D0160    call        dword ptr [edx+14];TStringList.GetCount
 004D0163    mov         edi,eax
 004D0165    mov         eax,dword ptr [ebx+2DC];TGrilleMoyennesCarnetDeNotes.?f2DC:dword
 004D016B    call        004BEA58
 004D0170    and         eax,0FF
 004D0175    cmp         edi,eax
>004D0177    jle         004D018B
 004D0179    mov         eax,dword ptr [ebx+2DC];TGrilleMoyennesCarnetDeNotes.?f2DC:dword
 004D017F    call        004BEA58
 004D0184    and         eax,0FF
>004D0189    jmp         004D0193
 004D018B    mov         eax,dword ptr [ebp-0C]
 004D018E    mov         edx,dword ptr [eax]
 004D0190    call        dword ptr [edx+14];TStringList.GetCount
 004D0193    test        eax,eax
>004D0195    jle         004D023C
 004D019B    mov         dword ptr [ebp-10],eax
 004D019E    mov         dword ptr [ebp-8],1
 004D01A5    lea         ecx,[ebp-124]
 004D01AB    mov         edx,dword ptr [ebp-8]
 004D01AE    sub         edx,1
>004D01B1    jno         004D01B8
 004D01B3    call        @IntOver
 004D01B8    mov         eax,dword ptr [ebp-0C]
 004D01BB    mov         edi,dword ptr [eax]
 004D01BD    call        dword ptr [edi+0C];TStringList.Get
 004D01C0    mov         eax,dword ptr [ebp-124]
 004D01C6    push        eax
 004D01C7    mov         ecx,dword ptr [ebp-8]
 004D01CA    mov         edx,dword ptr [ebx+2E8];TGrilleMoyennesCarnetDeNotes.?f2E8:dword
 004D01D0    mov         eax,ebx
 004D01D2    call        TStringGrid.SetCells
 004D01D7    lea         ecx,[ebp-128]
 004D01DD    mov         edx,dword ptr [ebp-8]
 004D01E0    sub         edx,1
>004D01E3    jno         004D01EA
 004D01E5    call        @IntOver
 004D01EA    mov         eax,dword ptr [ebp-0C]
 004D01ED    mov         edi,dword ptr [eax]
 004D01EF    call        dword ptr [edi+0C];TStringList.Get
 004D01F2    mov         edx,dword ptr [ebp-128]
 004D01F8    lea         eax,[ebp-110]
 004D01FE    mov         ecx,0FF
 004D0203    call        @LStrToString
 004D0208    lea         eax,[ebp-110]
 004D020E    push        eax
 004D020F    mov         ecx,dword ptr [ebp-8]
 004D0212    cmp         ecx,0FF
>004D0218    jbe         004D021F
 004D021A    call        @BoundErr
 004D021F    mov         dl,byte ptr [ebx+2D8];TGrilleMoyennesCarnetDeNotes.?f2D8:byte
 004D0225    mov         eax,dword ptr [ebx+2DC];TGrilleMoyennesCarnetDeNotes.?f2DC:dword
 004D022B    call        004C3678
 004D0230    inc         dword ptr [ebp-8]
 004D0233    dec         dword ptr [ebp-10]
>004D0236    jne         004D01A5
 004D023C    mov         dl,1
 004D023E    mov         eax,dword ptr [ebp-0C]
 004D0241    mov         ecx,dword ptr [eax]
 004D0243    call        dword ptr [ecx-4];TStringList.Destroy
 004D0246    push        0
 004D0248    xor         eax,eax
 004D024A    mov         al,byte ptr [ebx+2D8];TGrilleMoyennesCarnetDeNotes.?f2D8:byte
 004D0250    push        eax
 004D0251    push        408
 004D0256    mov         eax,ebx
 004D0258    call        TWinControl.GetHandle
 004D025D    push        eax
 004D025E    call        user32.SendMessageA
 004D0263    mov         cl,1
 004D0265    mov         dl,byte ptr [ebx+2D8];TGrilleMoyennesCarnetDeNotes.?f2D8:byte
 004D026B    mov         eax,dword ptr [ebx+2DC];TGrilleMoyennesCarnetDeNotes.?f2DC:dword
 004D0271    call        004C4784
 004D0276    mov         ax,word ptr [esi+4]
 004D027A    dec         eax
 004D027B    sub         ax,4
>004D027F    jb          004D028F
 004D0281    sub         ax,0A
>004D0285    jb          004D02AE
 004D0287    sub         ax,2
>004D028B    jb          004D02D2
>004D028D    jmp         004D02FA
 004D028F    push        0
 004D0291    xor         eax,eax
 004D0293    mov         al,byte ptr [ebx+2D8];TGrilleMoyennesCarnetDeNotes.?f2D8:byte
 004D0299    push        eax
 004D029A    push        408
 004D029F    mov         eax,ebx
 004D02A1    call        TWinControl.GetHandle
 004D02A6    push        eax
 004D02A7    call        user32.SendMessageA
>004D02AC    jmp         004D02FA
 004D02AE    mov         eax,dword ptr [ebx+2EC];TGrilleMoyennesCarnetDeNotes.?f2EC:dword
 004D02B4    push        eax
 004D02B5    xor         eax,eax
 004D02B7    mov         al,byte ptr [ebx+2D8];TGrilleMoyennesCarnetDeNotes.?f2D8:byte
 004D02BD    push        eax
 004D02BE    push        408
 004D02C3    mov         eax,ebx
 004D02C5    call        TWinControl.GetHandle
 004D02CA    push        eax
 004D02CB    call        user32.SendMessageA
>004D02D0    jmp         004D02FA
 004D02D2    mov         eax,dword ptr [ebx+2DC];TGrilleMoyennesCarnetDeNotes.?f2DC:dword
 004D02D8    call        004C63C8
 004D02DD    push        0
 004D02DF    xor         eax,eax
 004D02E1    mov         al,byte ptr [ebx+2D8];TGrilleMoyennesCarnetDeNotes.?f2D8:byte
 004D02E7    push        eax
 004D02E8    push        408
 004D02ED    mov         eax,ebx
 004D02EF    call        TWinControl.GetHandle
 004D02F4    push        eax
 004D02F5    call        user32.SendMessageA
 004D02FA    xor         eax,eax
 004D02FC    pop         edx
 004D02FD    pop         ecx
 004D02FE    pop         ecx
 004D02FF    mov         dword ptr fs:[eax],edx
 004D0302    push        4D0337
 004D0307    lea         eax,[ebp-128]
 004D030D    mov         edx,4
 004D0312    call        @LStrArrayClr
 004D0317    lea         eax,[ebp-118]
 004D031D    mov         edx,2
 004D0322    call        @LStrArrayClr
 004D0327    lea         eax,[ebp-4]
 004D032A    call        @LStrClr
 004D032F    ret
>004D0330    jmp         @HandleFinally
>004D0335    jmp         004D0307
 004D0337    pop         edi
 004D0338    pop         esi
 004D0339    pop         ebx
 004D033A    mov         esp,ebp
 004D033C    pop         ebp
 004D033D    ret
*}
end;

//004D072C
procedure TGrilleMoyennesCarnetDeNotes.sub_004D072C;
var
  I:integer;
begin//0
  //004D072C
  
    ColCount := 4;
    RowCount := FichierCdn.sub_004BEA58 + $12{gvar_00617902};
    for I := 0 to 3 do
    begin//004D077E
      if (I = 2) then Continue;
      Cols[I].Clear;
    end;//2
    Cells[0, 0] := 'Moyenne brute sur ' + IntToStr(sub_004B9E48);
    Cells[1, 0] := 'Moyenne arrondie sur ' + IntToStr(sub_004B9E48);
    Cells[2, 0] := 'Point(s) en + ou en -';
    Cells[3, 0] := 'Moyenne bulletin sur ' + IntToStr(sub_004B9E48);



end;

//004D08DC
function TGrilleMoyennesCarnetDeNotes.sub_004D08DC(Periode:dword; ARow:dword):dword;
var
  buf :string;
begin//0
  //004D08DC..004D0914
    Visible := ((FichierCdn.sub_004BEAD0(f2D8) = 0) Xor true);
    FichierCdn.sub_004C213C(Periode, ARow, buf);
    Cells[0, ARow] := buf;
    FichierCdn.sub_004C2AF4(Periode, ARow, sub_004B9E10, buf);
    Cells[1, ARow] := buf;
    FichierCdn.sub_004C2B38(Periode, ARow, buf);
    Cells[2, ARow] := buf;
    FichierCdn.sub_004C2D10(Periode, ARow, sub_004B9E10, buf);
    Cells[3, ARow] := buf;
end;//0



//004D0A5C
procedure TGrilleMoyennesCarnetDeNotes.sub_004D0A5C(var Msg:TMsg);
var
 I:integer;
 Count : integer;
begin//0
  //004D0A5C
  f2D8 := Msg.Message; //Periode
  if (FichierCdn.sub_004C4778(Msg.Message)) then // test si periode est deja traité
  begin//004D0A92 
    if (Msg.WParam = 0) then
    begin//004D0A99
      sub_004D072C; 
        for I := 1 to FichierCdn.sub_004BEA58 do //004D0AAB
          sub_004D08DC(Msg.Message, I);
        
    end//2
    else//004D0AD3
      sub_004D08DC(Msg.Message, Msg.WParam);
   
    Count := 4 * (f2D8 - 1); // count =  lvar_18 
	  for I:=  Count to Count+3 do //teste
	  begin
	     f2F4[I].Clear;
		 f2f4[I].AddStrings(Cols[I - Count]);
	  end;	
	{for I := Count to lvar_18 + 3 - lvar_18 +1 do //004D0B46
	begin//004D0B4B
		f2F4[I].Clear;
		f2F4[I].AddStrings(Cols[I - lvar_14]);
	end;//3}
    FichierCdn.sub_004C4784(f2D8,False);
  end
  else 
  begin
	  Count := 4 * (f2D8 - 1); 
	  for I:=  Count to Count+3 do //teste
	  begin
		 Cols[I - Count] := f2f4[I];
	  end;
		{for I := lvar_18 to lvar_18 + 3 - lvar_18 + 1 do //004D0C06   
		begin//004D0C0B
		  Cols[lvar_18 - lvar_18] := f2f4[I];
		end;//2}
	  
	  Visible := (FichierCdn.sub_004BEAD0(f2D8) = 0) Xor true;
  end;
end;//0

procedure TGrilleMoyennesCarnetDeNotes.DrawCell(ACol, ARow: Longint; ARect: TRect; AState: TGridDrawState);
begin
    inherited DrawCell(ACol, ARow, ARect, AState);
	sub_004D03C8(self,ACol,ARow,ARect, AState);	
end;
procedure TGrilleMoyennesCarnetDeNotes.sub_004D03C8(Sender:TObject;ACol:Longint; ARow:Longint; ARect:TRect; AState:TGridDrawState);
var
   R:TRect;
   Valeur:Real;
begin//0
  //004D03C8
  {lvar_4C := 0;
  lvar_4C := 0;
  lvar_40 := 0;
  lvar_40 := 0;
  lvar_28 := AState;
  lvar_8 := ARow;}
    //004D0402
    //sub_004CA104(Self, ACol, ARow ,ARect , AState);
    Canvas.Font.Style := [];//gvar_004D0720;
    Canvas.Font.Color := 0;
    if (sub_004BA2B0) then
    begin//2
      //004D0450
      if (ARow > 0) then
      begin//3
        //004D045A
        if (ACol <> 2) then
        begin//4
          //004D0464
          
          if (Cells[ACol, ARow] <> '') then
          begin//5
            //004D0480
            try
              //004D048E
              Valeur:= StrToFloat(Cells[ACol, ARow]);
              //004D04AF
              if ( Valeur < 0) Or ( Valeur > sub_004B9E48) then //004D04CF
                Canvas.Font.Color := sub_004BA070
              else//004D04EC
                if (Valeur >= 0) and(Valeur < sub_004B9E48/2  ) then//004D04FA //004D0515
                    Canvas.Font.Color := sub_004B9F8C
                else//004D052F       
                  if (Valeur >= 3/4 * sub_004B9E48 ) then //004D0554
                    Canvas.Font.Color := sub_004BA024
                  else//004D056E
                    Canvas.Font.Color := sub_004B9FD8;

            except//6
              on E:EConvertError do
              begin//7
                //004D05AC
                if (sub_004BB458) then
                begin//8
                  //004D05B5
                  Canvas.Brush.Color := sub_004BA0BC;
                end//8
                else
                begin//8
                  //004D05CF
                  Canvas.Brush.Color := $FFFFFF{16777215};
                end;//8
              end;//7
              on E:EMathError do
              begin//7
                //004D05E7
                
                if (sub_004BB458) then
                begin//8
                  //004D05F0
                  Canvas.Brush.Color := sub_004BA0BC;
                end//8
                else
                begin//8
                  //004D060A
                  Canvas.Brush.Color := $FFFFFF{16777215};
                end;//8
              end;//7
            end;//6
          end;//5
        end;//4
      end;//3
    end;//2
    if (gdSelected in AState) then
    begin//2
      //004D062B
      if (sub_004BB458) then
      begin//3
        //004D0634
        Canvas.Brush.Color := sub_004B9D24;
      end//3
      else
      begin//3
        //004D064E
        Canvas.Brush.Color := $C0C0C0;
      end;//3
    end;//2
	Canvas.FillRect(ARect);
    R.Left := ARect.Left;
    R.Top := ARect.Top + 2;//EAX
    R.Right := ARect.Right;
    R.Bottom := ARect.Bottom;
    DrawTextA(Canvas.Handle, PChar(Cells[ACol, ARow]), Length(Cells[ACol, ARow]), R, 1);
    //004D06F4
end;//0

end.