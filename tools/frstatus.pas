unit frstatus;
 
interface
 
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, DsgnIntf;
 
type
  TFriendlyStatusBar = class(TStatusBar)
  private
  public
    constructor Create(AOwner: TComponent); override;
  published
  end;
 
procedure Register;
 
implementation
 
constructor TFriendlyStatusBar.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  ControlStyle:= ControlStyle + [csAcceptsControls];
end;
 
procedure Register;
begin
  RegisterComponents('ActiveX', [TFriendlyStatusBar]);
end;
 
end.