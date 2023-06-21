{***********************************************************
* Version Original V0.03 build 1                           *
* Decompiled by HOUIDEF AEK v 12:20 mercredi, août 29, 2018*
* The disassembly process : 0%                             *
************************************************************}
unit UImpressionGrilleVierge;

interface

uses
  SysUtils, Windows, Classes, Graphics, Printers,  UImpression, UFichierCdn, UInclureImpression, 
  UBlocTexte,_FormProgression,Dialogs,Forms,UBiblio,UViewer,Preview;

type
  TImpressionGrilleVierge = class(TImpression)
  public
    FMargePers:String;//FMargePers
	FPrintPreview :TPrintPreview;
    constructor Create(MyPageBounds : TRect;FichierCdn:TFichierCdn; PrintPreview :TPrintPreview; EnteteDePage:TEnteteBasDePage; BasDePage:TEnteteBasDePage; e:dword; f:TInclureImpression; g:boolean; Font:TFont);//00523FFC
    procedure DrawContentInCanvas(IdPage:dword);//0052309C
    function GetMargePers:dword;//00523FE0
    procedure GeneratePages(MinPage:dword; MaxPage:dword; NbrExemplaires:dword; Parite:dword; OrdreInverse:boolean);//00524130
    function GetLargeurColonne__:dword;//005243D4
    function GetNbrPageGrilleVierge:dword;//005243EC
    procedure DrawInCanvas(IdPage:dword);//00524480
    function GetTabWidth(IdPage:dword):dword;//005245A0
	destructor Destroy;
end;


implementation

//0052309C
procedure TImpressionGrilleVierge.DrawContentInCanvas(IdPage:dword);
var
  VNbrLigneBasTableau,VLargeurColonne__,TextHeight,NbrColonnes_,TailleColonne,TableauWidth, TopTableau,TableauHeight: integer;
  MargeWidth_,MargeHeight_,K,lvar_84,lvar_80,lvar_7C, NbreEleves,MyText,I:integer;
  J,L,lvar_3C:integer;
  TextAfficher,lvar_50,text,lvar_54,lvar_A0,lvar_48 : string;
  TextRect : TRect;
begin//0
   FCanvas := FPrintPreview.Canvas;
    VNbrLigneBasTableau := NbrLigneBasTableau;
    VLargeurColonne__ := GetLargeurColonne__;
    TextHeight := FCanvas.TextHeight('ALEXANDRE') + 4;
    NbrColonnes_ := FNbrCellInTab[IdPage] - FNbrCellInTab[IdPage - 1];
    TailleColonne := GetMaxTailleColonne(GetImpressionDatesDeNaissanceGrilleVierge, GetimpressionRGrilleVierge);
    TableauWidth := GetTabWidth(IdPage);
    TopTableau := GetTopTableau;
    TableauHeight := TextHeight * VNbrLigneBasTableau + TopTableau + 20;//EAX
    MargeWidth_ := MargeLeft;//TRUNC((FWidth - TableauWidth) / 2);
    MargeHeight_ := TRUNC((FHeight - TableauHeight) / 2);
      for K := 1 to FNbrCellInTab[IdPage - 1] - FNbrCellInTab[IdPage] - 1  do//0052323B
      begin//3
        //0052323F
        TextRect.left := MargeWidth_ + TailleColonne + (K - 1) * VLargeurColonne__;
        TextRect.Top := MargeHeight_;
        TextRect.Right := TextRect.left + VLargeurColonne__;
        TextRect.bottom := TextRect.Top + TextHeight;
        TextAfficher := '';
        DrawTextA(FCanvas.Handle, PChar(TextAfficher), Length(TextAfficher), TextRect, 5);
      end;//3
	
    NbreEleves := FCdn.NbreEleves ;
    if (FImprNbrEleve ) then //005232FA
      MyText := FCanvas.TextWidth(' ' + IntToStr(NbreEleves) + ' ')
    else MyText := 0;
	 DrawTextA(FCanvas.Handle, PChar(TextAfficher), Length(TextAfficher), TextRect, 5);
	 
    for I := 1 to NbreEleves do
    begin//3
        //00523355
        if (FImprNbrEleve ) then
        begin//4
          //0052335F
          if (I - 1 < 9) then //00523368
            lvar_50 := '  ' + IntToStr(I) + ' '
          else //00523395
            lvar_50 := ' ' + IntToStr(I) + ' ';

          TextRect.Left := MargeWidth_;
          TextRect.Top := I * TextHeight + MargeHeight_;//EDI
          TextRect.Right := TextRect.Left + MyText;//EAX
          TextRect.Bottom := TextRect.Top + TextHeight;//EAX
          TextAfficher := lvar_50;
          DrawTextA(FCanvas.Handle, PChar(TextAfficher), Length(TextAfficher), TextRect, 4);
          TextRect.Left := MargeWidth_ + MyText;//EAX
          TextRect.Top := I * TextHeight + MargeHeight_;
          TextRect.Right := TextRect.Left + TailleColonne + MyText;
          TextRect.Bottom := TextRect.Top + TextHeight;
          if ((FCdn.IsRedoublant(I)) and GetimpressionRGrilleVierge) then//005234A3
              lvar_54  := FCdn.GetEleveName(I) + ' (R)'
          else //005234F0
            lvar_54:=FCdn.GetEleveName(I);
          if (GetImpressionDatesDeNaissanceGrilleVierge) then
          begin//5
            //00523529
            text:=FCdn.GetDateNais(I);
            if (Trim(text) <> '') then//0052356C
              TextAfficher := ' ' + lvar_54 + ' (' + text + ')'
            else//00523590
              TextAfficher := ' ' + lvar_54 + ' ';
          end//5
          else //005235AC
            TextAfficher := ' ' + lvar_54 + ' ';
           
		   DrawTextA(FCanvas.Handle, PChar(TextAfficher), Length(TextAfficher), TextRect, 4);
        end//4
        else
        begin//4
          //005235F4
          TextRect.Left := MargeWidth_;
          TextRect.Top := TextHeight * I + MargeHeight_;
          TextRect.Right := TextRect.Left + TailleColonne;
          TextRect.Bottom := TextRect.Top + TextHeight;
          if ((FCdn.IsRedoublant(I)) and GetimpressionRGrilleVierge) then//0052365A
				lvar_54 := FCdn.GetEleveName(I) + '(R)'
          else
                lvar_54:=FCdn.GetEleveName(I);
          if (GetImpressionDatesDeNaissanceGrilleVierge ) then
          begin//5
            //005236E0
            text:=FCdn.GetDateNais(I);
            if ( Trim(text) <> '') then//00523723
              TextAfficher := ' ' + lvar_54 + ' (' + text + ')'
            else//00523747
              TextAfficher := ' ' + lvar_54 + ' ';
          end//5
          else//00523763
            TextAfficher := ' ' + lvar_54 + ' ';
          DrawTextA(FCanvas.Handle, PChar(TextAfficher), Length(TextAfficher), TextRect, 4);
        end;//4
        //005237ED
        for J := 1 to  FNbrCellInTab[IdPage] - FNbrCellInTab[IdPage - 1] - 1 do
          begin//5
            //005237F1
            TextRect.Left := MargeWidth_ + TailleColonne + (J - 1) * VLargeurColonne__;
            TextRect.Top := TextHeight * I + MargeHeight_;
            TextRect.Right := TextRect.Left + VLargeurColonne__;
            TextRect.Bottom := TextRect.Top + TextHeight;
            TextAfficher := '';
            DrawTextA(FCanvas.Handle, PChar(TextAfficher), Length(TextAfficher), TextRect, 5);
          end;//5
    end;//3
 
    lvar_3C := 0;
    if (VNbrLigneBasTableau > 0) then
    begin//2
      //005238C4
        for L := 0 to FInclureImpression.f8.count - 1 do//005238E1
        begin//4
          //005238EC
          FInclureImpression.fc[L] := false;  
          TextRect.Left := MargeWidth_;
          TextRect.Top := TextHeight * (FCdn.NbreEleves + lvar_3C + 1) + MargeHeight_ + 20;
          TextRect.Right := TextRect.Left + TailleColonne;
          TextRect.Bottom := TextRect.Top + TextHeight;
          TextAfficher := ' ' + FInclureImpression.f8[L] + ' ';
          DrawTextA(FCanvas.Handle, PChar(TextAfficher), Length(TextAfficher), TextRect, 4);
            //00523A1C
            for J := 1 to FNbrCellInTab[IdPage] - 1 - FNbrCellInTab[IdPage - 1] do
            begin//6
              //00523A20
              TextRect.Left := MargeWidth_ + TailleColonne + (J - 1) * VLargeurColonne__;
              TextRect.Top := TextHeight * (NbreEleves + lvar_3C + 1) + MargeHeight_ + 20;
              TextRect.Right := TextRect.Left + VLargeurColonne__;
              TextRect.Bottom := TextRect.Top + TextHeight;
              TextAfficher := '';
              DrawTextA(FCanvas.Handle, PChar(TextAfficher), Length(TextAfficher), TextRect, 5);
            end;//6
          lvar_3C := lvar_3C + 1;
        end;//4
    end;//2
      
      for L := 0 to   NbreEleves + 1 do//00523B2C
      begin//3
        //00523B37
        {if (L = 0) then
        begin//4
          //00523B3D
          FCanvas.MoveTo(MargeWidth_ + TailleColonne, MargeHeight_);
          FCanvas.LineTo(MargeWidth_ + TableauWidth, MargeHeight_);
        end//4
        else
        begin//4
          //00523B6F
		}
          FCanvas.MoveTo(MargeWidth_, L * TextHeight + MargeHeight_);
          FCanvas.LineTo(MargeWidth_ + TableauWidth, L * TextHeight + MargeHeight_);
        //end;//4
      end;//3
    if (VNbrLigneBasTableau > 0) then
    begin//2
      //00523BBC
      if (VNbrLigneBasTableau >= 0) then
      begin//3
        for L := 0 to VNbrLigneBasTableau - 0*1 do//00523BC7
        begin//4
          //00523BD2
          FCanvas.MoveTo(MargeWidth_, (FCdn.NbreEleves + 1 + L) * TextHeight + MargeHeight_ + 20);
          FCanvas.LineTo(MargeWidth_ + TableauWidth, (FCdn.NbreEleves + 1 + L) * TextHeight + MargeHeight_ + 20);
        end;//4
      end;//3
    end;//2
      
      for K := 0 to NbrColonnes_ + 1 do//00523C8F
      begin//3
        //00523C95
        if (K = 0) then
        begin//4
          //00523C99
          FCanvas.MoveTo(MargeWidth_, MargeHeight_ + TextHeight);
          FCanvas.LineTo(MargeWidth_, MargeHeight_ + TopTableau);
        end//4
        else
        begin//4
          //00523CCD
          if (K = 1) then
          begin//5
            //00523CD2
            FCanvas.MoveTo(MargeWidth_ + TailleColonne, MargeHeight_);
            FCanvas.LineTo(MargeWidth_ + TailleColonne, MargeHeight_ + TopTableau);
          end//5
          else
          begin//5
            //00523D0E
            FCanvas.MoveTo(MargeWidth_ + TailleColonne + (K - 1) * VLargeurColonne__, MargeHeight_);
            FCanvas.LineTo(MargeWidth_ + TailleColonne + (K - 1) * VLargeurColonne__, MargeHeight_ + TopTableau);
          end;//5
        end;//4
      end;//3
    if (VNbrLigneBasTableau > 0) then
    begin//2
      //00523D9C
        //00523DB1
        for K := 0 to NbrColonnes_ + 1  do
        begin//4
          //00523DB7
          if (K = 0) then
          begin//5
            //00523DBB
            FCanvas.MoveTo(MargeWidth_, MargeHeight_ + TopTableau + 20);
            FCanvas.LineTo(MargeWidth_, MargeHeight_ + TableauHeight);
          end//5
          else
          begin//5
            //00523DFA
            FCanvas.MoveTo(MargeWidth_ + TailleColonne + (K - 1) * VLargeurColonne__, MargeHeight_ + TopTableau + 20);
            FCanvas.LineTo(MargeWidth_ + TailleColonne + (K - 1) * VLargeurColonne__, MargeHeight_ + TableauHeight);
          end;//5
        end;//4
    end;//2
    if (FImprNbrEleve) then 
	begin
		MyText := FCanvas.TextWidth(' ' + IntToStr(NbreEleves) + ' ');
		FCanvas.MoveTo(MargeWidth_ + MyText, MargeHeight_ + TextHeight);
		FCanvas.LineTo(MargeWidth_ + MyText, (NbreEleves + 1) * TextHeight + MargeHeight_);
	end;
	
    //00523F3F
end;//0

//00523FE0
function TImpressionGrilleVierge.GetMargePers:dword;
begin//0
  //00523FE0
  result := FCanvas.TextWidth(FMargePers) + 4;//EAX
end;//0

//00523FFC
constructor TImpressionGrilleVierge.Create(MyPageBounds : TRect;FichierCdn:TFichierCdn; PrintPreview :TPrintPreview ; EnteteDePage:TEnteteBasDePage; BasDePage:TEnteteBasDePage; e:dword; f:TInclureImpression; g:boolean; Font:TFont);
var
 buf :string;
 i :integer;
 OneCM: TPoint;
begin//0
    inherited create(FichierCdn,PrintPreview.Canvas,EnteteDePage,BasDePage,e,f,g,Font);
    FMargePers := '';
      for I := 1 to e do//0052405D
        FMargePers := FMargePers + ' ';
	FCanvas := PrintPreview.Canvas;
    FPrintPreview := PrintPreview;
    //FPrintPreview.Title := 'Carnet de Notes version Personnelle - ' + FCdn.GetClasseName;
    //FPrintPreview.BeginDoc;
    FNbrPageV := GetNbrPageGrilleVierge;
    //005240C1
	//------------------------
	(*
	MargeLeft := 0;//MyPageBounds.Left;
	Marge_Top := 0;//MyPageBounds.Top;
	MargeRight  := 0;//MyPageBounds.Right;
	MargeButtom := 0;//MyPageBounds.Bottom;
	MargeWidth := 0;//MargeRight - MargeLeft - Printer.TableauWidth;
	MargeHeight := 0;//MargeButtom - Marge_Top - Printer.TableauHeight;
	Fwidth := 7637;//MyPageBounds.Left;//round((MyPageBounds.Right-MyPageBounds.Left)/2); //7637
	FHeight := 21160;//(MyPageBounds.Bottom-MyPageBounds.Top);
	*)
	//---------------------
end;//0

//00524130
procedure TImpressionGrilleVierge.GeneratePages(MinPage:dword; MaxPage:dword; NbrExemplaires:dword; Parite:dword; OrdreInverse:boolean);
var
S,P,I: integer;
begin//0
  //00524130
  FPrintPreview.BeginDoc;
  try
	if (MinPage > MaxPage) then 
	begin//1
		//00524146
		S := MaxPage;
		MaxPage := MinPage;
		MinPage := S;
	end;//1
		
	for P := 1 to NbrExemplaires do //00524159
	begin//2
		  //00524163
		  (*FormProgression:= TFormProgression.Create(Nil);
		  FormProgression.ProgressBar1.Min := MinPage;
		  FormProgression.ProgressBar1.Max := MaxPage + 1;
		  FormProgression.ProgressBar1.Step := 1;
		  FormProgression.ProgressBar1.Position := MinPage - 1;
		  *)
		  if (not(OrdreInverse)) then
		  begin//3
			//005241CC
			  for I := MinPage to MaxPage  do//005241D9
			  begin//5
				//005241DA
				case Parite of
				  0:
				  begin//7
					//005241F0
					DrawInCanvas( MinPage);
					if (P * MinPage <> MaxPage * NbrExemplaires) then 
					FPrintPreview.NewPage;
				  end;//7
				  1:
				  begin//7
					//0052422B
					if (MinPage mod 2 = 1) then
					begin//8
					  //0052423C
					  DrawInCanvas(MinPage);
					  if (P * MinPage <> MaxPage * NbrExemplaires) then 
					  FPrintPreview.NewPage;
					end;//8
				  end;//7
				  2:
				  begin//7
					//00524270
					if (MinPage mod 2 = 0) then 
					begin
						DrawInCanvas( MinPage);
						if (P * MinPage <> MaxPage * NbrExemplaires) then 
							FPrintPreview.NewPage;
				    end;//7
				   end;//6
			  end;//5
			  
			end;//4
		  end//3
		  else
		  begin//3
			//005242C1
			  //005242CE
			  for I := MaxPage to MinPage  do
			  begin//5
				//005242CF
				case Parite of
				  0:
				  begin//7
					//005242E5
					DrawInCanvas(MaxPage);
					if (P * MaxPage <> MinPage * NbrExemplaires) then 
						FPrintPreview.NewPage;
				  end;//7
				  1:
				  begin//7
					//0052431F
					if (MaxPage mod 2 - 1 = 0) then
					begin//8
					  //00524330
					  DrawInCanvas(MaxPage);
					  if (P * MaxPage <> MinPage * NbrExemplaires) then 
						FPrintPreview.NewPage;
					end;//8
				  end;//7
				  2:
				  begin//7
					//00524363
					if (MaxPage mod 2 = 0) then
					begin
						DrawInCanvas( MaxPage);
						if (P * MaxPage <> MinPage * NbrExemplaires) then 
						FPrintPreview.NewPage;
					end;
				  end;//7
				end;//6
			  end;//5
			end;//4
		  end;//3

      //FormProgression.Destroy;
	 finally
	 
      FPrintPreview.EndDoc;
    end;
  
end;//0

//005243D4
function TImpressionGrilleVierge.GetLargeurColonne__:dword;
begin//0
  //005243D4
  result := {GetMargePers+}MargeLeft;
end;//0

//005243EC
function TImpressionGrilleVierge.GetNbrPageGrilleVierge:dword;
var
  K:integer;
begin//0
  //005243EC
  K:=(Fwidth - GetMaxTailleColonne(GetImpressionDatesDeNaissanceGrilleVierge, GetimpressionRGrilleVierge)-4*MargeLeft) Div GetLargeurColonne__;
  if (K = 0) then //00524426
    result := 0
  else 
  begin
	SetLength(FNbrCellInTab, 2);
    FNbrCellInTab[0] := 1;
    FNbrCellInTab[1] := K + 1;//<==
	result := 1;
  end;
end;//0

//00524480
procedure TImpressionGrilleVierge.DrawInCanvas(IdPage:dword);
begin//0
  //00524480
    //0052449C
    Application.ProcessMessages;
    (*if (FormProgression.Visible = False) then//005244B5
      FormProgression.Show;
    FormProgression.Caption := 'Préparation de l''impression en cours ... page ' + IntToStr(FormProgression.ProgressBar1.Position);
    FormProgression.ProgressBar1.Position := FormProgression.ProgressBar1.Position + 1;
	*)
   // ImpEnteteBasDePage;
    DrawContentInCanvas(IdPage);
   // ImpEnteteBasDePage2;
    //0052454A
end;//0

//005245A0
function TImpressionGrilleVierge.GetTabWidth(IdPage:dword):dword;
begin//0
  //005245A0
  //error here :
  //showmessage('1:'+inttostr( GetLargeurColonne__ ));
  //showmessage('2:'+inttostr( (FNbrCellInTab[IdPage] - FNbrCellInTab[IdPage - 1])));
  result := GetLargeurColonne__ * (FNbrCellInTab[IdPage] - FNbrCellInTab[IdPage - 1]) + GetMaxTailleColonne(GetImpressionDatesDeNaissanceGrilleVierge, GetimpressionRGrilleVierge);
  //showmessage('3:'+inttostr( GetMaxTailleColonne(GetImpressionDatesDeNaissanceGrilleVierge, GetimpressionRGrilleVierge)));
  //showmessage('4:'+inttostr(result));
end;//0
destructor TImpressionGrilleVierge.Destroy;
begin//0
  //FPrintPreview.EndDoc;
  inherited  Destroy;
end;//0

end.