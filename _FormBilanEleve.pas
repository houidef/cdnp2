{***********************************************************
* Version Original V0.03 build 1                           *
* Decompiled by Houidef AEK v 1:37 samedi, août 25, 2018   *
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
    FCdn:TFichierCdn;//f300
    Bilan:TStringList;//f304
    constructor Create(Owner:TComponent;Logo:Timage; F:TFichierCdn);//00534574
	procedure CreerBilanEleve(iEleve:dword; iPeriode:dword; c:boolean);//00534914
  end;
  var
     FormBilanEleve :TFormBilanEleve;  

implementation
    uses Unit111,_Unit112;
{$R *.DFM}

//00534574
constructor TFormBilanEleve.Create(Owner:TComponent; Logo:Timage; F:TFichierCdn);
begin//0
  //00534574
  inherited Create(Owner);
  FCdn := F;
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
  CheckListBoxEleves.Items := FCdn.EleveLists;
  ComboBoxPeriodes.Items := FCdn.GetPeriodesList_;
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
  Bilan.Clear;
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
		  CreerBilanEleve(I + 1, ComboBoxPeriodes.ItemIndex + 1, Count1 = Count2);
	  end;
    end;//2

end;//0

//00534914
procedure TFormBilanEleve.CreerBilanEleve(iEleve:dword; iPeriode:dword; c:boolean);
var
 text,buf0,buf1,buf2,buf3,buf4:string;
 lvar_C : TStringList;
 I:integer;
begin//0
  //00534914
    Bilan.Add('------------------------------------------------------------------------------');
    FCdn.GetEleveName(iEleve, buf0);
    Bilan.Add(buf0 + ' - ' + FCdn.GetClasseName + ' - ' + FCdn.GetYear);
    Bilan.Add(FCdn.GetPeriodName( iPeriode) + ' - ' + FCdn.GetMatiereName());
    Bilan.Add('------------------------------------------------------------------------------');
   
      for I := 1 to FCdn.GetNbreModules(iPeriode)  do//00534AA4
      begin//3
        //00534AAC
        FCdn.GetModuleName__v(iPeriode, buf0, I);
        FCdn._GetStrNote(iPeriode, I, iEleve, buf1);
        FCdn.GetStrNoteSur(iPeriode, I, buf2);
        text := buf0 + ' : ' + buf1 + '/' + buf2;
        FCdn.GetStrComptMoy(iPeriode, I, buf0);
        if (UpperCase(buf0) = 'NON') then
        begin//4
          //00534BFC
          text := text + ' (non compté dans la moyenne)';
        end;//4
        FCdn.__GetStrMin(iPeriode, buf0,I);
        FCdn.GetMoyenne_vv(iPeriode, buf1, I);
        FCdn.__GetStrMax(iPeriode, buf2,I);
        Bilan.Add(text + ' (Min. ' + buf0 + ' - Moy. ' + buf1 + ' - Max. ' + buf2 + ')');
        if (I <> FCdn.GetNbreModules(iPeriode)) then
			Bilan.Add('');
      end;//3
    Bilan.Add('------------------------------------------------------------------------------');
    FCdn.GetMoyBulletin(iPeriode, iEleve, GetarrondirMoyennes, buf0);
    text := 'Moyenne de la période : ' + buf0;
    lvar_C := TStringList.Create;
      for I := 1 to FCdn.EleveCount  do//00534DB7
      begin//3
        //00534DC1
        FCdn.GetMoyBulletin(iPeriode, I, GetarrondirMoyennes, buf0);
        lvar_C.Add(buf0);
      end;//3
    __GetStrPeriodeMin(lvar_C,buf0);
    __GetStrPeriodeMoy(lvar_C, buf1);
   __GetStrPeriodeMax(lvar_C, buf2);
    lvar_C.Destroy;
    Bilan.Add(text + ' (Min. ' + buf0 + ' - Moy. ' + buf1 + ' - Max. ' + buf2 + ')');
    Bilan.Add('------------------------------------------------------------------------------');
    if (c) then
    begin//2
      //00534EDA
      if (SaveDialog1.Execute ) then
      begin//3
        //00534EF0
        Bilan.SaveToFile(SaveDialog1.FileName);
        if (CheckBox1.Checked ) then
        begin//4
          //00534F27
          ShellExecuteA(0, 'open', PChar(SaveDialog1.FileName), '', '', 1);
        end;//4
        Close;
        Exit;
      end;//3
    end;//2
    Bilan.Add('');
    Bilan.Add('');
    //00534F8A
end;//0

//0053510C
procedure TFormBilanEleve.FormCreate(Sender:TObject);
begin//0
  //0053510C
  Bilan := TStringList.Create;
end;//0


//00535124
procedure TFormBilanEleve.FormDestroy(Sender:TObject);
begin
 Bilan.Destroy;
end;

end.