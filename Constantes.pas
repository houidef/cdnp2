{***********************************************************
* Version Original V0.03 build 1                           *
* Decompiled by HOUIDEF AEK v20:59 mercredi, septembre 12, 2018*
* The disassembly process : 100%                            *
************************************************************}
unit Constantes;//_Unit53;

interface

uses
  SysUtils, Classes,UEnregistrement;
const 
    IdElevesPresents_ = 4;
    IdMin_ = 5;
    IdMax_ = 6;
    IdMoyenne_ = 2;
    IdEcartType_ = 7;
    IdNoteInfMoy_ = 8;
    IdNoteInfMoyClasse_ = 9;
    IdNoteSur = 11;
    IdCoefficient = 12;
    IdCompteMoyenne = 13;
    IdDateCreation = 14;
    IdCommentaire = 15;
    IdTypeNote = 16;
    IdOralEcrit = 17;
    IdNbrEleves__ = 18;
var 
 gvar_00617903,gvar_00617904,gvar_00617905 : integer;
 
implementation

Initialization
//00498DDC
  //00498DDC
    if (IsRegistred) then//00498E5B
      gvar_00617903 := 255
    else //00498E64
      gvar_00617903 := 3;

    gvar_00617904 := 0;
    gvar_00617905 := 0;
Finalization
end.