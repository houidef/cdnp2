{***********************************************************
* Version Original V0.03 build 1                           *
* Decompiled by HOUIDEF AEK v 11:54 mercredi, Mars 22, 2022*
* The disassembly process : 100%                            *
************************************************************}
unit _UHTTP;

interface

uses
  Forms, SysUtils, Classes, Windows, Dialogs, IdHTTP, _FormPatientez,Controls;
 type 
   TEXEVersionData = record
    CompanyName,
    FileDescription,
    FileVersion,
    InternalName,
    LegalCopyright,
    LegalTrademarks,
    OriginalFileName,
    ProductName,
    ProductVersion,
    Comments,
    PrivateBuild,
    SpecialBuild: string;
  end;
   TAnyEnum = (aeVal1, aeVal2, aeVal3);
   TAnyMessages= array [1..12] of String;
   const
   FDesciption : TAnyMessages = ('CompanyName', 'FileDescription', 'FileVersion', 'InternalName', 'LegalCopyright', 'LegalTrademarks','OriginalFileName','ProductName','ProductVersion','Comments','PrivateBuild','SpecialBuild');

    function GetFileVersion(FileName:String):TStringList;//004B6158
    function VerificationMiseAJour__(AOwner: TComponent; URL:String; var versioninfo1:string; var versioninfo2:string):boolean;//004B6350
    function VerificationMiseAJour(AOwner: TComponent; URL:String; versioninfo:string; URL2:string; Host:string; Username:string; Password:string; Port:string):boolean;//004B63B0

implementation

//004B6158
function GetFileVersion(FileName:String):TStringList;
var
 InfoSize, Wnd,VerSize: DWORD;
 VerBuf: Pointer;
 InfoData,LangPtr : pointer;
 InfoType : string;
 I:integer;
 FI: TEXEVersionData;
 S:string;
begin//0
  //004B6158
  try
    //004B617F
	result := TStringList.create;
    InfoSize := GetFileVersionInfoSize(PChar(FileName), Wnd);
    if (InfoSize > 0) then 
	begin
		GetMem(VerBuf,InfoSize);
		try
		  //004B61C1
		  if (GetFileVersionInfo(PChar(FileName), Wnd, InfoSize, VerBuf)) then
		  begin//3
			//004B61E4
			//EBX := 'FileDescription';
			for I := 1 to 8 do
			begin//4
			  //004B61EE
			  if (VerQueryValue(VerBuf, '\VarFileInfo\Translation', LangPtr, VerSize)) then
			  begin//5
				//004B6212
				InfoType:= Format('\StringFileInfo\%0.4x%0.4x\%s', [LoWord(LongInt(LangPtr^)),HiWord(LongInt(LangPtr^)), FDesciption[I]]);
			  end;//5
			  //UniqueString(lvar_20);
			  if (VerQueryValue(VerBuf,PChar(InfoType), InfoData, VerSize) ) then 
			  result.Add(StrPas(InfoData));
			end;//4
		  end;//3
		finally//2
		  //004B62C6
		  FreeMem(VerBuf);
		end;//2
	end;
  finally//1
  end;//1
end;//0

//004B6350
function VerificationMiseAJour__(AOwner: TComponent; URL:String; var versioninfo1:string; var versioninfo2:string):boolean;
begin//0
  try
    //004B6373
    result := VerificationMiseAJour(AOwner,URL, versioninfo1, URL, '', '', '', '');
  finally//1
    //004B6396
    result := false;
  end;//1
end;//0


//004B63B0
function VerificationMiseAJour(AOwner: TComponent; URL:String; versioninfo:string; URL2:string; Host:string; Username:string; Password:string; Port:string):boolean;
var 
  FileVersions : TStringList;
  Ver,LatestVersion, UpdateURL, NewVersionInfoURL, NewVersionInfo,text  : string;
  IdHTTP1 : TIdHTTP;
  Resp : TStringList;
begin//0
  //004B63B0
  try
    //004B63FC
    result := false;
    FileVersions := GetFileVersion(Application.ExeName);
	showmessage('Version:'#10#13+FileVersions.text);
    Ver := FileVersions[2];
	showmessage('Version:'#10#13+Ver);
    IdHTTP1 := TIdHTTP.Create(Nil);
    IdHTTP1.ReadTimeout := 2000;
    try
      //004B6465
      //IdHTTP.f100 := 1;
      if (Host <> '') then
      begin//3
        //004B6475
        IdHTTP1.ProxyParams.ProxyServer := Host;
        IdHTTP1.ProxyParams.ProxyPort := strtoint(Port);
        IdHTTP1.ProxyParams.ProxyUsername := Username;
        IdHTTP1.ProxyParams.ProxyPassword := Password;
      end;//3
      Resp := TStringList.Create;
      FormPatientez := TFormPatientez.Create(AOwner);
      FormPatientez.Caption := ' Vérification automatique de mise à jour ...';
      FormPatientez.ProgressBar1.Max := 2;
      FormPatientez.ProgressBar1.Min := 1;
      FormPatientez.ProgressBar1.Step := 1;
      FormPatientez.ProgressBar1.Position := 1;
      FormPatientez.ProgressBar1.StepIt;
      FormPatientez.Show;
      try
        //004B655C
        Resp.Text := IdHTTP1.Get(URL);
		showmessage(Resp.Text);
        LatestVersion := Resp.Values['LatestVersion'];
        result := not (AnsiSameText(LatestVersion, Ver));
        UpdateURL := Resp.Values['UpdateURL'];
        versioninfo := UpdateURL;
        NewVersionInfo := Resp.Values['NewVersionInfo'];
        URL2 := NewVersionInfo;
        if (Trim(NewVersionInfo) = '') then
        begin//4
          //004B65E1
          NewVersionInfoURL := Resp.Values['NewVersionInfoURL'];
          if (Trim(NewVersionInfoURL) <> '') then
          begin//5
            //004B6606
            try
              //004B6614
              text := IdHTTP1.Get(NewVersionInfoURL);
              URL2 := text;
            except//6
              on E:Exception do
              begin//7
                //004B6648
				{
                lvar_60 := NewVersionInfoURL;
                lvar_5C := 11;
                lvar_58 := .ClassName;
                lvar_54 := 4;
                lvar_50 := E.FMessage;
                lvar_4C := 11;
                EAX := gvar_004B6098;
                lvar_164 := LoadResString(4939928);
				}
                //URL2 := Format(lvar_164, [lvar_10, , ]);
              end;//7
            end;//6
          end;//5
        end;//4
      except//3
        on E:Exception do
        begin//4
          //004B66CC
          FormPatientez.Hide;
          MessageDlg('Impossible d''accèder à internet pour vérifier la disponibilité d''une mise à jour.'+#13+#10+'Vérifiez que votre connection internet est active.', mtInformation{1}, [mbOK]{gvar_004B6820}, 0);
        end;//4
      end;//3
      Resp.Free;
      FormPatientez.Free;
    finally//2
      //004B670B
      IdHTTP1.Free;
      //FreeAndNil(lvar_24);
    end;//2
  finally//1
  end;//1
end;//0

Initialization
Finalization
//004B68B4

end.