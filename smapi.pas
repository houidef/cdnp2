//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit smapi;

interface

uses
  SysUtils, Classes,Windows;
type
{------------------} 
{ MAPI data types. } 
{------------------} 
 
  UINT      =  Integer; 
  ULONG     =  Longint; 
  lpULONG   = ^Longint; 
  LHANDLE   =  Longint; 
  lpLHANDLE = ^LHANDLE; 
  DWORD     =  Longint; 
  LPVOID    =  Pointer;

{-----------------------------------} 
{ MAPI File attachment information. } 
{-----------------------------------} 
 
type 
  lpMapiFileDesc = ^TMapiFileDesc; 
  TMapiFileDesc = record 
    ulReserved   : ULONG;                { Reserved for future use. Must be 0 } 
    flFlags      : ULONG;     		        { Flags } 
    nPosition    : ULONG;                { Attachment position in message body } 
    lpszPathName : PChar;                { Full path name of attachment file } 
    lpszFileName : PChar;                { Original filename (optional) } 
    lpFileType : Pointer;                { Attachment file type (reserved) } 
  end;   
{-----------------------------} 
{ MAPI recipient information. } 
{-----------------------------} 
 
type 
  lpMapiRecipDesc = ^TMapiRecipDesc; 
  lppMapiRecipDesc = ^lpMapiRecipDesc; 
  TMapiRecipDesc = record 
    ulReserved   : ULONG;                { Reserved for future use. Must be 0 } 
    ulRecipClass : ULONG;                { Recipient class - } 
                                         { MAPI_TO, MAPI_CC, } 
                                         { MAPI_BCC, MAPI_ORIG } 
    lpszName    : PChar;                 { Recipient name } 
    lpszAddress : PChar;                 { Recipient address (optional) } 
    ulEIDSize   : ULONG;                 { Size (in bytes) of lpEntryID } 
    lpEntryID   : Pointer;               { System-specific recipient reference } 
  end;   
{---------------------------} 
{ MAPI message information. } 
{---------------------------} 
 
type 
  lpMapiMessage = ^TMapiMessage; 
  TlppMapiMessage = ^lpMapiMessage; 
  TMapiMessage = record 
    ulReserved         : ULONG;           { Reserved for future use. Must be 0 } 
    lpszSubject        : PChar;           { Message subject } 
    lpszNoteText       : PChar;           { Message text } 
    lpszMessageType    : PChar;           { Message class } 
    lpszDateReceived   : PChar;           { In YYYY/MM/DD HH:MM format } 
    lpszConversationID : PChar;		       { Conversation thread ID } 
    flFlags            : ULONG;           { Unread, return receipt } 
    lpOriginator       : lpMapiRecipDesc; { Originator descriptor } 
    nRecipCount        : ULONG;           { Number of recipients } 
    lpRecips           : lpMapiRecipDesc; { Recipient descriptors } 
    nFileCount         : ULONG;           { Number of file attachments } 
    lpFiles            : lpMapiFileDesc;  { Attachment descriptors } 
  end;  
type  
TFnMapiSendMail = function(lhSession  : LHANDLE; 
                      ulUIParam  : ULONG; 
                      lpMessage  : lpMapiMessage; 
                      flFlags    : ULONG; 
                      ulReserved : ULONG) : ULONG
{$IFNDEF WIN32} ; {$ELSE} stdcall; {$ENDIF WIN32}
    procedure InitializeSMAPI;//005328B8
    function ProcSendEmail(lhSession  : LHANDLE; 
                      ulUIParam  : ULONG; 
                      lpMessage  : lpMapiMessage; 
                      flFlags    : ULONG; 
                      ulReserved : ULONG) : ULONG ;//005329D4

implementation
var
  DllInitialized: boolean { = false } ; { MAPI there? } 
  DllHandle : THandle { = 0 } ; { Handle of MAPI.DLL } 
  FnMapiSendMail:    TFnMapiSendMail; 
const 
  DLLName32DLL = 'mapi32.dll'; 
  DLLName32 = 'mapi32'; 

//005328B8
procedure InitializeSMAPI; 
var 
  OldErrorMode: Word; 
 
{$IFDEF WIN32} 
  OSVersionInfo: TOSVersionInfo; 
  RegHandle: HKEY; 
 
  MapiDetectBuf: array[0..8] of Char; 
  MapiDetectBufSize: Windows.DWORD; 
 
  RegValueType: Windows.DWORD; 
{$ENDIF WIN32} 
begin 
  { first check wether MAPI is available on the system; this is done 
    as described in the MS MAPI docs } 
 
{$IFDEF WIN32} 
  OSVersionInfo.dwOSVersionInfoSize := SizeOf(OSVersionInfo); 
  GetVersionEx(OSVersionInfo); 
  if (OSVersionInfo.dwMajorVersion > 3) or { NT 4.0 and later } 
     { earlier than NT 3.51 } 
     ((OSVersionInfo.dwMajorVersion = 3) and (OSVersionInfo.dwMinorVersion > 51)) then 
  begin 
    if RegOpenKeyEx( HKEY_LOCAL_MACHINE, 
                     'SOFTWARE\Microsoft\Windows Messaging Subsystem', 
                     0, KEY_READ, RegHandle) <> ERROR_SUCCESS then 
    begin 
      exit; 
    end; 
 
    MAPIDetectBufSize := SizeOf(MAPIDetectBuf); 
    if RegQueryValueEx( RegHandle, 'MAPI', nil, @RegValueType, 
                        PByte(@MAPIDetectBuf), @MAPIDetectBufSize) <> ERROR_SUCCESS then 
    begin 
      exit; 
    end; 
 
    RegCloseKey(RegHandle); 
 
    { "boolean" integer --> is == "1"? } 
    if not ((MAPIDetectBuf[0] = '1') and (MAPIDetectBuf[1] = #0)) then 
      exit; 
  end 
  else 
{$ENDIF WIN32} 
    if GetProfileInt('Mail', 'MAPI', 0) = 0 then { 16 bit and NT 3.51 detection logic } 
      Exit; 
 
{$IFDEF WIN32} 
  OldErrorMode := SetErrorMode(SEM_FAILCRITICALERRORS + SEM_NOOPENFILEERRORBOX); 
    DLLHandle := LoadLibrary(DLLName32); { start without .DLL attached } 
  { OldErrorMode := } SetErrorMode(OldErrorMode); 
 
  if DLLHandle = 0 then { got an error } 
  begin 
    OldErrorMode := SetErrorMode(SEM_FAILCRITICALERRORS + SEM_NOOPENFILEERRORBOX); 
    try 
      DLLHandle := LoadLibrary(DLLName32DLL); 
 
      if DLLHandle = 0 then 
      begin 
        exit; { second attempt did not work out either } 
      end; 
 
    finally 
      { OldErrorMode := } SetErrorMode(OldErrorMode); 
    end; 
  end; 
{$ELSE} 
  OldErrorMode := SetErrorMode(SEM_FAILCRITICALERRORS + SEM_NOOPENFILEERRORBOX); 
  DLLHandle := LoadLibrary(DLLName16DLL); 
  { OldErrorMode := } SetErrorMode(OldErrorMode); 
 
  if DLLHandle <= HINSTANCE_ERROR then 
  begin 
    FreeLibrary(DLLHandle); 
  end 
  else 
{$ENDIF WIN32} 
  begin 
    DllInitialized := true; 
 
    @FnMapiSendMail :=    GetProcAddress(DLLHandle, 'MAPISendMail'); 
 
    if  (@FnMapiSendMail    = nil) then 
    begin 
     // raise EMAPIdllerror.Create(SMapiGetProcAdressFailed); 
    end; 
  end; 
end; 

//005329D4
function ProcSendEmail(lhSession  : LHANDLE; 
                      ulUIParam  : ULONG; 
                      lpMessage  : lpMapiMessage; 
                      flFlags    : ULONG; 
                      ulReserved : ULONG) : ULONG ;
begin//0
  //005329D4
  InitializeSMAPI;
  if (@FnMapiSendMail = nil) then
  begin//1
    //005329EE
    @FnMapiSendMail := GetProcAddress(DLLHandle, 'MAPISendMail');
  end;//1
  if (@FnMapiSendMail <> nil) then 
	 result := FnMapiSendMail(lhSession,ulUIParam,lpMessage,flFlags,ulReserved)
  else 
  result := 1;
end;//0

Initialization
Finalization
//00532A3C
{*
 00532A3C    push        ebp
 00532A3D    mov         ebp,esp
 00532A3F    xor         eax,eax
 00532A41    push        ebp
 00532A42    push        532A81
 00532A47    push        dword ptr fs:[eax]
 00532A4A    mov         dword ptr fs:[eax],esp
 00532A4D    inc         dword ptr ds:[617E6C]
>00532A53    jne         00532A73
 00532A55    cmp         dword ptr ds:[610CA8],0;gvar_00610CA8:HINST
>00532A5C    je          00532A69
 00532A5E    mov         eax,[00610CA8];0x0 gvar_00610CA8:HINST
 00532A63    push        eax
 00532A64    call        kernel32.FreeLibrary
 00532A69    mov         eax,610CA4;^'MAPI32.DLL'
 00532A6E    call        @LStrClr
 00532A73    xor         eax,eax
 00532A75    pop         edx
 00532A76    pop         ecx
 00532A77    pop         ecx
 00532A78    mov         dword ptr fs:[eax],edx
 00532A7B    push        532A88
 00532A80    ret
>00532A81    jmp         @HandleFinally
>00532A86    jmp         00532A80
 00532A88    pop         ebp
 00532A89    ret
*}
end.