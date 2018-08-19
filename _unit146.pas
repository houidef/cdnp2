{***************************************
* Version Original V0.01
* Created by HOUIDEF AEK v.07.02.2018
***************************************}
unit _Unit146;

interface

uses
  SysUtils, Classes, URegistry;

    procedure WriteNumeroConseilEnCours(x:integer);//00501BB8
    function sub_00501C44:Boolean;//00501C44
    procedure afficherConseils(X:Boolean);//00501C70
    procedure getConseil(var x:string);//00501C9C
    procedure sub_00501CB4(var x:string);//00501CB4
    procedure sub_00501D14(var x:string);//00501D14
    procedure nombreConseils(var x:string);//00501D74
    procedure numeroConseilEnCours(var x:string);//00501D8C
var
   StringList: TStringList;
   CountGlobal,VnumeroConseilEnCours : integer;
   lvar_4: string;
implementation

//00501BB8
procedure WriteNumeroConseilEnCours(x:integer);
var
  lvar_4:AnsiString;
begin//0
  //00501BB8
    sub_00497660('numeroConseilEnCours', IntToStr(x), '\Options');
end;

//00501C44
function sub_00501C44:Boolean;
begin//0
  //00501C44

   result := sub_004971A0('afficherConseils', false);
end;//0

//00501C70
procedure afficherConseils(X:Boolean);
begin
  //00501C70
  sub_004974F0('afficherConseils', X);
end;

//00501C9C
procedure getConseil(var x:string);
begin
  x := StringList[VnumeroConseilEnCours];
end;

//00501CB4
procedure sub_00501CB4(var x:string);
begin
  //00501CB4
  if (StringList.Count - 1 > VnumeroConseilEnCours) then
    VnumeroConseilEnCours := VnumeroConseilEnCours + 1
  else
    VnumeroConseilEnCours := 0;//EAX

  WriteNumeroConseilEnCours(VnumeroConseilEnCours + 1);
  x := StringList[VnumeroConseilEnCours];

end;

//00501D14
procedure sub_00501D14(var x:string);
begin
  //00501D14
  if (VnumeroConseilEnCours > 0) then
    VnumeroConseilEnCours := VnumeroConseilEnCours - 1
  else
    VnumeroConseilEnCours := StringList.Count - 1;

   WriteNumeroConseilEnCours(VnumeroConseilEnCours + 1);
  x := StringList[VnumeroConseilEnCours];

end;

//00501D74
procedure nombreConseils(var x:string);
begin
  //00501D74
  x := IntToStr(StringList.Count);

end;

//00501D8C
procedure numeroConseilEnCours(var x:string);
begin
 //00501D8C
 sub_0049733C('numeroConseilEnCours', '1', '\Options', x);
end;

Initialization
 //CountGlobal := 1; //supprimer le 
 //CountGlobal := CountGlobal - 1;
 //if(CountGlobal >= 0) then begin
  StringList := TStringList.Create;
  StringList.Add('Carnet de Notes est un logiciel écrit PAR un enseignant POUR les enseignants.');
  StringList.Add('Si vous êtes bivalents, vous pouvez importer la liste de vos élèves depuis un autre fichier et éviter ainsi d''avoir à la retaper..'+#13+#10+#13+#10+'Voir "Liste des élèves - Importer depuis un fichier"');
  StringList.Add('Vous pouvez très souvent obtenir un menu surgissant en cliquant avec le bouton droit de la souris. Il vous donne accés plus rapidement aux commandes usuelles.');
  StringList.Add('Vous pouvez obtenir les moyennes sur 20, sur 10, ... sur tout ce que vous voulez !'+#13+#10+#13+#10+'Voir "Fichier - Configurer - Moyennes" ou cliquer avec le bouton droit sur le haut des colonnes "Moyenne brute" ou "Moyenne bulletin".');
  StringList.Add('Il est possible de créer une série de notes à partir de deux autres, par exemple en prenant la moyenne des deux ou le maximum des deux.'+#13+#10+#13+#10+'Voir "Séries de notes - Créer une série de notes à partir de 2 autres".');
  StringList.Add('Vous pouvez arrondir les moyennes au dixième de point, au quart de point, au demi-point ou ne pas les arrondir du tout.'+#13+#10+#13+#10+'Voir "Fichier - Configurer - Moyennes"');
  StringList.Add('Si l''organisation de l''année proposée par Carnet de Notes (Trimestres ou Semestres ou Mois) ne vous convient pas, vous pouvez créer vos propres périodes.'+#13+#10+#13+#10+'Voir "Fichier - Configurer - Types de périodes"');
  StringList.Add('Si vous êtes professeur principal ou C.P.E, vous pouvez créer les bulletins des élèves à partir des fichiers des différentes matières.'+#13+#10+#13+#10+'Voir "Outils - Créer les bulletins des élèves"');
  StringList.Add('Si vous êtes professeur principal, vous pouvez créer les fichiers Carnet de Notes pour vos collègues dans les différentes matières.'+#13+#10+#13+#10+'Voir "Fichier - Créer des fichiers pour les collègues"');
  StringList.Add('Si vous utilisez l''Internet avec vos collègues, vous pouvez envoyer vos fichiers par courrier électronique depuis Carnet de Notes. Il est ainsi possible de récupérer très rapidement les moyennes de vos élèves pour créer un bilan pour le conseil de classe.'+#13+#10+#13+#10+'Voir "Fichier - Envoyer le fichier par courrier électronique"');
  StringList.Add('Il est possible de relire les fichiers de l''ancienne version de Carnet de Notes (bêta 6x et 1.0).');
  StringList.Add('Il est possible de fusionner plusieurs fichiers de Carnet de Notes pour créer par exemple un bilan matière par matière des résultats d''une classe.'+#13+#10+#13+#10+'Voir "Outils - Fusionner plusieurs fichiers"');
  StringList.Add('Vous pouvez voir graphiquement la progression de vos élèves ou les situer par rapport à la classe.'+#13+#10+#13+#10+'Voir "Vues - Graphes"');
  StringList.Add('Pour éviter de perdre vos données, Carnet de Notes vous propose régulièrement de réaliser les sauvegardes de vos fichiers.'+#13+#10+#13+#10+'Voir "Outils - Sauvegarder vos fichiers" et "Fichier - Configurer - Au démarrage"');
  StringList.Add('Carnet de Notes propose quelques types de notes par défaut (Contrôle en classe, ...) mais vous pouvez créer ceux que vous voulez.'+#13+#10+#13+#10+'Voir "Fichier - Configurer - Types de notes"');
  StringList.Add('Vous pouvez ouvrir automatiquement à chaque démarrage de Carnet de Notes les fichiers que vous utilisez régulièrement.'+#13+#10+#13+#10+'Voir "Fichier - Configurer - Au démarrage"');
  StringList.Add('Il est possible d''obtenir une moyenne par type de notes. Par exemple la moyenne en Orthographe, la moyenne en Grammaire et la moyenne en Expression écrite.'+#13+#10+#13+#10+'Voir "Fichier - Configurer - Moyennes"');
  StringList.Add('Vous pouvez personnaliser en partie l''interface de Carnet de Notes.'+#13+#10+#13+#10+'Voir "Fichier - Configurer - Onglets"');
  StringList.Add('La coloration des notes permet de situer rapidement les résultats d''un élève. Elle peut être configurée comme vous voulez.'+#13+#10+#13+#10+'Voir "Fichier - Configurer - Couleur des notes"');
  StringList.Add('Quand vous tapez des notes, utilisez le pavé numérique : la touche . (point) fonctionne comme une virgule et simplifie votre saisie.');
  StringList.Add('Quand vous tapez des notes, la touche - (moins) du pavé numérique tape ''abs'' à votre place. La saisie des absences et la saisie des notes est plus rapide.');
  numeroConseilEnCours(lvar_4);
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