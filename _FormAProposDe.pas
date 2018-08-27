{***********************************************************
* Version Original V0.03 build 1                            *
* Decompiled by HOUIDEF AEK v 18:48 mercredi 28 février 2018*
* The disassembly process : 100%                            *
************************************************************}
unit _FormAProposDe;

interface

uses
Forms, Windows,  SysUtils, Classes, ExtCtrls, StdCtrls, Buttons, RXCtrls,UEnregistrement,ShellAPI;

type
  TFormAProposDe = class(TForm)
  published
    Bevel3:TBevel;//f2D0
    LabelVersionEnregistre:TLabel;//f2D4
    Bevel2:TBevel;//f2D8
    Panel2:TPanel;//f2DC
    Bevel1:TBevel;//f2E0
    Image2:TImage;//f2E4
    SpeedButton1:TSpeedButton;//f2E8
    ListBox1:TListBox;//f2EC
    Label2:TLabel;//f2F0
    LabelAdresseInternet:TLabel;//f2F4
    Image3:TImage;//f2F8
    LabelEmail:TLabel;//f2FC
    Bevel4:TBevel;//f300
    SecretPanelCdn:TSecretPanel;//f304
    Image4:TImage;//f308
    ImageUtilisateurEnregistre:TImage;//f30C
    procedure LabelAdresseInternetClick(Sender:TObject);//005507D4
    procedure LabelEmailClick(Sender:TObject);//00550818
    procedure SpeedButton1Click(Sender:TObject);//005507A8
    procedure FormKeyPress(Sender:TObject; var Key:Char);//005507B4
    constructor Create(Owner:TComponent;Logo:Timage);//00550578
  end;
  var 
   FormAProposDe:TFormAProposDe;
implementation

{$R *.DFM}

//00550578
constructor TFormAProposDe.Create(Owner:TComponent; Logo:Timage);
var
  NomUser : String;
  NumUser : integer;
begin//0
  //00550578
    inherited Create(Owner);
    Image2.Picture := Logo.Picture;
    LabelAdresseInternet.Caption := 'http://www.carnetdenotes.com';
    LabelEmail.Caption := 'aboisrame@carnetdenotes.com';
    if (sub_00498A40) then//005505EB
      LabelVersionEnregistre.Caption := 'Version enregistrée'
    else//005505FD
      LabelVersionEnregistre.Caption := 'Version non enregistrée';
    
      for NumUser := 1 to sub_00498B20 do //00550618
      begin//0055061D
        sub_004986C0(NumUser, NomUser);
        ListBox1.Items.Add(NomUser);
      end;//3
    
    SecretPanelCdn.Lines.Add('Carnet de Notes version Personnelle 2.9a');
    SecretPanelCdn.Lines.Add('(C) 1997-2008 Alexandre Boisramé');
    SecretPanelCdn.Lines.Add('');
    SecretPanelCdn.Active := True;
end;//0


//005507A8
procedure TFormAProposDe.SpeedButton1Click(Sender:TObject);
begin
   ModalResult := 1;
end;

//005507B4
procedure TFormAProposDe.FormKeyPress(Sender:TObject; var Key:Char);
begin//0
  //005507B4
  if (Key = char($0D)) then//005507B9
     ModalResult := 1
  else
  if (Key = char($1B)) then 
    ModalResult := 2;
end;//0


//005507D4
procedure TFormAProposDe.LabelAdresseInternetClick(Sender:TObject);
begin//0
  //005507D4
  ShellExecuteA(GetDesktopWindow, 'open', 'http://www.carnetdenotes.com', '', '', 1);
end;//0


//00550818
procedure TFormAProposDe.LabelEmailClick(Sender:TObject);
begin//0
  //00550818
  ShellExecuteA(GetDesktopWindow, 'open', 'mailto:aboisrame@carnetdenotes.com?subject=Logiciel Carnet de Notes version Personnelle', '', '', 1);
end;//0


end.