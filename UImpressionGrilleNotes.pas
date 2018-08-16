//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit UImpressionGrilleNotes;

interface

uses
Forms, Windows,  SysUtils, Classes,UImpression,UFichierCdn,Unit173,Graphics,Printers,
 _FormProgression,UInclureImpression;

type
  TImpressionGrilleNotes = class(TImpression)
  constructor Create(a:TFichierCdn; b:TCanvas; c:TEnteteBasDePage; d:TEnteteBasDePage; e:dword; f:TInclureImpression; g:boolean; i:dword);//0051BC40
	procedure sub_0051A184(b:dword);//0051A184
    //function sub_0051BB60(?:?):?;//0051BB60
    procedure sub_0051BD4C(a:dword; b:dword; c:dword; d:dword; e:boolean);//0051BD4C
    //function sub_0051BFF0(?:?):?;//0051BFF0
    //function sub_0051C60C(?:?):?;//0051C60C
    procedure sub_0051C774(a:dword);//0051C774
    //function sub_0051C894(?:?; ?:?):?;//0051C894
  end;


implementation

//0051A184
procedure TImpressionGrilleNotes.sub_0051A184(b:dword);
//var

begin//0
  //0051A184
 (* ECX := $3B{59};
  lvar_8 := b;
  lvar_4 := Self;
  try
    //0051A1AA
    lvar_44 := sub_00519E00;
    lvar_14 := sub_0051BFF0;
    lvar_18 := f40.TextHeight('ALEXANDRE')+ 4;
    lvar_C := f50[b] - f50[b - 1];
    EAX := sub_004BD9F8;
    //push EAX
    EDX := ;
    lvar_20 := sub_00519AF8(sub_004BD1BC, sub_004BD9F8);
    lvar_10 := f3C.sub_004BEA58;
    EAX := sub_0051C894(Self, b);
    lvar_28 := sub_0051C894(Self, b);
    
    EAX := sub_00519E58;
    lvar_3C := sub_00519E58;
    EAX := lvar_44;
    EDX_EAX := lvar_18 * lvar_44;
    EAX := EAX + lvar_3C;
    EAX := EAX + $14{20};//EAX
    lvar_2C := EAX;
    EAX := f24 - lvar_28;
    lvar_A4 := EAX;
    //EAX := TRUNC((EAX) / 2);
    //push EAX
    lvar_30 := TRUNC((EAX) / 2) Div -2147483648;
    
    EAX := f28;
    EAX := EAX - lvar_2C;
    lvar_A4 := EAX;
    //EAX := TRUNC((EAX) / 2);
    //push EAX
    lvar_34 := TRUNC((EAX) / 2) Div -2147483648;
    lvar_38 := 1;
    EAX := ;
    EDX := ;
    EDX := ;//EDX
    EDX := ;//EDX - EDX[EAX]
    if (f50[b] - 1 - f50[b - 1] >= 0) then
    begin//2
      //0051A345
      lvar_88 := f50[b]- f50[b - 1]
      lvar_24 := EDX[EAX];
      for lvar_24 :=  to f50[b] - 1 - f50[b - 1] do
      begin//3
        //0051A34F
        EAX := lvar_30;
        EAX := EAX + lvar_20;
        EDX := lvar_38;
        EDX := EDX - 1;//EDX
        EDX := EDX * lvar_14;
        EAX := EAX + EDX;//EAX + EDX
        lvar_A0 := EAX;
        EAX := lvar_34;
        lvar_9C := lvar_34;
        EAX := lvar_A0;
        EAX := EAX + lvar_14;
        lvar_98 := EAX;
        EAX := lvar_9C;
        EAX := EAX + lvar_18;
        lvar_94 := EAX;
        
        EBX := f3C;
        
        EDX := f2C;
        EAX := EBX;//f3C
        EAX := f3C.sub_004BEAD0(f2C);
        //f3C.sub_004BEAD0(f2C) And $FF{255}
        if (EAX{f3C.sub_004BEAD0(f2C) And $FF{255}} >= lvar_24) then
        begin//4
          //0051A3E2
          //push EAX
          ECX := lvar_24;
          
          EDX := f2C;
          
          EAX := f3C;
          sub_004BED04(f3C, f2C, lvar_1A4, lvar_24);
           := ;
        end//4
        else
        begin//4
          //0051A427
          EDX := $51BAFC;
          lvar_58 := 'Moyennes';
        end;//4
        //push EAX
        EAX := lvar_58;
        EAX := Length(lvar_58);
        //push EAX
        EAX := lvar_58;
        EAX := PChar(lvar_58);
        //push EAX
        
        EAX := f40;
        EAX := f40.Handle;
        //push EAX
        EAX := DrawTextA(f40.Handle, PChar(lvar_58){EAX}, Length(lvar_58){EAX}, lvar_A0, {5});
        lvar_38 := lvar_38 + 1;
      end;//3
    end;//2
    
    EAX := f3C;
    EAX := f3C.sub_004BEA58;
    //f3C.sub_004BEA58 And $FF{255}
    lvar_50 := f3C.sub_004BEA58 And $FF{255};
    
    if (f34 <> 0) then
    begin//2
      //0051A496
      EAX := lvar_50;
      lvar_1AC := IntToStr(lvar_50);
      EDX := 3;
      lvar_1A8 := ' ' + lvar_1AC + ' ';
      EDX := lvar_1A8;
      
      EAX := f40;
      EAX := f40.TextWidth(lvar_1A8);
      lvar_4C := f40.TextWidth(lvar_1A8);
    end//2
    else
    begin//2
      //0051A4DA
      EAX := 0;
      lvar_4C := EAX;
    end;//2
    EAX := lvar_50;
    if (EAX{lvar_50} > 0) then
    begin//2
      //0051A4EA
      lvar_88 := lvar_50;
      lvar_1C := 1;
      for lvar_1C := 1 to lvar_50 do
      begin//3
        //0051A4F7
        
        if (f34 <> 0) then
        begin//4
          //0051A504
          EAX := lvar_1C;
          EAX := EAX - 1;//EAX
          EAX := EAX - 9;//EAX
          if (EAX < 0) then
          begin//5
            //0051A50D
            EAX := lvar_1C;
            lvar_1B0 := IntToStr(lvar_1C);
            EDX := 3;
            lvar_5C := '  ' + lvar_1B0 + ' ';
          end//5
          else
          begin//5
            //0051A53A
            EAX := lvar_1C;
            lvar_1B4 := IntToStr(lvar_1C);
            EDX := 3;
            lvar_5C := ' ' + lvar_1B4 + ' ';
          end;//5
          EAX := lvar_30;
          lvar_A0.Left{lvar_A0} := EAX;//lvar_30
          EAX := lvar_1C;
          EDX_EAX := lvar_18 * lvar_1C;
          EAX := EAX + lvar_34;
          lvar_A0.Top{lvar_A0} := EAX;//EAX
          EAX := lvar_A0.Left;
          EAX := EAX + lvar_4C;
          lvar_A0.Right{lvar_A0} := EAX;//EAX
          EAX := lvar_A0.Top;
          EAX := EAX + lvar_18;
          lvar_A0.Bottom{lvar_A0} := EAX;//EAX
          EDX := lvar_5C;
          lvar_58 := lvar_5C;
          //push EAX
          EAX := lvar_58;
          EAX := Length(lvar_58);
          //push EAX
          EAX := lvar_58;
          EAX := PChar(lvar_58);
          //push EAX
          
          EAX := f40;
          EAX := f40.Handle;
          //push EAX
          EAX := DrawTextA(f40.Handle, PChar(lvar_58){EAX}, Length(lvar_58){EAX}, lvar_A0, {4});
          EAX := lvar_30;
          EAX := EAX + lvar_4C;
          lvar_A0.Left{lvar_A0} := EAX;//EAX
          EAX := lvar_1C;
          EDX_EAX := lvar_18 * lvar_1C;
          EAX := EAX + lvar_34;
          lvar_A0.Top{lvar_A0} := EAX;//EAX
          EAX := lvar_A0.Left;
          EAX := EAX + lvar_20;
          EAX := EAX + lvar_4C;
          lvar_A0.Right{lvar_A0} := EAX;//EAX
          EAX := lvar_A0.Top;
          EAX := EAX + lvar_18;
          lvar_A0.Bottom{lvar_A0} := EAX;//EAX
          EBX := lvar_1C;
          EDX := EBX;//lvar_1C
          
          EAX := f3C;
          EAX := sub_004C8E50(f3C, lvar_1C);
          if (EAX{sub_004C8E50(f3C, lvar_1C)} <> 0) then
          begin//5
            //0051A675
            EAX := sub_004BD9F8;
            if (EAX{sub_004BD9F8} <> 0) then
            begin//6
              //0051A67E
              EAX := lvar_1C;
              EDX := EBX;//lvar_1C
              
              EAX := f3C;
              f3C.sub_004BEA64(lvar_1C, lvar_1A4);
               := ;
              EDX := lvar_1B8;
              ECX := $51BB28;
              lvar_60 := lvar_1B8 + ' (R)';
            end//6
            else
            begin//6
              //0051A6C6
            end;//6
          end//5
          else
          begin//5
            //0051A6C6??? And ???
            EAX := lvar_1C;
            EDX := EBX;//lvar_1C
            
            EAX := f3C;
            f3C.sub_004BEA64(lvar_1C, lvar_1A4);
             := ;
          end;//5
          EAX := sub_004BD1BC;
          if (EAX{sub_004BD1BC} <> 0) then
          begin//5
            //0051A703
            EAX := lvar_1C;
            EDX := EBX;//lvar_1C
            
            EAX := f3C;
            f3C.sub_004C8BB8(lvar_1C, lvar_1A4);
             := ;
            EAX := lvar_54;
            lvar_1BC := Trim(lvar_54);
            if (lvar_1BC <> '') then
            begin//6
              //0051A74A
              EDX := 5;
              lvar_58 := ' ' + lvar_60 + ' (' + lvar_54 + ')';
            end//6
            else
            begin//6
              //0051A76E
              EDX := 3;
              lvar_58 := ' ' + lvar_60 + ' ';
            end;//6
          end//5
          else
          begin//5
            //0051A78A
            EDX := 3;
            lvar_58 := ' ' + lvar_60 + ' ';
          end;//5
          //push EAX
          EAX := lvar_58;
          EAX := Length(lvar_58);
          //push EAX
          EAX := lvar_58;
          EAX := PChar(lvar_58);
          //push EAX
          
          EAX := f40;
          EAX := f40.Handle;
          //push EAX
          EAX := DrawTextA(f40.Handle, PChar(lvar_58){EAX}, Length(lvar_58){EAX}, lvar_A0, {4});
        end//4
        else
        begin//4
          //0051A7D5
          EAX := lvar_30;
          lvar_A0.Left{lvar_A0} := EAX;//lvar_30
          EAX := lvar_1C;
          EDX_EAX := lvar_18 * lvar_1C;
          EAX := EAX + lvar_34;
          lvar_A0.Top{lvar_A0} := EAX;//EAX
          EAX := lvar_A0.Left;
          EAX := EAX + lvar_20;
          lvar_A0.Right{lvar_A0} := EAX;//EAX
          EAX := lvar_A0.Top;
          EAX := EAX + lvar_18;
          lvar_A0.Bottom{lvar_A0} := EAX;//EAX
          EBX := lvar_1C;
          EDX := EBX;//lvar_1C
          
          EAX := f3C;
          EAX := sub_004C8E50(f3C, lvar_1C);
          if (EAX{sub_004C8E50(f3C, lvar_1C)} <> 0) then
          begin//5
            //0051A848
            EAX := sub_004BD9F8;
            if (EAX{sub_004BD9F8} <> 0) then
            begin//6
              //0051A851
              EAX := lvar_1C;
              EDX := EBX;//lvar_1C
              
              EAX := f3C;
              f3C.sub_004BEA64(lvar_1C, lvar_1A4);
               := ;
              EDX := lvar_1C0;
              ECX := $51BB28;
              lvar_60 := lvar_1C0 + ' (R)';
            end//6
            else
            begin//6
              //0051A899
            end;//6
          end//5
          else
          begin//5
            //0051A899??? And ???
            EAX := lvar_1C;
            EDX := EBX;//lvar_1C
            
            EAX := f3C;
            f3C.sub_004BEA64(lvar_1C, lvar_1A4);
             := ;
          end;//5
          EAX := sub_004BD1BC;
          if (EAX{sub_004BD1BC} <> 0) then
          begin//5
            //0051A8D6
            EAX := lvar_1C;
            EDX := EBX;//lvar_1C
            
            EAX := f3C;
            f3C.sub_004C8BB8(lvar_1C, lvar_1A4);
             := ;
            EAX := lvar_54;
            lvar_1C4 := Trim(lvar_54);
            if (lvar_1C4 <> '') then
            begin//6
              //0051A91D
              EDX := 5;
              lvar_58 := ' ' + lvar_60 + ' (' + lvar_54 + ')';
            end//6
            else
            begin//6
              //0051A941
              EDX := 3;
              lvar_58 := ' ' + lvar_60 + ' ';
            end;//6
          end//5
          else
          begin//5
            //0051A95D
            EDX := 3;
            lvar_58 := ' ' + lvar_60 + ' ';
          end;//5
          //push EAX
          EAX := lvar_58;
          EAX := Length(lvar_58);
          //push EAX
          EAX := lvar_58;
          EAX := PChar(lvar_58);
          //push EAX
          
          EAX := f40;
          EAX := f40.Handle;
          //push EAX
          EAX := DrawTextA(f40.Handle, PChar(lvar_58){EAX}, Length(lvar_58){EAX}, lvar_A0, {4});
        end;//4
        lvar_38 := 1;
        EAX := b;
        EAX := EAX - 1;//EAX
        EDX := Self;
        EDX := f50;
        EAX := EDX[EAX];
        EDX := b;
        ECX := Self;
        ECX := f50;
        EDX := ECX[EDX];
        EDX := EDX - 1;//EDX
        EDX := EDX - EAX;//EDX - EDX[EAX]
        if (EDX >= EAX) then
        begin//4
          //0051A9F2
          EDX := EDX + 1;//EDX
          lvar_8C := EDX;
          lvar_24 := EDX[EAX];
          for lvar_24 :=  to EDX +  - 1 do
          begin//5
            //0051A9FC
            EAX := lvar_30;
            EAX := EAX + lvar_20;
            EDX := lvar_38;
            EDX := EDX - 1;//EDX
            EDX := EDX * lvar_14;
            EAX := EAX + EDX;//EAX + EDX
            lvar_A0.Left{lvar_A0} := EAX;//EAX
            EAX := lvar_1C;
            EDX_EAX := lvar_18 * lvar_1C;
            EAX := EAX + lvar_34;
            lvar_A0.Top{lvar_A0} := EAX;//EAX
            EAX := lvar_A0.Left;
            EAX := EAX + lvar_14;
            lvar_A0.Right{lvar_A0} := EAX;//EAX
            EAX := lvar_A0.Top;
            EAX := EAX + lvar_18;
            lvar_A0.Bottom{lvar_A0} := EAX;//EAX
            
            EBX := f3C;
            
            EDX := f2C;
            EAX := EBX;//f3C
            EAX := f3C.sub_004BEAD0(f2C);
            //f3C.sub_004BEAD0(f2C) And $FF{255}
            if (EAX{f3C.sub_004BEAD0(f2C) And $FF{255}} >= lvar_24) then
            begin//6
              //0051AAA3
              EAX := lvar_1C;
              //push EAX
              //push EAX
              ECX := lvar_24;
              
              EDX := f2C;
              EAX := EBX;//f3C
              f3C.sub_004BEF5C(f2C, lvar_24, lvar_1C{EAX}, lvar_1A4);
               := ;
            end//6
            else
            begin//6
              //0051AAF4
              EAX := sub_004B9E10;
              //push EAX
              //push EAX
              ECX := lvar_1C;
              
              EDX := f2C;
              EAX := EBX;//f3C
              f3C.sub_004C2D10(f2C, lvar_1C, sub_004B9E10{EAX}, lvar_1A4);
               := ;
            end;//6
            EAX := sub_004BBFB8;
            if (EAX{sub_004BBFB8} <> 0) then
            begin//6
              //0051AB46
              EAX := lvar_58;
              EDX := $51BB50;
              //0051AB4E
              if (lvar_58 = 'abs') Or (lvar_58 = '') then
              begin//7
                //0051AB5B
                
                EAX := f40;
                EAX := ;
                EDX := 0;
                .SetColor{Color}({0});
              end//7
              else
              begin//7
                //0051AB70
                try
                  //0051AB7E
                  
                  EDX := f2C;
                  
                  EAX := f3C;
                  EAX := f3C.sub_004BEAD0(f2C);
                  //f3C.sub_004BEAD0(f2C) And $FF{255}
                  if (EAX{f3C.sub_004BEAD0(f2C) And $FF{255}} >= lvar_24) then
                  begin//9
                    //0051ABA6
                    //push EAX
                    ECX := lvar_24;
                    
                    EDX := f2C;
                    
                    EAX := f3C;
                    sub_004BED2C(f3C, f2C, lvar_24, lvar_1A4);
                     := ;
                    EAX := lvar_1C8;
                    lvar_70 := StrToFloat(lvar_1C8);
                  end//9
                  else
                  begin//9
                    //0051ABFD
                    EAX := sub_004B9E48;
                    lvar_A4 := sub_004B9E48;
                    lvar_70 := lvar_A4;
                  end;//9
                  EAX := lvar_58;
                  lvar_80 := StrToFloat(lvar_58);
                  //0051AC21
                  if ( < 0) Or ( < ) then
                  begin//9
                    //0051AC39
                    EAX := sub_004BA070;
                    EDX := sub_004BA070;
                    
                    EAX := f40;
                    EAX := ;
                    .SetColor{Color}(EDX);
                  end//9
                  else
                  begin//9
                    //0051AC53
                    if (lvar_70 >= 0) then
                    begin//10
                      //0051AC61
                      if (lvar_80 < ) then
                      begin//11
                        //0051AC74
                        EAX := sub_004B9F8C;
                        EDX := sub_004B9F8C;
                        
                        EAX := f40;
                        EAX := ;
                        .SetColor{Color}(EDX);
                      end//11
                      else
                      begin//11
                        //0051AC8B
                      end;//11
                    end//10
                    else
                    begin//10
                      //0051AC8B??? And ???
                      if (lvar_80 >= ) then
                      begin//11
                        //0051ACA4
                        if ( >= ) then
                        begin//12
                          //0051ACB1
                          EAX := sub_004BA024;
                          EDX := sub_004BA024;
                          
                          EAX := f40;
                          EAX := ;
                          .SetColor{Color}(EDX);
                        end//12
                        else
                        begin//12
                          //0051ACC8
                        end;//12
                      end//11
                      else
                      begin//11
                        //0051ACC8??? And ???
                        EAX := sub_004B9FD8;
                        EDX := sub_004B9FD8;
                        
                        EAX := f40;
                        EAX := ;
                        .SetColor{Color}(EDX);
                      end;//11
                    end;//10
                  end;//9
                except//8
                  //0051ACEC
                end;//8
              end;//7
            end;//6
            //push EAX
            EAX := lvar_58;
            EAX := Length(lvar_58);
            //push EAX
            EAX := lvar_58;
            EAX := PChar(lvar_58);
            //push EAX
            
            EAX := f40;
            EAX := f40.Handle;
            //push EAX
            EAX := DrawTextA(f40.Handle, PChar(lvar_58){EAX}, Length(lvar_58){EAX}, lvar_A0, {5});
            
            EAX := f40;
            EAX := ;
            EDX := 0;
            .SetColor{Color}({0});
            lvar_38 := lvar_38 + 1;
          end;//5
        end;//4
      end;//3
    end;//2
    EAX := 0;
    lvar_48 := EAX;
    if (lvar_44 > 0) then
    begin//2
      //0051AD65
      
      EAX := f4C;
      EAX := ;
      call(
      TRUNC((EAX) / 2){EAX}
      );
      EAX := EAX - 1;//EAX
      if (EAX >= 0) then
      begin//3
        //0051AD85
        EAX := EAX + 1;//EAX
        lvar_88 := EAX;
        EBX := 0;
        for lvar_88 := 0 to  do
        begin//4
          //0051AD8E
          
          EAX := f4C;
          EAX := ;
          if (EAX[EBX] = '
          EAX := lvar_30;
          lvar_A0.Left{lvar_A0} := EAX;//lvar_30
          
          EAX := f3C;
          EAX := f3C.sub_004BEA58;
          //f3C.sub_004BEA58 And $FF{255}
          EAX := EAX + lvar_48;
          EAX := EAX + 1;//EAX
          EDX_EAX := lvar_18 * EAX;
          EAX := EAX + lvar_34;
          EAX := EAX + $14{20};//EAX
          lvar_A0.Top{lvar_A0} := EAX;//EAX
          EAX := lvar_A0.Left;
          EAX := EAX + lvar_20;
          lvar_A0.Right{lvar_A0} := EAX;//EAX
          EAX := lvar_A0.Top;
          EAX := EAX + lvar_18;
          lvar_A0.Bottom{lvar_A0} := EAX;//EAX
          
          EAX := f4C;
          EAX := ;
          EDX := EBX;
          call(
          ' '
          );
          EDX := 3;
          lvar_58 := TRUNC((EAX) / 2){EAX} + lvar_1CC + ' ';
          //push EAX
          EAX := lvar_58;
          EAX := Length(lvar_58);
          //push EAX
          EAX := lvar_58;
          EAX := PChar(lvar_58);
          //push EAX
          
          EAX := f40;
          EAX := f40.Handle;
          //push EAX
          EAX := DrawTextA(f40.Handle, PChar(lvar_58){EAX}, Length(lvar_58){EAX}, lvar_A0, {4});
          lvar_38 := 1;
          EAX := b;
          EAX := EAX - 1;//EAX
          EDX := Self;
          EDX := f50;
          EAX := EDX[EAX];
          EDX := b;
          ECX := Self;
          ECX := f50;
          EDX := ECX[EDX];
          EDX := EDX - 1;//EDX
          EDX := EDX - EAX;//EDX - EDX[EAX]
          if (EDX >= EAX) then
          begin//5
            //0051AED6
            EDX := EDX + 1;//EDX
            lvar_8C := EDX;
            lvar_24 := EDX[EAX];
            for lvar_24 :=  to EDX +  - 1 do
            begin//6
              //0051AEE0
              EAX := lvar_30;
              EAX := EAX + lvar_20;
              EDX := lvar_38;
              EDX := EDX - 1;//EDX
              EDX := EDX * lvar_14;
              EAX := EAX + EDX;//EAX + EDX
              lvar_A0.Left{lvar_A0} := EAX;//EAX
              
              EAX := f3C;
              EAX := f3C.sub_004BEA58;
              //f3C.sub_004BEA58 And $FF{255}
              EAX := EAX + lvar_48;
              EAX := EAX + 1;//EAX
              EDX_EAX := lvar_18 * EAX;
              EAX := EAX + lvar_34;
              EAX := EAX + $14{20};//EAX
              lvar_A0.Top{lvar_A0} := EAX;//EAX
              EAX := lvar_A0.Left;
              EAX := EAX + lvar_14;
              lvar_A0.Right{lvar_A0} := EAX;//EAX
              EAX := lvar_A0.Top;
              EAX := EAX + lvar_18;
              lvar_A0.Bottom{lvar_A0} := EAX;//EAX
              
              EAX := f3C;
              lvar_90 := f3C;
              
              EDX := f2C;
              EAX := lvar_90;
              EAX := lvar_90.sub_004BEAD0(f2C);
              //lvar_90.sub_004BEAD0(f2C) And $FF{255}
              if (lvar_90.sub_004BEAD0(f2C)  >= lvar_24) then
              begin//7
                //0051AFC0
                EAX := EBX;
                case EBX of
                  0:
                  begin//9
                    //0051B00A
                    //push EAX
                    ECX := lvar_24;
                    EDX := f2C;
                    EAX := lvar_90;
                    lvar_90.sub_004C3D1C(f2C, lvar_24, lvar_1A4);
                     := ;
                  end;//9
                  1:
                  begin//9
                    //0051B052
                    //push EAX
                    ECX := lvar_24;
                    
                    EDX := f2C;
                    EAX := lvar_90;
                    lvar_90.sub_004C3958(f2C, lvar_1A4, lvar_24);
                     := ;
                  end;//9
                  2:
                  begin//9
                    //0051B09A
                    //push EAX
                    ECX := lvar_24;
                    
                    EDX := f2C;
                    EAX := lvar_90;
                    lvar_90.sub_004C3B54(f2C, lvar_1A4, lvar_24);
                     := ;
                  end;//9
                  3:
                  begin//9
                    //0051B0E2
                    //push EAX
                    ECX := lvar_24;
                    
                    EDX := f2C;
                    EAX := lvar_90;
                    lvar_90.sub_004C40D4(f2C, lvar_1A4, lvar_24);
                     := ;
                  end;//9
                  4:
                  begin//9
                    //0051B12A
                    //push EAX
                    ECX := lvar_24;
                    
                    EDX := f2C;
                    EAX := lvar_90;
                    lvar_90.sub_004C42D4(f2C, lvar_24, lvar_1A4);
                     := ;
                  end;//9
                  5:
                  begin//9
                    //0051B172
                    //push EAX
                    ECX := lvar_24;
                    
                    EDX := f2C;
                    EAX := lvar_90;
                    lvar_90.sub_004C3EA4(f2C, lvar_24, lvar_1A4);
                     := ;
                  end;//9
                  6:
                  begin//9
                    //0051B1BA
                    //push EAX
                    ECX := lvar_24;
                    
                    EDX := f2C;
                    EAX := lvar_90;
                    lvar_90.sub_004C451C(f2C, lvar_24, lvar_1A4);
                     := ;
                  end;//9
                  7:
                  begin//9
                    //0051B202
                    //push EAX
                    ECX := lvar_24;
                    
                    EDX := f2C;
                    EAX := lvar_90;
                    sub_004BED2C(lvar_90, f2C, lvar_24, lvar_1A4);
                     := ;
                  end;//9
                  8:
                  begin//9
                    //0051B24A
                    //push EAX
                    ECX := lvar_24;
                    
                    EDX := f2C;
                    EAX := lvar_90;
                    lvar_90.sub_004BED7C(f2C, lvar_24, lvar_1A4);
                     := ;
                  end;//9
                  9:
                  begin//9
                    //0051B292
                    //push EAX
                    ECX := lvar_24;
                    
                    EDX := f2C;
                    EAX := lvar_90;
                    lvar_90.sub_004BEDCC(f2C, lvar_24, lvar_1A4);
                     := ;
                  end;//9
                  10:
                  begin//9
                    //0051B2DA
                    //push EAX
                    ECX := lvar_24;
                    
                    EDX := f2C;
                    EAX := lvar_90;
                    lvar_90.sub_004BEE1C(f2C, lvar_24, lvar_1A4);
                     := ;
                  end;//9
                  11:
                  begin//9
                    //0051B322
                    //push EAX
                    ECX := lvar_24;
                    
                    EDX := f2C;
                    EAX := lvar_90;
                    lvar_90.sub_004BEE6C(f2C, lvar_24, lvar_1A4);
                     := ;
                  end;//9
                  12:
                  begin//9
                    //0051B36A
                    //push EAX
                    ECX := lvar_24;
                    
                    EDX := f2C;
                    EAX := lvar_90;
                    lvar_90.sub_004BEEBC(f2C, lvar_24, lvar_1A4);
                     := ;
                  end;//9
                  13:
                  begin//9
                    //0051B3B2
                    //push EAX
                    ECX := lvar_24;
                    
                    EDX := f2C;
                    EAX := lvar_90;
                    lvar_90.sub_004BEF0C(f2C, lvar_24, lvar_1A4);
                     := ;
                  end;//9
                end;//8
              end//7
              else
              begin//7
                //0051B3FA
                EDX := 1;
                EAX := TStringList.Create;
                lvar_84 := TStringList.Create;
                EAX := lvar_90;
                EAX := lvar_90.sub_004BEA58;
                ESI := lvar_90.sub_004BEA58;
                ESI := ESI And $FF{255};//ESI And $FF{255}
                if (ESI{ESI And $FF{255}} > 0) then
                begin//8
                  //0051B423
                  lvar_1C := 1;
                  for lvar_1C := 1 to ESI And $FF{255} do
                  begin//9
                    //0051B42A
                    EAX := sub_004B9E10;
                    //push EAX
                    //push EAX
                    ECX := lvar_1C;
                    
                    EDX := f2C;
                    EAX := lvar_90;
                    lvar_90.sub_004C2D10(f2C, lvar_1C, sub_004B9E10{EAX}, lvar_1A4);
                     := ;
                    EDX := lvar_1D0;
                    EAX := lvar_84;
                    call(
                    
                    );
                  end;//9
                end;//8
                EAX := EBX;
                case EBX of
                  0:
                  begin//9
                    //0051B4D3
                    lvar_58 := '';
                  end;//9
                  1:
                  begin//9
                    //0051B4E0
                    EAX := lvar_84;
                    sub_004BDB3C(lvar_84, lvar_1A4);
                     := ;
                  end;//9
                  2:
                  begin//9
                    //0051B504
                    EAX := lvar_84;
                    sub_004BDCFC(lvar_84, lvar_1A4);
                     := ;
                  end;//9
                  3:
                  begin//9
                    //0051B528
                    EAX := lvar_84;
                    sub_004BDEBC(lvar_84, lvar_1A4);
                     := ;
                  end;//9
                  4:
                  begin//9
                    //0051B549
                    EAX := lvar_84;
                    sub_004BDFE8(lvar_84, lvar_1A4);
                     := ;
                  end;//9
                  5:
                  begin//9
                    //0051B56A
                    EAX := lvar_84;
                    sub_004BE1C4(lvar_84, lvar_1A4);
                     := ;
                  end;//9
                  6:
                  begin//9
                    //0051B58B
                    EAX := lvar_84;
                    sub_004BE364(lvar_84, lvar_1A4);
                     := ;
                  end;//9
                  7,8,9,10,11,12:
                  begin//9
                    //0051B5AC
                    lvar_58 := '';
                  end;//9
                end;//8
                EDX := 1;
                EAX := lvar_84;
                call(
                
                );
              end;//7
              //push EAX
              EAX := lvar_58;
              EAX := Length(lvar_58);
              //push EAX
              EAX := lvar_58;
              EAX := PChar(lvar_58);
              //push EAX
              
              EAX := f40;
              EAX := f40.Handle;
              //push EAX
              EAX := DrawTextA(f40.Handle, PChar(lvar_58){EAX}, Length(lvar_58){EAX}, lvar_A0, {5});
              lvar_38 := lvar_38 + 1;
            end;//6
          end;//5
          lvar_48 := lvar_48 + 1;
        end;//4
      end;//3
    end;//2
    EAX := lvar_10;
    EAX := EAX + 1;//EAX
    if (EAX >= 0) then
    begin//2
      //0051B634
      EAX := EAX + 1;//EAX
      lvar_88 := EAX;
      EBX := 0;
      for lvar_88 := 0 to  do
      begin//3
        //0051B63D
        if (EBX = 0) then
        begin//4
          //0051B641
          EDX := lvar_30;
          EDX := EDX + lvar_20;
          
          EAX := f40;
          ECX := lvar_34;
          f40.MoveTo(EDX, lvar_34);
          EDX := lvar_30;
          EDX := EDX + lvar_28;
          
          EAX := f40;
          ECX := lvar_34;
          f40.LineTo(EDX, lvar_34);
        end//4
        else
        begin//4
          //0051B679
          ECX := EBX;
          ECX := ECX * lvar_18;
          ECX := ECX + lvar_34;
          
          EAX := f40;
          EDX := lvar_30;
          f40.MoveTo(lvar_30, ECX);
          ECX := EBX;
          ECX := ECX * lvar_18;
          ECX := ECX + lvar_34;
          EDX := lvar_30;
          EDX := EDX + lvar_28;
          
          EAX := f40;
          f40.LineTo(EDX, ECX);
        end;//4
      end;//3
    end;//2
    if (lvar_44 > 0) then
    begin//2
      //0051B6E4
      EAX := lvar_44;
      if (EAX{lvar_44} >= 0) then
      begin//3
        //0051B6EF
        EAX := EAX + 1;//EAX
        lvar_88 := EAX;
        EBX := 0;
        for lvar_88 := 0 to  do
        begin//4
          //0051B6F8
          
          EAX := f3C;
          EAX := f3C.sub_004BEA58;
          ECX := f3C.sub_004BEA58;
          ECX := ECX + 1;//ECX
          ECX := ECX + EBX;//ECX + 0
          ECX := ECX * lvar_18;
          ECX := ECX + lvar_34;
          ECX := ECX + $14{20};//ECX
          
          EAX := f40;
          EDX := lvar_30;
          f40.MoveTo(lvar_30, ECX);
          
          EAX := f3C;
          EAX := f3C.sub_004BEA58;
          ECX := f3C.sub_004BEA58;
          ECX := ECX + 1;//ECX
          ECX := ECX + EBX;//ECX + 0
          ECX := ECX * lvar_18;
          ECX := ECX + lvar_34;
          ECX := ECX + $14{20};//ECX
          EDX := lvar_30;
          EDX := EDX + lvar_28;
          
          EAX := f40;
          f40.LineTo(EDX, ECX);
        end;//4
      end;//3
    end;//2
    EAX := lvar_C;
    EAX := EAX + 1;//EAX
    if (EAX >= 0) then
    begin//2
      //0051B7C2
      EAX := EAX + 1;//EAX
      lvar_88 := EAX;
      EBX := 0;
      for lvar_88 := 0 to  do
      begin//3
        //0051B7CB
        if (EBX = 0) then
        begin//4
          //0051B7CF
          ECX := lvar_34;
          ECX := ECX + lvar_18;
          
          EAX := f40;
          EDX := lvar_30;
          f40.MoveTo(lvar_30, ECX);
          ECX := lvar_34;
          ECX := ECX + lvar_3C;
          
          EAX := f40;
          EDX := lvar_30;
          f40.LineTo(lvar_30, ECX);
        end//4
        else
        begin//4
          //0051B80A
          if (EBX = 1) then
          begin//5
            //0051B80F
            EDX := lvar_30;
            EDX := EDX + lvar_20;
            
            EAX := f40;
            ECX := lvar_34;
            f40.MoveTo(EDX, lvar_34);
            ECX := lvar_34;
            ECX := ECX + lvar_3C;
            EDX := lvar_30;
            EDX := EDX + lvar_20;
            
            EAX := f40;
            f40.LineTo(EDX, ECX);
          end//5
          else
          begin//5
            //0051B854
            EDX := lvar_30;
            EDX := EDX + lvar_20;
            EAX := EBX;
            EAX := EAX - 1;//EAX
            EAX := EAX * lvar_14;
            EDX := EDX + EAX;//EDX + EAX
            
            EAX := f40;
            ECX := lvar_34;
            f40.MoveTo(EDX, lvar_34);
            EDX := lvar_30;
            EDX := EDX + lvar_20;
            EAX := EBX;
            EAX := EAX - 1;//EAX
            EAX := EAX * lvar_14;
            EDX := EDX + EAX;//EDX + EAX
            ECX := lvar_34;
            ECX := ECX + lvar_3C;
            
            EAX := f40;
            f40.LineTo(EDX, ECX);
          end;//5
        end;//4
      end;//3
    end;//2
    if (lvar_44 > 0) then
    begin//2
      //0051B8EB
      EAX := lvar_C;
      EAX := EAX + 1;//EAX
      if (EAX >= 0) then
      begin//3
        //0051B900
        EAX := EAX + 1;//EAX
        lvar_88 := EAX;
        EBX := 0;
        for lvar_88 := 0 to  do
        begin//4
          //0051B909
          if (EBX = 0) then
          begin//5
            //0051B90D
            ECX := lvar_34;
            ECX := ECX + lvar_3C;
            ECX := ECX + $14{20};//ECX
            
            EAX := f40;
            EDX := lvar_30;
            f40.MoveTo(lvar_30, ECX);
            ECX := lvar_34;
            ECX := ECX + lvar_2C;
            
            EAX := f40;
            EDX := lvar_30;
            f40.LineTo(lvar_30, ECX);
          end//5
          else
          begin//5
            //0051B952
            EDX := lvar_30;
            EDX := EDX + lvar_20;
            EAX := EBX;
            EAX := EAX - 1;//EAX
            EAX := EAX * lvar_14;
            EDX := EDX + EAX;//EDX + EAX
            ECX := lvar_34;
            ECX := ECX + lvar_3C;
            ECX := ECX + $14{20};//ECX
            
            EAX := f40;
            f40.MoveTo(EDX, ECX);
            EDX := lvar_30;
            EDX := EDX + lvar_20;
            EAX := EBX;
            EAX := EAX - 1;//EAX
            EAX := EAX * lvar_14;
            EDX := EDX + EAX;//EDX + EAX
            ECX := lvar_34;
            ECX := ECX + lvar_2C;
            
            EAX := f40;
            f40.LineTo(EDX, ECX);
          end;//5
        end;//4
      end;//3
    end;//2
    
    if (f34 = 0) then Exit;
    EAX := lvar_50;
    lvar_1D8 := IntToStr(lvar_50);
    EDX := 3;
    lvar_1D4 := ' ' + lvar_1D8 + ' ';
    EDX := lvar_1D4;
    
    EAX := f40;
    EAX := f40.TextWidth(lvar_1D4);
    lvar_4C := f40.TextWidth(lvar_1D4);
    ECX := lvar_34;
    ECX := ECX + lvar_18;
    EDX := lvar_30;
    EDX := EDX + lvar_4C;
    
    EAX := f40;
    f40.MoveTo(EDX, ECX);
    ECX := lvar_50;
    ECX := ECX + 1;//ECX
    ECX := ECX * lvar_18;
    ECX := ECX + lvar_34;
    EDX := ;
    EDX := ;
    f40.LineTo(lvar_30 + lvar_4C, ECX);*)
end;//0



//0051BB60
{*function sub_0051BB60(?:?):?;
begin
 0051BB60    push        ebp
 0051BB61    mov         ebp,esp
 0051BB63    add         esp,0FFFFFEF0
 0051BB69    push        ebx
 0051BB6A    push        esi
 0051BB6B    xor         edx,edx
 0051BB6D    mov         dword ptr [ebp-10],edx
 0051BB70    mov         ebx,eax
 0051BB72    xor         eax,eax
 0051BB74    push        ebp
 0051BB75    push        51BC2F
 0051BB7A    push        dword ptr fs:[eax]
 0051BB7D    mov         dword ptr fs:[eax],esp
 0051BB80    xor         eax,eax
 0051BB82    mov         dword ptr [ebp-4],eax
 0051BB85    mov         eax,dword ptr [ebx+3C]
 0051BB88    mov         dword ptr [ebp-0C],eax
 0051BB8B    mov         edx,dword ptr [ebx+2C]
 0051BB8E    cmp         edx,0FF
>0051BB94    jbe         0051BB9B
 0051BB96    call        @BoundErr
 0051BB9B    mov         eax,dword ptr [ebp-0C]
 0051BB9E    call        004BEAD0
 0051BBA3    mov         esi,eax
 0051BBA5    and         esi,0FF
 0051BBAB    test        esi,esi
>0051BBAD    jle         0051BC0C
 0051BBAF    mov         dword ptr [ebp-8],1
 0051BBB6    lea         eax,[ebp-110]
 0051BBBC    push        eax
 0051BBBD    mov         ecx,dword ptr [ebp-8]
 0051BBC0    cmp         ecx,0FF
>0051BBC6    jbe         0051BBCD
 0051BBC8    call        @BoundErr
 0051BBCD    mov         edx,dword ptr [ebx+2C]
 0051BBD0    cmp         edx,0FF
>0051BBD6    jbe         0051BBDD
 0051BBD8    call        @BoundErr
 0051BBDD    mov         eax,dword ptr [ebp-0C]
 0051BBE0    call        004BED04
 0051BBE5    lea         edx,[ebp-110]
 0051BBEB    lea         eax,[ebp-10]
 0051BBEE    call        @LStrFromString
 0051BBF3    mov         edx,dword ptr [ebp-10]
 0051BBF6    mov         eax,dword ptr [ebx+40]
 0051BBF9    call        TCanvas.TextWidth
 0051BBFE    cmp         eax,dword ptr [ebp-4]
>0051BC01    jle         0051BC06
 0051BC03    mov         dword ptr [ebp-4],eax
 0051BC06    inc         dword ptr [ebp-8]
 0051BC09    dec         esi
>0051BC0A    jne         0051BBB6
 0051BC0C    mov         ebx,dword ptr [ebp-4]
 0051BC0F    add         ebx,4
>0051BC12    jno         0051BC19
 0051BC14    call        @IntOver
 0051BC19    xor         eax,eax
 0051BC1B    pop         edx
 0051BC1C    pop         ecx
 0051BC1D    pop         ecx
 0051BC1E    mov         dword ptr fs:[eax],edx
 0051BC21    push        51BC36
 0051BC26    lea         eax,[ebp-10]
 0051BC29    call        @LStrClr
 0051BC2E    ret
>0051BC2F    jmp         @HandleFinally
>0051BC34    jmp         0051BC26
 0051BC36    mov         eax,ebx
 0051BC38    pop         esi
 0051BC39    pop         ebx
 0051BC3A    mov         esp,ebp
 0051BC3C    pop         ebp
 0051BC3D    ret
end;*}

//0051BC40
constructor TImpressionGrilleNotes.Create(a:TFichierCdn; b:TCanvas; c:TEnteteBasDePage; d:TEnteteBasDePage; e:dword; f:TInclureImpression; g:boolean; i:dword);
var
 Buf:string;
begin//0
  //0051BC40
    //0051BC72
    inherited create(a, b, c, d, e, f, g,i);
    //f4C := f;
    f3C.sub_004BE8FC(Buf);
    Printer.Title := 'Carnet de Notes version Personnelle - ' + Buf;
    Printer.BeginDoc;
    //f30 := sub_0051C60C;
    
end;//0


//0051BD4C
procedure TImpressionGrilleNotes.sub_0051BD4C(a:dword; b:dword; c:dword; d:dword; e:boolean);
var
  I,J:integer;
  x:dword;
begin//0
  //0051BD4C
  if (a > b) then
  begin//0051BD62
    X := b;
    b := a;
    a := X;
  end;//1
    for J := 1 to c do //0051BD75
    begin//2
      //0051BD7F
      {gvar_00617DE4} FormProgression:= TFormProgression.Create(Nil);
      FormProgression.ProgressBar1.Min := a;
      FormProgression.ProgressBar1.Max := b + 1;
      FormProgression.ProgressBar1.Step := 1;
      FormProgression.ProgressBar1.Position := a - 1;
      if (e = false) then
      begin//0051BDE8
          for I := a to b do //0051BDF5
          begin//0051BDF6
            case d of
              0:
              begin//0051BE0C
                sub_0051C774(a);
                if (J * a <> b * c) then 
                   Printer.NewPage;
              end;//7
              1:
              begin//0051BE47
                if (a mod 2 = 1) then
                begin//8
                  //0051BE58
                  sub_0051C774(a);
                  if (J * a <> b * c) then 
                  Printer.NewPage;
                end;//8
              end;//7
              2:
              begin//0051BE8C
                if (a mod 2 = 0) then 
				begin
					sub_0051C774(a);
					if (J * a <> b * c) then 
					Printer.NewPage;
				end;
              end;//7
            end;//6
          end;//5
      end//3
      else
      begin//3
        //0051BEDD
          for I := b to a do //0051BEEA
          begin//0051BEEB
            case d of
              0:
              begin//0051BF01
                sub_0051C774(b);
                if (J * b <> a * c) then 
                Printer.NewPage;
              end;//7
              1:
              begin//0051BF3B
                if (b mod 2 - 1 = 0) then
                begin//0051BF4C
                  sub_0051C774(b);
                  if (J * b <> a * c) then 
                  Printer.NewPage;
                end;//8
              end;//7
              2:
              begin//7
                //0051BF7F
                if (b mod 2 = 0) then 
				begin
					sub_0051C774(b);
					if (J * b <> a * c) then 
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
{*function sub_0051BFF0(?:?):?;
begin
 0051BFF0    push        ebp
 0051BFF1    mov         ebp,esp
 0051BFF3    mov         ecx,29
 0051BFF8    push        0
 0051BFFA    push        0
 0051BFFC    dec         ecx
>0051BFFD    jne         0051BFF8
 0051BFFF    push        ebx
 0051C000    push        esi
 0051C001    push        edi
 0051C002    mov         ebx,eax
 0051C004    xor         eax,eax
 0051C006    push        ebp
 0051C007    push        51C5D5
 0051C00C    push        dword ptr fs:[eax]
 0051C00F    mov         dword ptr fs:[eax],esp
 0051C012    xor         edi,edi
 0051C014    xor         esi,esi
 0051C016    mov         eax,ebx
 0051C018    call        00519E00
 0051C01D    test        eax,eax
>0051C01F    jle         0051C563
 0051C025    mov         eax,dword ptr [ebx+4C]
 0051C028    mov         eax,dword ptr [eax+8]
 0051C02B    mov         edx,dword ptr [eax]
 0051C02D    call        dword ptr [edx+14]
 0051C030    sub         eax,1
>0051C033    jno         0051C03A
 0051C035    call        @IntOver
 0051C03A    test        eax,eax
>0051C03C    jl          0051C574
 0051C042    inc         eax
 0051C043    mov         dword ptr [ebp-0C],eax
 0051C046    mov         dword ptr [ebp-4],0
 0051C04D    mov         eax,dword ptr [ebp-4]
 0051C050    mov         edx,dword ptr [ebx+4C]
 0051C053    mov         edx,dword ptr [edx+0C]
 0051C056    cmp         eax,dword ptr [edx-4]
>0051C059    jb          0051C060
 0051C05B    call        @BoundErr
 0051C060    cmp         byte ptr [edx+eax],0
>0051C064    je          0051C555
 0051C06A    mov         eax,dword ptr [ebx+3C]
 0051C06D    mov         dword ptr [ebp-10],eax
 0051C070    mov         edx,dword ptr [ebx+2C]
 0051C073    cmp         edx,0FF
>0051C079    jbe         0051C080
 0051C07B    call        @BoundErr
 0051C080    mov         eax,dword ptr [ebp-10]
 0051C083    call        004BEAD0
 0051C088    and         eax,0FF
 0051C08D    test        eax,eax
>0051C08F    jle         0051C555
 0051C095    mov         dword ptr [ebp-14],eax
 0051C098    mov         dword ptr [ebp-8],1
 0051C09F    mov         eax,dword ptr [ebp-4]
 0051C0A2    cmp         eax,0C
>0051C0A5    ja          0051C543
 0051C0AB    jmp         dword ptr [eax*4+51C0B2]
 0051C0AB    dd          0051C0E6
 0051C0AB    dd          0051C137
 0051C0AB    dd          0051C18E
 0051C0AB    dd          0051C1E5
 0051C0AB    dd          0051C23C
 0051C0AB    dd          0051C293
 0051C0AB    dd          0051C2EA
 0051C0AB    dd          0051C341
 0051C0AB    dd          0051C398
 0051C0AB    dd          0051C3EF
 0051C0AB    dd          0051C446
 0051C0AB    dd          0051C49D
 0051C0AB    dd          0051C4F1
 0051C0E6    lea         eax,[ebp-118]
 0051C0EC    push        eax
 0051C0ED    mov         ecx,dword ptr [ebp-8]
 0051C0F0    cmp         ecx,0FF
>0051C0F6    jbe         0051C0FD
 0051C0F8    call        @BoundErr
 0051C0FD    mov         edx,dword ptr [ebx+2C]
 0051C100    cmp         edx,0FF
>0051C106    jbe         0051C10D
 0051C108    call        @BoundErr
 0051C10D    mov         eax,dword ptr [ebp-10]
 0051C110    call        004C3D1C
 0051C115    lea         edx,[ebp-118]
 0051C11B    lea         eax,[ebp-18]
 0051C11E    call        @LStrFromString
 0051C123    mov         ecx,dword ptr [ebp-18]
 0051C126    mov         edx,dword ptr [ebx+40]
 0051C129    mov         eax,ebx
 0051C12B    call        00519AA8
 0051C130    mov         esi,eax
>0051C132    jmp         0051C543
 0051C137    lea         eax,[ebp-118]
 0051C13D    push        eax
 0051C13E    mov         ecx,dword ptr [ebp-8]
 0051C141    cmp         ecx,0FF
>0051C147    jbe         0051C14E
 0051C149    call        @BoundErr
 0051C14E    mov         edx,dword ptr [ebx+2C]
 0051C151    cmp         edx,0FF
>0051C157    jbe         0051C15E
 0051C159    call        @BoundErr
 0051C15E    mov         eax,dword ptr [ebp-10]
 0051C161    call        004C3958
 0051C166    lea         edx,[ebp-118]
 0051C16C    lea         eax,[ebp-11C]
 0051C172    call        @LStrFromString
 0051C177    mov         ecx,dword ptr [ebp-11C]
 0051C17D    mov         edx,dword ptr [ebx+40]
 0051C180    mov         eax,ebx
 0051C182    call        00519AA8
 0051C187    mov         esi,eax
>0051C189    jmp         0051C543
 0051C18E    lea         eax,[ebp-118]
 0051C194    push        eax
 0051C195    mov         ecx,dword ptr [ebp-8]
 0051C198    cmp         ecx,0FF
>0051C19E    jbe         0051C1A5
 0051C1A0    call        @BoundErr
 0051C1A5    mov         edx,dword ptr [ebx+2C]
 0051C1A8    cmp         edx,0FF
>0051C1AE    jbe         0051C1B5
 0051C1B0    call        @BoundErr
 0051C1B5    mov         eax,dword ptr [ebp-10]
 0051C1B8    call        004C3B54
 0051C1BD    lea         edx,[ebp-118]
 0051C1C3    lea         eax,[ebp-120]
 0051C1C9    call        @LStrFromString
 0051C1CE    mov         ecx,dword ptr [ebp-120]
 0051C1D4    mov         edx,dword ptr [ebx+40]
 0051C1D7    mov         eax,ebx
 0051C1D9    call        00519AA8
 0051C1DE    mov         esi,eax
>0051C1E0    jmp         0051C543
 0051C1E5    lea         eax,[ebp-118]
 0051C1EB    push        eax
 0051C1EC    mov         ecx,dword ptr [ebp-8]
 0051C1EF    cmp         ecx,0FF
>0051C1F5    jbe         0051C1FC
 0051C1F7    call        @BoundErr
 0051C1FC    mov         edx,dword ptr [ebx+2C]
 0051C1FF    cmp         edx,0FF
>0051C205    jbe         0051C20C
 0051C207    call        @BoundErr
 0051C20C    mov         eax,dword ptr [ebp-10]
 0051C20F    call        004C40D4
 0051C214    lea         edx,[ebp-118]
 0051C21A    lea         eax,[ebp-124]
 0051C220    call        @LStrFromString
 0051C225    mov         ecx,dword ptr [ebp-124]
 0051C22B    mov         edx,dword ptr [ebx+40]
 0051C22E    mov         eax,ebx
 0051C230    call        00519AA8
 0051C235    mov         esi,eax
>0051C237    jmp         0051C543
 0051C23C    lea         eax,[ebp-118]
 0051C242    push        eax
 0051C243    mov         ecx,dword ptr [ebp-8]
 0051C246    cmp         ecx,0FF
>0051C24C    jbe         0051C253
 0051C24E    call        @BoundErr
 0051C253    mov         edx,dword ptr [ebx+2C]
 0051C256    cmp         edx,0FF
>0051C25C    jbe         0051C263
 0051C25E    call        @BoundErr
 0051C263    mov         eax,dword ptr [ebp-10]
 0051C266    call        004C42D4
 0051C26B    lea         edx,[ebp-118]
 0051C271    lea         eax,[ebp-128]
 0051C277    call        @LStrFromString
 0051C27C    mov         ecx,dword ptr [ebp-128]
 0051C282    mov         edx,dword ptr [ebx+40]
 0051C285    mov         eax,ebx
 0051C287    call        00519AA8
 0051C28C    mov         esi,eax
>0051C28E    jmp         0051C543
 0051C293    lea         eax,[ebp-118]
 0051C299    push        eax
 0051C29A    mov         ecx,dword ptr [ebp-8]
 0051C29D    cmp         ecx,0FF
>0051C2A3    jbe         0051C2AA
 0051C2A5    call        @BoundErr
 0051C2AA    mov         edx,dword ptr [ebx+2C]
 0051C2AD    cmp         edx,0FF
>0051C2B3    jbe         0051C2BA
 0051C2B5    call        @BoundErr
 0051C2BA    mov         eax,dword ptr [ebp-10]
 0051C2BD    call        004C3EA4
 0051C2C2    lea         edx,[ebp-118]
 0051C2C8    lea         eax,[ebp-12C]
 0051C2CE    call        @LStrFromString
 0051C2D3    mov         ecx,dword ptr [ebp-12C]
 0051C2D9    mov         edx,dword ptr [ebx+40]
 0051C2DC    mov         eax,ebx
 0051C2DE    call        00519AA8
 0051C2E3    mov         esi,eax
>0051C2E5    jmp         0051C543
 0051C2EA    lea         eax,[ebp-118]
 0051C2F0    push        eax
 0051C2F1    mov         ecx,dword ptr [ebp-8]
 0051C2F4    cmp         ecx,0FF
>0051C2FA    jbe         0051C301
 0051C2FC    call        @BoundErr
 0051C301    mov         edx,dword ptr [ebx+2C]
 0051C304    cmp         edx,0FF
>0051C30A    jbe         0051C311
 0051C30C    call        @BoundErr
 0051C311    mov         eax,dword ptr [ebp-10]
 0051C314    call        004C451C
 0051C319    lea         edx,[ebp-118]
 0051C31F    lea         eax,[ebp-130]
 0051C325    call        @LStrFromString
 0051C32A    mov         ecx,dword ptr [ebp-130]
 0051C330    mov         edx,dword ptr [ebx+40]
 0051C333    mov         eax,ebx
 0051C335    call        00519AA8
 0051C33A    mov         esi,eax
>0051C33C    jmp         0051C543
 0051C341    lea         eax,[ebp-118]
 0051C347    push        eax
 0051C348    mov         ecx,dword ptr [ebp-8]
 0051C34B    cmp         ecx,0FF
>0051C351    jbe         0051C358
 0051C353    call        @BoundErr
 0051C358    mov         edx,dword ptr [ebx+2C]
 0051C35B    cmp         edx,0FF
>0051C361    jbe         0051C368
 0051C363    call        @BoundErr
 0051C368    mov         eax,dword ptr [ebp-10]
 0051C36B    call        004BED2C
 0051C370    lea         edx,[ebp-118]
 0051C376    lea         eax,[ebp-134]
 0051C37C    call        @LStrFromString
 0051C381    mov         ecx,dword ptr [ebp-134]
 0051C387    mov         edx,dword ptr [ebx+40]
 0051C38A    mov         eax,ebx
 0051C38C    call        00519AA8
 0051C391    mov         esi,eax
>0051C393    jmp         0051C543
 0051C398    lea         eax,[ebp-118]
 0051C39E    push        eax
 0051C39F    mov         ecx,dword ptr [ebp-8]
 0051C3A2    cmp         ecx,0FF
>0051C3A8    jbe         0051C3AF
 0051C3AA    call        @BoundErr
 0051C3AF    mov         edx,dword ptr [ebx+2C]
 0051C3B2    cmp         edx,0FF
>0051C3B8    jbe         0051C3BF
 0051C3BA    call        @BoundErr
 0051C3BF    mov         eax,dword ptr [ebp-10]
 0051C3C2    call        004BED7C
 0051C3C7    lea         edx,[ebp-118]
 0051C3CD    lea         eax,[ebp-138]
 0051C3D3    call        @LStrFromString
 0051C3D8    mov         ecx,dword ptr [ebp-138]
 0051C3DE    mov         edx,dword ptr [ebx+40]
 0051C3E1    mov         eax,ebx
 0051C3E3    call        00519AA8
 0051C3E8    mov         esi,eax
>0051C3EA    jmp         0051C543
 0051C3EF    lea         eax,[ebp-118]
 0051C3F5    push        eax
 0051C3F6    mov         ecx,dword ptr [ebp-8]
 0051C3F9    cmp         ecx,0FF
>0051C3FF    jbe         0051C406
 0051C401    call        @BoundErr
 0051C406    mov         edx,dword ptr [ebx+2C]
 0051C409    cmp         edx,0FF
>0051C40F    jbe         0051C416
 0051C411    call        @BoundErr
 0051C416    mov         eax,dword ptr [ebp-10]
 0051C419    call        004BEDCC
 0051C41E    lea         edx,[ebp-118]
 0051C424    lea         eax,[ebp-13C]
 0051C42A    call        @LStrFromString
 0051C42F    mov         ecx,dword ptr [ebp-13C]
 0051C435    mov         edx,dword ptr [ebx+40]
 0051C438    mov         eax,ebx
 0051C43A    call        00519AA8
 0051C43F    mov         esi,eax
>0051C441    jmp         0051C543
 0051C446    lea         eax,[ebp-118]
 0051C44C    push        eax
 0051C44D    mov         ecx,dword ptr [ebp-8]
 0051C450    cmp         ecx,0FF
>0051C456    jbe         0051C45D
 0051C458    call        @BoundErr
 0051C45D    mov         edx,dword ptr [ebx+2C]
 0051C460    cmp         edx,0FF
>0051C466    jbe         0051C46D
 0051C468    call        @BoundErr
 0051C46D    mov         eax,dword ptr [ebp-10]
 0051C470    call        004BEE1C
 0051C475    lea         edx,[ebp-118]
 0051C47B    lea         eax,[ebp-140]
 0051C481    call        @LStrFromString
 0051C486    mov         ecx,dword ptr [ebp-140]
 0051C48C    mov         edx,dword ptr [ebx+40]
 0051C48F    mov         eax,ebx
 0051C491    call        00519AA8
 0051C496    mov         esi,eax
>0051C498    jmp         0051C543
 0051C49D    lea         eax,[ebp-118]
 0051C4A3    push        eax
 0051C4A4    mov         ecx,dword ptr [ebp-8]
 0051C4A7    cmp         ecx,0FF
>0051C4AD    jbe         0051C4B4
 0051C4AF    call        @BoundErr
 0051C4B4    mov         edx,dword ptr [ebx+2C]
 0051C4B7    cmp         edx,0FF
>0051C4BD    jbe         0051C4C4
 0051C4BF    call        @BoundErr
 0051C4C4    mov         eax,dword ptr [ebp-10]
 0051C4C7    call        004BEE6C
 0051C4CC    lea         edx,[ebp-118]
 0051C4D2    lea         eax,[ebp-144]
 0051C4D8    call        @LStrFromString
 0051C4DD    mov         ecx,dword ptr [ebp-144]
 0051C4E3    mov         edx,dword ptr [ebx+40]
 0051C4E6    mov         eax,ebx
 0051C4E8    call        00519AA8
 0051C4ED    mov         esi,eax
>0051C4EF    jmp         0051C543
 0051C4F1    lea         eax,[ebp-118]
 0051C4F7    push        eax
 0051C4F8    mov         ecx,dword ptr [ebp-8]
 0051C4FB    cmp         ecx,0FF
>0051C501    jbe         0051C508
 0051C503    call        @BoundErr
 0051C508    mov         edx,dword ptr [ebx+2C]
 0051C50B    cmp         edx,0FF
>0051C511    jbe         0051C518
 0051C513    call        @BoundErr
 0051C518    mov         eax,dword ptr [ebp-10]
 0051C51B    call        004BEEBC
 0051C520    lea         edx,[ebp-118]
 0051C526    lea         eax,[ebp-148]
 0051C52C    call        @LStrFromString
 0051C531    mov         ecx,dword ptr [ebp-148]
 0051C537    mov         edx,dword ptr [ebx+40]
 0051C53A    mov         eax,ebx
 0051C53C    call        00519AA8
 0051C541    mov         esi,eax
 0051C543    cmp         esi,edi
>0051C545    jle         0051C549
 0051C547    mov         edi,esi
 0051C549    inc         dword ptr [ebp-8]
 0051C54C    dec         dword ptr [ebp-14]
>0051C54F    jne         0051C09F
 0051C555    inc         dword ptr [ebp-4]
 0051C558    dec         dword ptr [ebp-0C]
>0051C55B    jne         0051C04D
>0051C561    jmp         0051C574
 0051C563    mov         ecx,51C5F0;'10,00'
 0051C568    mov         edx,dword ptr [ebx+40]
 0051C56B    mov         eax,ebx
 0051C56D    call        00519AA8
 0051C572    mov         edi,eax
 0051C574    mov         eax,ebx
 0051C576    call        0051BB60
 0051C57B    mov         esi,eax
 0051C57D    cmp         esi,edi
>0051C57F    jle         0051C583
 0051C581    mov         edi,esi
 0051C583    call        004BC0EC
 0051C588    test        al,al
>0051C58A    je          0051C5A3
 0051C58C    mov         ecx,51C600;' Moyennes '
 0051C591    mov         edx,dword ptr [ebx+40]
 0051C594    mov         eax,ebx
 0051C596    call        00519AA8
 0051C59B    mov         esi,eax
 0051C59D    cmp         esi,edi
>0051C59F    jle         0051C5A3
 0051C5A1    mov         edi,esi
 0051C5A3    mov         ebx,edi
 0051C5A5    add         ebx,14
>0051C5A8    jno         0051C5AF
 0051C5AA    call        @IntOver
 0051C5AF    xor         eax,eax
 0051C5B1    pop         edx
 0051C5B2    pop         ecx
 0051C5B3    pop         ecx
 0051C5B4    mov         dword ptr fs:[eax],edx
 0051C5B7    push        51C5DC
 0051C5BC    lea         eax,[ebp-148]
 0051C5C2    mov         edx,0C
 0051C5C7    call        @LStrArrayClr
 0051C5CC    lea         eax,[ebp-18]
 0051C5CF    call        @LStrClr
 0051C5D4    ret
>0051C5D5    jmp         @HandleFinally
>0051C5DA    jmp         0051C5BC
 0051C5DC    mov         eax,ebx
 0051C5DE    pop         edi
 0051C5DF    pop         esi
 0051C5E0    pop         ebx
 0051C5E1    mov         esp,ebp
 0051C5E3    pop         ebp
 0051C5E4    ret
end;*}

//0051C60C
{*function sub_0051C60C(?:?):?;
begin
 0051C60C    push        ebx
 0051C60D    push        esi
 0051C60E    push        edi
 0051C60F    push        ebp
 0051C610    push        ecx
 0051C611    mov         ebx,eax
 0051C613    push        1
 0051C615    lea         eax,[ebx+50]
 0051C618    mov         ecx,1
 0051C61D    mov         edx,dword ptr ds:[5194B4];_DynArr_174_2
 0051C623    call        @DynArraySetLength
 0051C628    add         esp,4
 0051C62B    xor         esi,esi
 0051C62D    xor         ebp,ebp
 0051C62F    xor         eax,eax
 0051C631    mov         edx,dword ptr [ebx+50]
 0051C634    cmp         eax,dword ptr [edx-4]
>0051C637    jb          0051C63E
 0051C639    call        @BoundErr
 0051C63E    mov         dword ptr [edx+eax*4],1
 0051C645    call        004BD9F8
 0051C64A    push        eax
 0051C64B    call        004BD1BC
 0051C650    mov         edx,eax
 0051C652    mov         eax,ebx
 0051C654    pop         ecx
 0051C655    call        00519AF8
 0051C65A    mov         edx,dword ptr [ebx+24]
 0051C65D    sub         edx,eax
>0051C65F    jno         0051C666
 0051C661    call        @IntOver
 0051C666    push        edx
 0051C667    mov         eax,ebx
 0051C669    call        0051BFF0
 0051C66E    pop         edx
 0051C66F    xchg        eax,edx
 0051C670    mov         ecx,edx
 0051C672    cdq
 0051C673    idiv        eax,ecx
 0051C675    mov         edi,eax
 0051C677    test        edi,edi
>0051C679    jne         0051C682
 0051C67B    xor         eax,eax
>0051C67D    jmp         0051C76B
 0051C682    call        004BC0EC
 0051C687    test        al,al
>0051C689    je          0051C6B7
 0051C68B    mov         edx,dword ptr [ebx+2C]
 0051C68E    cmp         edx,0FF
>0051C694    jbe         0051C69B
 0051C696    call        @BoundErr
 0051C69B    mov         eax,dword ptr [ebx+3C]
 0051C69E    call        004BEAD0
 0051C6A3    and         eax,0FF
 0051C6A8    add         eax,1
>0051C6AB    jno         0051C6B2
 0051C6AD    call        @IntOver
 0051C6B2    mov         dword ptr [esp],eax
>0051C6B5    jmp         0051C6D7
 0051C6B7    mov         edx,dword ptr [ebx+2C]
 0051C6BA    cmp         edx,0FF
>0051C6C0    jbe         0051C6C7
 0051C6C2    call        @BoundErr
 0051C6C7    mov         eax,dword ptr [ebx+3C]
 0051C6CA    call        004BEAD0
 0051C6CF    and         eax,0FF
 0051C6D4    mov         dword ptr [esp],eax
 0051C6D7    cmp         ebp,dword ptr [esp]
>0051C6DA    jge         0051C74C
 0051C6DC    add         esi,1
>0051C6DF    jno         0051C6E6
 0051C6E1    call        @IntOver
 0051C6E6    mov         eax,esi
 0051C6E8    add         eax,1
>0051C6EB    jno         0051C6F2
 0051C6ED    call        @IntOver
 0051C6F2    push        eax
 0051C6F3    lea         eax,[ebx+50]
 0051C6F6    mov         ecx,1
 0051C6FB    mov         edx,dword ptr ds:[5194B4];_DynArr_174_2
 0051C701    call        @DynArraySetLength
 0051C706    add         esp,4
 0051C709    mov         eax,esi
 0051C70B    sub         eax,1
>0051C70E    jno         0051C715
 0051C710    call        @IntOver
 0051C715    mov         edx,dword ptr [ebx+50]
 0051C718    cmp         eax,dword ptr [edx-4]
>0051C71B    jb          0051C722
 0051C71D    call        @BoundErr
 0051C722    mov         eax,dword ptr [edx+eax*4]
 0051C725    add         eax,edi
>0051C727    jno         0051C72E
 0051C729    call        @IntOver
 0051C72E    mov         edx,dword ptr [ebx+50]
 0051C731    cmp         esi,dword ptr [edx-4]
>0051C734    jb          0051C73B
 0051C736    call        @BoundErr
 0051C73B    mov         dword ptr [edx+esi*4],eax
 0051C73E    add         ebp,edi
>0051C740    jno         0051C747
 0051C742    call        @IntOver
 0051C747    cmp         ebp,dword ptr [esp]
>0051C74A    jl          0051C6DC
 0051C74C    mov         eax,dword ptr [ebx+50]
 0051C74F    cmp         esi,dword ptr [eax-4]
>0051C752    jb          0051C759
 0051C754    call        @BoundErr
 0051C759    mov         edx,dword ptr [esp]
 0051C75C    add         edx,1
>0051C75F    jno         0051C766
 0051C761    call        @IntOver
 0051C766    mov         dword ptr [eax+esi*4],edx
 0051C769    mov         eax,esi
 0051C76B    pop         edx
 0051C76C    pop         ebp
 0051C76D    pop         edi
 0051C76E    pop         esi
 0051C76F    pop         ebx
 0051C770    ret
end;*}

//0051C774
procedure TImpressionGrilleNotes.sub_0051C774(a:dword);
begin//0
  //0051C774

    Application.ProcessMessages;
    if (FormProgression.Visible = False) then//0051C7A9
      FormProgression.Show;

    FormProgression.Caption := 'Préparation de l''impression en cours ... page ' + IntToStr(FormProgression.ProgressBar1.Position);
    FormProgression.ProgressBar1.Position := FormProgression.ProgressBar1.Position + 1;
    //sub_00519534;
    //sub_0051A184(a);
    //sub_0051954C;
end;//0


//0051C894
{*function sub_0051C894(?:?; ?:?):?;
begin
 0051C894    push        ebx
 0051C895    push        esi
 0051C896    push        edi
 0051C897    mov         esi,edx
 0051C899    mov         ebx,eax
 0051C89B    mov         eax,ebx
 0051C89D    call        0051BFF0
 0051C8A2    mov         edi,eax
 0051C8A4    mov         eax,dword ptr [ebx+50]
 0051C8A7    cmp         esi,dword ptr [eax-4]
>0051C8AA    jb          0051C8B1
 0051C8AC    call        @BoundErr
 0051C8B1    mov         eax,dword ptr [eax+esi*4]
 0051C8B4    sub         esi,1
>0051C8B7    jno         0051C8BE
 0051C8B9    call        @IntOver
 0051C8BE    mov         edx,dword ptr [ebx+50]
 0051C8C1    cmp         esi,dword ptr [edx-4]
>0051C8C4    jb          0051C8CB
 0051C8C6    call        @BoundErr
 0051C8CB    sub         eax,dword ptr [edx+esi*4]
>0051C8CE    jno         0051C8D5
 0051C8D0    call        @IntOver
 0051C8D5    imul        edi,eax
>0051C8D8    jno         0051C8DF
 0051C8DA    call        @IntOver
 0051C8DF    call        004BD9F8
 0051C8E4    push        eax
 0051C8E5    call        004BD1BC
 0051C8EA    mov         edx,eax
 0051C8EC    mov         eax,ebx
 0051C8EE    pop         ecx
 0051C8EF    call        00519AF8
 0051C8F4    add         edi,eax
>0051C8F6    jno         0051C8FD
 0051C8F8    call        @IntOver
 0051C8FD    mov         eax,edi
 0051C8FF    pop         edi
 0051C900    pop         esi
 0051C901    pop         ebx
 0051C902    ret
end;*}

end.