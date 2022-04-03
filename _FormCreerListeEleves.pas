//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _FormCreerListeEleves;

interface

uses
Forms, Windows,  SysUtils, Classes, ExtCtrls, StdCtrls, Dialogs, Buttons,Controls, _FormModifierEleve;

type
  TObjetEleve = class(TObject)
  public
    f4:String;
    constructor Create(a:string);//005187EC
  end;
  TFormCreerListeEleves = class(TForm)
  published
    Panel2:TPanel;//f2D0
    Bevel2:TBevel;//f2D4
    Image1:TImage;//f2D8
    ListBoxEleves:TListBox;//f2DC
    Bevel1:TBevel;//f2E0
    EditNomEtPrenom:TEdit;//f2E4
    Label1:TLabel;//f2E8
    OpenDialog1:TOpenDialog;//f2EC
    Label2:TLabel;//f2F0
    SpeedButton2:TSpeedButton;//f2F4
    SpeedButton1:TSpeedButton;//f2F8
    Label3:TLabel;//f2FC
    EditDate:TEdit;//f300
    CheckBoxRedoublant:TCheckBox;//f304
    Label4:TLabel;//f308
    SpeedButtonAjouter:TSpeedButton;//f30C
    SpeedButtonSupprimer:TSpeedButton;//f310
    SpeedButtonModifier:TSpeedButton;//f314
    procedure SpeedButton1Click(Sender:TObject);//005187B8
    procedure SpeedButton2Click(Sender:TObject);//005187AC
    procedure EditNomEtPrenomChange(Sender:TObject);//00518650
    procedure SpeedButtonSupprimerClick(Sender:TObject);//00518AE0
    procedure SpeedButtonAjouterClick(Sender:TObject);//00518868
    procedure FormDestroy(Sender:TObject);//005187C4
    procedure ListBoxElevesDrawItem(Control: TWinControl; Index: Integer;Rect: TRect; State: TOwnerDrawState);//005184AC
    procedure ListBoxElevesClick(Sender:TObject);//00517F54
    procedure FormShow(Sender:TObject);//00517F48
    procedure Button1Click(Sender:TObject);//00517CD0
    procedure ListBoxElevesDblClick(Sender:TObject);//00518148
    procedure Button2Click(Sender:TObject);//00517FC0
    procedure EditNomEtPrenomEnter(Sender:TObject);//00517F90
  public
    f318:TStringlist;//f318
    f31C:TStringlist;//f31C
    f320:TStringlist;//f320
    constructor Create(Owner:TComponent; Fichier:string; logo:TImage);//00517B8C
	 procedure sub_005186D8;//005186D8
  end;
var 
   FormCreerListeEleves:TFormCreerListeEleves;  

implementation

{$R *.DFM}

//00517B8C
constructor TFormCreerListeEleves.Create(Owner:TComponent; Fichier:string; logo:TImage);
var
  Stringlist:TStringlist;
begin//0
  //00517B8C
    //00517BBE
    inherited Create(Owner);
    Image1.Picture := logo.Picture;
    Caption := Caption + ' (' + Fichier + ')';
    f318 := TStringlist.Create;
    f318.Sorted := False;
    f31C :=  TStringlist.Create;
    f31C.Sorted := False;
    f320 := TStringlist.Create;
    f320.Sorted := False;
    sub_005186D8;
end;//0
//00517CD0
procedure TFormCreerListeEleves.Button1Click(Sender:TObject);
begin//0
  //00517CD0
    //00517CF2
    if (Trim(EditNomEtPrenom.Text) <> '') then
    begin//2
      //00517D15
      if (ListBoxEleves.Items.IndexOf(EditNomEtPrenom.Text) + 1 = 0) then
      begin//3
        //00517D3E
        if (CheckBoxRedoublant.Checked) then//00517D50
          ListBoxEleves.Items.AddObject(EditNomEtPrenom.Text + ' ' +EditDate.Text + ' (R)', TObjetEleve.Create(EditNomEtPrenom.Text))
        else //00517DBE
          ListBoxEleves.Items.AddObject(EditNomEtPrenom.Text + ' ' + EditDate.Text, TObjetEleve.Create(EditNomEtPrenom.Text));


        ListBoxEleves.TopIndex := ListBoxEleves.Items.Count - 1;
        f318.Add(EditNomEtPrenom.Text);
        f31C.Add(EditDate.Text);
        if (CheckBoxRedoublant.Checked) then//00517E93
          f320.Add('R')
        else//00517EA5
          f320.Add('');

        EditNomEtPrenom.Text := '';
        EditDate.Text := '';
        CheckBoxRedoublant.Checked := False;
      end;//3
    end;//2
    ActiveControl := EditNomEtPrenom;
    sub_005186D8;
end;//0


//00517F48
procedure TFormCreerListeEleves.FormShow(Sender:TObject);
begin//0
  //00517F48
  ActiveControl := EditNomEtPrenom;
end;//0


//00517F54
procedure TFormCreerListeEleves.ListBoxElevesClick(Sender:TObject);
begin//0
  //00517F54
  SpeedButtonSupprimer.Enabled := (ListBoxEleves.ItemIndex + 1 <> 0);
  SpeedButtonModifier.Enabled := (ListBoxEleves.ItemIndex + 1 <> 0);
end;//0


//00517F90
procedure TFormCreerListeEleves.EditNomEtPrenomEnter(Sender:TObject);
begin//0
  //00517F90
  ListBoxEleves.ItemIndex := -1;
  SpeedButtonSupprimer.Enabled := False;
  SpeedButtonModifier.Enabled := False;
end;//0


//00517FC0
procedure TFormCreerListeEleves.Button2Click(Sender:TObject);
var
 I:integer;
begin//0
  //00517FC0
    //00517FDC
    if (Application.MessageBox(PChar('Supprimer ''' + ListBoxEleves.Items[ListBoxEleves.ItemIndex] + ''' ?'), 'Carnet de Notes version Personnelle', $24{36}) = 6) then
    begin//2
      //00518047
      I := f318.IndexOf(ListBoxEleves.Items[ListBoxEleves.ItemIndex]);
      ListBoxEleves.Items.Delete(ListBoxEleves.ItemIndex);
      ListBoxEleves.TopIndex := ListBoxEleves.Items.Count - 1;
      f318.Delete(I);
      f31C.Delete(I);
      f320.Delete(I);
    end;//2
    ActiveControl := EditNomEtPrenom;
    sub_005186D8;
    //005180E5
end;//0

//00518148
procedure TFormCreerListeEleves.ListBoxElevesDblClick(Sender:TObject);
var
  I:integer;
begin//0
  //00518148
    //0051816B
    if (ListBoxEleves.ItemIndex + 1 <> 0) then
    begin//2
      //0051817F
      I := f318.IndexOf(ListBoxEleves.Items[ListBoxEleves.ItemIndex]);
      {gvar_00617CF8}FormModifierEleve := TFormModifierEleve.Create(Self, f318[I], f31C[I], f320[I] = 'R', 'Modifier les informations de l''élève');
      FormModifierEleve.ShowModal;
      if (FormModifierEleve.ModalResult = 1) then
      begin//3
        //00518239
        ListBoxEleves.Items.Delete(ListBoxEleves.ItemIndex);
        f318.Delete(I);
        f31C.Delete(I);
        f320.Delete(I);
        if (FormModifierEleve.CheckBoxRedoublant_FormModifier.Checked ) then
        begin//4
          //00518290
          ListBoxEleves.Items.AddObject(FormModifierEleve.EditNomPrenom_FormModifier.Text + ' ' + FormModifierEleve.EditDateDeNaissance_FormModifier.Text + ' (R)', TObjetEleve.Create(FormModifierEleve.EditNomPrenom_FormModifier.Text));
        end//4
        else
        begin//4
          //0051830D
          ListBoxEleves.Items.AddObject(FormModifierEleve.EditNomPrenom_FormModifier.Text + ' ' + FormModifierEleve.EditDateDeNaissance_FormModifier.Text, TObjetEleve.Create(FormModifierEleve.EditNomPrenom_FormModifier.Text));
        end;//4
        f318.Add(FormModifierEleve.EditNomPrenom_FormModifier.Text);
        f31C.Add(FormModifierEleve.EditDateDeNaissance_FormModifier.Text);
        if (FormModifierEleve.CheckBoxRedoublant_FormModifier.Checked) then//005183E2
          f320.Add('R')
        else//005183F4
          f320.Add('');
      end;//3
      FormModifierEleve.Destroy;
      ActiveControl := EditNomEtPrenom;
    end;//2
    //00518429
end;//0


//005184AC
procedure TFormCreerListeEleves.ListBoxElevesDrawItem(Control:TWinControl; Index:Integer; Rect:TRect; State:TOwnerDrawState);
begin//0
  //005184AC
    //005184DE
    if (Index mod 2 - 1 <> 0) then
    begin//005184EF
      ListBoxEleves.Canvas.Brush.Color := $FFFFFF;
      ListBoxEleves.Canvas.FillRect(Rect);
    end//2
    else
    begin//2
      //0051851E
      ListBoxEleves.Canvas.Brush.Color := $F4F3EE;
      ListBoxEleves.Canvas.FillRect(Rect);
    end;//2
    ListBoxEleves.Canvas.TextOut(Rect.Left + 5, Rect.Top + 2, ListBoxEleves.Items[Index]);
    if (odSelected in  State) then
    begin//2
      //0051859A
      ListBoxEleves.Canvas.Brush.Color := $F8D1C5;
      ListBoxEleves.Canvas.FillRect(Rect);
      ListBoxEleves.Canvas.Font.Color := $FF0000;
      ListBoxEleves.Canvas.TextOut(Rect.Left + 5, Rect.Top + 2, ListBoxEleves.Items[Index]);
    end;//2
  
end;//0

//00518650
procedure TFormCreerListeEleves.EditNomEtPrenomChange;
begin//0
  //00518650
    if ((Trim(EditNomEtPrenom.Text) = '') Or (ListBoxEleves.Items.Count >= 50)) then //0051869D
       SpeedButtonAjouter.Enabled  := false
    else//005186A1
       SpeedButtonAjouter.Enabled  := true;
end;//0

//005186D8
procedure TFormCreerListeEleves.sub_005186D8;
begin//0
  //005186D8

    case ListBoxEleves.Items.Count of
      0: //0051870D
        Label2.caption := 'aucun élève';

      1://0051871F
        Label2.caption := '1 élève';

	  else Label2.caption := IntToStr(ListBoxEleves.Items.Count) + ' élèves';

    end;//2


  
end;//0

//005187AC
procedure TFormCreerListeEleves.SpeedButton2Click(Sender:TObject);
begin
 ModalResult := 1;
end;

//005187B8
procedure TFormCreerListeEleves.SpeedButton1Click(Sender:TObject);
begin
 ModalResult := 2;
end;

//005187C4
procedure TFormCreerListeEleves.FormDestroy(Sender:TObject);
begin//0
  //005187C4
  f318.Free;
  f31C.Free;
  f320.Free;
end;//0


//005187EC
constructor TObjetEleve.Create(a:string);

begin//0
  //005187EC
    inherited Create;
    f4:= a;
end;//0

//00518868
procedure TFormCreerListeEleves.SpeedButtonAjouterClick(Sender:TObject);
begin//0
  //00518868
    //0051888A
    if (Trim(EditNomEtPrenom.Text) <> '') then
    begin//005188AD
      if (ListBoxEleves.Items.IndexOf(EditNomEtPrenom.Text) + 1 = 0) then
      begin//005188D6 
        if (CheckBoxRedoublant.Checked) then
        begin//005188E8   
         //lvar_10 := EditNomEtPrenom.Text;
          ListBoxEleves.Items.AddObject(EditNomEtPrenom.Text + ' ' + EditDate.Text + ' (R)', TObjetEleve.Create(EditNomEtPrenom.Text));
        end//4
        else
        begin//4
          //00518956
          ListBoxEleves.Items.AddObject(EditNomEtPrenom.Text + ' ' + EditDate.Text, TObjetEleve.Create(EditNomEtPrenom.Text));
        end;//4
        ListBoxEleves.TopIndex := ListBoxEleves.Items.Count - 1;
        f318.Add(EditNomEtPrenom.Text);
        f31C.Add(EditDate.Text);
        if (CheckBoxRedoublant.Checked ) then//00518A2B
          f320.Add('R')
        else//00518A3D
          f320.Add('');
        EditNomEtPrenom.Text := '';
        EditDate.Text := '';
        CheckBoxRedoublant.Checked := False;
      end;//3
    end;//2
    ActiveControl := EditNomEtPrenom;
    sub_005186D8;
end;//0

//00518AE0
procedure TFormCreerListeEleves.SpeedButtonSupprimerClick(Sender:TObject);
var
  I:integer;
begin//0
  //00518AE0
    //00518AFC
    if (Application.MessageBox(PChar('Supprimer ''' + ListBoxEleves.Items[ListBoxEleves.ItemIndex] + ''' ?'), 'Carnet de Notes version Personnelle' , $24{36}) = 6) then
    begin//2
      //00518B67
      I := f318.IndexOf(ListBoxEleves.Items[ListBoxEleves.ItemIndex]);
      ListBoxEleves.Items.Delete(ListBoxEleves.ItemIndex);
      ListBoxEleves.TopIndex := ListBoxEleves.Items.Count - 1;
      f318.Delete(I);
      f31C.Delete(I);
      f320.Delete(I);
    end;//2
    ActiveControl := EditNomEtPrenom;
    sub_005186D8;
    //00518C05
end;//0

end.