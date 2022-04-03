{***********************************************************
* Version Original V0.03 build 1                           *
* Decompiled by HOUIDEF AEK v 12:20 mercredi, ao�t 29, 2018*
* The disassembly process : 100%                           *
************************************************************}
unit UConseil;

interface

uses
  SysUtils, Classes, URegistry;

    procedure SetNumeroConseilEnCours(x:integer);//00501BB8
    function GetAfficherConseils:Boolean;//00501C44
    procedure SetAfficherConseils(X:Boolean);//00501C70
    procedure getConseil(var x:string);//00501C9C
    procedure IncNumeroConseilEnCours(var x:string);//00501CB4
    procedure DecNumeroConseilEnCours(var x:string);//00501D14
    procedure nombreConseils(var x:string);//00501D74
    procedure GetNumeroConseilEnCours(var x:string);//00501D8C
var
   StringList: TStringList;
   CountGlobal,VnumeroConseilEnCours : integer;
   lvar_4: string;
implementation

//00501BB8
procedure SetNumeroConseilEnCours(x:integer);
begin//0
  //00501BB8
    SetValueRegString('numeroConseilEnCours', IntToStr(x), '\Options');
end;

//00501C44
function GetAfficherConseils:Boolean;
begin//0
  //00501C44

   result := GetValueRegBool('afficherConseils', false);
end;//0

//00501C70
procedure SetAfficherConseils(X:Boolean);
begin
  //00501C70
  SetValueRegBool('afficherConseils', X);
end;

//00501C9C
procedure getConseil(var x:string);
begin
  x := StringList[VnumeroConseilEnCours];
end;

//00501CB4
procedure IncNumeroConseilEnCours(var x:string);
begin
  //00501CB4
  if (StringList.Count - 1 > VnumeroConseilEnCours) then
    VnumeroConseilEnCours := VnumeroConseilEnCours + 1
  else
    VnumeroConseilEnCours := 0;//EAX

  SetNumeroConseilEnCours(VnumeroConseilEnCours + 1);
  x := StringList[VnumeroConseilEnCours];

end;

//00501D14
procedure DecNumeroConseilEnCours(var x:string);
begin
  //00501D14
  if (VnumeroConseilEnCours > 0) then
    VnumeroConseilEnCours := VnumeroConseilEnCours - 1
  else
    VnumeroConseilEnCours := StringList.Count - 1;

   SetNumeroConseilEnCours(VnumeroConseilEnCours + 1);
  x := StringList[VnumeroConseilEnCours];

end;

//00501D74
procedure nombreConseils(var x:string);
begin
  //00501D74
  x := IntToStr(StringList.Count);

end;

//00501D8C
procedure GetNumeroConseilEnCours(var x:string);
begin
 //00501D8C
 GetValueRegString('numeroConseilEnCours', '1', '\Options', x);
end;

Initialization
 //CountGlobal := 1; //supprimer le 
 //CountGlobal := CountGlobal - 1;
 //if(CountGlobal >= 0) then begin
  StringList := TStringList.Create;
  StringList.Add('Carnet de Notes est un logiciel �crit PAR un enseignant POUR les enseignants.');
  StringList.Add('Si vous �tes bivalents, vous pouvez importer la liste de vos �l�ves depuis un autre fichier et �viter ainsi d''avoir � la retaper..'+#13+#10+#13+#10+'Voir "Liste des �l�ves - Importer depuis un fichier"');
  StringList.Add('Vous pouvez tr�s souvent obtenir un menu surgissant en cliquant avec le bouton droit de la souris. Il vous donne acc�s plus rapidement aux commandes usuelles.');
  StringList.Add('Vous pouvez obtenir les moyennes sur 20, sur 10, ... sur tout ce que vous voulez !'+#13+#10+#13+#10+'Voir "Fichier - Configurer - Moyennes" ou cliquer avec le bouton droit sur le haut des colonnes "Moyenne brute" ou "Moyenne bulletin".');
  StringList.Add('Il est possible de cr�er une s�rie de notes � partir de deux autres, par exemple en prenant la moyenne des deux ou le maximum des deux.'+#13+#10+#13+#10+'Voir "S�ries de notes - Cr�er une s�rie de notes � partir de 2 autres".');
  StringList.Add('Vous pouvez arrondir les moyennes au dixi�me de point, au quart de point, au demi-point ou ne pas les arrondir du tout.'+#13+#10+#13+#10+'Voir "Fichier - Configurer - Moyennes"');
  StringList.Add('Si l''organisation de l''ann�e propos�e par Carnet de Notes (Trimestres ou Semestres ou Mois) ne vous convient pas, vous pouvez cr�er vos propres p�riodes.'+#13+#10+#13+#10+'Voir "Fichier - Configurer - Types de p�riodes"');
  StringList.Add('Si vous �tes professeur principal ou C.P.E, vous pouvez cr�er les bulletins des �l�ves � partir des fichiers des diff�rentes mati�res.'+#13+#10+#13+#10+'Voir "Outils - Cr�er les bulletins des �l�ves"');
  StringList.Add('Si vous �tes professeur principal, vous pouvez cr�er les fichiers Carnet de Notes pour vos coll�gues dans les diff�rentes mati�res.'+#13+#10+#13+#10+'Voir "Fichier - Cr�er des fichiers pour les coll�gues"');
  StringList.Add('Si vous utilisez l''Internet avec vos coll�gues, vous pouvez envoyer vos fichiers par courrier �lectronique depuis Carnet de Notes. Il est ainsi possible de r�cup�rer tr�s rapidement les moyennes de vos �l�ves pour cr�er un bilan pour le conseil de classe.'+#13+#10+#13+#10+'Voir "Fichier - Envoyer le fichier par courrier �lectronique"');
  StringList.Add('Il est possible de relire les fichiers de l''ancienne version de Carnet de Notes (b�ta 6x et 1.0).');
  StringList.Add('Il est possible de fusionner plusieurs fichiers de Carnet de Notes pour cr�er par exemple un bilan mati�re par mati�re des r�sultats d''une classe.'+#13+#10+#13+#10+'Voir "Outils - Fusionner plusieurs fichiers"');
  StringList.Add('Vous pouvez voir graphiquement la progression de vos �l�ves ou les situer par rapport � la classe.'+#13+#10+#13+#10+'Voir "Vues - Graphes"');
  StringList.Add('Pour �viter de perdre vos donn�es, Carnet de Notes vous propose r�guli�rement de r�aliser les sauvegardes de vos fichiers.'+#13+#10+#13+#10+'Voir "Outils - Sauvegarder vos fichiers" et "Fichier - Configurer - Au d�marrage"');
  StringList.Add('Carnet de Notes propose quelques types de notes par d�faut (Contr�le en classe, ...) mais vous pouvez cr�er ceux que vous voulez.'+#13+#10+#13+#10+'Voir "Fichier - Configurer - Types de notes"');
  StringList.Add('Vous pouvez ouvrir automatiquement � chaque d�marrage de Carnet de Notes les fichiers que vous utilisez r�guli�rement.'+#13+#10+#13+#10+'Voir "Fichier - Configurer - Au d�marrage"');
  StringList.Add('Il est possible d''obtenir une moyenne par type de notes. Par exemple la moyenne en Orthographe, la moyenne en Grammaire et la moyenne en Expression �crite.'+#13+#10+#13+#10+'Voir "Fichier - Configurer - Moyennes"');
  StringList.Add('Vous pouvez personnaliser en partie l''interface de Carnet de Notes.'+#13+#10+#13+#10+'Voir "Fichier - Configurer - Onglets"');
  StringList.Add('La coloration des notes permet de situer rapidement les r�sultats d''un �l�ve. Elle peut �tre configur�e comme vous voulez.'+#13+#10+#13+#10+'Voir "Fichier - Configurer - Couleur des notes"');
  StringList.Add('Quand vous tapez des notes, utilisez le pav� num�rique : la touche . (point) fonctionne comme une virgule et simplifie votre saisie.');
  StringList.Add('Quand vous tapez des notes, la touche - (moins) du pav� num�rique tape ''abs'' � votre place. La saisie des absences et la saisie des notes est plus rapide.');
  GetNumeroConseilEnCours(lvar_4);
  VnumeroConseilEnCours := StrToInt(lvar_4) - 1;
 //end;}

Finalization
//00501DE8
    CountGlobal := CountGlobal + 1;
    //if ( CountGlobal <> 0 ) then
   // begin
      StringList.Free;
   // end;


end.