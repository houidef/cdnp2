{***************************************
* Version Original V0.01
* Decompiled by HOUIDEF AEK v 18:44 mardi 20 février 2018
***************************************}
unit Unit111;

interface

uses
Forms, Windows,  SysUtils, Classes, Graphics, Menus, URegistry,Registry,UInclureImpression;

	procedure sub_004B901C(a:AnsiString);//004B901C
	procedure sub_004B90CC(MainMenu:TMainMenu; ItemIndex:dword);//004B90CC
	procedure sub_004B91F0(MainMenu:TMainMenu; ItemIndex:dword; {c:dword;} DrawItem:TMenuDrawItemEvent; Click:TNotifyEvent);//004B91F0
	function sub_004B9410:boolean;//004B9410
	procedure sub_004B943C(a:Boolean);//004B943C
	function sub_004B9468:dword;//004B9468 nbFichiersHistorique
	procedure sub_004B94A4(a:Int64);//004B94A4
	procedure sub_004B94D8(MainMenu:TMainMenu; ItemIndex:dword; DrawItem:TMenuDrawItemEvent; Click:TNotifyEvent);//004B94D8
	function sub_004B9500:TStringList;//004B9500
	procedure sub_004B964C(a:TStrings);//004B964C
	function sub_004B9794:TStringList;//004B9794
	function sub_004B9840:TStringlist;//004B9840
	procedure sub_004B9938(a:TStrings);//004B9938
	function sub_004B9A44:TStringList;//004B9A44
	//function sub_004B9B44:?;//004B9B44
	procedure sub_004B9BBC(a:TColor);//004B9BBC
	procedure sub_004B9BF8(a:TColor);//004B9BF8
	function sub_004B9C34:TColor;//004B9C34
	function sub_004B9C80:TColor;//004B9C80
	function sub_004B9CCC:TColor;//004B9CCC
	function sub_004B9CD4:TColor;//004B9CD4
	//function sub_004B9CDC:?;//004B9CDC
	procedure sub_004B9CE4(a:TColor);//004B9CE4
	function sub_004B9D24:TColor;//004B9D24
	procedure sub_004B9D74(a:Integer);//004B9D74
	procedure sub_004B9DA4(a:Integer);//004B9DA4
	procedure sub_004B9DE4(a:Integer);//004B9DE4
	function sub_004B9E10:integer;//004B9E10
	function sub_004B9E48:integer;//004B9E48
	function sub_004B9EA0:dword;//004B9EA0
	procedure sub_004B9ED4(a:Boolean);//004B9ED4
	procedure sub_004B9F04(a:Boolean);//004B9F04
	function sub_004B9F30:boolean;//004B9F30
	function sub_004B9F60:boolean;//004B9F60
	function sub_004B9F8C:TColor;//004B9F8C
	function sub_004B9FD8:TColor;//004B9FD8
	function sub_004BA024:TColor;//004BA024
	function sub_004BA070:TColor;//004BA070
	function sub_004BA0BC:TColor;//004BA0BC
	function sub_004BA108:TColor;//004BA108
	procedure sub_004BA138(a:TColor);//004BA138
	procedure sub_004BA174(a:TColor);//004BA174
	procedure sub_004BA1B0(a:TColor);//004BA1B0
	procedure sub_004BA1EC(a:TColor);//004BA1EC
	procedure sub_004BA228(a:TColor);//004BA228
	function sub_004BA264:TColor;//004BA264
	function sub_004BA26C:TColor;//004BA26C
	function sub_004BA274:TColor;//004BA274
	function sub_004BA27C:TColor;//004BA27C
	function sub_004BA280:TColor;//004BA280
	procedure sub_004BA288(a:Boolean);//004BA288
	function sub_004BA2B0:boolean;//004BA2B0
	procedure sub_004BA2D8(a:Boolean);//004BA2D8
	function sub_004BA2FC:boolean;//004BA2FC
	procedure sub_004BA320(a:Integer);//004BA320
	procedure sub_004BA354(a:Integer);//004BA354
	function sub_004BA384:dword;//004BA384
	function sub_004BA3C0:dword;//004BA3C0
	function sub_004BA3F8(a:String):TStringlist;//004BA3F8
	//procedure sub_004BA7B0(?:?; ?:TStrings);//004BA7B0
	//procedure sub_004BA964(?:?);//004BA964
	function sub_004BAA88(a:dword):TInclureImpression;//004BAA88
	function sub_004BAEC4:boolean;//004BAEC4
	procedure sub_004BAEFC(a:Boolean);//004BAEFC
	function sub_004BAF34:boolean;//004BAF34
	procedure sub_004BAF64(a:Boolean);//004BAF64
	procedure sub_004BAF94(a:byte; U:TInclureImpression);//004BAF94
	function sub_004BB35C:boolean;//004BB35C
	procedure sub_004BB38C(a:Boolean);//004BB38C
	procedure sub_004BB3BC(a:Integer);//004BB3BC
	function sub_004BB3F0:byte;//004BB3F0
	procedure sub_004BB42C(a:Boolean);//004BB42C
	function sub_004BB458:Boolean;//004BB458
	procedure sub_004BB484(a:Boolean);//004BB484
	procedure sub_004BB4B0(a:Boolean);//004BB4B0
	procedure sub_004BB4E4(a:Boolean);//004BB4E4
	procedure sub_004BB50C(a:Boolean);//004BB50C
	procedure sub_004BB534(a:Integer);//004BB534
	function sub_004BB55C:boolean;//004BB55C
	function sub_004BB588:boolean;//004BB588
	function sub_004BB5BC:boolean;//004BB5BC
	function sub_004BB5E4:boolean;//004BB5E4
	function sub_004BB60C:dword;//004BB60C
	procedure sub_004BB63C(a:Boolean);//004BB63C
	function sub_004BB668:boolean;//004BB668
	procedure sub_004BB694(a:Boolean);//004BB694
	function sub_004BB6C8:boolean;//004BB6C8
	procedure sub_004BB6FC(a:Integer);//004BB6FC
	function sub_004BB728:dword;//004BB728
	function sub_004BB75C:dword;//004BB75C
	procedure sub_004BB790(x:dword);//004BB790
	procedure sub_004BB7BC(a:Integer);//004BB7BC
	function sub_004BB7E8:dword;//004BB7E8
	procedure sub_004BB81C(a:Boolean);//004BB81C
	function sub_004BB84C:boolean;//004BB84C
	function sub_004BB87C:TColor;//004BB87C
	function sub_004BB8AC:TColor;//004BB8AC
	procedure sub_004BB8B4(a:TColor);//004BB8B4
	procedure sub_004BB8E0(a:Boolean);//004BB8E0
	procedure sub_004BB90C(a:Boolean);//004BB90C
	function sub_004BB930:boolean;//004BB930
	function sub_004BB95C:Boolean;//004BB95C
	procedure sub_004BB980(a:Boolean);//004BB980
	function sub_004BB9B4:Boolean;//004BB9B4
	procedure sub_004BB9E8(a:Boolean);//004BB9E8
	function sub_004BBA0C:boolean;//004BBA0C
	procedure sub_004BBA30(a:Boolean);//004BBA30
	procedure sub_004BBA58(a:Boolean);//004BBA58
	function sub_004BBA80:boolean;//004BBA80
	function sub_004BBAA8:boolean;//004BBAA8
	procedure sub_004BBAD0(a:Boolean);//004BBAD0
	function sub_004BBAF8:boolean;//004BBAF8
	procedure sub_004BBB20(a:TColor);//004BBB20
	procedure sub_004BBB4C(a:TColor);//004BBB4C
	function sub_004BBB78:TColor;//004BBB78
	function sub_004BBBA8:TColor;//004BBBA8
	function sub_004BBBD8:TColor;//004BBBD8
	function sub_004BBBE0:TColor;//004BBBE0
	procedure sub_004BBBE8(a:TColor);//004BBBE8
	procedure sub_004BBC10(a:TColor);//004BBC10
	procedure sub_004BBC34(a:TColor);//004BBC34
	procedure sub_004BBC58(a:TColor);//004BBC58
	function sub_004BBC80:TColor;//004BBC80
	function sub_004BBCAC:TColor;//004BBCAC
	function sub_004BBCB4:TColor;//004BBCB4
	function sub_004BBCDC:TColor;//004BBCDC
	function sub_004BBCE4:TColor;//004BBCE4
	function sub_004BBD0C:TColor;//004BBD0C
	function sub_004BBD14:TColor;//004BBD14
	function sub_004BBD40:TColor;//004BBD40
	procedure sub_004BBD48(a:TColor);//004BBD48
	function sub_004BBD70:TColor;//004BBD70
	function sub_004BBD9C:TColor;//004BBD9C
	procedure sub_004BBDA4(a:TColor);//004BBDA4
	function sub_004BBDD0:TColor;//004BBDD0
	procedure sub_004BBDD8(a:Boolean);//004BBDD8
	procedure sub_004BBE04(a:Boolean);//004BBE04
	procedure sub_004BBE2C(a:Boolean);//004BBE2C
	procedure sub_004BBE54(a:Boolean);//004BBE54
	function sub_004BBE80:boolean;//004BBE80
	function sub_004BBEAC:boolean;//004BBEAC
	function sub_004BBED4:boolean;//004BBED4
	function sub_004BBEFC:boolean;//004BBEFC
	procedure sub_004BBF28(a:Integer);//004BBF28
	function sub_004BBF54:dword;//004BBF54
	procedure sub_004BBF88(a:Boolean);//004BBF88
	function sub_004BBFB8:boolean;//004BBFB8
	procedure sub_004BBFE8(a:Boolean);//004BBFE8
	function sub_004BC01C:boolean;//004BC01C
	procedure sub_004BC050(a:Integer);//004BC050
	function sub_004BC080:byte;//004BC080
	procedure sub_004BC0B8(a:Boolean);//004BC0B8
	function sub_004BC0EC:boolean;//004BC0EC
	procedure sub_004BC120(a:Boolean);//004BC120
	procedure sub_004BC154(a:Boolean);//004BC154
	function sub_004BC188:boolean;//004BC188
	function sub_004BC1BC:boolean;//004BC1BC
	procedure sub_004BC1F0(a:Boolean);//004BC1F0
	function sub_004BC228:boolean;//004BC228
	procedure sub_004BC260(a:Integer);//004BC260
	function sub_004BC298:dword;//004BC298
	procedure sub_004BC2D8(a:Integer);//004BC2D8
	function sub_004BC30C:dword;//004BC30C
	function sub_004BC348:TStringList;//004BC348
	function sub_004BC3F0:TStringList;//004BC3F0
	procedure sub_004BC698(a:TStrings);//004BC698
	//procedure sub_004BC7A0(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//004BC7A0
	//procedure sub_004BCAA0(?:?; ?:?; ?:?; ?:?);//004BCAA0
	procedure sub_004BCBDC(StringList:TStringList);//004BCBDC
	function sub_004BCD14:TStringlist;//004BCD14
	function sub_004BCDB0:boolean;//004BCDB0
	procedure sub_004BCDE8(a:Boolean);//004BCDE8
	function sub_004BCE20:boolean;//004BCE20
	procedure sub_004BCE50(a:Boolean);//004BCE50
	function sub_004BCE80:TStringList;//004BCE80
	function sub_004BCF84(a:String):TStringList;//004BCF84
	function sub_004BD1BC:boolean;//004BD1BC
	function sub_004BD1FC:boolean;//004BD1FC
	function sub_004BD238:boolean;//004BD238
	function sub_004BD278:boolean;//004BD278
	procedure sub_004BD2B8(a:Boolean);//004BD2B8
	procedure sub_004BD2F8(a:Boolean);//004BD2F8
	procedure sub_004BD334(a:Boolean);//004BD334
	procedure sub_004BD374(a:Boolean);//004BD374
	procedure sub_004BD3B4(var a:string);//004BD3B4
	procedure sub_004BD3FC(var a:string);//004BD3FC
	procedure sub_004BD444(var a:string);//004BD444
	procedure sub_004BD48C(var a:string);//004BD48C
	procedure sub_004BD4D4(var a:string);//004BD4D4
	//procedure sub_004BD51C(?:?);//004BD51C
	//procedure sub_004BD59C(?:?);//004BD59C
	//procedure sub_004BD61C(?:?);//004BD61C
	//procedure sub_004BD69C(?:?);//004BD69C
	//procedure sub_004BD71C(?:?);//004BD71C
	function sub_004BD79C:byte;//004BD79C
	procedure sub_004BD7D0(var a:string);//004BD7D0
	//procedure sub_004BD82C(?:Integer);//004BD82C
	//procedure sub_004BD858(?:?);//004BD858
	procedure sub_004BD8D4(a:Boolean);//004BD8D4
	function sub_004BD904:boolean;//004BD904
	procedure sub_004BD934(a:Boolean);//004BD934
	procedure sub_004BD968(a:Boolean);//004BD968
	procedure sub_004BD994(a:Boolean);//004BD994
	procedure sub_004BD9C8(a:Boolean);//004BD9C8
	function sub_004BD9F8:boolean;//004BD9F8
	function sub_004BDA2C:boolean;//004BDA2C
	function sub_004BDA58:boolean;//004BDA58
	function sub_004BDA8C:boolean;//004BDA8C
    var 
	   gvar_00617C94 : integer;
	   gvar_00617C98 : integer;
	   gvar_00617CB8 : boolean;
	   gvar_00617CB9 : boolean;
	   gvar_00617CBA : boolean;
	   gvar_00617CBB : boolean;
	   gvar_00617CBC : boolean;
	   gvar_00617CBD : boolean;
	   gvar_00617CBE : boolean;
	   gvar_00617CBF : boolean;
implementation

//004B901C
procedure sub_004B901C(a:AnsiString);
var
  StringList:TStringList;
begin//0
  //004B901C..004B9040
	StringList := sub_004B9500;
	if (StringList.IndexOf(LowerCase(a)) + 1 = 0) then
	begin//004B905F
	  StringList.Add(LowerCase(a));
	end;//2
	if (StringList.Count > sub_004B9468) then
	begin//004B908B
	  StringList.Delete(0);
	end;//2
	sub_004B964C(StringList);
end;//0


//004B90CC
procedure sub_004B90CC(MainMenu:TMainMenu; ItemIndex:dword);
var 
  J,I : integer;
begin//0
  //004B90CC
  J := MainMenu.Items.Items[ItemIndex].Count;

	for I := 0 to MainMenu.Items.Items[ItemIndex].Count - 1 do //004B9121
	  if (MainMenu.Items.Items[ItemIndex].Items[I].Caption = '&Quitter') then//004B9150
		J := I;
	 
  if (MainMenu.Items.Items[ItemIndex].Count - 1 = J) then Exit;


	for I := 1 to J do //004B91AF
	begin//004B91B0
	  MainMenu.Items.Items[ItemIndex].Delete(J + 1);
	end;//2
  
end;

//004B91F0
procedure sub_004B91F0(MainMenu:TMainMenu; ItemIndex:dword; {c:dword;} DrawItem:TMenuDrawItemEvent; Click:TNotifyEvent);
var
  lvar_C:TStringList;
  lvar_D,I :integer;
  MenuItem : TMenuItem;
begin//0
  //004B91F0
	if (sub_004B9410) then // utiliser Historique
	begin //004B9223
	  lvar_D := 0;
	  lvar_C := sub_004B9500;
	  if (lvar_C.count <> 0) then
	  begin//004B923F
		  for I := 1 to lvar_C.count do //004B9265
		  begin//004B926B
			if (FileExists(lvar_C[I])) then 
			begin
				if (lvar_D = 0) then
				begin//004B9290
				  MenuItem := TMenuItem.Create(Nil);
				  MenuItem.Caption := '-';
				   MainMenu.Items.Items[ItemIndex].Insert(MainMenu.Items.Items[ItemIndex].Count, MenuItem);
				  lvar_D := 1;
				end;//6
				MenuItem := TMenuItem.Create(Nil);
				MenuItem.Caption := lvar_C[I];
				MenuItem.OnClick := Click;
				MenuItem.OnDrawItem := DrawItem;
				if (I <= 9) then//004B931C
				  MenuItem.ShortCut := TextToShortCut('Alt+' + IntToStr(I))
				else //004B934B
				  MenuItem.ShortCut := TextToShortCut('Ctrl+' + IntToStr(I - 10));
			   
				MainMenu.Items.Items[ItemIndex].Insert(MainMenu.Items.Items[ItemIndex].Count, MenuItem);
			end;
		  end;//5
	  end;//3
	end;//2
end;//0


//004B9410
function sub_004B9410:boolean;
begin//0
  //004B9410
  result := sub_004971A0('utiliserHistorique', true{,0});
end;//0


//004B943C
procedure sub_004B943C(a:Boolean);
begin
{*
 004B943C    xor         ecx,ecx
 004B943E    mov         edx,eax
 004B9440    mov         eax,4B9454;'utiliserHistorique'
 004B9445    call        004974F0
 004B944A    ret
*}
end;

//004B9468
function sub_004B9468:dword;
begin//0
  //004B9468
  result := sub_00497268('nbFichiersHistorique', 5{, 0});
end;//0


//004B94A4
procedure sub_004B94A4(a:Int64);
begin
  sub_004975A8('nbFichiersHistorique',a{,false});

end;

//004B94D8  
procedure sub_004B94D8(MainMenu:TMainMenu; ItemIndex:dword; DrawItem:TMenuDrawItemEvent; Click:TNotifyEvent);
begin//0
  //004B94D8
  sub_004B90CC(MainMenu, ItemIndex);
  sub_004B91F0(MainMenu, ItemIndex, DrawItem, Click);
end;//0

//004B9500
function sub_004B9500:TStringList;
var
 StringList,lvar_4 :TStringList;
 Registry:TRegistry;
 I:integer;
begin//0
  //004B9500
	//004B951F
	lvar_4 := TStringList.Create;
	StringList := TStringList.Create;
	Registry := TRegistry.Create;
	Registry.RootKey := $80000001;
	if (Registry.KeyExists('Software\Carnet de Notes 2.x\Historique')) then
	begin//2
	  //004B9566
	  Registry.OpenKey('Software\Carnet de Notes 2.x\Historique', True);
	  Registry.GetValueNames(StringList);
	  
		
		for I := 0 to StringList.Count - 1 do //004B9592   
		  if (FileExists(StringList[I])) then 
			lvar_4.Add(StringList[I]);
		  
	   
	end;//2
	Registry.CloseKey;
	Registry.Free;
	StringList.Destroy;
	result := lvar_4;
end;//0

//004B964C
procedure sub_004B964C(a:TStrings);
var
 Registry:TRegistry;
 I:integer;
begin//0
  //004B964C..004B966A
	Registry := TRegistry.Create;
	Registry.RootKey := $80000001;

	if (Registry.KeyExists('Software\Carnet de Notes 2.x\Historique')) then //004B9697
	  Registry.DeleteKey('Software\Carnet de Notes 2.x\Historique');
	Registry.OpenKey('Software\Carnet de Notes 2.x\Historique', True);
 
	  for I := 0 to a.Count - 1 do//004B96CB
	  begin//004B96CE
		if (I > sub_004B9468 - 1) then Continue;
		if (FileExists(a[I]) = False) then Continue;
		Registry.WriteString(LowerCase(a[I]), '');
	  end;//3
   

	Registry.CloseKey;
	Registry.Free;
end;//0


//004B9794
function sub_004B9794:TStringList;
var
 StringList:TStringList;
 Registry : TRegistry;
begin//0
  //004B9794
  StringList := TStringList.Create;
  StringList.Sorted := True;
  Registry := TRegistry.Create;
  Registry.RootKey :=$80000001;
  if (Registry.KeyExists('Software\Carnet de Notes 2.x\Types de notes')) then
  begin//1
	//004B97D7
	Registry.OpenKey('Software\Carnet de Notes 2.x\Types de notes', True);
	Registry.GetValueNames(StringList);
  end//1
  else
  begin//1
	//004B97F0
	StringList := sub_004B9840;
  end;//1
  Registry.CloseKey;
  Registry.Free;
 result:= StringList;
end;//0

//004B9840
function sub_004B9840:TStringList;
var
  StringList:TStringList;
begin//0
  //004B9840
  StringList := TStringList.Create;
  with StringList do 
  begin
	Sorted := True;
	Add('Contrôle en classe');
	Add('Devoir à la maison');
	Add('Test en classe');
	Add('Oral');
	Add('Comportement');
	Add('Travaux pratiques');
  end;
  result := StringList;
end;//0

//004B9938
procedure sub_004B9938(a:TStrings);
begin
{*
 004B9938    push        ebp
 004B9939    mov         ebp,esp
 004B993B    add         esp,0FFFFFFF4
 004B993E    push        ebx
 004B993F    push        esi
 004B9940    push        edi
 004B9941    xor         edx,edx
 004B9943    mov         dword ptr [ebp-0C],edx
 004B9946    mov         dword ptr [ebp-4],eax
 004B9949    xor         eax,eax
 004B994B    push        ebp
 004B994C    push        4B99FF
 004B9951    push        dword ptr fs:[eax]
 004B9954    mov         dword ptr fs:[eax],esp
 004B9957    mov         dl,1
 004B9959    mov         eax,[00490114];TRegistry
 004B995E    call        TRegistry.Create;TRegistry.Create
 004B9963    mov         ebx,eax
 004B9965    mov         edx,80000001
 004B996A    mov         eax,ebx
 004B996C    call        TRegistry.SetRootKey
 004B9971    mov         edx,4B9A18;'Software\Carnet de Notes 2.x\Types de notes'
 004B9976    mov         eax,ebx
 004B9978    call        TRegistry.KeyExists
 004B997D    test        al,al
>004B997F    je          004B998D
 004B9981    mov         edx,4B9A18;'Software\Carnet de Notes 2.x\Types de notes'
 004B9986    mov         eax,ebx
 004B9988    call        TRegistry.DeleteKey
 004B998D    mov         cl,1
 004B998F    mov         edx,4B9A18;'Software\Carnet de Notes 2.x\Types de notes'
 004B9994    mov         eax,ebx
 004B9996    call        TRegistry.OpenKey
 004B999B    mov         eax,dword ptr [ebp-4]
 004B999E    mov         edx,dword ptr [eax]
 004B99A0    call        dword ptr [edx+14]
 004B99A3    mov         esi,eax
 004B99A5    sub         esi,1
>004B99A8    jno         004B99AF
 004B99AA    call        @IntOver
 004B99AF    test        esi,esi
>004B99B1    jl          004B99DB
 004B99B3    inc         esi
 004B99B4    mov         dword ptr [ebp-8],0
 004B99BB    lea         ecx,[ebp-0C]
 004B99BE    mov         edx,dword ptr [ebp-8]
 004B99C1    mov         eax,dword ptr [ebp-4]
 004B99C4    mov         edi,dword ptr [eax]
 004B99C6    call        dword ptr [edi+0C]
 004B99C9    mov         edx,dword ptr [ebp-0C]
 004B99CC    xor         ecx,ecx
 004B99CE    mov         eax,ebx
 004B99D0    call        TRegistry.WriteString
 004B99D5    inc         dword ptr [ebp-8]
 004B99D8    dec         esi
>004B99D9    jne         004B99BB
 004B99DB    mov         eax,ebx
 004B99DD    call        TRegistry.CloseKey
 004B99E2    mov         eax,ebx
 004B99E4    call        TObject.Free
 004B99E9    xor         eax,eax
 004B99EB    pop         edx
 004B99EC    pop         ecx
 004B99ED    pop         ecx
 004B99EE    mov         dword ptr fs:[eax],edx
 004B99F1    push        4B9A06
 004B99F6    lea         eax,[ebp-0C]
 004B99F9    call        @LStrClr
 004B99FE    ret
>004B99FF    jmp         @HandleFinally
>004B9A04    jmp         004B99F6
 004B9A06    pop         edi
 004B9A07    pop         esi
 004B9A08    pop         ebx
 004B9A09    mov         esp,ebp
 004B9A0B    pop         ebp
 004B9A0C    ret
*}
end;

//004B9A44
function sub_004B9A44:TStringlist;
var 
  StringList:TStringList;
  Registry:TRegistry;
begin//0
  //004B9A44
  StringList := TStringList.Create;
  Registry := TRegistry.Create;
  Registry.RootKey := $80000001;
  if (Registry.KeyExists('Software\Carnet de Notes 2.x\Periodes')) then
  begin//1
    //004B9A7F
    Registry.OpenKey('Software\Carnet de Notes 2.x\Periodes', True);
    Registry.GetValueNames(StringList);
    Registry.CloseKey;
  end;//1
  StringList.Insert(0, 'Trimestres');
  StringList.Insert(1, 'Semestres');
  StringList.Insert(2, 'Mois');
  Registry.Free;
  result := StringList;//ESI
end;//0



//004B9B44
{*function sub_004B9B44:?;
//begin
 004B9B44    push        ebx
 004B9B45    mov         dl,1
 004B9B47    mov         eax,[00490114];TRegistry
 004B9B4C    call        TRegistry.Create;TRegistry.Create
 004B9B51    mov         ebx,eax
 004B9B53    mov         edx,80000001
 004B9B58    mov         eax,ebx
 004B9B5A    call        TRegistry.SetRootKey
 004B9B5F    mov         edx,4B9B94;'Software\Carnet de Notes 2.x\Periodes'
 004B9B64    mov         eax,ebx
 004B9B66    call        TRegistry.KeyExists
 004B9B6B    test        al,al
>004B9B6D    je          004B9B7B
 004B9B6F    mov         edx,4B9B94;'Software\Carnet de Notes 2.x\Periodes'
 004B9B74    mov         eax,ebx
 004B9B76    call        TRegistry.DeleteKey
 004B9B7B    mov         eax,ebx
 004B9B7D    call        TObject.Free
 004B9B82    call        004B9A44
 004B9B87    pop         ebx
 004B9B88    ret
//end;*}

//004B9BBC
procedure sub_004B9BBC(a:TColor);
begin
{*
 004B9BBC    push        ebx
 004B9BBD    mov         ebx,eax
 004B9BBF    call        004B9C34
 004B9BC4    cmp         ebx,eax
>004B9BC6    je          004B9BDD
 004B9BC8    xor         ecx,ecx
 004B9BCA    mov         edx,ebx
 004B9BCC    mov         eax,4B9BE8;'lignesImpaires'
 004B9BD1    call        00497438
 004B9BD6    mov         byte ptr ds:[617CBE],1;gvar_00617CBE
 004B9BDD    pop         ebx
 004B9BDE    ret
*}
end;

//004B9BF8
procedure sub_004B9BF8(a:TColor);
begin
{*
 004B9BF8    push        ebx
 004B9BF9    mov         ebx,eax
 004B9BFB    call        004B9C80
 004B9C00    cmp         ebx,eax
>004B9C02    je          004B9C19
 004B9C04    xor         ecx,ecx
 004B9C06    mov         edx,ebx
 004B9C08    mov         eax,4B9C24;'lignesPaires'
 004B9C0D    call        00497438
 004B9C12    mov         byte ptr ds:[617CBD],1;gvar_00617CBD
 004B9C19    pop         ebx
 004B9C1A    ret
*}
end;

//004B9C34
function sub_004B9C34:TColor;
begin	  
  //004B9C34
 // if (gvar_00617CBE = 0) then Exit;
  result {gvar_00617CAC}:= sub_004970D8('lignesImpaires', sub_004B9CCC);
 // gvar_00617CBE := 0;
  end;//0

//004B9C80
  function sub_004B9C80:TColor;

  begin
		//004B9C80
	  //if (gvar_00617CBD = 0) then Exit;
	  result{gvar_00617CB0} := sub_004970D8('lignesPaires', sub_004B9CD4);
	  //result := gvar_00617CB0;
	  //gvar_00617CBD := 0;
  end;//0

//004B9CCC
function sub_004B9CCC:TColor;
begin//0
  //004B9CCC
  result := $E2FFFF;
end;//0

//004B9CD4
function sub_004B9CD4:TColor;
begin//004B9CD4
  result := $F4FFE1;
end;//0

//004B9CDC
{*function sub_004B9CDC:?;
//begin
 004B9CDC    mov         eax,0FFFF00
 004B9CE1    ret
//end;*}

//004B9CE4
procedure sub_004B9CE4(a:TColor);
begin
{*
 004B9CE4    push        ebx
 004B9CE5    mov         ebx,eax
 004B9CE7    call        004B9D24
 004B9CEC    cmp         ebx,eax
>004B9CEE    je          004B9D05
 004B9CF0    xor         ecx,ecx
 004B9CF2    mov         edx,ebx
 004B9CF4    mov         eax,4B9D10;'couleurSelection'
 004B9CF9    call        00497438
 004B9CFE    mov         byte ptr ds:[617CBF],1;gvar_00617CBF
 004B9D05    pop         ebx
 004B9D06    ret
*}
end;

//004B9D24
function sub_004B9D24:TColor;
var
 gvar_00617CB4:TColor;
begin//0
  //004B9D24
  //if (gvar_00617CBF = 0) then Exit;
  gvar_00617CB4 := sub_004970D8('couleurSelection', $FFFF00);
  result := gvar_00617CB4;
  //gvar_00617CBF := 0;
end;//0

//004B9D74
procedure sub_004B9D74(a:Integer);
begin
{*
 004B9D74    xor         edx,edx
 004B9D76    mov         dl,al
 004B9D78    xor         ecx,ecx
 004B9D7A    mov         eax,4B9D90;'arrondirMoyennes'
 004B9D7F    call        004975A8
 004B9D84    ret
*}
end;

//004B9DA4
procedure sub_004B9DA4(a:Integer);
begin
{*
 004B9DA4    mov         edx,dword ptr ds:[615964];^gvar_00617904
 004B9DAA    cmp         byte ptr [edx],0
>004B9DAD    je          004B9DBE
 004B9DAF    mov         cl,1
 004B9DB1    mov         edx,eax
 004B9DB3    mov         eax,4B9DD8;'moyennesSur'
 004B9DB8    call        004975A8
 004B9DBD    ret
 004B9DBE    xor         ecx,ecx
 004B9DC0    mov         edx,eax
 004B9DC2    mov         eax,4B9DD8;'moyennesSur'
 004B9DC7    call        004975A8
 004B9DCC    ret
*}
end;

//004B9DE4
procedure sub_004B9DE4(a:Integer);
begin
{*
 004B9DE4    xor         edx,edx
 004B9DE6    mov         dl,al
 004B9DE8    xor         ecx,ecx
 004B9DEA    mov         eax,4B9E00;'trierMoyennes'
 004B9DEF    call        004975A8
 004B9DF4    ret
*}
end;

//004B9E10
function sub_004B9E10:integer; //arrondirMoyennes
begin//0
  //004B9E10
  result := sub_00497268('arrondirMoyennes', 0);
end;//0


//004B9E48
function sub_004B9E48:integer; //moyennesSur
begin//0
  //004B9E48
  {if (gvar_00617905 <> 0) then//004B9E52
	 result := sub_00497268('moyennesSur',20, 1);
   else
  if (gvar_00617904 <> 0) then//004B9E6B
	 result:= sub_00497268('moyennesSur',20, 1);
   }
   result := sub_00497268('moyennesSur',20{, 1});
end;//0


//004B9EA0
function sub_004B9EA0:dword;
begin//0
  //004B9EA0
  result := sub_00497268('trierMoyennes', 0);
end;//0


//004B9ED4
procedure sub_004B9ED4(a:Boolean);
begin
{*
 004B9ED4    xor         ecx,ecx
 004B9ED6    mov         edx,eax
 004B9ED8    mov         eax,4B9EEC;'moyenneParTypeDeNotes'
 004B9EDD    call        004974F0
 004B9EE2    ret
*}
end;

//004B9F04
procedure sub_004B9F04(a:Boolean);
begin
{*
 004B9F04    xor         ecx,ecx
 004B9F06    mov         edx,eax
 004B9F08    mov         eax,4B9F1C;'moyennesEcritEtOral'
 004B9F0D    call        004974F0
 004B9F12    ret
*}
end;

//004B9F30
function sub_004B9F30:boolean;
begin
 result := sub_004971A0('moyenneParTypeDeNotes', false{,0});
end;

//004B9F60
function sub_004B9F60:boolean;
begin
 result := sub_004971A0('moyennesEcritEtOral', false{,0});
end;

//004B9F8C
function sub_004B9F8C:TColor;
begin//0
  //004B9F8C
  if (gvar_00617CB8) then 
  begin
	gvar_00617C98 := sub_004970D8('couleur1Note', sub_004BA264);
	Result := gvar_00617C98;
	gvar_00617CB8 := false;
  end
  else 
  Result := gvar_00617C98;
end;//0


//004B9FD8
function sub_004B9FD8:TColor;
begin//0
  //004B9FD8
  //if (gvar_00617CB9 <> 0) then 
  {gvar_00617C9C} result := sub_004970D8('couleur2Note', sub_004BA26C);
  //gvar_00617CB9 := 0;
end;//0


//004BA024
function sub_004BA024:TColor;
begin//0
  //004BA024
  //if (gvar_00617CBA = 0) then Exit;
  {gvar_00617CA0}result := sub_004970D8('couleur3Note', sub_004BA274);
  //gvar_00617CBA := 0;
end;//0


//004BA070
function sub_004BA070:TColor;
begin//0
  //004BA070
  //if (gvar_00617CBB = 0) then Exit;
  {gvar_00617CA4} result := sub_004970D8('couleur4Note', sub_004BA27C);
  
  //gvar_00617CBB := 0;
  
end;//0


//004BA0BC
function sub_004BA0BC:TColor;
begin//0
  //004BA0BC
  //if (gvar_00617CBC = 0) then Exit;

  {gvar_00617CA8}result := sub_004970D8('couleur5Note', sub_004BA280);
   
  //gvar_00617CBC := 0;
 
end;//0


//004BA108
function sub_004BA108:TColor;
begin
 result := sub_004970D8('couleurMurGauche', sub_004BBDD0);
end;

//004BA138
procedure sub_004BA138(a:TColor);
begin
{*
 004BA138    push        ebx
 004BA139    mov         ebx,eax
 004BA13B    call        004B9F8C
 004BA140    cmp         ebx,eax
>004BA142    je          004BA159
 004BA144    xor         ecx,ecx
 004BA146    mov         edx,ebx
 004BA148    mov         eax,4BA164;'couleur1Note'
 004BA14D    call        00497438
 004BA152    mov         byte ptr ds:[617CB8],1;gvar_00617CB8
 004BA159    pop         ebx
 004BA15A    ret
*}
end;

//004BA174
procedure sub_004BA174(a:TColor);
begin
{*
 004BA174    push        ebx
 004BA175    mov         ebx,eax
 004BA177    call        004B9FD8
 004BA17C    cmp         ebx,eax
>004BA17E    je          004BA195
 004BA180    xor         ecx,ecx
 004BA182    mov         edx,ebx
 004BA184    mov         eax,4BA1A0;'couleur2Note'
 004BA189    call        00497438
 004BA18E    mov         byte ptr ds:[617CB9],1;gvar_00617CB9
 004BA195    pop         ebx
 004BA196    ret
*}
end;

//004BA1B0
procedure sub_004BA1B0(a:TColor);
begin
{*
 004BA1B0    push        ebx
 004BA1B1    mov         ebx,eax
 004BA1B3    call        004BA024
 004BA1B8    cmp         ebx,eax
>004BA1BA    je          004BA1D1
 004BA1BC    xor         ecx,ecx
 004BA1BE    mov         edx,ebx
 004BA1C0    mov         eax,4BA1DC;'couleur3Note'
 004BA1C5    call        00497438
 004BA1CA    mov         byte ptr ds:[617CBA],1;gvar_00617CBA
 004BA1D1    pop         ebx
 004BA1D2    ret
*}
end;

//004BA1EC
procedure sub_004BA1EC(a:TColor);
begin
{*
 004BA1EC    push        ebx
 004BA1ED    mov         ebx,eax
 004BA1EF    call        004BA070
 004BA1F4    cmp         ebx,eax
>004BA1F6    je          004BA20D
 004BA1F8    xor         ecx,ecx
 004BA1FA    mov         edx,ebx
 004BA1FC    mov         eax,4BA218;'couleur4Note'
 004BA201    call        00497438
 004BA206    mov         byte ptr ds:[617CBB],1;gvar_00617CBB
 004BA20D    pop         ebx
 004BA20E    ret
*}
end;

//004BA228
procedure sub_004BA228(a:TColor);
begin
{*
 004BA228    push        ebx
 004BA229    mov         ebx,eax
 004BA22B    call        004BA0BC
 004BA230    cmp         ebx,eax
>004BA232    je          004BA249
 004BA234    xor         ecx,ecx
 004BA236    mov         edx,ebx
 004BA238    mov         eax,4BA254;'couleur5Note'
 004BA23D    call        00497438
 004BA242    mov         byte ptr ds:[617CBC],1;gvar_00617CBC
 004BA249    pop         ebx
 004BA24A    ret
*}
end;

//004BA264
function sub_004BA264:TColor;
begin
 result := $0FF;
end;

//004BA26C
function sub_004BA26C:TColor;
begin
 result := $0C00000;
 
end;

//004BA274
function sub_004BA274:TColor;
begin
 result := $8000;
end;

//004BA27C
function sub_004BA27C:TColor;
begin
  result := 0;
end;

//004BA280
function sub_004BA280:TColor;
begin
 result := $0FFFF;
end;

//004BA288
procedure sub_004BA288(a:Boolean);
begin
{*
 004BA288    xor         ecx,ecx
 004BA28A    mov         edx,eax
 004BA28C    mov         eax,4BA2A0;'colorationNote'
 004BA291    call        004974F0
 004BA296    ret
*}
end;

//004BA2B0
function sub_004BA2B0:boolean;
begin//0
   result:= sub_004971A0('colorationNote', true{,0});
end;//0


//004BA2D8
procedure sub_004BA2D8(a:Boolean);
begin
{*
 004BA2D8    xor         ecx,ecx
 004BA2DA    mov         edx,eax
 004BA2DC    mov         eax,4BA2F0;'fichierBak'
 004BA2E1    call        004974F0
 004BA2E6    ret
*}
end;

//004BA2FC
function sub_004BA2FC:boolean;
begin//0
  //004BA2FC
  result := sub_004971A0('fichierBak', true{,0});
end;//0


//004BA320
procedure sub_004BA320(a:Integer);
begin
{*
 004BA320    xor         edx,edx
 004BA322    mov         dl,al
 004BA324    xor         ecx,ecx
 004BA326    mov         eax,4BA33C;'ongletsGrillesBilans'
 004BA32B    call        004975A8
 004BA330    ret
*}
end;

//004BA354
procedure sub_004BA354(a:Integer);
begin
{*
 004BA354    xor         edx,edx
 004BA356    mov         dl,al
 004BA358    xor         ecx,ecx
 004BA35A    mov         eax,4BA370;'ongletsGrillesNotes'
 004BA35F    call        004975A8
 004BA364    ret
*}
end;

//004BA384
function sub_004BA384:dword;
begin//0
  //004BA384
  result := sub_00497268('ongletsGrillesBilans', 0{, 0});
end;//0


//004BA3C0
function sub_004BA3C0:dword;
begin//0
  //004BA3C0
 result:=sub_00497268('ongletsGrillesNotes', 0{, 0});
end;//0


//004BA3F8
function sub_004BA3F8(a:String):TStringlist;
var
 S:TStringList;
 R:TRegistry;

begin//
	//004BA3F

	//004BA41C
	S := TStringList.Create;
	R := TRegistry.Create;
	R.RootKey :=$80000001;
	if (R.KeyExists('Software\Carnet de Notes 2.x\Periodes\' + a + '\noms')) then
	begin//2
	  //004BA46C
	  R.OpenKey('Software\Carnet de Notes 2.x\Periodes\' + a + '\noms', True);
	  R.GetValueNames(S);
	  R.CloseKey;
	end//2
	else
	begin//2
	  //004BA4A7
	  if (a = 'Trimestres') then
	  begin//3
		//004BA4B6
		S.Add('Premier trimestre');
		S.Add('Deuxième trimestre');
		S.Add('Troisième trimestre');
	  end//3
	  else
	  begin//3
		//004BA4DF
		
		if (a = 'Semestres') then
		begin//4
		  //004BA4EE
		  S.Add('Premier semestre');
		  S.Add('Deuxième semestre');
		end//4
		else
		begin//4
		  //004BA50B
		  
		  if (a = 'Mois') then
		  begin//5
			//004BA51E
			S.Add('Septembre');
			S.Add('Octobre');
			S.Add('Novembre');
			S.Add('Décembre');
			S.Add('Janvier');
			S.Add('Février');
			S.Add('Mars');
			S.Add('Avril');
			S.Add('Mai');
			S.Add('Juin');
			S.Add('Juillet');
			S.Add('Août');
		  end;//5
		end;//4
	  end;//3
	end;//2
   
	R.Free;
end;
	//004BA5C
{*//procedure sub_004BA7B0(?:?; ?:TStrings);
//begin
004BA7B0    push        ebp
004BA7B1    mov         ebp,esp
004BA7B3    xor         ecx,ecx
004BA7B5    push        ecx
004BA7B6    push        ecx
004BA7B7    push        ecx
004BA7B8    push        ecx
004BA7B9    push        ecx
004BA7BA    push        ecx
004BA7BB    push        ecx
004BA7BC    push        ebx
004BA7BD    push        esi
004BA7BE    push        edi
004BA7BF    mov         dword ptr [ebp-8],edx
004BA7C2    mov         dword ptr [ebp-4],eax
004BA7C5    mov         eax,dword ptr [ebp-4]
004BA7C8    call        @LStrAddRef
004BA7CD    xor         eax,eax
004BA7CF    push        ebp
004BA7D0    push        4BA8E5
004BA7D5    push        dword ptr fs:[eax]
004BA7D8    mov         dword ptr fs:[eax],esp
004BA7DB    mov         dl,1
004BA7DD    mov         eax,[00490114];TRegistry
004BA7E2    call        TRegistry.Create;TRegistry.Create
004BA7E7    mov         ebx,eax
004BA7E9    mov         edx,80000001
004BA7EE    mov         eax,ebx
004BA7F0    call        TRegistry.SetRootKey
004BA7F5    lea         eax,[ebp-10]
004BA7F8    mov         ecx,dword ptr [ebp-4]
004BA7FB    mov         edx,4BA8FC;'Software\Carnet de Notes 2.x\Periodes\'
004BA800    call        @LStrCat3
004BA805    mov         edx,dword ptr [ebp-10]
004BA808    mov         eax,ebx
004BA80A    call        TRegistry.KeyExists
004BA80F    test        al,al
>	004BA811    je          004BA82D
004BA813    lea         eax,[ebp-14]
004BA816    mov         ecx,dword ptr [ebp-4]
004BA819    mov         edx,4BA8FC;'Software\Carnet de Notes 2.x\Periodes\'
004BA81E    call        @LStrCat3
004BA823    mov         edx,dword ptr [ebp-14]
004BA826    mov         eax,ebx
004BA828    call        TRegistry.DeleteKey
004BA82D    mov         cl,1
004BA82F    mov         edx,4BA92C;'Software\Carnet de Notes 2.x\Periodes'
004BA834    mov         eax,ebx
004BA836    call        TRegistry.OpenKey
004BA83B    xor         ecx,ecx
004BA83D    mov         edx,dword ptr [ebp-4]
004BA840    mov         eax,ebx
004BA842    call        TRegistry.WriteString
004BA847    mov         eax,ebx
004BA849    call        TRegistry.CloseKey
004BA84E    push        4BA8FC;'Software\Carnet de Notes 2.x\Periodes\'
004BA853    push        dword ptr [ebp-4]
004BA856    push        4BA95C;'\noms'
004BA85B    lea         eax,[ebp-18]
004BA85E    mov         edx,3
004BA863    call        @LStrCatN
004BA868    mov         edx,dword ptr [ebp-18]
004BA86B    mov         cl,1
004BA86D    mov         eax,ebx
004BA86F    call        TRegistry.OpenKey
004BA874    mov         eax,dword ptr [ebp-8]
004BA877    mov         edx,dword ptr [eax]
004BA879    call        dword ptr [edx+14]
004BA87C    mov         esi,eax
004BA87E    sub         esi,1
>	004BA881    jno         004BA888
004BA883    call        @IntOver
004BA888    test        esi,esi
>	004BA88A    jl          004BA8B4
004BA88C    inc         esi
004BA88D    mov         dword ptr [ebp-0C],0
004BA894    lea         ecx,[ebp-1C]
004BA897    mov         edx,dword ptr [ebp-0C]
004BA89A    mov         eax,dword ptr [ebp-8]
004BA89D    mov         edi,dword ptr [eax]
004BA89F    call        dword ptr [edi+0C]
004BA8A2    mov         edx,dword ptr [ebp-1C]
004BA8A5    xor         ecx,ecx
004BA8A7    mov         eax,ebx
004BA8A9    call        TRegistry.WriteString
004BA8AE    inc         dword ptr [ebp-0C]
004BA8B1    dec         esi
>	004BA8B2    jne         004BA894
004BA8B4    mov         eax,ebx
004BA8B6    call        TRegistry.CloseKey
004BA8BB    mov         eax,ebx
004BA8BD    call        TObject.Free
004BA8C2    xor         eax,eax
004BA8C4    pop         edx
004BA8C5    pop         ecx
004BA8C6    pop         ecx
004BA8C7    mov         dword ptr fs:[eax],edx
004BA8CA    push        4BA8EC
004BA8CF    lea         eax,[ebp-1C]
004BA8D2    mov         edx,4
004BA8D7    call        @LStrArrayClr
004BA8DC    lea         eax,[ebp-4]
004BA8DF    call        @LStrClr
004BA8E4    ret
>	004BA8E5    jmp         @HandleFinally
>	004BA8EA    jmp         004BA8CF
004BA8EC    pop         edi
004BA8ED    pop         esi
004BA8EE    pop         ebx
004BA8EF    mov         esp,ebp
004BA8F1    pop         ebp
004BA8F2    ret
//end;*}
//004BA964
{	{*//procedure sub_004BA964(?:?);
///begin
004BA964    push        ebp
004BA965    mov         ebp,esp
004BA967    push        0
004BA969    push        0
004BA96B    push        0
004BA96D    push        ebx
004BA96E    mov         dword ptr [ebp-4],eax
004BA971    mov         eax,dword ptr [ebp-4]
004BA974    call        @LStrAddRef
004BA979    xor         eax,eax
004BA97B    push        ebp
004BA97C    push        4BAA1A
004BA981    push        dword ptr fs:[eax]
004BA984    mov         dword ptr fs:[eax],esp
004BA987    mov         dl,1
004BA989    mov         eax,[00490114];TRegistry
004BA98E    call        TRegistry.Create;TRegistry.Create
004BA993    mov         ebx,eax
004BA995    mov         edx,80000001
004BA99A    mov         eax,ebx
004BA99C    call        TRegistry.SetRootKey
004BA9A1    lea         eax,[ebp-8]
004BA9A4    mov         ecx,dword ptr [ebp-4]
004BA9A7    mov         edx,4BAA30;'Software\Carnet de Notes 2.x\Periodes\'
004BA9AC    call        @LStrCat3
004BA9B1    mov         edx,dword ptr [ebp-8]
004BA9B4    mov         eax,ebx
004BA9B6    call        TRegistry.KeyExists
004BA9BB    test        al,al
>	004BA9BD    je          004BA9D9
004BA9BF    lea         eax,[ebp-0C]
004BA9C2    mov         ecx,dword ptr [ebp-4]
004BA9C5    mov         edx,4BAA30;'Software\Carnet de Notes 2.x\Periodes\'
004BA9CA    call        @LStrCat3
004BA9CF    mov         edx,dword ptr [ebp-0C]
004BA9D2    mov         eax,ebx
004BA9D4    call        TRegistry.DeleteKey
004BA9D9    mov         cl,1
004BA9DB    mov         edx,4BAA60;'Software\Carnet de Notes 2.x\Periodes'
004BA9E0    mov         eax,ebx
004BA9E2    call        TRegistry.OpenKey
004BA9E7    mov         edx,dword ptr [ebp-4]
004BA9EA    mov         eax,ebx
004BA9EC    call        TRegistry.DeleteValue
004BA9F1    mov         eax,ebx
004BA9F3    call        TRegistry.CloseKey
004BA9F8    mov         eax,ebx
004BA9FA    call        TObject.Free
004BA9FF    xor         eax,eax
004BAA01    pop         edx
004BAA02    pop         ecx
004BAA03    pop         ecx
004BAA04    mov         dword ptr fs:[eax],edx
004BAA07    push        4BAA21
004BAA0C    lea         eax,[ebp-0C]
004BAA0F    mov         edx,3
004BAA14    call        @LStrArrayClr
004BAA19    ret
>	004BAA1A    jmp         @HandleFinally
>	004BAA1F    jmp         004BAA0C
004BAA21    pop         ebx
004BAA22    mov         esp,ebp
004BAA24    pop         ebp
004BAA25    ret
//end;*}

///004BAA88
function sub_004BAA88(a:dword):TInclureImpression;
var
 Registry:TRegistry;
 I:integer;
begin//0
 //004BAA88

   //004BAAAC
   case a of
	 0:
	 begin//3
	   //004BABE0
	   if ({gvar_00617CC0 }InclureImpression = Nil) then //004BABE9
		 {gvar_00617CC0}InclureImpression := TInclureImpression.Create(a);
		  
	   
	   Registry := TRegistry.Create;
	   Registry.RootKey := $80000001;
	   if (Registry.KeyExists('Software\Carnet de Notes 2.x\Inclure impression\Séries de notes')) then
	   begin//4
		 //004BAC2D
		 Registry.OpenKey('Software\Carnet de Notes 2.x\Inclure impression\Séries de notes', True);

			for I:=0 to InclureImpression.f8.count - 1 do 
			begin//004BAC5B
				try//004BAC74
				  InclureImpression.fC[I] := Registry.ReadBool(InclureImpression.f8[I]);
				except//004BACBA
				  InclureImpression.fC[I] := true;
				end;//6
			end;

		 Registry.CloseKey;
	   end;//4
	   Registry.Free;
	  // ESI := InclureImpression;
	  result := InclureImpression;
	 end;//3
	 1:
	 begin//3
	   //004BACFC
	   if ({gvar_00617CC4}InclureImpression1 = Nil) then
	   begin//4
		 //004BAD05
		 {gvar_00617CC4}InclureImpression1 := TInclureImpression.Create(a);
		 
	   end;//4
	   Registry := TRegistry.Create;;
	   Registry.RootKey := $80000001;
	   if (Registry.KeyExists('Software\Carnet de Notes 2.x\Inclure impression\Bilans')) then
	   begin//004BAD42
		 Registry.OpenKey('Software\Carnet de Notes 2.x\Inclure impression\Bilans', True);

		   for I := 0 to InclureImpression1.f8.count - 1 do //004BAD6B
		   begin//004BAD76
			 InclureImpression1.fC[I] := Registry.ReadBool(InclureImpression1.f8[I]);
		   end;//6
		 
		 Registry.CloseKey;
	   end;//4
	   Registry.Free;
	   //ESI := gvar_00617CC4;
	   result := InclureImpression1;
	 end;//3
	 2:
	 begin//3
	   //004BAAC4
	   if ({gvar_00617CC8}InclureImpression2 = Nil) then
	   begin//4
		 //004BAACD
		 {gvar_00617CC8}InclureImpression2 := TInclureImpression.Create(a);
		 
	   end;//4
	   Registry := TRegistry.Create;
	   Registry.RootKey := $80000001;

	   if (Registry.KeyExists('Software\Carnet de Notes 2.x\Inclure impression\Grille vierge')) then
	   begin//004BAB11;
		 Registry.OpenKey('Software\Carnet de Notes 2.x\Inclure impression\Grille vierge', True);
			for I:=0 to InclureImpression2.f8.count - 1 do 
			begin //004BAB3F
				try//004BAB58
				  InclureImpression2.fC[I] := Registry.ReadBool(InclureImpression2.f8[I])
				except//004BAB9E
				  InclureImpression2.fC[I] := true;
				end;//6
			end;
		 Registry.CloseKey;
	   end;//4
	   Registry.Free;
	   //ESI := gvar_00617CC8;
	   result := InclureImpression2;
	 end;//3
   end;//2
end;//0

//004BAEC4
function sub_004BAEC4:boolean;
begin//0
 //004BAEC4
 result := sub_004971A0('numeroterElevesSeriesDeNotes', true{,0});
end;//0


//004BAEFC
procedure sub_004BAEFC(a:Boolean);
begin
  sub_004974F0('numeroterElevesSeriesDeNotes',a{,0});
end;

//004BAF34
function sub_004BAF34:boolean;
begin
 result := sub_004971A0('numeroterElevesBilans',true{,0});
end;

//004BAF64
procedure sub_004BAF64(a:Boolean);
begin
{*
004BAF64    xor         ecx,ecx
004BAF66    mov         edx,eax
004BAF68    mov         eax,4BAF7C;'numeroterElevesBilans'
004BAF6D    call        004974F0
004BAF72    ret
*}
end;

//004BAF94
procedure sub_004BAF94(a:byte; U:TInclureImpression);
begin
{
004BAF94    push        ebp
004BAF95    mov         ebp,esp
004BAF97    add         esp,0FFFFFFE4
004BAF9A    push        ebx
004BAF9B    push        esi
004BAF9C    push        edi
004BAF9D    xor         ecx,ecx
004BAF9F    mov         dword ptr [ebp-1C],ecx
004BAFA2    mov         dword ptr [ebp-18],ecx
004BAFA5    mov         dword ptr [ebp-14],ecx
004BAFA8    mov         dword ptr [ebp-4],edx
004BAFAB    xor         edx,edx
004BAFAD    push        ebp
004BAFAE    push        4BB27C
004BAFB3    push        dword ptr fs:[edx]
004BAFB6    mov         dword ptr fs:[edx],esp
004BAFB9    sub         al,1
>	004BAFBB    jb          004BB0AC
>	004BAFC1    je          004BB189
004BAFC7    dec         al
>	004BAFC9    jne         004BB261
004BAFCF    mov         dl,1
004BAFD1    mov         eax,[00490114];TRegistry
004BAFD6    call        TRegistry.Create;TRegistry.Create
004BAFDB    mov         dword ptr [ebp-8],eax
004BAFDE    mov         edx,80000001
004BAFE3    mov         eax,dword ptr [ebp-8]
004BAFE6    call        TRegistry.SetRootKey
004BAFEB    mov         edx,4BB294;'Software\Carnet de Notes 2.x\Inclure impression\Grille vierge'
004BAFF0    mov         eax,dword ptr [ebp-8]
004BAFF3    call        TRegistry.KeyExists
004BAFF8    test        al,al
>	004BAFFA    je          004BB009
004BAFFC    mov         edx,4BB294;'Software\Carnet de Notes 2.x\Inclure impression\Grille vierge'
004BB001    mov         eax,dword ptr [ebp-8]
004BB004    call        TRegistry.DeleteKey
004BB009    mov         cl,1
004BB00B    mov         edx,4BB294;'Software\Carnet de Notes 2.x\Inclure impression\Grille vierge'
004BB010    mov         eax,dword ptr [ebp-8]
004BB013    call        TRegistry.OpenKey
004BB018    mov         eax,[00617CC8];gvar_00617CC8:TInclureImpression
004BB01D    mov         eax,dword ptr [eax+8]
004BB020    mov         edx,dword ptr [eax]
004BB022    call        dword ptr [edx+14]
004BB025    mov         esi,eax
004BB027    sub         esi,1
>	004BB02A    jno         004BB031
004BB02C    call        @IntOver
004BB031    test        esi,esi
>	004BB033    jl          004BB097
004BB035    inc         esi
004BB036    xor         ebx,ebx
004BB038    mov         eax,dword ptr [ebp-4]
004BB03B    mov         eax,dword ptr [eax+0C]
004BB03E    cmp         ebx,dword ptr [eax-4]
>	004BB041    jb          004BB048
004BB043    call        @BoundErr
004BB048    mov         al,byte ptr [eax+ebx]
004BB04B    mov         edx,dword ptr ds:[617CC8];gvar_00617CC8:TInclureImpression
004BB051    mov         edx,dword ptr [edx+0C]
004BB054    cmp         ebx,dword ptr [edx-4]
>	004BB057    jb          004BB05E
004BB059    call        @BoundErr
004BB05E    mov         byte ptr [edx+ebx],al
004BB061    lea         ecx,[ebp-14]
004BB064    mov         eax,[00617CC8];gvar_00617CC8:TInclureImpression
004BB069    mov         eax,dword ptr [eax+8]
004BB06C    mov         edx,ebx
004BB06E    mov         edi,dword ptr [eax]
004BB070    call        dword ptr [edi+0C]
004BB073    mov         edx,dword ptr [ebp-14]
004BB076    mov         eax,[00617CC8];gvar_00617CC8:TInclureImpression
004BB07B    mov         eax,dword ptr [eax+0C]
004BB07E    cmp         ebx,dword ptr [eax-4]
>	004BB081    jb          004BB088
004BB083    call        @BoundErr
004BB088    mov         cl,byte ptr [eax+ebx]
004BB08B    mov         eax,dword ptr [ebp-8]
004BB08E    call        TRegistry.WriteBool
004BB093    inc         ebx
004BB094    dec         esi
>	004BB095    jne         004BB038
004BB097    mov         eax,dword ptr [ebp-8]
004BB09A    call        TRegistry.CloseKey
004BB09F    mov         eax,dword ptr [ebp-8]
004BB0A2    call        TObject.Free
>	004BB0A7    jmp         004BB261
004BB0AC    mov         dl,1
004BB0AE    mov         eax,[00490114];TRegistry
004BB0B3    call        TRegistry.Create;TRegistry.Create
004BB0B8    mov         dword ptr [ebp-0C],eax
004BB0BB    mov         edx,80000001
004BB0C0    mov         eax,dword ptr [ebp-0C]
004BB0C3    call        TRegistry.SetRootKey
004BB0C8    mov         edx,4BB2DC;'Software\Carnet de Notes 2.x\Inclure impression\Séries de notes'
004BB0CD    mov         eax,dword ptr [ebp-0C]
004BB0D0    call        TRegistry.KeyExists
004BB0D5    test        al,al
>	004BB0D7    je          004BB0E6
004BB0D9    mov         edx,4BB2DC;'Software\Carnet de Notes 2.x\Inclure impression\Séries de notes'
004BB0DE    mov         eax,dword ptr [ebp-0C]
004BB0E1    call        TRegistry.DeleteKey
004BB0E6    mov         cl,1
004BB0E8    mov         edx,4BB2DC;'Software\Carnet de Notes 2.x\Inclure impression\Séries de notes'
004BB0ED    mov         eax,dword ptr [ebp-0C]
004BB0F0    call        TRegistry.OpenKey
004BB0F5    mov         eax,[00617CC0];gvar_00617CC0:TInclureImpression
004BB0FA    mov         eax,dword ptr [eax+8]
004BB0FD    mov         edx,dword ptr [eax]
004BB0FF    call        dword ptr [edx+14]
004BB102    mov         esi,eax
004BB104    sub         esi,1
>	004BB107    jno         004BB10E
004BB109    call        @IntOver
004BB10E    test        esi,esi
>	004BB110    jl          004BB174
004BB112    inc         esi
004BB113    xor         ebx,ebx
004BB115    mov         eax,dword ptr [ebp-4]
004BB118    mov         eax,dword ptr [eax+0C]
004BB11B    cmp         ebx,dword ptr [eax-4]
>	004BB11E    jb          004BB125
004BB120    call        @BoundErr
004BB125    mov         al,byte ptr [eax+ebx]
004BB128    mov         edx,dword ptr ds:[617CC0];gvar_00617CC0:TInclureImpression
004BB12E    mov         edx,dword ptr [edx+0C]
004BB131    cmp         ebx,dword ptr [edx-4]
>	004BB134    jb          004BB13B
004BB136    call        @BoundErr
004BB13B    mov         byte ptr [edx+ebx],al
004BB13E    lea         ecx,[ebp-18]
004BB141    mov         eax,[00617CC0];gvar_00617CC0:TInclureImpression
004BB146    mov         eax,dword ptr [eax+8]
004BB149    mov         edx,ebx
004BB14B    mov         edi,dword ptr [eax]
004BB14D    call        dword ptr [edi+0C]
004BB150    mov         edx,dword ptr [ebp-18]
004BB153    mov         eax,[00617CC0];gvar_00617CC0:TInclureImpression
004BB158    mov         eax,dword ptr [eax+0C]
004BB15B    cmp         ebx,dword ptr [eax-4]
>	004BB15E    jb          004BB165
004BB160    call        @BoundErr
004BB165    mov         cl,byte ptr [eax+ebx]
004BB168    mov         eax,dword ptr [ebp-0C]
004BB16B    call        TRegistry.WriteBool
004BB170    inc         ebx
004BB171    dec         esi
>	004BB172    jne         004BB115
004BB174    mov         eax,dword ptr [ebp-0C]
004BB177    call        TRegistry.CloseKey
004BB17C    mov         eax,dword ptr [ebp-0C]
004BB17F    call        TObject.Free
>	004BB184    jmp         004BB261
004BB189    mov         dl,1
004BB18B    mov         eax,[00490114];TRegistry
004BB190    call        TRegistry.Create;TRegistry.Create
004BB195    mov         dword ptr [ebp-10],eax
004BB198    mov         edx,80000001
004BB19D    mov         eax,dword ptr [ebp-10]
004BB1A0    call        TRegistry.SetRootKey
004BB1A5    mov         edx,4BB324;'Software\Carnet de Notes 2.x\Inclure impression\Bilans'
004BB1AA    mov         eax,dword ptr [ebp-10]
004BB1AD    call        TRegistry.KeyExists
004BB1B2    test        al,al
>	004BB1B4    je          004BB1C3
004BB1B6    mov         edx,4BB324;'Software\Carnet de Notes 2.x\Inclure impression\Bilans'
004BB1BB    mov         eax,dword ptr [ebp-10]
004BB1BE    call        TRegistry.DeleteKey
004BB1C3    mov         cl,1
004BB1C5    mov         edx,4BB324;'Software\Carnet de Notes 2.x\Inclure impression\Bilans'
004BB1CA    mov         eax,dword ptr [ebp-10]
004BB1CD    call        TRegistry.OpenKey
004BB1D2    mov         eax,[00617CC4];gvar_00617CC4:TInclureImpression
004BB1D7    mov         eax,dword ptr [eax+8]
004BB1DA    mov         edx,dword ptr [eax]
004BB1DC    call        dword ptr [edx+14]
004BB1DF    mov         esi,eax
004BB1E1    sub         esi,1
>	004BB1E4    jno         004BB1EB
004BB1E6    call        @IntOver
004BB1EB    test        esi,esi
>	004BB1ED    jl          004BB251
004BB1EF    inc         esi
004BB1F0    xor         ebx,ebx
004BB1F2    mov         eax,dword ptr [ebp-4]
004BB1F5    mov         eax,dword ptr [eax+0C]
004BB1F8    cmp         ebx,dword ptr [eax-4]
>	004BB1FB    jb          004BB202
004BB1FD    call        @BoundErr
004BB202    mov         al,byte ptr [eax+ebx]
004BB205    mov         edx,dword ptr ds:[617CC4];gvar_00617CC4:TInclureImpression
004BB20B    mov         edx,dword ptr [edx+0C]
004BB20E    cmp         ebx,dword ptr [edx-4]
>	004BB211    jb          004BB218
004BB213    call        @BoundErr
004BB218    mov         byte ptr [edx+ebx],al
004BB21B    lea         ecx,[ebp-1C]
004BB21E    mov         eax,[00617CC4];gvar_00617CC4:TInclureImpression
004BB223    mov         eax,dword ptr [eax+8]
004BB226    mov         edx,ebx
004BB228    mov         edi,dword ptr [eax]
004BB22A    call        dword ptr [edi+0C]
004BB22D    mov         edx,dword ptr [ebp-1C]
004BB230    mov         eax,[00617CC4];gvar_00617CC4:TInclureImpression
004BB235    mov         eax,dword ptr [eax+0C]
004BB238    cmp         ebx,dword ptr [eax-4]
>	004BB23B    jb          004BB242
004BB23D    call        @BoundErr
004BB242    mov         cl,byte ptr [eax+ebx]
004BB245    mov         eax,dword ptr [ebp-10]
004BB248    call        TRegistry.WriteBool
004BB24D    inc         ebx
004BB24E    dec         esi
>	004BB24F    jne         004BB1F2
004BB251    mov         eax,dword ptr [ebp-10]
004BB254    call        TRegistry.CloseKey
004BB259    mov         eax,dword ptr [ebp-10]
004BB25C    call        TObject.Free
004BB261    xor         eax,eax
004BB263    pop         edx
004BB264    pop         ecx
004BB265    pop         ecx
004BB266    mov         dword ptr fs:[eax],edx
004BB269    push        4BB283
004BB26E    lea         eax,[ebp-1C]
004BB271    mov         edx,3
004BB276    call        @LStrArrayClr
004BB27B    ret
>	004BB27C    jmp         @HandleFinally
>	004BB281    jmp         004BB26E
004BB283    pop         edi
004BB284    pop         esi
004BB285    pop         ebx
004BB286    mov         esp,ebp
004BB288    pop         ebp
004BB289    ret*}
end;

//004BB35C
function sub_004BB35C:boolean;
begin
 result := sub_004971A0('colonnesBilanDetaillees',false{,0});

end;

///004BB38C
procedure sub_004BB38C(a:Boolean);
begin
{	*
004BB38C    xor         ecx,ecx
004BB38E    mov         edx,eax
004BB390    mov         eax,4BB3A4;'colonnesBilanDetaillees'
004BB395    call        004974F0
004BB39A    ret
*}
end;

//004BB3BC
procedure sub_004BB3BC(a:Integer);
begin
{	*
004BB3BC    xor         edx,edx
004BB3BE    mov         dl,al
004BB3C0    xor         ecx,ecx
004BB3C2    mov         eax,4BB3D8;'trierMoyennesImpression'
004BB3C7    call        004975A8
004BB3CC    ret
*}
end;

//004BB3F0
function sub_004BB3F0:byte;
begin
  result := sub_00497268('trierMoyennesImpression',0{,0});

end;

//004BB42C
procedure sub_004BB42C(a:Boolean);
begin
{	*
004BB42C    xor         ecx,ecx
004BB42E    mov         edx,eax
004BB430    mov         eax,4BB444;'colorationGrille'
004BB435    call        004974F0
004BB43A    ret
*}
end;

//004BB458
function sub_004BB458:Boolean;
begin
 result:= sub_004971A0('colorationGrille', true);
end;

//004BB484
procedure sub_004BB484(a:Boolean);
begin
{	*
004BB484    xor         ecx,ecx
004BB486    mov         edx,eax
004BB488    mov         eax,4BB49C;'afficherBarreOutils'
004BB48D    call        004974F0
004BB492    ret
*}
end;

//004BB4B0
procedure sub_004BB4B0(a:Boolean);
begin
{	*
004BB4B0    xor         ecx,ecx
004BB4B2    mov         edx,eax
004BB4B4    mov         eax,4BB4C8;'tailleMaximumAuDemarrage'
004BB4B9    call        004974F0
004BB4BE    ret
*}
end;

//004BB4E4
procedure sub_004BB4E4(a:Boolean);
begin
{	*
004BB4E4    xor         ecx,ecx
004BB4E6    mov         edx,eax
004BB4E8    mov         eax,4BB4FC;'afficherHeure'
004BB4ED    call        004974F0
004BB4F2    ret
*}
end;

//004BB50C
procedure sub_004BB50C(a:Boolean);
begin
{	*
004BB50C    xor         ecx,ecx
004BB50E    mov         edx,eax
004BB510    mov         eax,4BB524;'afficherDate'
004BB515    call        004974F0
004BB51A    ret
*}
end;

//004BB534
procedure sub_004BB534(a:Integer);
begin
	sub_004975A8('auDemarrage',a {,true});
end;

//004BB55C
function sub_004BB55C:boolean;
begin//0
 //004BB55C
 result := sub_004971A0('afficherBarreOutils', true{,0});
end;//0


//004BB588
function sub_004BB588:boolean;
begin//0
 //004BB588
 result := sub_004971A0('tailleMaximumAuDemarrage', true {,1});
end;//0


//004BB5BC
function sub_004BB5BC:boolean;
begin//0
 //004BB5BC

 result := sub_004971A0('afficherHeure', true {,0});
end;//0


//004BB5E4
function sub_004BB5E4:boolean;
begin//0
 //004BB5E4
 result := sub_004971A0('afficherDate', true{,false});
end;//0


//004BB60C
function sub_004BB60C:dword;
begin//0
 //004BB60C
 result := sub_00497268('auDemarrage', 0{, 1});
end;//0


//004BB63C
procedure sub_004BB63C(a:Boolean);
begin
  sub_004974F0('rappelSauvegarde', a{, true});

end;

//004BB668
function sub_004BB668:boolean;
begin//0
 //004BB668
 Result := sub_004971A0('rappelSauvegarde', true{,true});
end;//0


//004BB694
procedure sub_004BB694(a:Boolean);
begin
{	*
004BB694    mov         cl,1
004BB696    mov         edx,eax
004BB698    mov         eax,4BB6AC;'rappelMiseAJourDisponible'
004BB69D    call        004974F0
004BB6A2    ret
*}
end;

//004BB6C8
function sub_004BB6C8:boolean;
begin//0
 //004BB6C8
 result := sub_004971A0('rappelMiseAJourDisponible', true{,1});
end;//0


//004BB6FC
procedure sub_004BB6FC(a:Integer);
begin
 sub_004975A8('frequenceRappel', a{, true});
end;

//004BB728
function sub_004BB728:dword;
begin//0
 //004BB728
 result := sub_00497268('frequenceRappel', 0{, true});
end;//0

//004BB75C
function sub_004BB75C:dword;
begin//0
 //004BB75C
 result := sub_00497268('numeroRappel', 1{, 1});
end;//0

//end;

//004BB790
procedure sub_004BB790(x:dword);
begin//0
 //004BB790
 sub_004975A8('numeroRappel', x{,1});
end;//0


//004BB7BC
procedure sub_004BB7BC(a:Integer);
begin
{	*
004BB7BC    xor         edx,edx
004BB7BE    mov         dl,al
004BB7C0    xor         ecx,ecx
004BB7C2    mov         eax,4BB7D8;'ongletClasses'
004BB7C7    call        004975A8
004BB7CC    ret
*}
end;

//004BB7E8
function sub_004BB7E8:dword;
begin//0
 //004BB7E8

 result := sub_00497268('ongletClasses', 1{, 0});
end;//0

//end;

//004BB81C
procedure sub_004BB81C(a:Boolean);
begin
{	*
004BB81C    xor         ecx,ecx
004BB81E    mov         edx,eax
004BB820    mov         eax,4BB834;'afficherOngletsClasses'
004BB825    call        004974F0
004BB82A    ret
*}
end;

//004BB84C
function sub_004BB84C:boolean;
begin//0
 //004BB84C
 result := sub_004971A0('afficherOngletsClasses', true{,0});
end;//0


//004BB87C
function sub_004BB87C:TColor;
begin//0
 //004BB87C
 result := sub_004970D8('couleurFenetreInfo', sub_004BB8AC{,0});
end;//0

//004BB8AC
function sub_004BB8AC:TColor;
begin
result := $0C8FFC8;
end;

//004BB8B4
procedure sub_004BB8B4(a:TColor);
begin
{	*
004BB8B4    xor         ecx,ecx
004BB8B6    mov         edx,eax
004BB8B8    mov         eax,4BB8CC;'couleurFenetreInfo'
004BB8BD    call        00497438
004BB8C2    ret
*}
end;

//004BB8E0
procedure sub_004BB8E0(a:Boolean);
begin
{	*
004BB8E0    xor         ecx,ecx
004BB8E2    mov         edx,eax
004BB8E4    mov         eax,4BB8F8;'afficherFenetreInfo'
004BB8E9    call        004974F0
004BB8EE    ret
*}
end;

//004BB90C
procedure sub_004BB90C(a:Boolean);
begin
{	*
004BB90C    xor         ecx,ecx
004BB90E    mov         edx,eax
004BB910    mov         eax,4BB924;'afficherR'
004BB915    call        004974F0
004BB91A    ret
*}
end;

//004BB930
function sub_004BB930:boolean;
begin//0
 //004BB930
 Result := sub_004971A0('afficherFenetreInfo', true{,0});
end;//0


//004BB95C
function sub_004BB95C:Boolean;
begin//0
 //004BB95C
 Result := sub_004971A0('afficherR', true{,0});
end;//0


//004BB980
procedure sub_004BB980(a:Boolean);
begin
{	*
004BB980    xor         ecx,ecx
004BB982    mov         edx,eax
004BB984    mov         eax,4BB998;'afficherDatesDeNaissance'
004BB989    call        004974F0
004BB98E    ret
*}
end;

//004BB9B4
function sub_004BB9B4:Boolean;
begin//0
 //004BB9B4
 Result := sub_004971A0('afficherDatesDeNaissance', true{,0});
end;//0


//004BB9E8
procedure sub_004BB9E8(a:Boolean);
begin//0
 //004BB9E8
 sub_004974F0('graphe3D', a {,0});
end;//0


//004BBA0C
function sub_004BBA0C:boolean;
begin//0
 //004BBA0C
 result := sub_004971A0('graphe3D', true{,0});
end;//0


//004BBA30
procedure sub_004BBA30(a:Boolean);
begin//0
 //004BBA30
 sub_004974F0('grapheDegrade', a{,0});
end;//0


//004BBA58
procedure sub_004BBA58(a:Boolean);
begin//0
 //004BBA58
 sub_004974F0('grapheEnCouleur', a{,0});
end;//0


//004BBA80
function sub_004BBA80:boolean;
begin//0
 //004BBA80
 result := sub_004971A0('grapheDegrade', true{,0});
end;//0


//004BBAA8
function sub_004BBAA8:boolean;
begin//0
 //004BBAA8
 result := sub_004971A0('grapheEnCouleur', true{,0});
end;//0


//004BBAD0
procedure sub_004BBAD0(a:Boolean);
begin//0
 //004BBAD0
 sub_004974F0('grapheLegende', a{,0});
end;//0


//004BBAF8
function sub_004BBAF8:boolean;
begin//0
 //004BBAF8
 result := sub_004971A0('grapheLegende', true{,0});
end;//0


//004BBB20
procedure sub_004BBB20(a:TColor);
begin
{	*
004BBB20    xor         ecx,ecx
004BBB22    mov         edx,eax
004BBB24    mov         eax,4BBB38;'couleurDebutDegrade'
004BBB29    call        00497438
004BBB2E    ret
*}
end;

//004BBB4C
procedure sub_004BBB4C(a:TColor);
begin
{	*
004BBB4C    xor         ecx,ecx
004BBB4E    mov         edx,eax
004BBB50    mov         eax,4BBB64;'couleurFinDegrade'
004BBB55    call        00497438
004BBB5A    ret
*}
end;

//004BBB78
function sub_004BBB78:TColor;
begin//0
  //004BBB78
  result := sub_004970D8('couleurDebutDegrade', sub_004BBBD8);
end;//0


//004BBBA8
function sub_004BBBA8:TColor;
begin//0
  //004BBB78
  result := sub_004970D8('couleurFinDegrade', sub_004BBBE0);
end;//0

//004BBBD8
function sub_004BBBD8:TColor;
begin
result := $0FFFF80;
end;

//004BBBE0
function sub_004BBBE0:TColor;
begin
result := $0FF8080;

end;

//004BBBE8
procedure sub_004BBBE8(a:TColor);
begin
{	*
004BBBE8    xor         ecx,ecx
004BBBEA    mov         edx,eax
004BBBEC    mov         eax,4BBC00;'couleurEleve'
004BBBF1    call        00497438
004BBBF6    ret
*}
end;

//004BBC10
procedure sub_004BBC10(a:TColor);
begin
{	*
004BBC10    xor         ecx,ecx
004BBC12    mov         edx,eax
004BBC14    mov         eax,4BBC28;'couleurMax'
004BBC19    call        00497438
004BBC1E    ret
*}
end;

//004BBC34
procedure sub_004BBC34(a:TColor);
begin
{	*
004BBC34    xor         ecx,ecx
004BBC36    mov         edx,eax
004BBC38    mov         eax,4BBC4C;'couleurMin'
004BBC3D    call        00497438
004BBC42    ret
*}
end;

//004BBC58
procedure sub_004BBC58(a:TColor);
begin
{	*
004BBC58    xor         ecx,ecx
004BBC5A    mov         edx,eax
004BBC5C    mov         eax,4BBC70;'couleurMoyenne'
004BBC61    call        00497438
004BBC66    ret
*}
end;

//004BBC80
function sub_004BBC80:TColor;
begin//0
 //004BBC80

 result := sub_004970D8('couleurEleve',  sub_004BBCAC{,0});
end;//0


//004BBCAC
function sub_004BBCAC:TColor;
begin
result := $0FFFF;

end;

//004BBCB4
function sub_004BBCB4:TColor;
begin
 result := sub_004970D8('couleurMax',  sub_004BBCDC{,0});
end;

//004BBCDC
function sub_004BBCDC:TColor;
begin
result := $0FF0000;
end;

//004BBCE4
function sub_004BBCE4:TColor;
begin
result := sub_004970D8('couleurMin',sub_004BBD0C{,0});
end;

//004BBD0C
function sub_004BBD0C:TColor;
begin
 result := $0FF;
end;

//004BBD14
function sub_004BBD14:TColor;
begin//0
 //004BBD14
 result := sub_004970D8('couleurMoyenne',sub_004BBD40{,0});
end;//0


//004BBD40
function sub_004BBD40:TColor;
begin
result := $80FF80;

end;

//004BBD48
procedure sub_004BBD48(a:TColor);
begin
{	*
004BBD48    xor         ecx,ecx
004BBD4A    mov         edx,eax
004BBD4C    mov         eax,4BBD60;'couleurMurBas'
004BBD51    call        00497438
004BBD56    ret
*}
end;

//004BBD70
function sub_004BBD70:TColor;
begin
 result := sub_004970D8('couleurMurBas',sub_004BBD9C);
 
end;

//004BBD9C
function sub_004BBD9C:TColor;
begin
result := $0FFFFFF;

end;

//004BBDA4
procedure sub_004BBDA4(a:TColor);
begin
{	*
004BBDA4    xor         ecx,ecx
004BBDA6    mov         edx,eax
004BBDA8    mov         eax,4BBDBC;'couleurMurGauche'
004BBDAD    call        00497438
004BBDB2    ret
*}
end;

//004BBDD0
function sub_004BBDD0:TColor;
begin
result := $0FFFFFF;

end;

//004BBDD8
procedure sub_004BBDD8(a:Boolean);
begin//0
 //004BBDD8
 sub_004974F0('grapheLigneEleve', a{,0});
end;//0


//004BBE04
procedure sub_004BBE04(a:Boolean);
begin//0
 //004BBE04
 sub_004974F0('grapheLigneMax', a{,0});
end;//0


//004BBE2C
procedure sub_004BBE2C(a:Boolean);
begin//0
 //004BBE2C
 sub_004974F0('grapheLigneMin', a{,0});
end;//0


//004BBE54
procedure sub_004BBE54(a:Boolean);
begin
sub_004974F0('grapheLigneMoyenne', a{,0});
end;

//004BBE80
function sub_004BBE80:boolean;
begin//0
 //004BBE80
 result := sub_004971A0('grapheLigneEleve', true{,0});
end;//0


//004BBEAC
function sub_004BBEAC:boolean;
begin//0
 //004BBEAC
 result := sub_004971A0('grapheLigneMax', true{,0});
end;//0


//004BBED4
function sub_004BBED4:boolean;
begin//0
 //004BBED4
 result := sub_004971A0('grapheLigneMin', true{,0});
end;//0


//004BBEFC
function sub_004BBEFC:boolean;
begin
result := sub_004971A0('grapheLigneMoyenne', true{,0});
end;

//004BBF28
procedure sub_004BBF28(a:Integer);
begin
{	*
004BBF28    xor         edx,edx
004BBF2A    mov         dl,al
004BBF2C    xor         ecx,ecx
004BBF2E    mov         eax,4BBF44;'ongletsGraphes'
004BBF33    call        004975A8
004BBF38    ret
*}
end;

//004BBF54
function sub_004BBF54:dword;
begin//0
 //004BBF54
 result := sub_00497268('ongletsGraphes', 0{, 0});
end;//0

//end;

//004BBF88
procedure sub_004BBF88(a:Boolean);
begin
  sub_004974F0('impressionCouleurNote',a{,0});
end;

//004BBFB8
function sub_004BBFB8:boolean;
begin
 result := sub_004971A0('impressionCouleurNote',false{,false});
end;

//004BBFE8
procedure sub_004BBFE8(a:Boolean);
begin
{	*
004BBFE8    xor         ecx,ecx
004BBFEA    mov         edx,eax
004BBFEC    mov         eax,4BC000;'numeroterElevesGrilleVierge'
004BBFF1    call        004974F0
004BBFF6    ret
*}
end;

//004BC01C
function sub_004BC01C:boolean;
begin
 result := sub_004971A0('numeroterElevesGrilleVierge',true{,0});
end;

//004BC050
procedure sub_004BC050(a:Integer);
begin
{	*
004BC050    xor         edx,edx
004BC052    mov         dl,al
004BC054    xor         ecx,ecx
004BC056    mov         eax,4BC06C;'largeurGrilleVierge'
004BC05B    call        004975A8
004BC060    ret
*}
end;

//004BC080
function sub_004BC080:byte;
begin
 result := sub_00497268('largeurGrilleVierge',10{,0});
end;

//004BC0B8
procedure sub_004BC0B8(a:Boolean);
begin
{	*
004BC0B8    xor         ecx,ecx
004BC0BA    mov         edx,eax
004BC0BC    mov         eax,4BC0D0;'impressionColonneMoyenne'
004BC0C1    call        004974F0
004BC0C6    ret
*}
end;

//004BC0EC
function sub_004BC0EC:boolean;
begin
  result := sub_004971A0('impressionColonneMoyenne',false{,0});
end;

//004BC120
procedure sub_004BC120(a:Boolean);
begin
{	*
004BC120    xor         ecx,ecx
004BC122    mov         edx,eax
004BC124    mov         eax,4BC138;'impressionColonneClassement'
004BC129    call        004974F0
004BC12E    ret
*}
end;

//004BC154
procedure sub_004BC154(a:Boolean);
begin
{	*
004BC154    xor         ecx,ecx
004BC156    mov         edx,eax
004BC158    mov         eax,4BC16C;'impressionMoyennesEcritOral'
004BC15D    call        004974F0
004BC162    ret
*}
end;

//004BC188
function sub_004BC188:boolean;
begin
result := sub_004971A0('impressionMoyennesEcritOral',true{,false});
end;

//004BC1BC
function sub_004BC1BC:boolean;
begin
  result := sub_004971A0('impressionColonneClassement',true{,false});
end;

//004BC1F0
procedure sub_004BC1F0(a:Boolean);
begin
{	*
004BC1F0    xor         ecx,ecx
004BC1F2    mov         edx,eax
004BC1F4    mov         eax,4BC208;'numeroterElevesAppreciations'
004BC1F9    call        004974F0
004BC1FE    ret
*}
end;

//004BC228
function sub_004BC228:boolean;
begin
	result:= sub_004971A0('numeroterElevesAppreciations',true{,0});
end;

//004BC260
procedure sub_004BC260(a:Integer);
begin
{	*
004BC260    xor         edx,edx
004BC262    mov         dl,al
004BC264    xor         ecx,ecx
004BC266    mov         eax,4BC27C;'arrondirMoyennesAnnuelles'
004BC26B    call        004975A8
004BC270    ret
*}
end;

//004BC298
function sub_004BC298:dword;
begin//0
 //004BC298
 result := sub_00497268('arrondirMoyennesAnnuelles', 0{, 0});
end;//0


//004BC2D8
procedure sub_004BC2D8(a:Integer);
begin
{	*
004BC2D8    xor         edx,edx
004BC2DA    mov         dl,al
004BC2DC    xor         ecx,ecx
004BC2DE    mov         eax,4BC2F4;'typeMoyennesAnnuelles'
004BC2E3    call        004975A8
004BC2E8    ret
*}
end;

//004BC30C
function sub_004BC30C:dword;
begin//0
 //004BC30C
 result := sub_00497268('typeMoyennesAnnuelles', 0{, 0});
end;//0


//004BC348
function sub_004BC348:TStringList;
var
  StringList : TStringList;
  Registry : TRegistry;
begin//0
  //004BC348
  StringList := TStringList.Create;
  StringList.Sorted := True;
  Registry := TRegistry.Create;
  Registry.RootKey:= $80000001;
  if (Registry.KeyExists('Software\Carnet de Notes 2.x\Matieres')) then
  begin//1
    //004BC38B
    Registry.OpenKey('Software\Carnet de Notes 2.x\Matieres', True);
    Registry.GetValueNames(StringList);
    Registry.CloseKey;
  end//1
  else
  begin//1
    //004BC3AB
    StringList := sub_004BC3F0;
  end;//1
  Registry.Free;
  result := StringList;
end;

//004BC3F0
function sub_004BC3F0:TStringlist;
var
  Registry:TRegistry;
  Stringlist:TStringlist;
begin//0
  //004BC3F0
  Registry := TRegistry.Create;
  Registry.RootKey:=$80000001;
  if (Registry.KeyExists('Software\Carnet de Notes 2.x\Matieres')) then
  begin//1
    //004BC41B
    Registry.DeleteKey('Software\Carnet de Notes 2.x\Matieres');
  end;//1
  Registry.Free;
  StringList := TStringList.Create;
  StringList.Sorted:=True;
  StringList.Add('Allemand');
  StringList.Add('Anglais');
  StringList.Add('Arts Plastiques');
  StringList.Add('E.P.S');
  StringList.Add('Espagnol');
  StringList.Add('Français');
  StringList.Add('Grec');
  StringList.Add('Histoire - Géographie');
  StringList.Add('Latin');
  StringList.Add('Mathématiques');
  StringList.Add('Musique');
  StringList.Add('S.E.S');
  StringList.Add('Sciences de la Vie et de la Terre');
  StringList.Add('Sciences Physiques');
  StringList.Add('Tahitien');
  StringList.Add('Technologie');
  result := StringList;//EBX
end;//0


//004BC698
procedure sub_004BC698(a:TStrings);
begin
{	*
004BC698    push        ebp
004BC699    mov         ebp,esp
004BC69B    add         esp,0FFFFFFF4
004BC69E    push        ebx
004BC69F    push        esi
004BC6A0    push        edi
004BC6A1    xor         edx,edx
004BC6A3    mov         dword ptr [ebp-0C],edx
004BC6A6    mov         dword ptr [ebp-4],eax
004BC6A9    xor         eax,eax
004BC6AB    push        ebp
004BC6AC    push        4BC75F
004BC6B1    push        dword ptr fs:[eax]
004BC6B4    mov         dword ptr fs:[eax],esp
004BC6B7    mov         dl,1
004BC6B9    mov         eax,[00490114];TRegistry
004BC6BE    call        TRegistry.Create;TRegistry.Create
004BC6C3    mov         ebx,eax
004BC6C5    mov         edx,80000001
004BC6CA    mov         eax,ebx
004BC6CC    call        TRegistry.SetRootKey
004BC6D1    mov         edx,4BC778;'Software\Carnet de Notes 2.x\Matieres'
004BC6D6    mov         eax,ebx
004BC6D8    call        TRegistry.KeyExists
004BC6DD    test        al,al
>	004BC6DF    je          004BC6ED
004BC6E1    mov         edx,4BC778;'Software\Carnet de Notes 2.x\Matieres'
004BC6E6    mov         eax,ebx
004BC6E8    call        TRegistry.DeleteKey
004BC6ED    mov         cl,1
004BC6EF    mov         edx,4BC778;'Software\Carnet de Notes 2.x\Matieres'
004BC6F4    mov         eax,ebx
004BC6F6    call        TRegistry.OpenKey
004BC6FB    mov         eax,dword ptr [ebp-4]
004BC6FE    mov         edx,dword ptr [eax]
004BC700    call        dword ptr [edx+14]
004BC703    mov         esi,eax
004BC705    sub         esi,1
>	004BC708    jno         004BC70F
004BC70A    call        @IntOver
004BC70F    test        esi,esi
>	004BC711    jl          004BC73B
004BC713    inc         esi
004BC714    mov         dword ptr [ebp-8],0
004BC71B    lea         ecx,[ebp-0C]
004BC71E    mov         edx,dword ptr [ebp-8]
004BC721    mov         eax,dword ptr [ebp-4]
004BC724    mov         edi,dword ptr [eax]
004BC726    call        dword ptr [edi+0C]
004BC729    mov         edx,dword ptr [ebp-0C]
004BC72C    xor         ecx,ecx
004BC72E    mov         eax,ebx
004BC730    call        TRegistry.WriteString
004BC735    inc         dword ptr [ebp-8]
004BC738    dec         esi
>	004BC739    jne         004BC71B
004BC73B    mov         eax,ebx
004BC73D    call        TRegistry.CloseKey
004BC742    mov         eax,ebx
004BC744    call        TObject.Free
004BC749    xor         eax,eax
004BC74B    pop         edx
004BC74C    pop         ecx
004BC74D    pop         ecx
004BC74E    mov         dword ptr fs:[eax],edx
004BC751    push        4BC766
004BC756    lea         eax,[ebp-0C]
004BC759    call        @LStrClr
004BC75E    ret
>	004BC75F    jmp         @HandleFinally
>	004BC764    jmp         004BC756
004BC766    pop         edi
004BC767    pop         esi
004BC768    pop         ebx
004BC769    mov         esp,ebp
004BC76B    pop         ebp
004BC76C    ret
*}
end;

//004BC7A0
{	*//procedure sub_004BC7A0(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
004BC7A0    push        ebp
004BC7A1    mov         ebp,esp
004BC7A3    add         esp,0FFFFFFE8
004BC7A6    push        ebx
004BC7A7    push        esi
004BC7A8    push        edi
004BC7A9    xor         ebx,ebx
004BC7AB    mov         dword ptr [ebp-18],ebx
004BC7AE    mov         dword ptr [ebp-14],ebx
004BC7B1    mov         dword ptr [ebp-10],ebx
004BC7B4    mov         byte ptr [ebp-9],cl
004BC7B7    mov         dword ptr [ebp-8],edx
004BC7BA    mov         dword ptr [ebp-4],eax
004BC7BD    xor         eax,eax
004BC7BF    push        ebp
004BC7C0    push        4BCA7A
004BC7C5    push        dword ptr fs:[eax]
004BC7C8    mov         dword ptr fs:[eax],esp
004BC7CB    mov         eax,dword ptr [ebp-8]
004BC7CE    mov         edx,dword ptr [eax]
004BC7D0    call        dword ptr [edx+14]
004BC7D3    test        eax,eax
>	004BC7D5    je          004BCA5F
004BC7DB    mov         eax,dword ptr [ebp-8]
004BC7DE    mov         edx,dword ptr [eax]
004BC7E0    call        dword ptr [edx+14]
004BC7E3    mov         ebx,eax
004BC7E5    sub         ebx,1
>	004BC7E8    jno         004BC7EF
004BC7EA    call        @IntOver
004BC7EF    cmp         ebx,0FF
>	004BC7F5    jbe         004BC7FC
004BC7F7    call        @BoundErr
004BC7FC    test        bl,bl
>	004BC7FE    jb          004BC886
004BC804    inc         ebx
004BC805    mov         byte ptr [ebp-0A],0
004BC809    xor         ecx,ecx
004BC80B    mov         dl,1
004BC80D    mov         eax,[00445740];TMenuItem
004BC812    call        TMenuItem.Create;TMenuItem.Create
004BC817    mov         esi,eax
004BC819    lea         ecx,[ebp-10]
004BC81C    xor         edx,edx
004BC81E    mov         dl,byte ptr [ebp-0A]
004BC821    mov         eax,dword ptr [ebp-8]
004BC824    mov         edi,dword ptr [eax]
004BC826    call        dword ptr [edi+0C]
004BC829    mov         edx,dword ptr [ebp-10]
004BC82C    mov         eax,esi
004BC82E    call        TMenuItem.SetCaption
004BC833    mov         eax,dword ptr [ebp+18]
004BC836    mov         dword ptr [esi+80],eax;TMenuItem.OnClick:TNotifyEvent
004BC83C    mov         eax,dword ptr [ebp+1C]
004BC83F    mov         dword ptr [esi+84],eax;TMenuItem.?f84:TfrxPreview
004BC845    movzx       edi,byte ptr [ebp-9]
004BC849    mov         edx,edi
004BC84B    mov         eax,dword ptr [ebp-4]
004BC84E    mov         eax,dword ptr [eax+28]
004BC851    call        TMenuItem.GetItem
004BC856    xor         edx,edx
004BC858    call        TMenuItem.GetItem
004BC85D    call        TMenuItem.GetCount
004BC862    push        eax
004BC863    mov         edx,edi
004BC865    mov         eax,dword ptr [ebp-4]
004BC868    mov         eax,dword ptr [eax+28]
004BC86B    call        TMenuItem.GetItem
004BC870    xor         edx,edx
004BC872    call        TMenuItem.GetItem
004BC877    mov         ecx,esi
004BC879    pop         edx
004BC87A    call        TMenuItem.Insert
004BC87F    inc         byte ptr [ebp-0A]
004BC882    dec         bl
>	004BC884    jne         004BC809
004BC886    mov         eax,dword ptr [ebp-8]
004BC889    mov         edx,dword ptr [eax]
004BC88B    call        dword ptr [edx+14]
004BC88E    mov         ebx,eax
004BC890    sub         ebx,1
>	004BC893    jno         004BC89A
004BC895    call        @IntOver
004BC89A    cmp         ebx,0FF
>	004BC8A0    jbe         004BC8A7
004BC8A2    call        @BoundErr
004BC8A7    test        bl,bl
>	004BC8A9    jb          004BC93B
004BC8AF    inc         ebx
004BC8B0    mov         byte ptr [ebp-0A],0
004BC8B4    xor         ecx,ecx
004BC8B6    mov         dl,1
004BC8B8    mov         eax,[00445740];TMenuItem
004BC8BD    call        TMenuItem.Create;TMenuItem.Create
004BC8C2    mov         esi,eax
004BC8C4    lea         ecx,[ebp-14]
004BC8C7    xor         edx,edx
004BC8C9    mov         dl,byte ptr [ebp-0A]
004BC8CC    mov         eax,dword ptr [ebp-8]
004BC8CF    mov         edi,dword ptr [eax]
004BC8D1    call        dword ptr [edi+0C]
004BC8D4    mov         edx,dword ptr [ebp-14]
004BC8D7    mov         eax,esi
004BC8D9    call        TMenuItem.SetCaption
004BC8DE    mov         eax,dword ptr [ebp+10]
004BC8E1    mov         dword ptr [esi+80],eax;TMenuItem.OnClick:TNotifyEvent
004BC8E7    mov         eax,dword ptr [ebp+14]
004BC8EA    mov         dword ptr [esi+84],eax;TMenuItem.?f84:TfrxPreview
004BC8F0    movzx       edi,byte ptr [ebp-9]
004BC8F4    mov         edx,edi
004BC8F6    mov         eax,dword ptr [ebp-4]
004BC8F9    mov         eax,dword ptr [eax+28]
004BC8FC    call        TMenuItem.GetItem
004BC901    mov         edx,1
004BC906    call        TMenuItem.GetItem
004BC90B    call        TMenuItem.GetCount
004BC910    push        eax
004BC911    mov         edx,edi
004BC913    mov         eax,dword ptr [ebp-4]
004BC916    mov         eax,dword ptr [eax+28]
004BC919    call        TMenuItem.GetItem
004BC91E    mov         edx,1
004BC923    call        TMenuItem.GetItem
004BC928    mov         ecx,esi
004BC92A    pop         edx
004BC92B    call        TMenuItem.Insert
004BC930    inc         byte ptr [ebp-0A]
004BC933    dec         bl
>	004BC935    jne         004BC8B4
004BC93B    xor         ecx,ecx
004BC93D    mov         dl,1
004BC93F    mov         eax,[00445740];TMenuItem
004BC944    call        TMenuItem.Create;TMenuItem.Create
004BC949    mov         esi,eax
004BC94B    mov         edx,4BCA94;'Sur l'année'
004BC950    mov         eax,esi
004BC952    call        TMenuItem.SetCaption
004BC957    mov         eax,dword ptr [ebp+10]
004BC95A    mov         dword ptr [esi+80],eax;TMenuItem.OnClick:TNotifyEvent
004BC960    mov         eax,dword ptr [ebp+14]
004BC963    mov         dword ptr [esi+84],eax;TMenuItem.?f84:TfrxPreview
004BC969    xor         ebx,ebx
004BC96B    mov         bl,byte ptr [ebp-9]
004BC96E    mov         edx,ebx
004BC970    mov         eax,dword ptr [ebp-4]
004BC973    mov         eax,dword ptr [eax+28]
004BC976    call        TMenuItem.GetItem
004BC97B    mov         edx,1
004BC980    call        TMenuItem.GetItem
004BC985    call        TMenuItem.GetCount
004BC98A    push        eax
004BC98B    mov         edx,ebx
004BC98D    mov         eax,dword ptr [ebp-4]
004BC990    mov         eax,dword ptr [eax+28]
004BC993    call        TMenuItem.GetItem
004BC998    mov         edx,1
004BC99D    call        TMenuItem.GetItem
004BC9A2    mov         ecx,esi
004BC9A4    pop         edx
004BC9A5    call        TMenuItem.Insert
004BC9AA    mov         eax,dword ptr [ebp-8]
004BC9AD    mov         edx,dword ptr [eax]
004BC9AF    call        dword ptr [edx+14]
004BC9B2    mov         ebx,eax
004BC9B4    sub         ebx,1
>	004BC9B7    jno         004BC9BE
004BC9B9    call        @IntOver
004BC9BE    cmp         ebx,0FF
>	004BC9C4    jbe         004BC9CB
004BC9C6    call        @BoundErr
004BC9CB    test        bl,bl
>	004BC9CD    jb          004BCA5F
004BC9D3    inc         ebx
004BC9D4    mov         byte ptr [ebp-0A],0
004BC9D8    xor         ecx,ecx
004BC9DA    mov         dl,1
004BC9DC    mov         eax,[00445740];TMenuItem
004BC9E1    call        TMenuItem.Create;TMenuItem.Create
004BC9E6    mov         esi,eax
004BC9E8    lea         ecx,[ebp-18]
004BC9EB    xor         edx,edx
004BC9ED    mov         dl,byte ptr [ebp-0A]
004BC9F0    mov         eax,dword ptr [ebp-8]
004BC9F3    mov         edi,dword ptr [eax]
004BC9F5    call        dword ptr [edi+0C]
004BC9F8    mov         edx,dword ptr [ebp-18]
004BC9FB    mov         eax,esi
004BC9FD    call        TMenuItem.SetCaption
004BCA02    mov         eax,dword ptr [ebp+8]
004BCA05    mov         dword ptr [esi+80],eax;TMenuItem.OnClick:TNotifyEvent
004BCA0B    mov         eax,dword ptr [ebp+0C]
004BCA0E    mov         dword ptr [esi+84],eax;TMenuItem.?f84:TfrxPreview
004BCA14    movzx       edi,byte ptr [ebp-9]
004BCA18    mov         edx,edi
004BCA1A    mov         eax,dword ptr [ebp-4]
004BCA1D    mov         eax,dword ptr [eax+28]
004BCA20    call        TMenuItem.GetItem
004BCA25    mov         edx,2
004BCA2A    call        TMenuItem.GetItem
004BCA2F    call        TMenuItem.GetCount
004BCA34    push        eax
004BCA35    mov         edx,edi
004BCA37    mov         eax,dword ptr [ebp-4]
004BCA3A    mov         eax,dword ptr [eax+28]
004BCA3D    call        TMenuItem.GetItem
004BCA42    mov         edx,2
004BCA47    call        TMenuItem.GetItem
004BCA4C    mov         ecx,esi
004BCA4E    pop         edx
004BCA4F    call        TMenuItem.Insert
004BCA54    inc         byte ptr [ebp-0A]
004BCA57    dec         bl
>	004BCA59    jne         004BC9D8
004BCA5F    xor         eax,eax
004BCA61    pop         edx
004BCA62    pop         ecx
004BCA63    pop         ecx
004BCA64    mov         dword ptr fs:[eax],edx
004BCA67    push        4BCA81
004BCA6C    lea         eax,[ebp-18]
004BCA6F    mov         edx,3
004BCA74    call        @LStrArrayClr
004BCA79    ret
>	004BCA7A    jmp         @HandleFinally
>	004BCA7F    jmp         004BCA6C
004BCA81    pop         edi
004BCA82    pop         esi
004BCA83    pop         ebx
004BCA84    mov         esp,ebp
004BCA86    pop         ebp
004BCA87    ret         18
//end;*}

//004BCAA0
{	*//procedure sub_004BCAA0(?:?; ?:?; ?:?; ?:?);
//begin
004BCAA0    push        ebp
004BCAA1    mov         ebp,esp
004BCAA3    add         esp,0FFFFFFE8
004BCAA6    push        ebx
004BCAA7    push        esi
004BCAA8    push        edi
004BCAA9    xor         ecx,ecx
004BCAAB    mov         dword ptr [ebp-14],ecx
004BCAAE    mov         dword ptr [ebp-18],ecx
004BCAB1    mov         byte ptr [ebp-5],dl
004BCAB4    mov         dword ptr [ebp-4],eax
004BCAB7    xor         eax,eax
004BCAB9    push        ebp
004BCABA    push        4BCBAC
004BCABF    push        dword ptr fs:[eax]
004BCAC2    mov         dword ptr fs:[eax],esp
004BCAC5    call        00497908
004BCACA    mov         dword ptr [ebp-0C],eax
004BCACD    mov         eax,dword ptr [ebp-0C]
004BCAD0    mov         edx,dword ptr [eax]
004BCAD2    call        dword ptr [edx+14]
004BCAD5    test        eax,eax
>	004BCAD7    je          004BCB91
004BCADD    mov         eax,dword ptr [ebp-0C]
004BCAE0    mov         edx,dword ptr [eax]
004BCAE2    call        dword ptr [edx+14]
004BCAE5    sub         eax,1
>	004BCAE8    jno         004BCAEF
004BCAEA    call        @IntOver
004BCAEF    cmp         eax,0FF
>	004BCAF4    jbe         004BCAFB
004BCAF6    call        @BoundErr
004BCAFB    test        al,al
>	004BCAFD    jb          004BCB91
004BCB03    inc         eax
004BCB04    mov         byte ptr [ebp-0D],al
004BCB07    mov         bl,0
004BCB09    xor         ecx,ecx
004BCB0B    mov         dl,1
004BCB0D    mov         eax,[00445740];TMenuItem
004BCB12    call        TMenuItem.Create;TMenuItem.Create
004BCB17    mov         esi,eax
004BCB19    push        4BCBC4;'lecteur '
004BCB1E    lea         ecx,[ebp-18]
004BCB21    xor         edx,edx
004BCB23    mov         dl,bl
004BCB25    mov         eax,dword ptr [ebp-0C]
004BCB28    mov         edi,dword ptr [eax]
004BCB2A    call        dword ptr [edi+0C]
004BCB2D    push        dword ptr [ebp-18]
004BCB30    push        4BCBD8;':'
004BCB35    lea         eax,[ebp-14]
004BCB38    mov         edx,3
004BCB3D    call        @LStrCatN
004BCB42    mov         edx,dword ptr [ebp-14]
004BCB45    mov         eax,esi
004BCB47    call        TMenuItem.SetCaption
004BCB4C    mov         eax,dword ptr [ebp+8]
004BCB4F    mov         dword ptr [esi+80],eax;TMenuItem.OnClick:TNotifyEvent
004BCB55    mov         eax,dword ptr [ebp+0C]
004BCB58    mov         dword ptr [esi+84],eax;TMenuItem.?f84:TfrxPreview
004BCB5E    xor         eax,eax
004BCB60    mov         al,bl
004BCB62    mov         dword ptr [esi+0C],eax;TMenuItem.Tag:Integer
004BCB65    mov         eax,dword ptr [ebp-4]
004BCB68    mov         eax,dword ptr [eax+28]
004BCB6B    xor         edx,edx
004BCB6D    call        TMenuItem.GetItem
004BCB72    xor         edx,edx
004BCB74    mov         dl,byte ptr [ebp-5]
004BCB77    call        TMenuItem.GetItem
004BCB7C    xor         edx,edx
004BCB7E    mov         dl,bl
004BCB80    mov         ecx,esi
004BCB82    call        TMenuItem.Insert
004BCB87    inc         ebx
004BCB88    dec         byte ptr [ebp-0D]
>	004BCB8B    jne         004BCB09
004BCB91    xor         eax,eax
004BCB93    pop         edx
004BCB94    pop         ecx
004BCB95    pop         ecx
004BCB96    mov         dword ptr fs:[eax],edx
004BCB99    push        4BCBB3
004BCB9E    lea         eax,[ebp-18]
004BCBA1    mov         edx,2
004BCBA6    call        @LStrArrayClr
004BCBAB    ret
>	004BCBAC    jmp         @HandleFinally
>	004BCBB1    jmp         004BCB9E
004BCBB3    pop         edi
004BCBB4    pop         esi
004BCBB5    pop         ebx
004BCBB6    mov         esp,ebp
004BCBB8    pop         ebp
004BCBB9    ret         8
//end;*}

//004BCBDC
procedure sub_004BCBDC(StringList:TStringList);
var
Registry : TRegistry;
I:integer;
begin//0
 //004BCBDC
   //004BCBFA
   Registry := TRegistry.Create;
   Registry.RootKey := $80000001;
   if (Registry.KeyExists('Software\Carnet de Notes 2.x\Derniers fichiers')) then//004BCC27
	 Registry.DeleteKey('Software\Carnet de Notes 2.x\Derniers fichiers');
   Registry.OpenKey('Software\Carnet de Notes 2.x\Derniers fichiers', True);
	 for I := 0 to StringList.Count - 1 do//004BCC5B
	   if (FileExists(StringList[I]) ) then 
	   Registry.WriteString(LowerCase(StringList[I]), '');
   
   Registry.CloseKey;
   Registry.Free;

end;//0

//004BCD14
function sub_004BCD14:TStringlist;
var
 StringList : TStringList;
 Registry : TRegistry;
begin//0
 //004BCD14
 StringList := TStringList.Create;
 Registry := TRegistry.Create;
 Registry.RootKey := $80000001;
 if (Registry.KeyExists('Software\Carnet de Notes 2.x\Derniers fichiers') ) then
 begin//1
   //004BCD4E
   Registry.OpenKey('Software\Carnet de Notes 2.x\Derniers fichiers', True);
   Registry.GetValueNames(StringList);
 end;//1
 Registry.CloseKey;
 Registry.Free;
 result := StringList;
end;//0

//004BCDB0
function sub_004BCDB0:boolean;
begin//0
 //004BCDB0
 result := sub_004971A0('afficherNomEnseignantOnglets', false{,0});
end;//0


//004BCDE8
procedure sub_004BCDE8(a:Boolean);
begin
   sub_004974F0('afficherNomEnseignantOnglets',a{,0});
end;

//004BCE20
function sub_004BCE20:boolean;
begin//0
 //004BCE20

 result := sub_004971A0('afficherMatiereOnglets', false{,0});
end;//0


//004BCE50
procedure sub_004BCE50(a:Boolean);
begin
 sub_004974F0('afficherMatiereOnglets',a{,0});
end;

//004BCE80
function sub_004BCE80:TStringList;
begin
{004BCE80    push        ebx
004BCE81    push        esi
004BCE82    push        edi
004BCE83    mov         dl,1
004BCE85    mov         eax,[004120B8];TStringList
004BCE8A    call        TObject.Create;TStringList.Create
004BCE8F    mov         esi,eax
004BCE91    mov         dl,1
004BCE93    mov         eax,[00490114];TRegistry
004BCE98    call        TRegistry.Create;TRegistry.Create
004BCE9D    mov         ebx,eax
004BCE9F    mov         edx,80000001
004BCEA4    mov         eax,ebx
004BCEA6    call        TRegistry.SetRootKey
004BCEAB    mov         edx,4BCF10;'Software\Carnet de Notes 2.x\Noms bulletins'
004BCEB0    mov         eax,ebx
004BCEB2    call        TRegistry.KeyExists
004BCEB7    test        al,al
>	004BCEB9    je          004BCED9
004BCEBB    mov         cl,1
004BCEBD    mov         edx,4BCF10;'Software\Carnet de Notes 2.x\Noms bulletins'
004BCEC2    mov         eax,ebx
004BCEC4    call        TRegistry.OpenKey
004BCEC9    mov         edx,esi
004BCECB    mov         eax,ebx
004BCECD    call        TRegistry.GetValueNames
004BCED2    mov         eax,ebx
004BCED4    call        TRegistry.CloseKey
004BCED9    mov         ecx,4BCF44;'Bulletins par défaut'
004BCEDE    xor         edx,edx
004BCEE0    mov         eax,esi
004BCEE2    mov         edi,dword ptr [eax]
004BCEE4    call        dword ptr [edi+54];TStringList.Insert
004BCEE7    mov         ecx,4BCF64;'Nouveaux bulletins du collège'
004BCEEC    mov         edx,1
004BCEF1    mov         eax,esi
004BCEF3    mov         edi,dword ptr [eax]
004BCEF5    call        dword ptr [edi+54];TStringList.Insert
004BCEF8    mov         eax,ebx
004BCEFA    call        TObject.Free
004BCEFF    mov         eax,esi
004BCF01    pop         edi
004BCF02    pop         esi
004BCF03    pop         ebx
004BCF04    ret*}
end;

//004BCF84
function sub_004BCF84(a:String):TStringList;
var
Registry: TRegistry;
StringList : TStringList;
begin//0
 //004BCF84

   StringList := TStringList.Create;
   Registry := TRegistry.Create;
   Registry.RootKey := $80000001;
   if (Registry.KeyExists('Software\Carnet de Notes 2.x\Noms bulletins\' + a + '\noms')) then
   begin//004BCFF8
	 Registry.OpenKey('Software\Carnet de Notes 2.x\Noms bulletins\' + a + '\noms', True);
	 Registry.GetValueNames(StringList);
	 Registry.CloseKey;
   end//2
   else
   begin//004BD030
	 if (a = 'Bulletins par défaut') then
	 begin//004BD03F
	   StringList.Add('Appréciations');
	 end//3
	 else
	 begin//004BD04D
	   if (a = 'Nouveaux bulletins du collège') then
	   begin//004BD05C
		 StringList.Add('Appréciations générales');
		 StringList.Add('Progrès et efforts');
		 StringList.Add('Conseils pour progresser');
	   end;//4
	 end;//3
   end;//2
  
   Registry.Free;
 result := StringList;//ESI
end;//0

function sub_004BD1BC:boolean;
begin
 sub_004971A0('impressionDatesDeNaissanceSeriesDeNotes',true{,0});

end;
//004BD1FC
function sub_004BD1FC:boolean;
begin
	sub_004971A0('impressionDatesDeNaissanceBilans',true{,0});
end;

//004BD238
function sub_004BD238:boolean;
begin
	sub_004971A0('impressionDatesDeNaissanceAppreciations',true{,0});
end;

//004BD278
function sub_004BD278:boolean;
begin
	sub_004971A0('impressionDatesDeNaissanceGrilleVierge',true{,0});
end;

//004BD2B8
procedure sub_004BD2B8(a:Boolean);
begin
	sub_004974F0('impressionDatesDeNaissanceSeriesDeNotes',a{,0});
end;

//004BD2F8
procedure sub_004BD2F8(a:Boolean);
begin
   sub_004974F0('impressionDatesDeNaissanceBilans',a{,0});
end;

//004BD334
procedure sub_004BD334(a:Boolean);
begin
   sub_004974F0('impressionDatesDeNaissanceAppreciations',a{,0});
end;

//004BD374
procedure sub_004BD374(a:Boolean);
begin
   sub_004974F0('impressionDatesDeNaissanceGrilleVierge',a{,0});
end;

//004BD3B4
procedure sub_004BD3B4(var a:string);
begin//0
 //004BD3B4
 sub_0049733C('basDePageGauche', '', '\Options', a);
end;//0


//004BD3FC
procedure sub_004BD3FC(var a:string);
begin//0
 //004BD3FC
 sub_0049733C('basDePageDroite', '', '\Options', a);
end;//0


//004BD444
procedure sub_004BD444(var a:string);
begin//0
 //004BD444
 sub_0049733C('enTeteGauche', '', '\Options', a);
end;//0


//004BD48C
procedure sub_004BD48C(var a:string);
begin//0
 //004BD48C
 sub_0049733C('enTeteCentre', '', '\Options', a);
end;//0


//004BD4D4
procedure sub_004BD4D4(var a:string);
begin//0
 //004BD4D4
 sub_0049733C('enTeteDroite', '', '\Options', a);
end;//0

//004BD51C
{	*//procedure sub_004BD51C(?:?);
//begin
004BD51C    push        ebp
004BD51D    mov         ebp,esp
004BD51F    push        ecx
004BD520    mov         dword ptr [ebp-4],eax
004BD523    mov         eax,dword ptr [ebp-4]
004BD526    call        @LStrAddRef
004BD52B    xor         eax,eax
004BD52D    push        ebp
004BD52E    push        4BD563
004BD533    push        dword ptr fs:[eax]
004BD536    mov         dword ptr fs:[eax],esp
004BD539    push        0
004BD53B    mov         ecx,4BD578;'\Options'
004BD540    mov         edx,dword ptr [ebp-4]
004BD543    mov         eax,4BD58C;'basDePageGauche'
004BD548    call        00497660
004BD54D    xor         eax,eax
004BD54F    pop         edx
004BD550    pop         ecx
004BD551    pop         ecx
004BD552    mov         dword ptr fs:[eax],edx
004BD555    push        4BD56A
004BD55A    lea         eax,[ebp-4]
004BD55D    call        @LStrClr
004BD562    ret
>	004BD563    jmp         @HandleFinally
>	004BD568    jmp         004BD55A
004BD56A    pop         ecx
004BD56B    pop         ebp
004BD56C    ret
//end;*}

//004BD59C
{	*//procedure sub_004BD59C(?:?);
//begin
004BD59C    push        ebp
004BD59D    mov         ebp,esp
004BD59F    push        ecx
004BD5A0    mov         dword ptr [ebp-4],eax
004BD5A3    mov         eax,dword ptr [ebp-4]
004BD5A6    call        @LStrAddRef
004BD5AB    xor         eax,eax
004BD5AD    push        ebp
004BD5AE    push        4BD5E3
004BD5B3    push        dword ptr fs:[eax]
004BD5B6    mov         dword ptr fs:[eax],esp
004BD5B9    push        0
004BD5BB    mov         ecx,4BD5F8;'\Options'
004BD5C0    mov         edx,dword ptr [ebp-4]
004BD5C3    mov         eax,4BD60C;'basDePageDroite'
004BD5C8    call        00497660
004BD5CD    xor         eax,eax
004BD5CF    pop         edx
004BD5D0    pop         ecx
004BD5D1    pop         ecx
004BD5D2    mov         dword ptr fs:[eax],edx
004BD5D5    push        4BD5EA
004BD5DA    lea         eax,[ebp-4]
004BD5DD    call        @LStrClr
004BD5E2    ret
>	004BD5E3    jmp         @HandleFinally
>	004BD5E8    jmp         004BD5DA
004BD5EA    pop         ecx
004BD5EB    pop         ebp
004BD5EC    ret
//end;*}

//004BD61C
{	*//procedure sub_004BD61C(?:?);
//begin
004BD61C    push        ebp
004BD61D    mov         ebp,esp
004BD61F    push        ecx
004BD620    mov         dword ptr [ebp-4],eax
004BD623    mov         eax,dword ptr [ebp-4]
004BD626    call        @LStrAddRef
004BD62B    xor         eax,eax
004BD62D    push        ebp
004BD62E    push        4BD663
004BD633    push        dword ptr fs:[eax]
004BD636    mov         dword ptr fs:[eax],esp
004BD639    push        0
004BD63B    mov         ecx,4BD678;'\Options'
004BD640    mov         edx,dword ptr [ebp-4]
004BD643    mov         eax,4BD68C;'enTeteGauche'
004BD648    call        00497660
004BD64D    xor         eax,eax
004BD64F    pop         edx
004BD650    pop         ecx
004BD651    pop         ecx
004BD652    mov         dword ptr fs:[eax],edx
004BD655    push        4BD66A
004BD65A    lea         eax,[ebp-4]
004BD65D    call        @LStrClr
004BD662    ret
>	004BD663    jmp         @HandleFinally
>	004BD668    jmp         004BD65A
004BD66A    pop         ecx
004BD66B    pop         ebp
004BD66C    ret
//end;*}

//004BD69C
{	*//procedure sub_004BD69C(?:?);
//begin
004BD69C    push        ebp
004BD69D    mov         ebp,esp
004BD69F    push        ecx
004BD6A0    mov         dword ptr [ebp-4],eax
004BD6A3    mov         eax,dword ptr [ebp-4]
004BD6A6    call        @LStrAddRef
004BD6AB    xor         eax,eax
004BD6AD    push        ebp
004BD6AE    push        4BD6E3
004BD6B3    push        dword ptr fs:[eax]
004BD6B6    mov         dword ptr fs:[eax],esp
004BD6B9    push        0
004BD6BB    mov         ecx,4BD6F8;'\Options'
004BD6C0    mov         edx,dword ptr [ebp-4]
004BD6C3    mov         eax,4BD70C;'enTeteCentre'
004BD6C8    call        00497660
004BD6CD    xor         eax,eax
004BD6CF    pop         edx
004BD6D0    pop         ecx
004BD6D1    pop         ecx
004BD6D2    mov         dword ptr fs:[eax],edx
004BD6D5    push        4BD6EA
004BD6DA    lea         eax,[ebp-4]
004BD6DD    call        @LStrClr
004BD6E2    ret
>	004BD6E3    jmp         @HandleFinally
>	004BD6E8    jmp         004BD6DA
004BD6EA    pop         ecx
004BD6EB    pop         ebp
004BD6EC    ret
//end;*}

//004BD71C
{	*//procedure sub_004BD71C(?:?);
//begin
004BD71C    push        ebp
004BD71D    mov         ebp,esp
004BD71F    push        ecx
004BD720    mov         dword ptr [ebp-4],eax
004BD723    mov         eax,dword ptr [ebp-4]
004BD726    call        @LStrAddRef
004BD72B    xor         eax,eax
004BD72D    push        ebp
004BD72E    push        4BD763
004BD733    push        dword ptr fs:[eax]
004BD736    mov         dword ptr fs:[eax],esp
004BD739    push        0
004BD73B    mov         ecx,4BD778;'\Options'
004BD740    mov         edx,dword ptr [ebp-4]
004BD743    mov         eax,4BD78C;'enTeteDroite'
004BD748    call        00497660
004BD74D    xor         eax,eax
004BD74F    pop         edx
004BD750    pop         ecx
004BD751    pop         ecx
004BD752    mov         dword ptr fs:[eax],edx
004BD755    push        4BD76A
004BD75A    lea         eax,[ebp-4]
004BD75D    call        @LStrClr
004BD762    ret
>	004BD763    jmp         @HandleFinally
>	004BD768    jmp         004BD75A
004BD76A    pop         ecx
004BD76B    pop         ebp
004BD76C    ret
//end;*}

///004BD79C
function sub_004BD79C:byte;
begin
 result := sub_00497268('taillePolice',9{,0});

end;

///004BD7D0
procedure sub_004BD7D0(var a:string);
begin
  sub_0049733C('nomPolice','Times New Roman','\Options',a{,0});

end;

//004BD82C
//procedure sub_004BD82C(?:Integer);
//begin
{	*
004BD82C    xor         edx,edx
004BD82E    mov         dl,al
004BD830    xor         ecx,ecx
004BD832    mov         eax,4BD848;'taillePolice'
004BD837    call        004975A8
004BD83C    ret
*}
//end;

//004BD858
{	*//procedure sub_004BD858(?:?);
//begin
004BD858    push        ebp
004BD859    mov         ebp,esp
004BD85B    push        ecx
004BD85C    mov         dword ptr [ebp-4],eax
004BD85F    mov         eax,dword ptr [ebp-4]
004BD862    call        @LStrAddRef
004BD867    xor         eax,eax
004BD869    push        ebp
004BD86A    push        4BD89F
004BD86F    push        dword ptr fs:[eax]
004BD872    mov         dword ptr fs:[eax],esp
004BD875    push        0
004BD877    mov         ecx,4BD8B4;'\Options'
004BD87C    mov         edx,dword ptr [ebp-4]
004BD87F    mov         eax,4BD8C8;'nomPolice'
004BD884    call        00497660
004BD889    xor         eax,eax
004BD88B    pop         edx
004BD88C    pop         ecx
004BD88D    pop         ecx
004BD88E    mov         dword ptr fs:[eax],edx
004BD891    push        4BD8A6
004BD896    lea         eax,[ebp-4]
004BD899    call        @LStrClr
004BD89E    ret
>	004BD89F    jmp         @HandleFinally
>	004BD8A4    jmp         004BD896
004BD8A6    pop         ecx
004BD8A7    pop         ebp
004BD8A8    ret
//end;*}

//004BD8D4
procedure sub_004BD8D4(a:Boolean);
begin
{	*
004BD8D4    xor         ecx,ecx
004BD8D6    mov         edx,eax
004BD8D8    mov         eax,4BD8EC;'impressionFermerBoite'
004BD8DD    call        004974F0
004BD8E2    ret
*}
end;

//004BD904
function sub_004BD904:boolean;
begin//0
 //004BD904
 result := sub_004971A0('impressionFermerBoite', true{,0});
end;//0


//004BD934
procedure sub_004BD934(a:Boolean);
begin
 sub_004974F0('impressionRSeriesDeNotes',a{,0});
end;

//004BD968
procedure sub_004BD968(a:Boolean);
begin
 sub_004974F0('impressionRBilans',a{,0});
end;

//004BD994
procedure sub_004BD994(a:Boolean);
begin
 sub_004974F0('impressionRAppreciations',a{,0});
end;

//004BD9C8
procedure sub_004BD9C8(a:Boolean);
begin
 sub_004974F0('impressionRGrilleVierge',a{,0});
end;

//004BD9F8
function sub_004BD9F8:boolean;
begin
result := sub_004971A0('impressionRSeriesDeNotes', true{,0});
end;

//004BDA2C
function sub_004BDA2C:boolean;
begin
result := sub_004971A0('impressionRBilans', true{,0});
end;

//004BDA58
function sub_004BDA58:boolean;
begin
result := sub_004971A0('impressionRAppreciations', true{,0});
end;

//004BDA8C
function sub_004BDA8C:boolean;
begin
result := sub_004971A0('impressionRGrilleVierge', true{,0});
end;

Initialization
//004BDAF8
  gvar_00617C94 := gvar_00617C94 - 1;
  if ( gvar_00617C94 <> 0 ) then
  begin//1
    //004BDB01
    gvar_00617CB8 := true;
    gvar_00617CB9 := true;
    gvar_00617CBA := true;
    gvar_00617CBB := true;
    gvar_00617CBC := true;
    gvar_00617CBD := true;
    gvar_00617CBE := true;
    gvar_00617CBF := true;
  end;//1

Finalization
  //004BDABC

    gvar_00617C94 := gvar_00617C94 + 1;
    if ( gvar_00617C94 <> 0  ) then//004BDAD5 
      sub_004B964C(sub_004B9500);



end.