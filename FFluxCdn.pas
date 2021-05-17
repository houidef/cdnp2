{************************************************************ Version Original V0.03 build 1                           ** Decompiled by Houidef AEK v2021-05-16 @ 05:42 PM         ** The disassembly process : 100%                           *************************************************************}
unit FFluxCdn;

interface

uses
  SysUtils, Classes,dialogs;

type
  TFluxCdn = class(TFileStream)
    function _Read():string;
    procedure _write(buffer : String);
  end;

implementation

//004B696C
function TFluxCdn._Read():string;
var
  count : byte;
begin
 Read(count,1);
 SetLength(result,count);
 Read(pchar(result)^,count);
 
end;

//004B6A80
procedure TFluxCdn._write(buffer : String);
var
  count:Byte;
begin
  count:=Length(buffer);
  WriteBuffer(count,1);
  WriteBuffer(pchar(buffer)^,count);
end;

end.