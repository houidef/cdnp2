{***********************************************************
* Version Original V0.01                                   *
* Decompiled by Houidef AEK v 18:58 Dimanche 19 aout 2018  *
* The disassembly process : 95%                            *
************************************************************}
unit UImpressionGrilleNotes;

interface

uses
Forms, Windows,  SysUtils, Classes,UImpression,UFichierCdn,Unit173,Graphics,Printers,
 _FormProgression,UInclureImpression,dialogs;

type
  TImpressionGrilleNotes = class(TImpression)
  constructor Create(FichierCdn:TFichierCdn; Canvas:TCanvas; EnteteDePage:TEnteteBasDePage; BasDePage:TEnteteBasDePage; e:dword; f:TInclureImpression; g:boolean; Font:TFont);//0051BC40
	procedure sub_0051A184(b:dword);//0051A184
    function sub_0051BB60:dword;//0051BB60
    procedure sub_0051BD4C(Min:dword; Max:dword; Nbr_Exp:dword; d:dword; e:boolean);//0051BD4C
    function sub_0051BFF0:dword;//0051BFF0
    function sub_0051C60C:byte;//0051C60C //Calcul le Nbr de page 
    procedure sub_0051C774(Num_Page:dword);//0051C774
    function sub_0051C894(b:dword):dword;//0051C894
	destructor Destroy;
  end;


implementation
   uses unit111,_unit112;
//0051A184
//imprimer les notes des etudiants
procedure TImpressionGrilleNotes.sub_0051A184(b:dword);
var
R:TRect;
text,buf,lvar_60:string;
lvar_44,lvar_20,lvar_28,lvar_3C,lvar_2C,lvar_30,lvar_88,lvar_38:integer;
RWITH,RHEIGHT,RTOP,NbrCell,NumModule,I,J,K,C,L :integer;
lvar_4C,lvar_50,lvar_48,lvar_10,lvar_C:integer;
lvar_80,lvar_70:Real;
lvar_84 : TStringList;
begin//0
  //0051A184
    //0051A1AA
    lvar_44 := sub_00519E00;
	 
    RWITH := sub_0051BFF0;
    RHEIGHT{lvar_18} := f40.TextHeight('ALEXANDRE')+ 4;
    lvar_C := f50[b] - f50[b - 1];
	 
    lvar_20 := sub_00519AF8(GetimpressionDatesDeNaissanceSeriesDeNotes, GetimpressionRSeriesDeNotes); //la taille de 2eme colone 'Noms&prenom etudiant'
	
    lvar_10 := f3C.EleveCount;
    lvar_28 := sub_0051C894(b);
	
    lvar_3C := sub_00519E58;
    lvar_2C := RHEIGHT * lvar_44 + lvar_3C + $14{20};//EAX
    lvar_30 := TRUNC((f24 - lvar_28) / 2) ;
    RTOP := TRUNC((f28 - lvar_2C) / 2) ;
    NbrCell := 1;//NbrCell = lvar_38
      lvar_88 := f50[b]- f50[b - 1];
      for NumModule := 0 to f50[b] - f50[b - 1] - 1 do //0051A345
      begin//3
        //0051A34F
        R.left := lvar_30 + lvar_20 + (NbrCell - 1) * RWITH;
        R.Top := RTOP;
        R.right := R.left + RWITH;
        R.bottom := R.Top + RHEIGHT;
        if (f3C.GetNbreModules(f2C)  >= NumModule) then
        begin//4
          //0051A3E2
         f3C._readCompteMoy(f2C, text, NumModule+1);
        end//4
        else
        begin//4
          //0051A427
          text := 'Moyennes';
        end;//4
		
        DrawTextA(f40.Handle, PChar(text), Length(text), R, 5);
        NbrCell := NbrCell + 1;
      end;//3
    

    
    lvar_50 := f3C.EleveCount;
    
    if (f34) then
    begin//2
      //0051A496
      lvar_4C := f40.TextWidth(' ' + IntToStr(lvar_50) + ' ');
      //lvar_4C := f40.TextWidth(lvar_1A8);
    end//2
    else
    begin//2
      //0051A4DA
      lvar_4C := 0;
    end;//2/
          
      //lvar_88 := lvar_50;
      for {lvar_1C}I := 1 to lvar_50 do//0051A4EA
      begin//3
        //0051A4F7
        if (f34) then
        begin//4
          //0051A504
          if (I - 10 < 0) then//0051A50D
            text := '  ' + IntToStr(I) + ' '
          else//0051A53A
            text := ' ' + IntToStr(I) + ' ';

          R.Left := lvar_30;
          R.Top := RHEIGHT * I + RTOP;
          R.Right := R.Left + lvar_4C;//EAX
          R.Bottom := R.Top + RHEIGHT;
          DrawTextA(f40.Handle, PChar(text), Length(text), R, 4);
          R.Left := lvar_30 + lvar_4C;//EAX
          R.Top := RHEIGHT * I + RTOP;//EAX
          R.Right := R.Left + lvar_20 + lvar_4C;//EAX
          R.Bottom := R.Top + RHEIGHT;//EAX
          if (f3C.sub_004C8E50(I)) and (GetimpressionRSeriesDeNotes) then//0051A675 redoublant and imprRedoublant
          begin//5
              //0051A67E
              f3C.GetEleveName__(I, buf);
              lvar_60 := buf + ' (R)';
          end//5
          else
          begin//5
            f3C.GetEleveName__(I, buf);
			lvar_60 := buf;
          end;//5
          if (GetimpressionDatesDeNaissanceSeriesDeNotes) then
          begin//5
            //0051A703
            f3C.GetElevDateNais(I, buf);
            if (Trim(buf) <> '') then
            begin//6
              //0051A74A
              text := ' ' + lvar_60 + ' (' + buf + ')';
            end//6
            else
            begin//6
              //0051A76E
              text := ' ' + lvar_60 + ' ';
            end;//6
          end//5
          else
          begin//5
            //0051A78A
            text := ' ' + lvar_60 + ' ';
          end;//5
          DrawTextA(f40.Handle, PChar(text), Length(text), R, 4);
        end//4
        else
        begin//4
          //0051A7D5
          R.Left := lvar_30;
          R.Top := RHEIGHT * I + RTOP;
          R.Right := R.Left + lvar_20;
          R.Bottom := R.Top + RHEIGHT;
          if (f3C.sub_004C8E50(I)) then
          begin//5
            //0051A848
            if (GetimpressionRSeriesDeNotes) then
            begin//6
              //0051A851
              f3C.GetEleveName__(I, buf);
              lvar_60 := buf + ' (R)';
            end//6
            else
            begin//6
              //0051A899
            end;//6
          end//5
          else
          begin//5
            //0051A899??? And ???
            f3C.GetEleveName__(I, buf);
          end;//5
          
          if (GetimpressionDatesDeNaissanceSeriesDeNotes) then
          begin//5
            //0051A8D6
            f3C.GetElevDateNais(I, buf);
            if (Trim(buf) <> '') then
            begin//6
              //0051A91D
              text := ' ' + lvar_60 + ' (' + buf + ')';
            end//6
            else
            begin//6
              //0051A941
              text := ' ' + lvar_60 + ' ';
            end;//6
          end//5
          else
          begin//5
            //0051A95D
            text := ' ' + lvar_60 + ' ';
          end;//5
          DrawTextA(f40.Handle, PChar(text), Length(text), R, 4);
        end;//4
		//-----------------------------------------------------------
        NbrCell := 1;
		//lvar_8C :=  f50[b - 1];
          for J := 1{0} to f50[b] {- 1} - f50[b - 1] do //0051A9F2
          begin//5
            //0051A9FC

            R.Left := lvar_30 + lvar_20 + (NbrCell - 1) * RWITH{lvar_14};
            R.Top := RHEIGHT * I + RTOP{lvar_34};//EAX
            R.Right := R.Left + RWITH;//EAX
            R.Bottom := R.Top + RHEIGHT;//EAX
            if (f3C.GetNbreModules(f2C) >= J) then
              f3C._GetStrNote(f2C, J, I, text)
            else//0051AAF4
              f3C.GetStrNoteAsFloat(f2C, I, GetarrondirMoyennes, text);
            if (GetimpressionCouleurNote) then //0051AB46
              if (text = 'abs') Or (text = '') then//0051AB5B
                f40.font.Color := 0
              else
              begin//7
                //0051AB70
                try
                  //0051AB7E
                  if (f3C.GetNbreModules(f2C) >= J) then
                  begin//9
                    //0051ABA6
                    f3C.GetStrNoteSur(f2C,J, buf);
                    lvar_70 := StrToFloat(buf);
                  end//9
                  else
                  begin//9
                    //0051ABFD
                    lvar_70 := GetmoyennesSur;
                  end;//9
                  lvar_80 := StrToFloat(text);
                  //0051AC21
                  if ( lvar_80< 0) Or (lvar_70 < 0) then //!!!!!!!
                  begin//9
                    //0051AC39
                    f40.font.Color := _Getcouleur4Note;
                  end//9
                  else
                  begin//9
                    //0051AC53
                    if (lvar_70 >= 0) then
                    begin//10
                      //0051AC61
                      if (lvar_80 <0 ) then
                      begin//11
                        //0051AC74
                        f40.font.Color:= _Getcouleur1Note;
                      end//11
                      else
                      begin//11
                        //0051AC8B
						if(lvar_70*3/4=lvar_80)then begin
						end
						else if(lvar_70=lvar_80)then begin
						end;
                      end;//11
                    end//10
                    else
                    begin//10
                      //0051AC8B??? And ???
                      if (lvar_80 >= 0) then
                      begin//11
                        //0051ACA4
                        {if ( >= ) then
                        begin//12
                          //0051ACB1
                          f40.font.Color:=_Getcouleur3Note;
                        end//12
                        else
                        begin//12
                          //0051ACC8
                        end;//12}
                      end//11
                      else
                      begin//11
                        //0051ACC8??? And ???
                       // f40.font.Color := EDX;
                      end;//11
                    end;//10
                  end;//9
                except//8
                  //0051ACEC
                end;//8
              end;//7
           DrawTextA(f40.Handle, PChar(text), Length(text), R, 5);
            f40.font.Color := 0;
            NbrCell := NbrCell + 1;
          end;//5
      end;//3

    lvar_48 := 0;
    if (lvar_44 > 0) then
    begin//2
      //0051AD65
        for K := 0 to f4C.f8.count - 1 do//0051AD85
        begin//4
          //0051AD8E
          if (f4C.fC[K])then
		  begin
          R.Left := lvar_30;
          R.Top := RHEIGHT * (f3C.EleveCount + lvar_48 + 1) + RTOP + $14{20};//EAX
          R.Right := R.Left + lvar_20;
          R.Bottom := R.Top + RHEIGHT;
          text := ' ' + f4C.f8[K] {+ lvar_1CC  }+ ' ';
          DrawTextA(f40.Handle, PChar(text), Length(text), R, 4);
          NbrCell := 1;
            
            for {lvar_24}J := {f50[b - 1]}1 to f50[b] {- 1} - f50[b - 1] do//0051AED6
            begin//6
              //0051AEE0
              R.Left := lvar_30 + lvar_20 + (NbrCell - 1) * RWITH;//EAX
              R.Top := RHEIGHT * (f3C.EleveCount + lvar_48 + 1) + RTOP + $14{20};//EAX
              R.Right := R.Left + RWITH;
              R.Bottom := R.Top + RHEIGHT;
              
              
              if (J <= f3C.GetNbreModules(f2C)) then
              begin//7
                //0051AFC0
                //EAX := EBX;
                case K of  //EBX
                  0:
                  begin//9
                    //0051B00A
                    f3C.sub_004C3D1C(f2C, J, text);
                  end;//9
                  1:
                  begin//9
                    //0051B052
                    f3C.__GetStrMin(f2C, text, J);
					
                  end;//9
                  2:
                  begin//9
                    //0051B09A
                    f3C.__GetStrMax(f2C, text, J);
					
                  end;//9
                  3:
                  begin//9
                    //0051B0E2
                    f3C.__GetStrMoy(f2C, text, J);
                  end;//9
                  4:
                  begin//9
                    //0051B12A
                    f3C.sub_004C42D4(f2C, J, text);
					
                  end;//9
                  5:
                  begin//9
                    //0051B172
                    f3C.sub_004C3EA4(f2C, J, text);
                  end;//9
                  6:
                  begin//9
                    //0051B1BA
                    f3C.sub_004C451C(f2C, J, text);
					
                  end;//9
                  7:
                  begin//9
                    //0051B202
                    f3C.GetStrNoteSur( f2C, J, text);
                  end;//9
                  8:
                  begin//9
                    //0051B24A
                    f3C.GetStrCoeff(f2C, J, text);
                  end;//9
                  9:
                  begin//9
                    //0051B292
                    f3C.GetStrComptMoy(f2C, J, text);
                  end;//9
                  10:
                  begin//9
                    //0051B2DA
                    f3C.GetStrDate(f2C, J, text);
                  end;//9
                  11:
                  begin//9
                    //0051B322
                    f3C.GetStrCommentaire(f2C, J, text);
                  end;//9
                  12:
                  begin//9
                    //0051B36A
                    f3C.GetStrTypeNote(f2C, J, text);
                  end;//9
                  13:
                  begin//9
                    //0051B3B2
                    f3C.GetStrOraleEcrit(f2C, J, text);
                  end;//9
                end;//8
              end//7
              else
              begin//7
                //0051B3FA
                lvar_84 := TStringList.Create;
                  for C := 1 to f3C.EleveCount do//0051B423
                  begin//9
                    //0051B42A
                    f3C.GetStrNoteAsFloat(f2C, C, GetarrondirMoyennes, buf);
                    lvar_84.add(buf);
                  end;//9
               
                case K of //EBX
                  0:
                  begin//9
                    //0051B4D3
                    text := '';
                  end;//9
                  1:
                  begin//9
                    //0051B4E0
                    __GetStrPeriodeMin(lvar_84, text);
                  end;//9
                  2:
                  begin//9
                    //0051B504
                   __GetStrPeriodeMax(lvar_84, text);
                  end;//9
                  3:
                  begin//9
                    //0051B528
                    __GetStrPeriodeMoy(lvar_84, text);
                  end;//9
                  4:
                  begin//9
                    //0051B549
                    sub_004BDFE8(lvar_84, text);
                  end;//9
                  5:
                  begin//9
                    //0051B56A
                    sub_004BE1C4(lvar_84, text);
                  end;//9
                  6:
                  begin//9
                    //0051B58B
                    sub_004BE364(lvar_84, text);
                  end;//9
                  7,8,9,10,11,12:
                  begin//9
                    //0051B5AC
                    text := '';
                  end;//9
                end;//8
                
                lvar_84.destroy;
              end;//7
			  
              DrawTextA(f40.Handle, PChar(text), Length(text), R, 5);
              NbrCell := NbrCell + 1;
            end;//6
          lvar_48 := lvar_48 + 1;
		 end;
        end;//4
    end;//2
	//--------------------------------------------------------------------- 
	//impr lignes horisontals 1ere tableau
	  for K := 0 to lvar_10 + 1 {+1} do //0051B634
	  begin//3
		//0051B63D
		if (K = 0) then //EBX
		begin//4
		  //0051B641
		  f40.MoveTo(lvar_30 + lvar_20, RTOP);
		  f40.LineTo(lvar_30 + lvar_28, RTOP);
		end//4
		else
		begin//4
		  //0051B679
		  f40.MoveTo(lvar_30, K * RHEIGHT + RTOP);
		  f40.LineTo(lvar_30 + lvar_28, K * RHEIGHT + RTOP);
		end;//4
	  end;//3

      //0051B6E4
	  //impr lignes vericales de 2eme tableau
        for K := 0 to lvar_44 + 1 do //0051B6EF
        begin//4
          //0051B6F8
          f40.MoveTo(lvar_30, (f3C.EleveCount + 1 + K) * RHEIGHT+ RTOP + $14{20});
          f40.LineTo( lvar_30 + lvar_28, (f3C.EleveCount + 1 + K) * RHEIGHT + RTOP + $14{20});
        end;//4
      //impr lignes vericales de 1ere tableau
      for K := 0 to lvar_C + 1 {+1}  do //0051B7C2
      begin//3
        //0051B7CB
        if (K = 0) then
        begin//4
          //0051B7CF
          f40.MoveTo(lvar_30, RTOP + RHEIGHT);
          f40.LineTo(lvar_30, RTOP + lvar_3C);
        end//4
        else
        begin//4
          //0051B80A
          if (K = 1) then
          begin//5
            //0051B80F
            f40.MoveTo(lvar_30 + lvar_20, RTOP);
            f40.LineTo(lvar_30 + lvar_20, RTOP + lvar_3C);
          end//5
          else
          begin//5
            //0051B854
            f40.MoveTo(lvar_30 + lvar_20 + (K - 1) * RWITH, RTOP);
            f40.LineTo(lvar_30 + lvar_20 + (K - 1) * RWITH, RTOP + lvar_3C);
          end;//5
        end;//4
      end;//3
	//impr lignes horisontals 2eme tableau  
    if (lvar_44 > 0) then
    begin//2
      //0051B8EB
		for K := 0 to lvar_C + 1 {+1}  do //0051B900
		begin//4
		  //0051B909
		  if (K = 0) then
		  begin//5
			//0051B90D
			f40.MoveTo(lvar_30, RTOP + lvar_3C + $14{20});
			f40.LineTo(lvar_30, RTOP + lvar_2C);
		  end//5
		  else
		  begin//5
			//0051B952
			f40.MoveTo(lvar_30 + lvar_20 + (K - 1) * RWITH, RTOP + lvar_3C + $14{20});
			f40.LineTo(lvar_30 + lvar_20 + (K - 1) * RWITH, RTOP + lvar_2C);
		  end;//5
		end;//4
    end;//2
    
    if (f34) then
	begin
		lvar_4C := f40.TextWidth(' ' + IntToStr(lvar_50) + ' ');
		f40.MoveTo(lvar_30 + lvar_4C, RTOP + RHEIGHT);
		f40.LineTo(lvar_30 + lvar_4C, (lvar_50 + 1) * RHEIGHT + RTOP);
	end;
end;//0



//0051BB60
function TImpressionGrilleNotes.sub_0051BB60:dword;
var
  buf:string;
  res,I:integer;
begin//0
  //0051BB60

    //0051BB80

      res := 0;
      for I := 1 to f3C.GetNbreModules(f2C) do //0051BBAF
      begin//3
        //0051BBB6
        f3C._readCompteMoy(f2C, buf, I);
        if (f40.TextWidth(buf) > res) then 
			res := f40.TextWidth(buf);
      end;//3

    result := res + 4;//EBX

end;//0

//0051BC40
constructor TImpressionGrilleNotes.Create(FichierCdn:TFichierCdn; Canvas:TCanvas; EnteteDePage:TEnteteBasDePage; BasDePage:TEnteteBasDePage; e:dword; f:TInclureImpression; g:boolean; Font:TFont);
var
 Buf:string;
begin//0
  //0051BC40
    //0051BC72
    inherited create(FichierCdn, Canvas, EnteteDePage, BasDePage, e, f, g,Font);
    //f4C := f;
    Printer.Title := 'Carnet de Notes version Personnelle - ' + f3C.GetClasseName;
    Printer.BeginDoc;
    f30 := sub_0051C60C; //initiliser le Nbr de page vertical
    
end;//0


//0051BD4C
//Min : Page minimun
//Max : Page maximun
procedure TImpressionGrilleNotes.sub_0051BD4C(Min:dword; Max:dword; Nbr_Exp:dword; d:dword; e:boolean);
var
  I,J:integer;
  x:dword;
begin//0
  //0051BD4C
  
  if (Min > Max) then
  begin//0051BD62
    X := Max;
    Max := Min;
    Min := X;
  end;//1
  Nbr_Exp :=1;
    for J := 1 to Nbr_Exp do //0051BD75 imprimer toutes les pages exemplaires
    begin//2
      //0051BD7F
      {gvar_00617DE4} FormProgression:= TFormProgression.Create(Nil);
      FormProgression.ProgressBar1.Min := Min;
      FormProgression.ProgressBar1.Max := Max + 1;
      FormProgression.ProgressBar1.Step := 1;
      FormProgression.ProgressBar1.Position := Min - 1;
      if (e = false) then
      begin//0051BDE8
	      
          for I := Min to Max do //0051BDF5
          begin//0051BDF6
            case d of
              0:
              begin//0051BE0C
                sub_0051C774(Min);
                if (J * Min <> Max * Nbr_Exp) then 
                   Printer.NewPage;
              end;//7
              1:
              begin//0051BE47
                if (Min mod 2 = 1) then
                begin//8
                  //0051BE58
                  sub_0051C774(Min);
                  if (J * Min <> Max * Nbr_Exp) then 
                  Printer.NewPage;
                end;//8
              end;//7
              2:
              begin//0051BE8C
                if (Min mod 2 = 0) then 
				begin
					sub_0051C774(Min);
					if (J * Min <> Max * Nbr_Exp) then 
					Printer.NewPage;
				end;
              end;//7
            end;//6
          end;//5
      end//3
      else
      begin//3
        //0051BEDD
		  
          for I := Max to Min do //0051BEEA
          begin//0051BEEB
            case d of
              0:
              begin//0051BF01
                sub_0051C774(Max);
                if (J * Max <> Min * Nbr_Exp) then 
                Printer.NewPage;
              end;//7
              1:
              begin//0051BF3B
                if (Max mod 2 - 1 = 0) then
                begin//0051BF4C
                  sub_0051C774(Max);
                  if (J * Max <> Min * Nbr_Exp) then 
                  Printer.NewPage;
                end;//8
              end;//7
              2:
              begin//7
                //0051BF7F
                if (Max mod 2 = 0) then 
				begin
					sub_0051C774(Max);
					if (J * Max <> Min * Nbr_Exp) then 
					Printer.NewPage;
				end;
              end;//7
            end;//6
          end;//5
      end;//3
      FormProgression.Destroy;
    end;//2
end;//0


//0051BFF0
function TImpressionGrilleNotes.sub_0051BFF0:dword;
var
 Max,Res,ACol,I:integer;
 buf:string;
begin//0
  //0051BFF0
    //0051C012
    Max := 0;
    Res := 0;
    if (sub_00519E00 > 0) then // Nbre des lignes ajoutés apres le tableau!
    begin//2
      //0051C025
        for I := 0 to f4C.f8.count - 1 do//0051C042
        begin//4
          //0051C04D
          if (f4C.fC[I])then 
			  for ACol := 1 to f3C.GetNbreModules(f2C)  do
			  begin//5
				//0051C09F
				case I of
				  0: //Nombre d'élèves présents
				  begin//7
					//0051C0E6
					f3C.sub_004C3D1C(f2C, ACol, buf);
					Res := sub_00519AA8(f40, buf);
				  end;//7
				  1://Min
				  begin//7
					//0051C137
					f3C.__GetStrMin(f2C, buf, ACol);
					Res := sub_00519AA8(f40, buf);
				  end;//7
				  2://Max
				  begin//7
					//0051C18E
					f3C.__GetStrMax(f2C, buf, ACol);
					Res := sub_00519AA8(f40, buf);
				  end;//7
				  3://Moyenne
				  begin//7
					//0051C1E5
					f3C.__GetStrMoy(f2C, buf, ACol);
					Res := sub_00519AA8(f40, buf);
				  end;//7
				  4://Ecart type
				  begin//7
					//0051C23C
					f3C.sub_004C42D4(f2C, ACol, buf);
					Res := sub_00519AA8(f40, buf);
				  end;//7
				  5://% notes < moyenne
				  begin//7
					//0051C293
					f3C.sub_004C3EA4(f2C, ACol, buf);
					Res := sub_00519AA8(f40, buf);
				  end;//7
				  6://% notes < moyenne classe
				  begin//7
					//0051C2EA
					f3C.sub_004C451C(f2C, ACol, buf);
					Res := sub_00519AA8(f40, buf);
				  end;//7
				  7://Noté sur
				  begin//7
					//0051C341
					f3C.GetStrNoteSur(f2C, ACol, buf);
					Res := sub_00519AA8(f40, buf);
				  end;//7
				  8://Coefficient
				  begin//7
					//0051C398
					f3C.GetStrCoeff(f2C, ACol, buf);
					Res := sub_00519AA8(f40, buf);
				  end;//7
				  9://Compte dans la moyenne
				  begin//7
					//0051C3EF
					f3C.GetStrComptMoy(f2C, ACol, buf);
					Res := sub_00519AA8(f40, buf);
				  end;//7
				  10://Date
				  begin//7
					//0051C446
					f3C.GetStrDate(f2C, ACol, buf);
					Res := sub_00519AA8(f40, buf);
				  end;//7
				  11://Commentaire
				  begin//7
					//0051C49D
					f3C.GetStrCommentaire(f2C, ACol, buf);
					Res := sub_00519AA8(f40, buf);
				  end;//7
				  12://Type de notes
				  begin//7
					//0051C4F1
					f3C.GetStrTypeNote(f2C, ACol, buf);
					Res := sub_00519AA8(f40, buf);
				  end;//7
				end;//6
				if (Res > Max) then
						Max := Res;
				
			  end;//5
        end;//4
    end//2
    else
    begin//2
      //0051C563
      Max := sub_00519AA8(f40, '10,00');
    end;//2
    Res := sub_0051BB60;
	
    if (Res > Max) then//0051C581
      Max := Res;//ESI
    if (GetimpressionColonneMoyenne) then
    begin//2
      //0051C58C
      Res := sub_00519AA8(f40, ' Moyennes ');
      if (Res > Max) then
      begin//3
        //0051C5A1
        Max := Res;//ESI
      end;//3
    end;//2
	
    result := Max + $14{20};//EBX
    //0051C5BC
end;//0

//0051C60C
function TImpressionGrilleNotes.sub_0051C60C:byte; //Calcul le Nbr de page verticale 
var
 NbCell,I,J,lvar_18:integer;
begin//0
  //0051C60C
  SetLength(f50, 1);
  f50[0] := 1;  
  //GetimpressionDatesDeNaissanceSeriesDeNotes:imprime date naissance
  //GetimpressionRSeriesDeNotes:imprime (R) 
  //f24: Printer.PageWidth
  NbCell :=  (f24 - sub_00519AF8(GetimpressionDatesDeNaissanceSeriesDeNotes,GetimpressionRSeriesDeNotes)) div sub_0051BFF0; //Nbre de cell par page
  
  if (NbCell = 0) then //0051C67B error!
    result := 0
  else 
  begin
	  if (GetimpressionColonneMoyenne) then //0051C68B test if impressionColonneMoyenne
		lvar_18 := f3C.GetNbreModules(f2C) + 1 //Nbre des Modules dans chaque Periode
	  else//0051C6B7
		lvar_18 := f3C.GetNbreModules(f2C) ;

	  J:=0;
	  I:=0;
	  repeat //0051C6DC
		  
		  J := J + 1;
		  SetLength(f50,J+1);
		  f50[J] := f50[J - 1] + NbCell;
		  I:=I+NbCell;
	  until(I>=lvar_18);
	 
	  f50[J] := lvar_18 + 1;//EDX
	  Result := J;
	end;
end;//0


//0051C774
procedure TImpressionGrilleNotes.sub_0051C774(Num_Page:dword);
begin//0
  //0051C774

    {Application.ProcessMessages;
    if (FormProgression.Visible = False) then//0051C7A9
      FormProgression.Show;

    FormProgression.Caption := 'Préparation de l''impression en cours ... page ' + IntToStr(FormProgression.ProgressBar1.Position);
    FormProgression.ProgressBar1.Position := FormProgression.ProgressBar1.Position + 1;}
    sub_00519534; //imprimer EnteteBasDePage
    sub_0051A184(Num_Page);
    sub_0051954C;//imprimer EnteteBasDePage
end;//0


//0051C894
function TImpressionGrilleNotes.sub_0051C894(b:dword):dword;
begin//0
  //0051C894

  result := sub_0051BFF0 * (f50[b] - f50[b - 1]) + sub_00519AF8(GetimpressionDatesDeNaissanceSeriesDeNotes, GetimpressionRSeriesDeNotes);

end;//0

destructor TImpressionGrilleNotes.Destroy;
begin//0

  Printer.EndDoc;
  inherited  Destroy;
end;//0


end.