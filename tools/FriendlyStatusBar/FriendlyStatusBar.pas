unit FriendlyStatusBar;

interface

uses
  SysUtils, Classes, Controls, ComCtrls;

type
  TFriendlyStatusBar = class(TStatusBar)
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    constructor Create(AOwner: TComponent); override;
  published
    { Published declarations }
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
