{***************************************
* Version Original V0.01
* Decompiled by HOUIDEF AEK v.05.02.2018
***************************************}
unit _FormNouvelleVersionDisponible;

interface

uses
Forms, Windows,  SysUtils, Classes, ExtCtrls, StdCtrls, Buttons;

type
  TFormNouvelleVersionDisponible = class(TForm)
  published
    Panel1:TPanel;//f2D0
    Comments:TLabel;//f2D4
    Memo1:TMemo;//f2D8
    siteWeb:TLabel;//f2DC
    CheckBox1:TCheckBox;//f2E0
    SpeedButton1:TSpeedButton;//f2E4
    Image1:TImage;//f2E8
    procedure CheckBox1Click(Sender:TObject);//0060AE64
    procedure SpeedButton1Click(Sender:TObject);//0060AE80
    procedure FormShow(Sender:TObject);//0060AD88
    procedure siteWebClick(Sender:TObject);//0060AE20
    constructor Create(owner:TComponent; a:String);//0060ACEC
  end;
  var 
    FormNouvelleVersionDisponible:TFormNouvelleVersionDisponible;
implementation

{$R *.DFM}

//0060ACEC
constructor TFormNouvelleVersionDisponible.Create(owner:TComponent; a:String);
begin//0
  //0060ACEC
    //0060AD1A

    inherited Create(Owner);

    Memo1.Lines.Clear;
    Memo1.Lines.Add(a);
end;//0

//0060AD88
procedure TFormNouvelleVersionDisponible.FormShow(Sender:TObject);
begin
{*
 0060AD88    push        ebx
 0060AD89    mov         ebx,eax
 0060AD8B    call        004BB6C8
 0060AD90    mov         edx,eax
 0060AD92    xor         dl,1
 0060AD95    mov         eax,dword ptr [ebx+2E0];TFormNouvelleVersionDisponible.CheckBox1:TCheckBox
 0060AD9B    mov         ecx,dword ptr [eax]
 0060AD9D    call        dword ptr [ecx+0B8];TCustomCheckBox.SetChecked
 0060ADA3    mov         edx,60ADCC;'Carnet de Notes version Personnelle 2.9a'
 0060ADA8    mov         eax,ebx
 0060ADAA    call        TControl.SetText
 0060ADAF    mov         edx,60AE00;'http://www.carnetdenotes.com'
 0060ADB4    mov         eax,dword ptr [ebx+2DC];TFormNouvelleVersionDisponible.siteWeb:TLabel
 0060ADBA    call        TControl.SetText
 0060ADBF    pop         ebx
 0060ADC0    ret
*}
end;

//0060AE20
procedure TFormNouvelleVersionDisponible.siteWebClick(Sender:TObject);
begin
{*
 0060AE20    push        1
 0060AE22    push        0
 0060AE24    push        0
 0060AE26    push        60AE3C
 0060AE2B    push        60AE5C
 0060AE30    call        user32.GetDesktopWindow
 0060AE35    push        eax
 0060AE36    call        shell32.ShellExecuteA
 0060AE3B    ret
*}
end;

//0060AE64
procedure TFormNouvelleVersionDisponible.CheckBox1Click(Sender:TObject);
begin
{*
 0060AE64    push        ebx
 0060AE65    mov         ebx,eax
 0060AE67    mov         eax,dword ptr [ebx+2E0];TFormNouvelleVersionDisponible.CheckBox1:TCheckBox
 0060AE6D    mov         edx,dword ptr [eax]
 0060AE6F    call        dword ptr [edx+0B4];TCustomCheckBox.GetChecked
 0060AE75    xor         al,1
 0060AE77    call        004BB694
 0060AE7C    pop         ebx
 0060AE7D    ret
*}
end;

//0060AE80
procedure TFormNouvelleVersionDisponible.SpeedButton1Click(Sender:TObject);
begin
{*
 0060AE80    call        TCustomForm.Close
 0060AE85    ret
*}
end;

end.