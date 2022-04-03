{***************************************
* Version Original V0.01
* Decompiled by HOUIDEF AEK v.05.02.2018
***************************************}
unit _FormImporterSeries;

interface

uses
  Forms,Windows, SysUtils, Classes, ExtCtrls, StdCtrls, Buttons, ComCtrls, CheckLst, Controls,UFichierCdn;

type
  TFormImporterSeries = class(TForm)
  published
    Panel2:TPanel;//f2D0
    Bevel2:TBevel;//f2D4
    Image1:TImage;//f2D8
    ComboBoxPeriodes:TComboBox;//f2DC
    LabelLibelle:TLabel;//f2E0
    SpeedButtonExecuter:TSpeedButton;//f2E4
    SpeedButton2:TSpeedButton;//f2E8
    TabControl1:TTabControl;//f2EC
    LabelLibelleSeries:TLabel;//f2F0
    CheckListBoxSeries:TCheckListBox;//f2F4
    SpeedButton3:TSpeedButton;//f2F8
    SpeedButton4:TSpeedButton;//f2FC
    Label3:TLabel;//f300
    procedure SpeedButton4Click(Sender:TObject);//0050F398
    procedure SpeedButton3Click(Sender:TObject);//0050F334
    procedure FormKeyPress(Sender:TObject; var Key:Char);//0050F574
    procedure CheckListBoxSeriesClickCheck(Sender:TObject);//0050F3FC
    procedure SpeedButton2Click(Sender:TObject);//0050EBF8
    procedure CheckListBoxSeriesDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);//0050EA8C
    procedure SpeedButtonExecuterClick(Sender:TObject);//0050ED1C
    procedure TabControl1Change(Sender:TObject);//0050EC00
  public
    f304:TFichierCdn;//f304
    f308:TFichierCdn;//f308
    f30C:byte;//f30C
    constructor Create(Owner:TComponent; F1:TFichierCdn; F2:TFichierCdn; logo:Timage; e:dword);//0050E744
	procedure sub_0050F454;//0050F454
  end;
  var 
    FormImporterSeries:TFormImporterSeries;

implementation
   uses Constantes;
{$R *.DFM}

//0050E744
constructor TFormImporterSeries.Create(Owner:TComponent; F1:TFichierCdn; F2:TFichierCdn; logo:Timage; e:dword);
var
  buf:string;
  I:integer;
begin//0
  //0050E744
    //0050E77F
    inherited Create(Owner);
    f30C := e;
    if (e <> 0) then
    begin//2
      //0050E799
      LabelLibelle.Caption := '&Copier le modèle des séries vers';
      LabelLibelleSeries.Caption := '&Modèles de séries de notes à copier';
      LabelLibelleSeries.Left := LabelLibelleSeries.Left - 15;
      LabelLibelle.Left := 140;
      ComboBoxPeriodes.Left := ComboBoxPeriodes.Left + $1E{30};
      SpeedButtonExecuter.Caption := 'C&opier';
      SpeedButtonExecuter.Hint := 'Copier le modèle des séries de notes sélectionnées';
      Caption:='Copier le modèle des séries de notes de ';
    end;//2
    Image1.Picture := logo.Picture;

    f304 := F1;
    f308 := F2;
    Caption := Caption + '"' + ExtractFileName(f308.GetFileName) + '"';
    ComboBoxPeriodes.Items := f304.GetPeriodeNameList;
    ComboBoxPeriodes.ItemIndex := 0;
    TabControl1.Tabs := f308.GetPeriodeNameList;
      for I := 1 to f308.NbreModules(1) do //0050E8EE
      begin//3
        //0050E8F5
        CheckListBoxSeries.Items.Add(f308.GetTitleModule( 1, I));
      end;//3
    sub_0050F454;
end;//0

//0050EA8C
procedure TFormImporterSeries.CheckListBoxSeriesDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
begin
    if (Index mod 2  <> 1) then
    begin//2
      //0055303B
      CheckListBoxSeries.Canvas.Brush.Color := $FFFFFF;
      CheckListBoxSeries.Canvas.FillRect(Rect);
    end//2
    else
    begin//2
      //0055306A
      CheckListBoxSeries.Canvas.Brush.Color := $F4F3EE;
      CheckListBoxSeries.Canvas.FillRect(Rect);
    end;//2

    CheckListBoxSeries.Canvas.TextOut(Rect.Left + 5, Rect.Top + 2, CheckListBoxSeries.Items[Index]);
    if ( odSelected in State) then
    begin//2
      //005530E6
      CheckListBoxSeries.Canvas.Brush.Color := $F8D1C5;
      CheckListBoxSeries.Canvas.FillRect(Rect);
      CheckListBoxSeries.Canvas.Font.Color := $FF0000;
      CheckListBoxSeries.Canvas.TextOut(Rect.Left + 5, Rect.Top + 2, CheckListBoxSeries.Items[Index]);
    end;//2
end;

//0050EBF8
procedure TFormImporterSeries.SpeedButton2Click(Sender:TObject);
begin
  Close;
end;

//0050EC00
procedure TFormImporterSeries.TabControl1Change(Sender:TObject);
var
 I:integer;
begin//0
    CheckListBoxSeries.Items.Clear;
    SpeedButtonExecuter.Enabled := False;
      for I := 1 to f308.NbreModules(TabControl1.TabIndex + 1) do//0050EC7F
      begin//3
        //0050EC86
        CheckListBoxSeries.Items.Add(f308.GetTitleModule( TabControl1.TabIndex + 1, I));
      end;//3
    sub_0050F454;
end;//0

//0050ED1C
procedure TFormImporterSeries.SpeedButtonExecuterClick(Sender:TObject);
var
  lvar_81C : string;
  lvar_11C,lvar_21C,lvar_31C,lvar_41C,lvar_51C,lvar_61C : string;
  lvar_71C,lvar_824 : string;
  lvar_4:byte;
  I,lvar_C,J:integer;
begin//0
  //0050ED1C
    //0050ED49
      //0050ED62
        
        for I := 1 to CheckListBoxSeries.Items.Count do//0050ED7D
        begin//4
          //0050ED82
          if (CheckListBoxSeries.Checked[I - 1] = False) then Continue;
          if (f304.IndexModule < gvar_00617903) then
          begin//5
            //0050EDBA
            //lvar_4 := ComboBoxPeriodes.ItemIndex + 1;
            //lvar_14 := f308;
            //lvar_18 := f304;
            f304.SetData_V1(lvar_4, f308.GetTitleModule(TabControl1.TabIndex + 1, I), 
									f308.GetDateNoteSur(TabControl1.TabIndex + 1, I), 
									f308.Get_Coefficient(TabControl1.TabIndex + 1, I), 
									f308.GetCompteMoyenne(TabControl1.TabIndex + 1, I), 
									f308.GetDataDate(TabControl1.TabIndex + 1, I), 
									f308.GetDataCommentaire(TabControl1.TabIndex + 1, I), 
									f308.GetDataTypeNote(TabControl1.TabIndex + 1, I), 
									f308.GetOralEcrit(TabControl1.TabIndex + 1, I) = 'Oral');
            if (f30C <> 0) then Continue;
            lvar_C := f304.NbreModules(lvar_4);
            if (f304.NbreEleves  <= 0) then Continue;
            for J := 1 to f304.NbreEleves do
            begin//6
              //0050F0A1
              f304.SetAbs(lvar_4, lvar_C, J, f308.Get_Sum(TabControl1.TabIndex + 1, I, J));
            end;//6
          end//5
          else
          begin//5
            //0050F146
            lvar_81C := f308.GetTitleModule(TabControl1.TabIndex + 1, I);
            Application.MessageBox(PChar('Impossible d''importer la série "' + IntToStr(gvar_00617903) + '"' + #13 + #10 + #13 + #10 + 'Le nombre de séries de notes est limité à ' + lvar_824 + ' pour la version non enregistrée.'),'Carnet de Notes version Personnelle' , $10);
            Break;
          end;//5
        end;//4
    ModalResult := 1;
end;//0

//0050F334
procedure TFormImporterSeries.SpeedButton3Click(Sender:TObject);
var
  I:integer;
begin//0
  //0050F334
    for I := 0 to CheckListBoxSeries.Items.Count - 1 do//0050F35A
    begin//2
      //0050F35D
      CheckListBoxSeries.Checked[I] := True;
    end;//2
  if (CheckListBoxSeries.Items.Count > 0) then
  begin//1
    //0050F385
    SpeedButtonExecuter.Enabled := True;
  end;//1
end;//0

//0050F398
procedure TFormImporterSeries.SpeedButton4Click(Sender:TObject);
var
  I:integer;
begin//0
  //0050F398
    for I := 0 to CheckListBoxSeries.Items.Count - 1 do//0050F3BE
    begin//2
      //0050F3C1
      CheckListBoxSeries.Checked[I ] :=  False;
    end;//2
  if (CheckListBoxSeries.Items.Count > 0) then
  begin//1
    //0050F3E9
    SpeedButtonExecuter.Enabled := False;
  end;//1
end;//0

//0050F3FC
procedure TFormImporterSeries.CheckListBoxSeriesClickCheck(Sender:TObject);
var
  b:boolean;
  I:integer;
begin//0
  //0050F3FC
  //push EBP
  b := false;
    //0050F425
    for I := 0 to CheckListBoxSeries.Items.Count - 1 do
    begin//2
      //0050F428
      if (CheckListBoxSeries.Checked[I] ) then
      b := true;
    end;//2
  SpeedButtonExecuter.Enabled := b;
end;//0


//0050F454
procedure TFormImporterSeries.sub_0050F454;
begin//0
  //0050F454
  //push ESI
    //0050F46B
    case f308.NbreModules(TabControl1.TabIndex + 1)  of
      0:
      begin//3
        //0050F4AE
        Label3.Caption := 'aucune série de notes';
      end;//3
      1:
      begin//3
        //0050F4C0
        Label3.Caption := '1 série de notes';
      end;//3
    end;//2
    Label3.Caption  := IntToStr(f308.NbreModules(TabControl1.TabIndex + 1)) + ' séries de notes';
    //0050F504
end;//0


//0050F574
procedure TFormImporterSeries.FormKeyPress(Sender:TObject; var Key:Char);
begin//0
  //0050F574
  if (Key = char($1B)) then 
  ModalResult := 2;
end;//0



end.