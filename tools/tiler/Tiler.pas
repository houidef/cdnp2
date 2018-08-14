unit Tiler;

interface

uses
  SysUtils, Classes;

type
  TTiler = class(TComponent)
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
  published
    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Common Controls', [TTiler]);
end;

end.
