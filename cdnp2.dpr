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
	 // DesignEditors in 'tools\DesignEditors.pas',
	  DFSAbout in 'tools\DFSAbout.pas',
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
	_FormMarqueCdn in '_FormMarqueCdn.pas' {FormMarqueCdn} ,
	Unit49 in 'Unit49.pas';
{$R *.res}

//0060E1EC
begin
  //0060E1C0
  Application.Initialize;
  Application.Title := 'Carnet de Notes Personnelle 2.9';
  if (FindWindow('TFormCarnetDeNotes2') = False) then
  begin//1
    //0060E1FF
    if (sub_00497C70 = False) then
    begin//2
      //0060E208
      FormMarqueCdn := TFormMarqueCdn.Create('PERSONNELLE');
      Application.CreateForm(TFormCarnetDeNotes2, FormCarnetDeNotes2);
      Application.CreateForm(TFormHint, FormHint);
      Application.CreateForm(TFormProgression, FormProgression);
      Application.Run;
      FormMarqueCdn.Destroy();
	  Exit;
    end;
  end;
    if (sub_00497C3C ) then
    begin//2
      //0060E290
      findwindow2('TFormCarnetDeNotes2');
    end//2
    else
    begin//2
      //0060E29C
      Application.MessageBox('Carnet de Notes version Personnelle','La version Etablissement de Carnet de Notes fonctionne actuellement sur votre ordinateur.'+#13+#10+'Les versions Personnelle et Etablissement ne peuvent fonctionner en même temps.'+#13+#10+'Fermez la version Etablissement et recommencez.' , $40{64});
    end;//2
    Application.Terminate;


  
end.
