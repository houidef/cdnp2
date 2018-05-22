//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _FormCreerListeEleves;

interface

uses
Forms, Windows,  SysUtils, Classes, ExtCtrls, StdCtrls, Dialogs, Buttons,Controls;

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
          
         // lvar_20 := EditNomEtPrenom.Text;
          
         
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
begin
{*
 00517F54    push        ebx
 00517F55    mov         ebx,eax
 00517F57    mov         eax,dword ptr [ebx+2DC];TFormCreerListeEleves.ListBoxEleves:TListBox
 00517F5D    call        TCustomListBox.GetItemIndex
 00517F62    inc         eax
 00517F63    setne       dl
 00517F66    mov         eax,dword ptr [ebx+310];TFormCreerListeEleves.SpeedButtonSupprimer:TSpeedButton
 00517F6C    mov         ecx,dword ptr [eax]
 00517F6E    call        dword ptr [ecx+5C];TControl.SetEnabled
 00517F71    mov         eax,dword ptr [ebx+2DC];TFormCreerListeEleves.ListBoxEleves:TListBox
 00517F77    call        TCustomListBox.GetItemIndex
 00517F7C    inc         eax
 00517F7D    setne       dl
 00517F80    mov         eax,dword ptr [ebx+314];TFormCreerListeEleves.SpeedButtonModifier:TSpeedButton
 00517F86    mov         ecx,dword ptr [eax]
 00517F88    call        dword ptr [ecx+5C];TControl.SetEnabled
 00517F8B    pop         ebx
 00517F8C    ret
*}
end;

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
begin
{*
 00517FC0    push        ebp
 00517FC1    mov         ebp,esp
 00517FC3    push        0
 00517FC5    push        0
 00517FC7    push        0
 00517FC9    push        ebx
 00517FCA    push        esi
 00517FCB    push        edi
 00517FCC    mov         ebx,eax
 00517FCE    xor         eax,eax
 00517FD0    push        ebp
 00517FD1    push        5180F3
 00517FD6    push        dword ptr fs:[eax]
 00517FD9    mov         dword ptr fs:[eax],esp
 00517FDC    mov         esi,dword ptr [ebx+2DC];TFormCreerListeEleves.ListBoxEleves:TListBox
 00517FE2    push        51810C;'Supprimer ''
 00517FE7    mov         eax,esi
 00517FE9    call        TCustomListBox.GetItemIndex
 00517FEE    mov         edx,eax
 00517FF0    lea         ecx,[ebp-0C]
 00517FF3    mov         eax,dword ptr [esi+1F0];TListBox.FItems:TStrings
 00517FF9    mov         edi,dword ptr [eax]
 00517FFB    call        dword ptr [edi+0C];TStrings.Get
 00517FFE    mov         eax,dword ptr [ebp-0C]
 00518001    call        @LStrToPChar
 00518006    mov         edx,eax
 00518008    lea         eax,[ebp-8]
 0051800B    call        @LStrFromPChar
 00518010    push        dword ptr [ebp-8]
 00518013    push        518120;'' ?'
 00518018    lea         eax,[ebp-4]
 0051801B    mov         edx,3
 00518020    call        @LStrCatN
 00518025    push        24
 00518027    mov         eax,dword ptr [ebp-4]
 0051802A    call        @LStrToPChar
 0051802F    mov         edx,eax
 00518031    mov         ecx,518124
 00518036    mov         eax,[00615FEC];^Application:TApplication
 0051803B    mov         eax,dword ptr [eax]
 0051803D    call        TApplication.MessageBox
 00518042    cmp         eax,6
>00518045    jne         005180C4
 00518047    mov         eax,esi
 00518049    call        TCustomListBox.GetItemIndex
 0051804E    mov         edx,eax
 00518050    mov         eax,dword ptr [esi+1F0];TListBox.FItems:TStrings
 00518056    mov         ecx,dword ptr [eax]
 00518058    call        dword ptr [ecx+18];TStrings.sub_00414EA8
 0051805B    mov         edx,dword ptr [eax+4]
 0051805E    mov         eax,dword ptr [ebx+318];TFormCreerListeEleves.?f318:dword
 00518064    mov         ecx,dword ptr [eax]
 00518066    call        dword ptr [ecx+50]
 00518069    mov         edi,eax
 0051806B    mov         eax,esi
 0051806D    call        TCustomListBox.GetItemIndex
 00518072    mov         edx,eax
 00518074    mov         eax,dword ptr [esi+1F0];TListBox.FItems:TStrings
 0051807A    mov         ecx,dword ptr [eax]
 0051807C    call        dword ptr [ecx+44];TStrings.Delete
 0051807F    mov         eax,dword ptr [esi+1F0];TListBox.FItems:TStrings
 00518085    mov         edx,dword ptr [eax]
 00518087    call        dword ptr [edx+14];TStrings.GetCount
 0051808A    mov         edx,eax
 0051808C    sub         edx,1
>0051808F    jno         00518096
 00518091    call        @IntOver
 00518096    mov         eax,esi
 00518098    call        TCustomListBox.SetTopIndex
 0051809D    mov         edx,edi
 0051809F    mov         eax,dword ptr [ebx+318];TFormCreerListeEleves.?f318:dword
 005180A5    mov         ecx,dword ptr [eax]
 005180A7    call        dword ptr [ecx+44]
 005180AA    mov         edx,edi
 005180AC    mov         eax,dword ptr [ebx+31C];TFormCreerListeEleves.?f31C:dword
 005180B2    mov         ecx,dword ptr [eax]
 005180B4    call        dword ptr [ecx+44]
 005180B7    mov         edx,edi
 005180B9    mov         eax,dword ptr [ebx+320];TFormCreerListeEleves.?f320:dword
 005180BF    mov         ecx,dword ptr [eax]
 005180C1    call        dword ptr [ecx+44]
 005180C4    mov         edx,dword ptr [ebx+2E4];TFormCreerListeEleves.EditNomEtPrenom:TEdit
 005180CA    mov         eax,ebx
 005180CC    call        TCustomForm.SetActiveControl
 005180D1    mov         eax,ebx
 005180D3    call        005186D8
 005180D8    xor         eax,eax
 005180DA    pop         edx
 005180DB    pop         ecx
 005180DC    pop         ecx
 005180DD    mov         dword ptr fs:[eax],edx
 005180E0    push        5180FA
 005180E5    lea         eax,[ebp-0C]
 005180E8    mov         edx,3
 005180ED    call        @LStrArrayClr
 005180F2    ret
>005180F3    jmp         @HandleFinally
>005180F8    jmp         005180E5
 005180FA    pop         edi
 005180FB    pop         esi
 005180FC    pop         ebx
 005180FD    mov         esp,ebp
 005180FF    pop         ebp
 00518100    ret
*}
end;

//00518148
procedure TFormCreerListeEleves.ListBoxElevesDblClick(Sender:TObject);
begin
{*
 00518148    push        ebp
 00518149    mov         ebp,esp
 0051814B    mov         ecx,7
 00518150    push        0
 00518152    push        0
 00518154    dec         ecx
>00518155    jne         00518150
 00518157    push        ecx
 00518158    push        ebx
 00518159    push        esi
 0051815A    push        edi
 0051815B    mov         ebx,eax
 0051815D    xor         eax,eax
 0051815F    push        ebp
 00518160    push        518444
 00518165    push        dword ptr fs:[eax]
 00518168    mov         dword ptr fs:[eax],esp
 0051816B    mov         esi,dword ptr [ebx+2DC];TFormCreerListeEleves.ListBoxEleves:TListBox
 00518171    mov         eax,esi
 00518173    call        TCustomListBox.GetItemIndex
 00518178    inc         eax
>00518179    je          0051841C
 0051817F    mov         eax,esi
 00518181    call        TCustomListBox.GetItemIndex
 00518186    mov         edx,eax
 00518188    mov         eax,dword ptr [esi+1F0];TListBox.FItems:TStrings
 0051818E    mov         ecx,dword ptr [eax]
 00518190    call        dword ptr [ecx+18];TStrings.sub_00414EA8
 00518193    mov         edx,dword ptr [eax+4]
 00518196    lea         eax,[ebp-8]
 00518199    call        @LStrLAsg
 0051819E    mov         edx,dword ptr [ebp-8]
 005181A1    mov         eax,dword ptr [ebx+318];TFormCreerListeEleves.?f318:dword
 005181A7    mov         ecx,dword ptr [eax]
 005181A9    call        dword ptr [ecx+50]
 005181AC    mov         dword ptr [ebp-4],eax
 005181AF    lea         ecx,[ebp-0C]
 005181B2    mov         edx,dword ptr [ebp-4]
 005181B5    mov         eax,dword ptr [ebx+318];TFormCreerListeEleves.?f318:dword
 005181BB    mov         edi,dword ptr [eax]
 005181BD    call        dword ptr [edi+0C]
 005181C0    mov         eax,dword ptr [ebp-0C]
 005181C3    push        eax
 005181C4    lea         ecx,[ebp-10]
 005181C7    mov         edx,dword ptr [ebp-4]
 005181CA    mov         eax,dword ptr [ebx+31C];TFormCreerListeEleves.?f31C:dword
 005181D0    mov         edi,dword ptr [eax]
 005181D2    call        dword ptr [edi+0C]
 005181D5    mov         eax,dword ptr [ebp-10]
 005181D8    push        eax
 005181D9    lea         ecx,[ebp-14]
 005181DC    mov         edx,dword ptr [ebp-4]
 005181DF    mov         eax,dword ptr [ebx+320];TFormCreerListeEleves.?f320:dword
 005181E5    mov         edi,dword ptr [eax]
 005181E7    call        dword ptr [edi+0C]
 005181EA    mov         eax,dword ptr [ebp-14]
 005181ED    mov         edx,51845C;'R'
 005181F2    call        @LStrCmp
 005181F7    sete        al
 005181FA    push        eax
 005181FB    push        518468;'Modifier les informations de l'élève'
 00518200    mov         ecx,ebx
 00518202    mov         dl,1
 00518204    mov         eax,[004D0C9C];TFormModifierEleve
 00518209    call        TFormModifierEleve.Create;TFormModifierEleve.Create
 0051820E    mov         edx,dword ptr ds:[615B88];^gvar_00617CF8:TFormModifierEleve
 00518214    mov         dword ptr [edx],eax
 00518216    mov         eax,[00615B88];^gvar_00617CF8:TFormModifierEleve
 0051821B    mov         eax,dword ptr [eax]
 0051821D    mov         edx,dword ptr [eax]
 0051821F    call        dword ptr [edx+0D8]
 00518225    mov         eax,[00615B88];^gvar_00617CF8:TFormModifierEleve
 0051822A    mov         eax,dword ptr [eax]
 0051822C    cmp         dword ptr [eax+234],1
>00518233    jne         00518401
 00518239    mov         eax,esi
 0051823B    call        TCustomListBox.GetItemIndex
 00518240    mov         edx,eax
 00518242    mov         eax,dword ptr [esi+1F0];TListBox.FItems:TStrings
 00518248    mov         ecx,dword ptr [eax]
 0051824A    call        dword ptr [ecx+44];TStrings.Delete
 0051824D    mov         edx,dword ptr [ebp-4]
 00518250    mov         eax,dword ptr [ebx+318];TFormCreerListeEleves.?f318:dword
 00518256    mov         ecx,dword ptr [eax]
 00518258    call        dword ptr [ecx+44]
 0051825B    mov         edx,dword ptr [ebp-4]
 0051825E    mov         eax,dword ptr [ebx+31C];TFormCreerListeEleves.?f31C:dword
 00518264    mov         ecx,dword ptr [eax]
 00518266    call        dword ptr [ecx+44]
 00518269    mov         edx,dword ptr [ebp-4]
 0051826C    mov         eax,dword ptr [ebx+320];TFormCreerListeEleves.?f320:dword
 00518272    mov         ecx,dword ptr [eax]
 00518274    call        dword ptr [ecx+44]
 00518277    mov         eax,[00615B88];^gvar_00617CF8:TFormModifierEleve
 0051827C    mov         eax,dword ptr [eax]
 0051827E    mov         eax,dword ptr [eax+2D0]
 00518284    mov         edx,dword ptr [eax]
 00518286    call        dword ptr [edx+0B4]
 0051828C    test        al,al
>0051828E    je          0051830D
 00518290    lea         edx,[ebp-18]
 00518293    mov         eax,[00615B88];^gvar_00617CF8:TFormModifierEleve
 00518298    mov         eax,dword ptr [eax]
 0051829A    mov         eax,dword ptr [eax+2D8]
 005182A0    call        TControl.GetText
 005182A5    mov         ecx,dword ptr [ebp-18]
 005182A8    mov         dl,1
 005182AA    mov         eax,[005176F0];TObjetEleve
 005182AF    call        TObjetEleve.Create;TObjetEleve.Create
 005182B4    push        eax
 005182B5    lea         edx,[ebp-20]
 005182B8    mov         eax,[00615B88];^gvar_00617CF8:TFormModifierEleve
 005182BD    mov         eax,dword ptr [eax]
 005182BF    mov         eax,dword ptr [eax+2D8]
 005182C5    call        TControl.GetText
 005182CA    push        dword ptr [ebp-20]
 005182CD    push        518498;' '
 005182D2    lea         edx,[ebp-24]
 005182D5    mov         eax,[00615B88];^gvar_00617CF8:TFormModifierEleve
 005182DA    mov         eax,dword ptr [eax]
 005182DC    mov         eax,dword ptr [eax+2D4]
 005182E2    call        TControl.GetText
 005182E7    push        dword ptr [ebp-24]
 005182EA    push        5184A4;' (R)'
 005182EF    lea         eax,[ebp-1C]
 005182F2    mov         edx,4
 005182F7    call        @LStrCatN
 005182FC    mov         edx,dword ptr [ebp-1C]
 005182FF    mov         eax,dword ptr [esi+1F0];TListBox.FItems:TStrings
 00518305    pop         ecx
 00518306    mov         esi,dword ptr [eax]
 00518308    call        dword ptr [esi+38];TStrings.AddObject
>0051830B    jmp         00518383
 0051830D    lea         edx,[ebp-28]
 00518310    mov         eax,[00615B88];^gvar_00617CF8:TFormModifierEleve
 00518315    mov         eax,dword ptr [eax]
 00518317    mov         eax,dword ptr [eax+2D8]
 0051831D    call        TControl.GetText
 00518322    mov         ecx,dword ptr [ebp-28]
 00518325    mov         dl,1
 00518327    mov         eax,[005176F0];TObjetEleve
 0051832C    call        TObjetEleve.Create;TObjetEleve.Create
 00518331    push        eax
 00518332    lea         edx,[ebp-30]
 00518335    mov         eax,[00615B88];^gvar_00617CF8:TFormModifierEleve
 0051833A    mov         eax,dword ptr [eax]
 0051833C    mov         eax,dword ptr [eax+2D8]
 00518342    call        TControl.GetText
 00518347    push        dword ptr [ebp-30]
 0051834A    push        518498;' '
 0051834F    lea         edx,[ebp-34]
 00518352    mov         eax,[00615B88];^gvar_00617CF8:TFormModifierEleve
 00518357    mov         eax,dword ptr [eax]
 00518359    mov         eax,dword ptr [eax+2D4]
 0051835F    call        TControl.GetText
 00518364    push        dword ptr [ebp-34]
 00518367    lea         eax,[ebp-2C]
 0051836A    mov         edx,3
 0051836F    call        @LStrCatN
 00518374    mov         edx,dword ptr [ebp-2C]
 00518377    mov         eax,dword ptr [esi+1F0];TListBox.FItems:TStrings
 0051837D    pop         ecx
 0051837E    mov         esi,dword ptr [eax]
 00518380    call        dword ptr [esi+38];TStrings.AddObject
 00518383    lea         edx,[ebp-38]
 00518386    mov         eax,[00615B88];^gvar_00617CF8:TFormModifierEleve
 0051838B    mov         eax,dword ptr [eax]
 0051838D    mov         eax,dword ptr [eax+2D8]
 00518393    call        TControl.GetText
 00518398    mov         edx,dword ptr [ebp-38]
 0051839B    mov         eax,dword ptr [ebx+318];TFormCreerListeEleves.?f318:dword
 005183A1    mov         ecx,dword ptr [eax]
 005183A3    call        dword ptr [ecx+34]
 005183A6    lea         edx,[ebp-3C]
 005183A9    mov         eax,[00615B88];^gvar_00617CF8:TFormModifierEleve
 005183AE    mov         eax,dword ptr [eax]
 005183B0    mov         eax,dword ptr [eax+2D4]
 005183B6    call        TControl.GetText
 005183BB    mov         edx,dword ptr [ebp-3C]
 005183BE    mov         eax,dword ptr [ebx+31C];TFormCreerListeEleves.?f31C:dword
 005183C4    mov         ecx,dword ptr [eax]
 005183C6    call        dword ptr [ecx+34]
 005183C9    mov         eax,[00615B88];^gvar_00617CF8:TFormModifierEleve
 005183CE    mov         eax,dword ptr [eax]
 005183D0    mov         eax,dword ptr [eax+2D0]
 005183D6    mov         edx,dword ptr [eax]
 005183D8    call        dword ptr [edx+0B4]
 005183DE    test        al,al
>005183E0    je          005183F4
 005183E2    mov         edx,51845C;'R'
 005183E7    mov         eax,dword ptr [ebx+320];TFormCreerListeEleves.?f320:dword
 005183ED    mov         ecx,dword ptr [eax]
 005183EF    call        dword ptr [ecx+34]
>005183F2    jmp         00518401
 005183F4    xor         edx,edx
 005183F6    mov         eax,dword ptr [ebx+320];TFormCreerListeEleves.?f320:dword
 005183FC    mov         ecx,dword ptr [eax]
 005183FE    call        dword ptr [ecx+34]
 00518401    mov         eax,[00615B88];^gvar_00617CF8:TFormModifierEleve
 00518406    mov         eax,dword ptr [eax]
 00518408    mov         dl,1
 0051840A    mov         ecx,dword ptr [eax]
 0051840C    call        dword ptr [ecx-4]
 0051840F    mov         edx,dword ptr [ebx+2E4];TFormCreerListeEleves.EditNomEtPrenom:TEdit
 00518415    mov         eax,ebx
 00518417    call        TCustomForm.SetActiveControl
 0051841C    xor         eax,eax
 0051841E    pop         edx
 0051841F    pop         ecx
 00518420    pop         ecx
 00518421    mov         dword ptr fs:[eax],edx
 00518424    push        51844B
 00518429    lea         eax,[ebp-3C]
 0051842C    mov         edx,0A
 00518431    call        @LStrArrayClr
 00518436    lea         eax,[ebp-14]
 00518439    mov         edx,4
 0051843E    call        @LStrArrayClr
 00518443    ret
>00518444    jmp         @HandleFinally
>00518449    jmp         00518429
 0051844B    pop         edi
 0051844C    pop         esi
 0051844D    pop         ebx
 0051844E    mov         esp,ebp
 00518450    pop         ebp
 00518451    ret
*}
end;

//005184AC
procedure TFormCreerListeEleves.ListBoxElevesDrawItem(Control:TWinControl; Index:Integer; Rect:TRect; State:TOwnerDrawState);
//var

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
    ;
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
//var

begin//0
  //00518868

    //0051888A
    showmessage('Ajouter');
    if (Trim(EditNomEtPrenom.Text) <> '') then
    begin//005188AD
      if (ListBoxEleves.Items.IndexOf(EditNomEtPrenom.Text) + 1 = 0) then
      begin//005188D6 
        if (CheckBoxRedoublant.Checked) then
        begin//005188E8   
         //lvar_10 := EditNomEtPrenom.GetText{Caption};
          ListBoxEleves.Items.AddObject(EditNomEtPrenom.Text + ' ' + EditDate.Text + ' (R)', TObjetEleve.Create(EditNomEtPrenom.Text));
        end//4
        else
        begin//4
          //00518956
          
          //lvar_20 := EditNomEtPrenom.GetText{Caption};
          
        
          ListBoxEleves.Items.AddObject(EditNomEtPrenom.Text + ' ' + EditDate.Text, TObjetEleve.Create(EditNomEtPrenom.Text));
        end;//4
        

        ListBoxEleves.TopIndex := ListBoxEleves.Items.Count - 1;

        f318.Add(EditNomEtPrenom.Text);
        f31C.Add(EditDate.Text);

        if (CheckBoxRedoublant.Checked ) then
        begin//4
          //00518A2B

          f320.Add('R');
        end//4
        else
        begin//4
          //00518A3D

          f320.Add('');
        end;//4
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
begin
{*
 00518AE0    push        ebp
 00518AE1    mov         ebp,esp
 00518AE3    push        0
 00518AE5    push        0
 00518AE7    push        0
 00518AE9    push        ebx
 00518AEA    push        esi
 00518AEB    push        edi
 00518AEC    mov         ebx,eax
 00518AEE    xor         eax,eax
 00518AF0    push        ebp
 00518AF1    push        518C13
 00518AF6    push        dword ptr fs:[eax]
 00518AF9    mov         dword ptr fs:[eax],esp
 00518AFC    mov         esi,dword ptr [ebx+2DC];TFormCreerListeEleves.ListBoxEleves:TListBox
 00518B02    push        518C2C;'Supprimer ''
 00518B07    mov         eax,esi
 00518B09    call        TCustomListBox.GetItemIndex
 00518B0E    mov         edx,eax
 00518B10    lea         ecx,[ebp-0C]
 00518B13    mov         eax,dword ptr [esi+1F0];TListBox.FItems:TStrings
 00518B19    mov         edi,dword ptr [eax]
 00518B1B    call        dword ptr [edi+0C];TStrings.Get
 00518B1E    mov         eax,dword ptr [ebp-0C]
 00518B21    call        @LStrToPChar
 00518B26    mov         edx,eax
 00518B28    lea         eax,[ebp-8]
 00518B2B    call        @LStrFromPChar
 00518B30    push        dword ptr [ebp-8]
 00518B33    push        518C40;'' ?'
 00518B38    lea         eax,[ebp-4]
 00518B3B    mov         edx,3
 00518B40    call        @LStrCatN
 00518B45    push        24
 00518B47    mov         eax,dword ptr [ebp-4]
 00518B4A    call        @LStrToPChar
 00518B4F    mov         edx,eax
 00518B51    mov         ecx,518C44
 00518B56    mov         eax,[00615FEC];^Application:TApplication
 00518B5B    mov         eax,dword ptr [eax]
 00518B5D    call        TApplication.MessageBox
 00518B62    cmp         eax,6
>00518B65    jne         00518BE4
 00518B67    mov         eax,esi
 00518B69    call        TCustomListBox.GetItemIndex
 00518B6E    mov         edx,eax
 00518B70    mov         eax,dword ptr [esi+1F0];TListBox.FItems:TStrings
 00518B76    mov         ecx,dword ptr [eax]
 00518B78    call        dword ptr [ecx+18];TStrings.sub_00414EA8
 00518B7B    mov         edx,dword ptr [eax+4]
 00518B7E    mov         eax,dword ptr [ebx+318];TFormCreerListeEleves.?f318:dword
 00518B84    mov         ecx,dword ptr [eax]
 00518B86    call        dword ptr [ecx+50]
 00518B89    mov         edi,eax
 00518B8B    mov         eax,esi
 00518B8D    call        TCustomListBox.GetItemIndex
 00518B92    mov         edx,eax
 00518B94    mov         eax,dword ptr [esi+1F0];TListBox.FItems:TStrings
 00518B9A    mov         ecx,dword ptr [eax]
 00518B9C    call        dword ptr [ecx+44];TStrings.Delete
 00518B9F    mov         eax,dword ptr [esi+1F0];TListBox.FItems:TStrings
 00518BA5    mov         edx,dword ptr [eax]
 00518BA7    call        dword ptr [edx+14];TStrings.GetCount
 00518BAA    mov         edx,eax
 00518BAC    sub         edx,1
>00518BAF    jno         00518BB6
 00518BB1    call        @IntOver
 00518BB6    mov         eax,esi
 00518BB8    call        TCustomListBox.SetTopIndex
 00518BBD    mov         edx,edi
 00518BBF    mov         eax,dword ptr [ebx+318];TFormCreerListeEleves.?f318:dword
 00518BC5    mov         ecx,dword ptr [eax]
 00518BC7    call        dword ptr [ecx+44]
 00518BCA    mov         edx,edi
 00518BCC    mov         eax,dword ptr [ebx+31C];TFormCreerListeEleves.?f31C:dword
 00518BD2    mov         ecx,dword ptr [eax]
 00518BD4    call        dword ptr [ecx+44]
 00518BD7    mov         edx,edi
 00518BD9    mov         eax,dword ptr [ebx+320];TFormCreerListeEleves.?f320:dword
 00518BDF    mov         ecx,dword ptr [eax]
 00518BE1    call        dword ptr [ecx+44]
 00518BE4    mov         edx,dword ptr [ebx+2E4];TFormCreerListeEleves.EditNomEtPrenom:TEdit
 00518BEA    mov         eax,ebx
 00518BEC    call        TCustomForm.SetActiveControl
 00518BF1    mov         eax,ebx
 00518BF3    call        005186D8
 00518BF8    xor         eax,eax
 00518BFA    pop         edx
 00518BFB    pop         ecx
 00518BFC    pop         ecx
 00518BFD    mov         dword ptr fs:[eax],edx
 00518C00    push        518C1A
 00518C05    lea         eax,[ebp-0C]
 00518C08    mov         edx,3
 00518C0D    call        @LStrArrayClr
 00518C12    ret
>00518C13    jmp         @HandleFinally
>00518C18    jmp         00518C05
 00518C1A    pop         edi
 00518C1B    pop         esi
 00518C1C    pop         ebx
 00518C1D    mov         esp,ebp
 00518C1F    pop         ebp
 00518C20    ret
*}
end;

end.