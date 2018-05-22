{***************************************
* Version Original V0.01
* Decompiled by HOUIDEF AEK v.05.02.2018
***************************************}
program cdnp2;

uses
	Forms,
	  Chart ,
	  utiler in 'tools\utiler.pas',
	  frstatus in 'tools\frstatus.pas',
	  ColorPickerButton in 'tools\ColorPickerButton.pas',
	  DesignIntf in 'tools\DesignIntf.pas',
	  DesignConst in 'tools\DesignConst.pas',
	  Constes in 'tools\Constes.pas',
	  DsgnIntf in 'tools\dsgnintf.pas',
	  DesignMenus in 'tools\DesignMenus.pas',
	  BrowseDr in 'tools\BrowseDr.pas',
	  Rxtimer in 'tools\rx\Rxtimer.pas',
	  RxSpin in 'tools\rx\RxSpin.pas',
	  RxConst in 'tools\rx\RxConst.pas',
	  RxMaxMin in 'tools\rx\RxMaxMin.pas',
	  RxStrUtils in 'tools\rx\RxStrUtils.pas',
	  RxResConst_eng in 'tools\rx\RxResConst_eng.pas',
	  RxResConst in 'tools\rx\RxResConst.pas',
	  RxVCLUtils in 'tools\rx\RxVCLUtils.pas',
	  RxHook in 'tools\rx\RxHook.pas',
	  RxPrgrss in 'tools\rx\RxPrgrss.pas',
	  //RxStrUtils in 'tools\rx\RxStrUtils.pas',
	  RxDateUtil in 'tools\rx\RxDateUtil.pas',
	  RxFileUtil in 'tools\rx\RxFileUtil.pas',
	  RxAppUtils in 'tools\rx\RxAppUtils.pas',
	  RxProps in 'tools\rx\RxProps.pas',
	  RxPlacemnt in 'tools\rx\RxPlacemnt.pas',
	  RxGraph  in 'tools\rx\RxGraph.pas',
	  RxCtrls in 'tools\rx\RxCtrls.pas',
	  RxPickDate in 'tools\rx\RxPickDate.pas',
	  RxToolEdit in 'tools\rx\RxToolEdit.pas',
  
	_FormPatientez in '_FormPatientez.pas' {FormPatientez} ,
	_FormEdit in '_FormEdit.pas' {FormEdit} ,
	_FormHint in '_FormHint.pas' {FormHint} ,
	_FormModifierEleve in '_FormModifierEleve.pas' {FormModifierEleve} ,
	_FormOptions in '_FormOptions.pas' {FormOptions} ,
	_FormCreerDisquettes in '_FormCreerDisquettes.pas' {FormCreerDisquettes} ,
	_FormNouvelleSerieDeNotes in '_FormNouvelleSerieDeNotes.pas' {FormNouvelleSerieDeNotes} ,
	_FormReorganiser in '_FormReorganiser.pas' {FormReorganiser} ,
	_FormSupprimerSerie in '_FormSupprimerSerie.pas' {FormSupprimerSerie} ,
	_FormInformationsSeries in '_FormInformationsSeries.pas' {FormInformationsSeriesDeNotes} ,
	_FormImporterSeries in '_FormImporterSeries.pas' {FormImporterSeries} ,
	_FormUtilitairesSeries in '_FormUtilitairesSeries.pas' {FormUtilitairesSeries} ,
	_FormTransformerSeries in '_FormTransformerSeries.pas' {FormTransformerSeries} ,
	_FormTypeImportation in '_FormTypeImportation.pas' {FormTypeImportation} ,
	_FormAppreciations in '_FormAppreciations.pas' {FormAppreciations} ,
	_FormExportation in '_FormExportation.pas' {FormExportation} ,
	_FormPointsPlusMoins in '_FormPointsPlusMoins.pas' {FormPointsPlusMoins} ,
	_FormCreerListeEleves in '_FormCreerListeEleves.pas' {FormCreerListeEleves} ,
	_FormListe in '_FormListe.pas' {FormListeEleves} ,
	_FormProgression in '_FormProgression.pas' {FormProgression} ,
	_FormConfirmerImpression in '_FormConfirmerImpression.pas' {FormConfirmerImpression} ,
	_FormImprimer in '_FormImprimer.pas' {FormImprimer} ,
	_FormNouvelleClasse in '_FormNouvelleClasse.pas' {FormNouvelleClasse} ,
	_FormImprimerGraphe in '_FormImprimerGraphe.pas' {FormImprimerGraphe} ,
	_FormCollerAppreciations in '_FormCollerAppreciations.pas' {FormCollerAppreciations} ,
	_FormBilanEleve in '_FormBilanEleve.pas' {FormBilanEleve} ,
	_FormAide in '_FormAide.pas' {FormAide} ,
	_FormClonerFichier in '_FormClonerFichier.pas' {FormClonerFichier} ,
	UniteFeuilleClasse in 'UniteFeuilleClasse.pas' {FeuilleClasse} ,
	_Calendrier in '_Calendrier.pas' {FormCalendrier} ,
	_FormConseilsDemarrage in '_FormConseilsDemarrage.pas' {FormConseilsDemarrage} ,
	_FormAProposDe in '_FormAProposDe.pas' {FormAProposDe} ,
	_FormFusionner in '_FormFusionner.pas' {FormFusionner} ,
	_FormEnregistrement in '_FormEnregistrement.pas' {FormEnregistrement} ,
	_FormRappelSauvegarde in '_FormRappelSauvegarde.pas' {FormRappelSauvegarde} ,
	_FormCreerBulletins in '_FormCreerBulletins.pas' {FormCreerBulletins} ,
	_FormNouvelleVersionDisponible in '_FormNouvelleVersionDisponible.pas' {FormNouvelleVersionDisponible} ,
	UnitePrincipale in 'UnitePrincipale.pas' {FormCarnetDeNotes2} ,
	_FormMarqueCdn in '_FormMarqueCdn.pas' {FormMarqueCdn} ;
{$R *.res}

//0060E1EC
begin
  Application.Initialize;
  Application.Title:='Carnet de Notes Personnelle 2.9';
  //FormMarqueCdn:=TFormMarqueCdn.Create(Nil);
  Application.CreateForm(TFormCarnetDeNotes2,FormCarnetDeNotes2);
  Application.CreateForm(TFormHint,FormHint);
  Application.CreateForm(TFormAProposDe,FormAProposDe);
 // Application.CreateForm(TFormProgression,FormProgression);
  Application.Run;
 // FormHint.Free;
{*
 0060E1EC    push        ebp
 0060E1ED    mov         ebp,esp
 0060E1EF    add         esp,0FFFFFFF4
 0060E1F2    mov         eax,60D914
 0060E1F7    call        @InitExe
 0060E1FC    mov         eax,[00615FEC];^Application:TApplication
 0060E201    mov         eax,dword ptr [eax]
 0060E203    call        TApplication.Initialize
 0060E208    mov         eax,[00615FEC];^Application:TApplication
 0060E20D    mov         eax,dword ptr [eax]
 0060E20F    mov         edx,60E2FC;'Carnet de Notes Personnelle 2.9'
 0060E214    call        TApplication.SetTitle
 0060E219    mov         eax,60E31C
 0060E21E    call        FindWindow
 0060E223    test        al,al
>0060E225    jne         0060E2B3
 0060E22B    call        00497C70
 0060E230    test        al,al
>0060E232    jne         0060E2B3
 0060E234    push        60E338;'PERSONNELLE'
 0060E239    xor         ecx,ecx
 0060E23B    mov         dl,1
 0060E23D    mov         eax,[0060D6C8];TFormMarqueCdn
 0060E242    call        TFormMarqueCdn.Create;TFormMarqueCdn.Create
 0060E247    mov         edx,dword ptr ds:[6159A4];^gvar_006184E8:TFormMarqueCdn
 0060E24D    mov         dword ptr [edx],eax
 0060E24F    mov         ecx,dword ptr ds:[6159A0];^gvar_006184E0:TFormCarnetDeNotes2
 0060E255    mov         eax,[00615FEC];^Application:TApplication
 0060E25A    mov         eax,dword ptr [eax]
 0060E25C    mov         edx,dword ptr ds:[60AEC0];TFormCarnetDeNotes2
 0060E262    call        TApplication.CreateForm
 0060E267    mov         ecx,dword ptr ds:[615C50];^gvar_00617CE8:TFormHint
 0060E26D    mov         eax,[00615FEC];^Application:TApplication
 0060E272    mov         eax,dword ptr [eax]
 0060E274    mov         edx,dword ptr ds:[4CA9B8];TFormHint
 0060E27A    call        TApplication.CreateForm
 0060E27F    mov         ecx,dword ptr ds:[616298];^gvar_00617DE4:TFormProgression
 0060E285    mov         eax,[00615FEC];^Application:TApplication
 0060E28A    mov         eax,dword ptr [eax]
 0060E28C    mov         edx,dword ptr ds:[519F58];TFormProgression
 0060E292    call        TApplication.CreateForm
 0060E297    mov         eax,[00615FEC];^Application:TApplication
 0060E29C    mov         eax,dword ptr [eax]
 0060E29E    call        TApplication.Run
 0060E2A3    mov         eax,[006159A4];^gvar_006184E8:TFormMarqueCdn
 0060E2A8    mov         eax,dword ptr [eax]
 0060E2AA    mov         dl,1
 0060E2AC    mov         ecx,dword ptr [eax]
 0060E2AE    call        dword ptr [ecx-4]
>0060E2B1    jmp         0060E2EC
 0060E2B3    call        00497C3C
 0060E2B8    test        al,al
>0060E2BA    je          0060E2C8
 0060E2BC    mov         eax,60E31C
 0060E2C1    call        findwindow2
>0060E2C6    jmp         0060E2E0
 0060E2C8    push        40
 0060E2CA    mov         ecx,60E344
 0060E2CF    mov         edx,60E368
 0060E2D4    mov         eax,[00615FEC];^Application:TApplication
 0060E2D9    mov         eax,dword ptr [eax]
 0060E2DB    call        TApplication.MessageBox
 0060E2E0    mov         eax,[00615FEC];^Application:TApplication
 0060E2E5    mov         eax,dword ptr [eax]
 0060E2E7    call        TApplication.Terminate
 0060E2EC    call        @Halt0
*}
end.
