{***************************************
* Version Original V0.01
* Decompiled by HOUIDEF AEK v.05.02.2018
***************************************}
unit _FormRappelSauvegarde;

interface

uses
Forms, Windows,  SysUtils, Classes, ExtCtrls, CheckLst, StdCtrls, Controls, Buttons, RxToolEdit, Dialogs, Unit111;

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
  CheckListBox1.Items := sub_004B9500;
 
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
begin
{*
 005546DC    push        ebp
 005546DD    mov         ebp,esp
 005546DF    push        0
 005546E1    push        0
 005546E3    push        0
 005546E5    push        ebx
 005546E6    push        esi
 005546E7    push        edi
 005546E8    mov         edi,eax
 005546EA    xor         eax,eax
 005546EC    push        ebp
 005546ED    push        5547DE
 005546F2    push        dword ptr fs:[eax]
 005546F5    mov         dword ptr fs:[eax],esp
 005546F8    mov         eax,dword ptr [edi+2DC];TFormRappelSauvegarde.CheckListBox1:TCheckListBox
 005546FE    call        TCustomListBox.Clear
 00554703    call        004B9500
 00554708    mov         edx,eax
 0055470A    mov         eax,dword ptr [edi+2DC];TFormRappelSauvegarde.CheckListBox1:TCheckListBox
 00554710    call        TCustomListBox.SetItems
 00554715    mov         eax,dword ptr [edi+2DC];TFormRappelSauvegarde.CheckListBox1:TCheckListBox
 0055471B    mov         eax,dword ptr [eax+1F0];TCheckListBox.FItems:TStrings
 00554721    mov         edx,dword ptr [eax]
 00554723    call        dword ptr [edx+14];TStrings.GetCount
 00554726    mov         ebx,eax
 00554728    sub         ebx,1
>0055472B    jno         00554732
 0055472D    call        @IntOver
 00554732    test        ebx,ebx
>00554734    jl          0055474C
 00554736    inc         ebx
 00554737    xor         esi,esi
 00554739    mov         eax,dword ptr [edi+2DC];TFormRappelSauvegarde.CheckListBox1:TCheckListBox
 0055473F    mov         cl,1
 00554741    mov         edx,esi
 00554743    call        TCheckListBox.SetChecked
 00554748    inc         esi
 00554749    dec         ebx
>0055474A    jne         00554739
 0055474C    mov         byte ptr [ebp-1],0
 00554750    mov         eax,dword ptr [edi+2DC];TFormRappelSauvegarde.CheckListBox1:TCheckListBox
 00554756    mov         eax,dword ptr [eax+1F0];TCheckListBox.FItems:TStrings
 0055475C    mov         edx,dword ptr [eax]
 0055475E    call        dword ptr [edx+14];TStrings.GetCount
 00554761    mov         ebx,eax
 00554763    sub         ebx,1
>00554766    jno         0055476D
 00554768    call        @IntOver
 0055476D    test        ebx,ebx
>0055476F    jl          0055478D
 00554771    inc         ebx
 00554772    xor         esi,esi
 00554774    mov         eax,dword ptr [edi+2DC];TFormRappelSauvegarde.CheckListBox1:TCheckListBox
 0055477A    mov         edx,esi
 0055477C    call        TCheckListBox.GetChecked
 00554781    test        al,al
>00554783    je          00554789
 00554785    mov         byte ptr [ebp-1],1
 00554789    inc         esi
 0055478A    dec         ebx
>0055478B    jne         00554774
 0055478D    cmp         byte ptr [ebp-1],0
>00554791    je          005547B2
 00554793    lea         edx,[ebp-0C]
 00554796    mov         eax,dword ptr [edi+304];TFormRappelSauvegarde.DirectoryEdit1:TDirectoryEdit
 0055479C    call        TCustomMaskEdit.GetText
 005547A1    mov         eax,dword ptr [ebp-0C]
 005547A4    lea         edx,[ebp-8]
 005547A7    call        Trim
 005547AC    cmp         dword ptr [ebp-8],0
>005547B0    jne         005547B6
 005547B2    xor         edx,edx
>005547B4    jmp         005547B8
 005547B6    mov         dl,1
 005547B8    mov         eax,dword ptr [edi+2E4];TFormRappelSauvegarde.btnSauvegarde:TSpeedButton
 005547BE    mov         ecx,dword ptr [eax]
 005547C0    call        dword ptr [ecx+5C];TControl.SetEnabled
 005547C3    xor         eax,eax
 005547C5    pop         edx
 005547C6    pop         ecx
 005547C7    pop         ecx
 005547C8    mov         dword ptr fs:[eax],edx
 005547CB    push        5547E5
 005547D0    lea         eax,[ebp-0C]
 005547D3    mov         edx,2
 005547D8    call        @LStrArrayClr
 005547DD    ret
>005547DE    jmp         @HandleFinally
>005547E3    jmp         005547D0
 005547E5    pop         edi
 005547E6    pop         esi
 005547E7    pop         ebx
 005547E8    mov         esp,ebp
 005547EA    pop         ebp
 005547EB    ret
*}
end;

//005547EC
procedure TFormRappelSauvegarde.SpeedButton6Click(Sender:TObject);
begin
{*
 005547EC    push        ebp
 005547ED    mov         ebp,esp
 005547EF    push        0
 005547F1    push        0
 005547F3    push        ebx
 005547F4    push        esi
 005547F5    push        edi
 005547F6    mov         esi,eax
 005547F8    xor         eax,eax
 005547FA    push        ebp
 005547FB    push        554883
 00554800    push        dword ptr fs:[eax]
 00554803    mov         dword ptr fs:[eax],esp
 00554806    mov         eax,dword ptr [esi+2DC];TFormRappelSauvegarde.CheckListBox1:TCheckListBox
 0055480C    mov         eax,dword ptr [eax+1F0];TCheckListBox.FItems:TStrings
 00554812    mov         edx,dword ptr [eax]
 00554814    call        dword ptr [edx+14];TStrings.GetCount
 00554817    mov         ebx,eax
 00554819    sub         ebx,1
>0055481C    jno         00554823
 0055481E    call        @IntOver
 00554823    test        ebx,ebx
>00554825    jl          0055483D
 00554827    inc         ebx
 00554828    xor         edi,edi
 0055482A    mov         cl,1
 0055482C    mov         edx,edi
 0055482E    mov         eax,dword ptr [esi+2DC];TFormRappelSauvegarde.CheckListBox1:TCheckListBox
 00554834    call        TCheckListBox.SetChecked
 00554839    inc         edi
 0055483A    dec         ebx
>0055483B    jne         0055482A
 0055483D    lea         edx,[ebp-8]
 00554840    mov         eax,dword ptr [esi+304];TFormRappelSauvegarde.DirectoryEdit1:TDirectoryEdit
 00554846    call        TCustomMaskEdit.GetText
 0055484B    mov         eax,dword ptr [ebp-8]
 0055484E    lea         edx,[ebp-4]
 00554851    call        Trim
 00554856    cmp         dword ptr [ebp-4],0
 0055485A    setne       dl
 0055485D    mov         eax,dword ptr [esi+2E4];TFormRappelSauvegarde.btnSauvegarde:TSpeedButton
 00554863    mov         ecx,dword ptr [eax]
 00554865    call        dword ptr [ecx+5C];TControl.SetEnabled
 00554868    xor         eax,eax
 0055486A    pop         edx
 0055486B    pop         ecx
 0055486C    pop         ecx
 0055486D    mov         dword ptr fs:[eax],edx
 00554870    push        55488A
 00554875    lea         eax,[ebp-8]
 00554878    mov         edx,2
 0055487D    call        @LStrArrayClr
 00554882    ret
>00554883    jmp         @HandleFinally
>00554888    jmp         00554875
 0055488A    pop         edi
 0055488B    pop         esi
 0055488C    pop         ebx
 0055488D    pop         ecx
 0055488E    pop         ecx
 0055488F    pop         ebp
 00554890    ret
*}
end;

//00554894
procedure TFormRappelSauvegarde.SpeedButton7Click(Sender:TObject);
begin
{*
 00554894    push        ebx
 00554895    push        esi
 00554896    push        edi
 00554897    mov         edi,eax
 00554899    mov         eax,dword ptr [edi+2DC];TFormRappelSauvegarde.CheckListBox1:TCheckListBox
 0055489F    mov         eax,dword ptr [eax+1F0];TCheckListBox.FItems:TStrings
 005548A5    mov         edx,dword ptr [eax]
 005548A7    call        dword ptr [edx+14];TStrings.GetCount
 005548AA    mov         ebx,eax
 005548AC    sub         ebx,1
>005548AF    jno         005548B6
 005548B1    call        @IntOver
 005548B6    test        ebx,ebx
>005548B8    jl          005548D0
 005548BA    inc         ebx
 005548BB    xor         esi,esi
 005548BD    mov         eax,dword ptr [edi+2DC];TFormRappelSauvegarde.CheckListBox1:TCheckListBox
 005548C3    xor         ecx,ecx
 005548C5    mov         edx,esi
 005548C7    call        TCheckListBox.SetChecked
 005548CC    inc         esi
 005548CD    dec         ebx
>005548CE    jne         005548BD
 005548D0    mov         eax,dword ptr [edi+2E4];TFormRappelSauvegarde.btnSauvegarde:TSpeedButton
 005548D6    xor         edx,edx
 005548D8    mov         ecx,dword ptr [eax]
 005548DA    call        dword ptr [ecx+5C];TControl.SetEnabled
 005548DD    pop         edi
 005548DE    pop         esi
 005548DF    pop         ebx
 005548E0    ret
*}
end;

//005548E4
procedure TFormRappelSauvegarde.btnSauvegardeClick(Sender:TObject);
begin
{*
 005548E4    push        ebp
 005548E5    mov         ebp,esp
 005548E7    add         esp,0FFFFFFCC
 005548EA    push        ebx
 005548EB    push        esi
 005548EC    push        edi
 005548ED    xor         ecx,ecx
 005548EF    mov         dword ptr [ebp-34],ecx
 005548F2    mov         dword ptr [ebp-30],ecx
 005548F5    mov         dword ptr [ebp-2C],ecx
 005548F8    mov         dword ptr [ebp-8],ecx
 005548FB    mov         dword ptr [ebp-4],eax
 005548FE    xor         eax,eax
 00554900    push        ebp
 00554901    push        554B0D
 00554906    push        dword ptr fs:[eax]
 00554909    mov         dword ptr fs:[eax],esp
 0055490C    xor         eax,eax
 0055490E    push        ebp
 0055490F    push        554AE3
 00554914    push        dword ptr fs:[eax]
 00554917    mov         dword ptr fs:[eax],esp
 0055491A    mov         eax,dword ptr [ebp-4]
 0055491D    mov         eax,dword ptr [eax+2E4];TFormRappelSauvegarde.btnSauvegarde:TSpeedButton
 00554923    xor         edx,edx
 00554925    mov         ecx,dword ptr [eax]
 00554927    call        dword ptr [ecx+5C];TControl.SetEnabled
 0055492A    mov         eax,dword ptr [ebp-4]
 0055492D    mov         eax,dword ptr [eax+2E8];TFormRappelSauvegarde.btnFermer:TSpeedButton
 00554933    xor         edx,edx
 00554935    mov         ecx,dword ptr [eax]
 00554937    call        dword ptr [ecx+5C];TControl.SetEnabled
 0055493A    xor         edi,edi
 0055493C    mov         eax,dword ptr [ebp-4]
 0055493F    mov         eax,dword ptr [eax+2DC];TFormRappelSauvegarde.CheckListBox1:TCheckListBox
 00554945    mov         eax,dword ptr [eax+1F0];TCheckListBox.FItems:TStrings
 0055494B    mov         edx,dword ptr [eax]
 0055494D    call        dword ptr [edx+14];TStrings.GetCount
 00554950    mov         ebx,eax
 00554952    sub         ebx,1
>00554955    jno         0055495C
 00554957    call        @IntOver
 0055495C    test        ebx,ebx
>0055495E    jl          00554985
 00554960    inc         ebx
 00554961    xor         esi,esi
 00554963    mov         eax,dword ptr [ebp-4]
 00554966    mov         eax,dword ptr [eax+2DC];TFormRappelSauvegarde.CheckListBox1:TCheckListBox
 0055496C    mov         edx,esi
 0055496E    call        TCheckListBox.GetChecked
 00554973    test        al,al
>00554975    je          00554981
 00554977    add         edi,1
>0055497A    jno         00554981
 0055497C    call        @IntOver
 00554981    inc         esi
 00554982    dec         ebx
>00554983    jne         00554963
 00554985    test        edi,edi
>00554987    je          00554AB5
 0055498D    xor         eax,eax
 0055498F    mov         dword ptr [ebp-10],eax
 00554992    mov         eax,dword ptr [ebp-4]
 00554995    call        TWinControl.GetHandle
 0055499A    mov         dword ptr [ebp-26],eax
 0055499D    mov         dword ptr [ebp-22],2
 005549A4    lea         eax,[ebp-8]
 005549A7    call        @LStrClr
 005549AC    mov         eax,dword ptr [ebp-4]
 005549AF    mov         eax,dword ptr [eax+2DC];TFormRappelSauvegarde.CheckListBox1:TCheckListBox
 005549B5    mov         eax,dword ptr [eax+1F0];TCheckListBox.FItems:TStrings
 005549BB    mov         edx,dword ptr [eax]
 005549BD    call        dword ptr [edx+14];TStrings.GetCount
 005549C0    mov         ebx,eax
 005549C2    sub         ebx,1
>005549C5    jno         005549CC
 005549C7    call        @IntOver
 005549CC    test        ebx,ebx
>005549CE    jl          00554A1C
 005549D0    inc         ebx
 005549D1    xor         esi,esi
 005549D3    mov         eax,dword ptr [ebp-4]
 005549D6    mov         eax,dword ptr [eax+2DC];TFormRappelSauvegarde.CheckListBox1:TCheckListBox
 005549DC    mov         edx,esi
 005549DE    call        TCheckListBox.GetChecked
 005549E3    test        al,al
>005549E5    je          00554A18
 005549E7    push        dword ptr [ebp-8]
 005549EA    lea         ecx,[ebp-2C]
 005549ED    mov         eax,dword ptr [ebp-4]
 005549F0    mov         eax,dword ptr [eax+2DC];TFormRappelSauvegarde.CheckListBox1:TCheckListBox
 005549F6    mov         eax,dword ptr [eax+1F0];TCheckListBox.FItems:TStrings
 005549FC    mov         edx,esi
 005549FE    mov         edi,dword ptr [eax]
 00554A00    call        dword ptr [edi+0C];TStrings.Get
 00554A03    push        dword ptr [ebp-2C]
 00554A06    push        554B24;';'
 00554A0B    lea         eax,[ebp-8]
 00554A0E    mov         edx,3
 00554A13    call        @LStrCatN
 00554A18    inc         esi
 00554A19    dec         ebx
>00554A1A    jne         005549D3
 00554A1C    mov         eax,dword ptr [ebp-8]
 00554A1F    call        @LStrLen
 00554A24    mov         ebx,eax
 00554A26    test        ebx,ebx
>00554A28    jle         00554A62
 00554A2A    mov         esi,1
 00554A2F    mov         eax,dword ptr [ebp-8]
 00554A32    dec         esi
 00554A33    cmp         esi,dword ptr [eax-4]
>00554A36    jb          00554A3D
 00554A38    call        @BoundErr
 00554A3D    inc         esi
 00554A3E    cmp         byte ptr [eax+esi-1],3B
>00554A43    jne         00554A5E
 00554A45    lea         eax,[ebp-8]
 00554A48    call        UniqueString
 00554A4D    dec         esi
 00554A4E    cmp         esi,dword ptr [eax-4]
>00554A51    jb          00554A58
 00554A53    call        @BoundErr
 00554A58    inc         esi
 00554A59    mov         byte ptr [eax+esi-1],0
 00554A5E    inc         esi
 00554A5F    dec         ebx
>00554A60    jne         00554A2F
 00554A62    lea         eax,[ebp-30]
 00554A65    mov         ecx,554B30;#0
 00554A6A    mov         edx,dword ptr [ebp-8]
 00554A6D    call        @LStrCat3
 00554A72    mov         eax,dword ptr [ebp-30]
 00554A75    call        @LStrToPChar
 00554A7A    mov         dword ptr [ebp-1E],eax
 00554A7D    lea         edx,[ebp-34]
 00554A80    mov         eax,dword ptr [ebp-4]
 00554A83    mov         eax,dword ptr [eax+304];TFormRappelSauvegarde.DirectoryEdit1:TDirectoryEdit
 00554A89    call        TCustomMaskEdit.GetText
 00554A8E    lea         eax,[ebp-34]
 00554A91    mov         edx,554B30;#0
 00554A96    call        @LStrCat
 00554A9B    mov         eax,dword ptr [ebp-34]
 00554A9E    call        @LStrToPChar
 00554AA3    mov         dword ptr [ebp-1A],eax
 00554AA6    mov         word ptr [ebp-16],40
 00554AAC    lea         eax,[ebp-26]
 00554AAF    push        eax
 00554AB0    call        shell32.SHFileOperationA
 00554AB5    xor         eax,eax
 00554AB7    pop         edx
 00554AB8    pop         ecx
 00554AB9    pop         ecx
 00554ABA    mov         dword ptr fs:[eax],edx
 00554ABD    push        554AEA
 00554AC2    mov         eax,dword ptr [ebp-4]
 00554AC5    mov         eax,dword ptr [eax+2E4];TFormRappelSauvegarde.btnSauvegarde:TSpeedButton
 00554ACB    mov         dl,1
 00554ACD    mov         ecx,dword ptr [eax]
 00554ACF    call        dword ptr [ecx+5C];TControl.SetEnabled
 00554AD2    mov         eax,dword ptr [ebp-4]
 00554AD5    mov         eax,dword ptr [eax+2E8];TFormRappelSauvegarde.btnFermer:TSpeedButton
 00554ADB    mov         dl,1
 00554ADD    mov         ecx,dword ptr [eax]
 00554ADF    call        dword ptr [ecx+5C];TControl.SetEnabled
 00554AE2    ret
>00554AE3    jmp         @HandleFinally
>00554AE8    jmp         00554AC2
 00554AEA    xor         eax,eax
 00554AEC    pop         edx
 00554AED    pop         ecx
 00554AEE    pop         ecx
 00554AEF    mov         dword ptr fs:[eax],edx
 00554AF2    push        554B14
 00554AF7    lea         eax,[ebp-34]
 00554AFA    mov         edx,3
 00554AFF    call        @LStrArrayClr
 00554B04    lea         eax,[ebp-8]
 00554B07    call        @LStrClr
 00554B0C    ret
>00554B0D    jmp         @HandleFinally
>00554B12    jmp         00554AF7
 00554B14    pop         edi
 00554B15    pop         esi
 00554B16    pop         ebx
 00554B17    mov         esp,ebp
 00554B19    pop         ebp
 00554B1A    ret
*}
end;

//00554B34
procedure TFormRappelSauvegarde.FormKeyPress(Sender:TObject; var Key:Char);
begin
  if (Key = chr($1B)) then
    ModalResult := 2;
end;

//00554B44
procedure TFormRappelSauvegarde.DirectoryEdit1Change;
begin
{*
 00554B44    push        ebp
 00554B45    mov         ebp,esp
 00554B47    push        0
 00554B49    push        0
 00554B4B    push        ebx
 00554B4C    mov         ebx,eax
 00554B4E    xor         eax,eax
 00554B50    push        ebp
 00554B51    push        554BBC
 00554B56    push        dword ptr fs:[eax]
 00554B59    mov         dword ptr fs:[eax],esp
 00554B5C    mov         eax,dword ptr [ebx+2DC];TFormRappelSauvegarde.CheckListBox1:TCheckListBox
 00554B62    mov         eax,dword ptr [eax+1F0];TCheckListBox.FItems:TStrings
 00554B68    mov         edx,dword ptr [eax]
 00554B6A    call        dword ptr [edx+14];TStrings.GetCount
 00554B6D    test        eax,eax
>00554B6F    jle         00554B90
 00554B71    lea         edx,[ebp-8]
 00554B74    mov         eax,dword ptr [ebx+304];TFormRappelSauvegarde.DirectoryEdit1:TDirectoryEdit
 00554B7A    call        TCustomMaskEdit.GetText
 00554B7F    mov         eax,dword ptr [ebp-8]
 00554B82    lea         edx,[ebp-4]
 00554B85    call        Trim
 00554B8A    cmp         dword ptr [ebp-4],0
>00554B8E    jne         00554B94
 00554B90    xor         edx,edx
>00554B92    jmp         00554B96
 00554B94    mov         dl,1
 00554B96    mov         eax,dword ptr [ebx+2E4];TFormRappelSauvegarde.btnSauvegarde:TSpeedButton
 00554B9C    mov         ecx,dword ptr [eax]
 00554B9E    call        dword ptr [ecx+5C];TControl.SetEnabled
 00554BA1    xor         eax,eax
 00554BA3    pop         edx
 00554BA4    pop         ecx
 00554BA5    pop         ecx
 00554BA6    mov         dword ptr fs:[eax],edx
 00554BA9    push        554BC3
 00554BAE    lea         eax,[ebp-8]
 00554BB1    mov         edx,2
 00554BB6    call        @LStrArrayClr
 00554BBB    ret
>00554BBC    jmp         @HandleFinally
>00554BC1    jmp         00554BAE
 00554BC3    pop         ebx
 00554BC4    pop         ecx
 00554BC5    pop         ecx
 00554BC6    pop         ebp
 00554BC7    ret
*}
end;

end.