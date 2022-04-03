{***********************************************************
* Version Original V0.03 build 1                           *
* Decompiled by HOUIDEF AEK v 12:20 mercredi, août 29, 2018*
* The disassembly process : 100%                           *
************************************************************}
unit _FormTypeImportation;

interface

uses
Forms, Windows,  SysUtils, Classes, ExtCtrls, Buttons, CheckLst, StdCtrls;

type
  TFormTypeImportation = class(TForm)
  published
    RadioGroup1:TRadioGroup;//f2D0
    SpeedButtonImporter:TSpeedButton;//f2D4
    CheckListBox1:TCheckListBox;//f2D8
    SpeedButton3:TSpeedButton;//f2DC
    SpeedButton4:TSpeedButton;//f2E0
    Label1:TLabel;//f2E4
    SpeedButtonFermer:TSpeedButton;//f2E8
    Label2:TLabel;//f2EC
	f2F0 : TStringList;
	f2F4 : TStringList;
	f2F8 : TStringList;
    procedure SpeedButtonFermerClick(Sender:TObject);//00512D98
    procedure CheckListBox1ClickCheck(Sender:TObject);//00512DA4
    procedure FormKeyPress(Sender:TObject; var Key:Char);//00512E70
    procedure SpeedButtonImporterClick(Sender:TObject);//00512C5C
    procedure SpeedButton3Click(Sender:TObject);//00512C68
    procedure SpeedButton4Click(Sender:TObject);//00512D28
    constructor Create(Owner:TComponent; S1:TStringList; S2:TStringList; S3:TStringList;a:ShortString);//00512A58
  end;
  var
   FormTypeImportation{gvar_00617DAC} : TFormTypeImportation;
implementation

{$R *.DFM}

//00512A58
constructor TFormTypeImportation.Create(Owner:TComponent; S1:TStringList; S2:TStringList; S3:TStringList; a:ShortString);
var
 I:integer;
begin//0
  //00512A58
    //00512A95
    inherited Create(Owner);
    f2F0 := S1;
    f2F4 := S2;
    f2F8 := S3;
    Caption := Caption + '"' + a + '"';
      for I := 1 to f2F0.count do//00512AFB
      begin//3
        //00512B03
        CheckListBox1.Items.Add(f2F0[I - 1]);
        CheckListBox1.Checked[I - 1] := True;
      end;//3
    
    Label1.Caption := IntToStr(CheckListBox1.Items.Count) + ' élève(s) dans cette classe';
    Label2.Caption := IntToStr(CheckListBox1.Items.Count) + ' sélectionné(s)';
	//00512BC5
 
end;//0

//00512C5C
procedure TFormTypeImportation.SpeedButtonImporterClick(Sender:TObject);
begin
 ModalResult := 1;
end;

//00512C68
procedure TFormTypeImportation.SpeedButton3Click(Sender:TObject);
var
  I:integer;
begin//0
  //00512C68
  
    //00512C80

      for I := 1 to CheckListBox1.Items.Count do//00512C97
      begin//3
        //00512C9C
        CheckListBox1.Checked[I - 1] := True;
      end;//3

    Label2.Caption := IntToStr(CheckListBox1.Items.Count) + ' sélectionné(s)';

    //00512CFA

end;//0

//00512D28
procedure TFormTypeImportation.SpeedButton4Click(Sender:TObject);
var
  I:integer;
begin//0
  //00512D28
    for I := 1 to CheckListBox1.Items.Count do//00512D44
    begin//2
      //00512D49
      CheckListBox1.Checked[I - 1] := False;
    end;//2

  Label2.Caption := ' 0 sélectionné(s)';
end;//0

//00512D98
procedure TFormTypeImportation.SpeedButtonFermerClick(Sender:TObject);
begin
  ModalResult := 2;
end;

//00512DA4
procedure TFormTypeImportation.CheckListBox1ClickCheck(Sender : Tobject);
var
  I,J:integer;
begin//0
  //00512DA4

    //00512DC2
	 J:=0;
      for I := 0 to CheckListBox1.Items.Count - 1 do//00512DE8
      begin//3
        //00512DEB
        if (CheckListBox1.Checked[I]) then 
			J := J + 1;
      end;//3
    Label2.Caption := IntToStr(J) + ' sélectionné(s)';
    //00512E3E

end;//0

//00512E70
procedure TFormTypeImportation.FormKeyPress(Sender:TObject; var Key:Char);
begin
  if (Key = #13) then
    ModalResult := 1
  else
  if (Key = #27) then 
  ModalResult := 2;
end;

end.