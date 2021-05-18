{***********************************************************
* Version Original V0.03 build 1                           *
* Decompiled by Houidef AEK v 12:20 mercredi, août 29, 2018*
* The disassembly process : 99.99%                         *
************************************************************}
unit _FormUtilitairesSeries;

interface

uses
  Forms,Windows, SysUtils, Classes, ExtCtrls, StdCtrls, ComCtrls, Buttons, Controls, UFichierCdn,Unit111;

type
  TFormUtilitairesSeries = class(TForm)
  published
    Panel2:TPanel;//f2D0
    Bevel2:TBevel;//f2D4
    Image1:TImage;//f2D8
    RadioGroup1:TRadioGroup;//f2DC
    ListBoxSeriesConcernees:TListBox;//f2E0
    Label1:TLabel;//f2E4
    TabControl1:TTabControl;//f2E8
    btnSupprimerSerie:TSpeedButton;//f2EC
    btnAjouterSerie:TSpeedButton;//f2F0
    ListBox2:TListBox;//f2F4
    SpeedButton15:TSpeedButton;//f2F8
    btnCreerSerie:TSpeedButton;//f2FC
    CheckBox1:TCheckBox;//f300
    Label2:TLabel;//f304
    ComboBox1:TComboBox;//f308
    Label3:TLabel;//f30C
    CheckBox2:TCheckBox;//f310
    Label4:TLabel;//f314
    CheckBox3:TCheckBox;//f318
    Label5:TLabel;//f31C
    RadioGroup2:TRadioGroup;//f320
    Label6:TLabel;//f324
    ComboBox2:TComboBox;//f328
    RadioGroupEcritOuOral:TRadioGroup;//f32C
    procedure btnCreerSerieClick(Sender:TObject);//00510544
    procedure ListBoxSeriesConcerneesDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);//005101A0
    procedure CheckBox1Click(Sender:TObject);//005113C4
    procedure FormKeyPress(Sender:TObject; var Key:Char);//00511404
    procedure RadioGroup1Click(Sender:TObject);//005113E8
    procedure TabControl1Change(Sender:TObject);//0050FC18
    procedure SpeedButton15Click(Sender:TObject);//0050FC0C
    procedure btnAjouterSerieClick(Sender:TObject);//0050FD20
    procedure ListBox2DrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);//00510034
    procedure btnSupprimerSerieClick(Sender:TObject);//0050FF58
  public
    f330:TFichierCdn;//f330
    f334:array of dword;//f334
    f730:array of dword;//f730
    fF28:dword;//fF28
    constructor Create(Owner:TComponent;F:TFichierCdn; Logo:Timage );//0050FA0C

    procedure sub_0051030C(a:TStringList; var  b:string);//0051030C
    procedure sub_005103D8(a:String; b:String; var c:string);//005103D8

  end;
  var
   FormUtilitairesSeries:TFormUtilitairesSeries;
implementation
   uses _Unit112,UEnregistrement;
{$R *.DFM}

//0050FA0C
constructor TFormUtilitairesSeries.Create(Owner:TComponent;F:TFichierCdn; Logo:Timage );
var
  I:integer;
  buf:string;
begin//0
  //0050FA0C
    //0050FA3B

    inherited Create(Owner);
    Image1.Picture := logo.Picture;
    f330 := F;
    TabControl1.Tabs := F.GetPeriodesList_;
    ComboBox1.Items := f330.GetPeriodesList_;
    ComboBox1.ItemIndex := 0;
    ComboBox2.Items := GetTypesdenotes;
    ComboBox2.ItemIndex := 0;
      for I := 1 to f330.GetNbreModules(TabControl1.TabIndex + 1) do //0050FAFA
      begin//3
        //0050FB01
        f330._readCompteMoy( TabControl1.TabIndex + 1, Buf, I);
        ListBox2.Items.Add(buf);
      end;//3
    
    CheckBox2.Checked := True;
    CheckBox3.Checked := True;
    if (f330.NbrModulesTot >= 255{gvar_00617903}) then
    begin//2
      //0050FBA1
      CheckBox1.Enabled := False;
      CheckBox1.Checked := True;
      Label3.Enabled := False;
    end;//2
end;//0

//0050FC0C
procedure TFormUtilitairesSeries.SpeedButton15Click(Sender:TObject);
begin
 ModalResult :=2;
end;

//0050FC18
procedure TFormUtilitairesSeries.TabControl1Change(Sender:TObject);
var
  I:integer;
  buf:string;
begin//0
  //0050FC18
    //0050FC38
    ListBox2.Items.Clear;
    
      for I := 1 to f330.GetNbreModules(TabControl1.TabIndex + 1) do//0050FC8A
      begin//3
        //0050FC91 
        f330._readCompteMoy(TabControl1.TabIndex + 1, buf, I);
        ListBox2.Items.Add(buf);
      end;//3
    

    //0050FD09
    
end;//0

//0050FD20
procedure TFormUtilitairesSeries.btnAjouterSerieClick(Sender:TObject);
var
  I,L,M:integer;
  test : boolean;
begin//0
  //0050FD20
    //0050FD43
    if (ListBox2.ItemIndex + 1 <> 0) then
    begin//2
      //0050FD5E
      L := TabControl1.TabIndex + 1;
      M := ListBox2.ItemIndex + 1;
      test := true;
      if (ListBoxSeriesConcernees.Items.Count > 0) then
      begin//3
        //0050FDA6
        for I := 1 to ListBoxSeriesConcernees.Items.Count do
        begin//4
          //0050FDAB
          if (f334[I - 1] = M) and (f730[I - 1] = L) then  
            test := false;
        end;//4
      end;//3
      if (test ) then 
      begin
		  if (ListBoxSeriesConcernees.Items.Count = 255) then
		  begin//3
			//0050FE1C  
			ListBoxSeriesConcernees.Items.Delete(0);
		  end;//3
		  ListBoxSeriesConcernees.Items.Add(ListBox2.Items[M - 1] + ' (' + TabControl1.Tabs[L - 1] + ')');
		  f334[ListBoxSeriesConcernees.Items.Count - 1] := M;
		  f730[ListBoxSeriesConcernees.Items.Count - 1] := L;
		  btnCreerSerie.Enabled := (ListBoxSeriesConcernees.Items.Count >= 2);
	  end;
    end;//2

    //0050FF24

end;//0

//0050FF58
procedure TFormUtilitairesSeries.btnSupprimerSerieClick(Sender:TObject);
var
  I:integer;
begin//0
  //0050FF58

  if (ListBoxSeriesConcernees.ItemIndex + 1 <> 0) then
  begin//1
    //0050FF71

      for I := ListBoxSeriesConcernees.ItemIndex to ListBoxSeriesConcernees.Items.Count - 2 do//0050FF95
      begin//3
        //0050FF96
        f334[I] := f334[I + 1];
        f730[I] := f730[I + 1];
      end;//3
    

    ListBoxSeriesConcernees.Items.Delete(ListBoxSeriesConcernees.ItemIndex);
    btnCreerSerie.Enabled := (ListBoxSeriesConcernees.Items.Count >= 2);
  end;//1
end;//0

//00510034
procedure TFormUtilitairesSeries.ListBox2DrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
begin
    if (Index mod 2  <> 1) then
    begin//2
      //0055303B
      ListBox2.Canvas.Brush.Color := $FFFFFF;
      ListBox2.Canvas.FillRect(Rect);
    end//2
    else
    begin//2
      //0055306A
      ListBox2.Canvas.Brush.Color := $F4F3EE;
      ListBox2.Canvas.FillRect(Rect);
    end;//2

    ListBox2.Canvas.TextOut(Rect.Left + 5, Rect.Top + 2, ListBox2.Items[Index]);
    if ( odSelected in State) then
    begin//2
      //005530E6
      ListBox2.Canvas.Brush.Color := $F8D1C5;
      ListBox2.Canvas.FillRect(Rect);
      ListBox2.Canvas.Font.Color := $FF0000;
      ListBox2.Canvas.TextOut(Rect.Left + 5, Rect.Top + 2, ListBox2.Items[Index]);
    end;//2
end;

//005101A0
procedure TFormUtilitairesSeries.ListBoxSeriesConcerneesDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
begin
    if (Index mod 2  <> 1) then
    begin//2
      //0055303B
      ListBoxSeriesConcernees.Canvas.Brush.Color := $FFFFFF;
      ListBoxSeriesConcernees.Canvas.FillRect(Rect);
    end//2
    else
    begin//2
      //0055306A
      ListBoxSeriesConcernees.Canvas.Brush.Color := $F4F3EE;
      ListBoxSeriesConcernees.Canvas.FillRect(Rect);
    end;//2

    ListBoxSeriesConcernees.Canvas.TextOut(Rect.Left + 5, Rect.Top + 2, ListBoxSeriesConcernees.Items[Index]);
    if ( odSelected in State) then
    begin//2
      //005530E6
      ListBoxSeriesConcernees.Canvas.Brush.Color := $F8D1C5;
      ListBoxSeriesConcernees.Canvas.FillRect(Rect);
      ListBoxSeriesConcernees.Canvas.Font.Color := $FF0000;
      ListBoxSeriesConcernees.Canvas.TextOut(Rect.Left + 5, Rect.Top + 2, ListBoxSeriesConcernees.Items[Index]);
    end;//2
end;

//0051030C
procedure TFormUtilitairesSeries.sub_0051030C(a:TStringList; var b:string);
var
  I:integer;
  lvar_10,lvar_110 :string;
begin//0
  //0051030C
    //0051033A
    lvar_10 := '';

      //0051035A
      for I := 0 to a.Count - 1 do
      begin//3
        //0051035D
        sub_005103D8(lvar_10, a[I], lvar_110);
		lvar_10 := lvar_110;
      end;//3

    b := lvar_10;

    //005103B4

end;//0

//005103D8
procedure TFormUtilitairesSeries.sub_005103D8(a:String; b:String; var c:string);
var
   lvar_18,lvar_28:real;
   ConvertError:boolean;
begin//0
  //005103D8
    //0051040A
    ConvertError := false;
    try
      //00510428
      lvar_18 := StrToFloat(a);
    except//2
      on E:EConvertError do
      begin//3
        //0051044F
        ConvertError := true;
      end;//3
    end;//2
    try
      //00510466
      lvar_28 := StrToFloat(b);
      if (ConvertError) then //00510478
        c := b
	  else 
	    c := FloatToStrF(lvar_28 + lvar_18, ffFixed{2}, $12{18}, 2);
      
    except//2
      on E:EConvertError do
      begin//3
        //005104D9
        if (ConvertError) then //005104DF
          c := ''
        else//005104E7
          c := a;       

      end;//3
    end;//2
  
    //00510509

end;//0

//00510544
procedure TFormUtilitairesSeries.btnCreerSerieClick(Sender:TObject);
var
  I,J,lvar_C:integer;
  StrList1:TStringList;
  StrList : array of TStringList;
  Trouver,lvar_D : boolean;
  buf,buf0,buf1,lvar_20,lvar_32C,lvar_52C,lvar_22C,lvar_64C,lvar_62C,lvar_760,lvar_42C:string;
  lvar_18 : TStringList;
begin//0
  //00510544
    //00510567
    StrList1 := TStringList.Create; 
    SetLength(StrList, ListBoxSeriesConcernees.Items.Count);
    
      for I := 0 to ListBoxSeriesConcernees.Items.Count - 1 do//005105C5
      begin//3
        //005105C8
        StrList[I] := TStringList.Create;;
      end;//3


    if (f330.NbrModulesTot < {gvar_00617903}255) then
    begin//2
      //00510604
      //lvar_28 := f330;
	  Trouver := true;
      f330.GetStrNoteSur(f730[0], f334[0], buf0);
        for I := 0 to ListBoxSeriesConcernees.Items.Count - 1  do //00510673
        begin//4
          //00510676
          f330.GetStrNoteSur(f730[I], f334[I], buf1);
          //ECX := lvar_22C + 1;//ECX
          if (buf0 <> buf1) then //005106E7
            Trouver := false;
          
        end;//4
     
      if (Trouver = false) then
      begin//3
        //005106F5
        Application.MessageBox('Les séries de notes sélectionnées ne sont pas notées sur le même nombre de points.'+#13+#10+#13+#10+'Impossible de créer la nouvelle série à partir de ces séries.','Carnet de Notes version Personnelle' , $10{16});
        ModalResult := 2;
      end//3
      else
      begin//3
        //0051071F
        lvar_D := true;
          //0051074B
          for I := 0 to ListBoxSeriesConcernees.Items.Count - 1 do
          begin//5
				for J := 1 to f330.EleveCount  do//0051074E
				begin//6
				  //0051076D
				  f330._GetStrNote(f730[I], f334[I], J, buf);
				  StrList[I].add(buf);
				end;//6
          end;//5
          for I := 0 to ListBoxSeriesConcernees.Items.Count - 1 do//0051083A
          begin//5
            //0051083D
            f330._readCompteMoy(f730[I], buf, f334[I]);
            StrList1.Add(buf);
          end;//5
        
        
       // f330.GetStrNoteSur(f730[0], f334[0], lvar_12C);//lvar_22C,lvar_64C,lvar_654
        if (CheckBox1.Checked) then
        begin//4
          //0051090D
            for I := 1 to ListBoxSeriesConcernees.Items.Count do//0051092B
            begin//6
              //00510930
              lvar_C := 0;
                for J:= 1 to f730[I - 1] - 1 do//00510965
                begin//8
                  //0051096D
                  lvar_C := lvar_C + f330.GetNbreModules(J) ;
                end;//8
              f730[I - 1] := f334[I - 1] + lvar_C;
            end;//6

            for I := 1 to ListBoxSeriesConcernees.Items.Count do//00510A0A
            begin//6
              //00510A0F
              f330.sub_004BFC58(f730[{EAX}I], f730[I - 1] - I - 1);
            end;//6
          lvar_D := false;
        end;//4
        lvar_20 := '';
          for I := 0 to ListBoxSeriesConcernees.Items.Count - 2  do//00510AB6
          begin//5
            //00510AB9
            lvar_20 := lvar_20 + ' ' + StrList1[I] + ' ,';
          end;//5
        lvar_20 := lvar_20 + ' ' + StrList1[ListBoxSeriesConcernees.Items.Count - 1];
        case RadioGroup1.ItemIndex of
          0:
          begin//5
            //00510B58
            lvar_32C := 'Maximum de plusieurs notes';
            //ECX := 6;
            lvar_52C := 'Max. de' + lvar_20;
			
          end;//5
          1:
          begin//5
            //00510BAC
            lvar_32C := 'Moyenne de plusieurs notes';
            //ECX := 6;
             lvar_52C := 'Moy. de' + lvar_20;
          end;//5
          2:
          begin//5  
            //00510C00
            lvar_22C := IntToStr(ListBoxSeriesConcernees.Items.Count * StrToInt(lvar_64C) * StrToInt(lvar_64C));
			lvar_32C := 'Plusieurs notes sur ' {+ lvar_654} + ' -> une note sur ' + lvar_22C;
			lvar_52C := 'Somme de' + lvar_20;
          end;//5
        end;//4 
        //push EAX
        lvar_62C := DateToStr(Date);
        lvar_760 := ComboBox2.Items[ComboBox2.ItemIndex];
		                  
        f330.AddColone(ComboBox1.ItemIndex + 1, lvar_52C, lvar_22C, '', 'oui', lvar_62C, lvar_32C, lvar_760, RadioGroupEcritOuOral.ItemIndex = 1);
          for I := 1 to f330.EleveCount do//00510DD3
          begin//5
            //00510DDA
            lvar_18 := TStringList.Create;
              for J := 0 to ListBoxSeriesConcernees.Items.Count - 1 do//00510E0B
              begin//7
                //00510E11
                lvar_18.Add(StrList[J][I - 1]);
              end;//7
            case RadioGroup1.ItemIndex of
              0:
              begin//7
                //00510E68
               __GetStrPeriodeMax(lvar_18, lvar_42C);
              end;//7
              1:
              begin//7
                //00510E78
                __GetStrPeriodeMoy(lvar_18, lvar_62C);
                f330.GetStrMoyArrendit(lvar_62C, RadioGroup2.ItemIndex, lvar_42C{, '1'});
              end;//7
              2:
              begin//7
                //00510EB9
                sub_0051030C(lvar_18, lvar_42C);
              end;//7
            end;//6
            lvar_18.Free;
            f330.sub_004C1074(ComboBox1.ItemIndex + 1, f330.GetNbreModules(ComboBox1.ItemIndex + 1), I, lvar_42C);
          end;//5 
        if (lvar_D) then
        begin//4
          //00510F5D
          if (CheckBox2.Checked) then
          begin//5
            //00510F76
              for I := 1 to ListBoxSeriesConcernees.Items.Count do //00510F99
              begin//7
                //00510F9E
                f330._SetStrNote13(f730[I - 1], f334[I - 1],'non');
              end;//7
          end;//5
        end;//4
        fF28 := ComboBox1.ItemIndex + 1;//EAX
        ModalResult := 1;
      end;//3
    end//2
    else
    begin//2
      //0051103F
      if (_IsRegistred = false) then//00511048
        Application.MessageBox('Impossible de créer une nouvelle série de notes. Le nombre de séries de notes est limité à 3 pour la version non enregistrée.','Carnet de Notes version Personnelle' , $40{64})
      else//00511062
        Application.MessageBox(PChar('Impossible de créer une nouvelle série de notes. Le nombre de séries de notes est limité à ' + IntToStr({gvar_00617903}255) + '.'),'Carnet de Notes version Personnelle', $40{64});
   
    end;//2
      for I := 0 to ListBoxSeriesConcernees.Items.Count - 1 do//005110D9
      begin//3
        //005110DC
        StrList[I].Free;
      end;//3
    StrList1.Free;
    //0051110A

end;//0

//005113C4
procedure TFormUtilitairesSeries.CheckBox1Click(Sender:TObject);
begin//0
  //005113C4
  CheckBox2.Enabled := (CheckBox1.Checked Xor true);
end;//0


//005113E8
procedure TFormUtilitairesSeries.RadioGroup1Click(Sender:TObject);
begin//0
  //005113E8
  RadioGroup2.Visible := (RadioGroup1.ItemIndex = 1);
end;//0


//00511404
procedure TFormUtilitairesSeries.FormKeyPress(Sender:TObject; var Key:Char);
begin
  if (Key = #27) then 
  ModalResult := 2;
end;

end.