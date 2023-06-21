{***********************************************************
* Version Original V0.03 build 1                           *
* Decompiled by HOUIDEF AEK v 1:37 samedi, ao�t 25, 2018   *
* The disassembly process : 100%                            *
************************************************************}
unit _FormBilanEleve;

interface

uses
Forms, Windows,  SysUtils, Classes, ExtCtrls, CheckLst, StdCtrls, Buttons, Dialogs, Controls, UFichierCdn, ShellAPI;

type
  TFormBilanEleve = class(TForm)
  published
    Panel2:TPanel;//f2D0
    Bevel2:TBevel;//f2D4
    Image1:TImage;//f2D8
    CheckListBoxEleves:TCheckListBox;//f2DC
    Label1:TLabel;//f2E0
    SpeedButton3:TSpeedButton;//f2E4
    SpeedButton4:TSpeedButton;//f2E8
    SpeedButton1:TSpeedButton;//f2EC
    SpeedButton2:TSpeedButton;//f2F0
    ComboBoxPeriodes:TComboBox;//f2F4
    SaveDialog1:TSaveDialog;//f2F8
    CheckBox1:TCheckBox;//f2FC
    procedure SpeedButton2Click(Sender:TObject);//0053483C
    procedure SpeedButton1Click(Sender:TObject);//00534834
    procedure FormDestroy(Sender:TObject);//00535124
    procedure FormCreate(Sender:TObject);//0053510C
    procedure SpeedButton4Click(Sender:TObject);//0053460C
    procedure SpeedButton3Click(Sender:TObject);//005345CC
    procedure FormShow(Sender:TObject);//005347F0
    procedure CheckListBoxElevesDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);//0053464C
  public
    f300:TFichierCdn;//f300
    f304:TStringList;//f304
    constructor Create(Owner:TComponent;Logo:Timage; F:TFichierCdn);//00534574
	procedure sub_00534914(a:dword; b:dword; c:boolean);//00534914
  end;
  var
     FormBilanEleve :TFormBilanEleve;  

implementation
    uses UBiblio,PeriodeCalc;
{$R *.DFM}

//00534574
constructor TFormBilanEleve.Create(Owner:TComponent; Logo:Timage; F:TFichierCdn);
begin//0
  //00534574

  inherited Create(Owner);

  f300 := F;
  Image1.Picture := Logo.Picture;

end;//0



//005345CC
procedure TFormBilanEleve.SpeedButton3Click(Sender:TObject);
var
  I:integer;
begin//0
  //005345CC
    for I := 0 to CheckListBoxEleves.Items.Count - 1 do  //005345F2
    begin//2
      //005345F5
      CheckListBoxEleves.Checked[I] := True;
    end;//2

end;//0

//0053460C
procedure TFormBilanEleve.SpeedButton4Click(Sender:TObject);
var
  I:integer;
begin//0
  //0053460C


    for I := 0 to CheckListBoxEleves.Items.Count - 1 do//00534632
    begin//2
      //00534635
      CheckListBoxEleves.Checked[I] := False;
    end;//2

end;//0

//0053464C
procedure TFormBilanEleve.CheckListBoxElevesDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
begin
    if (Index mod 2  <> 1) then
    begin//2
      //0055303B
      CheckListBoxEleves.Canvas.Brush.Color := $FFFFFF;
      CheckListBoxEleves.Canvas.FillRect(Rect);
    end//2
    else
    begin//2
      //0055306A
      CheckListBoxEleves.Canvas.Brush.Color := $F4F3EE;
      CheckListBoxEleves.Canvas.FillRect(Rect);
    end;//2

    CheckListBoxEleves.Canvas.TextOut(Rect.Left + 5, Rect.Top + 2, CheckListBoxEleves.Items[Index]);
    if ( odSelected in State) then
    begin//2
      //005530E6
      CheckListBoxEleves.Canvas.Brush.Color := $F8D1C5;
      CheckListBoxEleves.Canvas.FillRect(Rect);
      CheckListBoxEleves.Canvas.Font.Color := $FF0000;
      CheckListBoxEleves.Canvas.TextOut(Rect.Left + 5, Rect.Top + 2, CheckListBoxEleves.Items[Index]);
    end;//2
end;

//005347F0
procedure TFormBilanEleve.FormShow(Sender:TObject);
begin//0
  //005347F0
  CheckListBoxEleves.Items := f300.GetEleveList;
  ComboBoxPeriodes.Items := f300.GetPeriodeNameList;
  ComboBoxPeriodes.ItemIndex:= 0;
end;//0

//00534834
procedure TFormBilanEleve.SpeedButton1Click(Sender:TObject);
begin
  Close;
end;

//0053483C
procedure TFormBilanEleve.SpeedButton2Click(Sender:TObject);
var
  Count1,Count2,I:integer;
begin//0
  //0053483C

  f304.Clear;


    Count1 := 0;
	Count2 := 0;
    for I := 0 to CheckListBoxEleves.Items.Count - 1 do//00534876
    begin//2
      //00534879
      if (CheckListBoxEleves.Checked[I] ) then
			Count1 := Count1 + 1;//EBP
    end;//2

    for I := 0 to CheckListBoxEleves.Items.Count - 1 do//005348B9
    begin//2
      //005348BC
      if (CheckListBoxEleves.Checked[I] ) then 
	  begin
		  Count2 := Count2 + 1;
		  sub_00534914(I + 1, ComboBoxPeriodes.ItemIndex + 1, Count1 = Count2);
	  end;
    end;//2

end;//0

//00534914
procedure TFormBilanEleve.sub_00534914(a:dword; b:dword; c:boolean);
var
 text,buf0,buf1,buf2,buf3,buf4:string;
 lvar_C : TStringList;
 I:integer;
begin//0
  //00534914
    //00534940
    f304.Add('------------------------------------------------------------------------------');
    f304.Add(f300.GetEleveName(a) + ' - ' + f300.GetClasseName + ' - ' + f300.GetYear);
    f304.Add(f300.GetPeriodeName( b )+ ' - ' + f300.GetMatiereName);
    f304.Add('------------------------------------------------------------------------------');
   
      for I := 1 to f300.NbrSerieNotes(b)  do//00534AA4
      begin//3
        //00534AAC
        text := f300.GetTitleModule(b, I) + ' : ' + f300.Get_Sum(b, I, a) + '/' + f300.GetDateNoteSur(b, I);
        ;
        if (UpperCase(f300.GetCompteMoyenne(b, I)) = 'NON') then
        begin//4
          //00534BFC
          text := text + ' (non compt� dans la moyenne)';
        end;//4
        f304.Add(text + ' (Min. ' + f300.GetMinNote__(b,I) + ' - Moy. ' + f300.GetMoyenne___(b, I) + ' - Max. ' + f300.GetMaxNote__(b,I) + ')');
        if (I <> f300.NbrSerieNotes(b)) then
			f304.Add('');
      end;//3
    f304.Add('------------------------------------------------------------------------------');
    text := 'Moyenne de la p�riode : ' + f300.GetMoyennePeriode(b, a, GetArrondirMoyennes);
    lvar_C := TStringList.Create;
      
      for I := 1 to f300.NbreEleves  do//00534DB7
      begin//3
        //00534DC1
        lvar_C.Add(f300.GetMoyennePeriode(b, I, GetArrondirMoyennes));
      end;//3
    lvar_C.Destroy;
    f304.Add(text + ' (Min. ' + GetPeriodeMin(lvar_C) + ' - Moy. ' + GetPeriodeMoy(lvar_C) + ' - Max. ' + GetPeriodeMax(lvar_C) + ')');
    f304.Add('------------------------------------------------------------------------------');
    if (c) then
    begin//2
      //00534EDA
      if (SaveDialog1.Execute ) then
      begin//3
        //00534EF0
        f304.SaveToFile(SaveDialog1.FileName);
        if (CheckBox1.Checked ) then
        begin//4
          //00534F27
          ShellExecuteA(0, 'open', PChar(SaveDialog1.FileName), '', '', 1);
        end;//4
        Close;
        Exit;
      end;//3
    end;//2
    f304.Add('');
    f304.Add('');
end;//0

//0053510C
procedure TFormBilanEleve.FormCreate(Sender:TObject);
begin//0
  //0053510C
  f304 := TStringList.Create;
end;//0


//00535124
procedure TFormBilanEleve.FormDestroy(Sender:TObject);
begin
 f304.Destroy;
end;

end.