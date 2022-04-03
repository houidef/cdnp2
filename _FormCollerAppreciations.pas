{***********************************************************
* Version Original V0.03 build 1                           *
* Decompiled by HOUIDEF AEK v 14:57 jeudi, août 23, 2018   *
* The disassembly process : 100%                           *
************************************************************}
unit _FormCollerAppreciations;

interface

uses
Forms, Windows,  SysUtils, Classes, ExtCtrls, Buttons, CheckLst, StdCtrls,Controls, UFichierCdn, Clipbrd;

type
  TFormCollerAppreciations = class(TForm)
  published
    Panel2:TPanel;//f2D0
    Bevel2:TBevel;//f2D4
    Image1:TImage;//f2D8
    SpeedButton1:TSpeedButton;//f2DC
    SpeedButton2:TSpeedButton;//f2E0
    CheckListBox1:TCheckListBox;//f2E4
    SpeedButton18:TSpeedButton;//f2E8
    SpeedButton19:TSpeedButton;//f2EC
    Label1:TLabel;//f2F0
    CheckBox1:TCheckBox;//f2F4
    Label2:TLabel;//f2F8
    procedure CheckListBox1ClickCheck(Sender:TObject);//00533F54
    procedure SpeedButton1Click(Sender:TObject);//00533FC4
    procedure SpeedButton2Click(Sender:TObject);//00533FCC
    procedure CheckListBox1DrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);//00533CE8
    procedure SpeedButton18Click(Sender:TObject);//00533E8C
    procedure SpeedButton19Click(Sender:TObject);//00533EF0
  public
    f2FC:TFichierCdn;//f2FC
    constructor Create(owner:TComponent; logo:Timage; F:TFichierCdn);//00533C70
  end;
  var
    FormCollerAppreciations: TFormCollerAppreciations;

implementation

{$R *.DFM}

//00533C70
constructor TFormCollerAppreciations.Create(owner:TComponent; logo:Timage; F:TFichierCdn);
begin//0
  //00533C70
 
  inherited Create(owner);

  f2FC := F;
  Image1.Picture := logo.Picture;
  CheckListBox1.Items := f2FC.GetPeriodeNameList;

end;//0

//00533CE8
procedure TFormCollerAppreciations.CheckListBox1DrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
begin
    if (Index mod 2  <> 1) then
    begin//2
      //0055303B
      CheckListBox1.Canvas.Brush.Color := $FFFFFF;
      CheckListBox1.Canvas.FillRect(Rect);
    end//2
    else
    begin//2
      //0055306A
      CheckListBox1.Canvas.Brush.Color := $F4F3EE;
      CheckListBox1.Canvas.FillRect(Rect);
    end;//2

    CheckListBox1.Canvas.TextOut(Rect.Left + 5, Rect.Top + 2, CheckListBox1.Items[Index]);
    if ( odSelected in State) then
    begin//2
      //005530E6
      CheckListBox1.Canvas.Brush.Color := $F8D1C5;
      CheckListBox1.Canvas.FillRect(Rect);
      CheckListBox1.Canvas.Font.Color := $FF0000;
      CheckListBox1.Canvas.TextOut(Rect.Left + 5, Rect.Top + 2, CheckListBox1.Items[Index]);
    end;//2
end;

//00533E8C
procedure TFormCollerAppreciations.SpeedButton18Click(Sender:TObject);
var
 I:integer;
begin//0
  //00533E8C

    for I := 1 to CheckListBox1.Items.Count do//00533EB5
    begin//2
      //00533EB9
      CheckListBox1.Checked[I - 1] := True;
    end;//2

  SpeedButton2.Enabled := True;
end;//0

//00533EF0
procedure TFormCollerAppreciations.SpeedButton19Click(Sender:TObject);
var I:integer;
begin//0
  //00533EF0

    for I := 1 to CheckListBox1.Items.Count do//00533F19
    begin//2
      //00533F1D
      CheckListBox1.Checked[I - 1] := False;
    end;//2
 
  SpeedButton2.Enabled := False;
end;//0

//00533F54
procedure TFormCollerAppreciations.CheckListBox1ClickCheck(Sender:TObject);
var
 Enabld:boolean;
 I:integer;
begin//0
  //00533F54

  Enabld := false;


    for I := 1 to CheckListBox1.Items.Count do//00533F81
    begin//2
      //00533F86

      if (CheckListBox1.Checked[I - 1] ) then 
      Enabld := true;
    end;//2
  SpeedButton2.Enabled := Enabld;
end;//0

//00533FC4
procedure TFormCollerAppreciations.SpeedButton1Click(Sender:TObject);
begin
 close;
end;

//00533FCC
procedure TFormCollerAppreciations.SpeedButton2Click(Sender:TObject);
var
   text,EndLine,InclurePointVergule,Inclure,buf:string;
   I,J,K:integer;
begin//0
  //00533FCC

    //00533FFF
    Clipboard.Clear;
    text := '';
      for I := 1 to CheckListBox1.Items.Count do//0053403C
      begin//3
        //00534043
        if (CheckListBox1.Checked[I - 1]) then 

          for J := 1 to f2FC.NbreEleves do //00534074
          begin//5
            //0053407B
            if (CheckBox1.Checked <> False) then
            begin//6
              //0053408D
              InclurePointVergule := f2FC.GetEleveName(J) + ';';
              Inclure := ';';
            end//6
            else
            begin//6
              //005340CA
              InclurePointVergule := '';
              //EDX := $5341FC;
              Inclure := #13+#10;
            end;//6

            text := text + InclurePointVergule;

            if (f2FC.GetbulletinsCount > 0) then 
            for K := 1 to f2FC.GetbulletinsCount do
            begin//6
              //005340FA
              if (K <> f2FC.GetbulletinsCount) then//00534105
                EndLine := Inclure
              else//00534112
                //EDX := $5341FC;
                EndLine := #13+#10;

              f2FC.GetApreciations(I, J, K, buf);

              text := text + buf + EndLine;
            end;//6
          end;//5


        text := text + #13 + #10;
      end;//3


    Clipboard.SetTextBuf(PChar(text));

    //005341B7

end;//0

end.