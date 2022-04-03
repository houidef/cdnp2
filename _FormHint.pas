{************************************************************
* File             : _FormHint                              *  
* Version          : V0.03 build 1                          *
* Decompiled by    : HOUIDEF AEK                            * 
* Update           : 20:48 jeudi, septembre 13, 2018        *
* The disassembly process : 100%                            *
************************************************************}
unit _FormHint;

interface

uses
  Forms, Windows, SysUtils, Classes, StdCtrls, ExtCtrls,dialogs;

type
  TFormHint = class(TForm)
  published
    Label1:TLabel;//f2D0
    Label2:TLabel;//f2D4
    Label3:TLabel;//f2D8
    Label4:TLabel;//f2DC
    Label5:TLabel;//f2E0
    Label6:TLabel;//f2E4
    Label7:TLabel;//f2E8
    Timer1:TTimer;//f2EC
    procedure Timer1Timer(Sender:TObject);//004CB238
    procedure FormHide(Sender:TObject);//004CB240
    procedure FormPaint(Sender:TObject);//004CB1FC
    procedure FormClick(Sender:TObject);//004CABE0
    procedure FormShow(Sender:TObject);//004CABE8
  public
    IdHint:dword;//f2F0
  end;
var 
   FormHint:TFormHint; //gvar_00617CE8
implementation

{$R *.DFM}

//004CABE0
procedure TFormHint.FormClick(Sender:TObject);
begin
 close;
end;

//004CABE8
procedure TFormHint.FormShow(Sender:TObject);
var
 lvar_10:Tpoint;
begin//0
  //004CABE8
  Timer1.Enabled := True;
  GetCursorPos(lvar_10);
  Left := lvar_10.x + 10;
  Top := lvar_10.y;
  Width := 10;
  Height := 10;
  case IdHint of
    3:
    begin//004CAC67
      if (Label1.Width + Label1.Left > Width) then //004CAC81
        Width :=Label1.Width + 20; 
      
      if (Label2.Width + Label2.Left > Width) then//004CACAC
        Width :=Label2.Width + 20;

      if (Label3.Width + Label3.Left > Width) then//004CACD7
        Width := Label3.Width + 20;

      Label1.Visible :=True;
      Label2.Visible :=True;
      Label3.Visible :=True;
      Label4.Visible :=False;
      Label5.Visible :=False;
      Label6.Visible :=False;
      Label7.Visible :=False;
      Height := Label3.Top + Label3.Height + 5;
    end;//2
    4:
    begin//2
      //004CAD6C

      if (Label1.Width + Label1.Left > Width) then
      begin//3
        //004CAD86
        Width := Label1.Width  + $14{20};
      end;//3
      if (Label2.Width + Label2.Left > Width) then
      begin//3
        //004CADB1
        Width :=Label2.Width + $14{20};
      end;//3

      if (Label3.Width + Label3.Left > Width) then
      begin//3
        //004CADDC
        Width :=Label3.Width  + $14{20};
      end;//3

      if (Label4.Width + Label4.Left > Width) then
      begin//3
        //004CAE07
        Width := Label4.Width  + $14{20};
      end;//3
      Label1.Visible :=True;
      Label2.Visible :=True;
      Label3.Visible :=True;
      Label4.Visible :=True;
      Label5.Visible :=False;
      Label6.Visible :=False;
      Label7.Visible :=False;
      Height := Label4.Top + Label4.Height;
    end;//2
    5:
    begin//2
      //004CAE9C
      
      if (Label1.Width + Label1.Left > Width) then//004CAEB4
        Width := Label1.Width + 20;

      
      if (Label2.Width + Label2.Left > Width) then//004CAEE6
        Width := Label2.Width + 20;
     
      if (Label3.Width + Label3.Left > Width) then//004CAF18
        Width := Label3.Width + 20;

      
      if (Label4.Width + Label4.Left > Width) then//004CAF4A
        Width := Label4.Width + 20;

      if (Label5.Width + Label5.Left > Width) then//004CAF7C
        Width := Label5.Width + 20;


      Label1.Visible :=True;
      Label2.Visible :=True;
      Label3.Visible :=True;
      Label4.Visible :=True;
      Label5.Visible :=True;
      Label6.Visible :=False;
      Label7.Visible :=False;

      Height := Label5.Top + Label5.Height + 5;
    end;//2
    7:
    begin//2
      //004CB01A
      if (Label1.Width + Label1.Left > Width) then
      begin//3
        //004CB032
        Width := Label1.Width + $14{20};
      end;//3
      if (Label2.Width + Label2.Left > Width) then
      begin//3
        //004CB064
        Width := Label2.Width + $14{20};
      end;//3
      if (Label3.Width + Label3.Left > Width) then
      begin//3
        //004CB096
        Width := Label3.Width + $14{20};
      end;//3
      if (Label4.Width + Label4.Left > Width) then
      begin//3
        //004CB0C8
        Width := Label4.Width + $14{20};
      end;//3
      if (Label5.Width + Label5.Left > Width) then
      begin//3
        //004CB0FA
        Width := Label5.Width + $14{20};
      end;//3

      if (Label6.Width + Label6.Left > Width) then
      begin//3
        //004CB12C
        Width := Label6.Width + $14{20};
      end;//3
      if (Label7.Width + Label7.Left > Width) then
      begin//3
        //004CB15E
        Width := Label7.Width + $14{20};
      end;//3
      Label1.Visible :=True;
      Label2.Visible :=True;
      Label3.Visible :=True;
      Label4.Visible :=True;
      Label5.Visible :=True;
      Label6.Visible :=True;
      Label7.Visible :=True;
      Height := Label7.Top + Label7.Height + 5;
    end;//2
  end;//end case of
end;//0


//004CB1FC
procedure TFormHint.FormPaint(Sender:TObject);
begin//0
  //004CB1FC
  Canvas.Rectangle(0, 0, Width, Height);
  Canvas.MoveTo(0, 0);
  Canvas.LineTo(0, Height);
end;//0


//004CB238
procedure TFormHint.Timer1Timer(Sender:TObject);
begin
 close;
end;

//004CB240
procedure TFormHint.FormHide(Sender:TObject);
begin//0
  //004CB240
  Timer1.Enabled := False;
end;//0


end.