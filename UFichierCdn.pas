{***************************************
* CarnetNotesVersion Original V0.01 
* Decompiled by HOUIDEF AEK v 01:30 mardi 27 février 2018
***************************************}
unit UFichierCdn;

interface

uses
  Forms,SysUtils, Classes, UPeriodes, Dialogs, FFluxCdn, Grids, Windows, unit111, UTypeBulletins, UEleves;

type
  TFichierCdn = class(TObject)
  public
    FluxCdn:TFluxCdn;//f4
    f8:boolean;//f8
    FileName:TFileName;//fC
    f10:string;//f10
    CarnetNotesVersion:string;//f110
    f210:string;//f210
    f310:string;//f310
    f410:string;//f410
    f510:string;//f510
    f610:string;//f610
    f710:string;//f710
    f810:string;//f810
    f910:integer;//f910    //arrondirMoyennes
    f911:integer;//f911    //arrondirMoyennesAnnuelles
    f912:integer;//f912    //typeMoyennesAnnuelles
    f914:TTypeBulletins;//f914
    f918:TPeriodes;//f918
    f91C:TEleves;// TStringList; //TEleves;//f91C
    f920:TStringList;//f920
    f924:TStringGrid;//f924
    f928:TStringList;//f928
    f92C:TStringList;//f92C
    f930:TStringList;//f930
    f934:TStringList;//f934
    f938:TStringList;//f938
    f93C:TStringList;//f93C
    f940:TStringList;//f940
    f944:TStringList;//f944
    f948:boolean;//f948
    f949:byte;//f949
    constructor Create(filename:TFilename{; y:pointer; z:pointer; t:pointer});//004BE7C8
    function sub_004BEA58:integer;//004BEA58
    procedure sub_004BEA64(a:dword; var b:string);//004BEA64
    function sub_004C6654:Boolean;//004C6654
    function sub_004C66A8(FluxCdn:TFluxCdn;CarnetNotesVersion:string) :boolean; //old CarnetNotesVersion of carnetdenote//004C66A8
    procedure sub_004C6E9C(filename:TFileName; b:integer);//004C6E9C // preaser fichier Cdn
    procedure sub_004C8280{(a:pointer; b:pointer; c:pointer; d:pointer)};//004C8280
    procedure sub_004C8BB8(a:dword; var b:string);//004C8BB8
    procedure sub_004BE5E0(FluxCdn:TFluxCdn);//004BE5E0
    procedure sub_004BE8FC(var a:String);//004BE8FC
    procedure sub_004BE914(var a:String);//004BE914
    procedure sub_004BE92C(var a:String);//004BE92C
    procedure sub_004BE944(var a:String);//004BE944
    procedure sub_004BE95C(var a:String);//004BE95C
    procedure sub_004BE974(var FileName:string);//004BE974
    procedure sub_004BE988(var a:String);//004BE988
    function sub_004BE9E0:integer;//004BE9E0
    procedure sub_004BE9EC(a:dword; var b:String);//004BE9EC
    function sub_004BEA4C:TStringList;//004BEA4C
    function sub_004BEAC4:TStringList;//004BEAC4
    function sub_004BEAD0(y:byte):integer;//004BEAD0
    function sub_004BEB40(I:dword; J:dword):TStrings;//004BEB40
    procedure sub_004BEC04(Periode:dword; ACol:dword; ARow:dword;var data:string);//004BEC04
    procedure sub_004BED04(Periode:dword; var NameModule:string; NumModule:integer);//004BED04 Determine le Nom de Module
    procedure sub_004BED2C(Periode:dword; ARow:dword; var S:string);//004BED2C
    procedure sub_004BED7C(Periode:dword; ARow:dword; var S:string);//004BED7C
    procedure sub_004BEDCC(Periode:dword; ARow:dword; var S:string);//004BEDCC
    procedure sub_004BEE1C(Periode:dword; ARow:dword; var S:string);//004BEE1C
    procedure sub_004BEE6C(Periode:dword; ARow:dword; var S:string);//004BEE6C
    procedure sub_004BEEBC(Periode:dword; ARow:dword; var S:string);//004BEEBC
    procedure sub_004BEF0C(Periode:dword; ARow:dword; var S:string);//004BEF0C
    procedure sub_004BEF5C(Periode:dword; ACol:dword; ARow:dword; var data:string);//004BEF5C
    procedure sub_004BEF84(a:shortString);//004BEF84
    procedure sub_004BEFD0(a:String);//004BEFD0
    procedure sub_004BF004(a:String);//004BF004
    procedure sub_004BF038(a:String);//004BF038
    procedure sub_004BF06C(a:String);//004BF06C
    procedure sub_004BF0A0(a:String);//004BF0A0
    procedure sub_004BF0D4;//004BF0D4
    procedure sub_004BF258(a:ShortString; b:dword);//004BF258
    procedure sub_004BF544(StringList:TStringList);//004BF544
    procedure sub_004BF64C(a:TStringList);//004BF64C
    procedure sub_004BF7F0(a:dword; b:string; c:string; d:string; e:string; f:string; g:string; h:string; ii:string);//004BF7F0
    procedure sub_004BFC58(a:dword; b:dword);//004BFC58
    ////procedure sub_004BFD68(?:dword; ?:?; ?:?; ?:?);//004BFD68
    procedure sub_004C0070(a:dword);//004C0070
    procedure sub_004C0134(a:dword);//004C0134
    procedure sub_004C01F8(a:AnsiString; b:dword; c:string; d:dword);//004C01F8   sauvgrader fichier 
    procedure sub_004C0C88(Periode:dword; ACol:dword; ARow:dword; d:string);//004C0C88
    procedure sub_004C0E24(periode:dword; ACol:dword; e:string);//004C0E24
    procedure sub_004C0E5C(periode:dword; ACol:dword; c:string);//004C0E5C
    procedure sub_004C0EC8(Periode:dword; ACol :dword; d:string);//004C0EC8
    procedure sub_004C0F34(Periode:dword; ACol:dword; d:string);//004C0F34
    function sub_004C0FA0(a:dword; b:dword; c:string):dword;//004C0FA0
    procedure sub_004C1074(Periode:dword; ACol:dword; ARow:dword; data:string);//004C1074
    procedure sub_004C1158(a:dword);//004C1158
    procedure sub_004C14C8(b:String; c:string; d:string; a:boolean);//004C14C8
    ////procedure sub_004C1954(?:dword; ?:dword; ?:?; ?:?);//004C1954
    procedure sub_004C213C(Periode:dword; ARow:dword; var Moy:string);//004C213C
    procedure sub_004C2410(a:String; {b:Integer;}  ArrendirMoyennes:dword; var Moy:string);//004C2410
    procedure sub_004C2AF4(Periode:dword; ARow:dword; ArrondirMoyennes:dword; var RMoy:string);//004C2AF4
    procedure sub_004C2B38(Periode:dword; ARow:dword; var c:string);//004C2B38
    procedure sub_004C2C00(a:dword; b:dword; c:dword;var d:string);//004C2C00
    procedure sub_004C2D10(Periode:dword; ARow:dword; ArrondirMoyennes:dword; var Moy:string);//004C2D10
    ////procedure sub_004C2E60(?:dword; ?:ShortString; ?:?; ?:?);//004C2E60
    ////function sub_004C3134(?:dword; ?:?):?;//004C3134
    ////procedure sub_004C32B4(a:dword; b:pointer; c:pointer; d:pointer; e:pointer; f:pointer);//004C32B4
    ////procedure sub_004C3678(?:dword; ?:?; ?:?);//004C3678
    ////procedure sub_004C3798(?:dword; ?:dword; ?:?; ?:?);//004C3798
    procedure sub_004C3908(var a:string);//004C3908
    procedure sub_004C3920(a:string);//004C3920
    function sub_004C3954:boolean;//004C3954
    procedure sub_004C3958(Periode:dword; var s:string; ACol:dword);//004C3958
    procedure sub_004C3B54(Periode:dword; var s:string; ACol:dword);//004C3B54
    procedure sub_004C3D1C(Periode:dword; ACol:dword; var c:string);//004C3D1C
    procedure sub_004C3EA4(Periode:dword; ACol:dword;var b:string);//004C3EA4
    procedure sub_004C40D4(Periode:dword;var b:string; ACol:dword);//004C40D4
    procedure sub_004C42D4(Periode:dword; ACol:dword; var s:string);//004C42D4
    procedure sub_004C451C(Periode:dword; ACol:dword; var s:string);//004C451C
    function sub_004C4778(Periode:dword):boolean;//004C4778
    procedure sub_004C4784(Periode:dword;b:boolean);//004C4784
    function sub_004C4790:dword;//004C4790
    ////procedure sub_004C47E8(?:dword; ?:?; ?:?);//004C47E8
    ////procedure sub_004C48BC(?:dword; ?:dword; ?:?);//004C48BC
    ////procedure sub_004C4990(?:dword; ?:?; ?:?);//004C4990
    ////procedure sub_004C4B20(?:dword; ?:?; ?:?);//004C4B20
    ////procedure sub_004C4CBC(?:TFichierCdn);//004C4CBC
    ////procedure sub_004C4CC8(?:TFichierCdn; ?:PShortString);//004C4CC8
    function sub_004C4D44:dword;//004C4D44
    ////function sub_004C5078(?:dword; ?:?; ?:?; ?:?; ?:?; ?:?):?;//004C5078
    procedure sub_004C5404(Periode:dword; ARow:dword; var S:String);//004C5404
    ////procedure sub_004C56C0(a:pointer; b:pointer; c:pointer; d:pointer);//004C56C0
    ////procedure sub_004C5E04(?:?; ?:?; ?:?; ?:?);//004C5E04
    procedure sub_004C5F08(Periode:dword; ACol:dword; Info:dword; var d:string);//004C5F08
    procedure sub_004C5FF8(a:dword; b:dword; c:dword; d:dword);//004C5FF8
    function sub_004C6030(periode:dword; ACol:dword; info:dword):Boolean;//004C6030
    procedure sub_004C6080(a:dword; b:dword; c:string);//004C6080
    procedure sub_004C6144(a:dword; b:dword; c:string);//004C6144
    procedure sub_004C61E4(a:dword; b:dword; c:boolean);//004C61E4
    function sub_004C62E8(a:dword; b:dword):boolean;//004C62E8
    procedure sub_004C63C8;//004C63C8
    ////procedure sub_004C64CC(?:dword; ?:ShortString; ?:?);//004C64CC
    function sub_004C6680:Boolean;//004C6680
    procedure sub_004C8880;//004C8880
    function sub_004C8AD8:dword;//004C8AD8
    function sub_004C8AE0:dword;//004C8AE0
    function sub_004C8AE8:dword;//004C8AE8
    procedure sub_004C8AF4(a:dword; var b:String);//004C8AF4
    procedure sub_004C8B54(var a:string);//004C8B54
    ////function sub_004C8BAC(?:TFichierCdn):?;//004C8BAC
    ////procedure sub_004C8C2C(?:dword; ?:?; ?:PShortString);//004C8C2C
    procedure sub_004C8CB8(a:dword; var b:String);//004C8CB8
    function sub_004C8D68:dword;//004C8D68
    procedure sub_004C8D84(a:dword; var b:String);//004C8D84
    ////procedure sub_004C8DF8(?:TFichierCdn; ?:?; ?:?);//004C8DF8
    function sub_004C8E50( b:dword):boolean;//004C8E50
    ////function sub_004C8EC8(?:dword; ?:?; ?:?; ?:?):?;//004C8EC8
    ////procedure sub_004C8F6C(?:dword; ?:?; ?:?; ?:?; ?:?);//004C8F6C
    ////procedure sub_004C8FB0(?:?; ?:?; ?:?; ?:?);//004C8FB0
    ////procedure sub_004C9280(?:dword; ?:?; ?:?; ?:?; ?:?);//004C9280
    ////procedure sub_004C92C4(?:?; ?:?; ?:?; ?:?);//004C92C4
    ////procedure sub_004C9594(?:dword; ?:?; ?:?; ?:?);//004C9594
    ////procedure sub_004C9708(?:dword; ?:?; ?:?; ?:?);//004C9708
	end;

implementation

//004BE5E0
procedure TFichierCdn.sub_004BE5E0(FluxCdn:TFluxCdn);
var
  buf:string;
  I:integer;
begin//0
  //004BE5E0..004BE606
    FluxCdn.sub_004B6A80('Carnet de notes');
    FluxCdn.sub_004B6A80('1.0');
    sub_004BE8FC(buf);
    FluxCdn.sub_004B6A80(buf);
    FluxCdn.sub_004B6A80(f510);
    sub_004BE92C(buf);
    FluxCdn.sub_004B6A80(buf);
    sub_004BE944(buf);
    FluxCdn.sub_004B6A80(buf);
    FluxCdn.sub_004B6A80('Fichier créé par la version 2.0 pour ceux qui veulent rester à la 1.0 ...');
    buf := IntToStr(sub_004BEA58 );
    FluxCdn.sub_004B6A80(buf);
      for I := 1 to sub_004BEA58 do //004BE6E2
      begin//004BE6E9
        sub_004BEA64(I, buf);
        FluxCdn.sub_004B6A80( buf);
      end;//3

    for I := 1 to 19 do
    begin//004BE720
      FluxCdn.sub_004B6A80('0');
    end;//2
    FluxCdn.Destroy;
end;//0


//004BE7C8
constructor TFichierCdn.Create(filename:TFilename{; y:pointer; z:pointer; t:pointer});
begin//0
	Self.Filename := Filename;
    inherited Create;
    sub_004C8280{(filename, y, z, t)};
end;

//004BE8FC
procedure TFichierCdn.sub_004BE8FC(var a:String);
begin
 a:=f410;
end;

//004BE914
procedure TFichierCdn.sub_004BE914(var a:String);
begin//0
  //004BE914

  a := f510;
end;//0


//004BE92C
procedure TFichierCdn.sub_004BE92C(var a:String);
begin//0
  //004BE92C
  a := f610;
end;//0



//004BE944
procedure TFichierCdn.sub_004BE944(var a:String);
begin//0
  //004BE944
  a := f710;
end;//0


//004BE95C
procedure TFichierCdn.sub_004BE95C(var a:String);
begin//0
  //004BE95C
  a := f810;
end;//0


//004BE974
procedure TFichierCdn.sub_004BE974(var FileName:string);
begin//0
  //004BE974
  FileName := Self.FileName;
end;//0

//end;

//004BE988
procedure TFichierCdn.sub_004BE988(var a:String);
var
  buf:string;
  
begin//0
  //004BE988
    f918.sub_004B6CC4(buf);
    a := buf;
end;//0


//004BE9E0
function TFichierCdn.sub_004BE9E0:integer; //Nbre Periodes
begin
  //004BE9E0
  result := f918.sub_004B6CD8;
end;

//004BE9EC
procedure TFichierCdn.sub_004BE9EC(a:dword; var b:String);
var
  buf:string;
begin//0
  //004BE9EC
    f918.sub_004B6CF4(a, buf);
     b:=buf;

end;//0

//004BEA4C
function TFichierCdn.sub_004BEA4C:TStringList;
begin//0
  //004BEA4C
  Result := f918.sub_004B6D34;
end;//0


//004BEA58
function TFichierCdn.sub_004BEA58:integer;
begin
  result := f91C.sub_004B6FB0;
 // result:=f91C.Count; // supprimer le
end;

//004BEA64
procedure TFichierCdn.sub_004BEA64(a:dword; var b:string);
begin//0
  //004BEA64
    f91C.sub_004B6FCC(a, b);
	//b:=f91C[a-1];
end;

//004BEAC4
function TFichierCdn.sub_004BEAC4:TStringList;
begin//0
  //004BEAC4
  result := f91C.sub_004B700C;
end;//0


//004BEAD0
function TFichierCdn.sub_004BEAD0(y:byte):integer; //Nbre des Modules dans chaque Periode
begin//0
  //004BEAD0..004BEAE9
    result :=  StrToInt(f920[y - 1]);
end;

//004BEB40
function TFichierCdn.sub_004BEB40(I:dword; J:dword):TStrings;
var
  k,lvar_C:Integer;
begin//0
  //004BEB40
  //result := '';
  try
    //004BEB62
    lvar_C := 0;
    
      for k := 1 to I - 1 do //004BEB79
      begin//004BEB7E
        lvar_C := lvar_C +StrToInt(f920[k - 1]);
      end;//3
    result := f924.Cols[lvar_C- 1 + J];   
  finally//004BEBE9
    
  end;//1
  
end;

//004BEC04
procedure TFichierCdn.sub_004BEC04(Periode:dword; ACol:dword; ARow:dword;var data:string);
var
  I: integer;
  Somme : integer;
  Temp : integer;
begin//0
  //004BEC04
  try
    //004BEC26
    Somme := 0;
      for I := 1 to Periode - 1 do //004BEC47
      begin//3
        //004BEC4E
        Temp := StrToInt(f920[I - 1]);
        Somme := Temp + Somme;
      end;//3
    data := f924.Cells[Somme - 1 + ACol, ARow];
  finally//004BECE3
    //EDX := 2;
  end;//1

end;

//004BED04
procedure TFichierCdn.sub_004BED04(Periode:dword; var NameModule:string; NumModule:integer); // Nom de Module
begin//0
  sub_004BEC04(Periode, NumModule, 0, NameModule);
end;

//004BED2C
procedure TFichierCdn.sub_004BED2C(Periode:dword; ARow:dword;var S:string);
begin//0
  //004BED2C
  sub_004BEC04(Periode, ARow, sub_004BEA58 + $0B {gvar_006178FB},S );
end;//0


//004BED7C
procedure TFichierCdn.sub_004BED7C(Periode:dword; ARow:dword; var S:string);
begin//0
  //004BED7C
  sub_004BEC04(Periode, ARow, sub_004BEA58 + $0C {gvar_006178FC},S );
end;//0

//004BEDCC
procedure TFichierCdn.sub_004BEDCC(Periode:dword; ARow:dword; var S:string);
begin//0
  //004BEDCC
  sub_004BEC04(Periode, ARow, sub_004BEA58 + $0D{gvar_006178FD},S );
end;//0


//004BEE1C
procedure TFichierCdn.sub_004BEE1C(Periode:dword; ARow:dword; var S:string);
begin//0
  //004BEE1C
  sub_004BEC04(Periode, ARow, sub_004BEA58 + $0E {gvar_006178FE}, S);
end;//0


//004BEE6C
procedure TFichierCdn.sub_004BEE6C(Periode:dword; ARow:dword; var S:string);
begin
 sub_004BEC04(Periode, ARow, sub_004BEA58 + $0F {gvar_006178FF}, S);

end;

//004BEEBC
procedure TFichierCdn.sub_004BEEBC(Periode:dword; ARow:dword; var S:string);
begin
 sub_004BEC04(Periode, ARow, sub_004BEA58 + $10 {gvar_00617900}, S);
end;

//004BEF0C
procedure TFichierCdn.sub_004BEF0C(Periode:dword; ARow:dword; var S:string);
begin
 sub_004BEC04(Periode, ARow, sub_004BEA58 + $11 {gvar_00617901}, S);
end;

//004BEF5C
procedure TFichierCdn.sub_004BEF5C(Periode:dword; ACol:dword; ARow:dword;var data:string);
begin//0
  //004BEF5C
  sub_004BEC04(Periode, ACol, ARow, data);
end;

//004BEF84
procedure TFichierCdn.sub_004BEF84(a:shortString);
var
  lvar_4:AnsiString;
begin//0
  //004BEF84
    //004BEFA4
    FileName := a;
	//004BEFBC
  
end;//0

//004BEFD0
procedure TFichierCdn.sub_004BEFD0(a:String);
begin//0
  //004BEFD0
  f8 := true;
  f410 := a;
end;//0


//004BF004
procedure TFichierCdn.sub_004BF004(a:String);
begin//0
  //004BF004
  f8 := true;
  f510 := a;
end;//0


//004BF038
procedure TFichierCdn.sub_004BF038(a:String);
begin//0
  //004BF038
  f8 := true;
  f610 := a;
end;//0


//004BF06C
procedure TFichierCdn.sub_004BF06C(a:String);
begin//0
  //004BF06C
  f8 := true;
  f710 := a;
end;//0


//004BF0A0
procedure TFichierCdn.sub_004BF0A0(a:String);
begin//0
  //004BF0A0
  f8 := true;
  f810 := a;
end;//0


//004BF0D4
procedure TFichierCdn.sub_004BF0D4;
var
 I,J,K:integer;
begin//0
  //004BF0D4
  f944.Clear;
    for I := 1 to 2 * sub_004BE9E0  do  //004BF0FF
    begin//2
      //004BF0FF
      for J := 1 to 50 do
      begin//3
        //004BF104
        f944.Add('1');
      end;//3
    end;//2
  f940.Clear;

    for I := 1 to sub_004C4790 do //004BF138
    begin//2
      //004BF138
      for J := 1 to 14 do
      begin//3
        //004BF13D
        f940.Add('1');
      end;//3
    end;//2
  f920.Clear;
    for I := 1 to sub_004BE9E0 do //004BF171
    begin//2
      //004BF171
      f920.Add('0');
    end;//2
  f928.Clear;
  f92C.Clear;
  f930.Clear;
  f938.Clear;
  f934.Clear;
    for K := 1 to sub_004BE9E0 do //004BF1CE
    begin//2
      //004BF1CE
      for I := 1 to 50 do
      begin//3
        //004BF1D3
        f928.Add('');
        for J := 1 to sub_004C8AE8 do
        begin//4
          //004BF1EF
          f92C.Add('');
        end;//4
      end;//3
    end;//2
  
 
  for I := 1 to 50 do
  begin//1
    //004BF20A
    
    f930.Add('');
    f934.Add('1');
    f938.Add('');
  end;//1
  f8 := true;
end;//0


//004BF258
procedure TFichierCdn.sub_004BF258(a:ShortString; b:dword);
var
 buf0,buf1:string;
 I,J,K:integer;
begin//0
  //004BF258
    //004BF2BE
    f918.sub_004B6D38(buf0);
    f918.sub_004B6D84(sub_004BA3F8(buf0));
    f914.sub_004C9AA0(buf1);
    f914.sub_004C9A84(sub_004BCF84(buf1));
    f920.Clear;
    //call();
      for I := 1 to sub_004BA3F8(buf0).count do //004BF384
      begin//3
        //004BF387
        f920.Add('0');
      end;//3
    f928.Clear;
    f92C.Clear;
    f930.Clear;
    f938.Clear;
    f934.Clear;
    f940.Clear;
    f944.Clear;

    //call();
      for I := 1 to 2 * sub_004BA3F8(Buf0).count do //004BF418
      begin//3
        //004BF41B
        for J := 1 to 50 do
        begin//4
          //004BF420
         f944.Add('1');
        end;//4
      end;//3
    

      //004BF448
      for I := 1 to sub_004C4790 do
      begin//3
        //004BF44B
        for J:= 1 to 14 do
        begin//4
          //004BF450
          f940.Add('1');
        end;//4
      end;//3
   // call();

      //004BF48D

      for I := 1 to sub_004BA3F8(buf0).count  do
      begin//3
        
        for J := 1 to 50 do //004BF490
        begin//4
          //004BF495
          f928.Add('');
          
          for K := 1 to sub_004C8AE8 do
          begin//5
            //004BF4B1
            f92C.Add('');
          end;//5
        end;//4
      end;//3
    
    
    for I := 1 to 50 do
    begin//2
      //004BF4CE
      f930.Add('');
      f934.Add('1');
      f938.Add('');
    end;//2
    f8 := true;
	//004BF50C
 
end;//0

//004BF544
procedure TFichierCdn.sub_004BF544(StringList:TStringList);
var
 k,I:integer;
begin//0
  //004BF544
    //004BF568
    if (StringList.Count < sub_004BEA58) then//004BF582
      k := StringList.Count
    else//004BF58C
      k := sub_004BEA58;

      for I := 0 to k - 1 do //004BF5A8
      begin//3
        //004BF5B0
        f930[I] := Copy(StringList[I], 0, 10);
      end;//3
    
    f8 := true;
      for I := 1 to sub_004BE9E0 do //004BF5FB
      begin//3
        //004BF600
        f918.sub_004B6E84(I, true);
      end;//3
    
end;//0


//004BF64C
procedure TFichierCdn.sub_004BF64C(a:TStringList);
var
 I,J,K:integer;
 
begin//0
  //004BF64C
  f91C.sub_004B70B0(a);
  f944.Clear;
    //004BF689
    for J := 1 to 2 * sub_004BE9E0  do
    begin//2
      //004BF689
      for I := 1 to 50 do
      begin//3
        //004BF68E
        f944.Add('1');
      end;//3
    end;//2
  f940.Clear;
    
    for I := 1 to sub_004C4790 do //004BF6C2
    begin//2
      //004BF6C2
      for J := 1 to 14 do
      begin//3
        //004BF6C7
        f940.Add('1');
      end;//3
    end;//2
  f928.Clear;
  f92C.Clear;
  f930.Clear;
  f938.Clear;
  f934.Clear;

    for I := 1 to sub_004BE9E0 do //004BF727
    begin//2
      //004BF727
      //call(a);
      for J := 1 to a.count do
      begin//3
        //004BF735
        f928.Add('');
       
        for K := 1 to sub_004C8AE8 do
        begin//4
          //004BF751
          f92C.Add('');
        end;//4
      end;//3
 // call(a);

    for J := 1 to a.count do //004BF775
    begin//2
      //004BF775
      f930.Add('');
      f934.Add('1');
      f938.Add('');
    end;//2
  end;//1
  f8 := true;
    for I := 1 to sub_004BE9E0 do //004BF7B9
    begin//2
      //004BF7BE
      f918.sub_004B6E84(I, true);
    end;//2
 
end;//0

//004BF7F0
procedure TFichierCdn.sub_004BF7F0(a:dword; b:string; c:string; d:string; e:string; f:string; g:string; h:string; ii:string);
var
  lvar_C,I,J,lvar_8 : integer;
begin//0
  //004BF7F0

    //004BF8B6
    
    
    lvar_C := 0;
      for I := 1 to sub_004BE9E0 do //004BF8D7
      begin//3
        //004BF8DC
        lvar_C := lvar_C + sub_004BEAD0(I) ;
      end;//3
    
    f924.ColCount := lvar_C + 1;
    f924.RowCount := sub_004BEA58 + $12{gvar_00617902};
    lvar_8 := 0;
      for I := 1 to a do  //004BF94B
      begin//3
        //004BF950
        lvar_8 := lvar_8 + sub_004BEAD0(I);
      end;//3
   
    if (lvar_8 > 0) then
    begin//2
     { ESI := lvar_8 - lvar_C;
      if (ESI <= EBX) then
      begin//3
        //004BF989
        ESI := ESI - 1;//ESI}
        for I := lvar_C to lvar_8 - 1 do //004BF97F
        begin//4
          //004BF98A
          f924.Cols[I] := f924.Cols[I-1];
        end;//4
      //end;//3
    end//2
    else
    begin//2
      //004BF9B0
 
        for I:=0 to lvar_C do //004BF9B8
		begin
          //004BF9B8
          f924.Cols[I] := f924.Cols[I-1];
          
        end;
    end;//2
    f924.Cols[lvar_8].Clear;
    f924.Cells[lvar_8, 0] := c;
     
    I := sub_004BEA58;
    f924.Cells[lvar_8, $0B {gvar_006178FB} + I] :=  d;
    f924.Cells[lvar_8, $0C {gvar_006178FC} + I] :=  e;
    f924.Cells[lvar_8, $0D {gvar_006178FD} + I] :=  f;
    f924.Cells[lvar_8, $0E {gvar_006178FE} + I] :=  g;
    f924.Cells[lvar_8, $0F {gvar_006178FF} + I] :=  h;
    f924.Cells[lvar_8, $10 {gvar_00617900} + I] :=  h;
    if (ii <> '') then//004BFB61
      f924.Cells[lvar_8,  $11{gvar_00617901} + I] := 'Oral'
    else //004BFB85
      f924.Cells[lvar_8,  $11{gvar_00617901} + I] :=  'Ecrit';

    sub_004C0070(a);
    f8 := true;
    f918.sub_004B6E84(a, true);
    f940.Clear;      
      for J := 1 to sub_004C4790 do//004BFBE3
      begin//3
        //004BFBE3
        for I := 1 to 14 do
        begin//4
          //004BFBE8
          f940.Add('1');
        end;//4
      end;//3
end;//0

//004BFC58
procedure TFichierCdn.sub_004BFC58(a:dword; b:dword);
var
  I,J:integer;
  buf:string;
begin//0
  //004BFC58
  f924.Cols[b - 1].Clear;
  if (f924.ColCount - 2 - (b - 1) >= 0) then
  begin//1
    //004BFCB9
   // EDX := EDX + 1;//EDX

    for I := 1 to f924.ColCount - 2 do
    begin//2
      //004BFCC0
      f924.Cols[I] := f924.Cols[I + 1];
    end;//2
  end;//1
  f924.ColCount := f924.ColCount - 1;
  sub_004C0134(a);
  f8 := true;
  f918.sub_004B6E84(a, true);
  f940.Clear;
    for J := 1 to sub_004C4790 do //004BFD34
    begin//2
      //004BFD38
      for I := 1 to 14 do
      begin//3
        //004BFD3A
        f940.Add('1');
      end;//3
    end;//2
  
end;//0

//004BFD68
{*//procedure sub_004BFD68(?:dword; ?:?; ?:?; ?:?);
//begin
 004BFD68    push        ebp
 004BFD69    mov         ebp,esp
 004BFD6B    add         esp,0FFFFF7EC
 004BFD71    push        ebx
 004BFD72    push        esi
 004BFD73    push        edi
 004BFD74    xor         ebx,ebx
 004BFD76    mov         dword ptr [ebp-814],ebx
 004BFD7C    mov         dword ptr [ebp-710],ebx
 004BFD82    mov         byte ptr [ebp-2],cl
 004BFD85    mov         byte ptr [ebp-1],dl
 004BFD88    mov         esi,eax
 004BFD8A    xor         eax,eax
 004BFD8C    push        ebp
 004BFD8D    push        4C004C
 004BFD92    push        dword ptr fs:[eax]
 004BFD95    mov         dword ptr fs:[eax],esp
 004BFD98    mov         dl,1
 004BFD9A    mov         eax,[004120B8];TStringList
 004BFD9F    call        TObject.Create;TStringList.Create
 004BFDA4    mov         dword ptr [ebp-8],eax
 004BFDA7    mov         eax,esi
 004BFDA9    call        TFichierCdn.sub_004BEA58
 004BFDAE    test        al,al
>004BFDB0    jbe         004BFDF1
 004BFDB2    mov         byte ptr [ebp-9],al
 004BFDB5    mov         bl,1
 004BFDB7    push        ebx
 004BFDB8    lea         eax,[ebp-810]
 004BFDBE    push        eax
 004BFDBF    mov         cl,byte ptr [ebp-2]
 004BFDC2    mov         dl,byte ptr [ebp-1]
 004BFDC5    mov         eax,esi
 004BFDC7    call        004BEF5C
 004BFDCC    lea         edx,[ebp-810]
 004BFDD2    lea         eax,[ebp-710]
 004BFDD8    call        @LStrFromString
 004BFDDD    mov         edx,dword ptr [ebp-710]
 004BFDE3    mov         eax,dword ptr [ebp-8]
 004BFDE6    mov         ecx,dword ptr [eax]
 004BFDE8    call        dword ptr [ecx+34];TStringList.Add
 004BFDEB    inc         ebx
 004BFDEC    dec         byte ptr [ebp-9]
>004BFDEF    jne         004BFDB7
 004BFDF1    lea         eax,[ebp-109]
 004BFDF7    push        eax
 004BFDF8    mov         cl,byte ptr [ebp-2]
 004BFDFB    mov         dl,byte ptr [ebp-1]
 004BFDFE    mov         eax,esi
 004BFE00    call        004BED04
 004BFE05    lea         eax,[ebp-209]
 004BFE0B    push        eax
 004BFE0C    mov         cl,byte ptr [ebp-2]
 004BFE0F    mov         dl,byte ptr [ebp-1]
 004BFE12    mov         eax,esi
 004BFE14    call        004BED2C
 004BFE19    lea         eax,[ebp-309]
 004BFE1F    push        eax
 004BFE20    mov         cl,byte ptr [ebp-2]
 004BFE23    mov         dl,byte ptr [ebp-1]
 004BFE26    mov         eax,esi
 004BFE28    call        004BED7C
 004BFE2D    lea         eax,[ebp-409]
 004BFE33    push        eax
 004BFE34    mov         cl,byte ptr [ebp-2]
 004BFE37    mov         dl,byte ptr [ebp-1]
 004BFE3A    mov         eax,esi
 004BFE3C    call        004BEDCC
 004BFE41    lea         eax,[ebp-509]
 004BFE47    push        eax
 004BFE48    mov         cl,byte ptr [ebp-2]
 004BFE4B    mov         dl,byte ptr [ebp-1]
 004BFE4E    mov         eax,esi
 004BFE50    call        004BEE1C
 004BFE55    lea         eax,[ebp-609]
 004BFE5B    push        eax
 004BFE5C    mov         cl,byte ptr [ebp-2]
 004BFE5F    mov         dl,byte ptr [ebp-1]
 004BFE62    mov         eax,esi
 004BFE64    call        004BEE6C
 004BFE69    lea         eax,[ebp-709]
 004BFE6F    push        eax
 004BFE70    mov         cl,byte ptr [ebp-2]
 004BFE73    mov         dl,byte ptr [ebp-1]
 004BFE76    mov         eax,esi
 004BFE78    call        004BEEBC
 004BFE7D    lea         eax,[ebp-810]
 004BFE83    push        eax
 004BFE84    mov         cl,byte ptr [ebp-2]
 004BFE87    mov         dl,byte ptr [ebp-1]
 004BFE8A    mov         eax,esi
 004BFE8C    call        004BEF0C
 004BFE91    lea         eax,[ebp-810]
 004BFE97    mov         edx,4C005C;'Oral'
 004BFE9C    xor         ecx,ecx
 004BFE9E    mov         cl,byte ptr [eax]
 004BFEA0    inc         ecx
 004BFEA1    call        @AStrCmp
 004BFEA6    sete        al
 004BFEA9    lea         edx,[ebp-209]
 004BFEAF    push        edx
 004BFEB0    lea         edx,[ebp-309]
 004BFEB6    push        edx
 004BFEB7    lea         edx,[ebp-409]
 004BFEBD    push        edx
 004BFEBE    lea         edx,[ebp-509]
 004BFEC4    push        edx
 004BFEC5    lea         edx,[ebp-609]
 004BFECB    push        edx
 004BFECC    lea         edx,[ebp-709]
 004BFED2    push        edx
 004BFED3    push        eax
 004BFED4    lea         ecx,[ebp-109]
 004BFEDA    mov         dl,byte ptr [ebp+8]
 004BFEDD    mov         eax,esi
 004BFEDF    call        004BF7F0
 004BFEE4    mov         byte ptr [ebp-4],0
 004BFEE8    xor         eax,eax
 004BFEEA    mov         al,byte ptr [ebp-1]
 004BFEED    sub         eax,1
>004BFEF0    jno         004BFEF7
 004BFEF2    call        @IntOver
 004BFEF7    cmp         eax,0FF
>004BFEFC    jbe         004BFF03
 004BFEFE    call        @BoundErr
 004BFF03    test        al,al
>004BFF05    jbe         004BFF3D
 004BFF07    mov         byte ptr [ebp-9],al
 004BFF0A    mov         bl,1
 004BFF0C    mov         edx,ebx
 004BFF0E    mov         eax,esi
 004BFF10    call        004BEAD0
 004BFF15    and         eax,0FF
 004BFF1A    xor         edx,edx
 004BFF1C    mov         dl,byte ptr [ebp-4]
 004BFF1F    add         eax,edx
>004BFF21    jno         004BFF28
 004BFF23    call        @IntOver
 004BFF28    cmp         eax,0FF
>004BFF2D    jbe         004BFF34
 004BFF2F    call        @BoundErr
 004BFF34    mov         byte ptr [ebp-4],al
 004BFF37    inc         ebx
 004BFF38    dec         byte ptr [ebp-9]
>004BFF3B    jne         004BFF0C
 004BFF3D    xor         eax,eax
 004BFF3F    mov         al,byte ptr [ebp-2]
 004BFF42    xor         edx,edx
 004BFF44    mov         dl,byte ptr [ebp-4]
 004BFF47    add         eax,edx
>004BFF49    jno         004BFF50
 004BFF4B    call        @IntOver
 004BFF50    cmp         eax,0FF
>004BFF55    jbe         004BFF5C
 004BFF57    call        @BoundErr
 004BFF5C    mov         byte ptr [ebp-2],al
 004BFF5F    mov         cl,byte ptr [ebp-2]
 004BFF62    mov         dl,byte ptr [ebp-1]
 004BFF65    mov         eax,esi
 004BFF67    call        004BFC58
 004BFF6C    mov         dl,byte ptr [ebp+8]
 004BFF6F    mov         eax,esi
 004BFF71    call        004BEAD0
 004BFF76    mov         byte ptr [ebp-3],al
 004BFF79    mov         eax,esi
 004BFF7B    call        TFichierCdn.sub_004BEA58
 004BFF80    test        al,al
>004BFF82    jbe         004BFFD6
 004BFF84    mov         byte ptr [ebp-9],al
 004BFF87    mov         bl,1
 004BFF89    push        ebx
 004BFF8A    lea         ecx,[ebp-814]
 004BFF90    xor         edx,edx
 004BFF92    mov         dl,bl
 004BFF94    sub         edx,1
>004BFF97    jno         004BFF9E
 004BFF99    call        @IntOver
 004BFF9E    mov         eax,dword ptr [ebp-8]
 004BFFA1    mov         edi,dword ptr [eax]
 004BFFA3    call        dword ptr [edi+0C];TStringList.Get
 004BFFA6    mov         edx,dword ptr [ebp-814]
 004BFFAC    lea         eax,[ebp-810]
 004BFFB2    mov         ecx,0FF
 004BFFB7    call        @LStrToString
 004BFFBC    lea         eax,[ebp-810]
 004BFFC2    push        eax
 004BFFC3    mov         cl,byte ptr [ebp-3]
 004BFFC6    mov         dl,byte ptr [ebp+8]
 004BFFC9    mov         eax,esi
 004BFFCB    call        004C1074
 004BFFD0    inc         ebx
 004BFFD1    dec         byte ptr [ebp-9]
>004BFFD4    jne         004BFF89
 004BFFD6    mov         byte ptr [esi+8],1
 004BFFDA    mov         cl,1
 004BFFDC    mov         dl,byte ptr [ebp-1]
 004BFFDF    mov         eax,dword ptr [esi+918]
 004BFFE5    call        004B6E84
 004BFFEA    mov         dl,1
 004BFFEC    mov         eax,dword ptr [ebp-8]
 004BFFEF    mov         ecx,dword ptr [eax]
 004BFFF1    call        dword ptr [ecx-4];TStringList.Destroy
 004BFFF4    mov         eax,dword ptr [esi+940]
 004BFFFA    mov         edx,dword ptr [eax]
 004BFFFC    call        dword ptr [edx+40]
 004BFFFF    mov         eax,esi
 004C0001    call        004C4790
 004C0006    test        al,al
>004C0008    jbe         004C0028
 004C000A    mov         byte ptr [ebp-9],al
 004C000D    mov         bl,0E
 004C000F    mov         edx,4C006C;'1'
 004C0014    mov         eax,dword ptr [esi+940]
 004C001A    mov         ecx,dword ptr [eax]
 004C001C    call        dword ptr [ecx+34]
 004C001F    dec         bl
>004C0021    jne         004C000F
 004C0023    dec         byte ptr [ebp-9]
>004C0026    jne         004C000D
 004C0028    xor         eax,eax
 004C002A    pop         edx
 004C002B    pop         ecx
 004C002C    pop         ecx
 004C002D    mov         dword ptr fs:[eax],edx
 004C0030    push        4C0053
 004C0035    lea         eax,[ebp-814]
 004C003B    call        @LStrClr
 004C0040    lea         eax,[ebp-710]
 004C0046    call        @LStrClr
 004C004B    ret
>004C004C    jmp         @HandleFinally
>004C0051    jmp         004C0035
 004C0053    pop         edi
 004C0054    pop         esi
 004C0055    pop         ebx
 004C0056    mov         esp,ebp
 004C0058    pop         ebp
 004C0059    ret         4
end;*}

//004C0070
procedure TFichierCdn.sub_004C0070(a:dword);
begin//0
  //004C0070

    //004C008E
    f920[a - 1] :=  IntToStr(StrToInt(f920[a - 1]) + 1);
    f8 := true;
    f918.sub_004B6E84(a, true);

end;//0

//004C0134
procedure TFichierCdn.sub_004C0134(a:dword);
begin//0
  //004C0134
    //004C0152
    f920[a - 1] := IntToStr(StrToInt(f920[a - 1]) - 1);
    f8 := true;
    f918.sub_004B6E84(a, true);
	//004C01D9
 
end;//0

//004C01F8
procedure TFichierCdn.sub_004C01F8(a:AnsiString; b:dword; c:string; d:dword);
var
  FluxCdn :TFluxCdn;
  buf :string;
  I,J,K:integer;
  lvar_14:TStringList;
begin//0
  //004C01F8..004C023F
    try
      //004C024D
      sub_004C8B54(buf);
      if (buf <> 'Bulletins par défaut') then//004C0271
        d := 0;
     
      if (sub_004BA2FC) then//004C027E
        RenameFile(a, ChangeFileExt(a, '.bak'));

      FluxCdn := TFluxCdn.Create(a, $FFFF);
      if (b <> 0) then//004C02BB
        sub_004BE5E0(FluxCdn)
      else
      begin//004C02C9
        if (C = '') then//004C02D2
          if (sub_004C6680) then//004C02DD
            FluxCdn.sub_004B6A80('Carnet de notes')
          else//004C02ED
            FluxCdn.sub_004B6A80('Carnet de Notes')
        else
        begin//004C02FD
          FluxCdn.sub_004B6A80(c);
        end;//4
        FluxCdn.sub_004B6A80('2.3');
        sub_004C3908(buf);
        FluxCdn.sub_004B6A80( buf);
        sub_004BE8FC(buf);
        FluxCdn.sub_004B6A80( buf);
        sub_004BE914(buf);
        FluxCdn.sub_004B6A80( buf);
        sub_004BE92C(buf);
        FluxCdn.sub_004B6A80( buf);
        sub_004BE944(buf);
        FluxCdn.sub_004B6A80( buf);
        sub_004BE95C(buf);
        FluxCdn.sub_004B6A80( buf);
        sub_004BE988(buf);
        FluxCdn.sub_004B6A80( buf);
        buf := IntToStr(sub_004BE9E0);
        FluxCdn.sub_004B6A80( buf);
        for I := 1 to sub_004BE9E0 do//004C0425
        begin//004C042C
            sub_004BE9EC(I, buf);
            FluxCdn.sub_004B6A80( buf);
        end;//5
        
        buf := IntToStr(sub_004BEA58);
        FluxCdn.sub_004B6A80( buf);
        for I := 1 to sub_004BEA58 do  //004C049A
        begin//004C04A1
            sub_004BEA64(I, buf);
            FluxCdn.sub_004B6A80( buf);
        end;//5
        
        for I := 1 to sub_004BE9E0 do //004C04D7
        begin//004C04DE
           
            buf := IntToStr(sub_004BEAD0(I));
            FluxCdn.sub_004B6A80(buf);
            if (sub_004BEAD0(I) <= 0) then Continue;
            for J := 1 to sub_004BEAD0(I) do
            begin//004C0536
              sub_004BED04(I, buf, J);
              FluxCdn.sub_004B6A80( buf);
              if (sub_004BEA58 > 0) then
              begin//004C0564
                for K := 1 to sub_004BEA58 do
                begin//004C056B
                  sub_004BEF5C(I, J, K, buf);
                  FluxCdn.sub_004B6A80( buf);
                end;//8
              end;//7
              for K := 1 to 9 do
              begin//004C059E
                FluxCdn.sub_004B6A80('');
              end;//7
              sub_004BED2C(I, J, buf);
              FluxCdn.sub_004B6A80( buf);
              sub_004BED7C(I, J, buf);
              FluxCdn.sub_004B6A80( buf);
              sub_004BEDCC(I, J, buf);
              FluxCdn.sub_004B6A80( buf);
              sub_004BEE1C(I, J, buf);
              FluxCdn.sub_004B6A80( buf);
              sub_004BEE6C(I, J, buf);
              FluxCdn.sub_004B6A80( buf);
              sub_004BEEBC(I, J, buf);
              FluxCdn.sub_004B6A80( buf);
              sub_004BEF0C(I, J ,buf);
              FluxCdn.sub_004B6A80( buf);
			  
            end;//6
        end;//4

        for I := 1 to sub_004BE9E0 do //004C06C9
        begin//004C06D0
            if (sub_004BEA58 <= 0) then Continue;
            for J := 1 to sub_004BEA58 do
            begin //004C06E2
              sub_004C2B38(I, J, buf);
              FluxCdn.sub_004B6A80( buf);
            end;//6
        end;//5
        buf := IntToStr(sub_004C8D68);
        FluxCdn.sub_004B6A80( buf);
        for I := 1 to sub_004C8D68 do //004C075C
        begin//004C0763
            sub_004C8D84(I, buf);
            FluxCdn.sub_004B6A80( buf);
        end;//5
		
		////=====================================
        if (d = 0) then
        begin//004C0794
          sub_004C8B54(buf);
          FluxCdn.sub_004B6A80( buf);
          buf := IntToStr(sub_004C8AE8);
          FluxCdn.sub_004B6A80( buf);

          for I := 1 to sub_004C8AE8 do //004C07FB
          begin//004C0802
              sub_004C8AF4(I, buf);
              FluxCdn.sub_004B6A80( buf);
          end;//6
        end//4
        else
        begin//004C082E
		  Buf :=  'Nouveaux bulletins du collège';
          FluxCdn.sub_004B6A80(Buf);
          lvar_14 := sub_004BCF84(Buf);
          FluxCdn.sub_004B6A80(IntToStr(lvar_14.count));
          for I := 1 to lvar_14.count do //004C08B8
          begin//004C08BF
              FluxCdn.sub_004B6A80(lvar_14[I - 1]);
          end;//6
         
          FreeAndNil(lvar_14);
        end;//4
          for I := 1 to sub_004BE9E0 do //004C0920
          begin//004C0927
            if (sub_004BEA58 <= 0) then Continue;
            for J := 1 to sub_004BEA58 do
            begin//004C093D
              if (d = 0) then
              begin//004C0943
                if (sub_004C8AE8 <= 0) then Continue;
                for K := 1 to sub_004C8AE8 do
                begin//004C0955
                  sub_004C2C00(I, J, K, buf);
                  FluxCdn.sub_004B6A80( buf);
                end;//8
              end//7
              else
              begin//004C0986
                sub_004C2C00(I, J, 1, buf);
                FluxCdn.sub_004B6A80(buf);
                FluxCdn.sub_004B6A80('');
                FluxCdn.sub_004B6A80('');
              end;//7
            end;//6
          end;//5
        
          for I := 1 to sub_004BEA58 do //004C09EA
          begin//004C09F1
            sub_004C8BB8(I, buf);
            FluxCdn.sub_004B6A80( buf);
            sub_004C8CB8(I, buf);
            FluxCdn.sub_004B6A80( buf);
            if (sub_004C8E50(I) ) then
            begin//004C0A3D
              FluxCdn.sub_004B6A80('R');
            end//6
            else
            begin//004C0A4D
              FluxCdn.sub_004B6A80('');
            end;//6
          end;//5
        
        buf := IntToStr(sub_004C4D44);
        FluxCdn.sub_004B6A80( buf);
        buf := IntToStr(sub_004C8AD8);

        FluxCdn.sub_004B6A80( buf);
        buf := IntToStr(sub_004C8AE0);
        FluxCdn.sub_004B6A80( buf);
        FluxCdn.Destroy;
      end;//3
      sub_004BEF84(a);
      f949 := 0;
      f8 := false;
    except//004C0B44
      MessageBoxA(0, PChar('Erreur dans l''enregistrement du fichier ' + a), 'Carnet de Notes version Personnelle', 16);
    end;//2
end;//0


//004C0C88
procedure TFichierCdn.sub_004C0C88(Periode:dword; ACol:dword; ARow:dword; d:string);
var
  Modules,I :integer;
  lvar_110:string;
begin//0
  //004C0C88
    Modules := 0;
      for I := 1 to Periode - 1 do //004C0CF7
      begin//004C0CFE
        Modules := StrToInt(f920[I - 1]) + Modules;
      end;//3
   
    if (f8 = false) then
    begin//004C0D52
      lvar_110 := f924.Cells[Modules - 1 + ACol, ARow];
      f8 := (lvar_110 = d) Xor true;
    end;//2
    f924.Cells[Modules - 1 + ACol, ARow] :=  d;
end;//0


//004C0E24
procedure TFichierCdn.sub_004C0E24(periode:dword; ACol:dword; e:string);
begin//0
  //004C0E24
  sub_004C0C88(periode, ACol, 0, e);
end;//0

//004C0E5C
procedure TFichierCdn.sub_004C0E5C(periode:dword; ACol:dword; c:string);
begin//0
  //004C0E5C
  sub_004C0C88(periode, ACol,sub_004BEA58 + $0F{gvar_006178FF},c );
end;//0


//004C0EC8
procedure TFichierCdn.sub_004C0EC8(Periode:dword; ACol :dword; d:string);
begin//0
  //004C0EC8
  sub_004C0C88(Periode, ACol,sub_004BEA58 +  $0E {gvar_006178FE} , d);
end;//0

//004C0F34
procedure TFichierCdn.sub_004C0F34(Periode:dword; ACol:dword; d:string);
begin//0
  //004C0F34
  sub_004C0C88(Periode, ACol,sub_004BEA58 + $10 {gvar_00617900} , d);
end;//0


//004C0FA0
function TFichierCdn.sub_004C0FA0(a:dword; b:dword; c:string):dword;
var
  buf:string;
  I:integer;
begin//0
  //004C0FA0
  sub_004BEDCC(a, b, buf);
  if (buf <> c) then
  begin//1
    //004C0FF2
      for I := 1 to sub_004BEA58 do //004C0FFF
      begin//3
        //004C1003
        sub_004C61E4(a, I, true);
      end;//3
    
  end;//1
  sub_004C0C88(a, b, sub_004BEA58 + $0D{gvar_006178FD} , c);
  f918.sub_004B6E84(a, true);
end;//0

//004C1074                          
procedure TFichierCdn.sub_004C1074(Periode:dword; ACol:dword; ARow:dword; data:string);
var
  lvar_102:string;
  lvar_204:string;
  I :integer;
begin//0
  //004C1074
  //ECX := d[1] + 1;//ECX
  lvar_102 := data;
  //lvar_2 := ACol;
  //lvar_1 := Periode;
  for I := 1 to 7 do
  begin//004C109C
    sub_004BEF5C(Periode, ACol, ARow, lvar_204);
    //ECX := lvar_204[1] + 1;
    //EAX := (lvar_204 = lvar_102) Xor true;
    //push EAX
    //sub_004C5FF8(Periode, ACol);
  end;//1
  sub_004BEF5C(Periode, ACol, ARow, lvar_204);
  //ECX := lvar_204 + 1;
  sub_004C61E4(Periode, ARow, (lvar_204 = lvar_102) Xor true);
  //sub_004C0C88(Periode, ACol, ARow);
  f918.sub_004B6E84(Periode, true);

end;

//004C1158
procedure TFichierCdn.sub_004C1158(a:dword);
var
   I,J,K:integer;
   StringList:TStringList;
begin//0
  //004C1158

    //004C1179

    StringList := TStringList.Create;  
      k := sub_004C4790 ;

      for I := 1 to sub_004C4790  do //004C119C
      begin//004C11A6
        StringList.Clear;
        StringList.addstrings(f924.Cols[I - 1]);
		StringList.delete(a);
        f924.Cols[I - 1].Clear;

        for J := 1 to StringList.count do//004C1206
          f924.Cells[I - 1, J - 1] :=  StringList[k];

      end;//3

    StringList.destroy;
    f924.RowCount := f924.RowCount - 1;
    f91C.sub_004B705C(a);


      for I := 1 to sub_004BE9E0 do //004C12A0
      begin//004C12AA
        f928.Delete(sub_004BEA58 * (I - 1) + a - 1);
        
        

        for J := 1 to sub_004C8AE8 do//004C1308
          f92C.Delete(sub_004C8AE8 * (a - 1) + (I - 1) * sub_004BEA58 * sub_004C8AE8);
      end;//3

    f930.Delete(a - 1);
    f938.Delete(a - 1);
    f934.Delete(a - 1);
    f8 := true;


      //004C13D8
      for I := 1 to sub_004BE9E0 do//004C13E2
        f918.sub_004B6E84(I, true);
 
   

    f944.Clear;

      for I := 1 to 2 * sub_004BE9E0 do//004C142C
      begin //004C142F
       

        for J := 1 to sub_004BEA58 do//004C1442
          f944.Add('1');
        
      end;//3
   

    f940.Clear;

      for I := 1 to sub_004C4790 do //004C1475
      begin//004C1478
        for J := 1 to 14 do
        begin//004C147D
          f940.Add('1');
        end;//4
      end;//3
    
end;//0


//004C14C8
procedure TFichierCdn.sub_004C14C8(b:String; c:string; d:string; a:boolean);
var
I,J,K,index:integer;
StringList,lvar_18:TStringList;
begin//0
  //004C14C8..004C1534
    if (sub_004BEA58 >= $32{50}) then Exit;
    f924.RowCount := f924.RowCount + 1;
    f91C.sub_004B7010(b); //ajouter l''eleve
    StringList := f91C.sub_004B700C;
    index := StringList.indexof(b);
    lvar_18 := TStringList.Create;
      for I := 1 to sub_004C4790 do //004C15CF
      begin//004C15D9
        lvar_18.clear;
        lvar_18.addStrings(f924.Cols[I - 1]);//
        lvar_18.insert(index + 1,'abs');
        f924.Cols[I - 1].Clear;
        for J := 1 to lvar_18.count do//004C1646
          f924.Cells[I - 1, J - 1] := lvar_18[J];
      end;//3
      for I := 1 to sub_004BE9E0 do//004C16B3
      begin//004C16BD
        f928.Insert(sub_004BEA58 * (I - 1)+ index, '');
        for J := 1 to sub_004C8AE8 do //004C171A
          f92C.Insert(sub_004C8AE8 * index + (J - 1) + (I - 1) * sub_004BEA58 * sub_004C8AE8, '');
      end;//3
    f930.Insert(index, c);
    if (a) then //004C17DD
      f938.Insert(index, 'R')
    else//004C17F2
      f938.Insert(index, '');

    f934.Insert(index, d);
    f8 := true;
      for I := 1 to sub_004BE9E0 do//004C1845
        f918.sub_004B6E84(I, true);

    lvar_18.destroy;
    f944.Clear;
      for I := 1 to 2 * sub_004BE9E0 do  //004C1899
        for J := 1 to sub_004BEA58 do //004C189C
          f944.Add('1');
    
    f940.Clear;
      for I := 1 to sub_004C4790 do//004C18E5
        for J := 1 to 14 do//004C18EA
          f940.Add('1');

end;//0

//004C1954
procedure sub_004C1954(a:dword; b:dword; d:dword; c:dword; e:dword);
var
  I:integer;
begin//0
  //004C1954
  (*ESI := c;
  ECX := ECX + 1;//ECX
  lvar_228 := c;
  ESI := d;
  ECX := ECX + 1;//ECX
  lvar_124 := d{ECX};
  lvar_1 := b;
  EBX := a;
  try*)
    //004C19D2
   (* f91C.sub_004B705C(b);
    f91C.sub_004B7010(buf);
    lvar_C := Eleves.sub_004B700C.indexof(buf);
    
    ESI := 0;

      for I := 1 to sub_004BE9E0(a)  do //004C1A40
      begin//3
        //004C1A4A
        ESI := ESI + StrToInt(f920[I-1]);
      end;//3
    
    lvar_20 := TStringList.Create;
      for lvar_10 := 1 to ESI do //004C1A9B
      begin//3
        //004C1AA5
        lvar_20.clear;
        ESI := lvar_10 - 1;//ESI
        lvar_20.AddStrings(f924.Cols[lvar_10 - 1]);
        lvar_20.move(b,lvar_C + 1);
        f924.Cols[ESI].Clear;
        for I := 1 to lvar_20.count do
        begin//4
          //004C1B12
          f924.Cells[lvar_10 - 1, I - 1] := lvar_20[I - 1];
        end;//4
      end;//3
    lvar_20.clear;
    
      for I := 1 to a.sub_004BEA58  do //004C1B83
      begin//3
        //004C1B8B
        if (I <> b) then Continue;
        a.sub_004C8BB8(I, buf);
		lvar_20.Add(buf);
      end;//3
    f930.Clear;
    f930.AddStrings(lvar_20);
    f930.Insert(lvar_C, lvar_340);
    lvar_20.clear;

      for I := 1 to a.sub_004BEA58  do //004C1C2B
      begin//3
        //004C1C33
        if (I <> b) then 
        if (sub_004C8E50(a, I) ) then//004C1C56
          lvar_20.Add('R')
        else//004C1C65
          lvar_20.add('');
      end;//3
   
    f938.Clear;
    f938.AddStrings(lvar_20);
    if (e <> 0) then//004C1C94
      f938.Insert(lvar_C, 'R')
    else//004C1CA9
      f938.Insert(lvar_C, '');
	  
    lvar_20.clear;
   
      for I := 1 to sub_004BE9E0(a) do //004C1CD5
      begin//3
        //004C1CDF
        if (a.sub_004C8AE8 > 0) then 
        for J := 1 to a.sub_004C8AE8 do
        begin//4
          //004C1CF9
          a.sub_004C2C00(I, b, J, buf);
          lvar_20.Add(buf);
        end;//4
      end;//3
     EDI:=0;
      for I := 1 to sub_004BE9E0(a) do //004C1D6D
      begin//3
        //004C1D77
          for ESI := 1 to a.sub_004C8AE8 do //004C1D8E
          begin//5
            //004C1D8E
            lvar_1C := (b - 1) * a.sub_004C8AE8 + ((I - 1) *  a.sub_004C8AE8 * a.sub_004C8AE8) - EDI;//EAX - 0

            f92C.Delete(lvar_1C);
          end;//5        
        EDI := EDI + a.sub_004C8AE8;
      end;//3
  
      for lvar_14 := 1 to sub_004BE9E0(a) do  //004C1E4D
      begin//3
        //004C1E57
       
        for lvar_18 := 1 to a.sub_004C8AE8  do
        begin//4
          //004C1E75
          
          EDI := a.sub_004C8AE8;
         
          EDI := EDI * lvar_C;
          EAX := lvar_18 - 1;//EAX
          EDI := EDI + EAX;//EDI + (EAX)
          
          EAX := a.sub_004BEA58;
          
          EDX := lvar_14 - 1;//EDX
          EDX_EAX := EDX * EAX;//EDX * a.sub_004BEA58 And $FF{255}
          
          EAX := a.sub_004C8AE8;
          
          EDX := EDX * EAX;//EDX * a.sub_004BEA58 And $FF{255}{EAX} * (a.sub_004C8AE8 And $FF{255})
          EDI := EDI + EDX;//EDI + EDX * a.sub_004BEA58 And $FF{255}{EAX} * (a.sub_004C8AE8 And $FF{255})
          lvar_1C := EDI;
          EDX := 0;
          EAX := lvar_20;
          call();
          ECX := lvar_348;
          EDX := lvar_1C;
          EAX := ;
          call();
          EDX := 0;
          EAX := lvar_20;
          call();
        end;//4
      end;//3
    
    EAX := lvar_20;
    call();

      for lvar_14 := 1 to sub_004BE9E0(a)  do //004C1F47
      begin//3
        //004C1F51
        //push EAX
        EDX := lvar_14;
        ECX := b;
        EAX := EBX;//a
        a.sub_004C2B38(lvar_14, b, lvar_33C);
         := ;
        EDX := lvar_34C;
        EAX := lvar_20;
        call();
      end;//3
    
      for I := 1 to sub_004BE9E0(a)  do //004C1FA9
      begin//3
        //004C1FB3
        f928.Delete( a.sub_004BEA58 + (b - 1) - (I - 1)* a.sub_004BEA58);
      end;//3
   

      for lvar_14 := 1 to sub_004BE9E0(a)  do //004C202C
      begin//3
        //004C2036

        f928.Insert((lvar_14 - 1) * a.sub_004BEA58 + lvar_C, lvar_20[0]);
        lvar_20.delete(0);

      end;//3
    
     := 1;
   
      
      for I := 1 to sub_004BE9E0(a)  do //004C20AF
      //004C20B9
        f918.sub_004B6E84(I, true);
      
 
    a.sub_004C63C8;
    lvar_20.destroy;*)
    
	//004C20FC
  
end;//0

//004C213C
procedure TFichierCdn.sub_004C213C(Periode:dword; ARow:dword; var Moy:string); //moyenne brut
var
  I : integer;
  lvar_18,lvar_28,lvar_38, lvar_48: real;
  buf: string;
begin//0
  //004C213C..004C2179
    if (sub_004C62E8(Periode, ARow)) then
    begin//004C218F
      lvar_38 := 0;
      lvar_48 := 0;  
      if (byte(sub_004BEAD0(Periode)) > 0) then
      begin//3
        //004C21BF
        for I := 1 to byte(sub_004BEAD0(Periode)) do
        begin//004C21C9
          sub_004BEDCC(Periode, I, buf);
          if (buf = 'oui') then
          begin//004C2208
            try//004C2216
              sub_004BED7C(Periode, I, buf);
              lvar_18 := StrToFloat(buf);
              sub_004BED2C(Periode, I, buf);
              lvar_28 := StrToFloat(buf);
              sub_004BEF5C(Periode, I, ARow, buf);
              lvar_38 := StrToFloat(buf) * lvar_18 + lvar_38;
              lvar_48 := lvar_28 * lvar_18 + lvar_48;
            except//6
              on E:EConvertError do
              begin//004C2321
			    //....
              end;//7
              on E:EMathError do
              begin//004C2328
			  //....
              end;//7
            end;//6
          end;//5
        end;//4
      end;//3
      if (lvar_48<> 0) then
      begin//004C234E
        Moy := FloatToStrF(sub_004B9E48 * (lvar_38 / lvar_48), {2}ffFixed, 18, 2);
      end//3
      else
      begin//004C239D
        Moy := '';
      end;//3
      sub_004C6080(Periode, ARow,Moy);
      sub_004C61E4(Periode, ARow, false);
      Exit;
    end;//2
    sub_004C6144(Periode, ARow, Moy);
end;//0


//004C2410
procedure TFichierCdn.sub_004C2410(a:String; {b:Integer;} ArrendirMoyennes:dword; var Moy:string);
var
  lvar_20:real;
  lvar_30: Extended;
  buf:string;
begin//0
//004C2410
    try
      //004C2458
      lvar_20 := StrToFloat(a);
      case ArrendirMoyennes of
        0: Moy := a; //004C24A0 ne pas arrendir
        1:
        begin//004C24B3
          lvar_30 := 1;//INT(lvar_20 * 10);
          if (ROUND(lvar_20 * 10 * 10) = 0) then
          begin//004C24F6
            if (lvar_30 / 10 = 0) then//004C250F
              Moy := FloatToStrF(lvar_30 / 10,ffFixed{2}, 18, 0)
			else
            Moy := FloatToStrF(lvar_30 / 10,ffFixed{2}, 18, 1);
          end
		  else
          if ((ROUND(lvar_20 * 10 * 10) - 1) - 4 < 0) then//004C2592
            Moy:= FloatToStrF(lvar_30 / 10,ffFixed{2}, 18, 1)
		  else  
            Moy := FloatToStrF((lvar_30 + 1) / 10,ffFixed{2}, 18, 1);
        end;//4
       (* 2:
        begin//004C2618
          if (ROUND(lvar_20 * 100 - TRUNC(lvar_20) * 100) - 13 < 0) then
          begin///004C2669
            d := FloatToStrF(TRUNC(lvar_20),ffFixed{2}, 18, 0);
            Exit;
          end;//5
          if ((ROUND(lvar_20 * 100 - TRUNC(lvar_20) * 100) -13) - 25 < 0) then
          begin//004C26C1
            d := FloatToStrF(TRUNC(lvar_20) + 0.25,ffFixed{2}, 18, 2);
            Exit;
          end;//5
          if ((ROUND(lvar_20 * 100 - TRUNC(lvar_20) * 100)  -38) - 25 < 0) then
          begin//004C2722
            d := FloatToStrF(TRUNC(lvar_20) + 0.5,ffFixed{2}, 18, 1);
            Exit;
          end;//5
          if ((ROUND(lvar_20 * 100 - TRUNC(lvar_20) * 100)  -63) - 25 < 0) then
          begin//004C2783
            d := FloatToStrF(TRUNC(lvar_20) + 0.75,ffFixed{2}, 18, 2);
            Exit;
          end;//5
          if (ROUND(lvar_20 * 100 - TRUNC(lvar_20) * 100) -88 - 12 < 0) then
          begin//004C27E6
            d := FloatToStrF(TRUNC(lvar_20) + 1,ffFixed{2}, 18, 0);
            Exit;
          end;//5
        end;//4
        3:
        begin//004C2841
          if (ROUND(lvar_20 * 100 - TRUNC(lvar_20) * 100)  - 25 < 0) then
          begin//004C2892
            d := FloatToStrF(TRUNC(lvar_20),ffFixed{2}, 18, 0);
            Exit;
          end;//5
          if (ROUND(lvar_20 * 100 - TRUNC(lvar_20) * 100) -25 - 50 < 0) then
          begin//004C28EA
            d := FloatToStrF(TRUNC(lvar_20) + 0.5,ffFixed{2}, 18, 1);
            Exit;
          end;//5
          if (ROUND(lvar_20 * 100 - TRUNC(lvar_20) * 100) -75 - 25 < 0) then
          begin//004C294D
            d := FloatToStrF(TRUNC(lvar_20) + 1,ffFixed{2}, 18, 0);
            Exit;
          end;//5
        end;//4
        4:
        begin//004C29A8
          sub_004C2410(a,3,buf);
          if (StrToFloat(buf) < lvar_20) then
          begin//004C2A04
            d := FloatToStrF(lvar_20 + 0.5,ffFixed{2}, 18, 1);
            Exit;
          end;//5
          sub_004C2410(a,3,d);
        end;//4*)
      end;//3
    except//2
      on E:EConvertError do
      begin//3
        //004C2A77
         Moy := 'Error_Convert';
      end;//3
      on E:EMathError do
      begin//3
        //004C2A7F
        Moy := 'Error_Math';
      end;//3
    end;//2
end;//0

//004C2AF4
procedure TFichierCdn.sub_004C2AF4(Periode:dword; ARow:dword; ArrondirMoyennes:dword; var RMoy:string);
begin//0
  //004C2AF4
  sub_004C213C(Periode, ARow,RMoy); //calculer la moyenne brut
  sub_004C2410(RMoy, ArrondirMoyennes,RMoy); // Arrondir la Moyenne
end;

//004C2B38
procedure TFichierCdn.sub_004C2B38(Periode:dword; ARow:dword; var c:string);
var
  count:integer;
begin//0
  //004C2B38..004C2B5C
    count :=byte(sub_004BEA58) * (Periode - 1) + ARow - 1;
    if (count >= f928.Count) then
    begin//004C2BAB
      f928.Insert(count, '');
    end;//2
    c := f928[count];
end;//0

//004C2C00
procedure TFichierCdn.sub_004C2C00(a:dword; b:dword; c:dword;var d:string);
var
 I:integer;
begin//0
  //004C2C00..004C2C24
    I:=sub_004C8AE8 * (b - 1) + (c - 1) + sub_004BEA58 * (a - 1) * sub_004C8AE8;
    if (I >= f92C.Count) then
    begin//2
      //004C2CBA
      f92C.Insert(I, '');
    end;//2
    d := f92C[I];
end;//0


//004C2D10
procedure TFichierCdn.sub_004C2D10(Periode:dword; ARow:dword; ArrondirMoyennes:dword; var Moy:string);
var
  lvar_101,lvar_20C : string;
begin//0
  //004C2D10
  try
    //004C2D45
    sub_004C2AF4(Periode, ARow, ArrondirMoyennes, Moy);
    try//004C2D6A
      sub_004C2B38(Periode, ARow, lvar_20C);
      Moy := FloatToStrF(StrToFloat(Moy) {+ StrToFloat(lvar_20C)}, ffFixed{2}, 18, 2);
    except//2
      on E:EConvertError do
      begin//3
        //004C2E11
        Moy := 'error Convert';
      end;//3
    end;//2
  finally//004C2E31
  end;//1
end;//0


//004C2E60
{*//procedure sub_004C2E60(?:dword; ?:ShortString; ?:?; ?:?);
//begin
 004C2E60    push        ebp
 004C2E61    mov         ebp,esp
 004C2E63    add         esp,0FFFFFCA0
 004C2E69    push        ebx
 004C2E6A    push        esi
 004C2E6B    push        edi
 004C2E6C    xor         ebx,ebx
 004C2E6E    mov         dword ptr [ebp-35C],ebx
 004C2E74    mov         dword ptr [ebp-358],ebx
 004C2E7A    mov         dword ptr [ebp-354],ebx
 004C2E80    mov         dword ptr [ebp-350],ebx
 004C2E86    mov         esi,edx
 004C2E88    lea         edi,[ebp-14C]
 004C2E8E    push        ecx
 004C2E8F    xor         ecx,ecx
 004C2E91    mov         cl,byte ptr [esi]
 004C2E93    inc         ecx
 004C2E94    rep movs    byte ptr [edi],byte ptr [esi]
 004C2E96    pop         ecx
 004C2E97    mov         byte ptr [ebp-5],cl
 004C2E9A    mov         dword ptr [ebp-4],eax
 004C2E9D    xor         eax,eax
 004C2E9F    push        ebp
 004C2EA0    push        4C311C
 004C2EA5    push        dword ptr fs:[eax]
 004C2EA8    mov         dword ptr fs:[eax],esp
 004C2EAB    xor         eax,eax
 004C2EAD    mov         dword ptr [ebp-38],eax
 004C2EB0    mov         dword ptr [ebp-34],eax
 004C2EB3    mov         word ptr [ebp-30],ax
 004C2EB7    xor         eax,eax
 004C2EB9    mov         dword ptr [ebp-48],eax
 004C2EBC    mov         dword ptr [ebp-44],eax
 004C2EBF    mov         word ptr [ebp-40],ax
 004C2EC3    mov         dl,byte ptr [ebp-5]
 004C2EC6    mov         eax,dword ptr [ebp-4]
 004C2EC9    call        004BEAD0
 004C2ECE    and         eax,0FF
 004C2ED3    test        eax,eax
>004C2ED5    jle         004C309B
 004C2EDB    mov         dword ptr [ebp-4C],eax
 004C2EDE    mov         dword ptr [ebp-0C],1
 004C2EE5    lea         eax,[ebp-24C]
 004C2EEB    push        eax
 004C2EEC    mov         ebx,dword ptr [ebp-0C]
 004C2EEF    cmp         ebx,0FF
>004C2EF5    jbe         004C2EFC
 004C2EF7    call        @BoundErr
 004C2EFC    mov         ecx,ebx
 004C2EFE    mov         dl,byte ptr [ebp-5]
 004C2F01    mov         eax,dword ptr [ebp-4]
 004C2F04    call        004BEDCC
 004C2F09    lea         eax,[ebp-24C]
 004C2F0F    mov         edx,4C312C;'oui'
 004C2F14    xor         ecx,ecx
 004C2F16    mov         cl,byte ptr [eax]
 004C2F18    inc         ecx
 004C2F19    call        @AStrCmp
>004C2F1E    jne         004C308F
 004C2F24    lea         eax,[ebp-34C]
 004C2F2A    push        eax
 004C2F2B    mov         eax,dword ptr [ebp-0C]
 004C2F2E    cmp         eax,0FF
>004C2F33    jbe         004C2F3A
 004C2F35    call        @BoundErr
 004C2F3A    mov         ecx,ebx
 004C2F3C    mov         dl,byte ptr [ebp-5]
 004C2F3F    mov         eax,dword ptr [ebp-4]
 004C2F42    call        004BEEBC
 004C2F47    lea         eax,[ebp-34C]
 004C2F4D    lea         edx,[ebp-14C]
 004C2F53    xor         ecx,ecx
 004C2F55    mov         cl,byte ptr [eax]
 004C2F57    inc         ecx
 004C2F58    call        @AStrCmp
>004C2F5D    jne         004C308F
 004C2F63    xor         eax,eax
 004C2F65    push        ebp
 004C2F66    push        4C3063
 004C2F6B    push        dword ptr fs:[eax]
 004C2F6E    mov         dword ptr fs:[eax],esp
 004C2F71    lea         eax,[ebp-24C]
 004C2F77    push        eax
 004C2F78    mov         eax,dword ptr [ebp-0C]
 004C2F7B    cmp         eax,0FF
>004C2F80    jbe         004C2F87
 004C2F82    call        @BoundErr
 004C2F87    mov         ecx,ebx
 004C2F89    mov         dl,byte ptr [ebp-5]
 004C2F8C    mov         eax,dword ptr [ebp-4]
 004C2F8F    call        004BED7C
 004C2F94    lea         edx,[ebp-24C]
 004C2F9A    lea         eax,[ebp-350]
 004C2FA0    call        @LStrFromString
 004C2FA5    mov         eax,dword ptr [ebp-350]
 004C2FAB    call        StrToFloat
 004C2FB0    fstp        tbyte ptr [ebp-18]
 004C2FB3    wait
 004C2FB4    lea         eax,[ebp-24C]
 004C2FBA    push        eax
 004C2FBB    mov         eax,dword ptr [ebp-0C]
 004C2FBE    cmp         eax,0FF
>004C2FC3    jbe         004C2FCA
 004C2FC5    call        @BoundErr
 004C2FCA    mov         ecx,ebx
 004C2FCC    mov         dl,byte ptr [ebp-5]
 004C2FCF    mov         eax,dword ptr [ebp-4]
 004C2FD2    call        004BED2C
 004C2FD7    lea         edx,[ebp-24C]
 004C2FDD    lea         eax,[ebp-354]
 004C2FE3    call        @LStrFromString
 004C2FE8    mov         eax,dword ptr [ebp-354]
 004C2FEE    call        StrToFloat
 004C2FF3    fstp        tbyte ptr [ebp-28]
 004C2FF6    wait
 004C2FF7    mov         al,byte ptr [ebp+0C]
 004C2FFA    push        eax
 004C2FFB    lea         eax,[ebp-24C]
 004C3001    push        eax
 004C3002    mov         eax,dword ptr [ebp-0C]
 004C3005    cmp         eax,0FF
>004C300A    jbe         004C3011
 004C300C    call        @BoundErr
 004C3011    mov         ecx,ebx
 004C3013    mov         dl,byte ptr [ebp-5]
 004C3016    mov         eax,dword ptr [ebp-4]
 004C3019    call        004BEF5C
 004C301E    lea         edx,[ebp-24C]
 004C3024    lea         eax,[ebp-358]
 004C302A    call        @LStrFromString
 004C302F    mov         eax,dword ptr [ebp-358]
 004C3035    call        StrToFloat
 004C303A    fld         tbyte ptr [ebp-18]
 004C303D    fmulp       st(1),st
 004C303F    fld         tbyte ptr [ebp-38]
 004C3042    faddp       st(1),st
 004C3044    fstp        tbyte ptr [ebp-38]
 004C3047    wait
 004C3048    fld         tbyte ptr [ebp-28]
 004C304B    fld         tbyte ptr [ebp-18]
 004C304E    fmulp       st(1),st
 004C3050    fld         tbyte ptr [ebp-48]
 004C3053    faddp       st(1),st
 004C3055    fstp        tbyte ptr [ebp-48]
 004C3058    wait
 004C3059    xor         eax,eax
 004C305B    pop         edx
 004C305C    pop         ecx
 004C305D    pop         ecx
 004C305E    mov         dword ptr fs:[eax],edx
>004C3061    jmp         004C308F
>004C3063    jmp         @HandleOnException
 004C3068    dd          2
 004C306C    dd          00409B50;EConvertError
 004C3070    dd          004C307C
 004C3074    dd          004098E0;EMathError
 004C3078    dd          004C3083
 004C307C    call        @DoneExcept
>004C3081    jmp         004C308F
 004C3083    call        @DoneExcept
>004C3088    jmp         004C308F
 004C308A    call        @DoneExcept
 004C308F    inc         dword ptr [ebp-0C]
 004C3092    dec         dword ptr [ebp-4C]
>004C3095    jne         004C2EE5
 004C309B    fld         tbyte ptr [ebp-48]
 004C309E    fcomp       dword ptr ds:[4C3130];0:Single
 004C30A4    fnstsw      al
 004C30A6    sahf
>004C30A7    je          004C30F8
 004C30A9    call        004B9E48
 004C30AE    mov         dword ptr [ebp-360],eax
 004C30B4    fild        dword ptr [ebp-360]
 004C30BA    fld         tbyte ptr [ebp-38]
 004C30BD    fld         tbyte ptr [ebp-48]
 004C30C0    fdivp       st(1),st
 004C30C2    fmulp       st(1),st
 004C30C4    add         esp,0FFFFFFF4
 004C30C7    fstp        tbyte ptr [esp]
 004C30CA    wait
 004C30CB    lea         eax,[ebp-35C]
 004C30D1    push        eax
 004C30D2    mov         ecx,2
 004C30D7    mov         edx,12
 004C30DC    mov         al,2
 004C30DE    call        FloatToStrF
 004C30E3    mov         edx,dword ptr [ebp-35C]
 004C30E9    mov         eax,dword ptr [ebp+8]
 004C30EC    mov         ecx,0FF
 004C30F1    call        @LStrToString
>004C30F6    jmp         004C30FE
 004C30F8    mov         eax,dword ptr [ebp+8]
 004C30FB    mov         byte ptr [eax],0
 004C30FE    xor         eax,eax
 004C3100    pop         edx
 004C3101    pop         ecx
 004C3102    pop         ecx
 004C3103    mov         dword ptr fs:[eax],edx
 004C3106    push        4C3123
 004C310B    lea         eax,[ebp-35C]
 004C3111    mov         edx,4
 004C3116    call        @LStrArrayClr
 004C311B    ret
>004C311C    jmp         @HandleFinally
>004C3121    jmp         004C310B
 004C3123    pop         edi
 004C3124    pop         esi
 004C3125    pop         ebx
 004C3126    mov         esp,ebp
 004C3128    pop         ebp
 004C3129    ret         8
end;*}

//004C3134
{*//function sub_004C3134(?:dword; ?:?):?;
//begin
 004C3134    push        ebp
 004C3135    mov         ebp,esp
 004C3137    add         esp,0FFFFFECC
 004C313D    push        ebx
 004C313E    push        esi
 004C313F    xor         ecx,ecx
 004C3141    mov         dword ptr [ebp-134],ecx
 004C3147    mov         dword ptr [ebp-30],ecx
 004C314A    mov         byte ptr [ebp-1],dl
 004C314D    mov         esi,eax
 004C314F    xor         eax,eax
 004C3151    push        ebp
 004C3152    push        4C32A5
 004C3157    push        dword ptr fs:[eax]
 004C315A    mov         dword ptr fs:[eax],esp
 004C315D    mov         eax,esi
 004C315F    call        004BE9E0
 004C3164    xor         edx,edx
 004C3166    mov         dl,al
 004C3168    cmp         edx,0FF
>004C316E    jbe         004C3175
 004C3170    call        @BoundErr
 004C3175    mov         al,1
 004C3177    lea         ecx,[ebp-2C]
 004C317A    mov         ah,20
 004C317C    call        @SetRange
 004C3181    mov         al,byte ptr [ebp-1]
 004C3184    and         eax,0FF
 004C3189    bt          dword ptr [ebp-2C],eax
>004C318D    jae         004C31FC
 004C318F    mov         dl,1
 004C3191    mov         eax,[004120B8];TStringList
 004C3196    call        TObject.Create;TStringList.Create
 004C319B    mov         dword ptr [ebp-8],eax
 004C319E    mov         dl,1
 004C31A0    mov         eax,dword ptr [ebp-8]
 004C31A3    call        TStringList.SetSorted
 004C31A8    mov         eax,dword ptr [ebp-8]
 004C31AB    mov         byte ptr [eax+19],0;TStringList.FDuplicates:TDuplicates
 004C31AF    mov         dl,byte ptr [ebp-1]
 004C31B2    mov         eax,esi
 004C31B4    call        004BEAD0
 004C31B9    test        al,al
>004C31BB    jbe         004C31F4
 004C31BD    mov         byte ptr [ebp-9],al
 004C31C0    mov         bl,1
 004C31C2    lea         eax,[ebp-130]
 004C31C8    push        eax
 004C31C9    mov         ecx,ebx
 004C31CB    mov         dl,byte ptr [ebp-1]
 004C31CE    mov         eax,esi
 004C31D0    call        004BEEBC
 004C31D5    lea         edx,[ebp-130]
 004C31DB    lea         eax,[ebp-30]
 004C31DE    call        @LStrFromString
 004C31E3    mov         edx,dword ptr [ebp-30]
 004C31E6    mov         eax,dword ptr [ebp-8]
 004C31E9    mov         ecx,dword ptr [eax]
 004C31EB    call        dword ptr [ecx+34];TStringList.Add
 004C31EE    inc         ebx
 004C31EF    dec         byte ptr [ebp-9]
>004C31F2    jne         004C31C2
 004C31F4    mov         ebx,dword ptr [ebp-8]
>004C31F7    jmp         004C3284
 004C31FC    mov         dl,1
 004C31FE    mov         eax,[004120B8];TStringList
 004C3203    call        TObject.Create;TStringList.Create
 004C3208    mov         dword ptr [ebp-8],eax
 004C320B    mov         dl,1
 004C320D    mov         eax,dword ptr [ebp-8]
 004C3210    call        TStringList.SetSorted
 004C3215    mov         eax,dword ptr [ebp-8]
 004C3218    mov         byte ptr [eax+19],0;TStringList.FDuplicates:TDuplicates
 004C321C    mov         eax,esi
 004C321E    call        004BE9E0
 004C3223    test        al,al
>004C3225    jbe         004C3281
 004C3227    mov         byte ptr [ebp-9],al
 004C322A    mov         byte ptr [ebp-2],1
 004C322E    mov         dl,byte ptr [ebp-2]
 004C3231    mov         eax,esi
 004C3233    call        004BEAD0
 004C3238    test        al,al
>004C323A    jbe         004C3279
 004C323C    mov         byte ptr [ebp-0A],al
 004C323F    mov         bl,1
 004C3241    lea         eax,[ebp-130]
 004C3247    push        eax
 004C3248    mov         ecx,ebx
 004C324A    mov         dl,byte ptr [ebp-2]
 004C324D    mov         eax,esi
 004C324F    call        004BEEBC
 004C3254    lea         edx,[ebp-130]
 004C325A    lea         eax,[ebp-134]
 004C3260    call        @LStrFromString
 004C3265    mov         edx,dword ptr [ebp-134]
 004C326B    mov         eax,dword ptr [ebp-8]
 004C326E    mov         ecx,dword ptr [eax]
 004C3270    call        dword ptr [ecx+34];TStringList.Add
 004C3273    inc         ebx
 004C3274    dec         byte ptr [ebp-0A]
>004C3277    jne         004C3241
 004C3279    inc         byte ptr [ebp-2]
 004C327C    dec         byte ptr [ebp-9]
>004C327F    jne         004C322E
 004C3281    mov         ebx,dword ptr [ebp-8]
 004C3284    xor         eax,eax
 004C3286    pop         edx
 004C3287    pop         ecx
 004C3288    pop         ecx
 004C3289    mov         dword ptr fs:[eax],edx
 004C328C    push        4C32AC
 004C3291    lea         eax,[ebp-134]
 004C3297    call        @LStrClr
 004C329C    lea         eax,[ebp-30]
 004C329F    call        @LStrClr
 004C32A4    ret
>004C32A5    jmp         @HandleFinally
>004C32AA    jmp         004C3291
 004C32AC    mov         eax,ebx
 004C32AE    pop         esi
 004C32AF    pop         ebx
 004C32B0    mov         esp,ebp
 004C32B2    pop         ebp
 004C32B3    ret
end;*}

//004C32B4
//procedure sub_004C32B4(a:dword; b:pointer; c:pointer; d:pointer; e:pointer; f:pointer);
//begin
{*
 004C32B4    push        ebp
 004C32B5    mov         ebp,esp
 004C32B7    add         esp,0FFFFFE8C
 004C32BD    push        ebx
 004C32BE    push        esi
 004C32BF    push        edi
 004C32C0    xor         ebx,ebx
 004C32C2    mov         dword ptr [ebp-174],ebx
 004C32C8    mov         dword ptr [ebp-170],ebx
 004C32CE    mov         dword ptr [ebp-16C],ebx
 004C32D4    mov         dword ptr [ebp-168],ebx
 004C32DA    mov         dword ptr [ebp-160],ebx
 004C32E0    mov         dword ptr [ebp-5C],ebx
 004C32E3    mov         byte ptr [ebp-6],cl
 004C32E6    mov         byte ptr [ebp-5],dl
 004C32E9    mov         dword ptr [ebp-4],eax
 004C32EC    xor         eax,eax
 004C32EE    push        ebp
 004C32EF    push        4C3660
 004C32F4    push        dword ptr fs:[eax]
 004C32F7    mov         dword ptr fs:[eax],esp
 004C32FA    mov         al,byte ptr [ebp+0C]
 004C32FD    sub         al,1
>004C32FF    jb          004C330C
>004C3301    je          004C3429
>004C3307    jmp         004C362F
 004C330C    xor         eax,eax
 004C330E    mov         dword ptr [ebp-10],eax
 004C3311    mov         dword ptr [ebp-0C],eax
 004C3314    mov         word ptr [ebp-8],ax
 004C3318    mov         byte ptr [ebp-52],0
 004C331C    mov         eax,dword ptr [ebp-4]
 004C331F    call        004BE9E0
 004C3324    test        al,al
>004C3326    jbe         004C33B3
 004C332C    mov         byte ptr [ebp-54],al
 004C332F    mov         byte ptr [ebp-51],1
 004C3333    xor         eax,eax
 004C3335    push        ebp
 004C3336    push        4C338E
 004C333B    push        dword ptr fs:[eax]
 004C333E    mov         dword ptr fs:[eax],esp
 004C3341    mov         al,byte ptr [ebp-6]
 004C3344    push        eax
 004C3345    lea         eax,[ebp-15C]
 004C334B    push        eax
 004C334C    mov         cl,byte ptr [ebp-5]
 004C334F    mov         dl,byte ptr [ebp-51]
 004C3352    mov         eax,dword ptr [ebp-4]
 004C3355    call        004C2D10
 004C335A    lea         edx,[ebp-15C]
 004C3360    lea         eax,[ebp-5C]
 004C3363    call        @LStrFromString
 004C3368    mov         eax,dword ptr [ebp-5C]
 004C336B    call        StrToFloat
 004C3370    fld         tbyte ptr [ebp-10]
 004C3373    faddp       st(1),st
 004C3375    fstp        tbyte ptr [ebp-10]
 004C3378    wait
 004C3379    add         byte ptr [ebp-52],1
>004C337D    jae         004C3384
 004C337F    call        @IntOver
 004C3384    xor         eax,eax
 004C3386    pop         edx
 004C3387    pop         ecx
 004C3388    pop         ecx
 004C3389    mov         dword ptr fs:[eax],edx
>004C338C    jmp         004C33AB
>004C338E    jmp         @HandleOnException
 004C3393    dd          1
 004C3397    dd          00409B50;EConvertError
 004C339B    dd          004C339F
 004C339F    call        @DoneExcept
>004C33A4    jmp         004C33AB
 004C33A6    call        @DoneExcept
 004C33AB    inc         byte ptr [ebp-51]
 004C33AE    dec         byte ptr [ebp-54]
>004C33B1    jne         004C3333
 004C33B3    cmp         byte ptr [ebp-52],0
>004C33B7    je          004C341E
 004C33B9    mov         eax,dword ptr [ebp+8]
 004C33BC    push        eax
 004C33BD    xor         eax,eax
 004C33BF    mov         al,byte ptr [ebp-52]
 004C33C2    mov         dword ptr [ebp-164],eax
 004C33C8    fild        dword ptr [ebp-164]
 004C33CE    fld         tbyte ptr [ebp-10]
 004C33D1    fdivrp      st(1),st
 004C33D3    add         esp,0FFFFFFF4
 004C33D6    fstp        tbyte ptr [esp]
 004C33D9    wait
 004C33DA    lea         eax,[ebp-160]
 004C33E0    push        eax
 004C33E1    mov         ecx,2
 004C33E6    mov         edx,12
 004C33EB    mov         al,2
 004C33ED    call        FloatToStrF
 004C33F2    mov         edx,dword ptr [ebp-160]
 004C33F8    lea         eax,[ebp-15C]
 004C33FE    mov         ecx,0FF
 004C3403    call        @LStrToString
 004C3408    lea         edx,[ebp-15C]
 004C340E    mov         cl,byte ptr [ebp+10]
 004C3411    mov         eax,dword ptr [ebp-4]
 004C3414    call        004C2410
>004C3419    jmp         004C362F
 004C341E    mov         eax,dword ptr [ebp+8]
 004C3421    mov         byte ptr [eax],0
>004C3424    jmp         004C362F
 004C3429    xor         eax,eax
 004C342B    mov         dword ptr [ebp-10],eax
 004C342E    mov         dword ptr [ebp-0C],eax
 004C3431    mov         word ptr [ebp-8],ax
 004C3435    xor         eax,eax
 004C3437    mov         dword ptr [ebp-50],eax
 004C343A    mov         dword ptr [ebp-4C],eax
 004C343D    mov         word ptr [ebp-48],ax
 004C3441    mov         eax,dword ptr [ebp-4]
 004C3444    call        004BE9E0
 004C3449    test        al,al
>004C344B    jbe         004C35B4
 004C3451    mov         byte ptr [ebp-54],al
 004C3454    mov         byte ptr [ebp-51],1
 004C3458    mov         dl,byte ptr [ebp-51]
 004C345B    mov         eax,dword ptr [ebp-4]
 004C345E    call        004BEAD0
 004C3463    test        al,al
>004C3465    jbe         004C35A8
 004C346B    mov         byte ptr [ebp-55],al
 004C346E    mov         byte ptr [ebp-53],1
 004C3472    lea         eax,[ebp-15C]
 004C3478    push        eax
 004C3479    mov         cl,byte ptr [ebp-53]
 004C347C    mov         dl,byte ptr [ebp-51]
 004C347F    mov         eax,dword ptr [ebp-4]
 004C3482    call        004BEDCC
 004C3487    lea         eax,[ebp-15C]
 004C348D    mov         edx,4C3670;'oui'
 004C3492    xor         ecx,ecx
 004C3494    mov         cl,byte ptr [eax]
 004C3496    inc         ecx
 004C3497    call        @AStrCmp
>004C349C    jne         004C359C
 004C34A2    xor         eax,eax
 004C34A4    push        ebp
 004C34A5    push        4C357F
 004C34AA    push        dword ptr fs:[eax]
 004C34AD    mov         dword ptr fs:[eax],esp
 004C34B0    mov         al,byte ptr [ebp-5]
 004C34B3    push        eax
 004C34B4    lea         eax,[ebp-15C]
 004C34BA    push        eax
 004C34BB    mov         cl,byte ptr [ebp-53]
 004C34BE    mov         dl,byte ptr [ebp-51]
 004C34C1    mov         eax,dword ptr [ebp-4]
 004C34C4    call        004BEF5C
 004C34C9    lea         edx,[ebp-15C]
 004C34CF    lea         eax,[ebp-168]
 004C34D5    call        @LStrFromString
 004C34DA    mov         eax,dword ptr [ebp-168]
 004C34E0    call        StrToFloat
 004C34E5    fstp        tbyte ptr [ebp-20]
 004C34E8    wait
 004C34E9    lea         eax,[ebp-15C]
 004C34EF    push        eax
 004C34F0    mov         cl,byte ptr [ebp-53]
 004C34F3    mov         dl,byte ptr [ebp-51]
 004C34F6    mov         eax,dword ptr [ebp-4]
 004C34F9    call        004BED2C
 004C34FE    lea         edx,[ebp-15C]
 004C3504    lea         eax,[ebp-16C]
 004C350A    call        @LStrFromString
 004C350F    mov         eax,dword ptr [ebp-16C]
 004C3515    call        StrToFloat
 004C351A    fstp        tbyte ptr [ebp-40]
 004C351D    wait
 004C351E    lea         eax,[ebp-15C]
 004C3524    push        eax
 004C3525    mov         cl,byte ptr [ebp-53]
 004C3528    mov         dl,byte ptr [ebp-51]
 004C352B    mov         eax,dword ptr [ebp-4]
 004C352E    call        004BED7C
 004C3533    lea         edx,[ebp-15C]
 004C3539    lea         eax,[ebp-170]
 004C353F    call        @LStrFromString
 004C3544    mov         eax,dword ptr [ebp-170]
 004C354A    call        StrToFloat
 004C354F    fstp        tbyte ptr [ebp-30]
 004C3552    wait
 004C3553    fld         tbyte ptr [ebp-20]
 004C3556    fld         tbyte ptr [ebp-30]
 004C3559    fmulp       st(1),st
 004C355B    fld         tbyte ptr [ebp-10]
 004C355E    faddp       st(1),st
 004C3560    fstp        tbyte ptr [ebp-10]
 004C3563    wait
 004C3564    fld         tbyte ptr [ebp-40]
 004C3567    fld         tbyte ptr [ebp-30]
 004C356A    fmulp       st(1),st
 004C356C    fld         tbyte ptr [ebp-50]
 004C356F    faddp       st(1),st
 004C3571    fstp        tbyte ptr [ebp-50]
 004C3574    wait
 004C3575    xor         eax,eax
 004C3577    pop         edx
 004C3578    pop         ecx
 004C3579    pop         ecx
 004C357A    mov         dword ptr fs:[eax],edx
>004C357D    jmp         004C359C
>004C357F    jmp         @HandleOnException
 004C3584    dd          1
 004C3588    dd          004094F8;Exception
 004C358C    dd          004C3590
 004C3590    call        @DoneExcept
>004C3595    jmp         004C359C
 004C3597    call        @DoneExcept
 004C359C    inc         byte ptr [ebp-53]
 004C359F    dec         byte ptr [ebp-55]
>004C35A2    jne         004C3472
 004C35A8    inc         byte ptr [ebp-51]
 004C35AB    dec         byte ptr [ebp-54]
>004C35AE    jne         004C3458
 004C35B4    fld         tbyte ptr [ebp-50]
 004C35B7    fcomp       dword ptr ds:[4C3674];0:Single
 004C35BD    fnstsw      al
 004C35BF    sahf
>004C35C0    je          004C3629
 004C35C2    mov         eax,dword ptr [ebp+8]
 004C35C5    push        eax
 004C35C6    call        004B9E48
 004C35CB    mov         dword ptr [ebp-164],eax
 004C35D1    fild        dword ptr [ebp-164]
 004C35D7    fld         tbyte ptr [ebp-10]
 004C35DA    fld         tbyte ptr [ebp-50]
 004C35DD    fdivp       st(1),st
 004C35DF    fmulp       st(1),st
 004C35E1    add         esp,0FFFFFFF4
 004C35E4    fstp        tbyte ptr [esp]
 004C35E7    wait
 004C35E8    lea         eax,[ebp-174]
 004C35EE    push        eax
 004C35EF    mov         ecx,2
 004C35F4    mov         edx,12
 004C35F9    mov         al,2
 004C35FB    call        FloatToStrF
 004C3600    mov         edx,dword ptr [ebp-174]
 004C3606    lea         eax,[ebp-15C]
 004C360C    mov         ecx,0FF
 004C3611    call        @LStrToString
 004C3616    lea         edx,[ebp-15C]
 004C361C    mov         cl,byte ptr [ebp+10]
 004C361F    mov         eax,dword ptr [ebp-4]
 004C3622    call        004C2410
>004C3627    jmp         004C362F
 004C3629    mov         eax,dword ptr [ebp+8]
 004C362C    mov         byte ptr [eax],0
 004C362F    xor         eax,eax
 004C3631    pop         edx
 004C3632    pop         ecx
 004C3633    pop         ecx
 004C3634    mov         dword ptr fs:[eax],edx
 004C3637    push        4C3667
 004C363C    lea         eax,[ebp-174]
 004C3642    mov         edx,4
 004C3647    call        @LStrArrayClr
 004C364C    lea         eax,[ebp-160]
 004C3652    call        @LStrClr
 004C3657    lea         eax,[ebp-5C]
 004C365A    call        @LStrClr
 004C365F    ret
>004C3660    jmp         @HandleFinally
>004C3665    jmp         004C363C
 004C3667    pop         edi
 004C3668    pop         esi
 004C3669    pop         ebx
 004C366A    mov         esp,ebp
 004C366C    pop         ebp
 004C366D    ret         0C
*}
//end;

//004C3678
{*//procedure sub_004C3678(?:dword; ?:?; ?:?);
//begin
 004C3678    push        ebp
 004C3679    mov         ebp,esp
 004C367B    add         esp,0FFFFFDF4
 004C3681    push        ebx
 004C3682    push        esi
 004C3683    push        edi
 004C3684    xor         ebx,ebx
 004C3686    mov         dword ptr [ebp-20C],ebx
 004C368C    mov         esi,dword ptr [ebp+8]
 004C368F    lea         edi,[ebp-108]
 004C3695    push        ecx
 004C3696    xor         ecx,ecx
 004C3698    mov         cl,byte ptr [esi]
 004C369A    inc         ecx
 004C369B    rep movs    byte ptr [edi],byte ptr [esi]
 004C369D    pop         ecx
 004C369E    mov         byte ptr [ebp-1],cl
 004C36A1    mov         ebx,edx
 004C36A3    mov         esi,eax
 004C36A5    xor         eax,eax
 004C36A7    push        ebp
 004C36A8    push        4C3785
 004C36AD    push        dword ptr fs:[eax]
 004C36B0    mov         dword ptr fs:[eax],esp
 004C36B3    mov         eax,esi
 004C36B5    call        TFichierCdn.sub_004BEA58
 004C36BA    and         eax,0FF
 004C36BF    xor         edx,edx
 004C36C1    mov         dl,bl
 004C36C3    sub         edx,1
>004C36C6    jno         004C36CD
 004C36C8    call        @IntOver
 004C36CD    imul        edx
>004C36CF    jno         004C36D6
 004C36D1    call        @IntOver
 004C36D6    xor         edx,edx
 004C36D8    mov         dl,byte ptr [ebp-1]
 004C36DB    sub         edx,1
>004C36DE    jno         004C36E5
 004C36E0    call        @IntOver
 004C36E5    add         eax,edx
>004C36E7    jno         004C36EE
 004C36E9    call        @IntOver
 004C36EE    mov         dword ptr [ebp-8],eax
 004C36F1    lea         eax,[ebp-208]
 004C36F7    push        eax
 004C36F8    mov         cl,byte ptr [ebp-1]
 004C36FB    mov         edx,ebx
 004C36FD    mov         eax,esi
 004C36FF    call        004C2B38
 004C3704    lea         eax,[ebp-208]
 004C370A    lea         edx,[ebp-108]
 004C3710    xor         ecx,ecx
 004C3712    mov         cl,byte ptr [eax]
 004C3714    inc         ecx
 004C3715    call        @AStrCmp
>004C371A    je          004C376C
 004C371C    lea         eax,[ebp-20C]
 004C3722    lea         edx,[ebp-108]
 004C3728    call        @LStrFromString
 004C372D    mov         ecx,dword ptr [ebp-20C]
 004C3733    mov         edx,dword ptr [ebp-8]
 004C3736    mov         eax,dword ptr [esi+928]
 004C373C    mov         edi,dword ptr [eax]
 004C373E    call        dword ptr [edi+54]
 004C3741    mov         edx,dword ptr [ebp-8]
 004C3744    add         edx,1
>004C3747    jno         004C374E
 004C3749    call        @IntOver
 004C374E    mov         eax,dword ptr [esi+928]
 004C3754    mov         ecx,dword ptr [eax]
 004C3756    call        dword ptr [ecx+44]
 004C3759    mov         byte ptr [esi+8],1
 004C375D    mov         cl,1
 004C375F    mov         edx,ebx
 004C3761    mov         eax,dword ptr [esi+918]
 004C3767    call        004B6E84
 004C376C    xor         eax,eax
 004C376E    pop         edx
 004C376F    pop         ecx
 004C3770    pop         ecx
 004C3771    mov         dword ptr fs:[eax],edx
 004C3774    push        4C378C
 004C3779    lea         eax,[ebp-20C]
 004C377F    call        @LStrClr
 004C3784    ret
>004C3785    jmp         @HandleFinally
>004C378A    jmp         004C3779
 004C378C    pop         edi
 004C378D    pop         esi
 004C378E    pop         ebx
 004C378F    mov         esp,ebp
 004C3791    pop         ebp
 004C3792    ret         4
end;*}

//004C3798
{*//procedure sub_004C3798(?:dword; ?:dword; ?:?; ?:?);
//begin
 004C3798    push        ebp
 004C3799    mov         ebp,esp
 004C379B    add         esp,0FFFFFDF4
 004C37A1    push        ebx
 004C37A2    push        esi
 004C37A3    push        edi
 004C37A4    xor         ebx,ebx
 004C37A6    mov         dword ptr [ebp-20C],ebx
 004C37AC    mov         esi,dword ptr [ebp+0C]
 004C37AF    lea         edi,[ebp-108]
 004C37B5    push        ecx
 004C37B6    xor         ecx,ecx
 004C37B8    mov         cl,byte ptr [esi]
 004C37BA    inc         ecx
 004C37BB    rep movs    byte ptr [edi],byte ptr [esi]
 004C37BD    pop         ecx
 004C37BE    mov         byte ptr [ebp-1],cl
 004C37C1    mov         ebx,edx
 004C37C3    mov         esi,eax
 004C37C5    xor         eax,eax
 004C37C7    push        ebp
 004C37C8    push        4C38F6
 004C37CD    push        dword ptr fs:[eax]
 004C37D0    mov         dword ptr fs:[eax],esp
 004C37D3    mov         al,byte ptr [ebp+8]
 004C37D6    push        eax
 004C37D7    lea         eax,[ebp-208]
 004C37DD    push        eax
 004C37DE    mov         cl,byte ptr [ebp-1]
 004C37E1    mov         edx,ebx
 004C37E3    mov         eax,esi
 004C37E5    call        004C2C00
 004C37EA    lea         eax,[ebp-208]
 004C37F0    lea         edx,[ebp-108]
 004C37F6    xor         ecx,ecx
 004C37F8    mov         cl,byte ptr [eax]
 004C37FA    inc         ecx
 004C37FB    call        @AStrCmp
>004C3800    je          004C38DD
 004C3806    mov         eax,esi
 004C3808    call        004C8AE8
 004C380D    mov         edi,eax
 004C380F    and         edi,0FF
 004C3815    xor         eax,eax
 004C3817    mov         al,byte ptr [ebp-1]
 004C381A    sub         eax,1
>004C381D    jno         004C3824
 004C381F    call        @IntOver
 004C3824    imul        edi,eax
>004C3827    jno         004C382E
 004C3829    call        @IntOver
 004C382E    xor         eax,eax
 004C3830    mov         al,byte ptr [ebp+8]
 004C3833    sub         eax,1
>004C3836    jno         004C383D
 004C3838    call        @IntOver
 004C383D    add         edi,eax
>004C383F    jno         004C3846
 004C3841    call        @IntOver
 004C3846    mov         eax,esi
 004C3848    call        TFichierCdn.sub_004BEA58
 004C384D    and         eax,0FF
 004C3852    xor         edx,edx
 004C3854    mov         dl,bl
 004C3856    sub         edx,1
>004C3859    jno         004C3860
 004C385B    call        @IntOver
 004C3860    imul        edx
>004C3862    jno         004C3869
 004C3864    call        @IntOver
 004C3869    push        eax
 004C386A    mov         eax,esi
 004C386C    call        004C8AE8
 004C3871    and         eax,0FF
 004C3876    pop         edx
 004C3877    imul        edx,eax
>004C387A    jno         004C3881
 004C387C    call        @IntOver
 004C3881    add         edi,edx
>004C3883    jno         004C388A
 004C3885    call        @IntOver
 004C388A    mov         dword ptr [ebp-8],edi
 004C388D    lea         eax,[ebp-20C]
 004C3893    lea         edx,[ebp-108]
 004C3899    call        @LStrFromString
 004C389E    mov         ecx,dword ptr [ebp-20C]
 004C38A4    mov         edx,dword ptr [ebp-8]
 004C38A7    mov         eax,dword ptr [esi+92C]
 004C38AD    mov         edi,dword ptr [eax]
 004C38AF    call        dword ptr [edi+54]
 004C38B2    mov         edx,dword ptr [ebp-8]
 004C38B5    add         edx,1
>004C38B8    jno         004C38BF
 004C38BA    call        @IntOver
 004C38BF    mov         eax,dword ptr [esi+92C]
 004C38C5    mov         ecx,dword ptr [eax]
 004C38C7    call        dword ptr [ecx+44]
 004C38CA    mov         byte ptr [esi+8],1
 004C38CE    mov         cl,1
 004C38D0    mov         edx,ebx
 004C38D2    mov         eax,dword ptr [esi+918]
 004C38D8    call        004B6E84
 004C38DD    xor         eax,eax
 004C38DF    pop         edx
 004C38E0    pop         ecx
 004C38E1    pop         ecx
 004C38E2    mov         dword ptr fs:[eax],edx
 004C38E5    push        4C38FD
 004C38EA    lea         eax,[ebp-20C]
 004C38F0    call        @LStrClr
 004C38F5    ret
>004C38F6    jmp         @HandleFinally
>004C38FB    jmp         004C38EA
 004C38FD    pop         edi
 004C38FE    pop         esi
 004C38FF    pop         ebx
 004C3900    mov         esp,ebp
 004C3902    pop         ebp
 004C3903    ret         8
end;*}

//004C3908
procedure TFichierCdn.sub_004C3908(var a:string);
begin//0
  //004C3908
  a := f310;
end;//0


//004C3920
procedure TFichierCdn.sub_004C3920(a:String);
begin//0
  //004C3920
  f310 := a;
  f8 := true;
end;//0


//004C3954
function TFichierCdn.sub_004C3954:boolean;
begin
   result := f8;
end;

//004C3958
procedure TFichierCdn.sub_004C3958(Periode:dword; var s:string; ACol:dword);
begin
s:='';//for testing
{* 004C3958    push        ebp
 004C3959    mov         ebp,esp
 004C395B    add         esp,0FFFFFEC8
 004C3961    push        ebx
 004C3962    push        esi
 004C3963    push        edi
 004C3964    xor         ebx,ebx
 004C3966    mov         dword ptr [ebp-138],ebx
 004C396C    mov         dword ptr [ebp-134],ebx
 004C3972    mov         dword ptr [ebp-30],ebx
 004C3975    mov         byte ptr [ebp-6],cl
 004C3978    mov         byte ptr [ebp-5],dl
 004C397B    mov         dword ptr [ebp-4],eax
 004C397E    xor         eax,eax
 004C3980    push        ebp
 004C3981    push        4C3B42
 004C3986    push        dword ptr fs:[eax]
 004C3989    mov         dword ptr fs:[eax],esp
 004C398C    push        1
 004C398E    mov         cl,byte ptr [ebp-6]
 004C3991    mov         dl,byte ptr [ebp-5]
 004C3994    mov         eax,dword ptr [ebp-4]
 004C3997    call        004C6030
 004C399C    test        al,al
>004C399E    je          004C3B08
 004C39A4    xor         eax,eax
 004C39A6    mov         dword ptr [ebp-28],eax
 004C39A9    lea         eax,[ebp-130]
 004C39AF    push        eax
 004C39B0    mov         cl,byte ptr [ebp-6]
 004C39B3    mov         dl,byte ptr [ebp-5]
 004C39B6    mov         eax,dword ptr [ebp-4]
 004C39B9    call        004BED2C
 004C39BE    lea         edx,[ebp-130]
 004C39C4    lea         eax,[ebp-30]
 004C39C7    call        @LStrFromString
 004C39CC    mov         eax,dword ptr [ebp-30]
 004C39CF    call        StrToFloat
 004C39D4    fstp        tbyte ptr [ebp-10]
 004C39D7    wait
 004C39D8    mov         eax,dword ptr [ebp-4]
 004C39DB    call        TFichierCdn.sub_004BEA58
 004C39E0    and         eax,0FF
 004C39E5    test        eax,eax
>004C39E7    jle         004C3AA9
 004C39ED    mov         dword ptr [ebp-2C],eax
 004C39F0    mov         dword ptr [ebp-24],1
 004C39F7    xor         eax,eax
 004C39F9    push        ebp
 004C39FA    push        4C3A80
 004C39FF    push        dword ptr fs:[eax]
 004C3A02    mov         dword ptr fs:[eax],esp
 004C3A05    mov         eax,dword ptr [ebp-24]
 004C3A08    cmp         eax,0FF
>004C3A0D    jbe         004C3A14
 004C3A0F    call        @BoundErr
 004C3A14    push        eax
 004C3A15    lea         eax,[ebp-130]
 004C3A1B    push        eax
 004C3A1C    mov         cl,byte ptr [ebp-6]
 004C3A1F    mov         dl,byte ptr [ebp-5]
 004C3A22    mov         eax,dword ptr [ebp-4]
 004C3A25    call        004BEF5C
 004C3A2A    lea         edx,[ebp-130]
 004C3A30    lea         eax,[ebp-134]
 004C3A36    call        @LStrFromString
 004C3A3B    mov         eax,dword ptr [ebp-134]
 004C3A41    call        StrToFloat
 004C3A46    fstp        tbyte ptr [ebp-20]
 004C3A49    wait
 004C3A4A    fld         tbyte ptr [ebp-10]
 004C3A4D    fld         tbyte ptr [ebp-20]
 004C3A50    fcompp
 004C3A52    fnstsw      al
 004C3A54    sahf
>004C3A55    jae         004C3A6B
 004C3A57    mov         eax,dword ptr [ebp-20]
 004C3A5A    mov         dword ptr [ebp-10],eax
 004C3A5D    mov         eax,dword ptr [ebp-1C]
 004C3A60    mov         dword ptr [ebp-0C],eax
 004C3A63    mov         ax,word ptr [ebp-18]
 004C3A67    mov         word ptr [ebp-8],ax
 004C3A6B    add         dword ptr [ebp-28],1
>004C3A6F    jno         004C3A76
 004C3A71    call        @IntOver
 004C3A76    xor         eax,eax
 004C3A78    pop         edx
 004C3A79    pop         ecx
 004C3A7A    pop         ecx
 004C3A7B    mov         dword ptr fs:[eax],edx
>004C3A7E    jmp         004C3A9D
>004C3A80    jmp         @HandleOnException
 004C3A85    dd          1
 004C3A89    dd          00409B50;EConvertError
 004C3A8D    dd          004C3A91
 004C3A91    call        @DoneExcept
>004C3A96    jmp         004C3A9D
 004C3A98    call        @DoneExcept
 004C3A9D    inc         dword ptr [ebp-24]
 004C3AA0    dec         dword ptr [ebp-2C]
>004C3AA3    jne         004C39F7
 004C3AA9    cmp         dword ptr [ebp-28],0
>004C3AAD    jle         004C3ADA
 004C3AAF    mov         ax,word ptr [ebp-8]
 004C3AB3    push        eax
 004C3AB4    push        dword ptr [ebp-0C]
 004C3AB7    push        dword ptr [ebp-10]
 004C3ABA    lea         eax,[ebp-138]
 004C3AC0    call        FloatToStr
 004C3AC5    mov         edx,dword ptr [ebp-138]
 004C3ACB    mov         eax,dword ptr [ebp+8]
 004C3ACE    mov         ecx,0FF
 004C3AD3    call        @LStrToString
>004C3AD8    jmp         004C3AE0
 004C3ADA    mov         eax,dword ptr [ebp+8]
 004C3ADD    mov         byte ptr [eax],0
 004C3AE0    push        8
 004C3AE2    mov         eax,dword ptr [ebp+8]
 004C3AE5    push        eax
 004C3AE6    mov         cl,byte ptr [ebp-6]
 004C3AE9    mov         dl,byte ptr [ebp-5]
 004C3AEC    mov         eax,dword ptr [ebp-4]
 004C3AEF    call        004C5E04
 004C3AF4    push        1
 004C3AF6    push        0
 004C3AF8    mov         cl,byte ptr [ebp-6]
 004C3AFB    mov         dl,byte ptr [ebp-5]
 004C3AFE    mov         eax,dword ptr [ebp-4]
 004C3B01    call        004C5FF8
>004C3B06    jmp         004C3B1C
 004C3B08    push        8
 004C3B0A    mov         eax,dword ptr [ebp+8]
 004C3B0D    push        eax
 004C3B0E    mov         cl,byte ptr [ebp-6]
 004C3B11    mov         dl,byte ptr [ebp-5]
 004C3B14    mov         eax,dword ptr [ebp-4]
 004C3B17    call        004C5F08
 004C3B1C    xor         eax,eax
 004C3B1E    pop         edx
 004C3B1F    pop         ecx
 004C3B20    pop         ecx
 004C3B21    mov         dword ptr fs:[eax],edx
 004C3B24    push        4C3B49
 004C3B29    lea         eax,[ebp-138]
 004C3B2F    mov         edx,2
 004C3B34    call        @LStrArrayClr
 004C3B39    lea         eax,[ebp-30]
 004C3B3C    call        @LStrClr
 004C3B41    ret
>004C3B42    jmp         @HandleFinally
>004C3B47    jmp         004C3B29
 004C3B49    pop         edi
 004C3B4A    pop         esi
 004C3B4B    pop         ebx
 004C3B4C    mov         esp,ebp
 004C3B4E    pop         ebp
 004C3B4F    ret         4*}
end;

//004C3B54
procedure TFichierCdn.sub_004C3B54(Periode:dword; var s:string; ACol:dword);
begin
s:='';//for testing
{* 004C3B54    push        ebp
 004C3B55    mov         ebp,esp
 004C3B57    add         esp,0FFFFFECC
 004C3B5D    push        ebx
 004C3B5E    push        esi
 004C3B5F    push        edi
 004C3B60    xor         ebx,ebx
 004C3B62    mov         dword ptr [ebp-134],ebx
 004C3B68    mov         dword ptr [ebp-30],ebx
 004C3B6B    mov         byte ptr [ebp-6],cl
 004C3B6E    mov         byte ptr [ebp-5],dl
 004C3B71    mov         dword ptr [ebp-4],eax
 004C3B74    xor         eax,eax
 004C3B76    push        ebp
 004C3B77    push        4C3D0A
 004C3B7C    push        dword ptr fs:[eax]
 004C3B7F    mov         dword ptr fs:[eax],esp
 004C3B82    push        2
 004C3B84    mov         cl,byte ptr [ebp-6]
 004C3B87    mov         dl,byte ptr [ebp-5]
 004C3B8A    mov         eax,dword ptr [ebp-4]
 004C3B8D    call        004C6030
 004C3B92    test        al,al
>004C3B94    je          004C3CD5
 004C3B9A    xor         eax,eax
 004C3B9C    mov         dword ptr [ebp-28],eax
 004C3B9F    xor         eax,eax
 004C3BA1    mov         dword ptr [ebp-10],eax
 004C3BA4    mov         dword ptr [ebp-0C],eax
 004C3BA7    mov         word ptr [ebp-8],ax
 004C3BAB    mov         eax,dword ptr [ebp-4]
 004C3BAE    call        TFichierCdn.sub_004BEA58
 004C3BB3    and         eax,0FF
 004C3BB8    test        eax,eax
>004C3BBA    jle         004C3C76
 004C3BC0    mov         dword ptr [ebp-2C],eax
 004C3BC3    mov         dword ptr [ebp-24],1
 004C3BCA    xor         eax,eax
 004C3BCC    push        ebp
 004C3BCD    push        4C3C4D
 004C3BD2    push        dword ptr fs:[eax]
 004C3BD5    mov         dword ptr fs:[eax],esp
 004C3BD8    mov         eax,dword ptr [ebp-24]
 004C3BDB    cmp         eax,0FF
>004C3BE0    jbe         004C3BE7
 004C3BE2    call        @BoundErr
 004C3BE7    push        eax
 004C3BE8    lea         eax,[ebp-130]
 004C3BEE    push        eax
 004C3BEF    mov         cl,byte ptr [ebp-6]
 004C3BF2    mov         dl,byte ptr [ebp-5]
 004C3BF5    mov         eax,dword ptr [ebp-4]
 004C3BF8    call        004BEF5C
 004C3BFD    lea         edx,[ebp-130]
 004C3C03    lea         eax,[ebp-30]
 004C3C06    call        @LStrFromString
 004C3C0B    mov         eax,dword ptr [ebp-30]
 004C3C0E    call        StrToFloat
 004C3C13    fstp        tbyte ptr [ebp-20]
 004C3C16    wait
 004C3C17    fld         tbyte ptr [ebp-10]
 004C3C1A    fld         tbyte ptr [ebp-20]
 004C3C1D    fcompp
 004C3C1F    fnstsw      al
 004C3C21    sahf
>004C3C22    jbe         004C3C38
 004C3C24    mov         eax,dword ptr [ebp-20]
 004C3C27    mov         dword ptr [ebp-10],eax
 004C3C2A    mov         eax,dword ptr [ebp-1C]
 004C3C2D    mov         dword ptr [ebp-0C],eax
 004C3C30    mov         ax,word ptr [ebp-18]
 004C3C34    mov         word ptr [ebp-8],ax
 004C3C38    add         dword ptr [ebp-28],1
>004C3C3C    jno         004C3C43
 004C3C3E    call        @IntOver
 004C3C43    xor         eax,eax
 004C3C45    pop         edx
 004C3C46    pop         ecx
 004C3C47    pop         ecx
 004C3C48    mov         dword ptr fs:[eax],edx
>004C3C4B    jmp         004C3C6A
>004C3C4D    jmp         @HandleOnException
 004C3C52    dd          1
 004C3C56    dd          00409B50;EConvertError
 004C3C5A    dd          004C3C5E
 004C3C5E    call        @DoneExcept
>004C3C63    jmp         004C3C6A
 004C3C65    call        @DoneExcept
 004C3C6A    inc         dword ptr [ebp-24]
 004C3C6D    dec         dword ptr [ebp-2C]
>004C3C70    jne         004C3BCA
 004C3C76    cmp         dword ptr [ebp-28],0
>004C3C7A    jle         004C3CA7
 004C3C7C    mov         ax,word ptr [ebp-8]
 004C3C80    push        eax
 004C3C81    push        dword ptr [ebp-0C]
 004C3C84    push        dword ptr [ebp-10]
 004C3C87    lea         eax,[ebp-134]
 004C3C8D    call        FloatToStr
 004C3C92    mov         edx,dword ptr [ebp-134]
 004C3C98    mov         eax,dword ptr [ebp+8]
 004C3C9B    mov         ecx,0FF
 004C3CA0    call        @LStrToString
>004C3CA5    jmp         004C3CAD
 004C3CA7    mov         eax,dword ptr [ebp+8]
 004C3CAA    mov         byte ptr [eax],0
 004C3CAD    push        9
 004C3CAF    mov         eax,dword ptr [ebp+8]
 004C3CB2    push        eax
 004C3CB3    mov         cl,byte ptr [ebp-6]
 004C3CB6    mov         dl,byte ptr [ebp-5]
 004C3CB9    mov         eax,dword ptr [ebp-4]
 004C3CBC    call        004C5E04
 004C3CC1    push        2
 004C3CC3    push        0
 004C3CC5    mov         cl,byte ptr [ebp-6]
 004C3CC8    mov         dl,byte ptr [ebp-5]
 004C3CCB    mov         eax,dword ptr [ebp-4]
 004C3CCE    call        004C5FF8
>004C3CD3    jmp         004C3CE9
 004C3CD5    push        9
 004C3CD7    mov         eax,dword ptr [ebp+8]
 004C3CDA    push        eax
 004C3CDB    mov         cl,byte ptr [ebp-6]
 004C3CDE    mov         dl,byte ptr [ebp-5]
 004C3CE1    mov         eax,dword ptr [ebp-4]
 004C3CE4    call        004C5F08
 004C3CE9    xor         eax,eax
 004C3CEB    pop         edx
 004C3CEC    pop         ecx
 004C3CED    pop         ecx
 004C3CEE    mov         dword ptr fs:[eax],edx
 004C3CF1    push        4C3D11
 004C3CF6    lea         eax,[ebp-134]
 004C3CFC    call        @LStrClr
 004C3D01    lea         eax,[ebp-30]
 004C3D04    call        @LStrClr
 004C3D09    ret
>004C3D0A    jmp         @HandleFinally
>004C3D0F    jmp         004C3CF6
 004C3D11    pop         edi
 004C3D12    pop         esi
 004C3D13    pop         ebx
 004C3D14    mov         esp,ebp
 004C3D16    pop         ebp
 004C3D17    ret         4*}
end;

//004C3D1C
procedure TFichierCdn.sub_004C3D1C(Periode:dword; ACol:dword; var c:string);
var
  lvar_10,I:integer;
  buf:string;
begin//0
  //004C3D1C..004C3D4A
    lvar_10 := 0;
    if (sub_004C6030(Periode, ACol, 5)) then
    begin///004C3D62
	  for I:=1 to sub_004BEA58-1 do 
      begin//004C3D7C
        try//004C3D94
          sub_004BEF5C(Periode, ACol, I, buf);
          lvar_10 := lvar_10 + 1;
        except//4
          on E:EConvertError do
          begin//004C3DF7
          end;//5
        end;//4
      end;//3
	  //004C3E0F
      c := FloatToStr(lvar_10);
      //EAX := c;
      //sub_004C5E04(Periode, ACol, 12);
      sub_004C5FF8(Periode, ACol, 5, 0);
      
    end
	else 
    sub_004C5F08(Periode, ACol, 12, c);
end;//0


//004C3EA4
procedure TFichierCdn.sub_004C3EA4(Periode:dword; ACol:dword;var b:string);
begin
b:='';//for testing
{* 004C3EA4    push        ebp
 004C3EA5    mov         ebp,esp
 004C3EA7    add         esp,0FFFFFED4
 004C3EAD    push        ebx
 004C3EAE    push        esi
 004C3EAF    push        edi
 004C3EB0    xor         ebx,ebx
 004C3EB2    mov         dword ptr [ebp-12C],ebx
 004C3EB8    mov         dword ptr [ebp-128],ebx
 004C3EBE    mov         dword ptr [ebp-24],ebx
 004C3EC1    mov         byte ptr [ebp-6],cl
 004C3EC4    mov         byte ptr [ebp-5],dl
 004C3EC7    mov         dword ptr [ebp-4],eax
 004C3ECA    xor         eax,eax
 004C3ECC    push        ebp
 004C3ECD    push        4C40B0
 004C3ED2    push        dword ptr fs:[eax]
 004C3ED5    mov         dword ptr fs:[eax],esp
 004C3ED8    push        6
 004C3EDA    mov         cl,byte ptr [ebp-6]
 004C3EDD    mov         dl,byte ptr [ebp-5]
 004C3EE0    mov         eax,dword ptr [ebp-4]
 004C3EE3    call        004C6030
 004C3EE8    test        al,al
>004C3EEA    je          004C4076
 004C3EF0    xor         eax,eax
 004C3EF2    mov         dword ptr [ebp-18],eax
 004C3EF5    xor         eax,eax
 004C3EF7    mov         dword ptr [ebp-1C],eax
 004C3EFA    lea         eax,[ebp-124]
 004C3F00    push        eax
 004C3F01    mov         cl,byte ptr [ebp-6]
 004C3F04    mov         dl,byte ptr [ebp-5]
 004C3F07    mov         eax,dword ptr [ebp-4]
 004C3F0A    call        004BED2C
 004C3F0F    lea         edx,[ebp-124]
 004C3F15    lea         eax,[ebp-24]
 004C3F18    call        @LStrFromString
 004C3F1D    mov         eax,dword ptr [ebp-24]
 004C3F20    call        StrToFloat
 004C3F25    fdiv        dword ptr ds:[4C40C0];2:Single
 004C3F2B    fstp        tbyte ptr [ebp-10]
 004C3F2E    wait
 004C3F2F    mov         eax,dword ptr [ebp-4]
 004C3F32    call        TFichierCdn.sub_004BEA58
 004C3F37    and         eax,0FF
 004C3F3C    test        eax,eax
>004C3F3E    jle         004C3FF0
 004C3F44    mov         dword ptr [ebp-20],eax
 004C3F47    mov         dword ptr [ebp-14],1
 004C3F4E    xor         eax,eax
 004C3F50    push        ebp
 004C3F51    push        4C3FC7
 004C3F56    push        dword ptr fs:[eax]
 004C3F59    mov         dword ptr fs:[eax],esp
 004C3F5C    mov         eax,dword ptr [ebp-14]
 004C3F5F    cmp         eax,0FF
>004C3F64    jbe         004C3F6B
 004C3F66    call        @BoundErr
 004C3F6B    push        eax
 004C3F6C    lea         eax,[ebp-124]
 004C3F72    push        eax
 004C3F73    mov         cl,byte ptr [ebp-6]
 004C3F76    mov         dl,byte ptr [ebp-5]
 004C3F79    mov         eax,dword ptr [ebp-4]
 004C3F7C    call        004BEF5C
 004C3F81    lea         edx,[ebp-124]
 004C3F87    lea         eax,[ebp-128]
 004C3F8D    call        @LStrFromString
 004C3F92    mov         eax,dword ptr [ebp-128]
 004C3F98    call        StrToFloat
 004C3F9D    fld         tbyte ptr [ebp-10]
 004C3FA0    fcompp
 004C3FA2    fnstsw      al
 004C3FA4    sahf
>004C3FA5    jbe         004C3FB2
 004C3FA7    add         dword ptr [ebp-1C],1
>004C3FAB    jno         004C3FB2
 004C3FAD    call        @IntOver
 004C3FB2    add         dword ptr [ebp-18],1
>004C3FB6    jno         004C3FBD
 004C3FB8    call        @IntOver
 004C3FBD    xor         eax,eax
 004C3FBF    pop         edx
 004C3FC0    pop         ecx
 004C3FC1    pop         ecx
 004C3FC2    mov         dword ptr fs:[eax],edx
>004C3FC5    jmp         004C3FE4
>004C3FC7    jmp         @HandleOnException
 004C3FCC    dd          1
 004C3FD0    dd          00409B50;EConvertError
 004C3FD4    dd          004C3FD8
 004C3FD8    call        @DoneExcept
>004C3FDD    jmp         004C3FE4
 004C3FDF    call        @DoneExcept
 004C3FE4    inc         dword ptr [ebp-14]
 004C3FE7    dec         dword ptr [ebp-20]
>004C3FEA    jne         004C3F4E
 004C3FF0    cmp         dword ptr [ebp-18],0
>004C3FF4    jle         004C4048
 004C3FF6    fild        dword ptr [ebp-1C]
 004C3FF9    fild        dword ptr [ebp-18]
 004C3FFC    fdivp       st(1),st
 004C3FFE    fmul        dword ptr ds:[4C40C4];100:Single
 004C4004    add         esp,0FFFFFFF4
 004C4007    fstp        tbyte ptr [esp]
 004C400A    wait
 004C400B    lea         eax,[ebp-12C]
 004C4011    push        eax
 004C4012    mov         ecx,2
 004C4017    mov         edx,12
 004C401C    mov         al,2
 004C401E    call        FloatToStrF
 004C4023    lea         eax,[ebp-12C]
 004C4029    mov         edx,4C40D0;' %'
 004C402E    call        @LStrCat
 004C4033    mov         edx,dword ptr [ebp-12C]
 004C4039    mov         eax,dword ptr [ebp+8]
 004C403C    mov         ecx,0FF
 004C4041    call        @LStrToString
>004C4046    jmp         004C404E
 004C4048    mov         eax,dword ptr [ebp+8]
 004C404B    mov         byte ptr [eax],0
 004C404E    push        0D
 004C4050    mov         eax,dword ptr [ebp+8]
 004C4053    push        eax
 004C4054    mov         cl,byte ptr [ebp-6]
 004C4057    mov         dl,byte ptr [ebp-5]
 004C405A    mov         eax,dword ptr [ebp-4]
 004C405D    call        004C5E04
 004C4062    push        6
 004C4064    push        0
 004C4066    mov         cl,byte ptr [ebp-6]
 004C4069    mov         dl,byte ptr [ebp-5]
 004C406C    mov         eax,dword ptr [ebp-4]
 004C406F    call        004C5FF8
>004C4074    jmp         004C408A
 004C4076    push        0D
 004C4078    mov         eax,dword ptr [ebp+8]
 004C407B    push        eax
 004C407C    mov         cl,byte ptr [ebp-6]
 004C407F    mov         dl,byte ptr [ebp-5]
 004C4082    mov         eax,dword ptr [ebp-4]
 004C4085    call        004C5F08
 004C408A    xor         eax,eax
 004C408C    pop         edx
 004C408D    pop         ecx
 004C408E    pop         ecx
 004C408F    mov         dword ptr fs:[eax],edx
 004C4092    push        4C40B7
 004C4097    lea         eax,[ebp-12C]
 004C409D    mov         edx,2
 004C40A2    call        @LStrArrayClr
 004C40A7    lea         eax,[ebp-24]
 004C40AA    call        @LStrClr
 004C40AF    ret
>004C40B0    jmp         @HandleFinally
>004C40B5    jmp         004C4097
 004C40B7    pop         edi
 004C40B8    pop         esi
 004C40B9    pop         ebx
 004C40BA    mov         esp,ebp
 004C40BC    pop         ebp
 004C40BD    ret         4*}
end;

//004C40D4
procedure TFichierCdn.sub_004C40D4(Periode:dword;var b:string; ACol:dword);
var
   lvar_18,I:integer;
   lvar_10 :real;
   buf:string;
begin//0
  //004C40D4
    if (sub_004C6030(Periode, ACol, 4)) then // 4:Moyenne peut Calculer
    begin//2
      //004C411A
      lvar_10 := 0;
      lvar_18 := 0;

		for I:= 1 to sub_004BEA58 do //004C4140 
        try//004C4158
          sub_004BEF5C(Periode, ACol, I, buf);
          lvar_10 := StrToFloat(buf) + lvar_10;
          lvar_18 := lvar_18 + 1;
        except//4
          on E:EConvertError do
          begin//004C41C2
          end;//5
        end;//4

      
      try
        //004C41E8
        if (lvar_18 > 0) then//004C41EE
          b := FloatToStrF(lvar_10 / lvar_18, ffFixed{2}, 18, 2)
        else//004C422A
          b := '';
      except//3
        on E:EConvertError do
        begin//004C4253
          b := '';
        end;//4
        on E:EMathError do
        begin//004C425B
          b := '';
        end;//4
      end;//3
      //EAX := b;
      //push EAX
      //sub_004C5E04(a, c, 11);
      //sub_004C5FF8(a, c, 4, 0);
    end
	else 
    sub_004C5F08(Periode, ACol, 11, b);
end;//0

//004C42D4
procedure TFichierCdn.sub_004C42D4(Periode:dword; ACol:dword; var s:string);
begin
s:='';//for testing
{* 004C42D4    push        ebp
 004C42D5    mov         ebp,esp
 004C42D7    add         esp,0FFFFFEBC
 004C42DD    push        ebx
 004C42DE    push        esi
 004C42DF    push        edi
 004C42E0    xor         ebx,ebx
 004C42E2    mov         dword ptr [ebp-144],ebx
 004C42E8    mov         dword ptr [ebp-40],ebx
 004C42EB    mov         byte ptr [ebp-6],cl
 004C42EE    mov         byte ptr [ebp-5],dl
 004C42F1    mov         dword ptr [ebp-4],eax
 004C42F4    xor         eax,eax
 004C42F6    push        ebp
 004C42F7    push        4C450C
 004C42FC    push        dword ptr fs:[eax]
 004C42FF    mov         dword ptr fs:[eax],esp
 004C4302    push        3
 004C4304    mov         cl,byte ptr [ebp-6]
 004C4307    mov         dl,byte ptr [ebp-5]
 004C430A    mov         eax,dword ptr [ebp-4]
 004C430D    call        004C6030
 004C4312    test        al,al
>004C4314    je          004C44D7
 004C431A    xor         eax,eax
 004C431C    mov         dword ptr [ebp-20],eax
 004C431F    mov         dword ptr [ebp-1C],eax
 004C4322    mov         word ptr [ebp-18],ax
 004C4326    xor         eax,eax
 004C4328    mov         dword ptr [ebp-30],eax
 004C432B    mov         dword ptr [ebp-2C],eax
 004C432E    mov         word ptr [ebp-28],ax
 004C4332    xor         eax,eax
 004C4334    mov         dword ptr [ebp-38],eax
 004C4337    mov         eax,dword ptr [ebp-4]
 004C433A    call        TFichierCdn.sub_004BEA58
 004C433F    and         eax,0FF
 004C4344    test        eax,eax
>004C4346    jle         004C440D
 004C434C    mov         dword ptr [ebp-3C],eax
 004C434F    mov         dword ptr [ebp-34],1
 004C4356    xor         eax,eax
 004C4358    push        ebp
 004C4359    push        4C43D5
 004C435E    push        dword ptr fs:[eax]
 004C4361    mov         dword ptr fs:[eax],esp
 004C4364    mov         eax,dword ptr [ebp-34]
 004C4367    cmp         eax,0FF
>004C436C    jbe         004C4373
 004C436E    call        @BoundErr
 004C4373    push        eax
 004C4374    lea         eax,[ebp-140]
 004C437A    push        eax
 004C437B    mov         cl,byte ptr [ebp-6]
 004C437E    mov         dl,byte ptr [ebp-5]
 004C4381    mov         eax,dword ptr [ebp-4]
 004C4384    call        004BEF5C
 004C4389    lea         edx,[ebp-140]
 004C438F    lea         eax,[ebp-40]
 004C4392    call        @LStrFromString
 004C4397    mov         eax,dword ptr [ebp-40]
 004C439A    call        StrToFloat
 004C439F    fstp        tbyte ptr [ebp-10]
 004C43A2    wait
 004C43A3    fld         tbyte ptr [ebp-20]
 004C43A6    fld         tbyte ptr [ebp-10]
 004C43A9    faddp       st(1),st
 004C43AB    fstp        tbyte ptr [ebp-20]
 004C43AE    wait
 004C43AF    fld         tbyte ptr [ebp-10]
 004C43B2    fld         tbyte ptr [ebp-10]
 004C43B5    fmulp       st(1),st
 004C43B7    fld         tbyte ptr [ebp-30]
 004C43BA    faddp       st(1),st
 004C43BC    fstp        tbyte ptr [ebp-30]
 004C43BF    wait
 004C43C0    add         dword ptr [ebp-38],1
>004C43C4    jno         004C43CB
 004C43C6    call        @IntOver
 004C43CB    xor         eax,eax
 004C43CD    pop         edx
 004C43CE    pop         ecx
 004C43CF    pop         ecx
 004C43D0    mov         dword ptr fs:[eax],edx
>004C43D3    jmp         004C4401
>004C43D5    jmp         @HandleOnException
 004C43DA    dd          2
 004C43DE    dd          00409B50;EConvertError
 004C43E2    dd          004C43EE
 004C43E6    dd          004098E0;EMathError
 004C43EA    dd          004C43F5
 004C43EE    call        @DoneExcept
>004C43F3    jmp         004C4401
 004C43F5    call        @DoneExcept
>004C43FA    jmp         004C4401
 004C43FC    call        @DoneExcept
 004C4401    inc         dword ptr [ebp-34]
 004C4404    dec         dword ptr [ebp-3C]
>004C4407    jne         004C4356
 004C440D    xor         eax,eax
 004C440F    push        ebp
 004C4410    push        4C4483
 004C4415    push        dword ptr fs:[eax]
 004C4418    mov         dword ptr fs:[eax],esp
 004C441B    cmp         dword ptr [ebp-38],0
>004C441F    jle         004C4473
 004C4421    fild        dword ptr [ebp-38]
 004C4424    fld         tbyte ptr [ebp-30]
 004C4427    fdivrp      st(1),st
 004C4429    fild        dword ptr [ebp-38]
 004C442C    fld         tbyte ptr [ebp-20]
 004C442F    fdivrp      st(1),st
 004C4431    fild        dword ptr [ebp-38]
 004C4434    fld         tbyte ptr [ebp-20]
 004C4437    fdivrp      st(1),st
 004C4439    fmulp       st(1),st
 004C443B    fsubp       st(1),st
 004C443D    fsqrt
 004C443F    add         esp,0FFFFFFF4
 004C4442    fstp        tbyte ptr [esp]
 004C4445    wait
 004C4446    lea         eax,[ebp-144]
 004C444C    push        eax
 004C444D    mov         ecx,2
 004C4452    mov         edx,12
 004C4457    mov         al,2
 004C4459    call        FloatToStrF
 004C445E    mov         edx,dword ptr [ebp-144]
 004C4464    mov         eax,dword ptr [ebp+8]
 004C4467    mov         ecx,0FF
 004C446C    call        @LStrToString
>004C4471    jmp         004C4479
 004C4473    mov         eax,dword ptr [ebp+8]
 004C4476    mov         byte ptr [eax],0
 004C4479    xor         eax,eax
 004C447B    pop         edx
 004C447C    pop         ecx
 004C447D    pop         ecx
 004C447E    mov         dword ptr fs:[eax],edx
>004C4481    jmp         004C44AF
>004C4483    jmp         @HandleOnException
 004C4488    dd          2
 004C448C    dd          00409B50;EConvertError
 004C4490    dd          004C449C
 004C4494    dd          004098E0;EMathError
 004C4498    dd          004C44A4
 004C449C    mov         eax,dword ptr [ebp+8]
 004C449F    mov         byte ptr [eax],0
>004C44A2    jmp         004C44AA
 004C44A4    mov         eax,dword ptr [ebp+8]
 004C44A7    mov         byte ptr [eax],0
 004C44AA    call        @DoneExcept
 004C44AF    push        0A
 004C44B1    mov         eax,dword ptr [ebp+8]
 004C44B4    push        eax
 004C44B5    mov         cl,byte ptr [ebp-6]
 004C44B8    mov         dl,byte ptr [ebp-5]
 004C44BB    mov         eax,dword ptr [ebp-4]
 004C44BE    call        004C5E04
 004C44C3    push        3
 004C44C5    push        0
 004C44C7    mov         cl,byte ptr [ebp-6]
 004C44CA    mov         dl,byte ptr [ebp-5]
 004C44CD    mov         eax,dword ptr [ebp-4]
 004C44D0    call        004C5FF8
>004C44D5    jmp         004C44EB
 004C44D7    push        0A
 004C44D9    mov         eax,dword ptr [ebp+8]
 004C44DC    push        eax
 004C44DD    mov         cl,byte ptr [ebp-6]
 004C44E0    mov         dl,byte ptr [ebp-5]
 004C44E3    mov         eax,dword ptr [ebp-4]
 004C44E6    call        004C5F08
 004C44EB    xor         eax,eax
 004C44ED    pop         edx
 004C44EE    pop         ecx
 004C44EF    pop         ecx
 004C44F0    mov         dword ptr fs:[eax],edx
 004C44F3    push        4C4513
 004C44F8    lea         eax,[ebp-144]
 004C44FE    call        @LStrClr
 004C4503    lea         eax,[ebp-40]
 004C4506    call        @LStrClr
 004C450B    ret
>004C450C    jmp         @HandleFinally
>004C4511    jmp         004C44F8
 004C4513    pop         edi
 004C4514    pop         esi
 004C4515    pop         ebx
 004C4516    mov         esp,ebp
 004C4518    pop         ebp
 004C4519    ret         4*}
end;

//004C451C
procedure TFichierCdn.sub_004C451C(Periode:dword; ACol:dword; var s:string);
begin
s:='';//for testing
{* 004C451C    push        ebp
 004C451D    mov         ebp,esp
 004C451F    add         esp,0FFFFFED4
 004C4525    push        ebx
 004C4526    push        esi
 004C4527    push        edi
 004C4528    xor         ebx,ebx
 004C452A    mov         dword ptr [ebp-12C],ebx
 004C4530    mov         dword ptr [ebp-128],ebx
 004C4536    mov         dword ptr [ebp-24],ebx
 004C4539    mov         byte ptr [ebp-6],cl
 004C453C    mov         byte ptr [ebp-5],dl
 004C453F    mov         dword ptr [ebp-4],eax
 004C4542    xor         eax,eax
 004C4544    push        ebp
 004C4545    push        4C4756
 004C454A    push        dword ptr fs:[eax]
 004C454D    mov         dword ptr fs:[eax],esp
 004C4550    push        7
 004C4552    mov         cl,byte ptr [ebp-6]
 004C4555    mov         dl,byte ptr [ebp-5]
 004C4558    mov         eax,dword ptr [ebp-4]
 004C455B    call        004C6030
 004C4560    test        al,al
>004C4562    je          004C471C
 004C4568    xor         eax,eax
 004C456A    mov         dword ptr [ebp-18],eax
 004C456D    xor         eax,eax
 004C456F    mov         dword ptr [ebp-1C],eax
 004C4572    xor         eax,eax
 004C4574    push        ebp
 004C4575    push        4C46D8
 004C457A    push        dword ptr fs:[eax]
 004C457D    mov         dword ptr fs:[eax],esp
 004C4580    lea         eax,[ebp-124]
 004C4586    push        eax
 004C4587    mov         cl,byte ptr [ebp-6]
 004C458A    mov         dl,byte ptr [ebp-5]
 004C458D    mov         eax,dword ptr [ebp-4]
 004C4590    call        004C40D4
 004C4595    lea         edx,[ebp-124]
 004C459B    lea         eax,[ebp-24]
 004C459E    call        @LStrFromString
 004C45A3    mov         eax,dword ptr [ebp-24]
 004C45A6    call        StrToFloat
 004C45AB    fstp        tbyte ptr [ebp-10]
 004C45AE    wait
 004C45AF    mov         eax,dword ptr [ebp-4]
 004C45B2    call        TFichierCdn.sub_004BEA58
 004C45B7    and         eax,0FF
 004C45BC    test        eax,eax
>004C45BE    jle         004C4670
 004C45C4    mov         dword ptr [ebp-20],eax
 004C45C7    mov         dword ptr [ebp-14],1
 004C45CE    xor         eax,eax
 004C45D0    push        ebp
 004C45D1    push        4C4647
 004C45D6    push        dword ptr fs:[eax]
 004C45D9    mov         dword ptr fs:[eax],esp
 004C45DC    mov         eax,dword ptr [ebp-14]
 004C45DF    cmp         eax,0FF
>004C45E4    jbe         004C45EB
 004C45E6    call        @BoundErr
 004C45EB    push        eax
 004C45EC    lea         eax,[ebp-124]
 004C45F2    push        eax
 004C45F3    mov         cl,byte ptr [ebp-6]
 004C45F6    mov         dl,byte ptr [ebp-5]
 004C45F9    mov         eax,dword ptr [ebp-4]
 004C45FC    call        004BEF5C
 004C4601    lea         edx,[ebp-124]
 004C4607    lea         eax,[ebp-128]
 004C460D    call        @LStrFromString
 004C4612    mov         eax,dword ptr [ebp-128]
 004C4618    call        StrToFloat
 004C461D    fld         tbyte ptr [ebp-10]
 004C4620    fcompp
 004C4622    fnstsw      al
 004C4624    sahf
>004C4625    jbe         004C4632
 004C4627    add         dword ptr [ebp-1C],1
>004C462B    jno         004C4632
 004C462D    call        @IntOver
 004C4632    add         dword ptr [ebp-18],1
>004C4636    jno         004C463D
 004C4638    call        @IntOver
 004C463D    xor         eax,eax
 004C463F    pop         edx
 004C4640    pop         ecx
 004C4641    pop         ecx
 004C4642    mov         dword ptr fs:[eax],edx
>004C4645    jmp         004C4664
>004C4647    jmp         @HandleOnException
 004C464C    dd          1
 004C4650    dd          00409B50;EConvertError
 004C4654    dd          004C4658
 004C4658    call        @DoneExcept
>004C465D    jmp         004C4664
 004C465F    call        @DoneExcept
 004C4664    inc         dword ptr [ebp-14]
 004C4667    dec         dword ptr [ebp-20]
>004C466A    jne         004C45CE
 004C4670    cmp         dword ptr [ebp-18],0
>004C4674    jle         004C46C8
 004C4676    fild        dword ptr [ebp-1C]
 004C4679    fild        dword ptr [ebp-18]
 004C467C    fdivp       st(1),st
 004C467E    fmul        dword ptr ds:[4C4768];100:Single
 004C4684    add         esp,0FFFFFFF4
 004C4687    fstp        tbyte ptr [esp]
 004C468A    wait
 004C468B    lea         eax,[ebp-12C]
 004C4691    push        eax
 004C4692    mov         ecx,2
 004C4697    mov         edx,12
 004C469C    mov         al,2
 004C469E    call        FloatToStrF
 004C46A3    lea         eax,[ebp-12C]
 004C46A9    mov         edx,4C4774;' %'
 004C46AE    call        @LStrCat
 004C46B3    mov         edx,dword ptr [ebp-12C]
 004C46B9    mov         eax,dword ptr [ebp+8]
 004C46BC    mov         ecx,0FF
 004C46C1    call        @LStrToString
>004C46C6    jmp         004C46CE
 004C46C8    mov         eax,dword ptr [ebp+8]
 004C46CB    mov         byte ptr [eax],0
 004C46CE    xor         eax,eax
 004C46D0    pop         edx
 004C46D1    pop         ecx
 004C46D2    pop         ecx
 004C46D3    mov         dword ptr fs:[eax],edx
>004C46D6    jmp         004C46F4
>004C46D8    jmp         @HandleOnException
 004C46DD    dd          1
 004C46E1    dd          00409B50;EConvertError
 004C46E5    dd          004C46E9
 004C46E9    mov         eax,dword ptr [ebp+8]
 004C46EC    mov         byte ptr [eax],0
 004C46EF    call        @DoneExcept
 004C46F4    push        0E
 004C46F6    mov         eax,dword ptr [ebp+8]
 004C46F9    push        eax
 004C46FA    mov         cl,byte ptr [ebp-6]
 004C46FD    mov         dl,byte ptr [ebp-5]
 004C4700    mov         eax,dword ptr [ebp-4]
 004C4703    call        004C5E04
 004C4708    push        7
 004C470A    push        0
 004C470C    mov         cl,byte ptr [ebp-6]
 004C470F    mov         dl,byte ptr [ebp-5]
 004C4712    mov         eax,dword ptr [ebp-4]
 004C4715    call        004C5FF8
>004C471A    jmp         004C4730
 004C471C    push        0E
 004C471E    mov         eax,dword ptr [ebp+8]
 004C4721    push        eax
 004C4722    mov         cl,byte ptr [ebp-6]
 004C4725    mov         dl,byte ptr [ebp-5]
 004C4728    mov         eax,dword ptr [ebp-4]
 004C472B    call        004C5F08
 004C4730    xor         eax,eax
 004C4732    pop         edx
 004C4733    pop         ecx
 004C4734    pop         ecx
 004C4735    mov         dword ptr fs:[eax],edx
 004C4738    push        4C475D
 004C473D    lea         eax,[ebp-12C]
 004C4743    mov         edx,2
 004C4748    call        @LStrArrayClr
 004C474D    lea         eax,[ebp-24]
 004C4750    call        @LStrClr
 004C4755    ret
>004C4756    jmp         @HandleFinally
>004C475B    jmp         004C473D
 004C475D    pop         edi
 004C475E    pop         esi
 004C475F    pop         ebx
 004C4760    mov         esp,ebp
 004C4762    pop         ebp
 004C4763    ret         4*}
end;

//004C4778
function TFichierCdn.sub_004C4778(Periode:dword):boolean;
begin//0
  //004C4778
  result := f918.sub_004B6EA8(Periode);
end;//0


//004C4784
procedure TFichierCdn.sub_004C4784(Periode:dword;b:boolean);
begin//0
  //004C4784
  f918.sub_004B6E84(Periode, b);
end;//0


//004C4790
function TFichierCdn.sub_004C4790:dword;
var
  I:integer;
begin//0
  //004C4790
  result := 0;
    for I := 1 to sub_004BE9E0 do //004C47A7
      result := result  + sub_004BEAD0(I);

end;//0


//004C47E8
{*//procedure sub_004C47E8(?:dword; ?:?; ?:?);
//begin
 004C47E8    push        ebp
 004C47E9    mov         ebp,esp
 004C47EB    add         esp,0FFFFFDFC
 004C47F1    push        ebx
 004C47F2    push        esi
 004C47F3    push        edi
 004C47F4    mov         esi,dword ptr [ebp+8]
 004C47F7    lea         edi,[ebp-103]
 004C47FD    push        ecx
 004C47FE    xor         ecx,ecx
 004C4800    mov         cl,byte ptr [esi]
 004C4802    inc         ecx
 004C4803    rep movs    byte ptr [edi],byte ptr [esi]
 004C4805    pop         ecx
 004C4806    mov         byte ptr [ebp-2],cl
 004C4809    mov         byte ptr [ebp-1],dl
 004C480C    mov         esi,eax
 004C480E    lea         eax,[ebp-204]
 004C4814    push        eax
 004C4815    mov         cl,byte ptr [ebp-2]
 004C4818    mov         dl,byte ptr [ebp-1]
 004C481B    mov         eax,esi
 004C481D    call        004BED7C
 004C4822    lea         eax,[ebp-204]
 004C4828    lea         edx,[ebp-103]
 004C482E    xor         ecx,ecx
 004C4830    mov         cl,byte ptr [eax]
 004C4832    inc         ecx
 004C4833    call        @AStrCmp
>004C4838    je          004C4861
 004C483A    mov         eax,esi
 004C483C    call        TFichierCdn.sub_004BEA58
 004C4841    mov         ebx,eax
 004C4843    test        bl,bl
>004C4845    jbe         004C4861
 004C4847    mov         byte ptr [ebp-3],1
 004C484B    push        1
 004C484D    mov         cl,byte ptr [ebp-3]
 004C4850    mov         dl,byte ptr [ebp-1]
 004C4853    mov         eax,esi
 004C4855    call        004C61E4
 004C485A    inc         byte ptr [ebp-3]
 004C485D    dec         bl
>004C485F    jne         004C484B
 004C4861    mov         eax,esi
 004C4863    call        TFichierCdn.sub_004BEA58
 004C4868    and         eax,0FF
 004C486D    mov         edx,dword ptr ds:[615B2C];^gvar_006178FC
 004C4873    movzx       edx,byte ptr [edx]
 004C4876    add         eax,edx
>004C4878    jno         004C487F
 004C487A    call        @IntOver
 004C487F    cmp         eax,0FF
>004C4884    jbe         004C488B
 004C4886    call        @BoundErr
 004C488B    push        eax
 004C488C    lea         eax,[ebp-103]
 004C4892    push        eax
 004C4893    mov         cl,byte ptr [ebp-2]
 004C4896    mov         dl,byte ptr [ebp-1]
 004C4899    mov         eax,esi
 004C489B    call        004C0C88
 004C48A0    mov         cl,1
 004C48A2    mov         dl,byte ptr [ebp-1]
 004C48A5    mov         eax,dword ptr [esi+918]
 004C48AB    call        004B6E84
 004C48B0    pop         edi
 004C48B1    pop         esi
 004C48B2    pop         ebx
 004C48B3    mov         esp,ebp
 004C48B5    pop         ebp
 004C48B6    ret         4
end;*}

//004C48BC
{*//procedure sub_004C48BC(?:dword; ?:dword; ?:?);
//begin
 004C48BC    push        ebp
 004C48BD    mov         ebp,esp
 004C48BF    add         esp,0FFFFFDFC
 004C48C5    push        ebx
 004C48C6    push        esi
 004C48C7    push        edi
 004C48C8    mov         esi,dword ptr [ebp+8]
 004C48CB    lea         edi,[ebp-103]
 004C48D1    push        ecx
 004C48D2    xor         ecx,ecx
 004C48D4    mov         cl,byte ptr [esi]
 004C48D6    inc         ecx
 004C48D7    rep movs    byte ptr [edi],byte ptr [esi]
 004C48D9    pop         ecx
 004C48DA    mov         byte ptr [ebp-2],cl
 004C48DD    mov         byte ptr [ebp-1],dl
 004C48E0    mov         esi,eax
 004C48E2    lea         eax,[ebp-204]
 004C48E8    push        eax
 004C48E9    mov         cl,byte ptr [ebp-2]
 004C48EC    mov         dl,byte ptr [ebp-1]
 004C48EF    mov         eax,esi
 004C48F1    call        004BED2C
 004C48F6    lea         eax,[ebp-204]
 004C48FC    lea         edx,[ebp-103]
 004C4902    xor         ecx,ecx
 004C4904    mov         cl,byte ptr [eax]
 004C4906    inc         ecx
 004C4907    call        @AStrCmp
>004C490C    je          004C4935
 004C490E    mov         eax,esi
 004C4910    call        TFichierCdn.sub_004BEA58
 004C4915    mov         ebx,eax
 004C4917    test        bl,bl
>004C4919    jbe         004C4935
 004C491B    mov         byte ptr [ebp-3],1
 004C491F    push        1
 004C4921    mov         cl,byte ptr [ebp-3]
 004C4924    mov         dl,byte ptr [ebp-1]
 004C4927    mov         eax,esi
 004C4929    call        004C61E4
 004C492E    inc         byte ptr [ebp-3]
 004C4931    dec         bl
>004C4933    jne         004C491F
 004C4935    mov         eax,esi
 004C4937    call        TFichierCdn.sub_004BEA58
 004C493C    and         eax,0FF
 004C4941    mov         edx,dword ptr ds:[615B30];^gvar_006178FB
 004C4947    movzx       edx,byte ptr [edx]
 004C494A    add         eax,edx
>004C494C    jno         004C4953
 004C494E    call        @IntOver
 004C4953    cmp         eax,0FF
>004C4958    jbe         004C495F
 004C495A    call        @BoundErr
 004C495F    push        eax
 004C4960    lea         eax,[ebp-103]
 004C4966    push        eax
 004C4967    mov         cl,byte ptr [ebp-2]
 004C496A    mov         dl,byte ptr [ebp-1]
 004C496D    mov         eax,esi
 004C496F    call        004C0C88
 004C4974    mov         cl,1
 004C4976    mov         dl,byte ptr [ebp-1]
 004C4979    mov         eax,dword ptr [esi+918]
 004C497F    call        004B6E84
 004C4984    pop         edi
 004C4985    pop         esi
 004C4986    pop         ebx
 004C4987    mov         esp,ebp
 004C4989    pop         ebp
 004C498A    ret         4
end;*}

//004C4990
{*//procedure sub_004C4990(?:dword; ?:?; ?:?);
//begin
 004C4990    push        ebp
 004C4991    mov         ebp,esp
 004C4993    add         esp,0FFFFFFEC
 004C4996    push        ebx
 004C4997    push        esi
 004C4998    push        edi
 004C4999    xor         ebx,ebx
 004C499B    mov         dword ptr [ebp-14],ebx
 004C499E    mov         byte ptr [ebp-1],cl
 004C49A1    mov         ebx,edx
 004C49A3    mov         esi,eax
 004C49A5    xor         eax,eax
 004C49A7    push        ebp
 004C49A8    push        4C4B06
 004C49AD    push        dword ptr fs:[eax]
 004C49B0    mov         dword ptr fs:[eax],esp
 004C49B3    mov         dl,1
 004C49B5    mov         eax,[004120B8];TStringList
 004C49BA    call        TObject.Create;TStringList.Create
 004C49BF    mov         dword ptr [ebp-8],eax
 004C49C2    xor         ecx,ecx
 004C49C4    mov         cl,byte ptr [ebp-1]
 004C49C7    add         ecx,1
>004C49CA    jno         004C49D1
 004C49CC    call        @IntOver
 004C49D1    cmp         ecx,0FF
>004C49D7    jbe         004C49DE
 004C49D9    call        @BoundErr
 004C49DE    mov         edx,ebx
 004C49E0    mov         eax,esi
 004C49E2    call        004BEB40
 004C49E7    mov         edx,eax
 004C49E9    mov         eax,dword ptr [ebp-8]
 004C49EC    mov         ecx,dword ptr [eax]
 004C49EE    call        dword ptr [ecx+3C];TStrings.AddStrings
 004C49F1    xor         eax,eax
 004C49F3    mov         dword ptr [ebp-0C],eax
 004C49F6    xor         eax,eax
 004C49F8    mov         al,bl
 004C49FA    sub         eax,1
>004C49FD    jno         004C4A04
 004C49FF    call        @IntOver
 004C4A04    test        eax,eax
>004C4A06    jle         004C4A42
 004C4A08    mov         dword ptr [ebp-10],eax
 004C4A0B    mov         ebx,1
 004C4A10    lea         ecx,[ebp-14]
 004C4A13    mov         edx,ebx
 004C4A15    sub         edx,1
>004C4A18    jno         004C4A1F
 004C4A1A    call        @IntOver
 004C4A1F    mov         eax,dword ptr [esi+920]
 004C4A25    mov         edi,dword ptr [eax]
 004C4A27    call        dword ptr [edi+0C]
 004C4A2A    mov         eax,dword ptr [ebp-14]
 004C4A2D    call        StrToInt
 004C4A32    add         dword ptr [ebp-0C],eax
>004C4A35    jno         004C4A3C
 004C4A37    call        @IntOver
 004C4A3C    inc         ebx
 004C4A3D    dec         dword ptr [ebp-10]
>004C4A40    jne         004C4A10
 004C4A42    mov         edx,dword ptr [ebp-0C]
 004C4A45    sub         edx,1
>004C4A48    jno         004C4A4F
 004C4A4A    call        @IntOver
 004C4A4F    movzx       edi,byte ptr [ebp-1]
 004C4A53    add         edx,edi
>004C4A55    jno         004C4A5C
 004C4A57    call        @IntOver
 004C4A5C    mov         ebx,dword ptr [esi+924]
 004C4A62    mov         eax,ebx
 004C4A64    call        TStringGrid.GetCols
 004C4A69    mov         ecx,eax
 004C4A6B    mov         edx,edi
 004C4A6D    add         edx,dword ptr [ebp-0C]
>004C4A70    jno         004C4A77
 004C4A72    call        @IntOver
 004C4A77    mov         eax,ebx
 004C4A79    call        TStringGrid.SetCols
 004C4A7E    mov         edx,dword ptr [ebp-0C]
 004C4A81    sub         edx,1
>004C4A84    jno         004C4A8B
 004C4A86    call        @IntOver
 004C4A8B    xor         eax,eax
 004C4A8D    mov         al,byte ptr [ebp-1]
 004C4A90    add         edx,eax
>004C4A92    jno         004C4A99
 004C4A94    call        @IntOver
 004C4A99    mov         ecx,dword ptr [ebp-8]
 004C4A9C    mov         eax,dword ptr [esi+924]
 004C4AA2    call        TStringGrid.SetCols
 004C4AA7    mov         dl,1
 004C4AA9    mov         eax,dword ptr [ebp-8]
 004C4AAC    mov         ecx,dword ptr [eax]
 004C4AAE    call        dword ptr [ecx-4];TStringList.Destroy
 004C4AB1    mov         byte ptr [esi+8],1
 004C4AB5    mov         eax,dword ptr [esi+940]
 004C4ABB    mov         edx,dword ptr [eax]
 004C4ABD    call        dword ptr [edx+40]
 004C4AC0    mov         eax,esi
 004C4AC2    call        004C4790
 004C4AC7    and         eax,0FF
 004C4ACC    test        eax,eax
>004C4ACE    jle         004C4AF0
 004C4AD0    mov         dword ptr [ebp-10],eax
 004C4AD3    mov         ebx,0E
 004C4AD8    mov         edx,4C4B1C;'1'
 004C4ADD    mov         eax,dword ptr [esi+940]
 004C4AE3    mov         ecx,dword ptr [eax]
 004C4AE5    call        dword ptr [ecx+34]
 004C4AE8    dec         ebx
>004C4AE9    jne         004C4AD8
 004C4AEB    dec         dword ptr [ebp-10]
>004C4AEE    jne         004C4AD3
 004C4AF0    xor         eax,eax
 004C4AF2    pop         edx
 004C4AF3    pop         ecx
 004C4AF4    pop         ecx
 004C4AF5    mov         dword ptr fs:[eax],edx
 004C4AF8    push        4C4B0D
 004C4AFD    lea         eax,[ebp-14]
 004C4B00    call        @LStrClr
 004C4B05    ret
>004C4B06    jmp         @HandleFinally
>004C4B0B    jmp         004C4AFD
 004C4B0D    pop         edi
 004C4B0E    pop         esi
 004C4B0F    pop         ebx
 004C4B10    mov         esp,ebp
 004C4B12    pop         ebp
 004C4B13    ret
end;*}

//004C4B20
{*//procedure sub_004C4B20(?:dword; ?:?; ?:?);
//begin
 004C4B20    push        ebp
 004C4B21    mov         ebp,esp
 004C4B23    add         esp,0FFFFFFEC
 004C4B26    push        ebx
 004C4B27    push        esi
 004C4B28    push        edi
 004C4B29    xor         ebx,ebx
 004C4B2B    mov         dword ptr [ebp-14],ebx
 004C4B2E    mov         byte ptr [ebp-1],cl
 004C4B31    mov         ebx,edx
 004C4B33    mov         esi,eax
 004C4B35    xor         eax,eax
 004C4B37    push        ebp
 004C4B38    push        4C4CA0
 004C4B3D    push        dword ptr fs:[eax]
 004C4B40    mov         dword ptr fs:[eax],esp
 004C4B43    mov         dl,1
 004C4B45    mov         eax,[004120B8];TStringList
 004C4B4A    call        TObject.Create;TStringList.Create
 004C4B4F    mov         dword ptr [ebp-8],eax
 004C4B52    xor         ecx,ecx
 004C4B54    mov         cl,byte ptr [ebp-1]
 004C4B57    sub         ecx,1
>004C4B5A    jno         004C4B61
 004C4B5C    call        @IntOver
 004C4B61    cmp         ecx,0FF
>004C4B67    jbe         004C4B6E
 004C4B69    call        @BoundErr
 004C4B6E    mov         edx,ebx
 004C4B70    mov         eax,esi
 004C4B72    call        004BEB40
 004C4B77    mov         edx,eax
 004C4B79    mov         eax,dword ptr [ebp-8]
 004C4B7C    mov         ecx,dword ptr [eax]
 004C4B7E    call        dword ptr [ecx+3C];TStrings.AddStrings
 004C4B81    xor         eax,eax
 004C4B83    mov         dword ptr [ebp-0C],eax
 004C4B86    xor         eax,eax
 004C4B88    mov         al,bl
 004C4B8A    sub         eax,1
>004C4B8D    jno         004C4B94
 004C4B8F    call        @IntOver
 004C4B94    test        eax,eax
>004C4B96    jle         004C4BD2
 004C4B98    mov         dword ptr [ebp-10],eax
 004C4B9B    mov         ebx,1
 004C4BA0    lea         ecx,[ebp-14]
 004C4BA3    mov         edx,ebx
 004C4BA5    sub         edx,1
>004C4BA8    jno         004C4BAF
 004C4BAA    call        @IntOver
 004C4BAF    mov         eax,dword ptr [esi+920]
 004C4BB5    mov         edi,dword ptr [eax]
 004C4BB7    call        dword ptr [edi+0C]
 004C4BBA    mov         eax,dword ptr [ebp-14]
 004C4BBD    call        StrToInt
 004C4BC2    add         dword ptr [ebp-0C],eax
>004C4BC5    jno         004C4BCC
 004C4BC7    call        @IntOver
 004C4BCC    inc         ebx
 004C4BCD    dec         dword ptr [ebp-10]
>004C4BD0    jne         004C4BA0
 004C4BD2    mov         edx,dword ptr [ebp-0C]
 004C4BD5    sub         edx,1
>004C4BD8    jno         004C4BDF
 004C4BDA    call        @IntOver
 004C4BDF    movzx       edi,byte ptr [ebp-1]
 004C4BE3    add         edx,edi
>004C4BE5    jno         004C4BEC
 004C4BE7    call        @IntOver
 004C4BEC    mov         ebx,dword ptr [esi+924]
 004C4BF2    mov         eax,ebx
 004C4BF4    call        TStringGrid.GetCols
 004C4BF9    mov         ecx,eax
 004C4BFB    mov         edx,dword ptr [ebp-0C]
 004C4BFE    sub         edx,2
>004C4C01    jno         004C4C08
 004C4C03    call        @IntOver
 004C4C08    add         edx,edi
>004C4C0A    jno         004C4C11
 004C4C0C    call        @IntOver
 004C4C11    mov         eax,ebx
 004C4C13    call        TStringGrid.SetCols
 004C4C18    mov         edx,dword ptr [ebp-0C]
 004C4C1B    sub         edx,1
>004C4C1E    jno         004C4C25
 004C4C20    call        @IntOver
 004C4C25    xor         eax,eax
 004C4C27    mov         al,byte ptr [ebp-1]
 004C4C2A    add         edx,eax
>004C4C2C    jno         004C4C33
 004C4C2E    call        @IntOver
 004C4C33    mov         ecx,dword ptr [ebp-8]
 004C4C36    mov         eax,dword ptr [esi+924]
 004C4C3C    call        TStringGrid.SetCols
 004C4C41    mov         dl,1
 004C4C43    mov         eax,dword ptr [ebp-8]
 004C4C46    mov         ecx,dword ptr [eax]
 004C4C48    call        dword ptr [ecx-4];TStringList.Destroy
 004C4C4B    mov         byte ptr [esi+8],1
 004C4C4F    mov         eax,dword ptr [esi+940]
 004C4C55    mov         edx,dword ptr [eax]
 004C4C57    call        dword ptr [edx+40]
 004C4C5A    mov         eax,esi
 004C4C5C    call        004C4790
 004C4C61    and         eax,0FF
 004C4C66    test        eax,eax
>004C4C68    jle         004C4C8A
 004C4C6A    mov         dword ptr [ebp-10],eax
 004C4C6D    mov         ebx,0E
 004C4C72    mov         edx,4C4CB8;'1'
 004C4C77    mov         eax,dword ptr [esi+940]
 004C4C7D    mov         ecx,dword ptr [eax]
 004C4C7F    call        dword ptr [ecx+34]
 004C4C82    dec         ebx
>004C4C83    jne         004C4C72
 004C4C85    dec         dword ptr [ebp-10]
>004C4C88    jne         004C4C6D
 004C4C8A    xor         eax,eax
 004C4C8C    pop         edx
 004C4C8D    pop         ecx
 004C4C8E    pop         ecx
 004C4C8F    mov         dword ptr fs:[eax],edx
 004C4C92    push        4C4CA7
 004C4C97    lea         eax,[ebp-14]
 004C4C9A    call        @LStrClr
 004C4C9F    ret
>004C4CA0    jmp         @HandleFinally
>004C4CA5    jmp         004C4C97
 004C4CA7    pop         edi
 004C4CA8    pop         esi
 004C4CA9    pop         ebx
 004C4CAA    mov         esp,ebp
 004C4CAC    pop         ebp
 004C4CAD    ret
end;*}

//004C4CBC
//procedure sub_004C4CBC(?:TFichierCdn);
//begin
{*
 004C4CBC    mov         eax,dword ptr [eax+918]
 004C4CC2    call        004B6D84
 004C4CC7    ret
*}
//end;

//004C4CC8
//procedure sub_004C4CC8(?:TFichierCdn; ?:PShortString);
//begin
{*
 004C4CC8    push        ebp
 004C4CC9    mov         ebp,esp
 004C4CCB    add         esp,0FFFFFEFC
 004C4CD1    push        ebx
 004C4CD2    push        esi
 004C4CD3    push        edi
 004C4CD4    xor         ecx,ecx
 004C4CD6    mov         dword ptr [ebp-104],ecx
 004C4CDC    mov         esi,edx
 004C4CDE    lea         edi,[ebp-100]
 004C4CE4    xor         ecx,ecx
 004C4CE6    mov         cl,byte ptr [esi]
 004C4CE8    inc         ecx
 004C4CE9    rep movs    byte ptr [edi],byte ptr [esi]
 004C4CEB    mov         ebx,eax
 004C4CED    xor         eax,eax
 004C4CEF    push        ebp
 004C4CF0    push        4C4D36
 004C4CF5    push        dword ptr fs:[eax]
 004C4CF8    mov         dword ptr fs:[eax],esp
 004C4CFB    lea         eax,[ebp-104]
 004C4D01    lea         edx,[ebp-100]
 004C4D07    call        @LStrFromString
 004C4D0C    mov         edx,dword ptr [ebp-104]
 004C4D12    mov         eax,dword ptr [ebx+918]
 004C4D18    call        004B6D38
 004C4D1D    xor         eax,eax
 004C4D1F    pop         edx
 004C4D20    pop         ecx
 004C4D21    pop         ecx
 004C4D22    mov         dword ptr fs:[eax],edx
 004C4D25    push        4C4D3D
 004C4D2A    lea         eax,[ebp-104]
 004C4D30    call        @LStrClr
 004C4D35    ret
>004C4D36    jmp         @HandleFinally
>004C4D3B    jmp         004C4D2A
 004C4D3D    pop         edi
 004C4D3E    pop         esi
 004C4D3F    pop         ebx
 004C4D40    mov         esp,ebp
 004C4D42    pop         ebp
 004C4D43    ret
*}
//end;

//004C4D44
function TFichierCdn.sub_004C4D44:dword;
begin//0
  //004C4D44
  result := f910;
end;//0


//004C5078
{*//function sub_004C5078(?:dword; ?:?; ?:?; ?:?; ?:?; ?:?):?;
//begin
 004C5078    push        ebp
 004C5079    mov         ebp,esp
 004C507B    add         esp,0FFFFFEA8
 004C5081    push        ebx
 004C5082    push        esi
 004C5083    push        edi
 004C5084    xor         ebx,ebx
 004C5086    mov         dword ptr [ebp-158],ebx
 004C508C    mov         dword ptr [ebp-150],ebx
 004C5092    mov         dword ptr [ebp-154],ebx
 004C5098    mov         dword ptr [ebp-148],ebx
 004C509E    mov         dword ptr [ebp-14C],ebx
 004C50A4    mov         dword ptr [ebp-24],ebx
 004C50A7    mov         byte ptr [ebp-9],cl
 004C50AA    mov         dword ptr [ebp-8],edx
 004C50AD    mov         dword ptr [ebp-4],eax
 004C50B0    xor         eax,eax
 004C50B2    push        ebp
 004C50B3    push        4C53A0
 004C50B8    push        dword ptr fs:[eax]
 004C50BB    mov         dword ptr fs:[eax],esp
 004C50BE    xor         ecx,ecx
 004C50C0    mov         dl,1
 004C50C2    mov         eax,[004B8694];TQSort
 004C50C7    call        TComponent.Create;TQSort.Create
 004C50CC    mov         dword ptr [ebp-1C],eax
 004C50CF    mov         eax,dword ptr [ebp-1C]
 004C50D2    mov         edx,dword ptr [ebp-4]
 004C50D5    mov         dword ptr [eax+2C],edx;TQSort.?f2C:dword
 004C50D8    mov         dword ptr [eax+28],4C4D4C;TQSort.Compare:TCompareEvent
 004C50DF    mov         eax,dword ptr [ebp-1C]
 004C50E2    mov         edx,dword ptr [ebp-4]
 004C50E5    mov         dword ptr [eax+34],edx;TQSort.?f34:dword
 004C50E8    mov         dword ptr [eax+30],4C4FA0;TQSort.Swap:TSwapEvent
 004C50EF    mov         dl,1
 004C50F1    mov         eax,[004120B8];TStringList
 004C50F6    call        TObject.Create;TStringList.Create
 004C50FB    mov         esi,eax
 004C50FD    mov         dl,1
 004C50FF    mov         eax,[004120B8];TStringList
 004C5104    call        TObject.Create;TStringList.Create
 004C5109    mov         dword ptr [ebp-18],eax
 004C510C    mov         eax,dword ptr [ebp-4]
 004C510F    call        004BE9E0
 004C5114    xor         edx,edx
 004C5116    mov         dl,al
 004C5118    cmp         edx,0FF
>004C511E    jbe         004C5125
 004C5120    call        @BoundErr
 004C5125    mov         al,1
 004C5127    lea         ecx,[ebp-44]
 004C512A    mov         ah,20
 004C512C    call        @SetRange
 004C5131    mov         eax,dword ptr [ebp-8]
 004C5134    cmp         eax,0FF
>004C5139    ja          004C513F
 004C513B    bt          dword ptr [ebp-44],eax
 004C513F    setb        al
 004C5142    xor         al,1
 004C5144    mov         byte ptr [ebp-1D],al
 004C5147    mov         eax,dword ptr [ebp-4]
 004C514A    call        TFichierCdn.sub_004BEA58
 004C514F    xor         ebx,ebx
 004C5151    mov         bl,al
 004C5153    test        ebx,ebx
>004C5155    jle         004C52B8
 004C515B    mov         dword ptr [ebp-10],1
 004C5162    cmp         byte ptr [ebp-1D],0
>004C5166    jne         004C5216
 004C516C    mov         al,byte ptr [ebp+10]
 004C516F    push        eax
 004C5170    lea         eax,[ebp-144]
 004C5176    push        eax
 004C5177    mov         ecx,dword ptr [ebp-10]
 004C517A    cmp         ecx,0FF
>004C5180    jbe         004C5187
 004C5182    call        @BoundErr
 004C5187    mov         edx,dword ptr [ebp-8]
 004C518A    cmp         edx,0FF
>004C5190    jbe         004C5197
 004C5192    call        @BoundErr
 004C5197    mov         eax,dword ptr [ebp-4]
 004C519A    call        004C2D10
 004C519F    lea         edx,[ebp-144]
 004C51A5    lea         eax,[ebp-24]
 004C51A8    call        @LStrFromString
 004C51AD    cmp         dword ptr [ebp-24],0
>004C51B1    je          004C52AE
 004C51B7    lea         ecx,[ebp-144]
 004C51BD    mov         edx,dword ptr [ebp-10]
 004C51C0    cmp         edx,0FF
>004C51C6    jbe         004C51CD
 004C51C8    call        @BoundErr
 004C51CD    mov         eax,dword ptr [ebp-4]
 004C51D0    call        TFichierCdn.sub_004BEA64
 004C51D5    lea         edx,[ebp-144]
 004C51DB    lea         eax,[ebp-14C]
 004C51E1    call        @LStrFromString
 004C51E6    push        dword ptr [ebp-14C]
 004C51EC    push        4C53BC;' -> '
 004C51F1    push        dword ptr [ebp-24]
 004C51F4    lea         eax,[ebp-148]
 004C51FA    mov         edx,3
 004C51FF    call        @LStrCatN
 004C5204    mov         edx,dword ptr [ebp-148]
 004C520A    mov         eax,esi
 004C520C    mov         ecx,dword ptr [eax]
 004C520E    call        dword ptr [ecx+34];TStringList.Add
>004C5211    jmp         004C52AE
 004C5216    mov         al,byte ptr [ebp+0C]
 004C5219    push        eax
 004C521A    mov         al,byte ptr [ebp+8]
 004C521D    push        eax
 004C521E    lea         eax,[ebp-144]
 004C5224    push        eax
 004C5225    mov         edx,dword ptr [ebp-10]
 004C5228    cmp         edx,0FF
>004C522E    jbe         004C5235
 004C5230    call        @BoundErr
 004C5235    mov         cl,byte ptr [ebp+10]
 004C5238    mov         eax,dword ptr [ebp-4]
 004C523B    call        004C32B4
 004C5240    lea         edx,[ebp-144]
 004C5246    lea         eax,[ebp-24]
 004C5249    call        @LStrFromString
 004C524E    cmp         dword ptr [ebp-24],0
>004C5252    je          004C52AE
 004C5254    lea         ecx,[ebp-144]
 004C525A    mov         edx,dword ptr [ebp-10]
 004C525D    cmp         edx,0FF
>004C5263    jbe         004C526A
 004C5265    call        @BoundErr
 004C526A    mov         eax,dword ptr [ebp-4]
 004C526D    call        TFichierCdn.sub_004BEA64
 004C5272    lea         edx,[ebp-144]
 004C5278    lea         eax,[ebp-154]
 004C527E    call        @LStrFromString
 004C5283    push        dword ptr [ebp-154]
 004C5289    push        4C53BC;' -> '
 004C528E    push        dword ptr [ebp-24]
 004C5291    lea         eax,[ebp-150]
 004C5297    mov         edx,3
 004C529C    call        @LStrCatN
 004C52A1    mov         edx,dword ptr [ebp-150]
 004C52A7    mov         eax,esi
 004C52A9    mov         ecx,dword ptr [eax]
 004C52AB    call        dword ptr [ecx+34];TStringList.Add
 004C52AE    inc         dword ptr [ebp-10]
 004C52B1    dec         ebx
>004C52B2    jne         004C5162
 004C52B8    mov         eax,esi
 004C52BA    mov         edx,dword ptr [eax]
 004C52BC    call        dword ptr [edx+14];TStringList.GetCount
 004C52BF    mov         ecx,eax
 004C52C1    cmp         ecx,0FFFF
>004C52C7    jbe         004C52CE
 004C52C9    call        @BoundErr
 004C52CE    mov         edx,esi
 004C52D0    mov         eax,dword ptr [ebp-1C]
 004C52D3    call        004B8B48
 004C52D8    cmp         byte ptr [ebp-9],0
>004C52DC    jne         004C52F8
 004C52DE    mov         ecx,4C53CC;'Classement ascendant'
 004C52E3    xor         edx,edx
 004C52E5    mov         eax,esi
 004C52E7    mov         ebx,dword ptr [eax]
 004C52E9    call        dword ptr [ebx+54];TStringList.Insert
 004C52EC    mov         edx,esi
 004C52EE    mov         eax,dword ptr [ebp-18]
 004C52F1    mov         ecx,dword ptr [eax]
 004C52F3    call        dword ptr [ecx+3C];TStrings.AddStrings
>004C52F6    jmp         004C5364
 004C52F8    mov         eax,esi
 004C52FA    mov         edx,dword ptr [eax]
 004C52FC    call        dword ptr [edx+14];TStringList.GetCount
 004C52FF    mov         ebx,eax
 004C5301    sub         ebx,1
>004C5304    jno         004C530B
 004C5306    call        @IntOver
 004C530B    test        ebx,ebx
>004C530D    jl          004C5355
 004C530F    inc         ebx
 004C5310    mov         dword ptr [ebp-14],0
 004C5317    mov         eax,esi
 004C5319    mov         edx,dword ptr [eax]
 004C531B    call        dword ptr [edx+14];TStringList.GetCount
 004C531E    mov         edx,eax
 004C5320    sub         edx,1
>004C5323    jno         004C532A
 004C5325    call        @IntOver
 004C532A    sub         edx,dword ptr [ebp-14]
>004C532D    jno         004C5334
 004C532F    call        @IntOver
 004C5334    lea         ecx,[ebp-158]
 004C533A    mov         eax,esi
 004C533C    mov         edi,dword ptr [eax]
 004C533E    call        dword ptr [edi+0C];TStringList.Get
 004C5341    mov         edx,dword ptr [ebp-158]
 004C5347    mov         eax,dword ptr [ebp-18]
 004C534A    mov         ecx,dword ptr [eax]
 004C534C    call        dword ptr [ecx+34];TStringList.Add
 004C534F    inc         dword ptr [ebp-14]
 004C5352    dec         ebx
>004C5353    jne         004C5317
 004C5355    mov         ecx,4C53EC;'Classement descendant'
 004C535A    xor         edx,edx
 004C535C    mov         eax,dword ptr [ebp-18]
 004C535F    mov         ebx,dword ptr [eax]
 004C5361    call        dword ptr [ebx+54];TStringList.Insert
 004C5364    mov         dl,1
 004C5366    mov         eax,esi
 004C5368    mov         ecx,dword ptr [eax]
 004C536A    call        dword ptr [ecx-4];TStringList.Destroy
 004C536D    mov         dl,1
 004C536F    mov         eax,dword ptr [ebp-1C]
 004C5372    mov         ecx,dword ptr [eax]
 004C5374    call        dword ptr [ecx-4];TComponent.Destroy
 004C5377    mov         ebx,dword ptr [ebp-18]
 004C537A    xor         eax,eax
 004C537C    pop         edx
 004C537D    pop         ecx
 004C537E    pop         ecx
 004C537F    mov         dword ptr fs:[eax],edx
 004C5382    push        4C53A7
 004C5387    lea         eax,[ebp-158]
 004C538D    mov         edx,5
 004C5392    call        @LStrArrayClr
 004C5397    lea         eax,[ebp-24]
 004C539A    call        @LStrClr
 004C539F    ret
>004C53A0    jmp         @HandleFinally
>004C53A5    jmp         004C5387
 004C53A7    mov         eax,ebx
 004C53A9    pop         edi
 004C53AA    pop         esi
 004C53AB    pop         ebx
 004C53AC    mov         esp,ebp
 004C53AE    pop         ebp
 004C53AF    ret         0C
end;*}

//004C5404
procedure TFichierCdn.sub_004C5404(Periode:dword; ARow:dword; var S:String); //Determiner la Note la plus basse de la période
var
 I,NumModule,MoyennesSur,lvar_38:integer;
 var1,var2,Note,NoteBasse : real;
 lvar_30 , lvar_20 :real;
 Buf:string;
begin//0
  //004C5404..004C544A
    MoyennesSur := sub_004B9E48; //moyennesSur
	lvar_38 := 0;
	//1- Determiner le NumModule !
    for I:=1 to  sub_004BEAD0(Periode) do //lvar_34
    begin//004C548F
      try
        //004C54A7
        sub_004BEF5C(Periode, I, ARow, Buf);
        Var1 := StrToFloat(Buf);
        sub_004BED2C(Periode, I, Buf);
        Var2 := StrToInt(Buf);
        Note := Var1 / Var2 * MoyennesSur;
        if ({MoyennesSur}NoteBasse > Note) then
        begin//004C554F
          NoteBasse := Note;
          {lvar_C := lvar_1C;
          index := lvar_18;}
          NumModule := I;
        end;//4
        lvar_38 := lvar_38 + 1;
      except//3
        on E:EConvertError do
        begin//004C558F
        end;//4
      end;//3
    end;//2
	//004C55A7
    if (lvar_38 <> 0) then
    begin//004C55B1
      sub_004BED04(Periode, Buf, NumModule);
      S := FloatToStrF(NoteBasse,ffFixed{2}, 18, 2) + '/' + IntToStr(sub_004B9E48) + ' (' + Buf + ')';
    end
	else 
    S := '';//??????
end;//0


//004C56C0
//procedure sub_004C56C0(a:pointer; b:pointer; c:pointer; d:pointer);
//begin
{*
 004C56C0    push        ebp
 004C56C1    mov         ebp,esp
 004C56C3    add         esp,0FFFFFE98
 004C56C9    push        ebx
 004C56CA    push        esi
 004C56CB    push        edi
 004C56CC    xor         ebx,ebx
 004C56CE    mov         dword ptr [ebp-15C],ebx
 004C56D4    mov         dword ptr [ebp-160],ebx
 004C56DA    mov         dword ptr [ebp-164],ebx
 004C56E0    mov         dword ptr [ebp-168],ebx
 004C56E6    mov         dword ptr [ebp-158],ebx
 004C56EC    mov         dword ptr [ebp-48],ebx
 004C56EF    mov         byte ptr [ebp-6],cl
 004C56F2    mov         byte ptr [ebp-5],dl
 004C56F5    mov         dword ptr [ebp-4],eax
 004C56F8    xor         eax,eax
 004C56FA    push        ebp
 004C56FB    push        4C593D
 004C5700    push        dword ptr fs:[eax]
 004C5703    mov         dword ptr fs:[eax],esp
 004C5706    xor         eax,eax
 004C5708    mov         dword ptr [ebp-38],eax
 004C570B    xor         eax,eax
 004C570D    mov         dword ptr [ebp-3C],eax
 004C5710    call        004B9E48
 004C5715    mov         dword ptr [ebp-44],eax
 004C5718    fild        dword ptr [ebp-44]
 004C571B    fstp        tbyte ptr [ebp-30]
 004C571E    wait
 004C571F    xor         eax,eax
 004C5721    mov         dword ptr [ebp-10],eax
 004C5724    mov         dword ptr [ebp-0C],eax
 004C5727    mov         word ptr [ebp-8],ax
 004C572B    mov         dl,byte ptr [ebp-5]
 004C572E    mov         eax,dword ptr [ebp-4]
 004C5731    call        004BEAD0
 004C5736    and         eax,0FF
 004C573B    test        eax,eax
>004C573D    jle         004C585B
 004C5743    mov         dword ptr [ebp-40],eax
 004C5746    mov         dword ptr [ebp-34],1
 004C574D    xor         eax,eax
 004C574F    push        ebp
 004C5750    push        4C5832
 004C5755    push        dword ptr fs:[eax]
 004C5758    mov         dword ptr fs:[eax],esp
 004C575B    mov         al,byte ptr [ebp-6]
 004C575E    push        eax
 004C575F    lea         eax,[ebp-148]
 004C5765    push        eax
 004C5766    mov         ebx,dword ptr [ebp-34]
 004C5769    cmp         ebx,0FF
>004C576F    jbe         004C5776
 004C5771    call        @BoundErr
 004C5776    mov         ecx,ebx
 004C5778    mov         dl,byte ptr [ebp-5]
 004C577B    mov         eax,dword ptr [ebp-4]
 004C577E    call        004BEF5C
 004C5783    lea         edx,[ebp-148]
 004C5789    lea         eax,[ebp-48]
 004C578C    call        @LStrFromString
 004C5791    mov         eax,dword ptr [ebp-48]
 004C5794    call        StrToFloat
 004C5799    fstp        tbyte ptr [ebp-154]
 004C579F    wait
 004C57A0    lea         eax,[ebp-148]
 004C57A6    push        eax
 004C57A7    mov         eax,dword ptr [ebp-34]
 004C57AA    cmp         eax,0FF
>004C57AF    jbe         004C57B6
 004C57B1    call        @BoundErr
 004C57B6    mov         ecx,ebx
 004C57B8    mov         dl,byte ptr [ebp-5]
 004C57BB    mov         eax,dword ptr [ebp-4]
 004C57BE    call        004BED2C
 004C57C3    lea         edx,[ebp-148]
 004C57C9    lea         eax,[ebp-158]
 004C57CF    call        @LStrFromString
 004C57D4    mov         eax,dword ptr [ebp-158]
 004C57DA    call        StrToInt
 004C57DF    mov         dword ptr [ebp-44],eax
 004C57E2    fild        dword ptr [ebp-44]
 004C57E5    fld         tbyte ptr [ebp-154]
 004C57EB    fdivrp      st(1),st
 004C57ED    fld         tbyte ptr [ebp-30]
 004C57F0    fmulp       st(1),st
 004C57F2    fstp        tbyte ptr [ebp-20]
 004C57F5    wait
 004C57F6    fld         tbyte ptr [ebp-20]
 004C57F9    fld         tbyte ptr [ebp-10]
 004C57FC    fcompp
 004C57FE    fnstsw      al
 004C5800    sahf
>004C5801    jae         004C581D
 004C5803    mov         eax,dword ptr [ebp-20]
 004C5806    mov         dword ptr [ebp-10],eax
 004C5809    mov         eax,dword ptr [ebp-1C]
 004C580C    mov         dword ptr [ebp-0C],eax
 004C580F    mov         ax,word ptr [ebp-18]
 004C5813    mov         word ptr [ebp-8],ax
 004C5817    mov         eax,dword ptr [ebp-34]
 004C581A    mov         dword ptr [ebp-3C],eax
 004C581D    add         dword ptr [ebp-38],1
>004C5821    jno         004C5828
 004C5823    call        @IntOver
 004C5828    xor         eax,eax
 004C582A    pop         edx
 004C582B    pop         ecx
 004C582C    pop         ecx
 004C582D    mov         dword ptr fs:[eax],edx
>004C5830    jmp         004C584F
>004C5832    jmp         @HandleOnException
 004C5837    dd          1
 004C583B    dd          00409B50;EConvertError
 004C583F    dd          004C5843
 004C5843    call        @DoneExcept
>004C5848    jmp         004C584F
 004C584A    call        @DoneExcept
 004C584F    inc         dword ptr [ebp-34]
 004C5852    dec         dword ptr [ebp-40]
>004C5855    jne         004C574D
 004C585B    cmp         dword ptr [ebp-38],0
>004C585F    je          004C5911
 004C5865    mov         ax,word ptr [ebp-8]
 004C5869    push        eax
 004C586A    push        dword ptr [ebp-0C]
 004C586D    push        dword ptr [ebp-10]
 004C5870    lea         eax,[ebp-160]
 004C5876    push        eax
 004C5877    mov         ecx,2
 004C587C    mov         edx,12
 004C5881    mov         al,2
 004C5883    call        FloatToStrF
 004C5888    push        dword ptr [ebp-160]
 004C588E    push        4C5958;'/'
 004C5893    call        004B9E48
 004C5898    lea         edx,[ebp-164]
 004C589E    call        IntToStr
 004C58A3    push        dword ptr [ebp-164]
 004C58A9    push        4C5964;' ('
 004C58AE    lea         eax,[ebp-148]
 004C58B4    push        eax
 004C58B5    mov         ecx,dword ptr [ebp-3C]
 004C58B8    cmp         ecx,0FF
>004C58BE    jbe         004C58C5
 004C58C0    call        @BoundErr
 004C58C5    mov         dl,byte ptr [ebp-5]
 004C58C8    mov         eax,dword ptr [ebp-4]
 004C58CB    call        004BED04
 004C58D0    lea         edx,[ebp-148]
 004C58D6    lea         eax,[ebp-168]
 004C58DC    call        @LStrFromString
 004C58E1    push        dword ptr [ebp-168]
 004C58E7    push        4C5970;')'
 004C58EC    lea         eax,[ebp-15C]
 004C58F2    mov         edx,6
 004C58F7    call        @LStrCatN
 004C58FC    mov         edx,dword ptr [ebp-15C]
 004C5902    mov         eax,dword ptr [ebp+8]
 004C5905    mov         ecx,0FF
 004C590A    call        @LStrToString
>004C590F    jmp         004C5917
 004C5911    mov         eax,dword ptr [ebp+8]
 004C5914    mov         byte ptr [eax],0
 004C5917    xor         eax,eax
 004C5919    pop         edx
 004C591A    pop         ecx
 004C591B    pop         ecx
 004C591C    mov         dword ptr fs:[eax],edx
 004C591F    push        4C5944
 004C5924    lea         eax,[ebp-168]
 004C592A    mov         edx,5
 004C592F    call        @LStrArrayClr
 004C5934    lea         eax,[ebp-48]
 004C5937    call        @LStrClr
 004C593C    ret
>004C593D    jmp         @HandleFinally
>004C5942    jmp         004C5924
 004C5944    pop         edi
 004C5945    pop         esi
 004C5946    pop         ebx
 004C5947    mov         esp,ebp
 004C5949    pop         ebp
 004C594A    ret         4
*}
//end;

//004C5E04
{*//procedure sub_004C5E04(?:?; ?:?; ?:?; ?:?);
//begin
 004C5E04    push        ebp
 004C5E05    mov         ebp,esp
 004C5E07    add         esp,0FFFFFEF4
 004C5E0D    push        ebx
 004C5E0E    push        esi
 004C5E0F    push        edi
 004C5E10    xor         ebx,ebx
 004C5E12    mov         dword ptr [ebp-10C],ebx
 004C5E18    mov         esi,dword ptr [ebp+8]
 004C5E1B    lea         edi,[ebp-105]
 004C5E21    push        ecx
 004C5E22    xor         ecx,ecx
 004C5E24    mov         cl,byte ptr [esi]
 004C5E26    inc         ecx
 004C5E27    rep movs    byte ptr [edi],byte ptr [esi]
 004C5E29    pop         ecx
 004C5E2A    mov         byte ptr [ebp-5],cl
 004C5E2D    mov         dword ptr [ebp-4],eax
 004C5E30    xor         eax,eax
 004C5E32    push        ebp
 004C5E33    push        4C5EF8
 004C5E38    push        dword ptr fs:[eax]
 004C5E3B    mov         dword ptr fs:[eax],esp
 004C5E3E    xor         edi,edi
 004C5E40    xor         ebx,ebx
 004C5E42    mov         bl,dl
 004C5E44    sub         ebx,1
>004C5E47    jno         004C5E4E
 004C5E49    call        @IntOver
 004C5E4E    test        ebx,ebx
>004C5E50    jle         004C5E80
 004C5E52    mov         esi,1
 004C5E57    mov         edx,esi
 004C5E59    cmp         edx,0FF
>004C5E5F    jbe         004C5E66
 004C5E61    call        @BoundErr
 004C5E66    mov         eax,dword ptr [ebp-4]
 004C5E69    call        004BEAD0
 004C5E6E    and         eax,0FF
 004C5E73    add         edi,eax
>004C5E75    jno         004C5E7C
 004C5E77    call        @IntOver
 004C5E7C    inc         esi
 004C5E7D    dec         ebx
>004C5E7E    jne         004C5E57
 004C5E80    xor         eax,eax
 004C5E82    mov         al,byte ptr [ebp-5]
 004C5E85    add         edi,eax
>004C5E87    jno         004C5E8E
 004C5E89    call        @IntOver
 004C5E8E    lea         eax,[ebp-10C]
 004C5E94    lea         edx,[ebp-105]
 004C5E9A    call        @LStrFromString
 004C5E9F    mov         ecx,dword ptr [ebp-10C]
 004C5EA5    sub         edi,1
>004C5EA8    jno         004C5EAF
 004C5EAA    call        @IntOver
 004C5EAF    imul        edx,edi,0E
>004C5EB2    jno         004C5EB9
 004C5EB4    call        @IntOver
 004C5EB9    xor         eax,eax
 004C5EBB    mov         al,byte ptr [ebp+0C]
 004C5EBE    add         edx,eax
>004C5EC0    jno         004C5EC7
 004C5EC2    call        @IntOver
 004C5EC7    sub         edx,1
>004C5ECA    jno         004C5ED1
 004C5ECC    call        @IntOver
 004C5ED1    mov         eax,dword ptr [ebp-4]
 004C5ED4    mov         eax,dword ptr [eax+940]
 004C5EDA    mov         ebx,dword ptr [eax]
 004C5EDC    call        dword ptr [ebx+20]
 004C5EDF    xor         eax,eax
 004C5EE1    pop         edx
 004C5EE2    pop         ecx
 004C5EE3    pop         ecx
 004C5EE4    mov         dword ptr fs:[eax],edx
 004C5EE7    push        4C5EFF
 004C5EEC    lea         eax,[ebp-10C]
 004C5EF2    call        @LStrClr
 004C5EF7    ret
>004C5EF8    jmp         @HandleFinally
>004C5EFD    jmp         004C5EEC
 004C5EFF    pop         edi
 004C5F00    pop         esi
 004C5F01    pop         ebx
 004C5F02    mov         esp,ebp
 004C5F04    pop         ebp
 004C5F05    ret         8
end;*}

//004C5F08
procedure TFichierCdn.sub_004C5F08(Periode:dword; ACol:dword; Info:dword; var d:string);
var
  sum:dword;
  I:integer;
begin//0
  //004C5F08..004C5F29

    sum := 0;
       //Determiner l'index(periode,ACol,Info) = 14*(ACol-1)+14*sum(ACol-1,1,Periode-1)+Info - 1
      for I := 1 to Periode - 1 do//004C5F44
        sum := sum + sub_004BEAD0(I);


    d := f940[14 * (sum + ACol - 1) + Info - 1];
end;//0


//004C5FF8
procedure TFichierCdn.sub_004C5FF8(a:dword; b:dword; c:dword; d:dword);
begin//0
  //004C5FF848
 (* ESI := Self;
  EAX := c;
  if (d <> 0) then
  begin//1
    //004C6007
    sub_004C5E04(a, b, c{EAX});
    Exit;
  end;//1
  //push EAX
  sub_004C5E04(a, b, c{EAX});*)
end;//0



//004C6030
function TFichierCdn.sub_004C6030(periode:dword; ACol:dword; info:dword):Boolean;
var
  buf:String;
begin//0
  //004C6030
  sub_004C5F08(periode, ACol, info, buf);
  result := (buf = '1');
end;//0


//004C6080
procedure TFichierCdn.sub_004C6080(a:dword; b:dword; c:string);
begin//0
  //004C6080
    f944[(a - 1) * sub_004BEA58 + b - 1] := c;
end;//0


//004C6144
procedure TFichierCdn.sub_004C6144(a:dword; b:dword; c:string);
begin//0
  //004C6144
    c := f944[sub_004BEA58 * (a - 1) + b - 1];
end;//0


//004C61E4
procedure TFichierCdn.sub_004C61E4(a:dword; b:dword; c:boolean);
begin//004C61E4
  if (c) then
  begin//004C621D
    f944[sub_004BEA58 * (a - 1) + sub_004BE9E0 * sub_004BEA58 + b - 1] := '1';
    Exit;
  end
  else
  f944[sub_004BEA58 * (a - 1) + sub_004BE9E0 * sub_004BEA58 + b - 1] := '0';
end;//0


//004C62E8
function TFichierCdn.sub_004C62E8(a:dword; b:dword):boolean;
begin//0
  //004C62E8..004C630B
    result := (f944[sub_004BEA58 * (a - 1) + sub_004BE9E0*sub_004BEA58 + b - 1] = '1');
end;//0


//004C63C8
procedure TFichierCdn.sub_004C63C8;
begin//0
  //004C63C8
 (* for I:=1 to 16 do  {ESI}
	  if (sub_004BE9E0 > 0) then
	  begin//004C63E8
		lvar_18 := sub_004BE9E0;
		for J:=1 to 255 do  {EDI}
		if (sub_004BEAD0(J) > 0) then
		begin//004C640F
		  sub_004C5FF8(1, 1);
		  ESI := ESI + 1;//ESI
		  EBX := EBX - 1;//EBX
		  if (EBX = 0) then
		  begin//004C644F
		  end;//3
		end;//2
		EDI := EDI + 1;//EDI
		lvar_18 := lvar_18- 1;
		if (EDI > 0) then
		begin//004C6456
		end;//2
	  end;//1*)
  {lvar_1C := lvar_1C + 1;
  if (lvar_1C <> 15) then Continue;
  if (sub_004BE9E0 > 0) then
  begin//004C6473
    lvar_18 := sub_004BE9E0;
    if (sub_004BEA58 > 0) then
    begin//004C648B
      sub_004C61E4(EDI, ESI, 1);
      ESI := ESI + 1;//ESI
      EBX := EBX - 1;//EBX
      if (EBX = 0) then
      begin//004C64BB
      end;//3
    end;//2
    EDI := EDI + 1;//EDI
    lvar_18 := lvar_18 - 1;
    if (EDI > 0) then
    begin//004C64C2
    end;//2
  end;//1}
end;


//004C64CC
{*//procedure sub_004C64CC(?:dword; ?:ShortString; ?:?);
//begin
 004C64CC    push        ebp
 004C64CD    mov         ebp,esp
 004C64CF    add         esp,0FFFFFDD4
 004C64D5    push        ebx
 004C64D6    push        esi
 004C64D7    push        edi
 004C64D8    xor         ebx,ebx
 004C64DA    mov         dword ptr [ebp-22C],ebx
 004C64E0    mov         dword ptr [ebp-128],ebx
 004C64E6    mov         esi,edx
 004C64E8    lea         edi,[ebp-124]
 004C64EE    push        ecx
 004C64EF    xor         ecx,ecx
 004C64F1    mov         cl,byte ptr [esi]
 004C64F3    inc         ecx
 004C64F4    rep movs    byte ptr [edi],byte ptr [esi]
 004C64F6    pop         ecx
 004C64F7    mov         byte ptr [ebp-5],cl
 004C64FA    mov         dword ptr [ebp-4],eax
 004C64FD    xor         eax,eax
 004C64FF    push        ebp
 004C6500    push        4C6641
 004C6505    push        dword ptr fs:[eax]
 004C6508    mov         dword ptr fs:[eax],esp
 004C650B    xor         eax,eax
 004C650D    mov         dword ptr [ebp-20],eax
 004C6510    mov         dword ptr [ebp-1C],eax
 004C6513    mov         word ptr [ebp-18],ax
 004C6517    xor         eax,eax
 004C6519    mov         dword ptr [ebp-10],eax
 004C651C    mov         eax,dword ptr [ebp-4]
 004C651F    call        004BE9E0
 004C6524    and         eax,0FF
 004C6529    test        eax,eax
>004C652B    jle         004C65D5
 004C6531    mov         dword ptr [ebp-24],eax
 004C6534    mov         dword ptr [ebp-0C],1
 004C653B    xor         eax,eax
 004C653D    push        ebp
 004C653E    push        4C65AC
 004C6543    push        dword ptr fs:[eax]
 004C6546    mov         dword ptr fs:[eax],esp
 004C6549    mov         al,byte ptr [ebp-5]
 004C654C    push        eax
 004C654D    lea         eax,[ebp-228]
 004C6553    push        eax
 004C6554    mov         ecx,dword ptr [ebp-0C]
 004C6557    cmp         ecx,0FF
>004C655D    jbe         004C6564
 004C655F    call        @BoundErr
 004C6564    lea         edx,[ebp-124]
 004C656A    mov         eax,dword ptr [ebp-4]
 004C656D    call        004C2E60
 004C6572    lea         edx,[ebp-228]
 004C6578    lea         eax,[ebp-128]
 004C657E    call        @LStrFromString
 004C6583    mov         eax,dword ptr [ebp-128]
 004C6589    call        StrToFloat
 004C658E    fld         tbyte ptr [ebp-20]
 004C6591    faddp       st(1),st
 004C6593    fstp        tbyte ptr [ebp-20]
 004C6596    wait
 004C6597    add         dword ptr [ebp-10],1
>004C659B    jno         004C65A2
 004C659D    call        @IntOver
 004C65A2    xor         eax,eax
 004C65A4    pop         edx
 004C65A5    pop         ecx
 004C65A6    pop         ecx
 004C65A7    mov         dword ptr fs:[eax],edx
>004C65AA    jmp         004C65C9
>004C65AC    jmp         @HandleOnException
 004C65B1    dd          1
 004C65B5    dd          00409B50;EConvertError
 004C65B9    dd          004C65BD
 004C65BD    call        @DoneExcept
>004C65C2    jmp         004C65C9
 004C65C4    call        @DoneExcept
 004C65C9    inc         dword ptr [ebp-0C]
 004C65CC    dec         dword ptr [ebp-24]
>004C65CF    jne         004C653B
 004C65D5    cmp         dword ptr [ebp-10],0
>004C65D9    je          004C6617
 004C65DB    fild        dword ptr [ebp-10]
 004C65DE    fld         tbyte ptr [ebp-20]
 004C65E1    fdivrp      st(1),st
 004C65E3    add         esp,0FFFFFFF4
 004C65E6    fstp        tbyte ptr [esp]
 004C65E9    wait
 004C65EA    lea         eax,[ebp-22C]
 004C65F0    push        eax
 004C65F1    mov         ecx,2
 004C65F6    mov         edx,12
 004C65FB    mov         al,2
 004C65FD    call        FloatToStrF
 004C6602    mov         edx,dword ptr [ebp-22C]
 004C6608    mov         eax,dword ptr [ebp+8]
 004C660B    mov         ecx,0FF
 004C6610    call        @LStrToString
>004C6615    jmp         004C661D
 004C6617    mov         eax,dword ptr [ebp+8]
 004C661A    mov         byte ptr [eax],0
 004C661D    xor         eax,eax
 004C661F    pop         edx
 004C6620    pop         ecx
 004C6621    pop         ecx
 004C6622    mov         dword ptr fs:[eax],edx
 004C6625    push        4C6648
 004C662A    lea         eax,[ebp-22C]
 004C6630    call        @LStrClr
 004C6635    lea         eax,[ebp-128]
 004C663B    call        @LStrClr
 004C6640    ret
>004C6641    jmp         @HandleFinally
>004C6646    jmp         004C662A
 004C6648    pop         edi
 004C6649    pop         esi
 004C664A    pop         ebx
 004C664B    mov         esp,ebp
 004C664D    pop         ebp
 004C664E    ret         4
end;*}

//004C6654
function TFichierCdn.sub_004C6654:Boolean;
begin
 result := (f10 = 'Etablissement');
end;

//004C6680
function TFichierCdn.sub_004C6680:Boolean;
begin//0
  //004C6680
  result := (f10 = 'Personnelle');
end;//0


//004C66A8
function TFichierCdn.sub_004C66A8(FluxCdn:TFluxCdn;CarnetNotesVersion:string) : boolean;
begin
{* 004C66A8    push        ebp
 004C66A9    mov         ebp,esp
 004C66AB    push        ecx
 004C66AC    mov         ecx,186
 004C66B1    push        0
 004C66B3    push        0
 004C66B5    dec         ecx
>004C66B6    jne         004C66B1
 004C66B8    push        ecx
 004C66B9    xchg        ecx,dword ptr [ebp-4]
 004C66BC    push        ebx
 004C66BD    push        esi
 004C66BE    push        edi
 004C66BF    mov         esi,ecx
 004C66C1    lea         edi,[ebp-107]
 004C66C7    xor         ecx,ecx
 004C66C9    mov         cl,byte ptr [esi]
 004C66CB    inc         ecx
 004C66CC    rep movs    byte ptr [edi],byte ptr [esi]
 004C66CE    mov         edi,edx
 004C66D0    mov         esi,eax
 004C66D2    xor         eax,eax
 004C66D4    push        ebp
 004C66D5    push        4C6D9C
 004C66DA    push        dword ptr fs:[eax]
 004C66DD    mov         dword ptr fs:[eax],esp
 004C66E0    lea         eax,[ebp-107]
 004C66E6    mov         edx,4C6DAC;'bêta 2'
 004C66EB    xor         ecx,ecx
 004C66ED    mov         cl,byte ptr [eax]
 004C66EF    inc         ecx
 004C66F0    call        @AStrCmp
>004C66F5    je          004C6771
 004C66F7    lea         eax,[ebp-107]
 004C66FD    mov         edx,4C6DB4;'bêta 3'
 004C6702    xor         ecx,ecx
 004C6704    mov         cl,byte ptr [eax]
 004C6706    inc         ecx
 004C6707    call        @AStrCmp
>004C670C    je          004C6771
 004C670E    lea         eax,[ebp-107]
 004C6714    mov         edx,4C6DBC;'bêta 4'
 004C6719    xor         ecx,ecx
 004C671B    mov         cl,byte ptr [eax]
 004C671D    inc         ecx
 004C671E    call        @AStrCmp
>004C6723    je          004C6771
 004C6725    lea         eax,[ebp-107]
 004C672B    mov         edx,4C6DC4;'bêta 5'
 004C6730    xor         ecx,ecx
 004C6732    mov         cl,byte ptr [eax]
 004C6734    inc         ecx
 004C6735    call        @AStrCmp
>004C673A    je          004C6771
 004C673C    lea         eax,[ebp-107]
 004C6742    mov         edx,4C6DCC;'bêta 6'
 004C6747    xor         ecx,ecx
 004C6749    mov         cl,byte ptr [eax]
 004C674B    inc         ecx
 004C674C    call        @AStrCmp
>004C6751    je          004C6771
 004C6753    lea         eax,[ebp-107]
 004C6759    mov         edx,4C6DD4;'1.0'
 004C675E    xor         ecx,ecx
 004C6760    mov         cl,byte ptr [eax]
 004C6762    inc         ecx
 004C6763    call        @AStrCmp
>004C6768    je          004C6771
 004C676A    xor         ebx,ebx
>004C676C    jmp         004C6D7E
 004C6771    xor         eax,eax
 004C6773    push        ebp
 004C6774    push        4C6D5D
 004C6779    push        dword ptr fs:[eax]
 004C677C    mov         dword ptr fs:[eax],esp
 004C677F    push        esi
 004C6780    push        edi
 004C6781    lea         edi,[esi+10];TFichierCdn.?f10:?
 004C6784    mov         esi,4C6DD8
 004C6789    movs        dword ptr [edi],dword ptr [esi]
 004C678A    movs        dword ptr [edi],dword ptr [esi]
 004C678B    movs        dword ptr [edi],dword ptr [esi]
 004C678C    pop         edi
 004C678D    pop         esi
 004C678E    lea         edx,[ebp-0C08]
 004C6794    mov         eax,edi
 004C6796    call        004B696C
 004C679B    lea         edx,[ebp-0C08]
 004C67A1    lea         eax,[esi+410];TFichierCdn.?f410:?
 004C67A7    call        @PStrCpy
 004C67AC    lea         edx,[ebp-0C08]
 004C67B2    mov         eax,edi
 004C67B4    call        004B696C
 004C67B9    lea         edx,[ebp-0C08]
 004C67BF    lea         eax,[esi+510];TFichierCdn.?f510:?
 004C67C5    call        @PStrCpy
 004C67CA    lea         edx,[ebp-0C08]
 004C67D0    mov         eax,edi
 004C67D2    call        004B696C
 004C67D7    lea         edx,[ebp-0C08]
 004C67DD    lea         eax,[esi+610];TFichierCdn.?f610:?
 004C67E3    call        @PStrCpy
 004C67E8    lea         edx,[ebp-0C08]
 004C67EE    mov         eax,edi
 004C67F0    call        004B696C
 004C67F5    lea         edx,[ebp-0C08]
 004C67FB    lea         eax,[esi+710];TFichierCdn.?f710:?
 004C6801    call        @PStrCpy
 004C6806    lea         edx,[ebp-0C08]
 004C680C    mov         eax,edi
 004C680E    call        004B696C
 004C6813    lea         edx,[ebp-0C08]
 004C6819    lea         eax,[esi+810];TFichierCdn.?f810:?
 004C681F    call        @PStrCpy
 004C6824    lea         edx,[ebp-0C08]
 004C682A    mov         eax,edi
 004C682C    call        004B696C
 004C6831    lea         edx,[ebp-0C08]
 004C6837    lea         eax,[ebp-0C0C]
 004C683D    call        @LStrFromString
 004C6842    mov         eax,dword ptr [ebp-0C0C]
 004C6848    call        StrToInt
 004C684D    cmp         eax,0FF
>004C6852    jbe         004C6859
 004C6854    call        @BoundErr
 004C6859    mov         byte ptr [ebp-3],al
 004C685C    mov         ebx,dword ptr [esi+924];TFichierCdn.?f924:TStringGrid
 004C6862    xor         edx,edx
 004C6864    mov         eax,ebx
 004C6866    call        TCustomGrid.SetFixedCols
 004C686B    xor         edx,edx
 004C686D    mov         eax,ebx
 004C686F    call        TCustomGrid.SetFixedRows
 004C6874    xor         edx,edx
 004C6876    mov         dl,byte ptr [ebp-3]
 004C6879    mov         eax,[00616030];^gvar_00617902
 004C687E    movzx       eax,byte ptr [eax]
 004C6881    add         edx,eax
>004C6883    jno         004C688A
 004C6885    call        @IntOver
 004C688A    mov         eax,ebx
 004C688C    call        TCustomGrid.SetRowCount
 004C6891    mov         edx,1
 004C6896    mov         eax,ebx
 004C6898    call        TCustomGrid.SetColCount
 004C689D    mov         dl,1
 004C689F    mov         eax,[004120B8];TStringList
 004C68A4    call        TObject.Create;TStringList.Create
 004C68A9    mov         dword ptr [esi+920],eax;TFichierCdn.?f920:TStringList
 004C68AF    mov         byte ptr [ebp-1],0C
 004C68B3    mov         eax,dword ptr [esi+920];TFichierCdn.?f920:TStringList
 004C68B9    mov         edx,4C6DEC;'0'
 004C68BE    mov         ecx,dword ptr [eax]
 004C68C0    call        dword ptr [ecx+34];TStringList.Add
 004C68C3    dec         byte ptr [ebp-1]
>004C68C6    jne         004C68B3
 004C68C8    mov         dl,1
 004C68CA    mov         eax,[004120B8];TStringList
 004C68CF    call        TObject.Create;TStringList.Create
 004C68D4    mov         dword ptr [esi+928],eax;TFichierCdn.?f928:TStringList
 004C68DA    mov         dl,1
 004C68DC    mov         eax,[004120B8];TStringList
 004C68E1    call        TObject.Create;TStringList.Create
 004C68E6    mov         dword ptr [esi+92C],eax;TFichierCdn.?f92C:TStringList
 004C68EC    mov         dl,1
 004C68EE    mov         eax,[004120B8];TStringList
 004C68F3    call        TObject.Create;TStringList.Create
 004C68F8    mov         dword ptr [esi+930],eax;TFichierCdn.?f930:TStringList
 004C68FE    mov         dl,1
 004C6900    mov         eax,[004120B8];TStringList
 004C6905    call        TObject.Create;TStringList.Create
 004C690A    mov         dword ptr [esi+938],eax;TFichierCdn.?f938:TStringList
 004C6910    mov         dl,1
 004C6912    mov         eax,[004120B8];TStringList
 004C6917    call        TObject.Create;TStringList.Create
 004C691C    mov         dword ptr [esi+934],eax;TFichierCdn.?f934:TStringList
 004C6922    mov         dl,1
 004C6924    mov         eax,[004120B8];TStringList
 004C6929    call        TObject.Create;TStringList.Create
 004C692E    mov         ebx,eax
 004C6930    mov         dword ptr [esi+93C],ebx;TFichierCdn.?f93C:TStringList
 004C6936    mov         eax,ebx
 004C6938    mov         edx,4C6DF8;'classe'
 004C693D    mov         ecx,dword ptr [eax]
 004C693F    call        dword ptr [ecx+34];TStringList.Add
 004C6942    mov         byte ptr [ebp-1],3
 004C6946    mov         bl,byte ptr [ebp-3]
 004C6949    test        bl,bl
>004C694B    jbe         004C696B
 004C694D    mov         eax,dword ptr [esi+928];TFichierCdn.?f928:TStringList
 004C6953    xor         edx,edx
 004C6955    mov         ecx,dword ptr [eax]
 004C6957    call        dword ptr [ecx+34];TStringList.Add
 004C695A    mov         eax,dword ptr [esi+92C];TFichierCdn.?f92C:TStringList
 004C6960    xor         edx,edx
 004C6962    mov         ecx,dword ptr [eax]
 004C6964    call        dword ptr [ecx+34];TStringList.Add
 004C6967    dec         bl
>004C6969    jne         004C694D
 004C696B    dec         byte ptr [ebp-1]
>004C696E    jne         004C6946
 004C6970    mov         bl,byte ptr [ebp-3]
 004C6973    test        bl,bl
>004C6975    jbe         004C69A2
 004C6977    mov         eax,dword ptr [esi+930];TFichierCdn.?f930:TStringList
 004C697D    xor         edx,edx
 004C697F    mov         ecx,dword ptr [eax]
 004C6981    call        dword ptr [ecx+34];TStringList.Add
 004C6984    mov         eax,dword ptr [esi+934];TFichierCdn.?f934:TStringList
 004C698A    xor         edx,edx
 004C698C    mov         ecx,dword ptr [eax]
 004C698E    call        dword ptr [ecx+34];TStringList.Add
 004C6991    mov         eax,dword ptr [esi+938];TFichierCdn.?f938:TStringList
 004C6997    xor         edx,edx
 004C6999    mov         ecx,dword ptr [eax]
 004C699B    call        dword ptr [ecx+34];TStringList.Add
 004C699E    dec         bl
>004C69A0    jne         004C6977
 004C69A2    mov         bl,byte ptr [ebp-3]
 004C69A5    test        bl,bl
>004C69A7    jbe         004C69DC
 004C69A9    lea         edx,[ebp-0C08]
 004C69AF    mov         eax,edi
 004C69B1    call        004B696C
 004C69B6    lea         edx,[ebp-0C08]
 004C69BC    lea         eax,[ebp-0C10]
 004C69C2    call        @LStrFromString
 004C69C7    mov         edx,dword ptr [ebp-0C10]
 004C69CD    mov         eax,dword ptr [esi+91C];TFichierCdn.?f91C:TEleves
 004C69D3    call        004B7010
 004C69D8    dec         bl
>004C69DA    jne         004C69A9
 004C69DC    lea         edx,[ebp-0C08]
 004C69E2    mov         eax,edi
 004C69E4    call        004B696C
 004C69E9    lea         edx,[ebp-0C08]
 004C69EF    lea         eax,[ebp-0C14]
 004C69F5    call        @LStrFromString
 004C69FA    mov         eax,dword ptr [ebp-0C14]
 004C6A00    call        StrToInt
 004C6A05    cmp         eax,0FF
>004C6A0A    jbe         004C6A11
 004C6A0C    call        @BoundErr
 004C6A11    mov         byte ptr [ebp-5],al
 004C6A14    mov         dl,1
 004C6A16    mov         eax,[004120B8];TStringList
 004C6A1B    call        TObject.Create;TStringList.Create
 004C6A20    mov         dword ptr [esi+940],eax;TFichierCdn.?f940:TStringList
 004C6A26    mov         bl,byte ptr [ebp-5]
 004C6A29    test        bl,bl
>004C6A2B    jbe         004C6A4A
 004C6A2D    mov         byte ptr [ebp-2],0E
 004C6A31    mov         eax,dword ptr [esi+940];TFichierCdn.?f940:TStringList
 004C6A37    mov         edx,4C6E08;'1'
 004C6A3C    mov         ecx,dword ptr [eax]
 004C6A3E    call        dword ptr [ecx+34];TStringList.Add
 004C6A41    dec         byte ptr [ebp-2]
>004C6A44    jne         004C6A31
 004C6A46    dec         bl
>004C6A48    jne         004C6A2D
 004C6A4A    mov         dl,1
 004C6A4C    mov         eax,[004120B8];TStringList
 004C6A51    call        TObject.Create;TStringList.Create
 004C6A56    mov         dword ptr [esi+944],eax;TFichierCdn.?f944:TStringList
 004C6A5C    mov         byte ptr [ebp-1],6
 004C6A60    mov         bl,byte ptr [ebp-3]
 004C6A63    test        bl,bl
>004C6A65    jbe         004C6A7B
 004C6A67    mov         eax,dword ptr [esi+944];TFichierCdn.?f944:TStringList
 004C6A6D    mov         edx,4C6E08;'1'
 004C6A72    mov         ecx,dword ptr [eax]
 004C6A74    call        dword ptr [ecx+34];TStringList.Add
 004C6A77    dec         bl
>004C6A79    jne         004C6A67
 004C6A7B    dec         byte ptr [ebp-1]
>004C6A7E    jne         004C6A60
 004C6A80    mov         bl,byte ptr [ebp-5]
 004C6A83    test        bl,bl
>004C6A85    jbe         004C6D06
 004C6A8B    mov         byte ptr [ebp-6],1
 004C6A8F    lea         edx,[ebp-407]
 004C6A95    mov         eax,edi
 004C6A97    call        004B696C
 004C6A9C    lea         edx,[ebp-507]
 004C6AA2    mov         eax,edi
 004C6AA4    call        004B696C
 004C6AA9    lea         edx,[ebp-607]
 004C6AAF    mov         eax,edi
 004C6AB1    call        004B696C
 004C6AB6    lea         edx,[ebp-707]
 004C6ABC    mov         eax,edi
 004C6ABE    call        004B696C
 004C6AC3    lea         edx,[ebp-807]
 004C6AC9    mov         eax,edi
 004C6ACB    call        004B696C
 004C6AD0    lea         edx,[ebp-907]
 004C6AD6    mov         eax,edi
 004C6AD8    call        004B696C
 004C6ADD    lea         edx,[ebp-0A07]
 004C6AE3    mov         eax,edi
 004C6AE5    call        004B696C
 004C6AEA    lea         edx,[ebp-0B07]
 004C6AF0    mov         eax,edi
 004C6AF2    call        004B696C
 004C6AF7    lea         eax,[ebp-0C18]
 004C6AFD    lea         edx,[ebp-907]
 004C6B03    call        @LStrFromString
 004C6B08    mov         eax,dword ptr [ebp-0C18]
 004C6B0E    call        StrToInt
 004C6B13    sub         eax,1
>004C6B16    jb          004C6B26
>004C6B18    je          004C6B81
 004C6B1A    dec         eax
>004C6B1B    je          004C6BD9
>004C6B21    jmp         004C6C2F
 004C6B26    lea         eax,[ebp-0C20]
 004C6B2C    lea         edx,[ebp-0B07]
 004C6B32    call        @LStrFromString
 004C6B37    mov         ecx,dword ptr [ebp-0C20]
 004C6B3D    lea         eax,[ebp-0C1C]
 004C6B43    mov         edx,4C6E14;'Contrôle en classe '
 004C6B48    call        @LStrCat3
 004C6B4D    mov         edx,dword ptr [ebp-0C1C]
 004C6B53    lea         eax,[ebp-307]
 004C6B59    mov         ecx,0FF
 004C6B5E    call        @LStrToString
 004C6B63    push        esi
 004C6B64    push        edi
 004C6B65    mov         esi,4C6E28
 004C6B6A    lea         edi,[ebp-907]
 004C6B70    mov         ecx,4
 004C6B75    rep movs    dword ptr [edi],dword ptr [esi]
 004C6B77    movs        word ptr [edi],word ptr [esi]
 004C6B79    movs        byte ptr [edi],byte ptr [esi]
 004C6B7A    pop         edi
 004C6B7B    pop         esi
>004C6B7C    jmp         004C6C2F
 004C6B81    lea         eax,[ebp-0C28]
 004C6B87    lea         edx,[ebp-0B07]
 004C6B8D    call        @LStrFromString
 004C6B92    mov         ecx,dword ptr [ebp-0C28]
 004C6B98    lea         eax,[ebp-0C24]
 004C6B9E    mov         edx,4C6E44;'Test en classe '
 004C6BA3    call        @LStrCat3
 004C6BA8    mov         edx,dword ptr [ebp-0C24]
 004C6BAE    lea         eax,[ebp-307]
 004C6BB4    mov         ecx,0FF
 004C6BB9    call        @LStrToString
 004C6BBE    push        esi
 004C6BBF    push        edi
 004C6BC0    mov         esi,4C6E54
 004C6BC5    lea         edi,[ebp-907]
 004C6BCB    mov         ecx,3
 004C6BD0    rep movs    dword ptr [edi],dword ptr [esi]
 004C6BD2    movs        word ptr [edi],word ptr [esi]
 004C6BD4    movs        byte ptr [edi],byte ptr [esi]
 004C6BD5    pop         edi
 004C6BD6    pop         esi
>004C6BD7    jmp         004C6C2F
 004C6BD9    lea         eax,[ebp-0C30]
 004C6BDF    lea         edx,[ebp-0B07]
 004C6BE5    call        @LStrFromString
 004C6BEA    mov         ecx,dword ptr [ebp-0C30]
 004C6BF0    lea         eax,[ebp-0C2C]
 004C6BF6    mov         edx,4C6E6C;'Devoir à la maison '
 004C6BFB    call        @LStrCat3
 004C6C00    mov         edx,dword ptr [ebp-0C2C]
 004C6C06    lea         eax,[ebp-307]
 004C6C0C    mov         ecx,0FF
 004C6C11    call        @LStrToString
 004C6C16    push        esi
 004C6C17    push        edi
 004C6C18    mov         esi,4C6E80
 004C6C1D    lea         edi,[ebp-907]
 004C6C23    mov         ecx,4
 004C6C28    rep movs    dword ptr [edi],dword ptr [esi]
 004C6C2A    movs        word ptr [edi],word ptr [esi]
 004C6C2C    movs        byte ptr [edi],byte ptr [esi]
 004C6C2D    pop         edi
 004C6C2E    pop         esi
 004C6C2F    lea         eax,[ebp-407]
 004C6C35    push        eax
 004C6C36    lea         eax,[ebp-507]
 004C6C3C    push        eax
 004C6C3D    lea         eax,[ebp-607]
 004C6C43    push        eax
 004C6C44    lea         eax,[ebp-707]
 004C6C4A    push        eax
 004C6C4B    lea         eax,[ebp-807]
 004C6C51    push        eax
 004C6C52    lea         eax,[ebp-907]
 004C6C58    push        eax
 004C6C59    push        0
 004C6C5B    lea         eax,[ebp-0C34]
 004C6C61    lea         edx,[ebp-0A07]
 004C6C67    call        @LStrFromString
 004C6C6C    mov         eax,dword ptr [ebp-0C34]
 004C6C72    call        StrToInt
 004C6C77    mov         edx,eax
 004C6C79    cmp         edx,0FF
>004C6C7F    jbe         004C6C86
 004C6C81    call        @BoundErr
 004C6C86    lea         ecx,[ebp-307]
 004C6C8C    mov         eax,esi
 004C6C8E    call        004BF7F0
 004C6C93    mov         al,byte ptr [ebp-3]
 004C6C96    test        al,al
>004C6C98    jbe         004C6CFB
 004C6C9A    mov         byte ptr [ebp-7],al
 004C6C9D    mov         byte ptr [ebp-4],1
 004C6CA1    lea         edx,[ebp-207]
 004C6CA7    mov         eax,edi
 004C6CA9    call        004B696C
 004C6CAE    lea         eax,[ebp-207]
 004C6CB4    mov         edx,4C6E94;'-1'
 004C6CB9    xor         ecx,ecx
 004C6CBB    mov         cl,byte ptr [eax]
 004C6CBD    inc         ecx
 004C6CBE    call        @AStrCmp
>004C6CC3    je          004C6CDE
 004C6CC5    mov         al,byte ptr [ebp-4]
 004C6CC8    push        eax
 004C6CC9    lea         eax,[ebp-207]
 004C6CCF    push        eax
 004C6CD0    mov         cl,byte ptr [ebp-6]
 004C6CD3    mov         dl,1
 004C6CD5    mov         eax,esi
 004C6CD7    call        004C1074
>004C6CDC    jmp         004C6CF3
 004C6CDE    mov         al,byte ptr [ebp-4]
 004C6CE1    push        eax
 004C6CE2    push        4C6E98
 004C6CE7    mov         cl,byte ptr [ebp-6]
 004C6CEA    mov         dl,1
 004C6CEC    mov         eax,esi
 004C6CEE    call        004C1074
 004C6CF3    inc         byte ptr [ebp-4]
 004C6CF6    dec         byte ptr [ebp-7]
>004C6CF9    jne         004C6CA1
 004C6CFB    inc         byte ptr [ebp-6]
 004C6CFE    dec         bl
>004C6D00    jne         004C6A8F
 004C6D06    call        0049856C
 004C6D0B    lea         ecx,[ebp-0C38]
 004C6D11    xor         edx,edx
 004C6D13    mov         ebx,dword ptr [eax]
 004C6D15    call        dword ptr [ebx+0C]
 004C6D18    mov         edx,dword ptr [ebp-0C38]
 004C6D1E    lea         eax,[esi+310];TFichierCdn.?f310:?
 004C6D24    mov         ecx,0FF
 004C6D29    call        @LStrToString
 004C6D2E    call        004B9E10
 004C6D33    mov         byte ptr [esi+910],al;TFichierCdn.?f910:pointer
 004C6D39    call        004BC298
 004C6D3E    mov         byte ptr [esi+911],al;TFichierCdn.?f911:pointer
 004C6D44    call        004BC30C
 004C6D49    mov         byte ptr [esi+912],al;TFichierCdn.?f912:pointer
 004C6D4F    mov         byte ptr [esi+8],1;TFichierCdn.?f8:byte
 004C6D53    xor         eax,eax
 004C6D55    pop         edx
 004C6D56    pop         ecx
 004C6D57    pop         ecx
 004C6D58    mov         dword ptr fs:[eax],edx
>004C6D5B    jmp         004C6D7C
>004C6D5D    jmp         @HandleOnException
 004C6D62    dd          1
 004C6D66    dd          004094F8;Exception
 004C6D6A    dd          004C6D6E
 004C6D6E    xor         ebx,ebx
 004C6D70    call        @DoneExcept
>004C6D75    jmp         004C6D7E
 004C6D77    call        @DoneExcept
 004C6D7C    mov         bl,1
 004C6D7E    xor         eax,eax
 004C6D80    pop         edx
 004C6D81    pop         ecx
 004C6D82    pop         ecx
 004C6D83    mov         dword ptr fs:[eax],edx
 004C6D86    push        4C6DA3
 004C6D8B    lea         eax,[ebp-0C38]
 004C6D91    mov         edx,0C
 004C6D96    call        @LStrArrayClr
 004C6D9B    ret
>004C6D9C    jmp         @HandleFinally
>004C6DA1    jmp         004C6D8B
 004C6DA3    mov         eax,ebx
 004C6DA5    pop         edi
 004C6DA6    pop         esi
 004C6DA7    pop         ebx
 004C6DA8    mov         esp,ebp
 004C6DAA    pop         ebp
 004C6DAB    ret*}
end;

//004C6E9C
procedure TFichierCdn.sub_004C6E9C(filename:TFileName; b:integer);
var
	buf : string;
	lvar_9:integer;
	NbrEleves:Integer;
	Periodes:Integer;
	lvar_C:Integer;
	lvar_D:Integer;
	lvar_E:Integer;
	lvar_110:PShortString;
	lvar_114:AnsiString;
	lvar_118:AnsiString;
	lvar_11C:AnsiString;
	lvar_120:AnsiString;
	lvar_124:AnsiString;
	lvar_128:AnsiString;
	lvar_12C:AnsiString;
	lvar_134:AnsiString;
	lvar_138:AnsiString;
	lvar_13C:AnsiString;
	lvar_140:AnsiString;
	lvar_144:AnsiString;
	lvar_148:AnsiString;
	lvar_14C:AnsiString;
	lvar_150:AnsiString;
	lvar_154:AnsiString;
	lvar_158:AnsiString;
	lvar_15C:AnsiString;
	lvar_160:AnsiString;
	lvar_164:AnsiString;
	lvar_168:AnsiString;
	lvar_16C:AnsiString;
	lvar_170:AnsiString;
	lvar_174:AnsiString;
	lvar_178:AnsiString;
	lvar_17C:AnsiString;
	lvar_180:AnsiString;
	lvar_184:AnsiString;
	lvar_188:AnsiString;
	lvar_18C:AnsiString;
	lvar_190:AnsiString;
	lvar_194:AnsiString;
	lvar_198:AnsiString;
	lvar_19C:AnsiString;
	lvar_1A0:AnsiString;
	lvar_1A4:AnsiString;
	lvar_1A8:AnsiString;
	lvar_1AC:AnsiString;
	lvar_1B0:AnsiString;
	lvar_1B4:AnsiString;
	lvar_1B8:AnsiString;
	lvar_1BC:AnsiString;
	lvar_1C0:AnsiString;
	lvar_1C4:AnsiString;
	lvar_1C8:AnsiString;
	lvar_1CC:AnsiString;
	lvar_1D0:AnsiString;
	lvar_1D4:AnsiString;
	lvar_1D8:AnsiString;
	StringList : TStringList;
	StringListTemp : TStringList;
	STemp:string;
	ITemp:integer;
	I:integer;
begin//0
  //004C6E9C
    try
      //004C6EDF
	  
      if (CarnetNotesVersion <> '2.0') then //004C6EF8
        if (CarnetNotesVersion <> '2.1') then//004C6F11
          if (CarnetNotesVersion <> '2.2') then//004C6F2A
            if (CarnetNotesVersion <> '2.3') then//004C6F43
              raise Exception.Create('Mauvais format');

      if (f210 = 'Carnet de notes') then//004C6F72
		f10 := 'Personnelle' //$4C8238
      else//004C6F82
        f10 := 'Etablissement'; //$4C8244;
    
      self.filename := filename;
      if (CarnetNotesVersion = '2.1') Or (CarnetNotesVersion = '2.2') Or (CarnetNotesVersion = '2.3') then
      begin//004C6FEF
        buf := FluxCdn.sub_004B696C;
        f310 := buf;  
      end;//3
      buf := FluxCdn.sub_004B696C;
      f410 := buf;
      
      buf := FluxCdn.sub_004B696C;
      f510 := buf;
      
      buf := FluxCdn.sub_004B696C;
      f610 := buf;

      buf := FluxCdn.sub_004B696C;
      f710 := buf;
      
      buf := FluxCdn.sub_004B696C;
      f810 := buf;
      
      buf := FluxCdn.sub_004B696C;
      f918.sub_004B6D38(buf); //periodes
 
      buf := FluxCdn.sub_004B696C;
      Periodes := StrToInt(buf);
      
      StringList := TStringList.Create;
      if (Periodes > 0) then
      begin//004C714E
        for lvar_C := 1 to Periodes do
        begin//004C7151
          buf := FluxCdn.sub_004B696C;
          StringList.Add(buf);
        end;//4
      end;//3
      f918.sub_004B6D84(StringList);
      StringList.Free;
       
      buf := FluxCdn.sub_004B696C;
      NbrEleves := StrToInt(buf);
        for lvar_C := 1 to NbrEleves do //004C71DF
        begin//004C71E2 //ajouter liste eleves
          buf := FluxCdn.sub_004B696C;
          f91C.sub_004B7010(buf);
        end;//4
	 //if(EBX <> 0) then Exit; //004C7221

	  
      f924.FixedCols := 0;
      f924.FixedRows := 0; 
      f924.RowCount := NbrEleves + $12;{+ gvar_00617902};
      f924.ColCount := 1;
      f920 := TStringList.Create;
      f940 := TStringList.Create;
	 
       //:= TStringList.Create
      lvar_9 := 0;
        for lvar_C := 1 to Periodes do //004C72AB     'nbre_org'//Periodes
        begin //004C72AE
          buf := FluxCdn.sub_004B696C;
          ITemp := StrToInt(buf);  //ITemp =EBX
          lvar_12C := IntToStr(ITemp);  //nbr_note
          f920.Add(lvar_12C);
          for lvar_D := 1 to ITemp do
          begin//004C7318
            f924.ColCount := f924.ColCount + 1;
            buf := FluxCdn.sub_004B696C;
            f924.Cells[lvar_9, 0]:= buf;
            
              for I{lvar_E} := 1 to NbrEleves do //004C7376  'nbr_eleve'
              begin//004C737B
                buf := FluxCdn.sub_004B696C;
                f924.Cells[lvar_9, I]:= buf;
              end;//7
            // autres informations   16 infos
            for I := 1 to 9 do   
            begin//004C73BC
              buf := FluxCdn.sub_004B696C;
              f924.Cells[lvar_9, NbrEleves + I ]:= buf;
            end;//6
            buf:=FluxCdn.sub_004B696C;
            f924.Cells[lvar_9, NbrEleves + $0B{gvar_006178FB}] := buf;
            buf := FluxCdn.sub_004B696C;
            f924.Cells[lvar_9, NbrEleves + $0C{gvar_006178FC}]:= buf;
            buf := FluxCdn.sub_004B696C;
            f924.Cells[lvar_9, NbrEleves + $0D{gvar_006178FD}] := buf;
            buf := FluxCdn.sub_004B696C;
            f924.Cells[lvar_9, NbrEleves + $0E{gvar_006178FE}]:= buf;
            buf := FluxCdn.sub_004B696C;
            f924.Cells[lvar_9, NbrEleves + $0F{gvar_006178FF}] := buf;
            buf := FluxCdn.sub_004B696C;
            f924.Cells[lvar_9, NbrEleves + $10{gvar_00617900}] := buf;
            if (CarnetNotesVersion = '2.3') then
            begin//004C75C9 
              buf := FluxCdn.sub_004B696C; 
              f924.Cells[lvar_9, NbrEleves + $11{gvar_00617901}]:= buf;
            end//6
            else
            begin //004C7610
              f924.Cells[lvar_9, NbrEleves + $11{gvar_00617901}]:= 'Ecrit';
            end;//6
            lvar_9 := lvar_9 + 1;
            for I := 1 to 14 do
            begin//004C763E
              f940.Add('1'); //$4C826C
            end;//6
          end;//5
        end;//4
      //end;//3
	  
      f944 := TStringList.Create;//004C7669
      
        for lvar_C := 1 to 2*Periodes do //004C769B
        begin//004C769E
          for lvar_D := 1 to  NbrEleves do//004C76A8
            f944.Add('1'); //$4C826C
        end;//4
      
      f928 := TStringList.Create;
      f92C := TStringList.Create;
      f930 := TStringList.Create;
      f938 := TStringList.Create;
      f934 := TStringList.Create;
      f93C := TStringList.Create;
	  
      if (CarnetNotesVersion = '2.0') then
      begin //004C776
        f93C.Add('classe');
		for lvar_C := 1 to Periodes do //004C7775
		begin//004C7778
			for lvar_D := 1 to NbrEleves do
			begin//004C7782
			  buf := FluxCdn.sub_004B696C;
			  f928.Add(buf);
			end;//6
		end;//5
        buf := FluxCdn.sub_004B696C;
        f310 := buf;
        buf := FluxCdn.sub_004B696C;
        f910 := StrToInt(buf);
        for lvar_C := 1 to Periodes do //004C782F
        begin//5
            for lvar_D := 1 to NbrEleves do //004C7832
            begin //004C783C
              buf := FluxCdn.sub_004B696C;
              f92C.Add(buf);
            end;//6
        end;  
        for lvar_C := 1 to NbrEleves do //004C7883
        begin//004C7886
            f930.Add('');
            f938.Add('');
            f934.Add('1'); 
        end;//5 
      end//3
      else if (CarnetNotesVersion = '2.1') then
      begin//004C78DB
        f93C.Add('classe'); //$4C8278;
          for lvar_C := 1 to  Periodes do //004C78F9
          begin//5
            for lvar_D := 1 to NbrEleves do //004C78FC
            begin //004C7906
              buf := FluxCdn.sub_004B696C;
              f928.Add(buf);
              buf := FluxCdn.sub_004B696C;
              f92C.Add(buf);
            end;//6
          end;//5
          for lvar_C := 1 to NbrEleves do //004C7983
          begin//004C7986
            f930.Add('');
            f938.Add('');
            f934.Add('1'); //$4C826C;
          end;//5
        buf := FluxCdn.sub_004B696C;
        f910 := StrToInt(buf);
        buf := FluxCdn.sub_004B696C;
        f911 := StrToInt(buf);
        buf := FluxCdn.sub_004B696C;
        f912 := StrToInt(buf)
      end//3
      else if (CarnetNotesVersion = '2.2') then
      begin//004C7AA1
	      
          for lvar_C := 1 to Periodes do //004C7AA8
          begin//5
            for lvar_D := 1 to NbrEleves do //004C7AAB
            begin//004C7AB5
              buf := FluxCdn.sub_004B696C;
              f928.Add(buf);
            end;//6
          end;//5
		
        buf := FluxCdn.sub_004B696C;
        ITemp := StrToInt(buf);
          for lvar_C := 1 to ITemp do //004C7B32
          begin//004C7B35
            buf := FluxCdn.sub_004B696C;
            f93C.Add(buf);
          end;//5
        
        buf := FluxCdn.sub_004B696C;
        //sub_004C9AA0(f914, buf);
        buf := FluxCdn.sub_004B696C;
        ITemp := StrToInt(buf);
        
        StringListTemp := TStringList.Create;
		
          for lvar_C := 1 to ITemp do //004C7BF4
          begin//004C7BF7
            buf := FluxCdn.sub_004B696C;
            StringListTemp.Add(buf);
          end;//5
       

        f914.sub_004C9A84(StringListTemp);
        
        StringListTemp.Free;

          for lvar_C := 1 to Periodes do //004C7C49
          begin//5
            for lvar_D := 1 to NbrEleves do //004C7C4C
            begin//004C7C56
              for lvar_E := 1 to ITemp do
              begin//004C7C5D
                buf := FluxCdn.sub_004B696C;
                f92C.Add(buf);
              end;//7
            end;//6
          end;//5

          for lvar_C := 1 to ITemp do //004C7CAD
          begin//004C7CB0
            buf := FluxCdn.sub_004B696C;
            f930.Add(buf);
            buf := FluxCdn.sub_004B696C;
            f934.Add(buf);
            f938.Add('');
          end;//5
		//bug here
        {buf := FluxCdn.sub_004B696C;
        f910 := StrToInt(buf);
        buf := FluxCdn.sub_004B696C;
        f911 := StrToInt(buf);
        buf := FluxCdn.sub_004B696C;
        f912 := StrToInt(buf);}
      end//3
      else if (CarnetNotesVersion = '2.3') then
      begin//004C7E18
          for lvar_C := 1 to Periodes do //004C7E1F
          begin//5
            for lvar_D := 1 to  NbrEleves do //004C7E22
            begin//004C7E2C
              buf := FluxCdn.sub_004B696C;
              f928.Add(buf);
            end;//6
          end;//5
        
        buf := FluxCdn.sub_004B696C;
        ITemp := StrToInt(buf);

          for lvar_C := 1 to ITemp do //004C7EA9
          begin//004C7EAC
            buf := FluxCdn.sub_004B696C;
            f93C.Add(buf);
          end;//5
        
        buf := FluxCdn.sub_004B696C;
        //sub_004C9AA0(f914, buf);
        buf := FluxCdn.sub_004B696C;
        ITemp := StrToInt(buf);
        StringListTemp := TStringList.Create;

        for I := 1 to ITemp do //004C7F6B
        begin//004C7F6E
            buf := FluxCdn.sub_004B696C;
            StringListTemp.Add(buf);
        end;//5
        
        //sub_004C9A84(f914, ESI);
        StringListTemp.Free;
          for lvar_C := 1 to Periodes do //004C7FC0
          begin//004C7FC3
            for lvar_D := 1 to NbrEleves do
            begin//004C7FCD
              for lvar_E := 1 to ITemp do
              begin//004C7FD4
                buf := FluxCdn.sub_004B696C;
                f92C.Add(buf);
              end;//7
            end;//6
          end;//5
        

          for I := 1 to  NbrEleves do //004C8024
          begin//004C8027
            buf := FluxCdn.sub_004B696C;
            f930.Add(buf); //date de naissance
            buf := FluxCdn.sub_004B696C;
            f934.Add(buf);
            buf := FluxCdn.sub_004B696C;
            f938.Add(buf);
          end;//5
        
        buf := FluxCdn.sub_004B696C;
        f910 := StrToInt(buf);
        buf := FluxCdn.sub_004B696C;
        f911 := StrToInt(buf);
        buf := FluxCdn.sub_004B696C;
        f912 := StrToInt(buf);
		
      end;//3
      f8 := false;
    except//2
      on E:Exception do
      begin//004C81BA    
        f948 := false;		
      end;//3
    end;//2

end;

//004C8280
procedure TFichierCdn.sub_004C8280{(a:pointer; b:pointer; c:pointer; d:pointer)};
var
  b:integer; //paramettres 
  lvar_4:TFichierCdn;
  lvar_8:pointer;
  buf:string;
  EFileName,Msg : string;
begin//0
  
  b:=0;
  //004C8280
  //EBX := b;
  //lvar_8 := FileName;
  //lvar_4 := Self;
  //004C82C4
    f910 := sub_004B9E10;
    f911 := sub_004BC298;
    f912 := sub_004BC30C;
    f914 := TTypeBulletins.Create;
    f918 := TPeriodes.Create;
    f91C := TEleves.Create;
    f948 := True;
    f949 := 0;
    self.FileName := FileName;
    f924 := TStringGrid.Create(Nil);
    if (FileName <> '') then
    begin//2
      //004C8370..004C837E
	  try
        FluxCdn  := TFluxCdn.Create(FileName, fmOpenRead);
        buf:=FluxCdn.sub_004B696C();
		f210 := buf;
        if (f210 <> 'Carnet de notes') then
        begin//004C83D0
          if (f210 <> 'Carnet de Notes') then
          begin//004C83E9
            raise Exception.Create('Ce fichier n''est pas un fichier Carnet de Notes');
          end;//5
        end;//4
        buf:=FluxCdn.sub_004B696C();
        CarnetNotesVersion := buf; //f110
        if (CarnetNotesVersion <> '2.0') and (CarnetNotesVersion <> '2.1') and (CarnetNotesVersion <> '2.2') and (CarnetNotesVersion <> '2.3') then //004C8440..004C845D..004C847A..004C8497
		begin//
			if (not(sub_004C66A8(FluxCdn,CarnetNotesVersion))) then
			begin//004C84B2
			  raise Exception.Create('Mauvaise CarnetNotesVersion de fichier.');
			end//8
			else
			begin//004C84CD
			  if (b = 0) then
			  begin//004C84D1
				EFileName := ExtractFileName(FileName);
				Msg := 'Le fichier "' + EFileName + '" est un fichier d''une ancienne CarnetNotesVersion de Carnet de Notes.' + #13 + #10 + #13 + #10 + 'Son importation dans ' + 'Carnet de Notes CarnetNotesVersion Personnelle' + ' a été réussie.';
				MessageBoxA(0, PChar(Msg), 'Carnet de Notes CarnetNotesVersion Personnelle', $40{64});
			  end;//9
			  f949 := 1;
			end;//8
		end//7
        else
        begin//4
          sub_004C6E9C(FileName, {c}0);
        end;//4
        if (sub_004C6654) then
        begin//004C8562
          if ({d = 0}false) then
          begin//004C8568
            EFileName := ExtractFileName(FileName);
            Msg := 'Le fichier "' + EFileName + '" a été créé avec la CarnetNotesVersion Etablissement de Carnet de Notes.' + #13 + #10 + #13 + #10 + 'Certaines fonctionnalités de ' + 'Carnet de Notes CarnetNotesVersion Personnelle' + ' seront désactivées pour ce fichier.';
            MessageBoxA(0, PChar(Msg), 'Carnet de Notes CarnetNotesVersion Personnelle', $40{64});
          end;//5
        end;//4
        FluxCdn.Free;
      except//3
        on E:Exception do
        begin//004C85F9
          FluxCdn.Free;
          f948 := false;
          Exit;
        end;//4
      end;//3
    end
	else
    sub_004C8880;

{*
 004C8280    push        ebp
 004C8281    mov         ebp,esp
 004C8283    add         esp,0FFFFFEE8
 004C8289    push        ebx
 004C828A    push        esi
 004C828B    push        edi
 004C828C    xor         ebx,ebx
 004C828E    mov         dword ptr [ebp-114],ebx
 004C8294    mov         dword ptr [ebp-118],ebx
 004C829A    mov         dword ptr [ebp-10C],ebx
 004C82A0    mov         dword ptr [ebp-110],ebx
 004C82A6    mov         ebx,ecx
 004C82A8    mov         dword ptr [ebp-8],edx
 004C82AB    mov         dword ptr [ebp-4],eax
 004C82AE    mov         eax,dword ptr [ebp-8]
 004C82B1    call        @LStrAddRef
 004C82B6    xor         eax,eax
 004C82B8    push        ebp
 004C82B9    push        4C8643
 004C82BE    push        dword ptr fs:[eax]
 004C82C1    mov         dword ptr fs:[eax],esp
 004C82C4    call        004B9E10
 004C82C9    mov         edx,dword ptr [ebp-4]
 004C82CC    mov         byte ptr [edx+910],al;TFichierCdn.?f910:pointer
 004C82D2    call        004BC298
 004C82D7    mov         edx,dword ptr [ebp-4]
 004C82DA    mov         byte ptr [edx+911],al;TFichierCdn.?f911:pointer
 004C82E0    call        004BC30C
 004C82E5    mov         edx,dword ptr [ebp-4]
 004C82E8    mov         byte ptr [edx+912],al;TFichierCdn.?f912:pointer
 004C82EE    mov         dl,1
 004C82F0    mov         eax,[004C9948];TTypeBulletins
 004C82F5    call        TTypeBulletins.Create;TTypeBulletins.Create
 004C82FA    mov         edx,dword ptr [ebp-4]
 004C82FD    mov         dword ptr [edx+914],eax;TFichierCdn.?f914:TTypeBulletins
 004C8303    mov         dl,1
 004C8305    mov         eax,[004B6B1C];TPeriodes
 004C830A    call        TPeriodes.Create;TPeriodes.Create
 004C830F    mov         edx,dword ptr [ebp-4]
 004C8312    mov         dword ptr [edx+918],eax;TFichierCdn.?f918:TPeriodes
 004C8318    mov         dl,1
 004C831A    mov         eax,[004B6F04];TEleves
 004C831F    call        TEleves.Create;TEleves.Create
 004C8324    mov         edx,dword ptr [ebp-4]
 004C8327    mov         dword ptr [edx+91C],eax;TFichierCdn.?f91C:TEleves
 004C832D    mov         eax,dword ptr [ebp-4]
 004C8330    mov         byte ptr [eax+948],1;TFichierCdn.?f948:byte
 004C8337    mov         eax,dword ptr [ebp-4]
 004C833A    mov         byte ptr [eax+949],0;TFichierCdn.?f949:byte
 004C8341    mov         eax,dword ptr [ebp-4]
 004C8344    add         eax,0C;TFichierCdn.?fC:TFileName
 004C8347    mov         edx,dword ptr [ebp-8]
 004C834A    call        @LStrAsg
 004C834F    xor         ecx,ecx
 004C8351    mov         dl,1
 004C8353    mov         eax,[0046937C];TStringGrid
 004C8358    call        TStringGrid.Create;TStringGrid.Create
 004C835D    mov         edx,dword ptr [ebp-4]
 004C8360    mov         dword ptr [edx+924],eax;TFichierCdn.?f924:TStringGrid
 004C8366    cmp         dword ptr [ebp-8],0
>004C836A    je          004C8615
 004C8370    xor         eax,eax
 004C8372    push        ebp
 004C8373    push        4C85E8
 004C8378    push        dword ptr fs:[eax]
 004C837B    mov         dword ptr fs:[eax],esp
 004C837E    push        0
 004C8380    mov         ecx,dword ptr [ebp-8]
 004C8383    mov         dl,1
 004C8385    mov         eax,[004B6904];TFluxCdn
 004C838A    call        TFileStream.Create;TFluxCdn.Create
 004C838F    mov         esi,eax
 004C8391    mov         eax,dword ptr [ebp-4]
 004C8394    mov         dword ptr [eax+4],esi;TFichierCdn.?f4:TFluxCdn
 004C8397    lea         edx,[ebp-108]
 004C839D    mov         eax,esi
 004C839F    call        004B696C
 004C83A4    lea         edx,[ebp-108]
 004C83AA    mov         eax,dword ptr [ebp-4]
 004C83AD    add         eax,210;TFichierCdn.?f210:?
 004C83B2    call        @PStrCpy
 004C83B7    mov         eax,dword ptr [ebp-4]
 004C83BA    add         eax,210;TFichierCdn.?f210:?
 004C83BF    mov         edx,4C8654;'Carnet de notes'
 004C83C4    xor         ecx,ecx
 004C83C6    mov         cl,byte ptr [eax]
 004C83C8    inc         ecx
 004C83C9    call        @AStrCmp
>004C83CE    je          004C83FF
 004C83D0    mov         eax,dword ptr [ebp-4]
 004C83D3    add         eax,210;TFichierCdn.?f210:?
 004C83D8    mov         edx,4C8664;'Carnet de Notes'
 004C83DD    xor         ecx,ecx
 004C83DF    mov         cl,byte ptr [eax]
 004C83E1    inc         ecx
 004C83E2    call        @AStrCmp
>004C83E7    je          004C83FF
 004C83E9    mov         ecx,4C867C;'Ce fichier n'est pas un fichier Carnet de Notes'
 004C83EE    mov         dl,1
 004C83F0    mov         eax,[004094F8];Exception
 004C83F5    call        Exception.Create;Exception.Create
 004C83FA    call        @RaiseExcept
 004C83FF    lea         edx,[ebp-108]
 004C8405    mov         eax,dword ptr [ebp-4]
 004C8408    mov         eax,dword ptr [eax+4];TFichierCdn.?f4:TFluxCdn
 004C840B    call        004B696C
 004C8410    lea         edx,[ebp-108]
 004C8416    mov         eax,dword ptr [ebp-4]
 004C8419    add         eax,110;TFichierCdn.?f110:?
 004C841E    call        @PStrCpy
 004C8423    mov         eax,dword ptr [ebp-4]
 004C8426    add         eax,110;TFichierCdn.?f110:?
 004C842B    mov         edx,4C86AC;'2.0'
 004C8430    xor         ecx,ecx
 004C8432    mov         cl,byte ptr [eax]
 004C8434    inc         ecx
 004C8435    call        @AStrCmp
>004C843A    je          004C8548
 004C8440    mov         eax,dword ptr [ebp-4]
 004C8443    add         eax,110;TFichierCdn.?f110:?
 004C8448    mov         edx,4C86B0;'2.1'
 004C844D    xor         ecx,ecx
 004C844F    mov         cl,byte ptr [eax]
 004C8451    inc         ecx
 004C8452    call        @AStrCmp
>004C8457    je          004C8548
 004C845D    mov         eax,dword ptr [ebp-4]
 004C8460    add         eax,110;TFichierCdn.?f110:?
 004C8465    mov         edx,4C86B4;'2.2'
 004C846A    xor         ecx,ecx
 004C846C    mov         cl,byte ptr [eax]
 004C846E    inc         ecx
 004C846F    call        @AStrCmp
>004C8474    je          004C8548
 004C847A    mov         eax,dword ptr [ebp-4]
 004C847D    add         eax,110;TFichierCdn.?f110:?
 004C8482    mov         edx,4C86B8;'2.3'
 004C8487    xor         ecx,ecx
 004C8489    mov         cl,byte ptr [eax]
 004C848B    inc         ecx
 004C848C    call        @AStrCmp
>004C8491    je          004C8548
 004C8497    mov         eax,dword ptr [ebp-4]
 004C849A    lea         ecx,[eax+110];TFichierCdn.?f110:?
 004C84A0    mov         eax,dword ptr [ebp-4]
 004C84A3    mov         edx,dword ptr [eax+4];TFichierCdn.?f4:TFluxCdn
 004C84A6    mov         eax,dword ptr [ebp-4]
 004C84A9    call        TFichierCdn.sub_004C66A8
 004C84AE    test        al,al
>004C84B0    jne         004C84CD
 004C84B2    mov         ecx,4C86C4;'Mauvaise CarnetNotesVersion de fichier.'
 004C84B7    mov         dl,1
 004C84B9    mov         eax,[004094F8];Exception
 004C84BE    call        Exception.Create;Exception.Create
 004C84C3    call        @RaiseExcept
>004C84C8    jmp         004C8556
 004C84CD    test        bl,bl
>004C84CF    jne         004C853C
 004C84D1    push        40
 004C84D3    push        4C86E4
 004C84D8    push        4C8710;'Le fichier "'
 004C84DD    lea         edx,[ebp-110]
 004C84E3    mov         eax,dword ptr [ebp-8]
 004C84E6    call        ExtractFileName
 004C84EB    push        dword ptr [ebp-110]
 004C84F1    push        4C8728;'" est un fichier d'une ancienne CarnetNotesVersion de Carnet de Notes.'
 004C84F6    push        4C876C;#13
 004C84FB    push        4C8778;#10
 004C8500    push        4C876C;#13
 004C8505    push        4C8778;#10
 004C850A    push        4C8784;'Son importation dans '
 004C850F    push        4C87A4;'Carnet de Notes CarnetNotesVersion Personnelle'
 004C8514    push        4C87D0;' a été réussie.'
 004C8519    lea         eax,[ebp-10C]
 004C851F    mov         edx,0A
 004C8524    call        @LStrCatN
 004C8529    mov         eax,dword ptr [ebp-10C]
 004C852F    call        @LStrToPChar
 004C8534    push        eax
 004C8535    push        0
 004C8537    call        user32.MessageBoxA
 004C853C    mov         eax,dword ptr [ebp-4]
 004C853F    mov         byte ptr [eax+949],1;TFichierCdn.?f949:byte
>004C8546    jmp         004C8556
 004C8548    mov         cl,byte ptr [ebp+0C]
 004C854B    mov         edx,dword ptr [ebp-8]
 004C854E    mov         eax,dword ptr [ebp-4]
 004C8551    call        TFichierCdn.sub_004C6E9C
 004C8556    mov         eax,dword ptr [ebp-4]
 004C8559    call        TFichierCdn.sub_004C6654
 004C855E    test        al,al
>004C8560    je          004C85D3
 004C8562    cmp         byte ptr [ebp+8],0
>004C8566    jne         004C85D3
 004C8568    push        40
 004C856A    push        4C86E4
 004C856F    push        4C8710;'Le fichier "'
 004C8574    lea         edx,[ebp-118]
 004C857A    mov         eax,dword ptr [ebp-8]
 004C857D    call        ExtractFileName
 004C8582    push        dword ptr [ebp-118]
 004C8588    push        4C87E8;'" a été créé avec la CarnetNotesVersion Etablissement de Carnet de Notes.'
 004C858D    push        4C876C;#13
 004C8592    push        4C8778;#10
 004C8597    push        4C876C;#13
 004C859C    push        4C8778;#10
 004C85A1    push        4C8830;'Certaines fonctionnalités de '
 004C85A6    push        4C87A4;'Carnet de Notes CarnetNotesVersion Personnelle'
 004C85AB    push        4C8858;' seront désactivées pour ce fichier.'
 004C85B0    lea         eax,[ebp-114]
 004C85B6    mov         edx,0A
 004C85BB    call        @LStrCatN
 004C85C0    mov         eax,dword ptr [ebp-114]
 004C85C6    call        @LStrToPChar
 004C85CB    push        eax
 004C85CC    push        0
 004C85CE    call        user32.MessageBoxA
 004C85D3    mov         eax,dword ptr [ebp-4]
 004C85D6    mov         eax,dword ptr [eax+4];TFichierCdn.?f4:TFluxCdn
 004C85D9    call        TObject.Free
 004C85DE    xor         eax,eax
 004C85E0    pop         edx
 004C85E1    pop         ecx
 004C85E2    pop         ecx
 004C85E3    mov         dword ptr fs:[eax],edx
>004C85E6    jmp         004C861D
>004C85E8    jmp         @HandleOnException
 004C85ED    dd          1
 004C85F1    dd          004094F8;Exception
 004C85F5    dd          004C85F9
 004C85F9    mov         eax,dword ptr [ebp-4]
 004C85FC    mov         eax,dword ptr [eax+4];TFichierCdn.?f4:TFluxCdn
 004C85FF    call        TObject.Free
 004C8604    mov         eax,dword ptr [ebp-4]
 004C8607    mov         byte ptr [eax+948],0;TFichierCdn.?f948:byte
 004C860E    call        @DoneExcept
>004C8613    jmp         004C861D
 004C8615    mov         eax,dword ptr [ebp-4]
 004C8618    call        004C8880
 004C861D    xor         eax,eax
 004C861F    pop         edx
 004C8620    pop         ecx
 004C8621    pop         ecx
 004C8622    mov         dword ptr fs:[eax],edx
 004C8625    push        4C864A
 004C862A    lea         eax,[ebp-118]
 004C8630    mov         edx,4
 004C8635    call        @LStrArrayClr
 004C863A    lea         eax,[ebp-8]
 004C863D    call        @LStrClr
 004C8642    ret
>004C8643    jmp         @HandleFinally
>004C8648    jmp         004C862A
 004C864A    pop         edi
 004C864B    pop         esi
 004C864C    pop         ebx
 004C864D    mov         esp,ebp
 004C864F    pop         ebp
 004C8650    ret         8
*}
end;

//004C8880
procedure TFichierCdn.sub_004C8880;
var
 lvar_2, lvar_4, lvar_5:word;
 I: integer;
begin//0
  //004C8880..004C889C
    f10 := 'Personnelle';
    f410 := 'Nouvelle classe';
    f510 := '';
    f610 := '';
    DecodeDate(Now,lvar_2, lvar_4, lvar_5);
    f710 := IntToStr(lvar_2) + '/' + IntToStr(lvar_2+1);
    f810 := '';
    f310 := '';
    f910 := sub_004B9E10;
    f911 := sub_004BC298;
    f912 := sub_004BC30C;
    FileName := f410;
    f920 := TStringList.Create;
    for I := 1 to 52 do//004C8982
      f920.Add('0');

    f928 := TStringList.Create;
    f92C := TStringList.Create;
    f930 := TStringList.Create;
    f938 := TStringList.Create;
    f934 := TStringList.Create;
    f93C := TStringList.Create;
    f93C.Add('classe');
    f940 := TStringList.Create;
    f944 := TStringList.Create;
    f924.FixedCols := 0;
    f924.FixedRows := 0;
    f924.RowCount := $12;{gvar_00617902};
    f924.ColCount := 1;
    f8 := true;
end;//0


//004C8AD8
function TFichierCdn.sub_004C8AD8:dword;
begin//0
  //004C8AD8
  result := f911;
end;//0


//004C8AE0
function TFichierCdn.sub_004C8AE0:dword;
begin//0
  //004C8AE0
  result := f912;
end;//0


//004C8AE8
function TFichierCdn.sub_004C8AE8:dword;
begin//0
  //004C8AE8
  result := f914.sub_004C9B8C;
end;//0


//004C8AF4
procedure TFichierCdn.sub_004C8AF4(a:dword; var b:String);
begin//0
  //004C8AF4

  f914.sub_004C9AEC(a, b);
   
end;//0


//004C8B54
procedure TFichierCdn.sub_004C8B54(var a:string);
begin//0
  //004C8B54
   f914.sub_004C9BAC(a);
end;//0


//004C8BAC
{*//function sub_004C8BAC(?:TFichierCdn):?;
//begin
 004C8BAC    mov         eax,dword ptr [eax+914]
 004C8BB2    call        004C9BA8
 004C8BB7    ret
end;*}

//004C8BB8

procedure TFichierCdn.sub_004C8BB8(a:dword; var b:string);
begin//0
  //004C8BB8
    b := f930[a - 1]; //date de naissance
end;

//004C8C2C
{*//procedure sub_004C8C2C(?:dword; ?:?; ?:PShortString);
//begin
 004C8C2C    push        ebp
 004C8C2D    mov         ebp,esp
 004C8C2F    add         esp,0FFFFFEFC
 004C8C35    push        ebx
 004C8C36    push        esi
 004C8C37    push        edi
 004C8C38    xor         ebx,ebx
 004C8C3A    mov         dword ptr [ebp-104],ebx
 004C8C40    mov         esi,ecx
 004C8C42    lea         edi,[ebp-100]
 004C8C48    xor         ecx,ecx
 004C8C4A    mov         cl,byte ptr [esi]
 004C8C4C    inc         ecx
 004C8C4D    rep movs    byte ptr [edi],byte ptr [esi]
 004C8C4F    mov         ebx,edx
 004C8C51    mov         esi,eax
 004C8C53    xor         eax,eax
 004C8C55    push        ebp
 004C8C56    push        4C8CAA
 004C8C5B    push        dword ptr fs:[eax]
 004C8C5E    mov         dword ptr fs:[eax],esp
 004C8C61    lea         eax,[ebp-104]
 004C8C67    lea         edx,[ebp-100]
 004C8C6D    call        @LStrFromString
 004C8C72    mov         ecx,dword ptr [ebp-104]
 004C8C78    xor         edx,edx
 004C8C7A    mov         dl,bl
 004C8C7C    sub         edx,1
>004C8C7F    jno         004C8C86
 004C8C81    call        @IntOver
 004C8C86    mov         eax,dword ptr [esi+930]
 004C8C8C    mov         ebx,dword ptr [eax]
 004C8C8E    call        dword ptr [ebx+20]
 004C8C91    xor         eax,eax
 004C8C93    pop         edx
 004C8C94    pop         ecx
 004C8C95    pop         ecx
 004C8C96    mov         dword ptr fs:[eax],edx
 004C8C99    push        4C8CB1
 004C8C9E    lea         eax,[ebp-104]
 004C8CA4    call        @LStrClr
 004C8CA9    ret
>004C8CAA    jmp         @HandleFinally
>004C8CAF    jmp         004C8C9E
 004C8CB1    pop         edi
 004C8CB2    pop         esi
 004C8CB3    pop         ebx
 004C8CB4    mov         esp,ebp
 004C8CB6    pop         ebp
 004C8CB7    ret
end;*}

//004C8CB8
procedure TFichierCdn.sub_004C8CB8(a:dword; var b:String);
begin//0
  //004C8CB8..004C8CD9
    try
      //004C8CE7
      b := IntToStr(StrToInt(f934[a - 1]));
    except//004C8D32
      b :='';// $3101{12545};
    end;//2
end;//0


//004C8D68
function TFichierCdn.sub_004C8D68:dword;
begin//0
  //004C8D68
  result := f93C.Count;
end;//0


//004C8D84
procedure TFichierCdn.sub_004C8D84(a:dword; var b:String);
begin//0
  //004C8D84..004C8DA6
    b := f93C[a - 1];
end;//0


//004C8DF8
{*//procedure sub_004C8DF8(?:TFichierCdn; ?:?; ?:?);
//begin
 004C8DF8    push        ebx
 004C8DF9    push        esi
 004C8DFA    mov         esi,eax
 004C8DFC    test        cl,cl
>004C8DFE    je          004C8E23
 004C8E00    xor         eax,eax
 004C8E02    mov         al,dl
 004C8E04    sub         eax,1
>004C8E07    jno         004C8E0E
 004C8E09    call        @IntOver
 004C8E0E    mov         edx,eax
 004C8E10    mov         ecx,4C8E4C;'R'
 004C8E15    mov         eax,dword ptr [esi+938]
 004C8E1B    mov         ebx,dword ptr [eax]
 004C8E1D    call        dword ptr [ebx+20]
 004C8E20    pop         esi
 004C8E21    pop         ebx
 004C8E22    ret
 004C8E23    xor         eax,eax
 004C8E25    mov         al,dl
 004C8E27    sub         eax,1
>004C8E2A    jno         004C8E31
 004C8E2C    call        @IntOver
 004C8E31    mov         edx,eax
 004C8E33    xor         ecx,ecx
 004C8E35    mov         eax,dword ptr [esi+938]
 004C8E3B    mov         ebx,dword ptr [eax]
 004C8E3D    call        dword ptr [ebx+20]
 004C8E40    pop         esi
 004C8E41    pop         ebx
 004C8E42    ret
end;*}

//004C8E50
function TFichierCdn.sub_004C8E50( b:dword):boolean; //redoublant
begin
  //004C8E50
    result := (f938[b - 1] = 'R');
end;

//004C8EC8
{*//function sub_004C8EC8(?:dword; ?:?; ?:?; ?:?):?;
//begin
 004C8EC8    push        ebp
 004C8EC9    mov         ebp,esp
 004C8ECB    push        ecx
 004C8ECC    push        ebx
 004C8ECD    push        esi
 004C8ECE    mov         byte ptr [ebp-1],cl
 004C8ED1    mov         ebx,edx
 004C8ED3    mov         esi,eax
 004C8ED5    cmp         byte ptr [ebp+8],0
>004C8ED9    je          004C8F19
 004C8EDB    mov         eax,esi
 004C8EDD    call        TFichierCdn.sub_004BEA58
 004C8EE2    and         eax,0FF
 004C8EE7    mov         edx,dword ptr ds:[6162F0];^gvar_00617901
 004C8EED    movzx       edx,byte ptr [edx]
 004C8EF0    add         eax,edx
>004C8EF2    jno         004C8EF9
 004C8EF4    call        @IntOver
 004C8EF9    cmp         eax,0FF
>004C8EFE    jbe         004C8F05
 004C8F00    call        @BoundErr
 004C8F05    push        eax
 004C8F06    push        4C8F5C
 004C8F0B    mov         cl,byte ptr [ebp-1]
 004C8F0E    mov         edx,ebx
 004C8F10    mov         eax,esi
 004C8F12    call        004C0C88
>004C8F17    jmp         004C8F55
 004C8F19    mov         eax,esi
 004C8F1B    call        TFichierCdn.sub_004BEA58
 004C8F20    and         eax,0FF
 004C8F25    mov         edx,dword ptr ds:[6162F0];^gvar_00617901
 004C8F2B    movzx       edx,byte ptr [edx]
 004C8F2E    add         eax,edx
>004C8F30    jno         004C8F37
 004C8F32    call        @IntOver
 004C8F37    cmp         eax,0FF
>004C8F3C    jbe         004C8F43
 004C8F3E    call        @BoundErr
 004C8F43    push        eax
 004C8F44    push        4C8F64
 004C8F49    mov         cl,byte ptr [ebp-1]
 004C8F4C    mov         edx,ebx
 004C8F4E    mov         eax,esi
 004C8F50    call        004C0C88
 004C8F55    pop         esi
 004C8F56    pop         ebx
 004C8F57    pop         ecx
 004C8F58    pop         ebp
 004C8F59    ret         4
end;*}

//004C8F6C
{*//procedure sub_004C8F6C(?:dword; ?:?; ?:?; ?:?; ?:?);
//begin
 004C8F6C    push        ebp
 004C8F6D    mov         ebp,esp
 004C8F6F    add         esp,0FFFFFEFC
 004C8F75    push        ebx
 004C8F76    push        esi
 004C8F77    mov         byte ptr [ebp-1],cl
 004C8F7A    mov         ebx,edx
 004C8F7C    mov         esi,eax
 004C8F7E    mov         eax,dword ptr [ebp+8]
 004C8F81    push        eax
 004C8F82    lea         eax,[ebp-104]
 004C8F88    push        eax
 004C8F89    mov         cl,byte ptr [ebp-1]
 004C8F8C    mov         edx,ebx
 004C8F8E    mov         eax,esi
 004C8F90    call        004C8FB0
 004C8F95    lea         edx,[ebp-104]
 004C8F9B    mov         cl,byte ptr [ebp+0C]
 004C8F9E    mov         eax,esi
 004C8FA0    call        004C2410
 004C8FA5    pop         esi
 004C8FA6    pop         ebx
 004C8FA7    mov         esp,ebp
 004C8FA9    pop         ebp
 004C8FAA    ret         8
end;*}

//004C8FB0
{*//procedure sub_004C8FB0(?:?; ?:?; ?:?; ?:?);
//begin
 004C8FB0    push        ebp
 004C8FB1    mov         ebp,esp
 004C8FB3    add         esp,0FFFFFDA0
 004C8FB9    push        ebx
 004C8FBA    push        esi
 004C8FBB    push        edi
 004C8FBC    xor         ebx,ebx
 004C8FBE    mov         dword ptr [ebp-25C],ebx
 004C8FC4    mov         dword ptr [ebp-258],ebx
 004C8FCA    mov         dword ptr [ebp-254],ebx
 004C8FD0    mov         dword ptr [ebp-250],ebx
 004C8FD6    mov         byte ptr [ebp-6],cl
 004C8FD9    mov         byte ptr [ebp-5],dl
 004C8FDC    mov         dword ptr [ebp-4],eax
 004C8FDF    xor         eax,eax
 004C8FE1    push        ebp
 004C8FE2    push        4C925D
 004C8FE7    push        dword ptr fs:[eax]
 004C8FEA    mov         dword ptr fs:[eax],esp
 004C8FED    xor         eax,eax
 004C8FEF    mov         dword ptr [ebp-38],eax
 004C8FF2    mov         dword ptr [ebp-34],eax
 004C8FF5    mov         word ptr [ebp-30],ax
 004C8FF9    xor         eax,eax
 004C8FFB    mov         dword ptr [ebp-48],eax
 004C8FFE    mov         dword ptr [ebp-44],eax
 004C9001    mov         word ptr [ebp-40],ax
 004C9005    mov         dl,byte ptr [ebp-5]
 004C9008    mov         eax,dword ptr [ebp-4]
 004C900B    call        004BEAD0
 004C9010    and         eax,0FF
 004C9015    test        eax,eax
>004C9017    jle         004C91DC
 004C901D    mov         dword ptr [ebp-4C],eax
 004C9020    mov         dword ptr [ebp-0C],1
 004C9027    lea         eax,[ebp-14C]
 004C902D    push        eax
 004C902E    mov         ebx,dword ptr [ebp-0C]
 004C9031    cmp         ebx,0FF
>004C9037    jbe         004C903E
 004C9039    call        @BoundErr
 004C903E    mov         ecx,ebx
 004C9040    mov         dl,byte ptr [ebp-5]
 004C9043    mov         eax,dword ptr [ebp-4]
 004C9046    call        004BEDCC
 004C904B    lea         eax,[ebp-14C]
 004C9051    mov         edx,4C9270;'oui'
 004C9056    xor         ecx,ecx
 004C9058    mov         cl,byte ptr [eax]
 004C905A    inc         ecx
 004C905B    call        @AStrCmp
>004C9060    jne         004C91D0
 004C9066    lea         eax,[ebp-24C]
 004C906C    push        eax
 004C906D    mov         eax,dword ptr [ebp-0C]
 004C9070    cmp         eax,0FF
>004C9075    jbe         004C907C
 004C9077    call        @BoundErr
 004C907C    mov         ecx,ebx
 004C907E    mov         dl,byte ptr [ebp-5]
 004C9081    mov         eax,dword ptr [ebp-4]
 004C9084    call        004BEF0C
 004C9089    lea         eax,[ebp-24C]
 004C908F    mov         edx,4C9274;'Oral'
 004C9094    xor         ecx,ecx
 004C9096    mov         cl,byte ptr [eax]
 004C9098    inc         ecx
 004C9099    call        @AStrCmp
>004C909E    jne         004C91D0
 004C90A4    xor         eax,eax
 004C90A6    push        ebp
 004C90A7    push        4C91A4
 004C90AC    push        dword ptr fs:[eax]
 004C90AF    mov         dword ptr fs:[eax],esp
 004C90B2    lea         eax,[ebp-14C]
 004C90B8    push        eax
 004C90B9    mov         eax,dword ptr [ebp-0C]
 004C90BC    cmp         eax,0FF
>004C90C1    jbe         004C90C8
 004C90C3    call        @BoundErr
 004C90C8    mov         ecx,ebx
 004C90CA    mov         dl,byte ptr [ebp-5]
 004C90CD    mov         eax,dword ptr [ebp-4]
 004C90D0    call        004BED7C
 004C90D5    lea         edx,[ebp-14C]
 004C90DB    lea         eax,[ebp-250]
 004C90E1    call        @LStrFromString
 004C90E6    mov         eax,dword ptr [ebp-250]
 004C90EC    call        StrToFloat
 004C90F1    fstp        tbyte ptr [ebp-18]
 004C90F4    wait
 004C90F5    lea         eax,[ebp-14C]
 004C90FB    push        eax
 004C90FC    mov         eax,dword ptr [ebp-0C]
 004C90FF    cmp         eax,0FF
>004C9104    jbe         004C910B
 004C9106    call        @BoundErr
 004C910B    mov         ecx,ebx
 004C910D    mov         dl,byte ptr [ebp-5]
 004C9110    mov         eax,dword ptr [ebp-4]
 004C9113    call        004BED2C
 004C9118    lea         edx,[ebp-14C]
 004C911E    lea         eax,[ebp-254]
 004C9124    call        @LStrFromString
 004C9129    mov         eax,dword ptr [ebp-254]
 004C912F    call        StrToFloat
 004C9134    fstp        tbyte ptr [ebp-28]
 004C9137    wait
 004C9138    mov         al,byte ptr [ebp-6]
 004C913B    push        eax
 004C913C    lea         eax,[ebp-14C]
 004C9142    push        eax
 004C9143    mov         eax,dword ptr [ebp-0C]
 004C9146    cmp         eax,0FF
>004C914B    jbe         004C9152
 004C914D    call        @BoundErr
 004C9152    mov         ecx,ebx
 004C9154    mov         dl,byte ptr [ebp-5]
 004C9157    mov         eax,dword ptr [ebp-4]
 004C915A    call        004BEF5C
 004C915F    lea         edx,[ebp-14C]
 004C9165    lea         eax,[ebp-258]
 004C916B    call        @LStrFromString
 004C9170    mov         eax,dword ptr [ebp-258]
 004C9176    call        StrToFloat
 004C917B    fld         tbyte ptr [ebp-18]
 004C917E    fmulp       st(1),st
 004C9180    fld         tbyte ptr [ebp-38]
 004C9183    faddp       st(1),st
 004C9185    fstp        tbyte ptr [ebp-38]
 004C9188    wait
 004C9189    fld         tbyte ptr [ebp-28]
 004C918C    fld         tbyte ptr [ebp-18]
 004C918F    fmulp       st(1),st
 004C9191    fld         tbyte ptr [ebp-48]
 004C9194    faddp       st(1),st
 004C9196    fstp        tbyte ptr [ebp-48]
 004C9199    wait
 004C919A    xor         eax,eax
 004C919C    pop         edx
 004C919D    pop         ecx
 004C919E    pop         ecx
 004C919F    mov         dword ptr fs:[eax],edx
>004C91A2    jmp         004C91D0
>004C91A4    jmp         @HandleOnException
 004C91A9    dd          2
 004C91AD    dd          00409B50;EConvertError
 004C91B1    dd          004C91BD
 004C91B5    dd          004098E0;EMathError
 004C91B9    dd          004C91C4
 004C91BD    call        @DoneExcept
>004C91C2    jmp         004C91D0
 004C91C4    call        @DoneExcept
>004C91C9    jmp         004C91D0
 004C91CB    call        @DoneExcept
 004C91D0    inc         dword ptr [ebp-0C]
 004C91D3    dec         dword ptr [ebp-4C]
>004C91D6    jne         004C9027
 004C91DC    fld         tbyte ptr [ebp-48]
 004C91DF    fcomp       dword ptr ds:[4C927C];0:Single
 004C91E5    fnstsw      al
 004C91E7    sahf
>004C91E8    je          004C9239
 004C91EA    call        004B9E48
 004C91EF    mov         dword ptr [ebp-260],eax
 004C91F5    fild        dword ptr [ebp-260]
 004C91FB    fld         tbyte ptr [ebp-38]
 004C91FE    fld         tbyte ptr [ebp-48]
 004C9201    fdivp       st(1),st
 004C9203    fmulp       st(1),st
 004C9205    add         esp,0FFFFFFF4
 004C9208    fstp        tbyte ptr [esp]
 004C920B    wait
 004C920C    lea         eax,[ebp-25C]
 004C9212    push        eax
 004C9213    mov         ecx,2
 004C9218    mov         edx,12
 004C921D    mov         al,2
 004C921F    call        FloatToStrF
 004C9224    mov         edx,dword ptr [ebp-25C]
 004C922A    mov         eax,dword ptr [ebp+8]
 004C922D    mov         ecx,0FF
 004C9232    call        @LStrToString
>004C9237    jmp         004C923F
 004C9239    mov         eax,dword ptr [ebp+8]
 004C923C    mov         byte ptr [eax],0
 004C923F    xor         eax,eax
 004C9241    pop         edx
 004C9242    pop         ecx
 004C9243    pop         ecx
 004C9244    mov         dword ptr fs:[eax],edx
 004C9247    push        4C9264
 004C924C    lea         eax,[ebp-25C]
 004C9252    mov         edx,4
 004C9257    call        @LStrArrayClr
 004C925C    ret
>004C925D    jmp         @HandleFinally
>004C9262    jmp         004C924C
 004C9264    pop         edi
 004C9265    pop         esi
 004C9266    pop         ebx
 004C9267    mov         esp,ebp
 004C9269    pop         ebp
 004C926A    ret         4
end;*}

//004C9280
{*//procedure sub_004C9280(?:dword; ?:?; ?:?; ?:?; ?:?);
//begin
 004C9280    push        ebp
 004C9281    mov         ebp,esp
 004C9283    add         esp,0FFFFFEFC
 004C9289    push        ebx
 004C928A    push        esi
 004C928B    mov         byte ptr [ebp-1],cl
 004C928E    mov         ebx,edx
 004C9290    mov         esi,eax
 004C9292    mov         eax,dword ptr [ebp+8]
 004C9295    push        eax
 004C9296    lea         eax,[ebp-104]
 004C929C    push        eax
 004C929D    mov         cl,byte ptr [ebp-1]
 004C92A0    mov         edx,ebx
 004C92A2    mov         eax,esi
 004C92A4    call        004C92C4
 004C92A9    lea         edx,[ebp-104]
 004C92AF    mov         cl,byte ptr [ebp+0C]
 004C92B2    mov         eax,esi
 004C92B4    call        004C2410
 004C92B9    pop         esi
 004C92BA    pop         ebx
 004C92BB    mov         esp,ebp
 004C92BD    pop         ebp
 004C92BE    ret         8
end;*}

//004C92C4
{*//procedure sub_004C92C4(?:?; ?:?; ?:?; ?:?);
//begin
 004C92C4    push        ebp
 004C92C5    mov         ebp,esp
 004C92C7    add         esp,0FFFFFDA0
 004C92CD    push        ebx
 004C92CE    push        esi
 004C92CF    push        edi
 004C92D0    xor         ebx,ebx
 004C92D2    mov         dword ptr [ebp-25C],ebx
 004C92D8    mov         dword ptr [ebp-258],ebx
 004C92DE    mov         dword ptr [ebp-254],ebx
 004C92E4    mov         dword ptr [ebp-250],ebx
 004C92EA    mov         byte ptr [ebp-6],cl
 004C92ED    mov         byte ptr [ebp-5],dl
 004C92F0    mov         dword ptr [ebp-4],eax
 004C92F3    xor         eax,eax
 004C92F5    push        ebp
 004C92F6    push        4C9571
 004C92FB    push        dword ptr fs:[eax]
 004C92FE    mov         dword ptr fs:[eax],esp
 004C9301    xor         eax,eax
 004C9303    mov         dword ptr [ebp-38],eax
 004C9306    mov         dword ptr [ebp-34],eax
 004C9309    mov         word ptr [ebp-30],ax
 004C930D    xor         eax,eax
 004C930F    mov         dword ptr [ebp-48],eax
 004C9312    mov         dword ptr [ebp-44],eax
 004C9315    mov         word ptr [ebp-40],ax
 004C9319    mov         dl,byte ptr [ebp-5]
 004C931C    mov         eax,dword ptr [ebp-4]
 004C931F    call        004BEAD0
 004C9324    and         eax,0FF
 004C9329    test        eax,eax
>004C932B    jle         004C94F0
 004C9331    mov         dword ptr [ebp-4C],eax
 004C9334    mov         dword ptr [ebp-0C],1
 004C933B    lea         eax,[ebp-14C]
 004C9341    push        eax
 004C9342    mov         ebx,dword ptr [ebp-0C]
 004C9345    cmp         ebx,0FF
>004C934B    jbe         004C9352
 004C934D    call        @BoundErr
 004C9352    mov         ecx,ebx
 004C9354    mov         dl,byte ptr [ebp-5]
 004C9357    mov         eax,dword ptr [ebp-4]
 004C935A    call        004BEDCC
 004C935F    lea         eax,[ebp-14C]
 004C9365    mov         edx,4C9584;'oui'
 004C936A    xor         ecx,ecx
 004C936C    mov         cl,byte ptr [eax]
 004C936E    inc         ecx
 004C936F    call        @AStrCmp
>004C9374    jne         004C94E4
 004C937A    lea         eax,[ebp-24C]
 004C9380    push        eax
 004C9381    mov         eax,dword ptr [ebp-0C]
 004C9384    cmp         eax,0FF
>004C9389    jbe         004C9390
 004C938B    call        @BoundErr
 004C9390    mov         ecx,ebx
 004C9392    mov         dl,byte ptr [ebp-5]
 004C9395    mov         eax,dword ptr [ebp-4]
 004C9398    call        004BEF0C
 004C939D    lea         eax,[ebp-24C]
 004C93A3    mov         edx,4C9588;'Ecrit'
 004C93A8    xor         ecx,ecx
 004C93AA    mov         cl,byte ptr [eax]
 004C93AC    inc         ecx
 004C93AD    call        @AStrCmp
>004C93B2    jne         004C94E4
 004C93B8    xor         eax,eax
 004C93BA    push        ebp
 004C93BB    push        4C94B8
 004C93C0    push        dword ptr fs:[eax]
 004C93C3    mov         dword ptr fs:[eax],esp
 004C93C6    lea         eax,[ebp-14C]
 004C93CC    push        eax
 004C93CD    mov         eax,dword ptr [ebp-0C]
 004C93D0    cmp         eax,0FF
>004C93D5    jbe         004C93DC
 004C93D7    call        @BoundErr
 004C93DC    mov         ecx,ebx
 004C93DE    mov         dl,byte ptr [ebp-5]
 004C93E1    mov         eax,dword ptr [ebp-4]
 004C93E4    call        004BED7C
 004C93E9    lea         edx,[ebp-14C]
 004C93EF    lea         eax,[ebp-250]
 004C93F5    call        @LStrFromString
 004C93FA    mov         eax,dword ptr [ebp-250]
 004C9400    call        StrToFloat
 004C9405    fstp        tbyte ptr [ebp-18]
 004C9408    wait
 004C9409    lea         eax,[ebp-14C]
 004C940F    push        eax
 004C9410    mov         eax,dword ptr [ebp-0C]
 004C9413    cmp         eax,0FF
>004C9418    jbe         004C941F
 004C941A    call        @BoundErr
 004C941F    mov         ecx,ebx
 004C9421    mov         dl,byte ptr [ebp-5]
 004C9424    mov         eax,dword ptr [ebp-4]
 004C9427    call        004BED2C
 004C942C    lea         edx,[ebp-14C]
 004C9432    lea         eax,[ebp-254]
 004C9438    call        @LStrFromString
 004C943D    mov         eax,dword ptr [ebp-254]
 004C9443    call        StrToFloat
 004C9448    fstp        tbyte ptr [ebp-28]
 004C944B    wait
 004C944C    mov         al,byte ptr [ebp-6]
 004C944F    push        eax
 004C9450    lea         eax,[ebp-14C]
 004C9456    push        eax
 004C9457    mov         eax,dword ptr [ebp-0C]
 004C945A    cmp         eax,0FF
>004C945F    jbe         004C9466
 004C9461    call        @BoundErr
 004C9466    mov         ecx,ebx
 004C9468    mov         dl,byte ptr [ebp-5]
 004C946B    mov         eax,dword ptr [ebp-4]
 004C946E    call        004BEF5C
 004C9473    lea         edx,[ebp-14C]
 004C9479    lea         eax,[ebp-258]
 004C947F    call        @LStrFromString
 004C9484    mov         eax,dword ptr [ebp-258]
 004C948A    call        StrToFloat
 004C948F    fld         tbyte ptr [ebp-18]
 004C9492    fmulp       st(1),st
 004C9494    fld         tbyte ptr [ebp-38]
 004C9497    faddp       st(1),st
 004C9499    fstp        tbyte ptr [ebp-38]
 004C949C    wait
 004C949D    fld         tbyte ptr [ebp-28]
 004C94A0    fld         tbyte ptr [ebp-18]
 004C94A3    fmulp       st(1),st
 004C94A5    fld         tbyte ptr [ebp-48]
 004C94A8    faddp       st(1),st
 004C94AA    fstp        tbyte ptr [ebp-48]
 004C94AD    wait
 004C94AE    xor         eax,eax
 004C94B0    pop         edx
 004C94B1    pop         ecx
 004C94B2    pop         ecx
 004C94B3    mov         dword ptr fs:[eax],edx
>004C94B6    jmp         004C94E4
>004C94B8    jmp         @HandleOnException
 004C94BD    dd          2
 004C94C1    dd          00409B50;EConvertError
 004C94C5    dd          004C94D1
 004C94C9    dd          004098E0;EMathError
 004C94CD    dd          004C94D8
 004C94D1    call        @DoneExcept
>004C94D6    jmp         004C94E4
 004C94D8    call        @DoneExcept
>004C94DD    jmp         004C94E4
 004C94DF    call        @DoneExcept
 004C94E4    inc         dword ptr [ebp-0C]
 004C94E7    dec         dword ptr [ebp-4C]
>004C94EA    jne         004C933B
 004C94F0    fld         tbyte ptr [ebp-48]
 004C94F3    fcomp       dword ptr ds:[4C9590];0:Single
 004C94F9    fnstsw      al
 004C94FB    sahf
>004C94FC    je          004C954D
 004C94FE    call        004B9E48
 004C9503    mov         dword ptr [ebp-260],eax
 004C9509    fild        dword ptr [ebp-260]
 004C950F    fld         tbyte ptr [ebp-38]
 004C9512    fld         tbyte ptr [ebp-48]
 004C9515    fdivp       st(1),st
 004C9517    fmulp       st(1),st
 004C9519    add         esp,0FFFFFFF4
 004C951C    fstp        tbyte ptr [esp]
 004C951F    wait
 004C9520    lea         eax,[ebp-25C]
 004C9526    push        eax
 004C9527    mov         ecx,2
 004C952C    mov         edx,12
 004C9531    mov         al,2
 004C9533    call        FloatToStrF
 004C9538    mov         edx,dword ptr [ebp-25C]
 004C953E    mov         eax,dword ptr [ebp+8]
 004C9541    mov         ecx,0FF
 004C9546    call        @LStrToString
>004C954B    jmp         004C9553
 004C954D    mov         eax,dword ptr [ebp+8]
 004C9550    mov         byte ptr [eax],0
 004C9553    xor         eax,eax
 004C9555    pop         edx
 004C9556    pop         ecx
 004C9557    pop         ecx
 004C9558    mov         dword ptr fs:[eax],edx
 004C955B    push        4C9578
 004C9560    lea         eax,[ebp-25C]
 004C9566    mov         edx,4
 004C956B    call        @LStrArrayClr
 004C9570    ret
>004C9571    jmp         @HandleFinally
>004C9576    jmp         004C9560
 004C9578    pop         edi
 004C9579    pop         esi
 004C957A    pop         ebx
 004C957B    mov         esp,ebp
 004C957D    pop         ebp
 004C957E    ret         4
end;*}

//004C9594
{*//procedure sub_004C9594(?:dword; ?:?; ?:?; ?:?);
//begin
 004C9594    push        ebp
 004C9595    mov         ebp,esp
 004C9597    add         esp,0FFFFFEE0
 004C959D    push        ebx
 004C959E    push        esi
 004C959F    push        edi
 004C95A0    xor         ebx,ebx
 004C95A2    mov         dword ptr [ebp-11C],ebx
 004C95A8    mov         dword ptr [ebp-18],ebx
 004C95AB    mov         byte ptr [ebp-6],cl
 004C95AE    mov         byte ptr [ebp-5],dl
 004C95B1    mov         dword ptr [ebp-4],eax
 004C95B4    xor         eax,eax
 004C95B6    push        ebp
 004C95B7    push        4C96F8
 004C95BC    push        dword ptr fs:[eax]
 004C95BF    mov         dword ptr fs:[eax],esp
 004C95C2    xor         eax,eax
 004C95C4    mov         dword ptr [ebp-10],eax
 004C95C7    mov         dword ptr [ebp-0C],eax
 004C95CA    mov         word ptr [ebp-8],ax
 004C95CE    mov         byte ptr [ebp-12],0
 004C95D2    mov         eax,dword ptr [ebp-4]
 004C95D5    call        004BE9E0
 004C95DA    test        al,al
>004C95DC    jbe         004C9669
 004C95E2    mov         byte ptr [ebp-13],al
 004C95E5    mov         byte ptr [ebp-11],1
 004C95E9    xor         eax,eax
 004C95EB    push        ebp
 004C95EC    push        4C9644
 004C95F1    push        dword ptr fs:[eax]
 004C95F4    mov         dword ptr fs:[eax],esp
 004C95F7    mov         al,byte ptr [ebp-6]
 004C95FA    push        eax
 004C95FB    lea         eax,[ebp-118]
 004C9601    push        eax
 004C9602    mov         cl,byte ptr [ebp-5]
 004C9605    mov         dl,byte ptr [ebp-11]
 004C9608    mov         eax,dword ptr [ebp-4]
 004C960B    call        004C8F6C
 004C9610    lea         edx,[ebp-118]
 004C9616    lea         eax,[ebp-18]
 004C9619    call        @LStrFromString
 004C961E    mov         eax,dword ptr [ebp-18]
 004C9621    call        StrToFloat
 004C9626    fld         tbyte ptr [ebp-10]
 004C9629    faddp       st(1),st
 004C962B    fstp        tbyte ptr [ebp-10]
 004C962E    wait
 004C962F    add         byte ptr [ebp-12],1
>004C9633    jae         004C963A
 004C9635    call        @IntOver
 004C963A    xor         eax,eax
 004C963C    pop         edx
 004C963D    pop         ecx
 004C963E    pop         ecx
 004C963F    mov         dword ptr fs:[eax],edx
>004C9642    jmp         004C9661
>004C9644    jmp         @HandleOnException
 004C9649    dd          1
 004C964D    dd          00409B50;EConvertError
 004C9651    dd          004C9655
 004C9655    call        @DoneExcept
>004C965A    jmp         004C9661
 004C965C    call        @DoneExcept
 004C9661    inc         byte ptr [ebp-11]
 004C9664    dec         byte ptr [ebp-13]
>004C9667    jne         004C95E9
 004C9669    cmp         byte ptr [ebp-12],0
>004C966D    je          004C96D1
 004C966F    mov         eax,dword ptr [ebp+8]
 004C9672    push        eax
 004C9673    xor         eax,eax
 004C9675    mov         al,byte ptr [ebp-12]
 004C9678    mov         dword ptr [ebp-120],eax
 004C967E    fild        dword ptr [ebp-120]
 004C9684    fld         tbyte ptr [ebp-10]
 004C9687    fdivrp      st(1),st
 004C9689    add         esp,0FFFFFFF4
 004C968C    fstp        tbyte ptr [esp]
 004C968F    wait
 004C9690    lea         eax,[ebp-11C]
 004C9696    push        eax
 004C9697    mov         ecx,2
 004C969C    mov         edx,12
 004C96A1    mov         al,2
 004C96A3    call        FloatToStrF
 004C96A8    mov         edx,dword ptr [ebp-11C]
 004C96AE    lea         eax,[ebp-118]
 004C96B4    mov         ecx,0FF
 004C96B9    call        @LStrToString
 004C96BE    lea         edx,[ebp-118]
 004C96C4    mov         cl,byte ptr [ebp-6]
 004C96C7    mov         eax,dword ptr [ebp-4]
 004C96CA    call        004C2410
>004C96CF    jmp         004C96D7
 004C96D1    mov         eax,dword ptr [ebp+8]
 004C96D4    mov         byte ptr [eax],0
 004C96D7    xor         eax,eax
 004C96D9    pop         edx
 004C96DA    pop         ecx
 004C96DB    pop         ecx
 004C96DC    mov         dword ptr fs:[eax],edx
 004C96DF    push        4C96FF
 004C96E4    lea         eax,[ebp-11C]
 004C96EA    call        @LStrClr
 004C96EF    lea         eax,[ebp-18]
 004C96F2    call        @LStrClr
 004C96F7    ret
>004C96F8    jmp         @HandleFinally
>004C96FD    jmp         004C96E4
 004C96FF    pop         edi
 004C9700    pop         esi
 004C9701    pop         ebx
 004C9702    mov         esp,ebp
 004C9704    pop         ebp
 004C9705    ret         4
end;*}

//004C9708
{*//procedure sub_004C9708(?:dword; ?:?; ?:?; ?:?);
//begin
 004C9708    push        ebp
 004C9709    mov         ebp,esp
 004C970B    add         esp,0FFFFFEE0
 004C9711    push        ebx
 004C9712    push        esi
 004C9713    push        edi
 004C9714    xor         ebx,ebx
 004C9716    mov         dword ptr [ebp-11C],ebx
 004C971C    mov         dword ptr [ebp-18],ebx
 004C971F    mov         byte ptr [ebp-6],cl
 004C9722    mov         byte ptr [ebp-5],dl
 004C9725    mov         dword ptr [ebp-4],eax
 004C9728    xor         eax,eax
 004C972A    push        ebp
 004C972B    push        4C986C
 004C9730    push        dword ptr fs:[eax]
 004C9733    mov         dword ptr fs:[eax],esp
 004C9736    xor         eax,eax
 004C9738    mov         dword ptr [ebp-10],eax
 004C973B    mov         dword ptr [ebp-0C],eax
 004C973E    mov         word ptr [ebp-8],ax
 004C9742    mov         byte ptr [ebp-12],0
 004C9746    mov         eax,dword ptr [ebp-4]
 004C9749    call        004BE9E0
 004C974E    test        al,al
>004C9750    jbe         004C97DD
 004C9756    mov         byte ptr [ebp-13],al
 004C9759    mov         byte ptr [ebp-11],1
 004C975D    xor         eax,eax
 004C975F    push        ebp
 004C9760    push        4C97B8
 004C9765    push        dword ptr fs:[eax]
 004C9768    mov         dword ptr fs:[eax],esp
 004C976B    mov         al,byte ptr [ebp-6]
 004C976E    push        eax
 004C976F    lea         eax,[ebp-118]
 004C9775    push        eax
 004C9776    mov         cl,byte ptr [ebp-5]
 004C9779    mov         dl,byte ptr [ebp-11]
 004C977C    mov         eax,dword ptr [ebp-4]
 004C977F    call        004C9280
 004C9784    lea         edx,[ebp-118]
 004C978A    lea         eax,[ebp-18]
 004C978D    call        @LStrFromString
 004C9792    mov         eax,dword ptr [ebp-18]
 004C9795    call        StrToFloat
 004C979A    fld         tbyte ptr [ebp-10]
 004C979D    faddp       st(1),st
 004C979F    fstp        tbyte ptr [ebp-10]
 004C97A2    wait
 004C97A3    add         byte ptr [ebp-12],1
>004C97A7    jae         004C97AE
 004C97A9    call        @IntOver
 004C97AE    xor         eax,eax
 004C97B0    pop         edx
 004C97B1    pop         ecx
 004C97B2    pop         ecx
 004C97B3    mov         dword ptr fs:[eax],edx
>004C97B6    jmp         004C97D5
>004C97B8    jmp         @HandleOnException
 004C97BD    dd          1
 004C97C1    dd          00409B50;EConvertError
 004C97C5    dd          004C97C9
 004C97C9    call        @DoneExcept
>004C97CE    jmp         004C97D5
 004C97D0    call        @DoneExcept
 004C97D5    inc         byte ptr [ebp-11]
 004C97D8    dec         byte ptr [ebp-13]
>004C97DB    jne         004C975D
 004C97DD    cmp         byte ptr [ebp-12],0
>004C97E1    je          004C9845
 004C97E3    mov         eax,dword ptr [ebp+8]
 004C97E6    push        eax
 004C97E7    xor         eax,eax
 004C97E9    mov         al,byte ptr [ebp-12]
 004C97EC    mov         dword ptr [ebp-120],eax
 004C97F2    fild        dword ptr [ebp-120]
 004C97F8    fld         tbyte ptr [ebp-10]
 004C97FB    fdivrp      st(1),st
 004C97FD    add         esp,0FFFFFFF4
 004C9800    fstp        tbyte ptr [esp]
 004C9803    wait
 004C9804    lea         eax,[ebp-11C]
 004C980A    push        eax
 004C980B    mov         ecx,2
 004C9810    mov         edx,12
 004C9815    mov         al,2
 004C9817    call        FloatToStrF
 004C981C    mov         edx,dword ptr [ebp-11C]
 004C9822    lea         eax,[ebp-118]
 004C9828    mov         ecx,0FF
 004C982D    call        @LStrToString
 004C9832    lea         edx,[ebp-118]
 004C9838    mov         cl,byte ptr [ebp-6]
 004C983B    mov         eax,dword ptr [ebp-4]
 004C983E    call        004C2410
>004C9843    jmp         004C984B
 004C9845    mov         eax,dword ptr [ebp+8]
 004C9848    mov         byte ptr [eax],0
 004C984B    xor         eax,eax
 004C984D    pop         edx
 004C984E    pop         ecx
 004C984F    pop         ecx
 004C9850    mov         dword ptr fs:[eax],edx
 004C9853    push        4C9873
 004C9858    lea         eax,[ebp-11C]
 004C985E    call        @LStrClr
 004C9863    lea         eax,[ebp-18]
 004C9866    call        @LStrClr
 004C986B    ret
>004C986C    jmp         @HandleFinally
>004C9871    jmp         004C9858
 004C9873    pop         edi
 004C9874    pop         esi
 004C9875    pop         ebx
 004C9876    mov         esp,ebp
 004C9878    pop         ebp
 004C9879    ret         4
end;*}

end.