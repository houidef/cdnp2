{***********************************************************
* Version Original V0.03 build 1                           *
* Decompiled by HOUIDEF AEK v 12:20 mercredi, août 29, 2018*
* The disassembly process : 100%                           *
************************************************************}
unit UImpression;

interface

uses
Forms, Windows,  SysUtils, Classes, Graphics, Printers, 
UFichierCdn, UBlocTexte, UInclureImpression,dialogs;

type
  TImpression = class(TObject)
  public
	f4  : DWORD; //f4
	f8  : DWORD; //f8
	FCdn : TFichierCdn; //f3C
	FCanvas : TCanvas; //f40
	FFont : TFont; //f38
	FEnteteDePage : TEnteteBasDePage; //f44 : Entete De Page
	FBasDePage : TEnteteBasDePage; //f48: Bas De Page
	FIdPeriode : DWORD;//f2C
	FNbrPageV : byte;  //f30: Nbr des page vertical imprimé
	FInclureImpression : TInclureImpression; //f4C
	FImprNbrEleve : boolean;  //f34 : imprime Num de etudiant
	MargeLeft : DWORD; //f14 : marge de page
	Marge_Top : DWORD; //f1C
	MargeRight  : DWORD;//fC
	MargeButtom : DWORD; //f10
	MargeWidth : DWORD; //f18
	MargeHeight : DWORD; //f20
	Fwidth :DWORD; //f24 : width of page
	FHeight :DWORD; //f28 : Height of page
    FNbrCellInTab:array of integer;//FNbrCellInTab
    procedure ImpEnteteBasDePage;//00519534
    procedure ImpEnteteBasDePage2;//0051954C
    function PrintEnteteBasDePage(Ligne:dword; b:TEnteteBasDePage; c:boolean):dword;//00519578}
    constructor create (FichierCdn:TFichierCdn; Canvas:TCanvas;  EnteteDePage:TEnteteBasDePage; BasDePage:TEnteteBasDePage; e:dword; f:TInclureImpression; ImpNum:boolean; font:TFont);//0051992C
    function GetNbrPage:integer;//00519A90
    function GetTailleText(Canvas:TCanvas; Text:String):dword;//00519AA8
    function GetMaxTailleColonne(ImpDateNais:boolean; ImpRedoublage:boolean):dword;//00519AF8 get la taille de 1ere colone
    function NbrLigneBasTableau:dword;//00519E00
    function GetTopTableau:dword;//00519E58
    function TextHeightOfAllTableau:Boolean;//00519EB0}
  end;

implementation

//00519534
procedure TImpression.ImpEnteteBasDePage;
begin//0
  //00519534
  f4 := PrintEnteteBasDePage(Marge_Top, FEnteteDePage, True); //impression
end;//0


//0051954C
procedure TImpression.ImpEnteteBasDePage2;
begin//0
  //0051954C
  f8 := PrintEnteteBasDePage(FHeight - Marge_Top - 40, FBasDePage, False);
end;//0


//00519578
function TImpression.PrintEnteteBasDePage(Ligne:dword; b:TEnteteBasDePage; c:boolean):dword;
var
  lvar_14,lvar_18,lvar_1C ,lvar_8,lvar_C, lvar_10,lvar_4,lvar_20:Integer;
begin//0
  //00519578
  //005195A3
    if ((Trim(b.f4.f4) <> '') or (Trim(b.f8.f4) <> '') or (Trim(b.fC.f4) <> '')) then //005195B7
    begin//005195DF
		FCanvas.font.Name := FFont.Name;
		if (c) then//00519608
		  FCanvas.font.Size := 10
		else //0051961A
		  FCanvas.font.Size := 8;
		FCanvas.MoveTo(MargeLeft, Ligne);
		FCanvas.LineTo(Fwidth - MargeLeft, Ligne);
		lvar_18  := FCanvas.TextWidth(b.f4.f4);
		lvar_1C  := FCanvas.TextWidth(b.f8.f4);
		lvar_20  := FCanvas.TextWidth(b.fC.f4);
		lvar_C   := FCanvas.TextHeight(b.f4.f4);
		lvar_10  := FCanvas.TextHeight(b.f8.f4);
		lvar_14  := FCanvas.TextHeight(b.fC.f4);
		if ( b.f4.f8) then //005196BD
		  FCanvas.Rectangle(MargeLeft,Ligne + 8 ,Ligne + 8 + lvar_8 + 10,MargeLeft + lvar_14 + 5 );
		FCanvas.TextOut(MargeLeft, Ligne + 8 + 5, b.f4.f4);
		lvar_4 := TRUNC((MargeRight - lvar_18) / 2){ Div -2147483648};
		if (lvar_4<> 0) then
		begin//2//00519765
		  //FCanvas.Rectangle(lvar_4 - 5, Ligne + 8, Ligne + 8 + lvar_C + 10,lvar_4 + lvar_18 + 5 );
		end;//2
		FCanvas.TextOut(lvar_4, Ligne + 8 + 5,b.f8.f4 );
		if (b.fC.f8) then  //????????
		begin//2
		  //FCanvas.Rectangle(Fwidth - MargeLeft - lvar_1C - 5, Ligne + 8, Fwidth - MargeLeft,Ligne + 8 + lvar_10 + 10);//,Fwidth - MargeLeft );
		end;//2
		FCanvas.TextOut(Fwidth - lvar_1C - MargeLeft - 5, Ligne + 8 + 5, b.fC.f4);
		if (c ) then
		begin//00519895
		  FCanvas.MoveTo(MargeLeft, lvar_C + Ligne + 26);
		  FCanvas.LineTo(Fwidth - MargeLeft, lvar_C + Ligne + 26);
		end;//2
	   // FCanvas.font.Size := FFont.Size;
		result := lvar_C + 40;
	end
	else 
	   result := 40;
  //005198FE
end;//0


//0051992C
constructor TImpression.Create(FichierCdn:TFichierCdn; Canvas:TCanvas; EnteteDePage:TEnteteBasDePage; BasDePage:TEnteteBasDePage; e:dword; f:TInclureImpression; ImpNum:boolean; font:TFont);
begin//0
  //0051992C
  inherited create;
  FCdn := FichierCdn;
  FCanvas := Canvas;
  FFont := font;
  //FCanvas.Font := i;
  FEnteteDePage := EnteteDePage;
  FBasDePage := BasDePage;
  FIdPeriode := e;
  FNbrPageV := 0;//EAX
  FInclureImpression := f;
  FImprNbrEleve := ImpNum;
  (*
  MargeLeft := GetDeviceCaps(Printer.Handle, 112);
  Marge_Top := GetDeviceCaps(Printer.Handle, 113);
  MargeRight  := GetDeviceCaps(Printer.Handle, 110);
  MargeButtom := GetDeviceCaps(Printer.Handle, 111);
  MargeWidth := MargeRight - MargeLeft - Printer.TableauWidth;
  MargeHeight := MargeButtom - Marge_Top - Printer.TableauHeight;
  Fwidth := Printer.TableauWidth;
  FHeight := Printer.TableauHeight;
  
  if (MargeHeight < 100) then MargeHeight := 100;
  if (Marge_Top   < 100) then Marge_Top := 100;
  if (MargeLeft   < 100) then MargeLeft := 100;
  if (MargeWidth  < 100) then MargeWidth := 100;
  *)
  	MargeLeft := 1000;//MyPageBounds.Left;
	Marge_Top := 0;//MyPageBounds.Top;
	MargeRight  := 0;//MyPageBounds.Right;
	MargeButtom := 0;//MyPageBounds.Bottom;
	MargeWidth := 0;//MargeRight - MargeLeft - Printer.TableauWidth;
	MargeHeight := 0;//MargeButtom - Marge_Top - Printer.TableauHeight;
	Fwidth := 7637;//MyPageBounds.Left;//round((MyPageBounds.Right-MyPageBounds.Left)/2); //7637
	FHeight := 21160;//(MyPageBounds.Bottom-MyPageBounds.Top);
	Fwidth := 19000;
	//FHeight := 27700;
end;//0


//00519A90
function TImpression.GetNbrPage:integer;
begin//0
  if (TextHeightOfAllTableau) then//00519A9E
    result := FNbrPageV
  else 
    result := -1;//error!
end;//0


//00519AA8
function TImpression.GetTailleText(Canvas:TCanvas; Text:String):dword; //get taille text
begin//0
    result := Canvas.TextWidth(Text);
	//showmessage(Text+'   taille:'+inttostr(result));
end;//0

//00519AF8
function TImpression.GetMaxTailleColonne(ImpDateNais:boolean; ImpRedoublage:boolean):dword; //get la taille de 1ere colone
var
 I,Nbr : integer;
 buf,EleveName,text,text2 : string;
begin
	//00519AF8
	result :=0;
	//00519B40
	//FCanvas.Name := FFont.Name;
	//FCanvas.Size := FFont.Size;
	Nbr := FCdn.NbreEleves;
	for I := 1 to Nbr do  //00519B94
	begin//00519B9B
		if (ImpRedoublage) then EleveName := FCdn.GetEleveName(I) + ' (R)'
		else EleveName := FCdn.GetEleveName(I);
		if (ImpDateNais) then text := ' ' + EleveName + ' (' + FCdn.GetDateNais(I) + ')'
		else text := ' ' + EleveName + ' ';
		if (GetTailleText(FCanvas, text) > result) then
		result := GetTailleText(FCanvas, text);
	end;//3
	if (FInclureImpression <> nil) then//00519CAB
	for I := 0 to FInclureImpression.f8.count - 1 do //00519CC1
	begin//00519CCB
		if (not(FInclureImpression.FC[I])) then
		begin
			text2 :=  FInclureImpression.f8[I] + ' ';
			if (GetTailleText(FCanvas, text2) > result) then 
			result := GetTailleText(FCanvas, text2);
		end;
	end;//4
	if (FImprNbrEleve) then result := GetTailleText(FCanvas, IntToStr(Nbr)) + result + 10;
	result := result + 20;
end;//0


//00519E00
function TImpression.NbrLigneBasTableau:dword; // Nbre des lignes ajoutés apres tableau!
var
  I: Integer;
begin//0
   result := 0;
  if (FInclureImpression <> nil) then
  begin//00519E0C
      for I := 0 to  FInclureImpression.f8.Count - 1 do
      begin//3
        //00519E27
        if (FInclureImpression.fC[I]) then
			result := result + 1;
      end;//3
  end;
end;//0


//00519E58
function TImpression.GetTopTableau:dword;
begin//0
  result := (FCanvas.TextHeight('ALEXANDRE')+ 4)*(Byte(FCdn.NbreEleves)+1);
end;//0

//00519EB0
function TImpression.TextHeightOfAllTableau:Boolean;
begin//0
  result := ((FCanvas.TextHeight('ALEXANDRE') + 4) * NbrLigneBasTableau + GetTopTableau + 140 < FHeight {Printer.pageHeight});
end;//0


end.
