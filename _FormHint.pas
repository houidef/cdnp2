{***************************************
* Version Original V0.01
* Decompiled by HOUIDEF AEK v.05.02.2018
***************************************}
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
    procedure Timer1Timer;//004CB238
    procedure FormHide(Sender:TObject);//004CB240
    procedure FormPaint(Sender:TObject);//004CB1FC
    procedure FormClick(Sender:TObject);//004CABE0
    procedure FormShow(Sender:TObject);//004CABE8
  public
    f2F0:dword;//f2F0
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
  case f2F0 of
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
    (*4:
    begin//2
      //004CAD6C
      EAX := Label1;
      EDX := Label1.Width;
      ECX := EDX;//Label1.Width
      ECX := ECX + Label1.Left;//Label1.Width + Label1.Left
      if (ECX{Label1.Width + Label1.Left} > Width) then
      begin//3
        //004CAD86
        EDX := EDX + $14{20};//EDX
        EAX := EBX;//Self
        SetWidth{Width}(EDX);
      end;//3
      EAX := Label2;
      EDX := Label2.Width;
      ECX := EDX;//Label2.Width
      ECX := ECX + Label2.Left;//Label2.Width + Label2.Left
      if (ECX{Label2.Width + Label2.Left} > Width) then
      begin//3
        //004CADB1
        EDX := EDX + $14{20};//EDX
        EAX := EBX;//Self
        SetWidth{Width}(EDX);
      end;//3
      EAX := Label3;
      EDX := Label3.Width;
      ECX := EDX;//Label3.Width
      ECX := ECX + Label3.Left;//Label3.Width + Label3.Left
      if (ECX{Label3.Width + Label3.Left} > Width) then
      begin//3
        //004CADDC
        EDX := EDX + $14{20};//EDX
        EAX := EBX;//Self
        SetWidth{Width}(EDX);
      end;//3
      EAX := Label4;
      EDX := Label4.Width;
      ECX := EDX;//Label4.Width
      ECX := ECX + Label4.Left;//Label4.Width + Label4.Left
      if (ECX{Label4.Width + Label4.Left} > Width) then
      begin//3
        //004CAE07
        EDX := EDX + $14{20};//EDX
        EAX := EBX;//Self
        SetWidth{Width}(EDX);
      end;//3
      EDX := 1;
      EAX := Label1;
      Label1.Visible :=True;
      EDX := 1;
      EAX := Label2;
      Label2.Visible :=True;
      EDX := 1;
      EAX := Label3;
      Label3.Visible :=True;
      EDX := 1;
      EAX := Label4;
      Label4.Visible :=True;
      EDX := 0;
      EAX := Label5;
      Label5.Visible :=False;
      EDX := 0;
      EAX := Label6;
      Label6.Visible :=False;
      EDX := 0;
      EAX := Label7;
      Label7.Visible :=False;
      EAX := Label4;
      EDX := Label4.Top;
      EDX := EDX + Label4.Height;//Label4.Top + Label4.Height
      EDX := EDX + 5;//EDX
      EAX := EBX;//Self
      SetHeight{Height}(EDX);
    end;//2*)
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
    (*7:
    begin//2
      //004CB01A
      EAX := Label1;
      EDX := Label1.Width;
      EDX := EDX + Label1.Left;//Label1.Width + Label1.Left
      if (EDX{Label1.Width + Label1.Left} > Width) then
      begin//3
        //004CB032
        EAX := Label1;
        EDX := Label1.Width;
        EDX := EDX + $14{20};//EDX
        EAX := EBX;//Self
        SetWidth{Width}(EDX);
      end;//3
      EAX := Label2;
      EDX := Label2.Width;
      EDX := EDX + Label2.Left;//Label2.Width + Label2.Left
      if (EDX{Label2.Width + Label2.Left} > Width) then
      begin//3
        //004CB064
        EAX := Label2;
        EDX := Label2.Width;
        EDX := EDX + $14{20};//EDX
        EAX := EBX;//Self
        SetWidth{Width}(EDX);
      end;//3
      EAX := Label3;
      EDX := Label3.Width;
      EDX := EDX + Label3.Left;//Label3.Width + Label3.Left
      if (EDX{Label3.Width + Label3.Left} > Width) then
      begin//3
        //004CB096
        EAX := Label3;
        EDX := Label3.Width;
        EDX := EDX + $14{20};//EDX
        EAX := EBX;//Self
        SetWidth{Width}(EDX);
      end;//3
      EAX := Label4;
      EDX := Label4.Width;
      EDX := EDX + Label4.Left;//Label4.Width + Label4.Left
      if (EDX{Label4.Width + Label4.Left} > Width) then
      begin//3
        //004CB0C8
        EAX := Label4;
        EDX := Label4.Width;
        EDX := EDX + $14{20};//EDX
        EAX := EBX;//Self
        SetWidth{Width}(EDX);
      end;//3
      EAX := Label5;
      EDX := Label5.Width;
      EDX := EDX + Label5.Left;//Label5.Width + Label5.Left
      if (EDX{Label5.Width + Label5.Left} > Width) then
      begin//3
        //004CB0FA
        EAX := Label5;
        EDX := Label5.Width;
        EDX := EDX + $14{20};//EDX
        EAX := EBX;//Self
        SetWidth{Width}(EDX);
      end;//3
      EAX := Label6;
      EDX := Label6.Width;
      EDX := EDX + Label6.Left;//Label6.Width + Label6.Left
      if (EDX{Label6.Width + Label6.Left} > Width) then
      begin//3
        //004CB12C
        EAX := Label6;
        EDX := Label6.Width;
        EDX := EDX + $14{20};//EDX
        EAX := EBX;//Self
        SetWidth{Width}(EDX);
      end;//3
      EAX := Label7;
      EDX := Label7.Width;
      EDX := EDX + Label7.Left;//Label7.Width + Label7.Left
      if (EDX{Label7.Width + Label7.Left} > Width) then
      begin//3
        //004CB15E
        EAX := Label7;
        EDX := Label7.Width;
        EDX := EDX + $14{20};//EDX
        EAX := EBX;//Self
        SetWidth{Width}(EDX);
      end;//3
      EDX := 1;
      EAX := Label1;
      Label1.Visible :=True;
      EDX := 1;
      EAX := Label2;
      Label2.Visible :=True;
      EDX := 1;
      EAX := Label3;
      Label3.Visible :=True;
      EDX := 1;
      EAX := Label4;
      Label4.Visible :=True;
      EDX := 1;
      EAX := Label5;
      Label5.Visible :=True;
      EDX := 1;
      EAX := Label6;
      Label6.Visible :=True;
      EDX := 1;
      EAX := Label7;
      Label7.Visible :=True;
 
      EDX := Label7.Top + Label7.Height;//Label7.Top + Label7.Height
      EDX := EDX + 5;//EDX
      EAX := EBX;//Self
      Height := EDX;
    end;//2*)
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
procedure TFormHint.Timer1Timer;
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