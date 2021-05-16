{***********************************************************
* Version Original V0.03 build 1                           *
* Decompiled by Houidef AEK v 3:28 lundi, août 27, 2018    *
* The disassembly process : 100%                            *
************************************************************}
unit _FormRappelSauvegarde;

interface

uses
Forms, Windows,  SysUtils, Classes, ExtCtrls, CheckLst, StdCtrls, Controls, Buttons, RxToolEdit, Dialogs, Unit111, ShellAPI, FileCtrl;

type
  TFormRappelSauvegarde = class(TForm)
  published
    Panel2:TPanel;//f2D0
    Bevel2:TBevel;//f2D4
    Image1:TImage;//f2D8
    CheckListBox1:TCheckListBox;//f2DC
    Label1:TLabel;//f2E0
    btnSauvegarde:TSpeedButton;//f2E4
    btnFermer:TSpeedButton;//f2E8
    Label2:TLabel;//f2EC
    Label3:TLabel;//f2F0
    SpeedButton1:TSpeedButton;//f2F4
    SpeedButton5:TSpeedButton;//f2F8
    SpeedButton6:TSpeedButton;//f2FC
    SpeedButton7:TSpeedButton;//f300
    DirectoryEdit1:TDirectoryEdit;//f304
    procedure SpeedButton7Click(Sender:TObject);//00554894
    procedure SpeedButton6Click(Sender:TObject);//005547EC
    procedure btnSauvegardeClick(Sender:TObject);//005548E4
    procedure DirectoryEdit1Change(Sender:TObject);//00554B44
    procedure FormKeyPress(Sender:TObject; var Key:Char);//00554B34
    procedure btnFermerClick(Sender:TObject);//00554424
    procedure CheckListBox1DrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);//005542B8
    procedure CheckListBox1ClickCheck(Sender:TObject);//0055442C
    procedure SpeedButton5Click(Sender:TObject);//005546DC
    procedure SpeedButton1Click(Sender:TObject);//005544E8
    constructor Create(Owner:TComponent;logo:TImage);//0055420C
  end;
 var
   FormRappelSauvegarde:TFormRappelSauvegarde;
implementation
    uses UnitePrincipale;
{$R *.DFM}

//0055420C
constructor TFormRappelSauvegarde.Create(Owner:TComponent; logo:TImage);
var 
  I:integer;
begin//0
  //0055420C

  inherited create(Owner);
  Image1.Picture := logo.Picture;
  CheckListBox1.Items := HistoriqueList;
 
    for I := 0 to CheckListBox1.Items.Count - 1 do//00554277
      CheckListBox1.Checked[I] :=True;// EDI, ECX{});



  btnSauvegarde.Enabled := False;

end;//0

//005542B8
procedure TFormRappelSauvegarde.CheckListBox1DrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
begin
    if (Index mod 2  <> 1) then
    begin//2
      //0055303B
      CheckListBox1.Canvas.Brush.Color := $FFFFFF;
      CheckListBox1.Canvas.FillRect(Rect);
    end//2
    else
    begin//2
      //0055306A
      CheckListBox1.Canvas.Brush.Color := $F4F3EE;
      CheckListBox1.Canvas.FillRect(Rect);
    end;//2

    CheckListBox1.Canvas.TextOut(Rect.Left + 5, Rect.Top + 2, CheckListBox1.Items[Index]);
    if ( odSelected in State) then
    begin//2
      //005530E6
      CheckListBox1.Canvas.Brush.Color := $F8D1C5;
      CheckListBox1.Canvas.FillRect(Rect);
      CheckListBox1.Canvas.Font.Color := $FF0000;
      CheckListBox1.Canvas.TextOut(Rect.Left + 5, Rect.Top + 2, CheckListBox1.Items[Index]);
    end;//2
end;

//00554424
procedure TFormRappelSauvegarde.btnFermerClick(Sender:TObject);
begin
 close;
end;

//0055442C
procedure TFormRappelSauvegarde.CheckListBox1ClickCheck;
var
 lvar_1 : boolean;
 I:integer;
begin//0
  //0055442C
    //00554448
    lvar_1 := false;
      for I := 0 to CheckListBox1.Items.Count - 1 do //0055446D
      begin//3
        //00554470
        if (CheckListBox1.Checked[I]) then 
        lvar_1 := true;
      end;//3
    
    //00554489
  
    if (lvar_1 = false) Or (Trim(DirectoryEdit1.Text) = '') then //005544AE
      btnSauvegarde.Enabled := false
    else//005544B2
      btnSauvegarde.Enabled := true;
    
    
  
    //005544CC

  
end;//0


//005544E8
procedure TFormRappelSauvegarde.SpeedButton1Click(Sender:TObject);
var
 I:integer;
 lvar_1:boolean;
begin//0
  //005544E8
    //00554508
    FormCarnetDeNotes2.OpenDialog1.Options := FormCarnetDeNotes2.OpenDialog1.Options + [ofAllowMultiSelect];
    //FormCarnetDeNotes2.OpenDialog1.Options := ;

    if (FormCarnetDeNotes2.OpenDialog1.Execute) then
    begin//2
      //0055453B
        for I := 0 to FormCarnetDeNotes2.OpenDialog1.Files.Count - 1 do //00554564
        begin//4
          //0055456C
          if (CheckListBox1.Items.IndexOf(LowerCase(FormCarnetDeNotes2.OpenDialog1.Files[I]))  = -1) then
          begin//5
            //005545A9
            CheckListBox1.Items.Add(LowerCase(FormCarnetDeNotes2.OpenDialog1.Files[I]));
            CheckListBox1.Checked[CheckListBox1.Items.Count - 1] := True;
          end;//5
        end;//4
      
    end;//2

    //FormCarnetDeNotes2.OpenDialog1.Options := not([ofAllowMultiSelect]);//{x$40 gvar_005546D8} And FormCarnetDeNotes2.OpenDialog1.Options;
    lvar_1 := false;
    
      
      for I := 0 to CheckListBox1.Items.Count - 1 do //00554652
      begin//3
        //0055465A
        
        if (CheckListBox1.Checked[I] = False) then Continue;
        lvar_1 := true;
      end;//3
    
    //00554676
    if (lvar_1 = false) Or (Trim(DirectoryEdit1.Text) = '') then //0055469B
      btnSauvegarde.Enabled := false
    else//0055469F
      btnSauvegarde.Enabled := true;
    
	//005546B9
  
end;//0


//005546DC
procedure TFormRappelSauvegarde.SpeedButton5Click(Sender:TObject);
var
 I:integer;
 lvar_1,b:boolean;
begin//0
  //005546DC
    //005546F8

    CheckListBox1.Clear;
    CheckListBox1.Items := HistoriqueList;
      for I := 0 to CheckListBox1.Items.Count - 1 do//00554736
      begin//3
        //00554739
        CheckListBox1.Checked[I ] := True;
      end;//3
    lvar_1 := false;

      for I := 0 to CheckListBox1.Items.Count - 1 do//00554771
      begin//3
        //00554774
        if (CheckListBox1.Checked[I] ) then 
        lvar_1 := true;
      end;
    //0055478D
    if (lvar_1 = false) Or (Trim(DirectoryEdit1.Text) = '') then
    begin//2
      //005547B2
      b := false;
    end//2
    else
    begin//2
      //005547B6
      b := true;
    end;//2
    btnSauvegarde.Enabled :=b;

    //005547D0

end;//0

//005547EC
procedure TFormRappelSauvegarde.SpeedButton6Click(Sender:TObject);
var
  I:integer;
begin//0
  //005547EC
    //00554806
    
      for I := 0 to CheckListBox1.Items.Count - 1 do//00554827
      begin//3
        //0055482A
        CheckListBox1.Checked[I] := True;
      end;//3
    btnSauvegarde.Enabled :=(DirectoryEdit1.Text <> '');

    //00554875

end;//0


//00554894
procedure TFormRappelSauvegarde.SpeedButton7Click(Sender:TObject);
var
 I:integer;
begin//0
  //00554894

    //005548BA
    for I := 0 to CheckListBox1.Items.Count - 1 do
    begin//2
      //005548BD
      CheckListBox1.Checked[I]:=False;
    end;//2

  btnSauvegarde.Enabled := False;
end;//0

//005548E4
procedure TFormRappelSauvegarde.btnSauvegardeClick(Sender:TObject);
var
  I,J:integer;
  Info: TSHFileOpStruct;
  lvar_8:string;
begin//0
  //005548E4
    //0055490C
    try
      //0055491A
      btnSauvegarde.Enabled :=False;
      btnFermer.Enabled := False;
	  J := 0;
        //00554960
        for I := 0 to CheckListBox1.Items.Count - 1 do
        begin//4
          //00554963
          if (CheckListBox1.Checked[I] ) then 
			J := J + 1;
        end;//4

      if (J <> 0) then
      begin//3
        //0055498D
	  with Info do
	  begin
        fAnyOperationsAborted := false;
        Wnd := Handle;
        wFunc := FO_COPY{2};
        lvar_8 := '';
        
          for I := 0 to CheckListBox1.Items.Count - 1 do//005549D0
          begin//5
            //005549D3
            if (CheckListBox1.Checked[I] ) then 
			begin
				lvar_8 := lvar_8 + CheckListBox1.Items[I] + ';';
			end;
          end;//5



          for I := 1 to Length(lvar_8) do//00554A2A
          begin//5
            //00554A2F
            if (lvar_8[I] = ';') then 
			begin
				UniqueString(lvar_8);
				lvar_8[I] := #0;
			end;
          end;//5

        pFrom := PChar(lvar_8 + #0);
        pTo := PChar(DirectoryEdit1.Text + #0);
        fFlags := $40{64};
        //push EAX
        SHFileOperationA(Info);
	  end;
      end;//3
    finally//2
      //00554AC2
      btnSauvegarde.Enabled :=True;
      btnFermer.Enabled := True;
    end;//2

    //00554AF7

end;//0

//00554B34
procedure TFormRappelSauvegarde.FormKeyPress(Sender:TObject; var Key:Char);
begin
  if (Key = #27) then
    ModalResult := 2;
end;

//00554B44
procedure TFormRappelSauvegarde.DirectoryEdit1Change;
var
  b:boolean;
begin//0
  //00554B44
    //00554B5C
    //00554B6D
    if (CheckListBox1.Items.Count <= 0) Or (Trim(DirectoryEdit1.Text) = '') then
    begin//2
      //00554B90
      b := false;
    end//2
    else
    begin//2
      //00554B94
      b := true;
    end;//2
    btnSauvegarde.Enabled :=b;
    //00554BAE
end;//0

end.