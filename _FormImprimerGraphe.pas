//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _FormImprimerGraphe;

interface

uses
Forms, Windows,  SysUtils, Classes, ExtCtrls, Buttons, Dialogs, Clipbrd, TeeProcs, Chart;

type
  TFormImprimerGraphe = class(TForm)
  published
    Panel2:TPanel;//f2D0
    Bevel2:TBevel;//f2D4
    Image1:TImage;//f2D8
    SpeedButton4:TSpeedButton;//f2DC
    SpeedButton1:TSpeedButton;//f2E0
    SpeedButton5:TSpeedButton;//f2E4
    PrinterSetupDialog1:TPrinterSetupDialog;//f2E8
    Image2:TImage;//f2EC
    procedure SpeedButton4Click(Sender:TObject);//0053391C
    procedure FormKeyPress(Sender:TObject; var Key:Char);//00533928
    procedure SpeedButton1Click(Sender:TObject);//00533904
    procedure SpeedButton5Click(Sender:TObject);//00533910
  public
    f2F0:  TCustomTeePanel;//f2F0
    constructor Create(Owner:TComponent;Chart:TChart; logo:Timage; c:string);//005337F0
  end;
  var
    FormImprimerGraphe:TFormImprimerGraphe;
implementation

{$R *.DFM}

//005337F0
constructor TFormImprimerGraphe.Create(Owner:TComponent;Chart:TChart; logo:Timage; c:string);
begin//0
  //005337F0

    //00533828
    inherited Create(Owner);
    Caption := Caption + ' ' + c;
    
    f2F0 := Chart;
    Image1.Picture := logo.Picture;
    Chart.CopyToClipboardBitmap;
    Image2.Picture.Bitmap.LoadFromClipboardFormat(2, Clipboard.GetAsHandle(2), 0);
  
end;//0
//00533904
procedure TFormImprimerGraphe.SpeedButton1Click(Sender:TObject);
begin
 ModalResult:=1;
end;

//00533910
procedure TFormImprimerGraphe.SpeedButton5Click(Sender:TObject);
begin//0
  //00533910
  f2F0.Print;
end;//0


//0053391C
procedure TFormImprimerGraphe.SpeedButton4Click(Sender:TObject);
begin//0
  //0053391C
  PrinterSetupDialog1.Execute;
end;//0


//00533928
procedure TFormImprimerGraphe.FormKeyPress(Sender:TObject; var Key:Char);
begin//0
  //00533928
  if (Key = char($1B)) then 
   ModalResult := 2;
end;//0



end.