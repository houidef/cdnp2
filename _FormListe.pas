//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _FormListe;

interface

uses
Forms, Windows,  SysUtils, Classes, StdCtrls, ExtCtrls, Buttons,Graphics, Controls,UFichierCdn,dialogs;

type
  TFormListeEleves = class(TForm)
  published
    ListeEleves:TListBox;//f2D0
    Panel2:TPanel;//f2D4
    Bevel2:TBevel;//f2D8
    Image1:TImage;//f2DC
    Label1:TLabel;//f2E0
    SpeedButton2:TSpeedButton;//f2E4
    SpeedButton1:TSpeedButton;//f2E8
	FFCdn : TFichierCdn; //f2EC
    procedure SpeedButton1Click(Sender:TObject);//00519234
    procedure FormKeyPress(Sender:TObject; var Key:Char);//00519240
    procedure SpeedButton2Click(Sender:TObject);//00519228
    procedure ListeElevesDrawItem(Control: TWinControl; Index: Integer;Rect: TRect; State: TOwnerDrawState);//00518FD8
    procedure ListeElevesDblClick(Sender:TObject);//00519144
    constructor Create(Owner:TComponent; logo:Timage; FichierCdn:TFichierCdn; d:string);//00518F14
    procedure sub_00519150;//00519150
	  
  end;
 var
   FormListeEleves : TFormListeEleves; 

implementation

{$R *.DFM}

//00518F14
constructor TFormListeEleves.Create(Owner:TComponent; logo:Timage; FichierCdn:TFichierCdn; d:string);
begin//0
  //00518F14
    //00518F42
    inherited create(Owner);
    Image1.Picture := Logo.picture;
    Caption := d;
    FFCdn := FichierCdn;
    ListeEleves.Items := FichierCdn.GetEleveList;
    ListeEleves.ItemIndex := 0;
    sub_00519150;
end;//0


//00518FD8
procedure TFormListeEleves.ListeElevesDrawItem(Control:TWinControl; Index:Integer; Rect:TRect; State:TOwnerDrawState);
begin//0
  //00518FD8
    //0051900B

    if (Index mod 2 <> 1) then
    begin//0051901D
      ListeEleves.Canvas.Brush.Color := $FFFFFF;
      ListeEleves.Canvas.FillRect(Rect);
    end//2
    else
    begin//00519042
      ListeEleves.Canvas.Brush.Color := $F4F3EE;
      ListeEleves.Canvas.FillRect(Rect);
    end;//2
    ListeEleves.Canvas.TextOut(Rect.Left + 5, Rect.Top + 2, ListeEleves.Items[Index]);
    if (odSelected in State) then
    begin//2//005190AB
      ListeEleves.Canvas.Brush.Color := $F8D1C5;
      ListeEleves.Canvas.FillRect(Rect);
      ListeEleves.Canvas.Font.Color := $FF0000;
      ListeEleves.Canvas.TextOut(Rect.Left + 5, Rect.Top + 2,ListeEleves.Items[Index] );
    end;//2
end;//0

//00519144
procedure TFormListeEleves.ListeElevesDblClick(Sender:TObject);
begin
  ModalResult:= 1;
end;

//00519150
procedure TFormListeEleves.sub_00519150;
begin//0
  //00519150
    //00519167
    case FFCdn.NbreEleves of
      0:
      begin//00519186
        Label1.Caption := 'aucun élève';
        Exit;
      end;//3
      1:
      begin//3
        //00519198
        Label1.Caption := '1 élève';
        Exit;
      end;//3
    end;//2
    Label1.Caption := IntToStr(FFCdn.NbreEleves) + ' élèves';
end;//0


//00519228
procedure TFormListeEleves.SpeedButton2Click(Sender:TObject);
begin
  ModalResult :=1;
end;

//00519234
procedure TFormListeEleves.SpeedButton1Click(Sender:TObject);
begin
  ModalResult :=2;
end;

//00519240
procedure TFormListeEleves.FormKeyPress(Sender:TObject; var Key:Char);
begin//0
  //00519240
  if (Key = char($0D)) then//00519245
    ModalResult := 1
   else 
  if (Key = char($1B)) then 
      ModalResult := 2;
end;//0


end.