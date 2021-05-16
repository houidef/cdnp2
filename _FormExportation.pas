{***********************************************************
* Version Original V0.03 build 1                           *
* Decompiled by Houidef AEK v 3:28 lundi, août 27, 2018    *
* The disassembly process : 100%                            *
************************************************************}
unit _FormExportation;

interface

uses
Forms, Windows,  SysUtils, Classes, ExtCtrls, StdCtrls, FileCtrl, Buttons, uFichierCdn,dialogs;

type
  TFormExportation = class(TForm)
  published
    Panel2:TPanel;//f2D0
    Bevel2:TBevel;//f2D4
    Image1:TImage;//f2D8
    ListBoxPetiteDescription:TListBox;//f2DC
    FileListBox1:TFileListBox;//f2E0
    Label1:TLabel;//f2E4
    ListBoxNomsFichiers:TListBox;//f2E8
    SpeedButton2:TSpeedButton;//f2EC
    SpeedButton1:TSpeedButton;//f2F0
    SpeedButton3:TSpeedButton;//f2F4
    ListBoxNumerosFormats:TListBox;//f2F8
    procedure SpeedButton2Click(Sender:TObject);//005165F0
    procedure FormKeyPress(Sender:TObject; var Key:Char);//005165FC
    procedure BitBtnInformationsClick(Sender:TObject);//00516258
    procedure ListBoxPetiteDescriptionClick(Sender:TObject);//0051600C
    procedure BitBtnExporterClick(Sender:TObject);//00516048
  public
    f2FC:TFichierCdn;//f2FC
    constructor Create(Owner:TComponent; logo:Timage;FichierCdn:TFichierCdn);//00515D00
  end;
  var 
    FormExportation:TFormExportation;
implementation

{$R *.DFM}

//00515D00
constructor TFormExportation.Create(Owner:TComponent; logo:Timage;FichierCdn:TFichierCdn);
var
  renvoieIdentification: function: shortstring; stdcall;
  renvoieNombreFormatsProposes: function: byte;stdcall;
  renvoiePetiteDescription: procedure(I:integer;Description:PChar);stdcall;
  
  Hdle:  THandle;
  I,J:integer;
  x:Pshortstring;
  Description:Pchar;
  myString:string;
begin//0
  //00515D00
    //00515D51
    inherited Create(Owner);
    Image1.Picture := logo.Picture;;
    f2FC := FichierCdn;
    FileListBox1.Directory := ExtractFilePath(ParamStr(0)) + 'export';
      for I := 1 to FileListBox1.Items.Count do//00515DD2
      begin//3
        //00515DDC
		//showmessage(PChar(FileListBox1.Items[I - 1]));
		Hdle := LoadLibraryA(PChar(FileListBox1.Items[I - 1]));
        if (Hdle <> 0) then 
        if (GetProcAddress(Hdle, 'renvoieIdentification') <> nil) then
        begin//4
          //00515E2E
          renvoieIdentification := GetProcAddress(Hdle, 'renvoieIdentification');
          if ( renvoieIdentification = 'Carnet de notes') then
          begin//5
            //00515E5E
            renvoieNombreFormatsProposes := GetProcAddress(Hdle, 'renvoieNombreFormatsProposes');
            
              for J := 1 to renvoieNombreFormatsProposes do//00515E7A
              begin//7
                //00515E84
                renvoiePetiteDescription := GetProcAddress(Hdle, 'renvoiePetiteDescription');
				
				myString := '                               ';
				//setlength(myString,255);
				Description := Addr(myString[1]);
				renvoiePetiteDescription(J,pchar(myString));
				//showmessage(format('Description =%s',[myString])); 
                ListBoxPetiteDescription.Items.Add(myString);
                ListBoxNomsFichiers.Items.Add(FileListBox1.Items[I - 1]);
                ListBoxNumerosFormats.Items.Add(IntToStr(J));
              end;//7 
            
          end;//5
        end;//4
        FreeLibrary(Hdle);
    end;//2
end;//0

//0051600C
procedure TFormExportation.ListBoxPetiteDescriptionClick(Sender:TObject);
begin//0
  //0051600C
  SpeedButton1.Enabled := (ListBoxPetiteDescription.ItemIndex + 1 <> 0);
  SpeedButton3.Enabled := (ListBoxPetiteDescription.ItemIndex + 1 <> 0);
end;//0


//00516048
procedure TFormExportation.BitBtnExporterClick(Sender:TObject);
var
    Hdle:THandle;
	x:integer;
	exporter: function(I:integer;Fcdn:TFichierCdn):byte;//stdcall;
begin//0
  //00516048
    //0051606A

    Hdle :=  LoadLibraryA(PChar(ExtractFilePath(ParamStr(0)) + 'export' + '\' +  ListBoxNomsFichiers.Items[ListBoxPetiteDescription.ItemIndex]));

			if(Hdle <> 0) then
			  if (GetProcAddress(Hdle, 'exporter') <> nil) then
				begin
					exporter := GetProcAddress(Hdle, 'exporter');
					x:= StrToInt(ListBoxNumerosFormats.Items[ListBoxPetiteDescription.ItemIndex]);
					

					if(Exporter(x,f2FC)=0)then 
							Application.MessageBox('Erreur dans l''exportation.','Carnet de Notes version Personnelle',$10);
				end
				else
					  Application.MessageBox('Impossible d''exporter. La dll est défectueuse !','Carnet de Notes version Personnelle',$10);
                
              FreeLibrary(Hdle);


end;

//00516258
procedure TFormExportation.BitBtnInformationsClick(Sender:TObject);
var
  text:string;
  Hdle:THandle;
  Description,Copyright,Version:Pchar;
  I:integer;
  renvoieGrandeDescription: procedure(I:integer;text:PChar);stdcall;
  renvoieCopyright: procedure(text:PChar);stdcall;
  renvoieVersion: procedure(text:PChar);stdcall;
begin//0
  //00516258
    //005162A9
    Description := '                                        ';
	Copyright := '                                        ';
	Version := '                                        ';;
    text := ExtractFilePath(ParamStr(0)) + 'export' + '\' + ListBoxNomsFichiers.Items[ListBoxPetiteDescription.ItemIndex];
	Hdle := LoadLibraryA(PChar(text));
    if (Hdle <> 0) then
    begin//2
      //00516341
      text := ListBoxNumerosFormats.Items[ListBoxPetiteDescription.ItemIndex];
      I := StrToInt(text);
      if (GetProcAddress(Hdle, 'renvoieGrandeDescription') <> Nil) then
      begin//3
        //00516381
        renvoieGrandeDescription := GetProcAddress(Hdle, 'renvoieGrandeDescription');
        renvoieGrandeDescription(I,pchar(Description));
		
      end;//3
      if (GetProcAddress(Hdle, 'renvoieCopyright') <> Nil) then
      begin//3
        //005163B3
        renvoieCopyright := GetProcAddress(Hdle, 'renvoieCopyright');
        renvoieCopyright(pchar(Copyright));
		
      end;//3
      if (GetProcAddress(Hdle, 'renvoieVersion') <> Nil) then
      begin//3
        //005163D7
        renvoieVersion := GetProcAddress(Hdle, 'renvoieVersion');
        renvoieVersion(pchar(Version));
      end;//3
      text := 'Librairie d''exportation pour Carnet de Notes version Personnelle'+#13+#10+#13+#10+#13+#10+'Description : ' + Description + #13 + #10 + #13 + #10 + 'Copyright : ' + Copyright + #13 + #10 + #13 + #10 + 'Version : ' + Version;

      Application.MessageBox(PChar(text),'Carnet de Notes version Personnelle' , $40{64});
      //push EBX
      FreeLibrary(Hdle);
    end;//2

    //005164A5

end;//0

//005165F0
procedure TFormExportation.SpeedButton2Click(Sender:TObject);
begin
 ModalResult:=2;
end;

//005165FC
procedure TFormExportation.FormKeyPress(Sender:TObject; var Key:Char);
begin
  if (Key = char($1B)) then 
  ModalResult := 2;
end;

end.