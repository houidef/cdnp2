{***********************************************************
* Version Original V0.03 build 1                           *
* Decompiled by HOUIDEF AEK v 3:28 lundi, août 27, 2018    *
* The disassembly process : 100%                            *
************************************************************}
unit _FormEnregistrement;

interface

uses
Forms, Windows,  SysUtils, Classes, StdCtrls, Buttons, ExtCtrls,UEnregistrement,Unit51;

type
  TFormEnregistrement = class(TForm)
  published
    Label1:TLabel;//f2D0
    Label2:TLabel;//f2D4
    Edit2:TEdit;//f2D8
    Label3:TLabel;//f2DC
    Edit3:TEdit;//f2E0
    SpeedButton1:TSpeedButton;//f2E4
    SpeedButton2:TSpeedButton;//f2E8
    Label4:TLabel;//f2EC
    ListBoxUtilisateurs:TListBox;//f2F0
    Label5:TLabel;//f2F4
    Bevel1:TBevel;//f2F8
    Bevel2:TBevel;//f2FC
    Bevel3:TBevel;//f300
    SpeedButton3:TSpeedButton;//f304
    procedure FormKeyPress(Sender:TObject; var Key:Char);//00553C78
    procedure SpeedButton3Click(Sender:TObject);//00553C88
    procedure SpeedButton2Click(Sender:TObject);//00553828
    procedure SpeedButton1Click(Sender:TObject);//00553834
    constructor Create(Owner:TComponent);//00553718
  end;
  var
    FormEnregistrement:TFormEnregistrement;
implementation

{$R *.DFM}

//00553718
constructor TFormEnregistrement.Create(Owner:TComponent);
var
  NumUser:integer;
  NomUser:string;
begin//0
  //00553718..00553745
    inherited Create(Owner);
    Caption := 'Carnet de Notes version Personnelle 2.9a';
    Label4.Caption := '27572cdn2.x';
      for NumUser := 1 to sub_00498B20 do//00553775
      begin//0055377A 
        sub_004986C0(NumUser, NomUser);
		ListBoxUtilisateurs.Items.Add(NomUser);
      end;//3
end;//0


//00553828
procedure TFormEnregistrement.SpeedButton2Click(Sender:TObject);
begin
   ModalResult:=2; 
end;

//00553834
procedure TFormEnregistrement.SpeedButton1Click(Sender:TObject);
var
  StringList : TStringList;
  NumUser :integer;
  NomUser  : string;
  I:integer;
begin//0
  //00553834..0055387F
    if (ListBoxUtilisateurs.Items.IndexOf(Edit2.Text) + 1 = 0) then
    begin//005538A8
      if (sub_004981D4(Edit2.Text, Edit3.Text, 0)) then
      begin//00553913
	     I:=sub_00498B20 + 1;
        sub_0049884C(I, Edit2.Text);
        sub_00498978(I, Edit3.Text);
        StringList{ESI} := TStringList.Create;
        StringList.AddStrings(sub_004982F8);
        if (StringList.IndexOf(Edit2.Text) + 1 = 0) then//0055399F
          StringList.Add(Edit2.Text);
        sub_00498460(StringList);
        StringList.Destroy;
        Application.MessageBox('Merci de votre soutien !!!'+#13+#10+#13+#10+
							   'Vous êtes maintenant un utilisateur enregistré et vous bénéficiez des mises à jour et des nouvelles versions gratuitement.'
								+#13+#10+#13+#10+'N''oubliez pas que votre clé d''enregistrement est personnelle et ne peut être cédée.', 
								'Carnet de Notes version Personnelle', $40{64});
        //gvar_00617903 := 255;
        //{gvar_006184E0}FormCarnetDeNotes2.Caption := 'Carnet de Notes version Personnelle 2.9a';
        ListBoxUtilisateurs.Clear;
        for NumUser := 1 to sub_00498B20 do //00553A1A
        begin//00553A1F
            sub_004986C0(NumUser, NomUser);
            ListBoxUtilisateurs.items.Add(NomUser);
        end;//5
       
        Edit2.Text := '';
        Edit3.Text := '';
        Edit2.SetFocus;
        
      end
	  else 
        Application.MessageBox('Clé d''enregistrement incorrecte.','Carnet de Notes version Personnelle' , $40{64});
    end
	else
       Application.MessageBox('Utilisateur déjà enregistré.','Carnet de Notes version Personnelle' , $40{64});
end;//0


//00553C78
procedure TFormEnregistrement.FormKeyPress(Sender:TObject; var Key:Char);
begin//0
  //00553C78
  if (Key = char($1B)) then 
     ModalResult := 2;
end;//0


//00553C88
procedure TFormEnregistrement.SpeedButton3Click(Sender:TObject);
var 
    NumUser :integer;
  NomUser  : string;
begin//0
  //00553C88..00553CA2
    if (ListBoxUtilisateurs.ItemIndex + 1 <> 0) then
    begin//00553CB6
      if (Application.MessageBox(PChar('Supprimer l''utilisateur enregistré "' + 
										ListBoxUtilisateurs.Items[ListBoxUtilisateurs.ItemIndex] + '" ?'),
										'Carnet de Notes version Personnelle' , $24{36}) = 6) then 
	  begin
        //sub_00498BFC(ListBoxUtilisateurs.ItemIndex + 1);
        ListBoxUtilisateurs.Clear;
        for NumUser := 1 to sub_00498B20 do //00553D31
        begin//00553D36
          sub_004986C0(NumUser, NomUser);
          ListBoxUtilisateurs.Items.Add(NomUser);
        end;//4
        if (ListBoxUtilisateurs.Items.Count = 0) then
        begin//00553D61
          //gvar_00617903 := 3;
          //gvar_006184E0.Text := 'Carnet de Notes version Personnelle - Version non enregistrée';
        end;//3
	 end;
    end;//2
end;//0


end.