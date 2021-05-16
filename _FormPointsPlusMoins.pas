{***********************************************************
* Version Original V0.03 build 1                           *
* Decompiled by Houidef AEK v 12:20 mercredi, août 29, 2018*
* The disassembly process : 100%                           *
************************************************************}
unit _FormPointsPlusMoins;

interface

uses
Forms, Windows,  SysUtils, Classes, ExtCtrls, ComCtrls, Buttons, StdCtrls, Controls, UFichierCdn;

type
  TFormPointsPlusMoins = class(TForm)
  published
    Panel2:TPanel;//f2D0
    Bevel2:TBevel;//f2D4
    Image1:TImage;//f2D8
    Panel1:TPanel;//f2DC
    TabControlPeriodes:TTabControl;//f2E0
    SpeedButton1:TSpeedButton;//f2E4
    ListBoxEleves:TListBox;//f2E8
    Edit1:TEdit;//f2EC
    Label1:TLabel;//f2F0
    procedure Edit1KeyPress(Sender:TObject; var Key:Char);//00517184
    procedure Edit1Exit(Sender:TObject);//00516F70
    procedure FormShow(Sender:TObject);//005176A8
    procedure TabControlPeriodesChanging(Sender: TObject;var AllowChange: Boolean);//0051747C
    procedure ListBoxElevesDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);//00516C60
    procedure SpeedButton1Click(Sender:TObject);//00516A38
    procedure TabControlPeriodesChange(Sender:TObject);//00516EA0
    procedure ListBoxElevesClick(Sender:TObject);//00516DCC
  public
    f2F4:TFichierCdn;//f2F4
    constructor Create(owner:TComponent; F:TFichierCdn; Logo:Timage);//00516938
  end;
  var
   FormPointsPlusMoins:TFormPointsPlusMoins;
implementation

{$R *.DFM}

//00516938
constructor TFormPointsPlusMoins.Create(owner:TComponent; F:TFichierCdn; Logo:Timage);
var
  Buf:String;
begin//0
  //00516938
    //00516967

    inherited Create(Owner);
    Image1.Picture := logo.Picture;
    f2F4 := F;
    TabControlPeriodes.Tabs := F.sub_004BEA4C;
    ListBoxEleves.Items := f2F4.EleveLists;
    ListBoxEleves.ItemIndex := 0;
    f2F4.sub_004C2B38(1, 1, Buf);
    Edit1.Text := Buf;
end;//0

//00516A38
procedure TFormPointsPlusMoins.SpeedButton1Click(Sender:TObject);
var
 lvar_10 : Real;
 
begin//0
  //00516A38
    //00516A6C
    if (Trim(Edit1.Text) <> '') then
    begin//2
      //00516A92
      try
        //00516AA0
        lvar_10 := StrToFloat(Edit1.Text);
        f2F4.sub_004C3678( TabControlPeriodes.TabIndex + 1, ListBoxEleves.ItemIndex + 1,Edit1.Text);
        Close;
      except//3
        //00516B5E
        Application.MessageBox(PChar(Edit1.Text + ' n''est pas un nombre correct.'),'Carnet de Notes version Personnelle' , $10{16});
        Edit1.SetFocus;
        Edit1.SelectAll;
        Exit;
      end;//3
    end;//2
    Close;
    //00516BDD
end;//0


//00516C60
procedure TFormPointsPlusMoins.ListBoxElevesDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
begin
    if (Index mod 2  <> 1) then
    begin//2
      //0055303B
      ListBoxEleves.Canvas.Brush.Color := $FFFFFF;
      ListBoxEleves.Canvas.FillRect(Rect);
    end//2
    else
    begin//2
      //0055306A
      ListBoxEleves.Canvas.Brush.Color := $F4F3EE;
      ListBoxEleves.Canvas.FillRect(Rect);
    end;//2

    ListBoxEleves.Canvas.TextOut(Rect.Left + 5, Rect.Top + 2, ListBoxEleves.Items[Index]);
    if ( odSelected in State) then
    begin//2
      //005530E6
      ListBoxEleves.Canvas.Brush.Color := $F8D1C5;
      ListBoxEleves.Canvas.FillRect(Rect);
      ListBoxEleves.Canvas.Font.Color := $FF0000;
      ListBoxEleves.Canvas.TextOut(Rect.Left + 5, Rect.Top + 2, ListBoxEleves.Items[Index]);
    end;//2
end;

//00516DCC
procedure TFormPointsPlusMoins.ListBoxElevesClick(Sender:TObject);
var
  buf:string;
begin//0
  //00516DCC
    //00516DEC
    if (ListBoxEleves.ItemIndex + 1 <> 0) then
    begin//2
      //00516DFC
      f2F4.sub_004C2B38( TabControlPeriodes.TabIndex + 1,  ListBoxEleves.ItemIndex + 1, buf);
      Edit1.Text := buf;
      Edit1.SetFocus;
    end;//2
    //00516E88

end;//0

//00516EA0
procedure TFormPointsPlusMoins.TabControlPeriodesChange(Sender:Tobject);
var
  buf : string;
  k:integer;
begin//0
  //00516EA0
    //00516EC1
	k:=ListBoxEleves.ItemIndex;
    if (k <> -1) then
    begin//2
      //00516ED5
      f2F4.sub_004C2B38(TabControlPeriodes.TabIndex + 1, k + 1, buf);
      Edit1.Text := buf;
    end;//2
    ListBoxEleves.ItemIndex := k;

    //00516F56

end;//0


//00516F70
procedure TFormPointsPlusMoins.Edit1Exit(Sender:TObject);
begin//0
  //00516F70
    //00516FA4
    if (Trim(Edit1.Text) <> '') then 
	begin
		try
		  //00516FD8
		  f2F4.sub_004C3678(TabControlPeriodes.TabIndex + 1, ListBoxEleves.ItemIndex + 1,Edit1.Text);
		except//2
		  //0051708E
		  Application.MessageBox(PChar(Edit1.Text + ' n''est pas un nombre correct.'),'Carnet de Notes version Personnelle' , $10{16});
		  Edit1.SetFocus;
		  Edit1.SelectAll;
		end;//2
	end;
    //00517103
end;//0


//00517184
procedure TFormPointsPlusMoins.Edit1KeyPress(Sender:TObject; var Key:Char);
var
 buf:string;
begin//0
  //00517184
    //005171BE
    if (Key = '.') then //005171C3
      Key := ',';

    if (Key = #13) then 
    if (Trim(Edit1.Text) <> '') then 
	begin
		try
		  //00517203
		  f2F4.sub_004C3678(TabControlPeriodes.TabIndex + 1, ListBoxEleves.ItemIndex + 1,Edit1.Text);
		  ListBoxEleves.ItemIndex := ListBoxEleves.ItemIndex + 1;
		  f2F4.sub_004C2B38(TabControlPeriodes.TabIndex + 1, ListBoxEleves.ItemIndex + 1, buf);
		  Edit1.Text := buf;
		  Edit1.SetFocus;
		except//2
		  //00517374
		  Application.MessageBox(PChar(Edit1.Text + ' n''est pas un nombre correct.'), 'Carnet de Notes version Personnelle', $10{16});
		  Edit1.SetFocus;
		  Edit1.SelectAll;
		end;//2
	end;
    //005173E9
end;//0

//0051747C
procedure TFormPointsPlusMoins.TabControlPeriodesChanging(Sender: TObject;var AllowChange: Boolean);
begin//0
  //0051747C
    //005174B3
    if (Trim(Edit1.Text) <> '') then
    begin//2
      //005174D9
      try
        //005174E7
        f2F4.sub_004C3678(TabControlPeriodes.TabIndex + 1, ListBoxEleves.ItemIndex + 1,Edit1.Text);
        AllowChange := True;
      except//3
        //005175A3
        Application.MessageBox(PChar(Edit1.Text + ' n''est pas un nombre correct.'),'Carnet de Notes version Personnelle' , $10{16});
        Edit1.SetFocus;
        Edit1.SelectAll;
        AllowChange := False;
        Exit;
      end;//3
    end;//2
    AllowChange := True;
    //00517626
end;//0

//005176A8
procedure TFormPointsPlusMoins.FormShow(Sender:TObject);
begin//0
  //005176A8
  Edit1.SetFocus;
end;//0


end.