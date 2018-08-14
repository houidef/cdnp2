unit uTiler; 
//------------------------------------------------------------------------------ 
// TTiler V1.4 
// By Martijn Tonies / Upscene Productions Holland 
// EMail: seal97@dds.nl - http://surf.to/seal97 
//        m.tonies@upscene.demon.nl 
// 
// Copyright 1998 by Upscene Productions 
// This code may be used, but may not be modified/used for commercial use 
// without notifying the author. 
// 
// Commercial use will be charged $10 US. 
//------------------------------------------------------------------------------ 
// History: 
// -------- 
// V1.4: 
// - Fixed resize problem when using one of the 'spot' tilemodes. All tilemodes 
//   work no matter MDI of SDI form. 
// - Added method 'Redraw', handy if you change the bitmap property. 
// 
// V1.3: 
// - Automatic Attach if you want to. No need to call Attach method. 
// - Changed a local bitmap handle from a Integer to a HBITMAP (LongInt). 
// 
// V1.2: 
// - added tilemodes different than tmTile, tmStretch and tmCenter - only seem 
//   to work when the form is a fsNormal form instead of a fsMDIClient form. 
//   Tiling always works. 
// - put back Attach method (much easier to use!) 
// - made public Detach method. Detach the TTiler and Attach another TTiler 
//   component for different pictures without changing its Bitmap property. 
// 
// V1.1: 
// - lost Attach method 
// 
// V1.0 
// - First version (tilemodes: tmTile, tmStretch, tmCenter). 
//------------------------------------------------------------------------------ 
// How To Use: 
// ----------- 
// In the OnCreate event of your form, put: <tilename>.Attach 
// example: Tiler.Attach; 
//------------------------------------------------------------------------------ 
 
interface 
 
uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs; 
 
type 
  TTileMode = (tmTile, tmStretch, tmCenter, // standard Window Wallpaper tilemodes (v1.0) 
    tmLeftVCenter, tmLeftVTop, tmLeftVBottom, // piccy on the left   (v1.2) 
    tmRightVCenter, tmRightVTop, tmRightVBottom, // piccy on the right  (v1.2) 
    tmCenterVTop, tmCenterVBottom); // piccy centered      (v1.2) 
 
  TTiler = class(TComponent) 
  Private 
    FAutomaticAttach: Boolean; 
    FActive: Boolean; 
    FBitmap: TBitmap; 
    FTileMode: TTileMode; 
 
    FHandle: HWND; 
    Form: TForm; 
 
    HOffset: Integer; 
 
    FClientInstance: TFarProc; 
    FDefClientProc: TFarProc; 
 
    procedure SetActive(Value: Boolean); 
    procedure SetBitmap(Value: TBitmap); 
    procedure SetTileMode(Value: TTileMode); 
 
    procedure ClientWndProc(var Message: TMessage); 
    procedure FillClientArea(DC: HDC); 
 
    procedure Stretch(DC: HDC); 
    procedure Tile(DC: HDC); 
    procedure Center(DC: HDC); 
    procedure Spot(DC: HDC); 
 
    { Private declarations } 
  Protected 
    procedure Loaded; Override; 
    { Protected declarations } 
  Public 
    constructor Create(AOwner: TComponent); Override; 
    destructor Destroy; Override; 
 
    procedure Attach; 
    procedure Detach; 
    procedure Redraw; 
    { Public declarations } 
  Published 
    property AutomaticAttach: Boolean Read FAutomaticAttach Write FAutomaticAttach; 
    property Active: Boolean Read FActive Write SetActive; 
    property Bitmap: TBitmap Read FBitmap Write SetBitmap; 
    property TileMode: TTileMode Read FTileMode Write SetTileMode; 
    { Published declarations } 
  end; 
 
procedure Register; 
 
implementation 
 
constructor TTiler.Create(AOwner: TComponent); 
begin 
  inherited Create(AOwner); 
  FBitmap := TBitmap.Create; 
  FAutomaticAttach := True; 
end; 
 
destructor TTiler.Destroy; 
begin 
  Detach; 
  FBitmap.Free; 
  inherited Destroy; 
end; 
 
procedure TTiler.Attach; 
begin 
  if not (Owner is TForm) 
    then raise Exception.Create('Can''t attach TTiler component to something else than a TForm.'); 
  if not Assigned(FClientInstance) // only attach once! 
  then 
  begin 
    if (Owner as TForm).FormStyle = fsMDIForm 
      then 
      FHandle := (Owner as TForm).ClientHandle 
    else 
      FHandle := (Owner as TForm).Handle; 
 
    FClientInstance := Classes.MakeObjectInstance(ClientWndProc); 
    FDefClientProc := Pointer(GetWindowLong(FHandle, GWL_WNDPROC)); 
    SetWindowLong(FHandle, GWL_WNDPROC, LongInt(FClientInstance)); 
    Form := Owner as TForm; 
    if Active 
      then 
    begin 
      Active := False; 
      Active := True; 
    end; 
  end; 
end; 
 
procedure TTiler.Detach; 
begin 
  if Active and Assigned(FClientInstance) 
    then 
  begin 
    Active := False; // clear client area 
    FActive := True; // put old value back for redrawing when attach again 
  end; 
  if Assigned(FClientInstance) // if attached 
  then 
  begin 
    SetWindowLong(FHandle, GWL_WNDPROC, LongInt(FDefClientProc)); 
    Classes.FreeObjectInstance(FClientInstance); 
  end; 
  FClientInstance := nil; 
end; 
 
procedure TTiler.Redraw; 
var 
  b: Boolean; 
begin 
  b := Active; 
  Active := False; 
  Active := b; 
end; 
 
procedure TTiler.ClientWndProc(var Message: TMessage); 
  procedure Default; 
  begin 
    with Message 
      do 
      Result := CallWindowProc(FDefClientProc, FHandle, Msg, wParam, lParam); 
  end; 
begin 
  with Message 
    do 
  begin 
    case Msg of 
      WM_NCHITTEST: 
        begin 
          Default; 
          if FHandle = Form.ClientHandle 
            then 
            if Result = HTCLIENT 
              then Result := HTTRANSPARENT; 
        end; 
      WM_ERASEBKGND: 
        begin 
          if Assigned(FBitmap) and Active and (FHandle <> 0) and (FBitmap.Handle <> 0) 
            then 
            FillClientArea(TWMEraseBkgnd(Message).DC) 
          else 
            FillRect(TWMEraseBkgnd(Message).DC, (Owner as TForm).ClientRect, (Owner as TForm).Brush.Handle); 
          Result := 1; 
        end; 
      WM_VSCROLL, 
        WM_HSCROLL, 
        WM_SIZE: 
        begin 
          Default; 
          InvalidateRect(FHandle, nil, True); 
        end; 
    else 
      Default; 
    end; 
  end; 
end; 
 
procedure TTiler.Loaded; 
begin 
  inherited Loaded; 
  if AutomaticAttach 
    then Attach; 
end; 
 
procedure TTiler.FillClientArea(DC: HDC); 
begin 
  if FHandle <> 0 
    then 
    case FTileMode of 
      tmTile: Tile(DC); 
      tmStretch: Stretch(DC); 
      tmCenter: Center(DC); 
      tmLeftVCenter, 
        tmLeftVTop, 
        tmLeftVBottom, 
        tmRightVCenter, 
        tmRightVTop, 
        tmRightVBottom, 
        tmCenterVTop, 
        tmCenterVBottom: Spot(DC); 
    end; 
  ReleaseDC(FHandle, DC); 
end; 
 
procedure TTiler.Spot(DC: HDC); 
var 
  y, x: LongInt; 
begin 
  x := 0; 
  y := 0; 
 
  if TileMode in [tmRightVTop, tmRightVCenter, tmRightVBottom] 
    then x := Form.ClientWidth - FBitmap.Width - 1; 
 
  if TileMode in [tmCenterVTop, tmCenterVBottom] 
    then x := (Form.ClientWidth div 2) - (FBitmap.Width div 2); 
 
  case TileMode of 
    tmLeftVCenter, 
      tmRightVCenter: y := (Form.ClientHeight div 2) - (FBitmap.Height div 2); 
    tmLeftVTop, 
      tmRightVTop, 
      tmCenterVTop: y := 0; 
    tmLeftVBottom, 
      tmRightVBottom, 
      tmCenterVBottom: y := Form.ClientHeight - FBitmap.Height; 
  end; 
  FillRect(DC, (Owner as TForm).ClientRect, (Owner as TForm).Brush.Handle); 
  BitBlt(DC, x, y, FBitmap.Width, FBitmap.Height, FBitmap.Canvas.Handle, 0, 0, SRCCOPY); 
end; 
 
procedure TTiler.Center(DC: HDC); 
var 
  R: TRect; 
  x, y: LongInt; 
  w, h: LongInt; 
begin 
  R := Form.ClientRect; 
  x := (R.Right div 2) - (FBitmap.Width div 2); 
  y := (R.Bottom div 2) - (FBitmap.Height div 2); 
  w := x + FBitmap.Width; 
  h := y + FBitmap.Height; 
  FillRect(DC, R, Form.Brush.Handle); 
  BitBlt(DC, x, y, w, h, FBitmap.Canvas.Handle, 0, 0, SRCCOPY); 
end; 
 
procedure TTiler.Stretch(DC: HDC); 
var 
  R: TRect; 
begin 
  R := Form.ClientRect; 
  StretchBlt(DC, R.Left, R.Top, R.Right, R.Bottom, FBitmap.Canvas.Handle, 0, 0, FBitmap.Width, FBitmap.Height, SRCCOPY); 
end; 
 
procedure TTiler.Tile(DC: HDC); 
var 
  x, y, bmWidth, bmHeight: Integer; 
  bmHandle: HBITMAP; 
begin 
  bmWidth := FBitmap.Width; 
  bmHeight := FBitmap.Height; 
  bmHandle := FBitmap.Canvas.Handle; 
 
  x := HOffset; 
 
  while x < Form.Width 
    do 
  begin 
    y := 0; 
    while y < Form.Height 
      do 
    begin 
      BitBlt(DC, x, y, x + bmWidth, y + bmHeight, 
        bmHandle, 0, 0, SRCCOPY); 
      BitBlt(DC, x, y + bmHeight, x + bmWidth, y + bmHeight, 
        bmHandle, 0, 0, SRCCOPY); 
      BitBlt(DC, x + bmWidth, y, x + bmWidth, y + bmHeight, 
        bmHandle, 0, 0, SRCCOPY); 
      BitBlt(DC, x + bmWidth, y + bmHeight, x + bmWidth, y + bmHeight, 
        bmHandle, 0, 0, SRCCOPY); 
      y := y + bmHeight * 1; 
    end; 
    x := x + bmWidth * 1; 
  end; 
end; 
 
procedure TTiler.SetActive(Value: Boolean); 
var 
  Msg: TMessage; 
begin 
  if (Value <> FActive) and Assigned(Owner) 
    then 
  begin 
    FActive := Value; 
    if not (csDesigning in ComponentState) 
      then 
    begin 
      if FHandle <> 0 // draw, but only if there is a handle!! 
      then 
      begin 
        Msg.Msg := WM_ERASEBKGND; 
        TWMEraseBkgnd(Msg).DC := GetDC(FHandle); 
        ClientWndProc(Msg) // fire once! 
      end; 
    end 
    else {if FActive and not (csReading in ComponentState) and not (csLoading in ComponentState) 
      then ShowMessage('TTiler won''t show any drawing at designtime...')}; 
  end; 
end; 
 
procedure TTiler.SetBitmap(Value: TBitmap); 
begin 
  FBitmap.Assign(Value); 
end; 
 
procedure TTiler.SetTileMode(Value: TTileMode); 
begin 
  if Value <> FTileMode 
    then 
  begin 
    FTileMode := Value; 
    if (not (csDesigning in ComponentState)) and Active 
      then 
    begin 
      Active := False; // clear all 
      Active := True; // start drawing again 
    end; 
  end; 
end; 
 
procedure Register; 
begin 
  RegisterComponents('CommonInterFace', [TTiler]); 
end; 
 
end. 