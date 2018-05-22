object FormOptions: TFormOptions
  Left = 533
  Top = 132
  BorderStyle = bsDialog
  Caption = 'Configurer '
  ClientHeight = 264
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  ShowHint = True
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButtonFermer: TSpeedButton
    Left = 110
    Top = 233
    Width = 510
    Height = 26
    Caption = '&Fermer'
    Flat = True
    Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C0060000232E0000232E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF063106063106063106063106FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF06310606730B23C02323C0234898482A732AFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF06730B06730B23C02323C02323C0234898
      4806730BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF06730B23C0232AC02A
      2AC02A23C02348984806730BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF06730B23
      C02358D45848D44840CA4031CA312AB62A48984806730BFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF2A732A06730B58D45858D45858D45858D45848D44840CA4023C02306730BFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF2A732A06730B58D45858D46058D45858D45823C02358D45858D4
      5858D45823C02306730BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFF06730B2A732A7BF4847BF4846AEA7358D45823C023
      06730B23C02358D45858D45858D45806730BFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF06730B58D4587BF4847BF4847BF4847B
      F48423C02306730BFFFFFF06730B58D45858D45858D45858D45806730BFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF48984858D4587BF4
      847BF48458D45806730B2A732AFFFFFFFFFFFF2A732A23C02358D4606AEA7358
      D45823C0232A732AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      48984823C02358D45823C02306730BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0673
      0B58D4587BF4847BF48458D458489848FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFF489848489848489848FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF06730B7BF4847BF4847BF48458D45806730BFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4898487BF4847BF4847BF484
      58D4582A732AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF48
      98487BF4847BF4846AEA7323C023489848FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF23C0237BF4848FF48F7BF48423C023489848FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF23C023ABFFABABFFAB7BF4
      8423C023489848FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      23C023ABFFABABFFAB7BF484489848FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFF23C023ABFFAB58D458489848FFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF23C023489848FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    OnClick = SpeedButtonFermerClick
  end
  object Label32: TLabel
    Left = 16
    Top = 84
    Width = 81
    Height = 13
    Caption = 'Couleur de début'
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 105
    Height = 264
    Align = alLeft
    Caption = 'Panel2'
    TabOrder = 0
    object Bevel2: TBevel
      Left = 8
      Top = 8
      Width = 89
      Height = 249
    end
    object Image1: TImage
      Left = 12
      Top = 12
      Width = 82
      Height = 242
      Stretch = True
    end
  end
  object PageControl1: TPageControl
    Left = 108
    Top = 9
    Width = 515
    Height = 218
    ActivePage = TabSheet1
    HotTrack = True
    MultiLine = True
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Au démarrage'
      object Bevel3: TBevel
        Left = 1
        Top = 0
        Width = 505
        Height = 171
      end
      object Label24: TLabel
        Left = 280
        Top = 64
        Width = 160
        Height = 13
        Caption = 'une sauvegarde de vos fichiers ...'
      end
      object optionsAuDemarrage: TRadioGroup
        Left = 10
        Top = 9
        Width = 231
        Height = 128
        Hint = 'Permet de contrôler la façon dont Carnet de Notes démarre'
        Caption = ' Ouverture des fichiers '
        ItemIndex = 0
        Items.Strings = (
          '&Démarrage normal (n'#39'ouvrir aucun fichier)'
          '&Charger les derniers fichiers consultés'
          '&Boîte de dialogue "Ouvrir fichier ..."')
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
      object CheckBox6: TCheckBox
        Left = 261
        Top = 20
        Width = 225
        Height = 17
        Hint = 'Afficher ou non la fenêtre des conseils au démarrage'
        Caption = '&Afficher la boîte de dialogue de bienvenue'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      object CheckBox8: TCheckBox
        Left = 261
        Top = 48
        Width = 228
        Height = 17
        Hint = 
          'Afficher ou non la boîte de dialogue de sauvegarde de vos fichie' +
          'rs'
        Caption = '&Rappeler qu'#39'il serait judicieux de faire'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = CheckBox8Click
      end
      object RadioGroup2: TRadioGroup
        Left = 280
        Top = 84
        Width = 185
        Height = 72
        Hint = 
          'Permet de préciser quand afficher la boîte de dialogue de sauveg' +
          'arde de vos fichiers'
        Caption = ' &Fréquence du rappel '
        ItemIndex = 0
        Items.Strings = (
          'Tous les 10 démarrages'
          'A chaque démarrage')
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
      end
      object CheckBoxVerificationMAJ: TCheckBox
        Left = 16
        Top = 136
        Width = 217
        Height = 33
        Hint = 'Vérifier ou non les mises à jour de Carnet de Notes sur Internet'
        Caption = 'Vérifier automatiquement les mises à jour'
        TabOrder = 4
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Divers'
      object Bevel1: TBevel
        Left = 1
        Top = 0
        Width = 505
        Height = 171
      end
      object Bevel16: TBevel
        Left = 16
        Top = 8
        Width = 265
        Height = 155
      end
      object Bevel19: TBevel
        Left = 298
        Top = 112
        Width = 195
        Height = 50
      end
      object Bevel20: TBevel
        Left = 298
        Top = 8
        Width = 195
        Height = 97
      end
      object Label25: TLabel
        Left = 312
        Top = 40
        Width = 75
        Height = 13
        Caption = 'Couleur du fond'
      end
      object CouleurFondFenetreInfos: TColorPickerButton
        Left = 393
        Top = 37
        Width = 40
        Height = 22
        CustomText = '&Autre couleur'
        DefaultText = '&Couleur par défaut'
        PopupSpacing = 8
        ShowSystemColors = False
        OnDefaultSelect = CouleurFondFenetreInfosDefaultSelect
      end
      object afficherBarreOutils: TCheckBox
        Left = 40
        Top = 13
        Width = 153
        Height = 17
        Hint = 'Afficher ou non la barre d'#39'outils'
        Caption = '&Afficher la barre d'#39'outils'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
      object tailleMaximumAuDemarrage: TCheckBox
        Left = 40
        Top = 38
        Width = 225
        Height = 17
        Hint = 
          'Permet de préciser si vous voulez que Carnet de Notes utilise to' +
          'ut l'#39'écran quand il démarre'
        Caption = '&Taille maximum de la fenêtre au démarrage'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      object afficherHeure: TCheckBox
        Left = 40
        Top = 62
        Width = 193
        Height = 17
        Hint = 'Afficher ou non l'#39'heure en bas de la fenêtre'
        Caption = 'Afficher &l'#39'heure'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
      object afficherDate: TCheckBox
        Left = 40
        Top = 87
        Width = 201
        Height = 17
        Hint = 'Afficher ou non la date en bas de la fenêtre'
        Caption = 'Afficher la &date'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
      end
      object CheckBox2: TCheckBox
        Left = 307
        Top = 130
        Width = 161
        Height = 17
        Hint = 'Créer ou non un fichier de sauvegarde quand on sauve'
        Caption = 'F&ichier .bak quand on sauve'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
      end
      object CheckBox11: TCheckBox
        Left = 307
        Top = 16
        Width = 182
        Height = 17
        Hint = 'Afficher ou non la fenêtre d'#39'informations.'
        Caption = 'A&fficher les fenêtres d'#39'informations'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
      end
      object CheckBoxAfficherR: TCheckBox
        Left = 40
        Top = 111
        Width = 209
        Height = 17
        Hint = 
          'Dans les listes d'#39'élèves, permet d'#39'indiquer si on ajoute (R) pou' +
          'r les élèves redoublants'
        Caption = 'Affich&er (R) pour les élèves redoublants'
        TabOrder = 6
      end
      object CheckBoxAfficherDatesDeNaissance: TCheckBox
        Left = 40
        Top = 136
        Width = 225
        Height = 17
        Hint = 
          'Afficher ou non la date de naissance des élèves dans les grilles' +
          ' de notes, de bilans, de graphes, ...'
        Caption = 'Afficher la date de naissance des élèves'
        TabOrder = 7
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Impression'
      object Bevel4: TBevel
        Left = 1
        Top = 0
        Width = 505
        Height = 171
      end
      object PageControl2: TPageControl
        Left = 3
        Top = 2
        Width = 501
        Height = 150
        ActivePage = TabSheet13
        TabOrder = 0
        TabPosition = tpBottom
        object TabSheet13: TTabSheet
          Caption = 'Sé&ries de notes'
          object Label21: TLabel
            Left = 43
            Top = -2
            Width = 239
            Height = 13
            Caption = 'Lignes à inclure à l'#39'impression des séries de notes :'
          end
          object SpeedButton18: TSpeedButton
            Left = 69
            Top = 100
            Width = 91
            Height = 20
            Hint = 'Sélectionner toutes les rubriques dans la liste'
            Caption = 'Tout &sélectionner'
            Flat = True
            ParentShowHint = False
            ShowHint = True
            OnClick = Button1Click
          end
          object SpeedButton19: TSpeedButton
            Left = 160
            Top = 100
            Width = 101
            Height = 20
            Hint = 'Désélectionner toutes les rubriques dans la liste'
            Caption = 'Tout &désélectionner'
            Flat = True
            ParentShowHint = False
            ShowHint = True
            OnClick = Button2Click
          end
          object Label40: TLabel
            Left = 354
            Top = 40
            Width = 51
            Height = 13
            Caption = 'des élèves'
          end
          object Label41: TLabel
            Left = 352
            Top = 104
            Width = 48
            Height = 13
            Caption = 'moyennes'
          end
          object Label29: TLabel
            Left = 354
            Top = 71
            Width = 55
            Height = 13
            Caption = 'redoublants'
          end
          object CheckListBox1: TCheckListBox
            Left = 1
            Top = 13
            Width = 324
            Height = 85
            Hint = 'Ce qu'#39'il faut inclure quand on imprime des séries de notes'
            Columns = 2
            ItemHeight = 13
            TabOrder = 0
          end
          object CheckBox1: TCheckBox
            Left = 333
            Top = 2
            Width = 120
            Height = 17
            Hint = 'Inclure la colonne de numérotation des élèves'
            Caption = '&Numéroter les élèves'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
          end
          object CheckBox22: TCheckBox
            Left = 333
            Top = 88
            Width = 175
            Height = 17
            Hint = 'Inclure ou pas la colonne des moyennes à la suite des notes'
            Caption = '&Inclure la colonne des'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
          end
          object CheckBox29: TCheckBox
            Left = 333
            Top = 23
            Width = 165
            Height = 17
            Hint = 
              'Imprimer ou non la date de naissance des élèves dans la colonne ' +
              'des noms et prénoms'
            Caption = 'Im&primer la date de naissance'
            TabOrder = 3
          end
          object CheckBox33: TCheckBox
            Left = 333
            Top = 55
            Width = 153
            Height = 17
            Hint = 
              'Ajouter ou non (R) aux noms des élèves pour les élèves redoublan' +
              'ts'
            Caption = 'I&mprimer (R) pour les élèves'
            TabOrder = 4
          end
        end
        object TabSheet14: TTabSheet
          Caption = '&Bilans'
          ImageIndex = 1
          object Label23: TLabel
            Left = 26
            Top = -2
            Width = 195
            Height = 13
            Caption = 'Lignes à inclure à l'#39'impression des bilans :'
          end
          object SpeedButton20: TSpeedButton
            Left = 17
            Top = 99
            Width = 109
            Height = 20
            Hint = 'Sélectionner toutes les rubriques dans la liste'
            Caption = 'Tout &sélectionner'
            Flat = True
            OnClick = Button3Click
          end
          object SpeedButton21: TSpeedButton
            Left = 128
            Top = 99
            Width = 113
            Height = 20
            Hint = 'Désélectionner toutes les rubriques dans la liste'
            Caption = 'Tout &désélectionner'
            Flat = True
            OnClick = Button4Click
          end
          object CheckListBox2: TCheckListBox
            Left = 16
            Top = 13
            Width = 225
            Height = 83
            Hint = 'Ce qu'#39'il faut inclure quand on imprime des bilans'
            ItemHeight = 13
            TabOrder = 0
          end
          object CheckBox7: TCheckBox
            Left = 259
            Top = -2
            Width = 201
            Height = 17
            Hint = 'Imprimer une colonne de moyennes par type de notes'
            Caption = '&Inclure une colonne par type de notes'
            TabOrder = 1
          end
          object CheckBox9: TCheckBox
            Left = 259
            Top = 13
            Width = 129
            Height = 17
            Hint = 'Inclure la colonne de numérotation des élèves'
            Caption = '&Numéroter les élèves'
            TabOrder = 2
          end
          object RadioGroup1: TRadioGroup
            Left = 282
            Top = 90
            Width = 209
            Height = 30
            Hint = 'Type de classement des moyennes'
            Caption = ' &Classement des moyennes bulletin '
            Columns = 2
            ItemIndex = 0
            Items.Strings = (
              'Ascendant'
              'Descendant')
            TabOrder = 3
          end
          object CheckBox23: TCheckBox
            Left = 259
            Top = 60
            Width = 190
            Height = 17
            Hint = 'Imprimer ou non la colonne de classement en dernière colonne'
            Caption = 'I&mprimer la colonne classement'
            TabOrder = 4
            OnClick = CheckBox23Click
          end
          object CheckBox28: TCheckBox
            Left = 259
            Top = 29
            Width = 213
            Height = 17
            Hint = 
              'Imprimer ou non la date de naissance des élèves dans la colonne ' +
              'des noms et prénoms'
            Caption = 'Im&primer la date de naissance des élèves'
            TabOrder = 5
          end
          object CheckBox32: TCheckBox
            Left = 259
            Top = 44
            Width = 213
            Height = 17
            Hint = 
              'Ajouter ou non (R) aux noms des élèves pour les élèves redoublan' +
              'ts'
            Caption = 'Imp&rimer (R) pour les élèves redoublants'
            TabOrder = 6
          end
          object CheckBox35: TCheckBox
            Left = 259
            Top = 75
            Width = 190
            Height = 17
            Hint = 'Imprimer ou non les colonnes des moyennes '#39'Ecrit'#39' et '#39'Oral'#39
            Caption = 'Imprim&er les moyennes '#39'Ecrit'#39' et '#39'Oral'#39
            TabOrder = 7
            OnClick = CheckBox23Click
          end
        end
        object TabSheet15: TTabSheet
          Caption = '&Grille vierge'
          ImageIndex = 2
          object Label35: TLabel
            Left = 46
            Top = -2
            Width = 231
            Height = 13
            Caption = 'Lignes à inclure à l'#39'impression des grilles vierges :'
          end
          object SpeedButton44: TSpeedButton
            Left = 61
            Top = 100
            Width = 97
            Height = 20
            Hint = 'Sélectionner toutes les rubriques dans la liste'
            Caption = 'Tout &sélectionner'
            Flat = True
            OnClick = SpeedButton44Click
          end
          object SpeedButton45: TSpeedButton
            Left = 159
            Top = 100
            Width = 105
            Height = 20
            Hint = 'Désélectionner toutes les rubriques dans la liste'
            Caption = 'Tout &désélectionner'
            Flat = True
            OnClick = SpeedButton45Click
          end
          object Label36: TLabel
            Left = 336
            Top = 6
            Width = 102
            Height = 13
            Caption = 'Largeur des colonnes'
          end
          object Label39: TLabel
            Left = 350
            Top = 71
            Width = 51
            Height = 13
            Caption = 'des élèves'
          end
          object Label28: TLabel
            Left = 350
            Top = 105
            Width = 55
            Height = 13
            Caption = 'redoublants'
          end
          object CheckListBox3: TCheckListBox
            Left = 1
            Top = 13
            Width = 324
            Height = 85
            Hint = 'Ce qu'#39'il faut inclure quand on imprime une grille vierge'
            Columns = 2
            ItemHeight = 13
            TabOrder = 0
          end
          object CheckBox13: TCheckBox
            Left = 331
            Top = 31
            Width = 120
            Height = 17
            Hint = 'Inclure la colonne de numérotation des élèves'
            Caption = '&Numéroter les élèves'
            TabOrder = 1
          end
          object Edit8: TEdit
            Left = 441
            Top = 2
            Width = 24
            Height = 21
            Hint = 'Largeur de chaque colonne de la grille'
            Enabled = False
            TabOrder = 2
            Text = '5'
          end
          object UpDown3: TUpDown
            Left = 466
            Top = 5
            Width = 16
            Height = 17
            Hint = 'Permet de choisir la largeur'
            Min = 5
            Max = 50
            Position = 5
            TabOrder = 3
            Wrap = False
            OnClick = UpDown3Click
          end
          object CheckBox27: TCheckBox
            Left = 331
            Top = 55
            Width = 213
            Height = 17
            Hint = 
              'Imprimer ou non la date de naissance des élèves dans la colonne ' +
              'des noms et prénoms'
            Caption = '&Imprimer la date de naissance'
            TabOrder = 4
          end
          object CheckBox31: TCheckBox
            Left = 331
            Top = 88
            Width = 205
            Height = 17
            Hint = 
              'Ajouter ou non (R) aux noms des élèves pour les élèves redoublan' +
              'ts'
            Caption = 'I&mprimer (R) pour les élèves'
            TabOrder = 5
          end
        end
        object TabSheet16: TTabSheet
          Caption = 'Appréciations'
          ImageIndex = 3
          object CheckBox24: TCheckBox
            Left = 132
            Top = 16
            Width = 120
            Height = 17
            Hint = 'Inclure la colonne de numérotation des élèves'
            Caption = '&Numéroter les élèves'
            TabOrder = 0
          end
          object CheckBox26: TCheckBox
            Left = 132
            Top = 48
            Width = 213
            Height = 17
            Hint = 
              'Imprimer ou non la date de naissance des élèves dans la colonne ' +
              'des noms et prénoms'
            Caption = '&Imprimer la date de naissance des élèves'
            TabOrder = 1
          end
          object CheckBox30: TCheckBox
            Left = 132
            Top = 80
            Width = 213
            Height = 17
            Hint = 
              'Ajouter ou non (R) aux noms des élèves pour les élèves redoublan' +
              'ts'
            Caption = 'I&mprimer (R) pour les élèves redoublants'
            TabOrder = 2
          end
        end
      end
      object CheckBox12: TCheckBox
        Left = 275
        Top = 151
        Width = 226
        Height = 17
        Hint = 'Utiliser la couleur à l'#39'impression'
        Caption = 'Utiliser la coloration des notes à l'#39'impression'
        TabOrder = 1
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Types de notes'
      object Bevel5: TBevel
        Left = 1
        Top = 0
        Width = 505
        Height = 171
      end
      object Label3: TLabel
        Left = 365
        Top = 8
        Width = 110
        Height = 13
        Caption = '&Nom du type de notes :'
        FocusControl = Edit1
      end
      object SpeedButton22: TSpeedButton
        Left = 361
        Top = 50
        Width = 137
        Height = 26
        Hint = 
          'Ajouter à la liste le type de notes écrit dans le champ du dessu' +
          's'
        Caption = '&Ajouter à la liste'
        Enabled = False
        Flat = True
        Glyph.Data = {
          B60D0000424DB60D000000000000360000002800000030000000180000000100
          180000000000800D0000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E
          2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C
          4E2E1C4E2E1C4E2E1C4E2E1C4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF6C6C6C6C6C6C6C6C6C6C6C6C6B6B6B6B6B6B6B6B6B6B6B6B6C
          6C6C6C6C6C6C6C6C6C6C6C6B6B6B6C6C6C6C6C6C6C6C6CFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF4E2E1CD0BAADA48B7AA48B7AA48B7AA48B7AA48B
          7AA48B7AA48B7AA48B7AA48B7AA48B7AA48B7AA48B7AA48B7AA48B7A4E2E1CFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6B6B6BD8D8D8B9B9B9B9B9B9
          B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9
          B9B9B9B96C6C6CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E2E1CD0BAADEB
          E3DEEAE0DAE9DDD8E6DAD4E5D7D0E2D3CBE0CFC7DDCCC2DAC9BFD8C5BAD5C1B6
          D3BDB2D0BAADD0BAADA48B7A4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF6C6C6CD8D8D8F0F0F0EEEEEEEDEDEDEBEBEBE9E9E9E7E7E7E5E5E5E3E3E3E1
          E1E1DFDFDFDDDDDDDADADAD8D8D8D8D8D8B9B9B96C6C6CFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF4E2E1CD0BAADF0EAE6EEE6E2EBE3DEEAE0DAE9DDD8E6DAD4E5D7
          D0E2D3CBE0CFC7DDCCC2DAC9BFD8C5BAD5C1B6D3BDB2D0BAADA48B7A4E2E1CFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF6C6C6CD8D8D8F4F4F4F2F2F2F0F0F0EEEEEE
          EDEDEDEBEBEBE9E9E9E7E7E7E5E5E5E3E3E3E1E1E1DFDFDFDDDDDDDADADAD8D8
          D8B9B9B96B6B6BFFFFFFFFFFFFFFFFFFFFFFFF4E2E1CD0BAADF4EFEDF3EDEAF0
          EAE6EEE6E2EBE3DEEAE0DAE9DDD8E6DAD4E5D7D0E2D3CBE0CFC7DDCCC2DAC9BF
          D8C5BAD5C1B6D3BDB2A48B7A4E2E1CFFFFFFFFFFFFFFFFFFFFFFFF6B6B6BD8D8
          D8F7F7F7F6F6F6F4F4F4F2F2F2F1F1F1EEEEEEEDEDEDEBEBEBE9E9E9E7E7E7E5
          E5E5E3E3E3E1E1E1DFDFDFDCDCDCDADADAB9B9B96C6C6CFFFFFFFFFFFFFFFFFF
          4E2E1CD0BAADFAF6F4F7F3F0A48B7AF3EDEAF0EAE6EEE6E2EBE3DEEAE0DAE9DD
          D8E6DAD4E5D7D0E2D3CBE0CFC7DDCCC2DAC9BFD8C5BAD5C1B6A48B7A4E2E1CFF
          FFFFFFFFFFFFFFFF6C6C6CD8D8D8FAFAFAF9F9F9B9B9B9F6F6F6F4F4F4F2F2F2
          F0F0F0EEEEEEEDEDEDEBEBEBE9E9E9E7E7E7E5E5E5E3E3E3E1E1E1DFDFDFDCDC
          DCB9B9B96B6B6BFFFFFFFFFFFF997F6EFFFFFFFEFCFCFBFAF84E2E1CF7F3F0A4
          8B7AF3EDEAF0EAE6EEE6E2EBE3DEEAE0DAE9DDD8E6DAD4E5D7D0E2D3CBE0CFC7
          DDCCC2DAC9BFD8C5BAA48B7A4E2E1CFFFFFFFFFFFFB1B1B1FFFFFFFEFEFEFDFD
          FD6C6C6CF9F9F9B9B9B9F6F6F6F4F4F4F2F2F2F0F0F0EEEEEEEDEDEDECECECE9
          E9E9E7E7E7E5E5E5E3E3E3E0E0E0DEDEDEB9B9B96C6C6CFFFFFFFFFFFFFFFFFF
          997F6EFFFFFFFEFCFCFBFAF84E2E1CF7F3F0F4EFEDF3EDEAF0EAE6EEE6E2EBE3
          DEEAE0DAE9DDD8E6DAD4E5D7D0E2D3CBE0CFC7DDCCC2DAC9BFA48B7A4E2E1CFF
          FFFFFFFFFFFFFFFFB1B1B1FFFFFFFEFEFEFCFCFC6C6C6CF9F9F9F7F7F7F5F5F5
          F4F4F4F2F2F2F0F0F0EEEEEEEDEDEDEBEBEBE9E9E9E7E7E7E5E5E5E3E3E3E1E1
          E1B9B9B96C6C6CFFFFFFFFFFFFFFFFFFFFFFFF997F6EFFFFFFFEFCFCFBFAF8FA
          F6F4F7F3F0F4EFEDF3EDEAF0EAE6EEE6E2EBE3DEEAE0DAE9DDD8E6DAD4E5D7D0
          E2D3CBE0CFC7DDCCC2A48B7A4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFB1B1B1FFFF
          FFFEFEFEFCFCFCFBFBFBF9F9F9F7F7F7F5F5F5F4F4F4F2F2F2F0F0F0EEEEEEED
          EDEDECECECE9E9E9E7E7E7E5E5E5E3E3E3B9B9B96B6B6BFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF997F6EFFFFFFFEFCFCFBFAF8FAF6F4F7F3F0F4EFEDF3EDEAF0EA
          E6EEE6E2EBE3DEEAE0DAE9DDD8E6DAD4E5D7D0E2D3CBE0CFC7A48B7A4E2E1CFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFB1B1B1FFFFFFFEFEFEFCFCFCFBFBFBF9F9F9
          F7F7F7F6F6F6F4F4F4F2F2F2F0F0F0EEEEEEEDEDEDECECECE9E9E9E6E6E6E5E5
          E5B9B9B96B6B6BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF997F6EFFFFFFFE
          FCFCFBFAF8FAF6F4F7F3F0F4EFEDF3EDEAF0EAE6EEE6E2EBE3DE004500004500
          004500E5D7D0E2D3CBA48B7A4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFB1B1B1FFFFFFFEFEFEFCFCFCFBFBFBF9F9F9F7F7F7F5F5F5F4F4F4F2F2F2F1
          F1F1787878777777777777E9E9E9E7E7E7B9B9B96C6C6CFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF997F6EFFFFFFFEFCFCFBFAF8FAF6F4F7F3F0F4EF
          EDF3EDEAF0EAE6EEE6E200450010A51D004500E6DAD4E5D7D0E2D3CB4E2E1CFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB1B1B1FFFFFFFEFEFEFDFDFD
          FBFBFBF9F9F9F7F7F7F5F5F5F3F3F3F2F2F2787878B9B9B9777777EBEBEBE9E9
          E9E7E7E76C6C6CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99
          7F6E977D6B9579689277669074638C725F8A6E5D886C5A8669580045001CB833
          0045007D5E4D7A5C4B785A48765745FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFB1B1B1AFAFAFACACACABABABA9A9A9A7A7A7A5A5A5A3A3A3A1
          A1A1777777C5C5C5787878989898979797959595929292FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF0045000045000045000045002DD352004500004500004500004500FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF787878777777777777777777D5D5D57878787777777777
          77777777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00450045F68045F68045F68039E569
          2DD35221C13D16AF28004500FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF777777EAEAEAEA
          EAEAEAEAEAE0E0E0D5D5D5CACACAC0C0C0787878FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00450000450000450000450045F680004500004500004500004500FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF777777787878777777777777EAEAEA7777777878787777
          77777777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00450045F680
          004500FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF787878EAEAEA777777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF00450045F680004500FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF787878EAEAEA777777FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF004500004500
          004500FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF787878777777777777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        NumGlyphs = 2
        OnClick = BitBtn3Click
      end
      object SpeedButton23: TSpeedButton
        Left = 361
        Top = 78
        Width = 137
        Height = 26
        Hint = 'Supprimer de la liste le type de notes sélectionné'
        Caption = '&Supprimer de la liste'
        Enabled = False
        Flat = True
        Glyph.Data = {
          B60D0000424DB60D000000000000360000002800000030000000180000000100
          180000000000800D0000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E
          2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C
          4E2E1C4E2E1C4E2E1C4E2E1C4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C
          6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6CFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF4E2E1CD0BAADA48B7AA48B7AA48B7AA48B7AA48B
          7AA48B7AA48B7AA48B7AA48B7AA48B7AA48B7AA48B7AA48B7AA48B7A4E2E1CFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6C6C6CD8D8D8B9B9B9B9B9B9
          B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9
          B9B9B9B96B6B6BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E2E1CD0BAADEB
          E3DEEAE0DAE9DDD8E6DAD4E5D7D0E2D3CBE0CFC7DDCCC2DAC9BFD8C5BAD5C1B6
          D3BDB2D0BAADD0BAADA48B7A4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF6C6C6CD8D8D8F0F0F0EEEEEEEDEDEDECECECE9E9E9E7E7E7E5E5E5E3E3E3E0
          E0E0DFDFDFDCDCDCDADADAD8D8D8D8D8D8B9B9B96C6C6CFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF4E2E1CD0BAADF0EAE6EEE6E2EBE3DEEAE0DAE9DDD8E6DAD4E5D7
          D0E2D3CBE0CFC7DDCCC2DAC9BFD8C5BAD5C1B6D3BDB2D0BAADA48B7A4E2E1CFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF6C6C6CD8D8D8F4F4F4F2F2F2F1F1F1EEEEEE
          EDEDEDEBEBEBE9E9E9E7E7E7E5E5E5E3E3E3E1E1E1DFDFDFDDDDDDDADADAD8D8
          D8B9B9B96C6C6CFFFFFFFFFFFFFFFFFFFFFFFF4E2E1CD0BAADF4EFEDF3EDEAF0
          EAE6EEE6E2EBE3DEEAE0DAE9DDD8E6DAD4E5D7D0E2D3CBE0CFC7DDCCC2DAC9BF
          D8C5BAD5C1B6D3BDB2A48B7A4E2E1CFFFFFFFFFFFFFFFFFFFFFFFF6B6B6BD8D8
          D8F7F7F7F5F5F5F4F4F4F2F2F2F0F0F0EEEEEEEDEDEDEBEBEBE9E9E9E7E7E7E5
          E5E5E3E3E3E1E1E1DFDFDFDCDCDCDADADAB9B9B96C6C6CFFFFFFFFFFFFFFFFFF
          4E2E1CD0BAADFAF6F4F7F3F0A48B7AF3EDEAF0EAE6EEE6E2EBE3DEEAE0DAE9DD
          D8E6DAD4E5D7D0E2D3CBE0CFC7DDCCC2DAC9BFD8C5BAD5C1B6A48B7A4E2E1CFF
          FFFFFFFFFFFFFFFF6C6C6CD8D8D8FBFBFBF9F9F9B9B9B9F6F6F6F4F4F4F2F2F2
          F1F1F1EEEEEEEDEDEDECECECE9E9E9E7E7E7E5E5E5E3E3E3E0E0E0DFDFDFDCDC
          DCB9B9B96C6C6CFFFFFFFFFFFF997F6EFFFFFFFEFCFCFBFAF84E2E1CF7F3F0A4
          8B7AF3EDEAF0EAE6EEE6E2EBE3DEEAE0DAE9DDD8E6DAD4E5D7D0E2D3CBE0CFC7
          DDCCC2DAC9BFD8C5BAA48B7A4E2E1CFFFFFFFFFFFFB1B1B1FFFFFFFEFEFEFCFC
          FC6B6B6BF9F9F9B9B9B9F6F6F6F4F4F4F2F2F2F0F0F0EEEEEEEDEDEDEBEBEBE9
          E9E9E7E7E7E5E5E5E3E3E3E0E0E0DFDFDFB9B9B96B6B6BFFFFFFFFFFFFFFFFFF
          997F6EFFFFFFFEFCFCFBFAF84E2E1CF7F3F0F4EFEDF3EDEAF0EAE6EEE6E2EBE3
          DEEAE0DAE9DDD8E6DAD4E5D7D0E2D3CBE0CFC7DDCCC2DAC9BFA48B7A4E2E1CFF
          FFFFFFFFFFFFFFFFB1B1B1FFFFFFFEFEFEFCFCFC6C6C6CF9F9F9F7F7F7F6F6F6
          F4F4F4F2F2F2F0F0F0EEEEEEEDEDEDEBEBEBE9E9E9E7E7E7E5E5E5E3E3E3E1E1
          E1B9B9B96B6B6BFFFFFFFFFFFFFFFFFFFFFFFF997F6EFFFFFFFEFCFCFBFAF8FA
          F6F4F7F3F0F4EFEDF3EDEAF0EAE6EEE6E2EBE3DEEAE0DAE9DDD8E6DAD4E5D7D0
          E2D3CBE0CFC7DDCCC2A48B7A4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFB1B1B1FFFF
          FFFEFEFEFDFDFDFBFBFBF9F9F9F7F7F7F5F5F5F4F4F4F2F2F2F1F1F1EEEEEEED
          EDEDECECECE9E9E9E6E6E6E5E5E5E3E3E3B9B9B96C6C6CFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF997F6EFFFFFFFEFCFCFBFAF8FAF6F4F7F3F0F4EFEDF3EDEAF0EA
          E6EEE6E2EBE3DEEAE0DAE9DDD8E6DAD4E5D7D0E2D3CBE0CFC7A48B7A4E2E1CFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFB1B1B1FFFFFFFEFEFEFDFDFDFAFAFAF9F9F9
          F7F7F7F6F6F6F4F4F4F2F2F2F0F0F0EEEEEEEDEDEDECECECE9E9E9E7E7E7E5E5
          E5B9B9B96C6C6CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF997F6EFFFFFFFE
          FCFCFBFAF8FAF6F4F7F3F0F4EFEDF3EDEAF0EAE6EEE6E2EBE3DEEAE0DAE9DDD8
          E6DAD4E5D7D0E2D3CBA48B7A4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFB1B1B1FFFFFFFEFEFEFDFDFDFBFBFBF9F9F9F7F7F7F6F6F6F4F4F4F2F2F2F0
          F0F0EEEEEEEDEDEDECECECE9E9E9E6E6E6B9B9B96C6C6CFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF997F6EFFFFFFFEFCFCFBFAF8FAF6F4F7F3F0F4EF
          EDF3EDEAF0EAE6EEE6E2EBE3DEEAE0DAE9DDD8E6DAD4E5D7D0E2D3CB4E2E1CFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB1B1B1FFFFFFFEFEFEFDFDFD
          FBFBFBF9F9F9F7F7F7F6F6F6F4F4F4F2F2F2F1F1F1EEEEEEEDEDEDEBEBEBE9E9
          E9E7E7E76B6B6BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99
          7F6E977D6B9579689277669074638C725F8A6E5D886C5A866958836755816452
          7F62507D5E4D7A5C4B785A48765745FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFB1B1B1AFAFAFADADADABABABA9A9A9A7A7A7A5A5A5A3A3A3A1
          A1A19F9F9F9D9D9D9A9A9A989898979797959595929292FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF000080000080000080000080000080000080000080000080FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF7070707070707070707070707272727070707070
          70707070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000080677DFA506AFC2849FE
          2849FE092BFE001EFF000080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF707070C6
          C6C6C0C0C0B4B4B4B3B3B3A8A8A8A6A6A6707070FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF000080000080000080000080000080000080000080000080FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF7070707070707070707070707070707272727070
          70707070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        NumGlyphs = 2
        OnClick = BitBtn4Click
      end
      object SpeedButton24: TSpeedButton
        Left = 361
        Top = 106
        Width = 137
        Height = 26
        Hint = 'Revenir à la liste par défaut'
        Caption = '&Liste par défaut'
        Flat = True
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000011170000111700000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFF0045000045000045000045000045000045000045000045000045
          00004500004500004500004500004500004500004500004500004500004500FF
          FFFFFFFFFFFFFFFF101310101310FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF008000004500FFFFFFFFFFFF101310FFFFFF55555510131000450000450000
          4500004500004500004500004500004500004500004500004500004500004500
          004500004500004500004500004500FFFFFFFFFFFF787A7D1013101013100FA4
          1C0D9F180B9C1409971007930C058F09038B0602870300820100800000800000
          8000008000008000008000008000004500C26600C26600FFFFFFFFFFFF101310
          FFFFFF5555551013100FA41C0D9F180B9C1409971007930C058F09038B060287
          03008201008000008000008000008000008000008000004500F6B877F6B877C2
          6600FFFFFF787A7D10131010131014AC2511A7200FA41C0D9F180B9C14099710
          07930C058F09038B060287030082010080000080000080000080000080000045
          00F6B877F6B877C26600FFFFFF101310FFFFFF55555510131014AC2511A7200F
          A41C0D9F180B9C1409971007930C058F09038B06028703008201008000008000
          008000008000004500F6B877F6B877C26600FFFFFF787A7D10131010131019B5
          2F17B12A14AC2511A7200FA41C0D9F180B9C1409971007930C058F09038B0602
          8703008201008000008000008000004500F6D79CF6D79CC26600FFFFFF101310
          FFFFFF55555510131019B52F17B12A14AC2511A7200FA41C0D9F180B9C140997
          1007930C058F09038B06028703008201008000008000004500C26600C26600FF
          FFFFFFFFFF787A7D10131010131020C03B1CBA3519B52F17B12A14AC2511A720
          0FA41C0D9F180B9C1409971007930C058F09038B060287030082010080000045
          00004500004500FFFFFFFFFFFF101310FFFFFF55555510131020C03B1CBA3519
          B52F17B12A14AC2511A7200FA41C0D9F180B9C1409971007930C058F09038B06
          0287030082010045001CB8451CB845004500FFFFFF787A7D10131010131027CA
          4823C54120C03B1CBA3519B52F17B12A14AC2511A7200FA41C0D9F180B9C1409
          971007930C058F09038B060287030045001CB8451CB845004500FFFFFF101310
          FFFFFF55555510131027CA4823C54120C03B1CBA3519B52F17B12A14AC2511A7
          200FA41C0D9F180B9C1409971007930C058F09038B060045001CB8451CB84500
          4500FFFFFF787A7D1013101013102ED5562BD04F27CA4823C54120C03B1CBA35
          19B52F17B12A14AC2511A7200FA41C0D9F180B9C1409971007930C058F090045
          0045F67745F677004500FFFFFF101310FFFFFF5555551013102ED5562BD04F27
          CA4823C54120C03B1CBA3519B52F17B12A14AC2511A7200FA41C0D9F180B9C14
          09971007930C004500004500004500FFFFFFFFFFFF787A7D10131010131036E1
          6533DC5D2ED5562BD04F27CA4823C54120C03B1CBA3519B52F17B12A14AC2511
          A7200FA41C0D9F180B9C14099710004500004577004577FFFFFFFFFFFF101310
          FFFFFF55555510131036E16533DC5D2ED5562BD04F27CA4823C54120C03B1CBA
          3519B52F17B12A14AC2511A7200FA41C0D9F180B9C1400450000B8F600B8F600
          4577FFFFFF787A7D1013101013103FED733AE66C36E16533DC5D2ED5562BD04F
          27CA4823C54120C03B1CBA3519B52F17B12A14AC2511A7200FA41C0D9F180045
          0000B8F600B8F6004577FFFFFF101310FFFFFF5555551013103FED733AE66C36
          E16533DC5D2ED5562BD04F27CA4823C54120C03B1CBA3519B52F17B12A14AC25
          11A7200FA41C00450000B8F600B8F6004577FFFFFF787A7D10131010131045F6
          8042F27A3FED733AE66C36E16533DC5D2ED5562BD04F27CA4823C54120C03B1C
          BA3519B52F17B12A14AC2511A72000450000F6F600F6F6004577FFFFFF101310
          FFFFFF55555510131045F68042F27A3FED733AE66C36E16533DC5D2ED5562BD0
          4F27CA4823C54120C03B1CBA3519B52F17B12A14AC25004500004577004577FF
          FFFFFFFFFF787A7D10131010131045F68045F68045F68042F27A3FED733AE66C
          36E16533DC5D2ED5562BD04F27CA4823C54120C03B1CBA3519B52F17B12A0045
          00004500004500FFFFFFFFFFFFFFFFFFFFFFFF00800000800000800000800000
          8000008000008000008000008000008000008000008000008000008000008000
          008000008000008000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = BitBtn5Click
      end
      object SpeedButtonAjouterListeTypesDeNotes: TSpeedButton
        Left = 362
        Top = 138
        Width = 30
        Height = 26
        Hint = 'Ajouter des types de notes contenus dans un fichier texte'
        Flat = True
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000011170000111700000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA48B7A4E2E1C4E2E
          1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E
          2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          A48B7AE9DDD7C7AD9EC7AD9EC7AD9EC7AD9EC7AD9EC7AD9EC7AD9EC7AD9EC7AD
          9EC7AD9EC7AD9E4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFA48B7AEAE0DAE9DDD7E6D9D3E3D5CEE1D1CADECEC5DCCAC0
          D9C6BCD7C2B7D3BFB2D0BBAFC7AD9E4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA48B7AEBE3DEEAE0DAE9DDD7E6D9D3E3
          D5CEE1D1CADECEC5030303D9C6BCD7C2B7D3BFB2C7AD9E4E2E1CFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA48B7AEEE6E2EBE3
          DEEAE0DAE9DDD7E6D9D3E3D5CE030303030303030303D9C6BCD7C2B7C7AD9E4E
          2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          A48B7AF0EAE6EEE6E2EBE3DEEAE0DAE9DDD70303030303030303030303030303
          03D9C6BCC7AD9E4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFA48B7AF3EEEAF0EAE6EEE6E2EBE3DEEAE0DAE9DDD7E6D9D3
          030303E1D1CADECEC5DCCAC0C7AD9E4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA48B7AF6F0EEF3EEEAF0EAE6EEE6E2EB
          E3DEEAE0DAE9DDD7030303E3D5CEE1D1CADECEC5C7AD9E4E2E1CFFFFFFFFFFFF
          522A1B522A1B522A1B522A1B522A1B522A1B522A1B522A1B522A1B522A1B522A
          1B522A1B522A1BEEE6E2EBE3DEC7AD9E030303E6D9D3E3D5CEE1D1CAC7AD9E4E
          2E1CFFFFFFC05754C47F79BC757056402FAF9E96B4AAA5BBB0AABBB0AABBB0AA
          735B4C7B2B287B2B287B2B28522A1BF0EAE6030303030303EAE0DAE9DDD7E6D9
          D3E3D5CEC7AD9E4E2E1CFFFFFFC05754CB8883C47F7956402F1A0F0B44362DFF
          FFFFFFFFFFEBDCD4735B4C7F2E2C7B2B287B2B28522A1BF3EEEAF0EAE6EEE6E2
          EBE3DEEAE0DAE9DDD7E6D9D3C7AD9E4E2E1CFFFFFFC05754D3928CCB88835640
          2F03030320130DFFFFFFEBDCD4D8BBAB735B4C8736347F2E2C7B2B28522A1BF6
          F0EEF3EEEAF0EAE6EEE6E2EBE3DEEAE0DAE9DDD7C7AD9E4E2E1CFFFFFFC05754
          DA9C96D3928C56402F56402F56402F56402F56402F56402F56402F8E3F3C8736
          347F2E2C522A1BF7F4F2F6F0EEF3EEEAF0EAE6EEE6E2EBE3DECCB7AAC7AD9E4E
          2E1CFFFFFFC05754E7ABA5E0A19CD79791CF8E88C7837FBC7570AD645EA65A56
          9E504D9647448E3F3C873634522A1BFAF8F7F7F4F2F6F0EEF3EEEAF0EAE6A48B
          7A4E2E1C4E2E1C4E2E1CFFFFFFC05754EBB0AAE7ABA5E0A19CD79791CF8E88C7
          837FB8706CB16864AA5E5A9E504D9647448E3F3C522A1BFCFBFBFAF8F7F7F4F2
          F6F0EEF3EEEAA48B7AEFE5DED0BAAD4E2E1CFFFFFFC05754EBB0AAEBB0AAB848
          41B84841B84841B84841B84841B84841B84841B84841A15551994C48522A1BFF
          FFFFFCFBFBFAF8F7F7F4F2F6F0EEA48B7AD0BAAD4E2E1CFFFFFFFFFFFFC05754
          EBB0AAB84841F8F2EFF3E9E3EEE0D9E9D9CFE0CABCDCC2B4D8BBABD8BBABB848
          41A15551522A1BFFFFFFFFFFFFFCFBFBFAF8F7F7F4F2A48B7A4E2E1CFFFFFFFF
          FFFFFFFFFFC05754EBB0AAB84841FFFFFFFBF6F4F6EDE9F0E3DEE6D5CAE2CEC1
          DEC6B8D9BFAFB84841AA5E5A522A1BA48B7AA48B7AA48B7AA48B7AA48B7AA48B
          7AFFFFFFFFFFFFFFFFFFFFFFFFC05754EBB0AAB84841FFFFFFFFFFFFFBF6F4F6
          EDE9EBDCD4E6D5CAE2CEC1DEC6B8B84841B16864522A1BFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC05754EBB0AAB84841FFFF
          FFFFFFFFFFFFFFFFFFFFF6EDE9F0E3DEEBDCD4E6D5CAB84841C47F79522A1BFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC05754
          EBB0AAB84841FFFFFFFFFFFFFFFFFFFFFFFFFBF6F4F6EDE9F0E3DEEBDCD4B848
          41030303522A1BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFC05754EBB0AAB84841FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF6F4
          F6EDE9F0E3DEB84841B8706C522A1BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFC05754C05754C05754C05754C05754C05754C0
          5754C05754C05754C05754C05754C05754C05754C05754FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = SpeedButtonAjouterListeTypesDeNotesClick
      end
      object SpeedButtonSauverListeTypesDeNotes: TSpeedButton
        Left = 415
        Top = 138
        Width = 30
        Height = 26
        Hint = 'Sauver la liste des types de notes dans un fichier texte'
        Flat = True
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000011170000111700000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF522A1B522A
          1B522A1B522A1B522A1B522A1B522A1B522A1B522A1B522A1B522A1B522A1B52
          2A1BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          C05754C47F79BC757056402FAF9E96B4AAA5BBB0AABBB0AABBB0AA735B4C7B2B
          287B2B287B2B28522A1BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFC05754CB8883C47F7956402F1A0F0B44362DFFFFFFFFFFFF
          EBDCD4735B4C7F2E2C7B2B287B2B28522A1BFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC05754D3928CCB888356402F03030320
          130DFFFFFFEBDCD4D8BBAB735B4C8736347F2E2C7B2B28522A1BFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC05754DA9C96D392
          8C56402F56402F56402F56402F56402F56402F56402F8E3F3C8736347F2E2C52
          2A1BFFFFFFA48B7A4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C
          C05754E7ABA5E0A19CD79791CF8E88C7837FBC7570AD645EA65A569E504D9647
          448E3F3C873634522A1BFFFFFFA48B7AE9DDD7C7AD9EC7AD9EC7AD9EC7AD9EC7
          AD9EC7AD9EC7AD9EC05754EBB0AAE7ABA5E0A19CD79791CF8E88C7837FB8706C
          B16864AA5E5A9E504D9647448E3F3C522A1BFFFFFFA48B7AEAE0DAE9DDD7E6D9
          D3E3D5CEE1D1CADECEC5DCCAC0D9C6BCC05754EBB0AAEBB0AAB84841B84841B8
          4841B84841B84841B84841B84841B84841A15551994C48522A1BFFFFFFA48B7A
          EBE3DEEAE0DAE9DDD7E6D9D3E3D5CEE1D1CADECEC5DCCAC0C05754EBB0AAB848
          41F8F2EFF3E9E3EEE0D9E9D9CFE0CABCDCC2B4D8BBABD8BBABB84841A1555152
          2A1BFFFFFFA48B7AEEE6E2EBE3DEEAE0DAE9DDD7E6D9D3E3D5CEE1D1CADECEC5
          C05754EBB0AAB84841FFFFFFFBF6F4F6EDE9F0E3DEE6D5CAE2CEC1DEC6B8D9BF
          AFB84841AA5E5A522A1BFFFFFFA48B7AF0EAE6EEE6E2EBE3DEEAE0DA030303E6
          D9D3E3D5CEE1D1CAC05754EBB0AAB84841FFFFFFFFFFFFFBF6F4F6EDE9EBDCD4
          E6D5CAE2CEC1DEC6B8B84841B16864522A1BFFFFFFA48B7AF3EEEAF0EAE6EEE6
          E2EBE3DE030303030303E6D9D3E3D5CEC05754EBB0AAB84841FFFFFFFFFFFFFF
          FFFFFFFFFFF6EDE9F0E3DEEBDCD4E6D5CAB84841C47F79522A1BFFFFFFA48B7A
          F6F0EEF3EEEA030303030303030303030303030303E6D9D3C05754EBB0AAB848
          41FFFFFFFFFFFFFFFFFFFFFFFFFBF6F4F6EDE9F0E3DEEBDCD4B8484103030352
          2A1BFFFFFFA48B7AF7F4F2030303C7AD9EF0EAE6030303030303EAE0DAE9DDD7
          C05754EBB0AAB84841FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF6F4F6EDE9F0E3
          DEB84841B8706C522A1BFFFFFFA48B7AFAF8F7030303F6F0EEF3EEEA030303EE
          E6E2EBE3DEEAE0DAC05754C05754C05754C05754C05754C05754C05754C05754
          C05754C05754C05754C05754C05754C05754FFFFFFA48B7AFCFBFB030303F7F4
          F2F6F0EEF3EEEAF0EAE6EEE6E2EBE3DEEAE0DAE9DDD7E6D9D3C7AD9E4E2E1CFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA48B7A
          FFFFFF030303FAF8F7F7F4F2F6F0EEF3EEEAF0EAE6EEE6E2EBE3DEEAE0DAE9DD
          D7C7AD9E4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFA48B7AFFFFFFFFFFFFFCFBFBFAF8F7F7F4F2F6F0EEF3EEEAF0EAE6
          EEE6E2EBE3DECCB7AAC7AD9E4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFA48B7AFFFFFFFFFFFFFFFFFFFCFBFBFAF8F7F7
          F4F2F6F0EEF3EEEAF0EAE6A48B7A4E2E1C4E2E1C4E2E1CFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA48B7AFFFFFFFFFFFFFFFF
          FFFFFFFFFCFBFBFAF8F7F7F4F2F6F0EEF3EEEAA48B7AEFE5DED0BAAD4E2E1CFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA48B7A
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFBFBFAF8F7F7F4F2F6F0EEA48B7AD0BA
          AD4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFA48B7AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFBFBFAF8F7
          F7F4F2A48B7A4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFA48B7AA48B7AA48B7AA48B7AA48B7AA48B7AA4
          8B7AA48B7AA48B7AA48B7AA48B7AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = SpeedButtonSauverListeTypesDeNotesClick
      end
      object SpeedButtonCollerListeTypesDeNotes: TSpeedButton
        Left = 468
        Top = 138
        Width = 30
        Height = 26
        Hint = 
          'Ajouter la liste contenue dans le Presse-Papiers aux types de no' +
          'tes existants'
        Flat = True
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000011170000111700000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD79372782C08782C
          08782C08782C08782C08782C08782C08782C08782C08782C08782C08782C0878
          2C08FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          D79372F4E0D0B19786B19786B19786B19786B19786B19786B19786B19786B197
          86B19786B19786782C08FFFFFFFFFFFFB8DAEC0077B800458000458000458000
          4580004580004580D79372F6E5D8F4E0D0F3DAC9F0D5C1EFCFB8EDCAB1EBC5AA
          EABFA1E7BA9AE7B797E7B797B19786782C08FFFFFFFFFFFF0077B836ACDA0077
          BA0077BA0077BA0077BA0077BA0077BAD79372F8EAE0F6E5D8F4E0D0F3DAC9F0
          D5C1EFCFB8EDCAB1EBC5AAEABFA1E7BA9AE7B797B19786782C08FFFFFFFFFFFF
          0077B859C7E754C4E64FC0E34ABCE245B8E041B5DE3CB1DCD79372FAEFE7F8EA
          E0C6693DC6693DC6693DC6693DC6693DC6693DC6693DEABFA1E7BA9AB1978678
          2C08FFFFFFFFFFFF0077B862CEEB5BC9E956C5E751C1E54CBDE248BBE143B7E0
          D79372FCF4EFFAEFE7F8EAE0F6E5D8F4E0D0F3DAC9F0D5C1EFCFB8EDCAB1EBC5
          AAEABFA1B19786782C08FFFFFFFFFFFF0077B867D1ED62CEEB5BC9E956C5E751
          C1E54CBDE248BBE1D79372FFFCFBFCF4EFFAEFE7F8EAE0F6E5D8F4E0D0F3DAC9
          F0D5C1EFCFB8EDCAB1EBC5AAB19786782C08FFFFFFFFFFFF0077B86CD5EF67D1
          ED62CEEB5BC9E956C5E751C1E54CBDE2D79372FFFFFFFFFCFBC6693DC6693DC6
          693DC6693DC6693DC6693DC6693DF0D3BDEDCAB1B19786782C08FFFFFFFFFFFF
          0077B872D9F26CD5EF67D1ED62CEEB5BC9E956C5E751C1E5D79372FFFFFFFFFF
          FFFFFCFBFEF7F3FBF2EBFAEDE3F7E7DCF6E2D4F3DDCCF2D8C5F0D3BDB1978678
          2C08FFFFFFFFFFFF0077B877DDF372D9F26CD5EF67D1ED62CEEB5BC9E956C5E7
          D79372FFFFFFFFFFFFFFFFFFFFFCFBFEF7F3FBF2EBFAEDE3F7E7DCF6E2D4F3DD
          CCF2D8C5B19786782C08FFFFFFFFFFFF0077B87DE1F677DDF372D9F26CD5EF67
          D1ED62CEEB5BC9E9D79372FFFFFFFFFFFFC6693DC6693DC6693DC6693DC6693D
          C6693DC6693DF6E2D4F3DDCCB19786782C08FFFFFFFFFFFF0077B87DE1F67DE1
          F677DDF372D9F26CD5EF67D1ED62CEEBD79372FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFCFBFEF7F3FBF2EBFAEDE3F7E7DCB19786B19786782C08FFFFFFFFFFFF
          0077B87DE1F67DE1F67DE1F677DDF375DCF36ED7F069D3EED79372FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFBFEF7F3FBF2EBD79372782C08782C0878
          2C08FFFFFFFFFFFF0077B87DE1F67DE1F67DE1F67DE1F67AE0F475DCF36ED7F0
          D79372FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAF7D793
          72EFE5DED0BAAD782C08FFFFFFFFFFFF0077B87DE1F67DE1F67DE1F67DE1F67D
          E1F67AE0F475DCF3D79372FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFD79372D0BAAD782C08FFFFFFFFFFFFFFFFFF0077B87DE1F67DE1
          F67DE1F67DE1F67DE1F67DE1F67AE0F4D79372FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFD79372782C08FFFFFFFFFFFFFFFFFFFFFFFF
          0077B87DE1F67DE1F67DE1F67DE1F67DE1F67DE1F67DE1F6D79372D79372D793
          72D79372D79372D79372D79372D79372D79372D79372D79372FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0077B87DE1F67DE1F67DE1F62099D02099D02099D02099D0
          2099D02099D02099D02099D02099D064CFED5ECBEA59C7E70077BA004580FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0077B87DE1F67DE1F62099D000457700
          45770045770045770045770045770045770045770045772099D064CFED5ECBEA
          0077BA004580FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0077B87DE1F67DE1
          F60045777DE1F635ABDA35ABDA35ABDA35ABDA35ABDA35ABDA35ABDA0077BA00
          2B536CD5EF67D1ED0077BA004580FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0077B866B4E17DE1F67DE1F60045777DE1F653C2E6002B53002B53002B5353C2
          E60077BA002B5377DDF372D9F26CD5EF66B4E1004580FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFB8DAEC0077B80077B80077B80077B80045777DE1F67DE1F6
          7DE1F67DE1F60077BA002B530077BA0077BA0077BA0077BA0077BAB8DAECFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF004580004580004580004580004580FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = SpeedButtonCollerListeTypesDeNotesClick
      end
      object SpeedButtonSupprimerTypesDeNotes: TSpeedButton
        Left = 8
        Top = 144
        Width = 344
        Height = 26
        Caption = 'S&upprimer tous les types de notes de la liste'
        Flat = True
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000011170000111700000000000000000000FFFFFFFFFFFF
          FFFFFFB89F8E4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E
          1C4E2E1C0000804E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1CFFFFFF00
          0080FFFFFFFFFFFFFFFFFFB89F8EE7DDD7A48B7AA48B7AA48B7AA48B7AA48B7A
          A48B7AA48B7AA48B7AA48B7A0D2FFA000080A48B7AA48B7AA48B7AA48B7AA48B
          7A4E2E1C0000800D2FFAFFFFFFFFFFFFFFFFFFB89F8EEAE1DAE7DDD7E6D9D4E5
          D7D0E2D3CBE0CFC7DDCBC4DCCAC1D9C6BDD7C4B80D2FFA001ADCD0BAADD0BAAD
          D0BAADD0BAADA48B7A0000800D2FFA0D2FFAFFFFFFFFFFFFFFFFFFB89F8EEEE6
          E1EBE2DDE9DED9E7DCD5E5D8D1E3D4CEE1D0CADECEC5DCCAC1D9C6BDD7C4B80D
          2FFA000080D0BAADD0BAADD0BAAD0000800D2FFA0D2FFAFFFFFFFFFFFFFFFFFF
          FFFFFFB89F8EF0E9E64E2E1CA48B7AA48B7AA48B7AA48B7AA48B7AA48B7AA48B
          7AA48B7AA48B7AA48B7A0D2FFA000080A48B7A0000800D2FFA0D2FFAFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFB89F8EF3EDEA4E2E1CD0BAADD0BAADD5C1B7DECEC5
          E6D9D3EBE3DEF3EEEAFAF8F7FFFFFFFFFFFF1C3CFB0D2FFA0D2FFA0D2FFA0D2F
          FA4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB89F8EF6F0EE4E2E1CD0BAADD0
          BAADD0BAADD5C1B7DECEC5E6D9D3EBE3DEF3EEEAFAF8F7FFFFFFFFFFFF0D2FFA
          0D2FFA0D2FFAA48B7A4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB89F8EF8F3
          F34E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E
          2E1C0000800D2FFA0D2FFA0D2FFA0000804E2E1CFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFB89F8EFBF7F7F8F3F3F6F0EEF3EDEAF0E9E6EEE6E1EBE2DDE9DED9E7DC
          D5E5D8D1E3D4CE000080657FFC0D2FFA1C3CFB657FFC0D2FFA000080FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFB89F8EFCFBFBCC8028CC8028CC8028CC8028CC8028
          CC8028CC8028CC8028CC8028000080657FFC001ADCE0CFC7DDCBC41C3CFB657F
          FC0D2FFA000080FFFFFFFFFFFFFFFFFFFFFFFFB89F8EFFFFFFFCFBFBFBF7F7F8
          F3F3F7F2F0F4EEEDF2EBE7EFE7E3EDE3E0000080657FFC001ADCE5D7D0E2D3CB
          E0CFC7DDCBC41C3CFB657FFC0D2FFA000080FFFFFFFFFFFFFFFFFFB89F8EFFFF
          FF4E2E1CA48B7AA48B7AA48B7AA48B7AA48B7AA48B7AA48B7A001ADC001ADCA4
          8B7AA48B7AA48B7AA48B7AE0CFC7A48B7A1C3CFB0D2FFA0D2FFAFFFFFFFFFFFF
          FFFFFFB89F8EFFFFFF4E2E1CD0BAADD0BAADD5C1B7DECEC5E6D9D3EBE3DEF3EE
          EAFAF8F7FFFFFFFFFFFFFFFFFFFFFFFFA48B7AE2D3CBA48B7A4E2E1CFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFB89F8EFFFFFF4E2E1CD0BAADD0BAADD0BAADD5C1B7
          DECEC5E6D9D3EBE3DEF3EEEAFAF8F7FFFFFFFFFFFFFFFFFFA48B7AE5D7D0A48B
          7A4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB89F8EFFFFFF4E2E1C4E2E1C4E
          2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C
          4E2E1CE6D9D4A48B7A4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB89F8EFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFEFCFAFAFAF6F4F7F2F0F4EEEDF2
          EBE7EFE7E3EDE3E0EAE1DAE7DDD7A48B7A4E2E1CFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFB89F8EFFFFFFCC8028CC8028CC8028CC8028CC8028CC8028CC8028CC80
          28CC8028CC8028F4EEEDF2EBE7C9AD9DBBA190A48B7AA48B7A4E2E1CFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFB89F8EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFCFEFCFAFAFAF6F4F8F3F3B89F8E4E2E1C4E2E1C4E2E1C4E2E
          1C4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB89F8EFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFBFBFBF7F7B89F8EEFE5DE
          EADED7E1D1C7D0BAAD4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB89F8EFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC
          FBFBB89F8EEADED7E1D1C7D0BAAD4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFB89F8EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFB89F8EE1D1C7D0BAAD4E2E1CFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFB89F8EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB89F8ED0BAAD4E2E1CFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB89F8EB89F8EB89F8EB89F8EB8
          9F8EB89F8EB89F8EB89F8EB89F8EB89F8EB89F8EB89F8EB89F8EB89F8E4E2E1C
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = SpeedButtonSupprimerTypesDeNotesClick
      end
      object typesDeNotes: TListBox
        Left = 6
        Top = 3
        Width = 349
        Height = 139
        Hint = 'Liste des types de notes'
        Columns = 2
        ItemHeight = 18
        Sorted = True
        Style = lbOwnerDrawFixed
        TabOrder = 0
        OnClick = typesDeNotesClick
        OnDrawItem = typesDeNotesDrawItem
      end
      object Edit1: TEdit
        Left = 361
        Top = 24
        Width = 137
        Height = 21
        Hint = 'Champ pour ajouter un nouveau type de notes'
        MaxLength = 100
        TabOrder = 1
        OnChange = Edit1Change
        OnEnter = Edit1Enter
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Graphes'
      object Bevel8: TBevel
        Left = 1
        Top = 0
        Width = 505
        Height = 171
      end
      object Bevel23: TBevel
        Left = 196
        Top = 88
        Width = 162
        Height = 79
      end
      object Bevel22: TBevel
        Left = 5
        Top = 5
        Width = 182
        Height = 162
      end
      object Bevel21: TBevel
        Left = 196
        Top = 5
        Width = 162
        Height = 81
      end
      object Label1: TLabel
        Left = 208
        Top = 36
        Width = 81
        Height = 13
        Caption = 'Couleur de début'
      end
      object Label26: TLabel
        Left = 208
        Top = 62
        Width = 65
        Height = 13
        Caption = 'Couleur de fin'
      end
      object Label31: TLabel
        Left = 208
        Top = 119
        Width = 72
        Height = 13
        Caption = 'Mur de gauche'
      end
      object Label33: TLabel
        Left = 208
        Top = 145
        Width = 53
        Height = 13
        Caption = 'Mur du bas'
      end
      object CouleurNotesEleve: TColorPickerButton
        Left = 136
        Top = 16
        Width = 40
        Height = 22
        CustomText = '&Autre couleur'
        DefaultText = '&Couleur par défaut'
        PopupSpacing = 8
        ShowSystemColors = False
        OnDefaultSelect = CouleurNotesEleveDefaultSelect
      end
      object CouleurMinimumClasse: TColorPickerButton
        Left = 136
        Top = 56
        Width = 40
        Height = 22
        CustomText = '&Autre couleur'
        DefaultText = '&Couleur par défaut'
        PopupSpacing = 8
        ShowSystemColors = False
        OnDefaultSelect = CouleurMinimumClasseDefaultSelect
      end
      object CouleurMaximumClasse: TColorPickerButton
        Left = 136
        Top = 96
        Width = 40
        Height = 22
        CustomText = '&Autre couleur'
        DefaultText = '&Couleur par défaut'
        PopupSpacing = 8
        ShowSystemColors = False
        OnDefaultSelect = CouleurMaximumClasseDefaultSelect
      end
      object CouleurMoyenneClasse: TColorPickerButton
        Left = 136
        Top = 136
        Width = 40
        Height = 22
        CustomText = '&Autre couleur'
        DefaultText = '&Couleur par défaut'
        PopupSpacing = 8
        ShowSystemColors = False
        OnDefaultSelect = CouleurMoyenneClasseDefaultSelect
      end
      object CouleurDebutDegrade: TColorPickerButton
        Left = 305
        Top = 32
        Width = 40
        Height = 22
        CustomText = '&Autre couleur'
        DefaultText = '&Couleur par défaut'
        PopupSpacing = 8
        ShowSystemColors = False
        OnDefaultSelect = CouleurDebutDegradeDefaultSelect
      end
      object CouleurFinDegrade: TColorPickerButton
        Left = 305
        Top = 57
        Width = 40
        Height = 22
        CustomText = '&Autre couleur'
        DefaultText = '&Couleur par défaut'
        PopupSpacing = 8
        ShowSystemColors = False
        OnDefaultSelect = CouleurFinDegradeDefaultSelect
      end
      object CouleurMurGauche: TColorPickerButton
        Left = 305
        Top = 114
        Width = 40
        Height = 22
        CustomText = '&Autre couleur'
        DefaultText = '&Couleur par défaut'
        PopupSpacing = 8
        ShowSystemColors = False
        OnDefaultSelect = CouleurMurGaucheDefaultSelect
      end
      object CouleurMurBas: TColorPickerButton
        Left = 305
        Top = 139
        Width = 40
        Height = 22
        CustomText = '&Autre couleur'
        DefaultText = '&Couleur par défaut'
        PopupSpacing = 8
        ShowSystemColors = False
        OnDefaultSelect = CouleurMurBasDefaultSelect
      end
      object Bevel9: TBevel
        Left = 369
        Top = 5
        Width = 131
        Height = 64
      end
      object CheckBox14: TCheckBox
        Left = 203
        Top = 95
        Width = 90
        Height = 17
        Hint = 'Afficher ou non les graphes en 3 dimensions'
        Caption = 'Graphe en 3D'
        TabOrder = 0
      end
      object CheckBox15: TCheckBox
        Left = 203
        Top = 10
        Width = 113
        Height = 17
        Hint = 'Afficher ou non le graphe avec un dégradé de couleurs'
        Caption = 'Dégradé de couleur'
        TabOrder = 1
      end
      object CheckBox16: TCheckBox
        Left = 378
        Top = 10
        Width = 110
        Height = 17
        Hint = 'Afficher ou non les graphes en couleur'
        Caption = 'Graphe en couleur'
        TabOrder = 2
      end
      object CheckBox17: TCheckBox
        Left = 16
        Top = 16
        Width = 102
        Height = 17
        Hint = 'Afficher ou non la ligne des notes des élèves'
        Caption = 'Notes de l'#39'élève'
        TabOrder = 3
      end
      object CheckBox18: TCheckBox
        Left = 16
        Top = 57
        Width = 102
        Height = 17
        Hint = 'Afficher ou non la ligne des notes minimales de la classe'
        Caption = 'Min. de la classe'
        TabOrder = 4
      end
      object CheckBox19: TCheckBox
        Left = 16
        Top = 99
        Width = 104
        Height = 17
        Hint = 'Afficher ou non la ligne des notes maximales de la classe'
        Caption = 'Max. de la classe'
        TabOrder = 5
      end
      object CheckBox20: TCheckBox
        Left = 16
        Top = 140
        Width = 104
        Height = 17
        Hint = 'Afficher ou non la ligne des notes moyennes de la classe'
        Caption = 'Moy. de la classe'
        TabOrder = 6
      end
      object CheckBox21: TCheckBox
        Left = 378
        Top = 41
        Width = 110
        Height = 17
        Hint = 'Afficher ou non la légende des graphes'
        Caption = 'Afficher la légende'
        TabOrder = 7
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'Moyennes'
      object Bevel7: TBevel
        Left = 1
        Top = 0
        Width = 505
        Height = 171
      end
      object Bevel13: TBevel
        Left = 235
        Top = 3
        Width = 266
        Height = 164
        Style = bsRaised
      end
      object Label9: TLabel
        Left = 280
        Top = 12
        Width = 122
        Height = 13
        Caption = '&Moyennes exprimées sur :'
      end
      object Bevel14: TBevel
        Left = 8
        Top = 3
        Width = 223
        Height = 164
        Style = bsRaised
      end
      object RadioGroupArrondir: TRadioGroup
        Left = 13
        Top = 5
        Width = 212
        Height = 76
        Hint = 'Permet de préciser comment arrondir les moyennes'
        Caption = ' A&rrondi des moyennes (sauf annuelles)'
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'Ne pas arrondir'
          'Au 1/10 de point'
          'Au 1/4 de point'
          'Au 1/2 point'
          'Spécial Brevet')
        TabOrder = 0
      end
      object CheckBox3: TCheckBox
        Left = 255
        Top = 36
        Width = 227
        Height = 17
        Hint = 
          'Afficher ou non une colonne de moyennes par type de notes dans l' +
          'es grilles de bilan'
        Caption = '&Une moy. par type de notes dans les bilans'
        TabOrder = 1
      end
      object RadioGroupTrier: TRadioGroup
        Left = 241
        Top = 82
        Width = 255
        Height = 33
        Hint = 'Type de classement des moyennes'
        Caption = ' &Tri des moyennes dans les grilles de bilan '
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'Ordre croissant'
          'Ordre décroissant')
        TabOrder = 2
      end
      object RadioGroupArrondirAnnuelle: TRadioGroup
        Left = 13
        Top = 85
        Width = 212
        Height = 78
        Hint = 'Permet de préciser comment arrondir les moyennes annuelles'
        Caption = ' Arr&ondi des moyennes annuelles '
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'Ne pas arrondir'
          'Au 1/10 de point'
          'Au 1/4 de point'
          'Au 1/2 point'
          'Spécial Brevet')
        TabOrder = 3
      end
      object RadioGroupTypeMoyenneAnnuelle: TRadioGroup
        Left = 241
        Top = 115
        Width = 255
        Height = 48
        Hint = 'Permet de préciser comment calculer les moyennes annuelles'
        Caption = ' Ca&lcul de la moyenne annuelle'
        ItemIndex = 0
        Items.Strings = (
          'Moyenne des moyennes trimestrielles'
          'Moyenne de toutes les notes de l'#39'année')
        TabOrder = 4
      end
      object MoyennesSur: TRxSpinEdit
        Left = 406
        Top = 9
        Width = 57
        Height = 21
        Hint = 'Sur combien seront calculées les moyennes'
        MaxValue = 1000
        MinValue = 1
        TabOrder = 5
      end
      object CheckBox34: TCheckBox
        Left = 255
        Top = 56
        Width = 227
        Height = 17
        Hint = 
          'Afficher ou non les moyennes '#39'Ecrit'#39' et '#39'Oral'#39' dans les grilles ' +
          'de bilan'
        Caption = '&Moyennes '#39'Ecrit'#39' et '#39'Oral'#39' dans les bilans'
        TabOrder = 6
      end
    end
    object TabSheet8: TTabSheet
      Caption = 'Enseignants'
      object Bevel17: TBevel
        Left = 2
        Top = 0
        Width = 505
        Height = 171
      end
      object Label20: TLabel
        Left = 366
        Top = 9
        Width = 102
        Height = 13
        Caption = '&Nom de l'#39'enseignant :'
        FocusControl = Edit6
      end
      object SpeedButton25: TSpeedButton
        Left = 362
        Top = 50
        Width = 137
        Height = 26
        Hint = 
          'Ajouter à la liste le nom de l'#39'enseignant écrit dans le champ du' +
          ' dessus'
        Caption = '&Ajouter à la liste'
        Enabled = False
        Flat = True
        Glyph.Data = {
          B60D0000424DB60D000000000000360000002800000030000000180000000100
          180000000000800D0000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E
          2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C
          4E2E1C4E2E1C4E2E1C4E2E1C4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF6C6C6C6C6C6C6C6C6C6C6C6C6B6B6B6B6B6B6B6B6B6B6B6B6C
          6C6C6C6C6C6C6C6C6C6C6C6B6B6B6C6C6C6C6C6C6C6C6CFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF4E2E1CD0BAADA48B7AA48B7AA48B7AA48B7AA48B
          7AA48B7AA48B7AA48B7AA48B7AA48B7AA48B7AA48B7AA48B7AA48B7A4E2E1CFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6B6B6BD8D8D8B9B9B9B9B9B9
          B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9
          B9B9B9B96C6C6CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E2E1CD0BAADEB
          E3DEEAE0DAE9DDD8E6DAD4E5D7D0E2D3CBE0CFC7DDCCC2DAC9BFD8C5BAD5C1B6
          D3BDB2D0BAADD0BAADA48B7A4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF6C6C6CD8D8D8F0F0F0EEEEEEEDEDEDEBEBEBE9E9E9E7E7E7E5E5E5E3E3E3E1
          E1E1DFDFDFDDDDDDDADADAD8D8D8D8D8D8B9B9B96C6C6CFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF4E2E1CD0BAADF0EAE6EEE6E2EBE3DEEAE0DAE9DDD8E6DAD4E5D7
          D0E2D3CBE0CFC7DDCCC2DAC9BFD8C5BAD5C1B6D3BDB2D0BAADA48B7A4E2E1CFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF6C6C6CD8D8D8F4F4F4F2F2F2F0F0F0EEEEEE
          EDEDEDEBEBEBE9E9E9E7E7E7E5E5E5E3E3E3E1E1E1DFDFDFDDDDDDDADADAD8D8
          D8B9B9B96B6B6BFFFFFFFFFFFFFFFFFFFFFFFF4E2E1CD0BAADF4EFEDF3EDEAF0
          EAE6EEE6E2EBE3DEEAE0DAE9DDD8E6DAD4E5D7D0E2D3CBE0CFC7DDCCC2DAC9BF
          D8C5BAD5C1B6D3BDB2A48B7A4E2E1CFFFFFFFFFFFFFFFFFFFFFFFF6B6B6BD8D8
          D8F7F7F7F6F6F6F4F4F4F2F2F2F1F1F1EEEEEEEDEDEDEBEBEBE9E9E9E7E7E7E5
          E5E5E3E3E3E1E1E1DFDFDFDCDCDCDADADAB9B9B96C6C6CFFFFFFFFFFFFFFFFFF
          4E2E1CD0BAADFAF6F4F7F3F0A48B7AF3EDEAF0EAE6EEE6E2EBE3DEEAE0DAE9DD
          D8E6DAD4E5D7D0E2D3CBE0CFC7DDCCC2DAC9BFD8C5BAD5C1B6A48B7A4E2E1CFF
          FFFFFFFFFFFFFFFF6C6C6CD8D8D8FAFAFAF9F9F9B9B9B9F6F6F6F4F4F4F2F2F2
          F0F0F0EEEEEEEDEDEDEBEBEBE9E9E9E7E7E7E5E5E5E3E3E3E1E1E1DFDFDFDCDC
          DCB9B9B96B6B6BFFFFFFFFFFFF997F6EFFFFFFFEFCFCFBFAF84E2E1CF7F3F0A4
          8B7AF3EDEAF0EAE6EEE6E2EBE3DEEAE0DAE9DDD8E6DAD4E5D7D0E2D3CBE0CFC7
          DDCCC2DAC9BFD8C5BAA48B7A4E2E1CFFFFFFFFFFFFB1B1B1FFFFFFFEFEFEFDFD
          FD6C6C6CF9F9F9B9B9B9F6F6F6F4F4F4F2F2F2F0F0F0EEEEEEEDEDEDECECECE9
          E9E9E7E7E7E5E5E5E3E3E3E0E0E0DEDEDEB9B9B96C6C6CFFFFFFFFFFFFFFFFFF
          997F6EFFFFFFFEFCFCFBFAF84E2E1CF7F3F0F4EFEDF3EDEAF0EAE6EEE6E2EBE3
          DEEAE0DAE9DDD8E6DAD4E5D7D0E2D3CBE0CFC7DDCCC2DAC9BFA48B7A4E2E1CFF
          FFFFFFFFFFFFFFFFB1B1B1FFFFFFFEFEFEFCFCFC6C6C6CF9F9F9F7F7F7F5F5F5
          F4F4F4F2F2F2F0F0F0EEEEEEEDEDEDEBEBEBE9E9E9E7E7E7E5E5E5E3E3E3E1E1
          E1B9B9B96C6C6CFFFFFFFFFFFFFFFFFFFFFFFF997F6EFFFFFFFEFCFCFBFAF8FA
          F6F4F7F3F0F4EFEDF3EDEAF0EAE6EEE6E2EBE3DEEAE0DAE9DDD8E6DAD4E5D7D0
          E2D3CBE0CFC7DDCCC2A48B7A4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFB1B1B1FFFF
          FFFEFEFEFCFCFCFBFBFBF9F9F9F7F7F7F5F5F5F4F4F4F2F2F2F0F0F0EEEEEEED
          EDEDECECECE9E9E9E7E7E7E5E5E5E3E3E3B9B9B96B6B6BFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF997F6EFFFFFFFEFCFCFBFAF8FAF6F4F7F3F0F4EFEDF3EDEAF0EA
          E6EEE6E2EBE3DEEAE0DAE9DDD8E6DAD4E5D7D0E2D3CBE0CFC7A48B7A4E2E1CFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFB1B1B1FFFFFFFEFEFEFCFCFCFBFBFBF9F9F9
          F7F7F7F6F6F6F4F4F4F2F2F2F0F0F0EEEEEEEDEDEDECECECE9E9E9E6E6E6E5E5
          E5B9B9B96B6B6BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF997F6EFFFFFFFE
          FCFCFBFAF8FAF6F4F7F3F0F4EFEDF3EDEAF0EAE6EEE6E2EBE3DE004500004500
          004500E5D7D0E2D3CBA48B7A4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFB1B1B1FFFFFFFEFEFEFCFCFCFBFBFBF9F9F9F7F7F7F5F5F5F4F4F4F2F2F2F1
          F1F1787878777777777777E9E9E9E7E7E7B9B9B96C6C6CFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF997F6EFFFFFFFEFCFCFBFAF8FAF6F4F7F3F0F4EF
          EDF3EDEAF0EAE6EEE6E200450010A51D004500E6DAD4E5D7D0E2D3CB4E2E1CFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB1B1B1FFFFFFFEFEFEFDFDFD
          FBFBFBF9F9F9F7F7F7F5F5F5F3F3F3F2F2F2787878B9B9B9777777EBEBEBE9E9
          E9E7E7E76C6C6CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99
          7F6E977D6B9579689277669074638C725F8A6E5D886C5A8669580045001CB833
          0045007D5E4D7A5C4B785A48765745FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFB1B1B1AFAFAFACACACABABABA9A9A9A7A7A7A5A5A5A3A3A3A1
          A1A1777777C5C5C5787878989898979797959595929292FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF0045000045000045000045002DD352004500004500004500004500FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF787878777777777777777777D5D5D57878787777777777
          77777777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00450045F68045F68045F68039E569
          2DD35221C13D16AF28004500FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF777777EAEAEAEA
          EAEAEAEAEAE0E0E0D5D5D5CACACAC0C0C0787878FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00450000450000450000450045F680004500004500004500004500FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF777777787878777777777777EAEAEA7777777878787777
          77777777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00450045F680
          004500FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF787878EAEAEA777777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF00450045F680004500FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF787878EAEAEA777777FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF004500004500
          004500FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF787878777777777777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        NumGlyphs = 2
        OnClick = BitBtn12Click
      end
      object SpeedButton26: TSpeedButton
        Left = 362
        Top = 80
        Width = 137
        Height = 26
        Hint = 'Supprimer de la liste l'#39'enseignant sélectionné'
        Caption = '&Supprimer de la liste'
        Enabled = False
        Flat = True
        Glyph.Data = {
          B60D0000424DB60D000000000000360000002800000030000000180000000100
          180000000000800D0000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E
          2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C
          4E2E1C4E2E1C4E2E1C4E2E1C4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C
          6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6CFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF4E2E1CD0BAADA48B7AA48B7AA48B7AA48B7AA48B
          7AA48B7AA48B7AA48B7AA48B7AA48B7AA48B7AA48B7AA48B7AA48B7A4E2E1CFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6C6C6CD8D8D8B9B9B9B9B9B9
          B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9
          B9B9B9B96B6B6BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E2E1CD0BAADEB
          E3DEEAE0DAE9DDD8E6DAD4E5D7D0E2D3CBE0CFC7DDCCC2DAC9BFD8C5BAD5C1B6
          D3BDB2D0BAADD0BAADA48B7A4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF6C6C6CD8D8D8F0F0F0EEEEEEEDEDEDECECECE9E9E9E7E7E7E5E5E5E3E3E3E0
          E0E0DFDFDFDCDCDCDADADAD8D8D8D8D8D8B9B9B96C6C6CFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF4E2E1CD0BAADF0EAE6EEE6E2EBE3DEEAE0DAE9DDD8E6DAD4E5D7
          D0E2D3CBE0CFC7DDCCC2DAC9BFD8C5BAD5C1B6D3BDB2D0BAADA48B7A4E2E1CFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF6C6C6CD8D8D8F4F4F4F2F2F2F1F1F1EEEEEE
          EDEDEDEBEBEBE9E9E9E7E7E7E5E5E5E3E3E3E1E1E1DFDFDFDDDDDDDADADAD8D8
          D8B9B9B96C6C6CFFFFFFFFFFFFFFFFFFFFFFFF4E2E1CD0BAADF4EFEDF3EDEAF0
          EAE6EEE6E2EBE3DEEAE0DAE9DDD8E6DAD4E5D7D0E2D3CBE0CFC7DDCCC2DAC9BF
          D8C5BAD5C1B6D3BDB2A48B7A4E2E1CFFFFFFFFFFFFFFFFFFFFFFFF6B6B6BD8D8
          D8F7F7F7F5F5F5F4F4F4F2F2F2F0F0F0EEEEEEEDEDEDEBEBEBE9E9E9E7E7E7E5
          E5E5E3E3E3E1E1E1DFDFDFDCDCDCDADADAB9B9B96C6C6CFFFFFFFFFFFFFFFFFF
          4E2E1CD0BAADFAF6F4F7F3F0A48B7AF3EDEAF0EAE6EEE6E2EBE3DEEAE0DAE9DD
          D8E6DAD4E5D7D0E2D3CBE0CFC7DDCCC2DAC9BFD8C5BAD5C1B6A48B7A4E2E1CFF
          FFFFFFFFFFFFFFFF6C6C6CD8D8D8FBFBFBF9F9F9B9B9B9F6F6F6F4F4F4F2F2F2
          F1F1F1EEEEEEEDEDEDECECECE9E9E9E7E7E7E5E5E5E3E3E3E0E0E0DFDFDFDCDC
          DCB9B9B96C6C6CFFFFFFFFFFFF997F6EFFFFFFFEFCFCFBFAF84E2E1CF7F3F0A4
          8B7AF3EDEAF0EAE6EEE6E2EBE3DEEAE0DAE9DDD8E6DAD4E5D7D0E2D3CBE0CFC7
          DDCCC2DAC9BFD8C5BAA48B7A4E2E1CFFFFFFFFFFFFB1B1B1FFFFFFFEFEFEFCFC
          FC6B6B6BF9F9F9B9B9B9F6F6F6F4F4F4F2F2F2F0F0F0EEEEEEEDEDEDEBEBEBE9
          E9E9E7E7E7E5E5E5E3E3E3E0E0E0DFDFDFB9B9B96B6B6BFFFFFFFFFFFFFFFFFF
          997F6EFFFFFFFEFCFCFBFAF84E2E1CF7F3F0F4EFEDF3EDEAF0EAE6EEE6E2EBE3
          DEEAE0DAE9DDD8E6DAD4E5D7D0E2D3CBE0CFC7DDCCC2DAC9BFA48B7A4E2E1CFF
          FFFFFFFFFFFFFFFFB1B1B1FFFFFFFEFEFEFCFCFC6C6C6CF9F9F9F7F7F7F6F6F6
          F4F4F4F2F2F2F0F0F0EEEEEEEDEDEDEBEBEBE9E9E9E7E7E7E5E5E5E3E3E3E1E1
          E1B9B9B96B6B6BFFFFFFFFFFFFFFFFFFFFFFFF997F6EFFFFFFFEFCFCFBFAF8FA
          F6F4F7F3F0F4EFEDF3EDEAF0EAE6EEE6E2EBE3DEEAE0DAE9DDD8E6DAD4E5D7D0
          E2D3CBE0CFC7DDCCC2A48B7A4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFB1B1B1FFFF
          FFFEFEFEFDFDFDFBFBFBF9F9F9F7F7F7F5F5F5F4F4F4F2F2F2F1F1F1EEEEEEED
          EDEDECECECE9E9E9E6E6E6E5E5E5E3E3E3B9B9B96C6C6CFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF997F6EFFFFFFFEFCFCFBFAF8FAF6F4F7F3F0F4EFEDF3EDEAF0EA
          E6EEE6E2EBE3DEEAE0DAE9DDD8E6DAD4E5D7D0E2D3CBE0CFC7A48B7A4E2E1CFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFB1B1B1FFFFFFFEFEFEFDFDFDFAFAFAF9F9F9
          F7F7F7F6F6F6F4F4F4F2F2F2F0F0F0EEEEEEEDEDEDECECECE9E9E9E7E7E7E5E5
          E5B9B9B96C6C6CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF997F6EFFFFFFFE
          FCFCFBFAF8FAF6F4F7F3F0F4EFEDF3EDEAF0EAE6EEE6E2EBE3DEEAE0DAE9DDD8
          E6DAD4E5D7D0E2D3CBA48B7A4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFB1B1B1FFFFFFFEFEFEFDFDFDFBFBFBF9F9F9F7F7F7F6F6F6F4F4F4F2F2F2F0
          F0F0EEEEEEEDEDEDECECECE9E9E9E6E6E6B9B9B96C6C6CFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF997F6EFFFFFFFEFCFCFBFAF8FAF6F4F7F3F0F4EF
          EDF3EDEAF0EAE6EEE6E2EBE3DEEAE0DAE9DDD8E6DAD4E5D7D0E2D3CB4E2E1CFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB1B1B1FFFFFFFEFEFEFDFDFD
          FBFBFBF9F9F9F7F7F7F6F6F6F4F4F4F2F2F2F1F1F1EEEEEEEDEDEDEBEBEBE9E9
          E9E7E7E76B6B6BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99
          7F6E977D6B9579689277669074638C725F8A6E5D886C5A866958836755816452
          7F62507D5E4D7A5C4B785A48765745FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFB1B1B1AFAFAFADADADABABABA9A9A9A7A7A7A5A5A5A3A3A3A1
          A1A19F9F9F9D9D9D9A9A9A989898979797959595929292FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF000080000080000080000080000080000080000080000080FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF7070707070707070707070707272727070707070
          70707070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000080677DFA506AFC2849FE
          2849FE092BFE001EFF000080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF707070C6
          C6C6C0C0C0B4B4B4B3B3B3A8A8A8A6A6A6707070FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF000080000080000080000080000080000080000080000080FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF7070707070707070707070707070707272727070
          70707070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        NumGlyphs = 2
        OnClick = BitBtn13Click
      end
      object SpeedButton27: TSpeedButton
        Left = 362
        Top = 110
        Width = 137
        Height = 26
        Hint = 
          'Revenir à la liste par défaut (utilisateurs enregistrés de Carne' +
          't de Notes et utilisateur enregistré de Windows)'
        Caption = '&Liste par défaut'
        Flat = True
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000011170000111700000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFF0045000045000045000045000045000045000045000045000045
          00004500004500004500004500004500004500004500004500004500004500FF
          FFFFFFFFFFFFFFFF101310101310FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF008000004500FFFFFFFFFFFF101310FFFFFF55555510131000450000450000
          4500004500004500004500004500004500004500004500004500004500004500
          004500004500004500004500004500FFFFFFFFFFFF787A7D1013101013100FA4
          1C0D9F180B9C1409971007930C058F09038B0602870300820100800000800000
          8000008000008000008000008000004500C26600C26600FFFFFFFFFFFF101310
          FFFFFF5555551013100FA41C0D9F180B9C1409971007930C058F09038B060287
          03008201008000008000008000008000008000008000004500F6B877F6B877C2
          6600FFFFFF787A7D10131010131014AC2511A7200FA41C0D9F180B9C14099710
          07930C058F09038B060287030082010080000080000080000080000080000045
          00F6B877F6B877C26600FFFFFF101310FFFFFF55555510131014AC2511A7200F
          A41C0D9F180B9C1409971007930C058F09038B06028703008201008000008000
          008000008000004500F6B877F6B877C26600FFFFFF787A7D10131010131019B5
          2F17B12A14AC2511A7200FA41C0D9F180B9C1409971007930C058F09038B0602
          8703008201008000008000008000004500F6D79CF6D79CC26600FFFFFF101310
          FFFFFF55555510131019B52F17B12A14AC2511A7200FA41C0D9F180B9C140997
          1007930C058F09038B06028703008201008000008000004500C26600C26600FF
          FFFFFFFFFF787A7D10131010131020C03B1CBA3519B52F17B12A14AC2511A720
          0FA41C0D9F180B9C1409971007930C058F09038B060287030082010080000045
          00004500004500FFFFFFFFFFFF101310FFFFFF55555510131020C03B1CBA3519
          B52F17B12A14AC2511A7200FA41C0D9F180B9C1409971007930C058F09038B06
          0287030082010045001CB8451CB845004500FFFFFF787A7D10131010131027CA
          4823C54120C03B1CBA3519B52F17B12A14AC2511A7200FA41C0D9F180B9C1409
          971007930C058F09038B060287030045001CB8451CB845004500FFFFFF101310
          FFFFFF55555510131027CA4823C54120C03B1CBA3519B52F17B12A14AC2511A7
          200FA41C0D9F180B9C1409971007930C058F09038B060045001CB8451CB84500
          4500FFFFFF787A7D1013101013102ED5562BD04F27CA4823C54120C03B1CBA35
          19B52F17B12A14AC2511A7200FA41C0D9F180B9C1409971007930C058F090045
          0045F67745F677004500FFFFFF101310FFFFFF5555551013102ED5562BD04F27
          CA4823C54120C03B1CBA3519B52F17B12A14AC2511A7200FA41C0D9F180B9C14
          09971007930C004500004500004500FFFFFFFFFFFF787A7D10131010131036E1
          6533DC5D2ED5562BD04F27CA4823C54120C03B1CBA3519B52F17B12A14AC2511
          A7200FA41C0D9F180B9C14099710004500004577004577FFFFFFFFFFFF101310
          FFFFFF55555510131036E16533DC5D2ED5562BD04F27CA4823C54120C03B1CBA
          3519B52F17B12A14AC2511A7200FA41C0D9F180B9C1400450000B8F600B8F600
          4577FFFFFF787A7D1013101013103FED733AE66C36E16533DC5D2ED5562BD04F
          27CA4823C54120C03B1CBA3519B52F17B12A14AC2511A7200FA41C0D9F180045
          0000B8F600B8F6004577FFFFFF101310FFFFFF5555551013103FED733AE66C36
          E16533DC5D2ED5562BD04F27CA4823C54120C03B1CBA3519B52F17B12A14AC25
          11A7200FA41C00450000B8F600B8F6004577FFFFFF787A7D10131010131045F6
          8042F27A3FED733AE66C36E16533DC5D2ED5562BD04F27CA4823C54120C03B1C
          BA3519B52F17B12A14AC2511A72000450000F6F600F6F6004577FFFFFF101310
          FFFFFF55555510131045F68042F27A3FED733AE66C36E16533DC5D2ED5562BD0
          4F27CA4823C54120C03B1CBA3519B52F17B12A14AC25004500004577004577FF
          FFFFFFFFFF787A7D10131010131045F68045F68045F68042F27A3FED733AE66C
          36E16533DC5D2ED5562BD04F27CA4823C54120C03B1CBA3519B52F17B12A0045
          00004500004500FFFFFFFFFFFFFFFFFFFFFFFF00800000800000800000800000
          8000008000008000008000008000008000008000008000008000008000008000
          008000008000008000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = BitBtn14Click
      end
      object SpeedButton48: TSpeedButton
        Left = 362
        Top = 139
        Width = 30
        Height = 26
        Hint = 'Ajouter des noms contenus dans un fichier texte'
        Flat = True
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000011170000111700000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA48B7A4E2E1C4E2E
          1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E
          2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          A48B7AE9DDD7C7AD9EC7AD9EC7AD9EC7AD9EC7AD9EC7AD9EC7AD9EC7AD9EC7AD
          9EC7AD9EC7AD9E4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFA48B7AEAE0DAE9DDD7E6D9D3E3D5CEE1D1CADECEC5DCCAC0
          D9C6BCD7C2B7D3BFB2D0BBAFC7AD9E4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA48B7AEBE3DEEAE0DAE9DDD7E6D9D3E3
          D5CEE1D1CADECEC5030303D9C6BCD7C2B7D3BFB2C7AD9E4E2E1CFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA48B7AEEE6E2EBE3
          DEEAE0DAE9DDD7E6D9D3E3D5CE030303030303030303D9C6BCD7C2B7C7AD9E4E
          2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          A48B7AF0EAE6EEE6E2EBE3DEEAE0DAE9DDD70303030303030303030303030303
          03D9C6BCC7AD9E4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFA48B7AF3EEEAF0EAE6EEE6E2EBE3DEEAE0DAE9DDD7E6D9D3
          030303E1D1CADECEC5DCCAC0C7AD9E4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA48B7AF6F0EEF3EEEAF0EAE6EEE6E2EB
          E3DEEAE0DAE9DDD7030303E3D5CEE1D1CADECEC5C7AD9E4E2E1CFFFFFFFFFFFF
          522A1B522A1B522A1B522A1B522A1B522A1B522A1B522A1B522A1B522A1B522A
          1B522A1B522A1BEEE6E2EBE3DEC7AD9E030303E6D9D3E3D5CEE1D1CAC7AD9E4E
          2E1CFFFFFFC05754C47F79BC757056402FAF9E96B4AAA5BBB0AABBB0AABBB0AA
          735B4C7B2B287B2B287B2B28522A1BF0EAE6030303030303EAE0DAE9DDD7E6D9
          D3E3D5CEC7AD9E4E2E1CFFFFFFC05754CB8883C47F7956402F1A0F0B44362DFF
          FFFFFFFFFFEBDCD4735B4C7F2E2C7B2B287B2B28522A1BF3EEEAF0EAE6EEE6E2
          EBE3DEEAE0DAE9DDD7E6D9D3C7AD9E4E2E1CFFFFFFC05754D3928CCB88835640
          2F03030320130DFFFFFFEBDCD4D8BBAB735B4C8736347F2E2C7B2B28522A1BF6
          F0EEF3EEEAF0EAE6EEE6E2EBE3DEEAE0DAE9DDD7C7AD9E4E2E1CFFFFFFC05754
          DA9C96D3928C56402F56402F56402F56402F56402F56402F56402F8E3F3C8736
          347F2E2C522A1BF7F4F2F6F0EEF3EEEAF0EAE6EEE6E2EBE3DECCB7AAC7AD9E4E
          2E1CFFFFFFC05754E7ABA5E0A19CD79791CF8E88C7837FBC7570AD645EA65A56
          9E504D9647448E3F3C873634522A1BFAF8F7F7F4F2F6F0EEF3EEEAF0EAE6A48B
          7A4E2E1C4E2E1C4E2E1CFFFFFFC05754EBB0AAE7ABA5E0A19CD79791CF8E88C7
          837FB8706CB16864AA5E5A9E504D9647448E3F3C522A1BFCFBFBFAF8F7F7F4F2
          F6F0EEF3EEEAA48B7AEFE5DED0BAAD4E2E1CFFFFFFC05754EBB0AAEBB0AAB848
          41B84841B84841B84841B84841B84841B84841B84841A15551994C48522A1BFF
          FFFFFCFBFBFAF8F7F7F4F2F6F0EEA48B7AD0BAAD4E2E1CFFFFFFFFFFFFC05754
          EBB0AAB84841F8F2EFF3E9E3EEE0D9E9D9CFE0CABCDCC2B4D8BBABD8BBABB848
          41A15551522A1BFFFFFFFFFFFFFCFBFBFAF8F7F7F4F2A48B7A4E2E1CFFFFFFFF
          FFFFFFFFFFC05754EBB0AAB84841FFFFFFFBF6F4F6EDE9F0E3DEE6D5CAE2CEC1
          DEC6B8D9BFAFB84841AA5E5A522A1BA48B7AA48B7AA48B7AA48B7AA48B7AA48B
          7AFFFFFFFFFFFFFFFFFFFFFFFFC05754EBB0AAB84841FFFFFFFFFFFFFBF6F4F6
          EDE9EBDCD4E6D5CAE2CEC1DEC6B8B84841B16864522A1BFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC05754EBB0AAB84841FFFF
          FFFFFFFFFFFFFFFFFFFFF6EDE9F0E3DEEBDCD4E6D5CAB84841C47F79522A1BFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC05754
          EBB0AAB84841FFFFFFFFFFFFFFFFFFFFFFFFFBF6F4F6EDE9F0E3DEEBDCD4B848
          41030303522A1BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFC05754EBB0AAB84841FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF6F4
          F6EDE9F0E3DEB84841B8706C522A1BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFC05754C05754C05754C05754C05754C05754C0
          5754C05754C05754C05754C05754C05754C05754C05754FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = SpeedButton48Click
      end
      object SpeedButton49: TSpeedButton
        Left = 415
        Top = 139
        Width = 30
        Height = 26
        Hint = 'Sauver la liste des noms dans un fichier texte'
        Flat = True
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000011170000111700000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF522A1B522A
          1B522A1B522A1B522A1B522A1B522A1B522A1B522A1B522A1B522A1B522A1B52
          2A1BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          C05754C47F79BC757056402FAF9E96B4AAA5BBB0AABBB0AABBB0AA735B4C7B2B
          287B2B287B2B28522A1BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFC05754CB8883C47F7956402F1A0F0B44362DFFFFFFFFFFFF
          EBDCD4735B4C7F2E2C7B2B287B2B28522A1BFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC05754D3928CCB888356402F03030320
          130DFFFFFFEBDCD4D8BBAB735B4C8736347F2E2C7B2B28522A1BFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC05754DA9C96D392
          8C56402F56402F56402F56402F56402F56402F56402F8E3F3C8736347F2E2C52
          2A1BFFFFFFA48B7A4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C
          C05754E7ABA5E0A19CD79791CF8E88C7837FBC7570AD645EA65A569E504D9647
          448E3F3C873634522A1BFFFFFFA48B7AE9DDD7C7AD9EC7AD9EC7AD9EC7AD9EC7
          AD9EC7AD9EC7AD9EC05754EBB0AAE7ABA5E0A19CD79791CF8E88C7837FB8706C
          B16864AA5E5A9E504D9647448E3F3C522A1BFFFFFFA48B7AEAE0DAE9DDD7E6D9
          D3E3D5CEE1D1CADECEC5DCCAC0D9C6BCC05754EBB0AAEBB0AAB84841B84841B8
          4841B84841B84841B84841B84841B84841A15551994C48522A1BFFFFFFA48B7A
          EBE3DEEAE0DAE9DDD7E6D9D3E3D5CEE1D1CADECEC5DCCAC0C05754EBB0AAB848
          41F8F2EFF3E9E3EEE0D9E9D9CFE0CABCDCC2B4D8BBABD8BBABB84841A1555152
          2A1BFFFFFFA48B7AEEE6E2EBE3DEEAE0DAE9DDD7E6D9D3E3D5CEE1D1CADECEC5
          C05754EBB0AAB84841FFFFFFFBF6F4F6EDE9F0E3DEE6D5CAE2CEC1DEC6B8D9BF
          AFB84841AA5E5A522A1BFFFFFFA48B7AF0EAE6EEE6E2EBE3DEEAE0DA030303E6
          D9D3E3D5CEE1D1CAC05754EBB0AAB84841FFFFFFFFFFFFFBF6F4F6EDE9EBDCD4
          E6D5CAE2CEC1DEC6B8B84841B16864522A1BFFFFFFA48B7AF3EEEAF0EAE6EEE6
          E2EBE3DE030303030303E6D9D3E3D5CEC05754EBB0AAB84841FFFFFFFFFFFFFF
          FFFFFFFFFFF6EDE9F0E3DEEBDCD4E6D5CAB84841C47F79522A1BFFFFFFA48B7A
          F6F0EEF3EEEA030303030303030303030303030303E6D9D3C05754EBB0AAB848
          41FFFFFFFFFFFFFFFFFFFFFFFFFBF6F4F6EDE9F0E3DEEBDCD4B8484103030352
          2A1BFFFFFFA48B7AF7F4F2030303C7AD9EF0EAE6030303030303EAE0DAE9DDD7
          C05754EBB0AAB84841FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF6F4F6EDE9F0E3
          DEB84841B8706C522A1BFFFFFFA48B7AFAF8F7030303F6F0EEF3EEEA030303EE
          E6E2EBE3DEEAE0DAC05754C05754C05754C05754C05754C05754C05754C05754
          C05754C05754C05754C05754C05754C05754FFFFFFA48B7AFCFBFB030303F7F4
          F2F6F0EEF3EEEAF0EAE6EEE6E2EBE3DEEAE0DAE9DDD7E6D9D3C7AD9E4E2E1CFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA48B7A
          FFFFFF030303FAF8F7F7F4F2F6F0EEF3EEEAF0EAE6EEE6E2EBE3DEEAE0DAE9DD
          D7C7AD9E4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFA48B7AFFFFFFFFFFFFFCFBFBFAF8F7F7F4F2F6F0EEF3EEEAF0EAE6
          EEE6E2EBE3DECCB7AAC7AD9E4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFA48B7AFFFFFFFFFFFFFFFFFFFCFBFBFAF8F7F7
          F4F2F6F0EEF3EEEAF0EAE6A48B7A4E2E1C4E2E1C4E2E1CFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA48B7AFFFFFFFFFFFFFFFF
          FFFFFFFFFCFBFBFAF8F7F7F4F2F6F0EEF3EEEAA48B7AEFE5DED0BAAD4E2E1CFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA48B7A
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFBFBFAF8F7F7F4F2F6F0EEA48B7AD0BA
          AD4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFA48B7AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFBFBFAF8F7
          F7F4F2A48B7A4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFA48B7AA48B7AA48B7AA48B7AA48B7AA48B7AA4
          8B7AA48B7AA48B7AA48B7AA48B7AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = SpeedButton49Click
      end
      object SpeedButtonCollerListeEnseignants: TSpeedButton
        Left = 468
        Top = 138
        Width = 30
        Height = 26
        Hint = 
          'Ajouter la liste contenue dans le Presse-Papiers aux enseignants' +
          ' existants'
        Flat = True
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000011170000111700000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD79372782C08782C
          08782C08782C08782C08782C08782C08782C08782C08782C08782C08782C0878
          2C08FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          D79372F4E0D0B19786B19786B19786B19786B19786B19786B19786B19786B197
          86B19786B19786782C08FFFFFFFFFFFFB8DAEC0077B800458000458000458000
          4580004580004580D79372F6E5D8F4E0D0F3DAC9F0D5C1EFCFB8EDCAB1EBC5AA
          EABFA1E7BA9AE7B797E7B797B19786782C08FFFFFFFFFFFF0077B836ACDA0077
          BA0077BA0077BA0077BA0077BA0077BAD79372F8EAE0F6E5D8F4E0D0F3DAC9F0
          D5C1EFCFB8EDCAB1EBC5AAEABFA1E7BA9AE7B797B19786782C08FFFFFFFFFFFF
          0077B859C7E754C4E64FC0E34ABCE245B8E041B5DE3CB1DCD79372FAEFE7F8EA
          E0C6693DC6693DC6693DC6693DC6693DC6693DC6693DEABFA1E7BA9AB1978678
          2C08FFFFFFFFFFFF0077B862CEEB5BC9E956C5E751C1E54CBDE248BBE143B7E0
          D79372FCF4EFFAEFE7F8EAE0F6E5D8F4E0D0F3DAC9F0D5C1EFCFB8EDCAB1EBC5
          AAEABFA1B19786782C08FFFFFFFFFFFF0077B867D1ED62CEEB5BC9E956C5E751
          C1E54CBDE248BBE1D79372FFFCFBFCF4EFFAEFE7F8EAE0F6E5D8F4E0D0F3DAC9
          F0D5C1EFCFB8EDCAB1EBC5AAB19786782C08FFFFFFFFFFFF0077B86CD5EF67D1
          ED62CEEB5BC9E956C5E751C1E54CBDE2D79372FFFFFFFFFCFBC6693DC6693DC6
          693DC6693DC6693DC6693DC6693DF0D3BDEDCAB1B19786782C08FFFFFFFFFFFF
          0077B872D9F26CD5EF67D1ED62CEEB5BC9E956C5E751C1E5D79372FFFFFFFFFF
          FFFFFCFBFEF7F3FBF2EBFAEDE3F7E7DCF6E2D4F3DDCCF2D8C5F0D3BDB1978678
          2C08FFFFFFFFFFFF0077B877DDF372D9F26CD5EF67D1ED62CEEB5BC9E956C5E7
          D79372FFFFFFFFFFFFFFFFFFFFFCFBFEF7F3FBF2EBFAEDE3F7E7DCF6E2D4F3DD
          CCF2D8C5B19786782C08FFFFFFFFFFFF0077B87DE1F677DDF372D9F26CD5EF67
          D1ED62CEEB5BC9E9D79372FFFFFFFFFFFFC6693DC6693DC6693DC6693DC6693D
          C6693DC6693DF6E2D4F3DDCCB19786782C08FFFFFFFFFFFF0077B87DE1F67DE1
          F677DDF372D9F26CD5EF67D1ED62CEEBD79372FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFCFBFEF7F3FBF2EBFAEDE3F7E7DCB19786B19786782C08FFFFFFFFFFFF
          0077B87DE1F67DE1F67DE1F677DDF375DCF36ED7F069D3EED79372FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFBFEF7F3FBF2EBD79372782C08782C0878
          2C08FFFFFFFFFFFF0077B87DE1F67DE1F67DE1F67DE1F67AE0F475DCF36ED7F0
          D79372FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAF7D793
          72EFE5DED0BAAD782C08FFFFFFFFFFFF0077B87DE1F67DE1F67DE1F67DE1F67D
          E1F67AE0F475DCF3D79372FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFD79372D0BAAD782C08FFFFFFFFFFFFFFFFFF0077B87DE1F67DE1
          F67DE1F67DE1F67DE1F67DE1F67AE0F4D79372FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFD79372782C08FFFFFFFFFFFFFFFFFFFFFFFF
          0077B87DE1F67DE1F67DE1F67DE1F67DE1F67DE1F67DE1F6D79372D79372D793
          72D79372D79372D79372D79372D79372D79372D79372D79372FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0077B87DE1F67DE1F67DE1F62099D02099D02099D02099D0
          2099D02099D02099D02099D02099D064CFED5ECBEA59C7E70077BA004580FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0077B87DE1F67DE1F62099D000457700
          45770045770045770045770045770045770045770045772099D064CFED5ECBEA
          0077BA004580FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0077B87DE1F67DE1
          F60045777DE1F635ABDA35ABDA35ABDA35ABDA35ABDA35ABDA35ABDA0077BA00
          2B536CD5EF67D1ED0077BA004580FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0077B866B4E17DE1F67DE1F60045777DE1F653C2E6002B53002B53002B5353C2
          E60077BA002B5377DDF372D9F26CD5EF66B4E1004580FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFB8DAEC0077B80077B80077B80077B80045777DE1F67DE1F6
          7DE1F67DE1F60077BA002B530077BA0077BA0077BA0077BA0077BAB8DAECFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF004580004580004580004580004580FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = SpeedButtonCollerListeEnseignantsClick
      end
      object SpeedButtonSupprimerEnseignants: TSpeedButton
        Left = 8
        Top = 144
        Width = 344
        Height = 26
        Caption = 'S&upprimer toutes les enseignants de la liste'
        Flat = True
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000011170000111700000000000000000000FFFFFFFFFFFF
          FFFFFFB89F8E4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E
          1C4E2E1C0000804E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1CFFFFFF00
          0080FFFFFFFFFFFFFFFFFFB89F8EE7DDD7A48B7AA48B7AA48B7AA48B7AA48B7A
          A48B7AA48B7AA48B7AA48B7A0D2FFA000080A48B7AA48B7AA48B7AA48B7AA48B
          7A4E2E1C0000800D2FFAFFFFFFFFFFFFFFFFFFB89F8EEAE1DAE7DDD7E6D9D4E5
          D7D0E2D3CBE0CFC7DDCBC4DCCAC1D9C6BDD7C4B80D2FFA001ADCD0BAADD0BAAD
          D0BAADD0BAADA48B7A0000800D2FFA0D2FFAFFFFFFFFFFFFFFFFFFB89F8EEEE6
          E1EBE2DDE9DED9E7DCD5E5D8D1E3D4CEE1D0CADECEC5DCCAC1D9C6BDD7C4B80D
          2FFA000080D0BAADD0BAADD0BAAD0000800D2FFA0D2FFAFFFFFFFFFFFFFFFFFF
          FFFFFFB89F8EF0E9E64E2E1CA48B7AA48B7AA48B7AA48B7AA48B7AA48B7AA48B
          7AA48B7AA48B7AA48B7A0D2FFA000080A48B7A0000800D2FFA0D2FFAFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFB89F8EF3EDEA4E2E1CD0BAADD0BAADD5C1B7DECEC5
          E6D9D3EBE3DEF3EEEAFAF8F7FFFFFFFFFFFF1C3CFB0D2FFA0D2FFA0D2FFA0D2F
          FA4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB89F8EF6F0EE4E2E1CD0BAADD0
          BAADD0BAADD5C1B7DECEC5E6D9D3EBE3DEF3EEEAFAF8F7FFFFFFFFFFFF0D2FFA
          0D2FFA0D2FFAA48B7A4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB89F8EF8F3
          F34E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E
          2E1C0000800D2FFA0D2FFA0D2FFA0000804E2E1CFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFB89F8EFBF7F7F8F3F3F6F0EEF3EDEAF0E9E6EEE6E1EBE2DDE9DED9E7DC
          D5E5D8D1E3D4CE000080657FFC0D2FFA1C3CFB657FFC0D2FFA000080FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFB89F8EFCFBFBCC8028CC8028CC8028CC8028CC8028
          CC8028CC8028CC8028CC8028000080657FFC001ADCE0CFC7DDCBC41C3CFB657F
          FC0D2FFA000080FFFFFFFFFFFFFFFFFFFFFFFFB89F8EFFFFFFFCFBFBFBF7F7F8
          F3F3F7F2F0F4EEEDF2EBE7EFE7E3EDE3E0000080657FFC001ADCE5D7D0E2D3CB
          E0CFC7DDCBC41C3CFB657FFC0D2FFA000080FFFFFFFFFFFFFFFFFFB89F8EFFFF
          FF4E2E1CA48B7AA48B7AA48B7AA48B7AA48B7AA48B7AA48B7A001ADC001ADCA4
          8B7AA48B7AA48B7AA48B7AE0CFC7A48B7A1C3CFB0D2FFA0D2FFAFFFFFFFFFFFF
          FFFFFFB89F8EFFFFFF4E2E1CD0BAADD0BAADD5C1B7DECEC5E6D9D3EBE3DEF3EE
          EAFAF8F7FFFFFFFFFFFFFFFFFFFFFFFFA48B7AE2D3CBA48B7A4E2E1CFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFB89F8EFFFFFF4E2E1CD0BAADD0BAADD0BAADD5C1B7
          DECEC5E6D9D3EBE3DEF3EEEAFAF8F7FFFFFFFFFFFFFFFFFFA48B7AE5D7D0A48B
          7A4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB89F8EFFFFFF4E2E1C4E2E1C4E
          2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C
          4E2E1CE6D9D4A48B7A4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB89F8EFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFEFCFAFAFAF6F4F7F2F0F4EEEDF2
          EBE7EFE7E3EDE3E0EAE1DAE7DDD7A48B7A4E2E1CFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFB89F8EFFFFFFCC8028CC8028CC8028CC8028CC8028CC8028CC8028CC80
          28CC8028CC8028F4EEEDF2EBE7C9AD9DBBA190A48B7AA48B7A4E2E1CFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFB89F8EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFCFEFCFAFAFAF6F4F8F3F3B89F8E4E2E1C4E2E1C4E2E1C4E2E
          1C4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB89F8EFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFBFBFBF7F7B89F8EEFE5DE
          EADED7E1D1C7D0BAAD4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB89F8EFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC
          FBFBB89F8EEADED7E1D1C7D0BAAD4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFB89F8EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFB89F8EE1D1C7D0BAAD4E2E1CFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFB89F8EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB89F8ED0BAAD4E2E1CFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB89F8EB89F8EB89F8EB89F8EB8
          9F8EB89F8EB89F8EB89F8EB89F8EB89F8EB89F8EB89F8EB89F8EB89F8E4E2E1C
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = SpeedButtonSupprimerEnseignantsClick
      end
      object ListBoxUtilisateurs: TListBox
        Left = 6
        Top = 3
        Width = 349
        Height = 139
        Hint = 'Liste des enseignants utilisant Carnet de Notes'
        Columns = 2
        ItemHeight = 18
        Sorted = True
        Style = lbOwnerDrawFixed
        TabOrder = 0
        OnClick = ListBoxUtilisateursClick
        OnDrawItem = ListBoxUtilisateursDrawItem
      end
      object Edit6: TEdit
        Left = 362
        Top = 24
        Width = 137
        Height = 21
        Hint = 'Champ pour ajouter un nouvel utilisateur'
        MaxLength = 100
        TabOrder = 1
        OnChange = Edit6Change
        OnEnter = Edit6Enter
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Couleur des grilles'
      object Bevel6: TBevel
        Left = 0
        Top = 0
        Width = 507
        Height = 171
      end
      object Label6: TLabel
        Left = 64
        Top = 53
        Width = 68
        Height = 13
        Caption = 'Lignes paires :'
      end
      object Label7: TLabel
        Left = 64
        Top = 19
        Width = 78
        Height = 13
        Caption = 'Lignes impaires :'
      end
      object Shape1: TShape
        Left = 197
        Top = 50
        Width = 73
        Height = 17
        Hint = 'Couleur des lignes paires dans les grilles'
      end
      object Shape2: TShape
        Left = 197
        Top = 16
        Width = 73
        Height = 17
        Hint = 'Couleur des lignes impaires dans les grilles'
      end
      object SpeedButton1: TSpeedButton
        Left = 275
        Top = 47
        Width = 30
        Height = 26
        Hint = 'Permet de choisir la couleur des lignes paires dans les grilles'
        Flat = True
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000011170000111700000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFC7AC9C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C
          4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E
          1C4E2E1C4E2E1CFFFFFFC7AC9CEBE3DECAB1A3CAB1A3CAB1A3CAB1A3CAB1A3CA
          B1A3CAB1A3CAB1A3CAB1A3CAB1A3CAB1A3CAB1A3CAB1A3CAB1A3CAB1A3CAB1A3
          CAB1A3CAB1A3CAB1A3CAB1A34E2E1CFFFFFFC7AC9CEEE5E1EBE3DEEAE1DCEAE0
          D9E9DDD7E7DCD5E5D9D1E3D7CFE2D4CBE0D1C9DECFC6DDCCC2DACAC0D9C7BCD8
          C4BAD5C1B7D4BFB4D3BCB1D0BAADD0BAADCAB1A34E2E1CFFFFFFC7AC9CEFE7E3
          EEE5E13D904634873B297D2D1F73211C6E1CE5D9D13D904634873B297D2D1F73
          211C6E1CDACAC03D904634873B297D2D1F73211C6E1CD0BAADCAB1A34E2E1CFF
          FFFFC7AC9CF0EAE6EFE7E34698533D904634873B297D2D1F7321E7DCD5469853
          3D904634873B297D2D1F7321DDCCC24698533D904634873B297D2D1F7321D3BC
          B1CAB1A34E2E1CFFFFFFC7AC9CF2EDE9F0EAE650A05F4698533D904634873B29
          7D2DE9DDD750A05F4698533D904634873B297D2DDECFC650A05F4698533D9046
          34873B297D2DD4BFB4CAB1A34E2E1CFFFFFFC7AC9CF3EEEBF2EDE955A56650A0
          5F4698533D904634873BEAE0D955A56650A05F4698533D904634873BE0D1C955
          A56650A05F4698533D904634873BD5C1B7CAB1A34E2E1CFFFFFFC7AC9CF6F0EE
          F3EEEB55A56655A56650A05F4698533D9046EAE1DC55A56655A56650A05F4698
          533D9046E2D4CB55A56655A56650A05F4698533D9046D8C4BACAB1A34E2E1CFF
          FFFFC7AC9CF7F3F0F6F0EEF3EEEBF2EDE9F0EAE6EFE7E3EEE5E1EBE3DEEAE1DC
          EAE0D9E9DDD7E7DCD5E5D9D1E3D7CFE2D4CBE0D1C9DECFC6DDCCC2DACAC0D9C7
          BCCAB1A34E2E1CFFFFFFC7AC9CF8F4F3F7F3F01E45DA1B40D51639CE1232C610
          2FC2EEE5E11E45DA1B40D51639CE1232C6102FC2E5D9D11E45DA1B40D51639CE
          1232C6102FC2DACAC0CAB1A34E2E1CFFFFFFC7AC9CFAF7F6F8F4F3224CE11E45
          DA1B40D51639CE1232C6EFE7E3224CE11E45DA1B40D51639CE1232C6E7DCD522
          4CE11E45DA1B40D51639CE1232C6DDCCC2CAB1A34E2E1CFFFFFFC7AC9CFBFAF8
          FAF7F62752E9224CE11E45DA1B40D51639CEF0EAE62752E9224CE11E45DA1B40
          D51639CEE9DDD72752E9224CE11E45DA1B40D51639CEDECFC6CAB1A34E2E1CFF
          FFFFC7AC9CFCFCFBFBFAF82855EB2752E9224CE11E45DA1B40D5F2EDE92855EB
          2752E9224CE11E45DA1B40D5EAE0D92855EB2752E9224CE11E45DA1B40D5E0D1
          C9CAB1A34E2E1CFFFFFFC7AC9CFFFEFEFCFCFB2855EB2855EB2752E9224CE11E
          45DAF3EEEB2855EB2855EB2752E9224CE11E45DAEAE1DC2855EB2855EB2752E9
          224CE11E45DAE2D4CBCAB1A34E2E1CFFFFFFC7AC9CFFFFFFFFFEFEFCFCFBFBFA
          F8FAF7F6F8F4F3F7F3F0F6F0EEF3EEEBF2EDE9F0EAE6EFE7E3EEE5E1EBE3DEEA
          E1DCEAE0D9E9DDD7E7DCD5E5D9D1E3D7CFCAB1A34E2E1CFFFFFFC7AC9CFFFFFF
          FFFFFFE27546E06C3BDC632DD85921D7551CF7F3F0E27546E06C3BDC632DD859
          21D7551CEEE5E1E27546E06C3BDC632DD85921D7551CE5D9D1CAB1A34E2E1CFF
          FFFFC7AC9CFFFFFFFFFFFFE67D53E27546E06C3BDC632DD85921F8F4F3E67D53
          E27546E06C3BDC632DD85921EFE7E3E67D53E27546E06C3BDC632DD85921E7DC
          D5CAB1A34E2E1CFFFFFFC7AC9CFFFFFFFFFFFFEA845FE67D53E27546E06C3BDC
          632DFAF7F6EA845FE67D53E27546E06C3BDC632DF0EAE6EA845FE67D53E27546
          E06C3BDC632DE9DDD7CAB1A34E2E1CFFFFFFC7AC9CFFFFFFFFFFFFEB8966EA84
          5FE67D53E27546E06C3BFBFAF8EB8966EA845FE67D53E27546E06C3BF2EDE9EB
          8966EA845FE67D53E27546E06C3BEAE0D9CAB1A34E2E1CFFFFFFC7AC9CFFFFFF
          FFFFFFEB8966EB8966EA845FE67D53E27546FCFCFBEB8966EB8966EA845FE67D
          53E27546F3EEEBEB8966EB8966EA845FE67D53E27546EAE1DCCAB1A34E2E1CFF
          FFFFC7AC9CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFCFCFB
          FBFAF8FAF7F6F8F4F3F7F3F0F6F0EEF3EEEBF2EDE9F0EAE6EFE7E3EEE5E1EBE3
          DECAB1A34E2E1CFFFFFFC7AC9CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFCFCFBFBFAF8FAF7F6F8F4F3F7F3F0F6F0EEF3EEEBF2EDE9
          F0EAE6EFE7E3EEE5E1EBE3DE4E2E1CFFFFFFC7AC9CC7AC9CC7AC9CC7AC9CC7AC
          9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7
          AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CFFFFFF}
        OnClick = SpeedButton1Click
      end
      object SpeedButton2: TSpeedButton
        Left = 275
        Top = 14
        Width = 30
        Height = 26
        Hint = 
          'Permet de choisir la couleur des lignes impaires dans les grille' +
          's'
        Flat = True
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000011170000111700000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFC7AC9C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C
          4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E
          1C4E2E1C4E2E1CFFFFFFC7AC9CEBE3DECAB1A3CAB1A3CAB1A3CAB1A3CAB1A3CA
          B1A3CAB1A3CAB1A3CAB1A3CAB1A3CAB1A3CAB1A3CAB1A3CAB1A3CAB1A3CAB1A3
          CAB1A3CAB1A3CAB1A3CAB1A34E2E1CFFFFFFC7AC9CEEE5E1EBE3DEEAE1DCEAE0
          D9E9DDD7E7DCD5E5D9D1E3D7CFE2D4CBE0D1C9DECFC6DDCCC2DACAC0D9C7BCD8
          C4BAD5C1B7D4BFB4D3BCB1D0BAADD0BAADCAB1A34E2E1CFFFFFFC7AC9CEFE7E3
          EEE5E13D904634873B297D2D1F73211C6E1CE5D9D13D904634873B297D2D1F73
          211C6E1CDACAC03D904634873B297D2D1F73211C6E1CD0BAADCAB1A34E2E1CFF
          FFFFC7AC9CF0EAE6EFE7E34698533D904634873B297D2D1F7321E7DCD5469853
          3D904634873B297D2D1F7321DDCCC24698533D904634873B297D2D1F7321D3BC
          B1CAB1A34E2E1CFFFFFFC7AC9CF2EDE9F0EAE650A05F4698533D904634873B29
          7D2DE9DDD750A05F4698533D904634873B297D2DDECFC650A05F4698533D9046
          34873B297D2DD4BFB4CAB1A34E2E1CFFFFFFC7AC9CF3EEEBF2EDE955A56650A0
          5F4698533D904634873BEAE0D955A56650A05F4698533D904634873BE0D1C955
          A56650A05F4698533D904634873BD5C1B7CAB1A34E2E1CFFFFFFC7AC9CF6F0EE
          F3EEEB55A56655A56650A05F4698533D9046EAE1DC55A56655A56650A05F4698
          533D9046E2D4CB55A56655A56650A05F4698533D9046D8C4BACAB1A34E2E1CFF
          FFFFC7AC9CF7F3F0F6F0EEF3EEEBF2EDE9F0EAE6EFE7E3EEE5E1EBE3DEEAE1DC
          EAE0D9E9DDD7E7DCD5E5D9D1E3D7CFE2D4CBE0D1C9DECFC6DDCCC2DACAC0D9C7
          BCCAB1A34E2E1CFFFFFFC7AC9CF8F4F3F7F3F01E45DA1B40D51639CE1232C610
          2FC2EEE5E11E45DA1B40D51639CE1232C6102FC2E5D9D11E45DA1B40D51639CE
          1232C6102FC2DACAC0CAB1A34E2E1CFFFFFFC7AC9CFAF7F6F8F4F3224CE11E45
          DA1B40D51639CE1232C6EFE7E3224CE11E45DA1B40D51639CE1232C6E7DCD522
          4CE11E45DA1B40D51639CE1232C6DDCCC2CAB1A34E2E1CFFFFFFC7AC9CFBFAF8
          FAF7F62752E9224CE11E45DA1B40D51639CEF0EAE62752E9224CE11E45DA1B40
          D51639CEE9DDD72752E9224CE11E45DA1B40D51639CEDECFC6CAB1A34E2E1CFF
          FFFFC7AC9CFCFCFBFBFAF82855EB2752E9224CE11E45DA1B40D5F2EDE92855EB
          2752E9224CE11E45DA1B40D5EAE0D92855EB2752E9224CE11E45DA1B40D5E0D1
          C9CAB1A34E2E1CFFFFFFC7AC9CFFFEFEFCFCFB2855EB2855EB2752E9224CE11E
          45DAF3EEEB2855EB2855EB2752E9224CE11E45DAEAE1DC2855EB2855EB2752E9
          224CE11E45DAE2D4CBCAB1A34E2E1CFFFFFFC7AC9CFFFFFFFFFEFEFCFCFBFBFA
          F8FAF7F6F8F4F3F7F3F0F6F0EEF3EEEBF2EDE9F0EAE6EFE7E3EEE5E1EBE3DEEA
          E1DCEAE0D9E9DDD7E7DCD5E5D9D1E3D7CFCAB1A34E2E1CFFFFFFC7AC9CFFFFFF
          FFFFFFE27546E06C3BDC632DD85921D7551CF7F3F0E27546E06C3BDC632DD859
          21D7551CEEE5E1E27546E06C3BDC632DD85921D7551CE5D9D1CAB1A34E2E1CFF
          FFFFC7AC9CFFFFFFFFFFFFE67D53E27546E06C3BDC632DD85921F8F4F3E67D53
          E27546E06C3BDC632DD85921EFE7E3E67D53E27546E06C3BDC632DD85921E7DC
          D5CAB1A34E2E1CFFFFFFC7AC9CFFFFFFFFFFFFEA845FE67D53E27546E06C3BDC
          632DFAF7F6EA845FE67D53E27546E06C3BDC632DF0EAE6EA845FE67D53E27546
          E06C3BDC632DE9DDD7CAB1A34E2E1CFFFFFFC7AC9CFFFFFFFFFFFFEB8966EA84
          5FE67D53E27546E06C3BFBFAF8EB8966EA845FE67D53E27546E06C3BF2EDE9EB
          8966EA845FE67D53E27546E06C3BEAE0D9CAB1A34E2E1CFFFFFFC7AC9CFFFFFF
          FFFFFFEB8966EB8966EA845FE67D53E27546FCFCFBEB8966EB8966EA845FE67D
          53E27546F3EEEBEB8966EB8966EA845FE67D53E27546EAE1DCCAB1A34E2E1CFF
          FFFFC7AC9CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFCFCFB
          FBFAF8FAF7F6F8F4F3F7F3F0F6F0EEF3EEEBF2EDE9F0EAE6EFE7E3EEE5E1EBE3
          DECAB1A34E2E1CFFFFFFC7AC9CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFCFCFBFBFAF8FAF7F6F8F4F3F7F3F0F6F0EEF3EEEBF2EDE9
          F0EAE6EFE7E3EEE5E1EBE3DE4E2E1CFFFFFFC7AC9CC7AC9CC7AC9CC7AC9CC7AC
          9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7
          AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CFFFFFF}
        OnClick = SpeedButton2Click
      end
      object SpeedButton3: TSpeedButton
        Left = 309
        Top = 14
        Width = 105
        Height = 22
        Hint = 'Revenir à la couleur par défaut'
        Caption = '&Couleur par défaut'
        Flat = True
        OnClick = SpeedButton3Click
      end
      object SpeedButton4: TSpeedButton
        Left = 309
        Top = 47
        Width = 105
        Height = 22
        Hint = 'Revenir à la couleur par défaut'
        Caption = 'C&ouleur par défaut'
        Flat = True
        OnClick = SpeedButton4Click
      end
      object Label8: TLabel
        Left = 64
        Top = 120
        Width = 100
        Height = 13
        Caption = 'Cellule sélectionnée :'
      end
      object Shape3: TShape
        Left = 197
        Top = 118
        Width = 73
        Height = 17
        Hint = 'Couleur des cellules sélectionnées dans les grilles'
      end
      object SpeedButton5: TSpeedButton
        Left = 275
        Top = 114
        Width = 30
        Height = 26
        Hint = 
          'Permet de choisir la couleur des cellules sélectionnées dans les' +
          ' grilles'
        Flat = True
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000011170000111700000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFC7AC9C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C
          4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E
          1C4E2E1C4E2E1CFFFFFFC7AC9CEBE3DECAB1A3CAB1A3CAB1A3CAB1A3CAB1A3CA
          B1A3CAB1A3CAB1A3CAB1A3CAB1A3CAB1A3CAB1A3CAB1A3CAB1A3CAB1A3CAB1A3
          CAB1A3CAB1A3CAB1A3CAB1A34E2E1CFFFFFFC7AC9CEEE5E1EBE3DEEAE1DCEAE0
          D9E9DDD7E7DCD5E5D9D1E3D7CFE2D4CBE0D1C9DECFC6DDCCC2DACAC0D9C7BCD8
          C4BAD5C1B7D4BFB4D3BCB1D0BAADD0BAADCAB1A34E2E1CFFFFFFC7AC9CEFE7E3
          EEE5E13D904634873B297D2D1F73211C6E1CE5D9D13D904634873B297D2D1F73
          211C6E1CDACAC03D904634873B297D2D1F73211C6E1CD0BAADCAB1A34E2E1CFF
          FFFFC7AC9CF0EAE6EFE7E34698533D904634873B297D2D1F7321E7DCD5469853
          3D904634873B297D2D1F7321DDCCC24698533D904634873B297D2D1F7321D3BC
          B1CAB1A34E2E1CFFFFFFC7AC9CF2EDE9F0EAE650A05F4698533D904634873B29
          7D2DE9DDD750A05F4698533D904634873B297D2DDECFC650A05F4698533D9046
          34873B297D2DD4BFB4CAB1A34E2E1CFFFFFFC7AC9CF3EEEBF2EDE955A56650A0
          5F4698533D904634873BEAE0D955A56650A05F4698533D904634873BE0D1C955
          A56650A05F4698533D904634873BD5C1B7CAB1A34E2E1CFFFFFFC7AC9CF6F0EE
          F3EEEB55A56655A56650A05F4698533D9046EAE1DC55A56655A56650A05F4698
          533D9046E2D4CB55A56655A56650A05F4698533D9046D8C4BACAB1A34E2E1CFF
          FFFFC7AC9CF7F3F0F6F0EEF3EEEBF2EDE9F0EAE6EFE7E3EEE5E1EBE3DEEAE1DC
          EAE0D9E9DDD7E7DCD5E5D9D1E3D7CFE2D4CBE0D1C9DECFC6DDCCC2DACAC0D9C7
          BCCAB1A34E2E1CFFFFFFC7AC9CF8F4F3F7F3F01E45DA1B40D51639CE1232C610
          2FC2EEE5E11E45DA1B40D51639CE1232C6102FC2E5D9D11E45DA1B40D51639CE
          1232C6102FC2DACAC0CAB1A34E2E1CFFFFFFC7AC9CFAF7F6F8F4F3224CE11E45
          DA1B40D51639CE1232C6EFE7E3224CE11E45DA1B40D51639CE1232C6E7DCD522
          4CE11E45DA1B40D51639CE1232C6DDCCC2CAB1A34E2E1CFFFFFFC7AC9CFBFAF8
          FAF7F62752E9224CE11E45DA1B40D51639CEF0EAE62752E9224CE11E45DA1B40
          D51639CEE9DDD72752E9224CE11E45DA1B40D51639CEDECFC6CAB1A34E2E1CFF
          FFFFC7AC9CFCFCFBFBFAF82855EB2752E9224CE11E45DA1B40D5F2EDE92855EB
          2752E9224CE11E45DA1B40D5EAE0D92855EB2752E9224CE11E45DA1B40D5E0D1
          C9CAB1A34E2E1CFFFFFFC7AC9CFFFEFEFCFCFB2855EB2855EB2752E9224CE11E
          45DAF3EEEB2855EB2855EB2752E9224CE11E45DAEAE1DC2855EB2855EB2752E9
          224CE11E45DAE2D4CBCAB1A34E2E1CFFFFFFC7AC9CFFFFFFFFFEFEFCFCFBFBFA
          F8FAF7F6F8F4F3F7F3F0F6F0EEF3EEEBF2EDE9F0EAE6EFE7E3EEE5E1EBE3DEEA
          E1DCEAE0D9E9DDD7E7DCD5E5D9D1E3D7CFCAB1A34E2E1CFFFFFFC7AC9CFFFFFF
          FFFFFFE27546E06C3BDC632DD85921D7551CF7F3F0E27546E06C3BDC632DD859
          21D7551CEEE5E1E27546E06C3BDC632DD85921D7551CE5D9D1CAB1A34E2E1CFF
          FFFFC7AC9CFFFFFFFFFFFFE67D53E27546E06C3BDC632DD85921F8F4F3E67D53
          E27546E06C3BDC632DD85921EFE7E3E67D53E27546E06C3BDC632DD85921E7DC
          D5CAB1A34E2E1CFFFFFFC7AC9CFFFFFFFFFFFFEA845FE67D53E27546E06C3BDC
          632DFAF7F6EA845FE67D53E27546E06C3BDC632DF0EAE6EA845FE67D53E27546
          E06C3BDC632DE9DDD7CAB1A34E2E1CFFFFFFC7AC9CFFFFFFFFFFFFEB8966EA84
          5FE67D53E27546E06C3BFBFAF8EB8966EA845FE67D53E27546E06C3BF2EDE9EB
          8966EA845FE67D53E27546E06C3BEAE0D9CAB1A34E2E1CFFFFFFC7AC9CFFFFFF
          FFFFFFEB8966EB8966EA845FE67D53E27546FCFCFBEB8966EB8966EA845FE67D
          53E27546F3EEEBEB8966EB8966EA845FE67D53E27546EAE1DCCAB1A34E2E1CFF
          FFFFC7AC9CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFCFCFB
          FBFAF8FAF7F6F8F4F3F7F3F0F6F0EEF3EEEBF2EDE9F0EAE6EFE7E3EEE5E1EBE3
          DECAB1A34E2E1CFFFFFFC7AC9CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFCFCFBFBFAF8FAF7F6F8F4F3F7F3F0F6F0EEF3EEEBF2EDE9
          F0EAE6EFE7E3EEE5E1EBE3DE4E2E1CFFFFFFC7AC9CC7AC9CC7AC9CC7AC9CC7AC
          9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7
          AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CFFFFFF}
        OnClick = SpeedButton5Click
      end
      object SpeedButton6: TSpeedButton
        Left = 309
        Top = 114
        Width = 105
        Height = 22
        Hint = 'Revenir à la couleur par défaut'
        Caption = 'Cou&leur par défaut'
        Flat = True
        OnClick = SpeedButton6Click
      end
      object Label22: TLabel
        Left = 64
        Top = 86
        Width = 130
        Height = 13
        Caption = 'Note en dehors des limites :'
      end
      object Shape8: TShape
        Left = 197
        Top = 84
        Width = 73
        Height = 17
        Hint = 
          'Couleur du fond des cellules des grilles contenant une note inco' +
          'rrecte'
      end
      object SpeedButton16: TSpeedButton
        Left = 275
        Top = 81
        Width = 30
        Height = 26
        Hint = 
          'Permet de choisir la couleur du fond des cellules des grilles co' +
          'ntenant une note incorrecte'
        Flat = True
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000011170000111700000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFC7AC9C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C
          4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E
          1C4E2E1C4E2E1CFFFFFFC7AC9CEBE3DECAB1A3CAB1A3CAB1A3CAB1A3CAB1A3CA
          B1A3CAB1A3CAB1A3CAB1A3CAB1A3CAB1A3CAB1A3CAB1A3CAB1A3CAB1A3CAB1A3
          CAB1A3CAB1A3CAB1A3CAB1A34E2E1CFFFFFFC7AC9CEEE5E1EBE3DEEAE1DCEAE0
          D9E9DDD7E7DCD5E5D9D1E3D7CFE2D4CBE0D1C9DECFC6DDCCC2DACAC0D9C7BCD8
          C4BAD5C1B7D4BFB4D3BCB1D0BAADD0BAADCAB1A34E2E1CFFFFFFC7AC9CEFE7E3
          EEE5E13D904634873B297D2D1F73211C6E1CE5D9D13D904634873B297D2D1F73
          211C6E1CDACAC03D904634873B297D2D1F73211C6E1CD0BAADCAB1A34E2E1CFF
          FFFFC7AC9CF0EAE6EFE7E34698533D904634873B297D2D1F7321E7DCD5469853
          3D904634873B297D2D1F7321DDCCC24698533D904634873B297D2D1F7321D3BC
          B1CAB1A34E2E1CFFFFFFC7AC9CF2EDE9F0EAE650A05F4698533D904634873B29
          7D2DE9DDD750A05F4698533D904634873B297D2DDECFC650A05F4698533D9046
          34873B297D2DD4BFB4CAB1A34E2E1CFFFFFFC7AC9CF3EEEBF2EDE955A56650A0
          5F4698533D904634873BEAE0D955A56650A05F4698533D904634873BE0D1C955
          A56650A05F4698533D904634873BD5C1B7CAB1A34E2E1CFFFFFFC7AC9CF6F0EE
          F3EEEB55A56655A56650A05F4698533D9046EAE1DC55A56655A56650A05F4698
          533D9046E2D4CB55A56655A56650A05F4698533D9046D8C4BACAB1A34E2E1CFF
          FFFFC7AC9CF7F3F0F6F0EEF3EEEBF2EDE9F0EAE6EFE7E3EEE5E1EBE3DEEAE1DC
          EAE0D9E9DDD7E7DCD5E5D9D1E3D7CFE2D4CBE0D1C9DECFC6DDCCC2DACAC0D9C7
          BCCAB1A34E2E1CFFFFFFC7AC9CF8F4F3F7F3F01E45DA1B40D51639CE1232C610
          2FC2EEE5E11E45DA1B40D51639CE1232C6102FC2E5D9D11E45DA1B40D51639CE
          1232C6102FC2DACAC0CAB1A34E2E1CFFFFFFC7AC9CFAF7F6F8F4F3224CE11E45
          DA1B40D51639CE1232C6EFE7E3224CE11E45DA1B40D51639CE1232C6E7DCD522
          4CE11E45DA1B40D51639CE1232C6DDCCC2CAB1A34E2E1CFFFFFFC7AC9CFBFAF8
          FAF7F62752E9224CE11E45DA1B40D51639CEF0EAE62752E9224CE11E45DA1B40
          D51639CEE9DDD72752E9224CE11E45DA1B40D51639CEDECFC6CAB1A34E2E1CFF
          FFFFC7AC9CFCFCFBFBFAF82855EB2752E9224CE11E45DA1B40D5F2EDE92855EB
          2752E9224CE11E45DA1B40D5EAE0D92855EB2752E9224CE11E45DA1B40D5E0D1
          C9CAB1A34E2E1CFFFFFFC7AC9CFFFEFEFCFCFB2855EB2855EB2752E9224CE11E
          45DAF3EEEB2855EB2855EB2752E9224CE11E45DAEAE1DC2855EB2855EB2752E9
          224CE11E45DAE2D4CBCAB1A34E2E1CFFFFFFC7AC9CFFFFFFFFFEFEFCFCFBFBFA
          F8FAF7F6F8F4F3F7F3F0F6F0EEF3EEEBF2EDE9F0EAE6EFE7E3EEE5E1EBE3DEEA
          E1DCEAE0D9E9DDD7E7DCD5E5D9D1E3D7CFCAB1A34E2E1CFFFFFFC7AC9CFFFFFF
          FFFFFFE27546E06C3BDC632DD85921D7551CF7F3F0E27546E06C3BDC632DD859
          21D7551CEEE5E1E27546E06C3BDC632DD85921D7551CE5D9D1CAB1A34E2E1CFF
          FFFFC7AC9CFFFFFFFFFFFFE67D53E27546E06C3BDC632DD85921F8F4F3E67D53
          E27546E06C3BDC632DD85921EFE7E3E67D53E27546E06C3BDC632DD85921E7DC
          D5CAB1A34E2E1CFFFFFFC7AC9CFFFFFFFFFFFFEA845FE67D53E27546E06C3BDC
          632DFAF7F6EA845FE67D53E27546E06C3BDC632DF0EAE6EA845FE67D53E27546
          E06C3BDC632DE9DDD7CAB1A34E2E1CFFFFFFC7AC9CFFFFFFFFFFFFEB8966EA84
          5FE67D53E27546E06C3BFBFAF8EB8966EA845FE67D53E27546E06C3BF2EDE9EB
          8966EA845FE67D53E27546E06C3BEAE0D9CAB1A34E2E1CFFFFFFC7AC9CFFFFFF
          FFFFFFEB8966EB8966EA845FE67D53E27546FCFCFBEB8966EB8966EA845FE67D
          53E27546F3EEEBEB8966EB8966EA845FE67D53E27546EAE1DCCAB1A34E2E1CFF
          FFFFC7AC9CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFCFCFB
          FBFAF8FAF7F6F8F4F3F7F3F0F6F0EEF3EEEBF2EDE9F0EAE6EFE7E3EEE5E1EBE3
          DECAB1A34E2E1CFFFFFFC7AC9CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFCFCFBFBFAF8FAF7F6F8F4F3F7F3F0F6F0EEF3EEEBF2EDE9
          F0EAE6EFE7E3EEE5E1EBE3DE4E2E1CFFFFFFC7AC9CC7AC9CC7AC9CC7AC9CC7AC
          9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7
          AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CFFFFFF}
        OnClick = SpeedButton16Click
      end
      object SpeedButton17: TSpeedButton
        Left = 309
        Top = 81
        Width = 105
        Height = 22
        Hint = 'Revenir à la couleur par défaut'
        Caption = 'Co&uleur par défaut'
        Flat = True
        OnClick = SpeedButton17Click
      end
      object CheckBox5: TCheckBox
        Left = 291
        Top = 147
        Width = 209
        Height = 17
        Hint = 'Grilles en couleur ou non à l'#39'écran'
        Caption = 'Utiliser la coloration des grilles à l'#39'écran'
        Checked = True
        State = cbChecked
        TabOrder = 0
        OnClick = CheckBox5Click
      end
    end
    object TabSheet9: TTabSheet
      Caption = 'Types de périodes'
      object Bevel10: TBevel
        Left = 1
        Top = 0
        Width = 505
        Height = 171
      end
      object Label2: TLabel
        Left = 162
        Top = 24
        Width = 124
        Height = 13
        Caption = '&Nom du type de périodes :'
        FocusControl = Edit2
      end
      object Label4: TLabel
        Left = 166
        Top = 76
        Width = 126
        Height = 13
        Caption = 'N&ombre de sous-périodes :'
      end
      object Label5: TLabel
        Left = 342
        Top = 9
        Width = 121
        Height = 13
        Caption = 'No&ms des sous-périodes :'
        FocusControl = ListBoxSousPeriodes
      end
      object SpeedButtonAjouterALaListe: TSpeedButton
        Left = 161
        Top = 129
        Width = 137
        Height = 26
        Hint = 
          'Ajouter à la liste la période écrite dans le champ au dessus en ' +
          'créant le nombre de sous périodes indiqué au dessus'
        Caption = '&Ajouter à la liste'
        Enabled = False
        Flat = True
        Glyph.Data = {
          B60D0000424DB60D000000000000360000002800000030000000180000000100
          180000000000800D0000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E
          2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C
          4E2E1C4E2E1C4E2E1C4E2E1C4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF6C6C6C6C6C6C6C6C6C6C6C6C6B6B6B6B6B6B6B6B6B6B6B6B6C
          6C6C6C6C6C6C6C6C6C6C6C6B6B6B6C6C6C6C6C6C6C6C6CFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF4E2E1CD0BAADA48B7AA48B7AA48B7AA48B7AA48B
          7AA48B7AA48B7AA48B7AA48B7AA48B7AA48B7AA48B7AA48B7AA48B7A4E2E1CFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6B6B6BD8D8D8B9B9B9B9B9B9
          B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9
          B9B9B9B96C6C6CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E2E1CD0BAADEB
          E3DEEAE0DAE9DDD8E6DAD4E5D7D0E2D3CBE0CFC7DDCCC2DAC9BFD8C5BAD5C1B6
          D3BDB2D0BAADD0BAADA48B7A4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF6C6C6CD8D8D8F0F0F0EEEEEEEDEDEDEBEBEBE9E9E9E7E7E7E5E5E5E3E3E3E1
          E1E1DFDFDFDDDDDDDADADAD8D8D8D8D8D8B9B9B96C6C6CFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF4E2E1CD0BAADF0EAE6EEE6E2EBE3DEEAE0DAE9DDD8E6DAD4E5D7
          D0E2D3CBE0CFC7DDCCC2DAC9BFD8C5BAD5C1B6D3BDB2D0BAADA48B7A4E2E1CFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF6C6C6CD8D8D8F4F4F4F2F2F2F0F0F0EEEEEE
          EDEDEDEBEBEBE9E9E9E7E7E7E5E5E5E3E3E3E1E1E1DFDFDFDDDDDDDADADAD8D8
          D8B9B9B96B6B6BFFFFFFFFFFFFFFFFFFFFFFFF4E2E1CD0BAADF4EFEDF3EDEAF0
          EAE6EEE6E2EBE3DEEAE0DAE9DDD8E6DAD4E5D7D0E2D3CBE0CFC7DDCCC2DAC9BF
          D8C5BAD5C1B6D3BDB2A48B7A4E2E1CFFFFFFFFFFFFFFFFFFFFFFFF6B6B6BD8D8
          D8F7F7F7F6F6F6F4F4F4F2F2F2F1F1F1EEEEEEEDEDEDEBEBEBE9E9E9E7E7E7E5
          E5E5E3E3E3E1E1E1DFDFDFDCDCDCDADADAB9B9B96C6C6CFFFFFFFFFFFFFFFFFF
          4E2E1CD0BAADFAF6F4F7F3F0A48B7AF3EDEAF0EAE6EEE6E2EBE3DEEAE0DAE9DD
          D8E6DAD4E5D7D0E2D3CBE0CFC7DDCCC2DAC9BFD8C5BAD5C1B6A48B7A4E2E1CFF
          FFFFFFFFFFFFFFFF6C6C6CD8D8D8FAFAFAF9F9F9B9B9B9F6F6F6F4F4F4F2F2F2
          F0F0F0EEEEEEEDEDEDEBEBEBE9E9E9E7E7E7E5E5E5E3E3E3E1E1E1DFDFDFDCDC
          DCB9B9B96B6B6BFFFFFFFFFFFF997F6EFFFFFFFEFCFCFBFAF84E2E1CF7F3F0A4
          8B7AF3EDEAF0EAE6EEE6E2EBE3DEEAE0DAE9DDD8E6DAD4E5D7D0E2D3CBE0CFC7
          DDCCC2DAC9BFD8C5BAA48B7A4E2E1CFFFFFFFFFFFFB1B1B1FFFFFFFEFEFEFDFD
          FD6C6C6CF9F9F9B9B9B9F6F6F6F4F4F4F2F2F2F0F0F0EEEEEEEDEDEDECECECE9
          E9E9E7E7E7E5E5E5E3E3E3E0E0E0DEDEDEB9B9B96C6C6CFFFFFFFFFFFFFFFFFF
          997F6EFFFFFFFEFCFCFBFAF84E2E1CF7F3F0F4EFEDF3EDEAF0EAE6EEE6E2EBE3
          DEEAE0DAE9DDD8E6DAD4E5D7D0E2D3CBE0CFC7DDCCC2DAC9BFA48B7A4E2E1CFF
          FFFFFFFFFFFFFFFFB1B1B1FFFFFFFEFEFEFCFCFC6C6C6CF9F9F9F7F7F7F5F5F5
          F4F4F4F2F2F2F0F0F0EEEEEEEDEDEDEBEBEBE9E9E9E7E7E7E5E5E5E3E3E3E1E1
          E1B9B9B96C6C6CFFFFFFFFFFFFFFFFFFFFFFFF997F6EFFFFFFFEFCFCFBFAF8FA
          F6F4F7F3F0F4EFEDF3EDEAF0EAE6EEE6E2EBE3DEEAE0DAE9DDD8E6DAD4E5D7D0
          E2D3CBE0CFC7DDCCC2A48B7A4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFB1B1B1FFFF
          FFFEFEFEFCFCFCFBFBFBF9F9F9F7F7F7F5F5F5F4F4F4F2F2F2F0F0F0EEEEEEED
          EDEDECECECE9E9E9E7E7E7E5E5E5E3E3E3B9B9B96B6B6BFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF997F6EFFFFFFFEFCFCFBFAF8FAF6F4F7F3F0F4EFEDF3EDEAF0EA
          E6EEE6E2EBE3DEEAE0DAE9DDD8E6DAD4E5D7D0E2D3CBE0CFC7A48B7A4E2E1CFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFB1B1B1FFFFFFFEFEFEFCFCFCFBFBFBF9F9F9
          F7F7F7F6F6F6F4F4F4F2F2F2F0F0F0EEEEEEEDEDEDECECECE9E9E9E6E6E6E5E5
          E5B9B9B96B6B6BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF997F6EFFFFFFFE
          FCFCFBFAF8FAF6F4F7F3F0F4EFEDF3EDEAF0EAE6EEE6E2EBE3DE004500004500
          004500E5D7D0E2D3CBA48B7A4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFB1B1B1FFFFFFFEFEFEFCFCFCFBFBFBF9F9F9F7F7F7F5F5F5F4F4F4F2F2F2F1
          F1F1787878777777777777E9E9E9E7E7E7B9B9B96C6C6CFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF997F6EFFFFFFFEFCFCFBFAF8FAF6F4F7F3F0F4EF
          EDF3EDEAF0EAE6EEE6E200450010A51D004500E6DAD4E5D7D0E2D3CB4E2E1CFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB1B1B1FFFFFFFEFEFEFDFDFD
          FBFBFBF9F9F9F7F7F7F5F5F5F3F3F3F2F2F2787878B9B9B9777777EBEBEBE9E9
          E9E7E7E76C6C6CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99
          7F6E977D6B9579689277669074638C725F8A6E5D886C5A8669580045001CB833
          0045007D5E4D7A5C4B785A48765745FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFB1B1B1AFAFAFACACACABABABA9A9A9A7A7A7A5A5A5A3A3A3A1
          A1A1777777C5C5C5787878989898979797959595929292FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF0045000045000045000045002DD352004500004500004500004500FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF787878777777777777777777D5D5D57878787777777777
          77777777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00450045F68045F68045F68039E569
          2DD35221C13D16AF28004500FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF777777EAEAEAEA
          EAEAEAEAEAE0E0E0D5D5D5CACACAC0C0C0787878FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00450000450000450000450045F680004500004500004500004500FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF777777787878777777777777EAEAEA7777777878787777
          77777777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00450045F680
          004500FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF787878EAEAEA777777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF00450045F680004500FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF787878EAEAEA777777FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF004500004500
          004500FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF787878777777777777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        NumGlyphs = 2
        OnClick = SpeedButtonAjouterALaListeClick
      end
      object SpeedButtonListeParDefaut: TSpeedButton
        Left = 10
        Top = 140
        Width = 137
        Height = 26
        Hint = 'Revenir à la liste par défaut'
        Caption = '&Liste par défaut'
        Flat = True
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000011170000111700000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFF0045000045000045000045000045000045000045000045000045
          00004500004500004500004500004500004500004500004500004500004500FF
          FFFFFFFFFFFFFFFF101310101310FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF008000004500FFFFFFFFFFFF101310FFFFFF55555510131000450000450000
          4500004500004500004500004500004500004500004500004500004500004500
          004500004500004500004500004500FFFFFFFFFFFF787A7D1013101013100FA4
          1C0D9F180B9C1409971007930C058F09038B0602870300820100800000800000
          8000008000008000008000008000004500C26600C26600FFFFFFFFFFFF101310
          FFFFFF5555551013100FA41C0D9F180B9C1409971007930C058F09038B060287
          03008201008000008000008000008000008000008000004500F6B877F6B877C2
          6600FFFFFF787A7D10131010131014AC2511A7200FA41C0D9F180B9C14099710
          07930C058F09038B060287030082010080000080000080000080000080000045
          00F6B877F6B877C26600FFFFFF101310FFFFFF55555510131014AC2511A7200F
          A41C0D9F180B9C1409971007930C058F09038B06028703008201008000008000
          008000008000004500F6B877F6B877C26600FFFFFF787A7D10131010131019B5
          2F17B12A14AC2511A7200FA41C0D9F180B9C1409971007930C058F09038B0602
          8703008201008000008000008000004500F6D79CF6D79CC26600FFFFFF101310
          FFFFFF55555510131019B52F17B12A14AC2511A7200FA41C0D9F180B9C140997
          1007930C058F09038B06028703008201008000008000004500C26600C26600FF
          FFFFFFFFFF787A7D10131010131020C03B1CBA3519B52F17B12A14AC2511A720
          0FA41C0D9F180B9C1409971007930C058F09038B060287030082010080000045
          00004500004500FFFFFFFFFFFF101310FFFFFF55555510131020C03B1CBA3519
          B52F17B12A14AC2511A7200FA41C0D9F180B9C1409971007930C058F09038B06
          0287030082010045001CB8451CB845004500FFFFFF787A7D10131010131027CA
          4823C54120C03B1CBA3519B52F17B12A14AC2511A7200FA41C0D9F180B9C1409
          971007930C058F09038B060287030045001CB8451CB845004500FFFFFF101310
          FFFFFF55555510131027CA4823C54120C03B1CBA3519B52F17B12A14AC2511A7
          200FA41C0D9F180B9C1409971007930C058F09038B060045001CB8451CB84500
          4500FFFFFF787A7D1013101013102ED5562BD04F27CA4823C54120C03B1CBA35
          19B52F17B12A14AC2511A7200FA41C0D9F180B9C1409971007930C058F090045
          0045F67745F677004500FFFFFF101310FFFFFF5555551013102ED5562BD04F27
          CA4823C54120C03B1CBA3519B52F17B12A14AC2511A7200FA41C0D9F180B9C14
          09971007930C004500004500004500FFFFFFFFFFFF787A7D10131010131036E1
          6533DC5D2ED5562BD04F27CA4823C54120C03B1CBA3519B52F17B12A14AC2511
          A7200FA41C0D9F180B9C14099710004500004577004577FFFFFFFFFFFF101310
          FFFFFF55555510131036E16533DC5D2ED5562BD04F27CA4823C54120C03B1CBA
          3519B52F17B12A14AC2511A7200FA41C0D9F180B9C1400450000B8F600B8F600
          4577FFFFFF787A7D1013101013103FED733AE66C36E16533DC5D2ED5562BD04F
          27CA4823C54120C03B1CBA3519B52F17B12A14AC2511A7200FA41C0D9F180045
          0000B8F600B8F6004577FFFFFF101310FFFFFF5555551013103FED733AE66C36
          E16533DC5D2ED5562BD04F27CA4823C54120C03B1CBA3519B52F17B12A14AC25
          11A7200FA41C00450000B8F600B8F6004577FFFFFF787A7D10131010131045F6
          8042F27A3FED733AE66C36E16533DC5D2ED5562BD04F27CA4823C54120C03B1C
          BA3519B52F17B12A14AC2511A72000450000F6F600F6F6004577FFFFFF101310
          FFFFFF55555510131045F68042F27A3FED733AE66C36E16533DC5D2ED5562BD0
          4F27CA4823C54120C03B1CBA3519B52F17B12A14AC25004500004577004577FF
          FFFFFFFFFF787A7D10131010131045F68045F68045F68042F27A3FED733AE66C
          36E16533DC5D2ED5562BD04F27CA4823C54120C03B1CBA3519B52F17B12A0045
          00004500004500FFFFFFFFFFFFFFFFFFFFFFFF00800000800000800000800000
          8000008000008000008000008000008000008000008000008000008000008000
          008000008000008000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = SpeedButtonListeParDefautClick
      end
      object SpeedButtonSupprimerDeLaListe: TSpeedButton
        Left = 10
        Top = 110
        Width = 137
        Height = 26
        Hint = 'Supprimer de la liste la période sélectionnée'
        Caption = '&Supprimer de la liste'
        Enabled = False
        Flat = True
        Glyph.Data = {
          B60D0000424DB60D000000000000360000002800000030000000180000000100
          180000000000800D0000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E
          2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C
          4E2E1C4E2E1C4E2E1C4E2E1C4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C
          6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6CFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF4E2E1CD0BAADA48B7AA48B7AA48B7AA48B7AA48B
          7AA48B7AA48B7AA48B7AA48B7AA48B7AA48B7AA48B7AA48B7AA48B7A4E2E1CFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6C6C6CD8D8D8B9B9B9B9B9B9
          B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9
          B9B9B9B96B6B6BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E2E1CD0BAADEB
          E3DEEAE0DAE9DDD8E6DAD4E5D7D0E2D3CBE0CFC7DDCCC2DAC9BFD8C5BAD5C1B6
          D3BDB2D0BAADD0BAADA48B7A4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF6C6C6CD8D8D8F0F0F0EEEEEEEDEDEDECECECE9E9E9E7E7E7E5E5E5E3E3E3E0
          E0E0DFDFDFDCDCDCDADADAD8D8D8D8D8D8B9B9B96C6C6CFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF4E2E1CD0BAADF0EAE6EEE6E2EBE3DEEAE0DAE9DDD8E6DAD4E5D7
          D0E2D3CBE0CFC7DDCCC2DAC9BFD8C5BAD5C1B6D3BDB2D0BAADA48B7A4E2E1CFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF6C6C6CD8D8D8F4F4F4F2F2F2F1F1F1EEEEEE
          EDEDEDEBEBEBE9E9E9E7E7E7E5E5E5E3E3E3E1E1E1DFDFDFDDDDDDDADADAD8D8
          D8B9B9B96C6C6CFFFFFFFFFFFFFFFFFFFFFFFF4E2E1CD0BAADF4EFEDF3EDEAF0
          EAE6EEE6E2EBE3DEEAE0DAE9DDD8E6DAD4E5D7D0E2D3CBE0CFC7DDCCC2DAC9BF
          D8C5BAD5C1B6D3BDB2A48B7A4E2E1CFFFFFFFFFFFFFFFFFFFFFFFF6B6B6BD8D8
          D8F7F7F7F5F5F5F4F4F4F2F2F2F0F0F0EEEEEEEDEDEDEBEBEBE9E9E9E7E7E7E5
          E5E5E3E3E3E1E1E1DFDFDFDCDCDCDADADAB9B9B96C6C6CFFFFFFFFFFFFFFFFFF
          4E2E1CD0BAADFAF6F4F7F3F0A48B7AF3EDEAF0EAE6EEE6E2EBE3DEEAE0DAE9DD
          D8E6DAD4E5D7D0E2D3CBE0CFC7DDCCC2DAC9BFD8C5BAD5C1B6A48B7A4E2E1CFF
          FFFFFFFFFFFFFFFF6C6C6CD8D8D8FBFBFBF9F9F9B9B9B9F6F6F6F4F4F4F2F2F2
          F1F1F1EEEEEEEDEDEDECECECE9E9E9E7E7E7E5E5E5E3E3E3E0E0E0DFDFDFDCDC
          DCB9B9B96C6C6CFFFFFFFFFFFF997F6EFFFFFFFEFCFCFBFAF84E2E1CF7F3F0A4
          8B7AF3EDEAF0EAE6EEE6E2EBE3DEEAE0DAE9DDD8E6DAD4E5D7D0E2D3CBE0CFC7
          DDCCC2DAC9BFD8C5BAA48B7A4E2E1CFFFFFFFFFFFFB1B1B1FFFFFFFEFEFEFCFC
          FC6B6B6BF9F9F9B9B9B9F6F6F6F4F4F4F2F2F2F0F0F0EEEEEEEDEDEDEBEBEBE9
          E9E9E7E7E7E5E5E5E3E3E3E0E0E0DFDFDFB9B9B96B6B6BFFFFFFFFFFFFFFFFFF
          997F6EFFFFFFFEFCFCFBFAF84E2E1CF7F3F0F4EFEDF3EDEAF0EAE6EEE6E2EBE3
          DEEAE0DAE9DDD8E6DAD4E5D7D0E2D3CBE0CFC7DDCCC2DAC9BFA48B7A4E2E1CFF
          FFFFFFFFFFFFFFFFB1B1B1FFFFFFFEFEFEFCFCFC6C6C6CF9F9F9F7F7F7F6F6F6
          F4F4F4F2F2F2F0F0F0EEEEEEEDEDEDEBEBEBE9E9E9E7E7E7E5E5E5E3E3E3E1E1
          E1B9B9B96B6B6BFFFFFFFFFFFFFFFFFFFFFFFF997F6EFFFFFFFEFCFCFBFAF8FA
          F6F4F7F3F0F4EFEDF3EDEAF0EAE6EEE6E2EBE3DEEAE0DAE9DDD8E6DAD4E5D7D0
          E2D3CBE0CFC7DDCCC2A48B7A4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFB1B1B1FFFF
          FFFEFEFEFDFDFDFBFBFBF9F9F9F7F7F7F5F5F5F4F4F4F2F2F2F1F1F1EEEEEEED
          EDEDECECECE9E9E9E6E6E6E5E5E5E3E3E3B9B9B96C6C6CFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF997F6EFFFFFFFEFCFCFBFAF8FAF6F4F7F3F0F4EFEDF3EDEAF0EA
          E6EEE6E2EBE3DEEAE0DAE9DDD8E6DAD4E5D7D0E2D3CBE0CFC7A48B7A4E2E1CFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFB1B1B1FFFFFFFEFEFEFDFDFDFAFAFAF9F9F9
          F7F7F7F6F6F6F4F4F4F2F2F2F0F0F0EEEEEEEDEDEDECECECE9E9E9E7E7E7E5E5
          E5B9B9B96C6C6CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF997F6EFFFFFFFE
          FCFCFBFAF8FAF6F4F7F3F0F4EFEDF3EDEAF0EAE6EEE6E2EBE3DEEAE0DAE9DDD8
          E6DAD4E5D7D0E2D3CBA48B7A4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFB1B1B1FFFFFFFEFEFEFDFDFDFBFBFBF9F9F9F7F7F7F6F6F6F4F4F4F2F2F2F0
          F0F0EEEEEEEDEDEDECECECE9E9E9E6E6E6B9B9B96C6C6CFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF997F6EFFFFFFFEFCFCFBFAF8FAF6F4F7F3F0F4EF
          EDF3EDEAF0EAE6EEE6E2EBE3DEEAE0DAE9DDD8E6DAD4E5D7D0E2D3CB4E2E1CFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB1B1B1FFFFFFFEFEFEFDFDFD
          FBFBFBF9F9F9F7F7F7F6F6F6F4F4F4F2F2F2F1F1F1EEEEEEEDEDEDEBEBEBE9E9
          E9E7E7E76B6B6BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99
          7F6E977D6B9579689277669074638C725F8A6E5D886C5A866958836755816452
          7F62507D5E4D7A5C4B785A48765745FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFB1B1B1AFAFAFADADADABABABA9A9A9A7A7A7A5A5A5A3A3A3A1
          A1A19F9F9F9D9D9D9A9A9A989898979797959595929292FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF000080000080000080000080000080000080000080000080FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF7070707070707070707070707272727070707070
          70707070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000080677DFA506AFC2849FE
          2849FE092BFE001EFF000080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF707070C6
          C6C6C0C0C0B4B4B4B3B3B3A8A8A8A6A6A6707070FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF000080000080000080000080000080000080000080000080FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF7070707070707070707070707070707272727070
          70707070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        NumGlyphs = 2
        OnClick = SpeedButtonSupprimerDeLaListeClick
      end
      object Periodes: TListBox
        Left = 10
        Top = 6
        Width = 137
        Height = 101
        Hint = 'Liste des périodes'
        ItemHeight = 18
        Style = lbOwnerDrawFixed
        TabOrder = 0
        OnClick = PeriodesClick
        OnDrawItem = PeriodesDrawItem
      end
      object Edit2: TEdit
        Left = 159
        Top = 46
        Width = 137
        Height = 21
        Hint = 'Champ pour ajouter un nouveau type de périodes'
        MaxLength = 47
        TabOrder = 1
        OnChange = Edit2Change
      end
      object ListBoxSousPeriodes: TListBox
        Left = 308
        Top = 29
        Width = 193
        Height = 107
        Hint = 'Liste des noms des sous périodes de la période sélectionnée'
        ItemHeight = 18
        Style = lbOwnerDrawFixed
        TabOrder = 2
        OnClick = ListBoxSousPeriodesClick
        OnDrawItem = ListBoxSousPeriodesDrawItem
      end
      object Edit7: TEdit
        Left = 308
        Top = 141
        Width = 193
        Height = 21
        Hint = 
          'Champ permettant de modifier le nom de la sous période sélection' +
          'née'
        MaxLength = 50
        TabOrder = 3
        OnChange = Edit7Change
      end
      object NombreSousPeriodes: TRxSpinEdit
        Left = 197
        Top = 96
        Width = 49
        Height = 21
        Hint = 'Nombre de sous périodes de la période sélectionnée'
        EditorEnabled = False
        MaxValue = 255
        MinValue = 1
        Value = 1
        TabOrder = 4
      end
    end
    object TabSheet10: TTabSheet
      Caption = 'Couleur des notes'
      ImageIndex = 9
      object Bevel11: TBevel
        Left = 1
        Top = 0
        Width = 505
        Height = 171
      end
      object Shape4: TShape
        Left = 8
        Top = 56
        Width = 73
        Height = 14
        Hint = 'Couleur actuelle pour les notes décrites ci-dessus'
      end
      object SpeedButton7: TSpeedButton
        Left = 86
        Top = 52
        Width = 30
        Height = 26
        Hint = 'Permet de choisir la couleur pour les notes décrites ci-dessus'
        Flat = True
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000011170000111700000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFC7AC9C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C
          4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E
          1C4E2E1C4E2E1CFFFFFFC7AC9CEBE3DECAB1A3CAB1A3CAB1A3CAB1A3CAB1A3CA
          B1A3CAB1A3CAB1A3CAB1A3CAB1A3CAB1A3CAB1A3CAB1A3CAB1A3CAB1A3CAB1A3
          CAB1A3CAB1A3CAB1A3CAB1A34E2E1CFFFFFFC7AC9CEEE5E1EBE3DEEAE1DCEAE0
          D9E9DDD7E7DCD5E5D9D1E3D7CFE2D4CBE0D1C9DECFC6DDCCC2DACAC0D9C7BCD8
          C4BAD5C1B7D4BFB4D3BCB1D0BAADD0BAADCAB1A34E2E1CFFFFFFC7AC9CEFE7E3
          EEE5E13D904634873B297D2D1F73211C6E1CE5D9D13D904634873B297D2D1F73
          211C6E1CDACAC03D904634873B297D2D1F73211C6E1CD0BAADCAB1A34E2E1CFF
          FFFFC7AC9CF0EAE6EFE7E34698533D904634873B297D2D1F7321E7DCD5469853
          3D904634873B297D2D1F7321DDCCC24698533D904634873B297D2D1F7321D3BC
          B1CAB1A34E2E1CFFFFFFC7AC9CF2EDE9F0EAE650A05F4698533D904634873B29
          7D2DE9DDD750A05F4698533D904634873B297D2DDECFC650A05F4698533D9046
          34873B297D2DD4BFB4CAB1A34E2E1CFFFFFFC7AC9CF3EEEBF2EDE955A56650A0
          5F4698533D904634873BEAE0D955A56650A05F4698533D904634873BE0D1C955
          A56650A05F4698533D904634873BD5C1B7CAB1A34E2E1CFFFFFFC7AC9CF6F0EE
          F3EEEB55A56655A56650A05F4698533D9046EAE1DC55A56655A56650A05F4698
          533D9046E2D4CB55A56655A56650A05F4698533D9046D8C4BACAB1A34E2E1CFF
          FFFFC7AC9CF7F3F0F6F0EEF3EEEBF2EDE9F0EAE6EFE7E3EEE5E1EBE3DEEAE1DC
          EAE0D9E9DDD7E7DCD5E5D9D1E3D7CFE2D4CBE0D1C9DECFC6DDCCC2DACAC0D9C7
          BCCAB1A34E2E1CFFFFFFC7AC9CF8F4F3F7F3F01E45DA1B40D51639CE1232C610
          2FC2EEE5E11E45DA1B40D51639CE1232C6102FC2E5D9D11E45DA1B40D51639CE
          1232C6102FC2DACAC0CAB1A34E2E1CFFFFFFC7AC9CFAF7F6F8F4F3224CE11E45
          DA1B40D51639CE1232C6EFE7E3224CE11E45DA1B40D51639CE1232C6E7DCD522
          4CE11E45DA1B40D51639CE1232C6DDCCC2CAB1A34E2E1CFFFFFFC7AC9CFBFAF8
          FAF7F62752E9224CE11E45DA1B40D51639CEF0EAE62752E9224CE11E45DA1B40
          D51639CEE9DDD72752E9224CE11E45DA1B40D51639CEDECFC6CAB1A34E2E1CFF
          FFFFC7AC9CFCFCFBFBFAF82855EB2752E9224CE11E45DA1B40D5F2EDE92855EB
          2752E9224CE11E45DA1B40D5EAE0D92855EB2752E9224CE11E45DA1B40D5E0D1
          C9CAB1A34E2E1CFFFFFFC7AC9CFFFEFEFCFCFB2855EB2855EB2752E9224CE11E
          45DAF3EEEB2855EB2855EB2752E9224CE11E45DAEAE1DC2855EB2855EB2752E9
          224CE11E45DAE2D4CBCAB1A34E2E1CFFFFFFC7AC9CFFFFFFFFFEFEFCFCFBFBFA
          F8FAF7F6F8F4F3F7F3F0F6F0EEF3EEEBF2EDE9F0EAE6EFE7E3EEE5E1EBE3DEEA
          E1DCEAE0D9E9DDD7E7DCD5E5D9D1E3D7CFCAB1A34E2E1CFFFFFFC7AC9CFFFFFF
          FFFFFFE27546E06C3BDC632DD85921D7551CF7F3F0E27546E06C3BDC632DD859
          21D7551CEEE5E1E27546E06C3BDC632DD85921D7551CE5D9D1CAB1A34E2E1CFF
          FFFFC7AC9CFFFFFFFFFFFFE67D53E27546E06C3BDC632DD85921F8F4F3E67D53
          E27546E06C3BDC632DD85921EFE7E3E67D53E27546E06C3BDC632DD85921E7DC
          D5CAB1A34E2E1CFFFFFFC7AC9CFFFFFFFFFFFFEA845FE67D53E27546E06C3BDC
          632DFAF7F6EA845FE67D53E27546E06C3BDC632DF0EAE6EA845FE67D53E27546
          E06C3BDC632DE9DDD7CAB1A34E2E1CFFFFFFC7AC9CFFFFFFFFFFFFEB8966EA84
          5FE67D53E27546E06C3BFBFAF8EB8966EA845FE67D53E27546E06C3BF2EDE9EB
          8966EA845FE67D53E27546E06C3BEAE0D9CAB1A34E2E1CFFFFFFC7AC9CFFFFFF
          FFFFFFEB8966EB8966EA845FE67D53E27546FCFCFBEB8966EB8966EA845FE67D
          53E27546F3EEEBEB8966EB8966EA845FE67D53E27546EAE1DCCAB1A34E2E1CFF
          FFFFC7AC9CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFCFCFB
          FBFAF8FAF7F6F8F4F3F7F3F0F6F0EEF3EEEBF2EDE9F0EAE6EFE7E3EEE5E1EBE3
          DECAB1A34E2E1CFFFFFFC7AC9CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFCFCFBFBFAF8FAF7F6F8F4F3F7F3F0F6F0EEF3EEEBF2EDE9
          F0EAE6EFE7E3EEE5E1EBE3DE4E2E1CFFFFFFC7AC9CC7AC9CC7AC9CC7AC9CC7AC
          9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7
          AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CFFFFFF}
        OnClick = SpeedButton7Click
      end
      object SpeedButton8: TSpeedButton
        Left = 120
        Top = 52
        Width = 105
        Height = 19
        Hint = 'Revenir à la couleur par défaut'
        Caption = '&Couleur par défaut'
        Flat = True
        OnClick = SpeedButton8Click
      end
      object Label11: TLabel
        Left = 8
        Top = 20
        Width = 189
        Height = 13
        Caption = 'Note inférieure strictement à la moyenne'
      end
      object Label12: TLabel
        Left = 8
        Top = 99
        Width = 228
        Height = 13
        Caption = 'Note supérieure à la moyenne et inférieur au 3/4'
      end
      object Shape5: TShape
        Left = 8
        Top = 136
        Width = 73
        Height = 14
        Hint = 'Couleur actuelle pour les notes décrites ci-dessus'
      end
      object SpeedButton9: TSpeedButton
        Left = 86
        Top = 132
        Width = 30
        Height = 26
        Hint = 'Permet de choisir la couleur pour les notes décrites ci-dessus'
        Flat = True
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000011170000111700000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFC7AC9C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C
          4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E
          1C4E2E1C4E2E1CFFFFFFC7AC9CEBE3DECAB1A3CAB1A3CAB1A3CAB1A3CAB1A3CA
          B1A3CAB1A3CAB1A3CAB1A3CAB1A3CAB1A3CAB1A3CAB1A3CAB1A3CAB1A3CAB1A3
          CAB1A3CAB1A3CAB1A3CAB1A34E2E1CFFFFFFC7AC9CEEE5E1EBE3DEEAE1DCEAE0
          D9E9DDD7E7DCD5E5D9D1E3D7CFE2D4CBE0D1C9DECFC6DDCCC2DACAC0D9C7BCD8
          C4BAD5C1B7D4BFB4D3BCB1D0BAADD0BAADCAB1A34E2E1CFFFFFFC7AC9CEFE7E3
          EEE5E13D904634873B297D2D1F73211C6E1CE5D9D13D904634873B297D2D1F73
          211C6E1CDACAC03D904634873B297D2D1F73211C6E1CD0BAADCAB1A34E2E1CFF
          FFFFC7AC9CF0EAE6EFE7E34698533D904634873B297D2D1F7321E7DCD5469853
          3D904634873B297D2D1F7321DDCCC24698533D904634873B297D2D1F7321D3BC
          B1CAB1A34E2E1CFFFFFFC7AC9CF2EDE9F0EAE650A05F4698533D904634873B29
          7D2DE9DDD750A05F4698533D904634873B297D2DDECFC650A05F4698533D9046
          34873B297D2DD4BFB4CAB1A34E2E1CFFFFFFC7AC9CF3EEEBF2EDE955A56650A0
          5F4698533D904634873BEAE0D955A56650A05F4698533D904634873BE0D1C955
          A56650A05F4698533D904634873BD5C1B7CAB1A34E2E1CFFFFFFC7AC9CF6F0EE
          F3EEEB55A56655A56650A05F4698533D9046EAE1DC55A56655A56650A05F4698
          533D9046E2D4CB55A56655A56650A05F4698533D9046D8C4BACAB1A34E2E1CFF
          FFFFC7AC9CF7F3F0F6F0EEF3EEEBF2EDE9F0EAE6EFE7E3EEE5E1EBE3DEEAE1DC
          EAE0D9E9DDD7E7DCD5E5D9D1E3D7CFE2D4CBE0D1C9DECFC6DDCCC2DACAC0D9C7
          BCCAB1A34E2E1CFFFFFFC7AC9CF8F4F3F7F3F01E45DA1B40D51639CE1232C610
          2FC2EEE5E11E45DA1B40D51639CE1232C6102FC2E5D9D11E45DA1B40D51639CE
          1232C6102FC2DACAC0CAB1A34E2E1CFFFFFFC7AC9CFAF7F6F8F4F3224CE11E45
          DA1B40D51639CE1232C6EFE7E3224CE11E45DA1B40D51639CE1232C6E7DCD522
          4CE11E45DA1B40D51639CE1232C6DDCCC2CAB1A34E2E1CFFFFFFC7AC9CFBFAF8
          FAF7F62752E9224CE11E45DA1B40D51639CEF0EAE62752E9224CE11E45DA1B40
          D51639CEE9DDD72752E9224CE11E45DA1B40D51639CEDECFC6CAB1A34E2E1CFF
          FFFFC7AC9CFCFCFBFBFAF82855EB2752E9224CE11E45DA1B40D5F2EDE92855EB
          2752E9224CE11E45DA1B40D5EAE0D92855EB2752E9224CE11E45DA1B40D5E0D1
          C9CAB1A34E2E1CFFFFFFC7AC9CFFFEFEFCFCFB2855EB2855EB2752E9224CE11E
          45DAF3EEEB2855EB2855EB2752E9224CE11E45DAEAE1DC2855EB2855EB2752E9
          224CE11E45DAE2D4CBCAB1A34E2E1CFFFFFFC7AC9CFFFFFFFFFEFEFCFCFBFBFA
          F8FAF7F6F8F4F3F7F3F0F6F0EEF3EEEBF2EDE9F0EAE6EFE7E3EEE5E1EBE3DEEA
          E1DCEAE0D9E9DDD7E7DCD5E5D9D1E3D7CFCAB1A34E2E1CFFFFFFC7AC9CFFFFFF
          FFFFFFE27546E06C3BDC632DD85921D7551CF7F3F0E27546E06C3BDC632DD859
          21D7551CEEE5E1E27546E06C3BDC632DD85921D7551CE5D9D1CAB1A34E2E1CFF
          FFFFC7AC9CFFFFFFFFFFFFE67D53E27546E06C3BDC632DD85921F8F4F3E67D53
          E27546E06C3BDC632DD85921EFE7E3E67D53E27546E06C3BDC632DD85921E7DC
          D5CAB1A34E2E1CFFFFFFC7AC9CFFFFFFFFFFFFEA845FE67D53E27546E06C3BDC
          632DFAF7F6EA845FE67D53E27546E06C3BDC632DF0EAE6EA845FE67D53E27546
          E06C3BDC632DE9DDD7CAB1A34E2E1CFFFFFFC7AC9CFFFFFFFFFFFFEB8966EA84
          5FE67D53E27546E06C3BFBFAF8EB8966EA845FE67D53E27546E06C3BF2EDE9EB
          8966EA845FE67D53E27546E06C3BEAE0D9CAB1A34E2E1CFFFFFFC7AC9CFFFFFF
          FFFFFFEB8966EB8966EA845FE67D53E27546FCFCFBEB8966EB8966EA845FE67D
          53E27546F3EEEBEB8966EB8966EA845FE67D53E27546EAE1DCCAB1A34E2E1CFF
          FFFFC7AC9CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFCFCFB
          FBFAF8FAF7F6F8F4F3F7F3F0F6F0EEF3EEEBF2EDE9F0EAE6EFE7E3EEE5E1EBE3
          DECAB1A34E2E1CFFFFFFC7AC9CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFCFCFBFBFAF8FAF7F6F8F4F3F7F3F0F6F0EEF3EEEBF2EDE9
          F0EAE6EFE7E3EEE5E1EBE3DE4E2E1CFFFFFFC7AC9CC7AC9CC7AC9CC7AC9CC7AC
          9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7
          AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CFFFFFF}
        OnClick = SpeedButton9Click
      end
      object SpeedButton10: TSpeedButton
        Left = 120
        Top = 132
        Width = 105
        Height = 19
        Hint = 'Revenir à la couleur par défaut'
        Caption = 'C&ouleur par défaut'
        Flat = True
        OnClick = SpeedButton10Click
      end
      object Label13: TLabel
        Left = 248
        Top = 19
        Width = 214
        Height = 13
        Caption = 'Note strictement supérieure au 3/4 de la note'
      end
      object Shape6: TShape
        Left = 272
        Top = 55
        Width = 73
        Height = 14
        Hint = 'Couleur actuelle pour les notes décrites ci-dessus'
      end
      object SpeedButton11: TSpeedButton
        Left = 350
        Top = 51
        Width = 30
        Height = 26
        Hint = 'Permet de choisir la couleur pour les notes décrites ci-dessus'
        Flat = True
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000011170000111700000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFC7AC9C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C
          4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E
          1C4E2E1C4E2E1CFFFFFFC7AC9CEBE3DECAB1A3CAB1A3CAB1A3CAB1A3CAB1A3CA
          B1A3CAB1A3CAB1A3CAB1A3CAB1A3CAB1A3CAB1A3CAB1A3CAB1A3CAB1A3CAB1A3
          CAB1A3CAB1A3CAB1A3CAB1A34E2E1CFFFFFFC7AC9CEEE5E1EBE3DEEAE1DCEAE0
          D9E9DDD7E7DCD5E5D9D1E3D7CFE2D4CBE0D1C9DECFC6DDCCC2DACAC0D9C7BCD8
          C4BAD5C1B7D4BFB4D3BCB1D0BAADD0BAADCAB1A34E2E1CFFFFFFC7AC9CEFE7E3
          EEE5E13D904634873B297D2D1F73211C6E1CE5D9D13D904634873B297D2D1F73
          211C6E1CDACAC03D904634873B297D2D1F73211C6E1CD0BAADCAB1A34E2E1CFF
          FFFFC7AC9CF0EAE6EFE7E34698533D904634873B297D2D1F7321E7DCD5469853
          3D904634873B297D2D1F7321DDCCC24698533D904634873B297D2D1F7321D3BC
          B1CAB1A34E2E1CFFFFFFC7AC9CF2EDE9F0EAE650A05F4698533D904634873B29
          7D2DE9DDD750A05F4698533D904634873B297D2DDECFC650A05F4698533D9046
          34873B297D2DD4BFB4CAB1A34E2E1CFFFFFFC7AC9CF3EEEBF2EDE955A56650A0
          5F4698533D904634873BEAE0D955A56650A05F4698533D904634873BE0D1C955
          A56650A05F4698533D904634873BD5C1B7CAB1A34E2E1CFFFFFFC7AC9CF6F0EE
          F3EEEB55A56655A56650A05F4698533D9046EAE1DC55A56655A56650A05F4698
          533D9046E2D4CB55A56655A56650A05F4698533D9046D8C4BACAB1A34E2E1CFF
          FFFFC7AC9CF7F3F0F6F0EEF3EEEBF2EDE9F0EAE6EFE7E3EEE5E1EBE3DEEAE1DC
          EAE0D9E9DDD7E7DCD5E5D9D1E3D7CFE2D4CBE0D1C9DECFC6DDCCC2DACAC0D9C7
          BCCAB1A34E2E1CFFFFFFC7AC9CF8F4F3F7F3F01E45DA1B40D51639CE1232C610
          2FC2EEE5E11E45DA1B40D51639CE1232C6102FC2E5D9D11E45DA1B40D51639CE
          1232C6102FC2DACAC0CAB1A34E2E1CFFFFFFC7AC9CFAF7F6F8F4F3224CE11E45
          DA1B40D51639CE1232C6EFE7E3224CE11E45DA1B40D51639CE1232C6E7DCD522
          4CE11E45DA1B40D51639CE1232C6DDCCC2CAB1A34E2E1CFFFFFFC7AC9CFBFAF8
          FAF7F62752E9224CE11E45DA1B40D51639CEF0EAE62752E9224CE11E45DA1B40
          D51639CEE9DDD72752E9224CE11E45DA1B40D51639CEDECFC6CAB1A34E2E1CFF
          FFFFC7AC9CFCFCFBFBFAF82855EB2752E9224CE11E45DA1B40D5F2EDE92855EB
          2752E9224CE11E45DA1B40D5EAE0D92855EB2752E9224CE11E45DA1B40D5E0D1
          C9CAB1A34E2E1CFFFFFFC7AC9CFFFEFEFCFCFB2855EB2855EB2752E9224CE11E
          45DAF3EEEB2855EB2855EB2752E9224CE11E45DAEAE1DC2855EB2855EB2752E9
          224CE11E45DAE2D4CBCAB1A34E2E1CFFFFFFC7AC9CFFFFFFFFFEFEFCFCFBFBFA
          F8FAF7F6F8F4F3F7F3F0F6F0EEF3EEEBF2EDE9F0EAE6EFE7E3EEE5E1EBE3DEEA
          E1DCEAE0D9E9DDD7E7DCD5E5D9D1E3D7CFCAB1A34E2E1CFFFFFFC7AC9CFFFFFF
          FFFFFFE27546E06C3BDC632DD85921D7551CF7F3F0E27546E06C3BDC632DD859
          21D7551CEEE5E1E27546E06C3BDC632DD85921D7551CE5D9D1CAB1A34E2E1CFF
          FFFFC7AC9CFFFFFFFFFFFFE67D53E27546E06C3BDC632DD85921F8F4F3E67D53
          E27546E06C3BDC632DD85921EFE7E3E67D53E27546E06C3BDC632DD85921E7DC
          D5CAB1A34E2E1CFFFFFFC7AC9CFFFFFFFFFFFFEA845FE67D53E27546E06C3BDC
          632DFAF7F6EA845FE67D53E27546E06C3BDC632DF0EAE6EA845FE67D53E27546
          E06C3BDC632DE9DDD7CAB1A34E2E1CFFFFFFC7AC9CFFFFFFFFFFFFEB8966EA84
          5FE67D53E27546E06C3BFBFAF8EB8966EA845FE67D53E27546E06C3BF2EDE9EB
          8966EA845FE67D53E27546E06C3BEAE0D9CAB1A34E2E1CFFFFFFC7AC9CFFFFFF
          FFFFFFEB8966EB8966EA845FE67D53E27546FCFCFBEB8966EB8966EA845FE67D
          53E27546F3EEEBEB8966EB8966EA845FE67D53E27546EAE1DCCAB1A34E2E1CFF
          FFFFC7AC9CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFCFCFB
          FBFAF8FAF7F6F8F4F3F7F3F0F6F0EEF3EEEBF2EDE9F0EAE6EFE7E3EEE5E1EBE3
          DECAB1A34E2E1CFFFFFFC7AC9CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFCFCFBFBFAF8FAF7F6F8F4F3F7F3F0F6F0EEF3EEEBF2EDE9
          F0EAE6EFE7E3EEE5E1EBE3DE4E2E1CFFFFFFC7AC9CC7AC9CC7AC9CC7AC9CC7AC
          9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7
          AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CFFFFFF}
        OnClick = SpeedButton11Click
      end
      object SpeedButton12: TSpeedButton
        Left = 384
        Top = 51
        Width = 105
        Height = 19
        Hint = 'Revenir à la couleur par défaut'
        Caption = 'Co&uleur par défaut'
        Flat = True
        OnClick = SpeedButton12Click
      end
      object Label15: TLabel
        Left = 8
        Top = 115
        Width = 241
        Height = 13
        Caption = 'de la note maximale (par ex. entre 10 et 15 sur 20) :'
      end
      object Label16: TLabel
        Left = 248
        Top = 35
        Width = 252
        Height = 13
        Caption = 'maximale (par ex. supérieure strictement à 15 sur 20) :'
      end
      object Label17: TLabel
        Left = 269
        Top = 100
        Width = 193
        Height = 13
        Caption = 'Note mal saisie ou en dehors des limites :'
      end
      object Shape7: TShape
        Left = 272
        Top = 119
        Width = 73
        Height = 14
        Hint = 'Couleur actuelle pour les notes décrites ci-dessus'
      end
      object SpeedButton13: TSpeedButton
        Left = 350
        Top = 115
        Width = 30
        Height = 26
        Hint = 'Permet de choisir la couleur pour les notes décrites ci-dessus'
        Flat = True
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000011170000111700000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFC7AC9C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C
          4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E
          1C4E2E1C4E2E1CFFFFFFC7AC9CEBE3DECAB1A3CAB1A3CAB1A3CAB1A3CAB1A3CA
          B1A3CAB1A3CAB1A3CAB1A3CAB1A3CAB1A3CAB1A3CAB1A3CAB1A3CAB1A3CAB1A3
          CAB1A3CAB1A3CAB1A3CAB1A34E2E1CFFFFFFC7AC9CEEE5E1EBE3DEEAE1DCEAE0
          D9E9DDD7E7DCD5E5D9D1E3D7CFE2D4CBE0D1C9DECFC6DDCCC2DACAC0D9C7BCD8
          C4BAD5C1B7D4BFB4D3BCB1D0BAADD0BAADCAB1A34E2E1CFFFFFFC7AC9CEFE7E3
          EEE5E13D904634873B297D2D1F73211C6E1CE5D9D13D904634873B297D2D1F73
          211C6E1CDACAC03D904634873B297D2D1F73211C6E1CD0BAADCAB1A34E2E1CFF
          FFFFC7AC9CF0EAE6EFE7E34698533D904634873B297D2D1F7321E7DCD5469853
          3D904634873B297D2D1F7321DDCCC24698533D904634873B297D2D1F7321D3BC
          B1CAB1A34E2E1CFFFFFFC7AC9CF2EDE9F0EAE650A05F4698533D904634873B29
          7D2DE9DDD750A05F4698533D904634873B297D2DDECFC650A05F4698533D9046
          34873B297D2DD4BFB4CAB1A34E2E1CFFFFFFC7AC9CF3EEEBF2EDE955A56650A0
          5F4698533D904634873BEAE0D955A56650A05F4698533D904634873BE0D1C955
          A56650A05F4698533D904634873BD5C1B7CAB1A34E2E1CFFFFFFC7AC9CF6F0EE
          F3EEEB55A56655A56650A05F4698533D9046EAE1DC55A56655A56650A05F4698
          533D9046E2D4CB55A56655A56650A05F4698533D9046D8C4BACAB1A34E2E1CFF
          FFFFC7AC9CF7F3F0F6F0EEF3EEEBF2EDE9F0EAE6EFE7E3EEE5E1EBE3DEEAE1DC
          EAE0D9E9DDD7E7DCD5E5D9D1E3D7CFE2D4CBE0D1C9DECFC6DDCCC2DACAC0D9C7
          BCCAB1A34E2E1CFFFFFFC7AC9CF8F4F3F7F3F01E45DA1B40D51639CE1232C610
          2FC2EEE5E11E45DA1B40D51639CE1232C6102FC2E5D9D11E45DA1B40D51639CE
          1232C6102FC2DACAC0CAB1A34E2E1CFFFFFFC7AC9CFAF7F6F8F4F3224CE11E45
          DA1B40D51639CE1232C6EFE7E3224CE11E45DA1B40D51639CE1232C6E7DCD522
          4CE11E45DA1B40D51639CE1232C6DDCCC2CAB1A34E2E1CFFFFFFC7AC9CFBFAF8
          FAF7F62752E9224CE11E45DA1B40D51639CEF0EAE62752E9224CE11E45DA1B40
          D51639CEE9DDD72752E9224CE11E45DA1B40D51639CEDECFC6CAB1A34E2E1CFF
          FFFFC7AC9CFCFCFBFBFAF82855EB2752E9224CE11E45DA1B40D5F2EDE92855EB
          2752E9224CE11E45DA1B40D5EAE0D92855EB2752E9224CE11E45DA1B40D5E0D1
          C9CAB1A34E2E1CFFFFFFC7AC9CFFFEFEFCFCFB2855EB2855EB2752E9224CE11E
          45DAF3EEEB2855EB2855EB2752E9224CE11E45DAEAE1DC2855EB2855EB2752E9
          224CE11E45DAE2D4CBCAB1A34E2E1CFFFFFFC7AC9CFFFFFFFFFEFEFCFCFBFBFA
          F8FAF7F6F8F4F3F7F3F0F6F0EEF3EEEBF2EDE9F0EAE6EFE7E3EEE5E1EBE3DEEA
          E1DCEAE0D9E9DDD7E7DCD5E5D9D1E3D7CFCAB1A34E2E1CFFFFFFC7AC9CFFFFFF
          FFFFFFE27546E06C3BDC632DD85921D7551CF7F3F0E27546E06C3BDC632DD859
          21D7551CEEE5E1E27546E06C3BDC632DD85921D7551CE5D9D1CAB1A34E2E1CFF
          FFFFC7AC9CFFFFFFFFFFFFE67D53E27546E06C3BDC632DD85921F8F4F3E67D53
          E27546E06C3BDC632DD85921EFE7E3E67D53E27546E06C3BDC632DD85921E7DC
          D5CAB1A34E2E1CFFFFFFC7AC9CFFFFFFFFFFFFEA845FE67D53E27546E06C3BDC
          632DFAF7F6EA845FE67D53E27546E06C3BDC632DF0EAE6EA845FE67D53E27546
          E06C3BDC632DE9DDD7CAB1A34E2E1CFFFFFFC7AC9CFFFFFFFFFFFFEB8966EA84
          5FE67D53E27546E06C3BFBFAF8EB8966EA845FE67D53E27546E06C3BF2EDE9EB
          8966EA845FE67D53E27546E06C3BEAE0D9CAB1A34E2E1CFFFFFFC7AC9CFFFFFF
          FFFFFFEB8966EB8966EA845FE67D53E27546FCFCFBEB8966EB8966EA845FE67D
          53E27546F3EEEBEB8966EB8966EA845FE67D53E27546EAE1DCCAB1A34E2E1CFF
          FFFFC7AC9CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFCFCFB
          FBFAF8FAF7F6F8F4F3F7F3F0F6F0EEF3EEEBF2EDE9F0EAE6EFE7E3EEE5E1EBE3
          DECAB1A34E2E1CFFFFFFC7AC9CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFCFCFBFBFAF8FAF7F6F8F4F3F7F3F0F6F0EEF3EEEBF2EDE9
          F0EAE6EFE7E3EEE5E1EBE3DE4E2E1CFFFFFFC7AC9CC7AC9CC7AC9CC7AC9CC7AC
          9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7
          AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CC7AC9CFFFFFF}
        OnClick = SpeedButton13Click
      end
      object SpeedButton14: TSpeedButton
        Left = 384
        Top = 115
        Width = 105
        Height = 19
        Hint = 'Revenir à la couleur par défaut'
        Caption = 'Cou&leur par défaut'
        Flat = True
        OnClick = SpeedButton14Click
      end
      object Label14: TLabel
        Left = 8
        Top = 36
        Width = 200
        Height = 13
        Caption = '(par ex. inférieure strictement à 10 sur 20) :'
      end
      object CheckBox4: TCheckBox
        Left = 288
        Top = 147
        Width = 209
        Height = 17
        Hint = 'Grilles en couleur ou non à l'#39'écran'
        Caption = 'Utiliser la coloration des notes à l'#39'écran'
        Checked = True
        State = cbChecked
        TabOrder = 0
        OnClick = CheckBox4Click
      end
    end
    object TabSheet11: TTabSheet
      Caption = 'Historique des fichiers'
      ImageIndex = 10
      object Bevel12: TBevel
        Left = 1
        Top = 0
        Width = 505
        Height = 171
      end
      object Bevel15: TBevel
        Left = 307
        Top = 10
        Width = 190
        Height = 106
      end
      object Label19: TLabel
        Left = 339
        Top = 36
        Width = 107
        Height = 13
        Caption = 'dans le menu "Fichier"'
      end
      object Label18: TLabel
        Left = 323
        Top = 64
        Width = 88
        Height = 13
        Caption = '&Nombre de fichiers'
      end
      object Label38: TLabel
        Left = 11
        Top = 152
        Width = 38
        Height = 13
        Caption = 'Label38'
      end
      object Label27: TLabel
        Left = 323
        Top = 82
        Width = 78
        Height = 13
        Caption = ' dans l'#39'historique'
      end
      object SpeedButtonRetablirHistorique: TSpeedButton
        Left = 336
        Top = 120
        Width = 161
        Height = 26
        Hint = 'Revenir à la dernière liste des fichiers'
        Caption = '&Rétablir historique actuel'
        Flat = True
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000011170000111700000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFE5DBD5604230593A28593A28593A28593A28593A28593A28593A28
          593A28593A28593A28593A28593A28593A28593A28593A28593A28593A28593A
          28593A28E5DBD5FFFFFFFFFFFFB29988F0EAE6AD9988AD9988AD9988AD9988AD
          9988AD9988AD9988AD9988AD9988AD9988AD9988AD9988AD9988AD9988AD9988
          AD9988AD9988AD9988AD99885A3B28FFFFFFFFFFFFB29988F0EAE6EEE6E2EDE3
          DEEAE0DAE7DDD7E6DAD3E3D7CFE2D4CCE0D0C9DDCEC5DCCAC1D9C7BDD7C4BAD5
          C1B6D3BDB2D1BBAFD0BAADD0BAADD0BAADAD99885A3B28FFFFFFFFFFFFB29988
          F3EDEAF0EAE6801C00801C00801C00E2AA8AE6DAD3E3D7CFE2D4CCE0D0C9DDCE
          C4DCCAC1D9C7BDD7C4BAD5C1B6D3BDB2D1BBAFD0BAADD0BAADAD99885A3B28FF
          FFFFFFFFFFB29988F4F0EEF3EEEAF0EAE6EFE7E2E2AA8A801C00E7DDD7E6DAD3
          030303030303030303030303030303030303030303030303030303030303D0BA
          ADAD99885A3B28FFFFFFFFFFFFB29988F7F4F3F6F2EFF3EEEB801C00801C00ED
          E5E0EAE1DCE9DED8030303987E6B8E735F8468557A5D4A6E503F624230543523
          4E2E1C030303D1BBAFAD99885A3B28FFFFFFFFFFFFB29988FAF8F7F7F4F3F6F2
          EFF3EEEB801C00E2AA8AEDE5E0EAE1DC03030303030303030303030303030303
          0303030303030303030303030303D3BFB4AD99885A3B28FFFFFFFFFFFFB29988
          FCFBFAFAF8F7801C00801C00801C00801C00EFE9E3EDE5E0EAE1DCE9DED9E6DC
          D4E5D9D1E2D5CEE0D1CADECFC6DCCBC2D9C9BFD8C6BBD5C2B8AD99885A3B28FF
          FFFFFFFFFFB29988FEFEFEFCFBFAFAF8F7F7F4F3F6F2EFF3EEEBF0EBE7EFE9E3
          EDE5E0EAE1DCE9DED9E6DCD4E5D9D1E2D5CEE0D1CADECFC6DCCBC2DAC9BFD8C6
          BBAD99885A3B28FFFFFFFFFFFFB29988FEFEFEFEFEFE801C00801C00801C0080
          1C00F3EEEBF0EBE7EFE9E3EDE5E0EAE1DCE9DED9E6DCD4E5D9D1E2D5CEE0D1CA
          DECFC6DCCBC2DAC9BFAD99885A3B28FFFFFFFFFFFFB29988FFFFFFFEFEFEFEFE
          FE801C00E2AA8AF8F6F4F7F3F0F3EEEB03030303030303030303030303030303
          0303030303030303030303030303DCCBC2AD99885A3B28FFFFFFFFFFFFB29988
          FFFFFFFFFFFFFFFFFFFFFFFF801C00E2AA8AF8F6F4F7F3F0030303987E6B8E73
          5F8468557A5D4A6E503F6242305435234E2E1C030303DECFC6AD99885A3B28FF
          FFFFFFFFFFB29988FFFFFFFFFFFF801C00E2AA8AFFFFFF801C00FBFAF8F8F6F4
          030303030303030303030303030303030303030303030303030303030303E1D3
          CBAD99885A3B28FFFFFFFFFFFFB29988FFFFFFFFFFFFE2AA8A801C00801C00E2
          AA8AFCFCFCFBFAF8F8F6F4F7F3F0F4F0EDF2EDEAF0EAE6EEE6E2EBE2DEEAE0DA
          E7DDD7E6DAD3E3D7CFAD99885A3B28FFFFFFFFFFFFB29988FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFBFAF8F8F6F4F7F3F0F4F0EDF2EDE9F0
          EAE6EEE6E2EDE2DEEAE0DAE7DDD7E6DAD3AD99885A3B28FFFFFFFFFFFFB29988
          FFFFFFFFFFFFFFFFFFFFFFFF801C00FFFFFFFFFFFFFFFFFFFCFCFCFBFAF8F8F6
          F4F7F3F0F4F0EDF2EDE9F0EAE6EEE6E2EDE2DEEAE0DAE7DDD7AD99885A3B28FF
          FFFFFFFFFFB29988FFFFFFFFFFFFFFFFFFFFFFFF801C00FFFFFFFFFFFFFFFFFF
          030303030303030303030303030303030303030303030303030303030303EAE0
          DAAD99885A3B28FFFFFFFFFFFFB29988FFFFFFFFFFFFFFFFFFFFFFFF801C00FF
          FFFFFFFFFFFFFFFF030303987E6B8E735F8468557A5D4A6E503F624230543523
          4E2E1C030303EDE3E0AD99885A3B28FFFFFFFFFFFFB29988FFFFFFFFFFFFE2AA
          8A801C00801C00FFFFFFFFFFFFFFFFFF03030303030303030303030303030303
          0303030303030303030303030303EFE7E3AD99885A3B28FFFFFFFFFFFFB29988
          FFFFFFFFFFFFFFFFFFE2AA8A801C00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFEFEFEFEFEFCFCFBFAFAF8F6F7F4F2F4F2EFF3EEEBF0EBE7AD99885A3B28FF
          FFFFFFFFFFB29988FFFFFFFFFFFFFFFFFFFFFFFFE2AA8AFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFCFCFBFAFAF8F6F7F4F2F6F2EFF3EE
          EBF3EEEB624331FFFFFFFFFFFFE5DBD5B29988B29988B29988B29988B29988B2
          9988B29988B29988B29988B29988B29988B29988B29988B29988B29988B29988
          B29988B29988B29988B29988E5DBD5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = SpeedButtonRetablirHistoriqueClick
      end
      object SpeedButtonViderHistorique: TSpeedButton
        Left = 153
        Top = 120
        Width = 177
        Height = 26
        Hint = 'Supprimer tous les fichiers de la liste'
        Caption = '&Vider l'#39'historique des fichiers'
        Flat = True
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000011170000111700000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFE5DBD54E2E1C4E2E1C4E2E1C4E2E1C4E2E1C
          4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1CE5DBD5FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBBA090D0BAADA48B7AA4
          8B7AA48B7AA48B7AA48B7AA48B7AA48B7AA48B7AA48B7AA48B7AA48B7AA48B7A
          A48B7A4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBBA0
          90D0BAADEAE1DAFAF6F4FFFFFFF7F6F4F0EDEAEAE5E0E3DCD5DDD3CBD7CBC2CE
          C1B6C6B7ABBFADA0A48B7A4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFBBA090D0BAADEAE1DAD0BAADFFFFFFF7F6F4F0EDEAD0BAADE3DC
          D5DDD3CBD7CBC2AA9180C6B7ABBFADA0A48B7A4E2E1CFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFBBA090D0BAADA48B7AFAF6F4D0BAADF7F6F4
          A48B7AEAE5E0D0BAADDDD3CB8C6F5ACEC1B6A48B7ABFADA0A48B7A4E2E1CFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBBA090D0BAADA48B7AFA
          F6F4D0BAADF7F6F4A48B7AEAE5E0D0BAADDDD3CB8C6F5ACEC1B6A48B7ABFADA0
          A48B7A4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBBA0
          90D0BAADA48B7AFAF6F4D0BAADF7F6F4A48B7AEAE5E0D0BAADDDD3CB8C6F5ACE
          C1B6A48B7ABFADA0A48B7A4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFBBA090D0BAADA48B7AFAF6F4D0BAADF7F6F4A48B7AEAE5E0D0BA
          ADDDD3CB8C6F5ACEC1B6A48B7ABFADA0A48B7A4E2E1CFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFBBA090D0BAADA48B7AFAF6F4D0BAADF7F6F4
          A48B7AEAE5E0D0BAADDDD3CB8C6F5ACEC1B6A48B7ABFADA0A48B7A4E2E1CFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBBA090D0BAADA48B7AFA
          F6F4D0BAADF7F6F4A48B7AEAE5E0D0BAADDDD3CB8C6F5ACEC1B6A48B7ABFADA0
          A48B7A4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBBA0
          90D0BAADA48B7AFAF6F4D0BAADF7F6F4A48B7AEAE5E0D0BAADDDD3CB8C6F5ACE
          C1B6A48B7ABFADA0A48B7A4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFBBA090D0BAADA48B7AFAF6F4D0BAADF7F6F4A48B7AEAE5E0D0BA
          ADDDD3CB8C6F5ACEC1B6A48B7ABFADA0A48B7A4E2E1CFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFBBA090D0BAADA48B7AFAF6F4D0BAADF7F6F4
          A48B7AEAE5E0D0BAADDDD3CB8C6F5ACEC1B6A48B7ABFADA0A48B7A4E2E1CFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBBA090D0BAADEAE1DAA4
          8B7AFFFFFFF7F6F4F0EDEAA48B7AE3DCD5DDD3CBD7CBC28C6F5AC6B7ABBFADA0
          A48B7A4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBBA0
          90D0BAADEAE1DAFAF6F4FFFFFFF7F6F4F0EDEAEAE5E0E3DCD5DDD3CBD7CBC2CE
          C1B6C6B7ABBFADA0B7A4964E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFBBA0904E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E
          1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1CFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFBBA090F2EBE7A48B7AA48B7AA48B7AA48B7AA48B7A
          A48B7AA48B7AA48B7AA48B7AA48B7AA48B7AA48B7AA48B7AA48B7AA48B7A4E2E
          1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBBA090E7DCD5F2EBE7FFFFFFFF
          FFFFFFFFFFFBFAF8F2EEEBE9E2DDE0D7CFDAD0C9D3C6BCCABBB0C1B0A3B8A597
          B09A8BA48B7A4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5DBD5BBA0
          90E7DCD5F2EBE7F2EBE7FFFFFFFFFFFFFFFFFFF6F3F2EDE7E3E3DCD7DAD0C9D3
          C6BCCABBB0C1B0A3A48B7A4E2E1CE5DBD5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFE5DBD5BBA090BBA090BBA090BBA090BBA090BBA090BBA090BBA0
          90BBA090BBA090BBA090BBA090BBA090BBA090E5DBD5FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5DBD5A48B7A
          4E2E1CFFFFFFFFFFFFA48B7A4E2E1CE5DBD5FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFE5DBD5A48B7A8C6F5A8C6F5A8C6F5AE5DBD5FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = SpeedButtonViderHistoriqueClick
      end
      object SpeedButtonSupprimerLaListe: TSpeedButton
        Left = 8
        Top = 120
        Width = 137
        Height = 26
        Hint = 'Supprimer de la liste le fichier sélectionné'
        Caption = '&Supprimer de la liste'
        Flat = True
        Glyph.Data = {
          B60D0000424DB60D000000000000360000002800000030000000180000000100
          180000000000800D0000120B0000120B00000000000000000000FFFFFFFFFFFF
          FCFCFE8787C59A9ACEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFEFEFEBEBEBEC8C8C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFEDEDF6494AAC0104960F1092DDDDEEFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F59E9E9E7B7B7B7F7F
          7FECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9FC3739A8
          00059F00049C0003974646A8FDFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7C7E37171B8FFFFFFFF
          FFFFFCFCFC9696967F7F7F7E7E7E7B7B7B9B9B9BFEFEFEFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0E0
          E0AFAFAFFFFFFFFFFFFFABACD80716C50006A50005A000049C0104969696CCFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          F8F8FC7A7ABD050582020281C0C0DFFFFFFFD2D2D29191918181818080807E7E
          7E7C7C7CC5C5C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFBFBFBB4B4B4737373747474DCDCDCFFFFFF595FCC1835FC
          030FBB0006A60005A100049D0C0E95DADAEDFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFCDCDE72F2F980000800000800E0E87C6C6E3FF
          FFFFB0B0B0ACACAC8B8B8B8282828080807E7E7E7F7F7FEBEBEBFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E3E38B8B8B7070707070
          70787878E0E0E0FFFFFF333DCA1936FF132CEE0009AC0006A60005A100049D3D
          3EA6FAFAFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9FC8282C0080884
          0000800000800B0B85BBBBDEFFFFFFFFFFFFA2A2A2ADADADA5A5A58585858282
          828080807D7D7D979797FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC
          FCFCB9B9B9747474707070707070777777D9D9D9FFFFFFFFFFFFBDBEE01427DE
          1C38FF0D1FD40007AB0006A60005A101059B7373BCFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFD3D3E937379B010180000080000080070784B2B2D8FFFFFFFFFFFFFF
          FFFFDCDCDC9F9F9FAEAEAE9999998585858282828080807D7D7DB3B3B3FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFE7E7E78F8F8F717171707070707070747474D4D4
          D4FFFFFFFFFFFFFFFFFFFFFFFF7E80C91F37F02D47FB0512BC0007AB0006A600
          05A10205999F9FD0FFFFFFFFFFFFFCFCFE8A8AC50A0A87000080000080000080
          050582AAAAD4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBCBCBCAAAAAAB2B2B28D8D
          8D8484848282828080807E7E7ECACACAFFFFFFFFFFFFFEFEFEBEBEBE78787870
          7070707070707070737373CFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFD
          4F54BF344DF82F45EB000AB10008AC0007A70006A3080B9AC0C0E0D8D8EC3C3C
          A400018A000187000082000080050582A0A0CFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFDFDFDA7A7A7B3B3B3ADADAD888888858585838383818181808080
          DDDDDDEAEAEA959595767676747474727272707070737373CACACAFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F8494DBE445BF31C2ED30009B100
          08AC0007A70006A311149B0D0F9700039500029000018B0001870303839797CC
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7A5A5A5B8B8
          B89E9E9E8787878585858282828080808383837F7F7F7B7B7B78787876767674
          7474747474C5C5C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFF5F5FB5559BE4457E60715BD0009B10008AC0007A70006A300059E0004
          9900039500029001028A8D8DC8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFAFAFAA9A9A9B3B3B38E8E8E878787848484828282
          8181817E7E7E7C7C7C7B7B7B787878767676C0C0C0FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFD6769BE1A2AC800
          0AB60009B10008AC0007A70006A300059E0004990104928383C3FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD
          FDAFAFAF9999998989898787878484848383838181817E7E7E7C7C7C7A7A7ABB
          BBBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFDFDFE3538AA000CBB000AB60009B10008AD0007A90006
          A401059B7777BDFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE9696968B8B8B898989888888
          8686868383838181817E7E7EB5B5B5FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8586CA010DBD00
          0DC1000CBC000AB70009B20008AD0007A90106A17777C0FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFBEBEBE8C8C8C8D8D8D8B8B8B898989878787858585838383808080B6B6B6FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF9D9ED30310C1000FCB000EC6000DC1000CBC000AB70009B20008
          AD0007A902079F9494CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFCBCBCB8F8F8F9292928F8F8F8D8D8D8B8B8B
          898989888888868686838383808080C5C5C5FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3B4DD0613C40012D50011D000
          0FCB000EC6000DC10C1ED00311BF000AB50008AD0007A904089FA7A7D4FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D7D79191
          919696969393939292929090908D8D8D9898988D8D8D89898986868683838381
          8181CFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          C7C7E50C19C50015E00013DA0012D50011D00112CE1C34E72C3AD35D5FBC0C1E
          D2010DBB0009AF0007AA080C9EB4B4DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFE1E1E1949494999999989898969696949494929292A5A5A5
          A3A3A3ABABAB9898988C8C8C868686848484828282D6D6D6FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFD7D7EC1723C70018EA0016E50015E00013DA05
          1CDD2A44F62D3CD3C2C3E3FFFFFF9B9CD21221CB0312C40009AF0007AA080CA0
          A3A3D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E99999999D9D9D9C9C
          9C9A9A9A9898989B9B9BAFAFAFA3A3A3DEDEDEFFFFFFCACACA97979790909086
          8686848484828282CDCDCDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E5F2232DC5
          001BF4001AF00018EB0017E60F2AED334EFE2B3AD4C2C3E3FFFFFFFFFFFFFFFF
          FFC6C6E3242EC00B1CCF0009AF0007AA0409A08E8ECAFFFFFFFFFFFFFFFFFFFF
          FFFFF1F1F19B9B9BA2A2A2A1A1A19E9E9E9D9D9DA4A4A4B5B5B5A3A3A3DEDEDE
          FFFFFFFFFFFFFFFFFFE0E0E0999999969696868686848484818181C2C2C2FFFF
          FFFFFFFFFFFFFFFFFFFF9A9AD00117E6001CF6001BF4011DF21C39F83551FE2A
          39D3C1C2E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEDF7686CC61726CB0410B7
          0007AA0106A07777C0FCFCFDFFFFFFFFFFFFC8C8C89D9D9DA2A2A2A1A1A1A1A1
          A1ACACACB6B6B6A3A3A3DDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6B3
          B3B39999998B8B8B848484808080B6B6B6FDFDFDFFFFFFFFFFFFFCFCFD5156C2
          001AEF0625F72743FE3651FE2A3AD3C2C2E3FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFBFC0E03B43C11321C20009AB0107A25A5BB4F6F6FBFF
          FFFFFDFDFDAAAAAAA0A0A0A5A5A5B1B1B1B6B6B6A3A3A3DEDEDEFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCDCDCA0A0A09393938484848181
          81A7A7A7FAFAFAFFFFFFFFFFFFF3F3F96267CB2233DF344FFC2939D4C2C3E3FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6FB
          8486CB222DBC0712B401069F8282C3FFFFFFFFFFFFF9F9F9B3B3B3A4A4A4B5B5
          B5A3A3A3DEDEDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFAFAFABEBEBE969696898989808080BABABAFFFFFFFFFFFFFFFFFF
          FFFFFFDADAED787ACAC0C1E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDADAED5E60BEA4A4D4FDFDFEFF
          FFFFFFFFFFFFFFFFFFFFFFEBEBEBBABABADDDDDDFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEBABAB
          ABCECECEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        NumGlyphs = 2
        OnClick = SpeedButtonSupprimerLaListeClick
      end
      object ListBoxFichiers: TListBox
        Left = 9
        Top = 5
        Width = 288
        Height = 113
        Hint = 'Liste des derniers fichiers ouverts'
        ItemHeight = 18
        Style = lbOwnerDrawFixed
        TabOrder = 0
        OnClick = ListBoxFichiersClick
        OnDrawItem = ListBoxFichiersDrawItem
      end
      object historiqueDesFichiers: TCheckBox
        Left = 320
        Top = 20
        Width = 169
        Height = 17
        Hint = 
          'Afficher ou non la liste des derniers fichiers ouverts dans le m' +
          'enu '#39'Fichier'#39
        Caption = 'A&fficher l'#39'historique des fichiers'
        TabOrder = 1
        OnClick = historiqueDesFichiersClick
      end
      object NombreFichiersHistorique: TRxSpinEdit
        Left = 423
        Top = 68
        Width = 49
        Height = 21
        Hint = 'Nombre maximum de fichiers dans l'#39'historique des fichiers'
        EditorEnabled = False
        MaxValue = 20
        MinValue = 1
        TabOrder = 2
      end
    end
    object TabSheet12: TTabSheet
      Caption = 'Onglets'
      ImageIndex = 11
      object Bevel18: TBevel
        Left = 1
        Top = 0
        Width = 505
        Height = 171
      end
      object Label34: TLabel
        Left = 309
        Top = 20
        Width = 73
        Height = 13
        Caption = 'classe à l'#39'autre.'
      end
      object RadioGroupGrilleNotes: TRadioGroup
        Left = 9
        Top = 9
        Width = 87
        Height = 155
        Hint = 
          'Permet de contrôler l'#39'emplacement des onglets des grilles de not' +
          'es'
        Caption = 'Grille des &notes'
        ItemIndex = 0
        Items.Strings = (
          'En haut'
          'A gauche'
          'A droite'
          'En bas')
        TabOrder = 0
      end
      object RadioGroupGrilleBilans: TRadioGroup
        Left = 100
        Top = 9
        Width = 87
        Height = 155
        Hint = 
          'Permet de contrôler l'#39'emplacement des onglets des grilles de bil' +
          'ans'
        Caption = 'Grille des &bilans'
        ItemIndex = 0
        Items.Strings = (
          'En haut'
          'A gauche'
          'A droite'
          'En bas')
        TabOrder = 1
      end
      object CheckBox10: TCheckBox
        Left = 285
        Top = 4
        Width = 212
        Height = 17
        Hint = 
          'Afficher ou non les onglets du bas de la fenêtre permettant de p' +
          'asser rapidement d'#39'une classe à l'#39'autre'
        Caption = '&Afficher des onglets pour passer d'#39'une'
        TabOrder = 2
        OnClick = CheckBox10Click
      end
      object RadioGroup3: TRadioGroup
        Left = 283
        Top = 36
        Width = 219
        Height = 62
        Hint = 'Permet de choisir le type d'#39'onglets'
        Caption = ' &Type d'#39'onglets '
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'Boutons plats'
          'Boutons normaux'
          'Onglets')
        TabOrder = 3
        OnClick = RadioGroup3Click
      end
      object TabControl1: TTabControl
        Left = 310
        Top = 101
        Width = 187
        Height = 20
        Hint = 'Permet de voir le type d'#39'onglets choisi'
        HotTrack = True
        Style = tsFlatButtons
        TabOrder = 4
        Tabs.Strings = (
          'Classe 1'
          'Classe 2'
          'Classe 3')
        TabIndex = 0
      end
      object RadioGroupGraphes: TRadioGroup
        Left = 191
        Top = 9
        Width = 87
        Height = 155
        Hint = 'Permet de contrôler l'#39'emplacement des onglets des graphes'
        Caption = '&Graphes'
        ItemIndex = 0
        Items.Strings = (
          'En haut'
          'A gauche'
          'A droite'
          'En bas')
        TabOrder = 5
      end
      object CheckBox25: TCheckBox
        Left = 285
        Top = 128
        Width = 217
        Height = 17
        Hint = 
          'Permet d'#39'afficher la matière en plus du nom de la classe dans le' +
          's onglets'
        Caption = 'Inclure matière dans le libellé des boutons'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
      end
      object CheckBoxAfficherNomEnseignantOnglets: TCheckBox
        Left = 285
        Top = 150
        Width = 217
        Height = 17
        Hint = 
          'Permet d'#39'afficher la matière en plus du nom de la classe dans le' +
          's onglets'
        Caption = 'Inclure nom de l'#39'enseignant dans le libellé'
        TabOrder = 7
      end
    end
    object TabSheet17: TTabSheet
      Caption = 'Matières'
      ImageIndex = 12
      object Bevel24: TBevel
        Left = 1
        Top = 0
        Width = 505
        Height = 171
      end
      object Label37: TLabel
        Left = 366
        Top = 9
        Width = 91
        Height = 13
        Caption = '&Nom de la matière :'
        FocusControl = Edit9
      end
      object SpeedButton52: TSpeedButton
        Left = 362
        Top = 50
        Width = 137
        Height = 26
        Hint = 'Ajouter à la liste la matière écrite dans le champ du dessus'
        Caption = '&Ajouter à la liste'
        Enabled = False
        Flat = True
        Glyph.Data = {
          B60D0000424DB60D000000000000360000002800000030000000180000000100
          180000000000800D0000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E
          2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C
          4E2E1C4E2E1C4E2E1C4E2E1C4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF6C6C6C6C6C6C6C6C6C6C6C6C6B6B6B6B6B6B6B6B6B6B6B6B6C
          6C6C6C6C6C6C6C6C6C6C6C6B6B6B6C6C6C6C6C6C6C6C6CFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF4E2E1CD0BAADA48B7AA48B7AA48B7AA48B7AA48B
          7AA48B7AA48B7AA48B7AA48B7AA48B7AA48B7AA48B7AA48B7AA48B7A4E2E1CFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6B6B6BD8D8D8B9B9B9B9B9B9
          B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9
          B9B9B9B96C6C6CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E2E1CD0BAADEB
          E3DEEAE0DAE9DDD8E6DAD4E5D7D0E2D3CBE0CFC7DDCCC2DAC9BFD8C5BAD5C1B6
          D3BDB2D0BAADD0BAADA48B7A4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF6C6C6CD8D8D8F0F0F0EEEEEEEDEDEDEBEBEBE9E9E9E7E7E7E5E5E5E3E3E3E1
          E1E1DFDFDFDDDDDDDADADAD8D8D8D8D8D8B9B9B96C6C6CFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF4E2E1CD0BAADF0EAE6EEE6E2EBE3DEEAE0DAE9DDD8E6DAD4E5D7
          D0E2D3CBE0CFC7DDCCC2DAC9BFD8C5BAD5C1B6D3BDB2D0BAADA48B7A4E2E1CFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF6C6C6CD8D8D8F4F4F4F2F2F2F0F0F0EEEEEE
          EDEDEDEBEBEBE9E9E9E7E7E7E5E5E5E3E3E3E1E1E1DFDFDFDDDDDDDADADAD8D8
          D8B9B9B96B6B6BFFFFFFFFFFFFFFFFFFFFFFFF4E2E1CD0BAADF4EFEDF3EDEAF0
          EAE6EEE6E2EBE3DEEAE0DAE9DDD8E6DAD4E5D7D0E2D3CBE0CFC7DDCCC2DAC9BF
          D8C5BAD5C1B6D3BDB2A48B7A4E2E1CFFFFFFFFFFFFFFFFFFFFFFFF6B6B6BD8D8
          D8F7F7F7F6F6F6F4F4F4F2F2F2F1F1F1EEEEEEEDEDEDEBEBEBE9E9E9E7E7E7E5
          E5E5E3E3E3E1E1E1DFDFDFDCDCDCDADADAB9B9B96C6C6CFFFFFFFFFFFFFFFFFF
          4E2E1CD0BAADFAF6F4F7F3F0A48B7AF3EDEAF0EAE6EEE6E2EBE3DEEAE0DAE9DD
          D8E6DAD4E5D7D0E2D3CBE0CFC7DDCCC2DAC9BFD8C5BAD5C1B6A48B7A4E2E1CFF
          FFFFFFFFFFFFFFFF6C6C6CD8D8D8FAFAFAF9F9F9B9B9B9F6F6F6F4F4F4F2F2F2
          F0F0F0EEEEEEEDEDEDEBEBEBE9E9E9E7E7E7E5E5E5E3E3E3E1E1E1DFDFDFDCDC
          DCB9B9B96B6B6BFFFFFFFFFFFF997F6EFFFFFFFEFCFCFBFAF84E2E1CF7F3F0A4
          8B7AF3EDEAF0EAE6EEE6E2EBE3DEEAE0DAE9DDD8E6DAD4E5D7D0E2D3CBE0CFC7
          DDCCC2DAC9BFD8C5BAA48B7A4E2E1CFFFFFFFFFFFFB1B1B1FFFFFFFEFEFEFDFD
          FD6C6C6CF9F9F9B9B9B9F6F6F6F4F4F4F2F2F2F0F0F0EEEEEEEDEDEDECECECE9
          E9E9E7E7E7E5E5E5E3E3E3E0E0E0DEDEDEB9B9B96C6C6CFFFFFFFFFFFFFFFFFF
          997F6EFFFFFFFEFCFCFBFAF84E2E1CF7F3F0F4EFEDF3EDEAF0EAE6EEE6E2EBE3
          DEEAE0DAE9DDD8E6DAD4E5D7D0E2D3CBE0CFC7DDCCC2DAC9BFA48B7A4E2E1CFF
          FFFFFFFFFFFFFFFFB1B1B1FFFFFFFEFEFEFCFCFC6C6C6CF9F9F9F7F7F7F5F5F5
          F4F4F4F2F2F2F0F0F0EEEEEEEDEDEDEBEBEBE9E9E9E7E7E7E5E5E5E3E3E3E1E1
          E1B9B9B96C6C6CFFFFFFFFFFFFFFFFFFFFFFFF997F6EFFFFFFFEFCFCFBFAF8FA
          F6F4F7F3F0F4EFEDF3EDEAF0EAE6EEE6E2EBE3DEEAE0DAE9DDD8E6DAD4E5D7D0
          E2D3CBE0CFC7DDCCC2A48B7A4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFB1B1B1FFFF
          FFFEFEFEFCFCFCFBFBFBF9F9F9F7F7F7F5F5F5F4F4F4F2F2F2F0F0F0EEEEEEED
          EDEDECECECE9E9E9E7E7E7E5E5E5E3E3E3B9B9B96B6B6BFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF997F6EFFFFFFFEFCFCFBFAF8FAF6F4F7F3F0F4EFEDF3EDEAF0EA
          E6EEE6E2EBE3DEEAE0DAE9DDD8E6DAD4E5D7D0E2D3CBE0CFC7A48B7A4E2E1CFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFB1B1B1FFFFFFFEFEFEFCFCFCFBFBFBF9F9F9
          F7F7F7F6F6F6F4F4F4F2F2F2F0F0F0EEEEEEEDEDEDECECECE9E9E9E6E6E6E5E5
          E5B9B9B96B6B6BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF997F6EFFFFFFFE
          FCFCFBFAF8FAF6F4F7F3F0F4EFEDF3EDEAF0EAE6EEE6E2EBE3DE004500004500
          004500E5D7D0E2D3CBA48B7A4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFB1B1B1FFFFFFFEFEFEFCFCFCFBFBFBF9F9F9F7F7F7F5F5F5F4F4F4F2F2F2F1
          F1F1787878777777777777E9E9E9E7E7E7B9B9B96C6C6CFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF997F6EFFFFFFFEFCFCFBFAF8FAF6F4F7F3F0F4EF
          EDF3EDEAF0EAE6EEE6E200450010A51D004500E6DAD4E5D7D0E2D3CB4E2E1CFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB1B1B1FFFFFFFEFEFEFDFDFD
          FBFBFBF9F9F9F7F7F7F5F5F5F3F3F3F2F2F2787878B9B9B9777777EBEBEBE9E9
          E9E7E7E76C6C6CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99
          7F6E977D6B9579689277669074638C725F8A6E5D886C5A8669580045001CB833
          0045007D5E4D7A5C4B785A48765745FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFB1B1B1AFAFAFACACACABABABA9A9A9A7A7A7A5A5A5A3A3A3A1
          A1A1777777C5C5C5787878989898979797959595929292FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF0045000045000045000045002DD352004500004500004500004500FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF787878777777777777777777D5D5D57878787777777777
          77777777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00450045F68045F68045F68039E569
          2DD35221C13D16AF28004500FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF777777EAEAEAEA
          EAEAEAEAEAE0E0E0D5D5D5CACACAC0C0C0787878FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00450000450000450000450045F680004500004500004500004500FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF777777787878777777777777EAEAEA7777777878787777
          77777777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00450045F680
          004500FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF787878EAEAEA777777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF00450045F680004500FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF787878EAEAEA777777FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF004500004500
          004500FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF787878777777777777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        NumGlyphs = 2
        OnClick = SpeedButton52Click
      end
      object SpeedButton53: TSpeedButton
        Left = 362
        Top = 79
        Width = 137
        Height = 26
        Hint = 'Supprimer de la liste la matière sélectionnée'
        Caption = '&Supprimer de la liste'
        Enabled = False
        Flat = True
        Glyph.Data = {
          B60D0000424DB60D000000000000360000002800000030000000180000000100
          180000000000800D0000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E
          2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C
          4E2E1C4E2E1C4E2E1C4E2E1C4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C
          6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6CFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF4E2E1CD0BAADA48B7AA48B7AA48B7AA48B7AA48B
          7AA48B7AA48B7AA48B7AA48B7AA48B7AA48B7AA48B7AA48B7AA48B7A4E2E1CFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6C6C6CD8D8D8B9B9B9B9B9B9
          B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9
          B9B9B9B96B6B6BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E2E1CD0BAADEB
          E3DEEAE0DAE9DDD8E6DAD4E5D7D0E2D3CBE0CFC7DDCCC2DAC9BFD8C5BAD5C1B6
          D3BDB2D0BAADD0BAADA48B7A4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF6C6C6CD8D8D8F0F0F0EEEEEEEDEDEDECECECE9E9E9E7E7E7E5E5E5E3E3E3E0
          E0E0DFDFDFDCDCDCDADADAD8D8D8D8D8D8B9B9B96C6C6CFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF4E2E1CD0BAADF0EAE6EEE6E2EBE3DEEAE0DAE9DDD8E6DAD4E5D7
          D0E2D3CBE0CFC7DDCCC2DAC9BFD8C5BAD5C1B6D3BDB2D0BAADA48B7A4E2E1CFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF6C6C6CD8D8D8F4F4F4F2F2F2F1F1F1EEEEEE
          EDEDEDEBEBEBE9E9E9E7E7E7E5E5E5E3E3E3E1E1E1DFDFDFDDDDDDDADADAD8D8
          D8B9B9B96C6C6CFFFFFFFFFFFFFFFFFFFFFFFF4E2E1CD0BAADF4EFEDF3EDEAF0
          EAE6EEE6E2EBE3DEEAE0DAE9DDD8E6DAD4E5D7D0E2D3CBE0CFC7DDCCC2DAC9BF
          D8C5BAD5C1B6D3BDB2A48B7A4E2E1CFFFFFFFFFFFFFFFFFFFFFFFF6B6B6BD8D8
          D8F7F7F7F5F5F5F4F4F4F2F2F2F0F0F0EEEEEEEDEDEDEBEBEBE9E9E9E7E7E7E5
          E5E5E3E3E3E1E1E1DFDFDFDCDCDCDADADAB9B9B96C6C6CFFFFFFFFFFFFFFFFFF
          4E2E1CD0BAADFAF6F4F7F3F0A48B7AF3EDEAF0EAE6EEE6E2EBE3DEEAE0DAE9DD
          D8E6DAD4E5D7D0E2D3CBE0CFC7DDCCC2DAC9BFD8C5BAD5C1B6A48B7A4E2E1CFF
          FFFFFFFFFFFFFFFF6C6C6CD8D8D8FBFBFBF9F9F9B9B9B9F6F6F6F4F4F4F2F2F2
          F1F1F1EEEEEEEDEDEDECECECE9E9E9E7E7E7E5E5E5E3E3E3E0E0E0DFDFDFDCDC
          DCB9B9B96C6C6CFFFFFFFFFFFF997F6EFFFFFFFEFCFCFBFAF84E2E1CF7F3F0A4
          8B7AF3EDEAF0EAE6EEE6E2EBE3DEEAE0DAE9DDD8E6DAD4E5D7D0E2D3CBE0CFC7
          DDCCC2DAC9BFD8C5BAA48B7A4E2E1CFFFFFFFFFFFFB1B1B1FFFFFFFEFEFEFCFC
          FC6B6B6BF9F9F9B9B9B9F6F6F6F4F4F4F2F2F2F0F0F0EEEEEEEDEDEDEBEBEBE9
          E9E9E7E7E7E5E5E5E3E3E3E0E0E0DFDFDFB9B9B96B6B6BFFFFFFFFFFFFFFFFFF
          997F6EFFFFFFFEFCFCFBFAF84E2E1CF7F3F0F4EFEDF3EDEAF0EAE6EEE6E2EBE3
          DEEAE0DAE9DDD8E6DAD4E5D7D0E2D3CBE0CFC7DDCCC2DAC9BFA48B7A4E2E1CFF
          FFFFFFFFFFFFFFFFB1B1B1FFFFFFFEFEFEFCFCFC6C6C6CF9F9F9F7F7F7F6F6F6
          F4F4F4F2F2F2F0F0F0EEEEEEEDEDEDEBEBEBE9E9E9E7E7E7E5E5E5E3E3E3E1E1
          E1B9B9B96B6B6BFFFFFFFFFFFFFFFFFFFFFFFF997F6EFFFFFFFEFCFCFBFAF8FA
          F6F4F7F3F0F4EFEDF3EDEAF0EAE6EEE6E2EBE3DEEAE0DAE9DDD8E6DAD4E5D7D0
          E2D3CBE0CFC7DDCCC2A48B7A4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFB1B1B1FFFF
          FFFEFEFEFDFDFDFBFBFBF9F9F9F7F7F7F5F5F5F4F4F4F2F2F2F1F1F1EEEEEEED
          EDEDECECECE9E9E9E6E6E6E5E5E5E3E3E3B9B9B96C6C6CFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF997F6EFFFFFFFEFCFCFBFAF8FAF6F4F7F3F0F4EFEDF3EDEAF0EA
          E6EEE6E2EBE3DEEAE0DAE9DDD8E6DAD4E5D7D0E2D3CBE0CFC7A48B7A4E2E1CFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFB1B1B1FFFFFFFEFEFEFDFDFDFAFAFAF9F9F9
          F7F7F7F6F6F6F4F4F4F2F2F2F0F0F0EEEEEEEDEDEDECECECE9E9E9E7E7E7E5E5
          E5B9B9B96C6C6CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF997F6EFFFFFFFE
          FCFCFBFAF8FAF6F4F7F3F0F4EFEDF3EDEAF0EAE6EEE6E2EBE3DEEAE0DAE9DDD8
          E6DAD4E5D7D0E2D3CBA48B7A4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFB1B1B1FFFFFFFEFEFEFDFDFDFBFBFBF9F9F9F7F7F7F6F6F6F4F4F4F2F2F2F0
          F0F0EEEEEEEDEDEDECECECE9E9E9E6E6E6B9B9B96C6C6CFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF997F6EFFFFFFFEFCFCFBFAF8FAF6F4F7F3F0F4EF
          EDF3EDEAF0EAE6EEE6E2EBE3DEEAE0DAE9DDD8E6DAD4E5D7D0E2D3CB4E2E1CFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB1B1B1FFFFFFFEFEFEFDFDFD
          FBFBFBF9F9F9F7F7F7F6F6F6F4F4F4F2F2F2F1F1F1EEEEEEEDEDEDEBEBEBE9E9
          E9E7E7E76B6B6BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99
          7F6E977D6B9579689277669074638C725F8A6E5D886C5A866958836755816452
          7F62507D5E4D7A5C4B785A48765745FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFB1B1B1AFAFAFADADADABABABA9A9A9A7A7A7A5A5A5A3A3A3A1
          A1A19F9F9F9D9D9D9A9A9A989898979797959595929292FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF000080000080000080000080000080000080000080000080FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF7070707070707070707070707272727070707070
          70707070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000080677DFA506AFC2849FE
          2849FE092BFE001EFF000080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF707070C6
          C6C6C0C0C0B4B4B4B3B3B3A8A8A8A6A6A6707070FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF000080000080000080000080000080000080000080000080FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF7070707070707070707070707070707272727070
          70707070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        NumGlyphs = 2
        OnClick = SpeedButton53Click
      end
      object SpeedButton54: TSpeedButton
        Left = 362
        Top = 110
        Width = 137
        Height = 26
        Hint = 'Revenir à la liste par défaut'
        Caption = '&Liste par défaut'
        Flat = True
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000011170000111700000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFF0045000045000045000045000045000045000045000045000045
          00004500004500004500004500004500004500004500004500004500004500FF
          FFFFFFFFFFFFFFFF101310101310FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF008000004500FFFFFFFFFFFF101310FFFFFF55555510131000450000450000
          4500004500004500004500004500004500004500004500004500004500004500
          004500004500004500004500004500FFFFFFFFFFFF787A7D1013101013100FA4
          1C0D9F180B9C1409971007930C058F09038B0602870300820100800000800000
          8000008000008000008000008000004500C26600C26600FFFFFFFFFFFF101310
          FFFFFF5555551013100FA41C0D9F180B9C1409971007930C058F09038B060287
          03008201008000008000008000008000008000008000004500F6B877F6B877C2
          6600FFFFFF787A7D10131010131014AC2511A7200FA41C0D9F180B9C14099710
          07930C058F09038B060287030082010080000080000080000080000080000045
          00F6B877F6B877C26600FFFFFF101310FFFFFF55555510131014AC2511A7200F
          A41C0D9F180B9C1409971007930C058F09038B06028703008201008000008000
          008000008000004500F6B877F6B877C26600FFFFFF787A7D10131010131019B5
          2F17B12A14AC2511A7200FA41C0D9F180B9C1409971007930C058F09038B0602
          8703008201008000008000008000004500F6D79CF6D79CC26600FFFFFF101310
          FFFFFF55555510131019B52F17B12A14AC2511A7200FA41C0D9F180B9C140997
          1007930C058F09038B06028703008201008000008000004500C26600C26600FF
          FFFFFFFFFF787A7D10131010131020C03B1CBA3519B52F17B12A14AC2511A720
          0FA41C0D9F180B9C1409971007930C058F09038B060287030082010080000045
          00004500004500FFFFFFFFFFFF101310FFFFFF55555510131020C03B1CBA3519
          B52F17B12A14AC2511A7200FA41C0D9F180B9C1409971007930C058F09038B06
          0287030082010045001CB8451CB845004500FFFFFF787A7D10131010131027CA
          4823C54120C03B1CBA3519B52F17B12A14AC2511A7200FA41C0D9F180B9C1409
          971007930C058F09038B060287030045001CB8451CB845004500FFFFFF101310
          FFFFFF55555510131027CA4823C54120C03B1CBA3519B52F17B12A14AC2511A7
          200FA41C0D9F180B9C1409971007930C058F09038B060045001CB8451CB84500
          4500FFFFFF787A7D1013101013102ED5562BD04F27CA4823C54120C03B1CBA35
          19B52F17B12A14AC2511A7200FA41C0D9F180B9C1409971007930C058F090045
          0045F67745F677004500FFFFFF101310FFFFFF5555551013102ED5562BD04F27
          CA4823C54120C03B1CBA3519B52F17B12A14AC2511A7200FA41C0D9F180B9C14
          09971007930C004500004500004500FFFFFFFFFFFF787A7D10131010131036E1
          6533DC5D2ED5562BD04F27CA4823C54120C03B1CBA3519B52F17B12A14AC2511
          A7200FA41C0D9F180B9C14099710004500004577004577FFFFFFFFFFFF101310
          FFFFFF55555510131036E16533DC5D2ED5562BD04F27CA4823C54120C03B1CBA
          3519B52F17B12A14AC2511A7200FA41C0D9F180B9C1400450000B8F600B8F600
          4577FFFFFF787A7D1013101013103FED733AE66C36E16533DC5D2ED5562BD04F
          27CA4823C54120C03B1CBA3519B52F17B12A14AC2511A7200FA41C0D9F180045
          0000B8F600B8F6004577FFFFFF101310FFFFFF5555551013103FED733AE66C36
          E16533DC5D2ED5562BD04F27CA4823C54120C03B1CBA3519B52F17B12A14AC25
          11A7200FA41C00450000B8F600B8F6004577FFFFFF787A7D10131010131045F6
          8042F27A3FED733AE66C36E16533DC5D2ED5562BD04F27CA4823C54120C03B1C
          BA3519B52F17B12A14AC2511A72000450000F6F600F6F6004577FFFFFF101310
          FFFFFF55555510131045F68042F27A3FED733AE66C36E16533DC5D2ED5562BD0
          4F27CA4823C54120C03B1CBA3519B52F17B12A14AC25004500004577004577FF
          FFFFFFFFFF787A7D10131010131045F68045F68045F68042F27A3FED733AE66C
          36E16533DC5D2ED5562BD04F27CA4823C54120C03B1CBA3519B52F17B12A0045
          00004500004500FFFFFFFFFFFFFFFFFFFFFFFF00800000800000800000800000
          8000008000008000008000008000008000008000008000008000008000008000
          008000008000008000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = SpeedButton54Click
      end
      object SpeedButton55: TSpeedButton
        Left = 362
        Top = 140
        Width = 30
        Height = 26
        Hint = 'Ajouter des matières contenues dans un fichier texte'
        Flat = True
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000011170000111700000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA48B7A4E2E1C4E2E
          1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E
          2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          A48B7AE9DDD7C7AD9EC7AD9EC7AD9EC7AD9EC7AD9EC7AD9EC7AD9EC7AD9EC7AD
          9EC7AD9EC7AD9E4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFA48B7AEAE0DAE9DDD7E6D9D3E3D5CEE1D1CADECEC5DCCAC0
          D9C6BCD7C2B7D3BFB2D0BBAFC7AD9E4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA48B7AEBE3DEEAE0DAE9DDD7E6D9D3E3
          D5CEE1D1CADECEC5030303D9C6BCD7C2B7D3BFB2C7AD9E4E2E1CFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA48B7AEEE6E2EBE3
          DEEAE0DAE9DDD7E6D9D3E3D5CE030303030303030303D9C6BCD7C2B7C7AD9E4E
          2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          A48B7AF0EAE6EEE6E2EBE3DEEAE0DAE9DDD70303030303030303030303030303
          03D9C6BCC7AD9E4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFA48B7AF3EEEAF0EAE6EEE6E2EBE3DEEAE0DAE9DDD7E6D9D3
          030303E1D1CADECEC5DCCAC0C7AD9E4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA48B7AF6F0EEF3EEEAF0EAE6EEE6E2EB
          E3DEEAE0DAE9DDD7030303E3D5CEE1D1CADECEC5C7AD9E4E2E1CFFFFFFFFFFFF
          522A1B522A1B522A1B522A1B522A1B522A1B522A1B522A1B522A1B522A1B522A
          1B522A1B522A1BEEE6E2EBE3DEC7AD9E030303E6D9D3E3D5CEE1D1CAC7AD9E4E
          2E1CFFFFFFC05754C47F79BC757056402FAF9E96B4AAA5BBB0AABBB0AABBB0AA
          735B4C7B2B287B2B287B2B28522A1BF0EAE6030303030303EAE0DAE9DDD7E6D9
          D3E3D5CEC7AD9E4E2E1CFFFFFFC05754CB8883C47F7956402F1A0F0B44362DFF
          FFFFFFFFFFEBDCD4735B4C7F2E2C7B2B287B2B28522A1BF3EEEAF0EAE6EEE6E2
          EBE3DEEAE0DAE9DDD7E6D9D3C7AD9E4E2E1CFFFFFFC05754D3928CCB88835640
          2F03030320130DFFFFFFEBDCD4D8BBAB735B4C8736347F2E2C7B2B28522A1BF6
          F0EEF3EEEAF0EAE6EEE6E2EBE3DEEAE0DAE9DDD7C7AD9E4E2E1CFFFFFFC05754
          DA9C96D3928C56402F56402F56402F56402F56402F56402F56402F8E3F3C8736
          347F2E2C522A1BF7F4F2F6F0EEF3EEEAF0EAE6EEE6E2EBE3DECCB7AAC7AD9E4E
          2E1CFFFFFFC05754E7ABA5E0A19CD79791CF8E88C7837FBC7570AD645EA65A56
          9E504D9647448E3F3C873634522A1BFAF8F7F7F4F2F6F0EEF3EEEAF0EAE6A48B
          7A4E2E1C4E2E1C4E2E1CFFFFFFC05754EBB0AAE7ABA5E0A19CD79791CF8E88C7
          837FB8706CB16864AA5E5A9E504D9647448E3F3C522A1BFCFBFBFAF8F7F7F4F2
          F6F0EEF3EEEAA48B7AEFE5DED0BAAD4E2E1CFFFFFFC05754EBB0AAEBB0AAB848
          41B84841B84841B84841B84841B84841B84841B84841A15551994C48522A1BFF
          FFFFFCFBFBFAF8F7F7F4F2F6F0EEA48B7AD0BAAD4E2E1CFFFFFFFFFFFFC05754
          EBB0AAB84841F8F2EFF3E9E3EEE0D9E9D9CFE0CABCDCC2B4D8BBABD8BBABB848
          41A15551522A1BFFFFFFFFFFFFFCFBFBFAF8F7F7F4F2A48B7A4E2E1CFFFFFFFF
          FFFFFFFFFFC05754EBB0AAB84841FFFFFFFBF6F4F6EDE9F0E3DEE6D5CAE2CEC1
          DEC6B8D9BFAFB84841AA5E5A522A1BA48B7AA48B7AA48B7AA48B7AA48B7AA48B
          7AFFFFFFFFFFFFFFFFFFFFFFFFC05754EBB0AAB84841FFFFFFFFFFFFFBF6F4F6
          EDE9EBDCD4E6D5CAE2CEC1DEC6B8B84841B16864522A1BFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC05754EBB0AAB84841FFFF
          FFFFFFFFFFFFFFFFFFFFF6EDE9F0E3DEEBDCD4E6D5CAB84841C47F79522A1BFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC05754
          EBB0AAB84841FFFFFFFFFFFFFFFFFFFFFFFFFBF6F4F6EDE9F0E3DEEBDCD4B848
          41030303522A1BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFC05754EBB0AAB84841FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF6F4
          F6EDE9F0E3DEB84841B8706C522A1BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFC05754C05754C05754C05754C05754C05754C0
          5754C05754C05754C05754C05754C05754C05754C05754FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = SpeedButton55Click
      end
      object SpeedButton56: TSpeedButton
        Left = 415
        Top = 140
        Width = 30
        Height = 26
        Hint = 'Sauver la liste des matières dans un fichier texte'
        Flat = True
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000011170000111700000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF522A1B522A
          1B522A1B522A1B522A1B522A1B522A1B522A1B522A1B522A1B522A1B522A1B52
          2A1BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          C05754C47F79BC757056402FAF9E96B4AAA5BBB0AABBB0AABBB0AA735B4C7B2B
          287B2B287B2B28522A1BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFC05754CB8883C47F7956402F1A0F0B44362DFFFFFFFFFFFF
          EBDCD4735B4C7F2E2C7B2B287B2B28522A1BFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC05754D3928CCB888356402F03030320
          130DFFFFFFEBDCD4D8BBAB735B4C8736347F2E2C7B2B28522A1BFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC05754DA9C96D392
          8C56402F56402F56402F56402F56402F56402F56402F8E3F3C8736347F2E2C52
          2A1BFFFFFFA48B7A4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C
          C05754E7ABA5E0A19CD79791CF8E88C7837FBC7570AD645EA65A569E504D9647
          448E3F3C873634522A1BFFFFFFA48B7AE9DDD7C7AD9EC7AD9EC7AD9EC7AD9EC7
          AD9EC7AD9EC7AD9EC05754EBB0AAE7ABA5E0A19CD79791CF8E88C7837FB8706C
          B16864AA5E5A9E504D9647448E3F3C522A1BFFFFFFA48B7AEAE0DAE9DDD7E6D9
          D3E3D5CEE1D1CADECEC5DCCAC0D9C6BCC05754EBB0AAEBB0AAB84841B84841B8
          4841B84841B84841B84841B84841B84841A15551994C48522A1BFFFFFFA48B7A
          EBE3DEEAE0DAE9DDD7E6D9D3E3D5CEE1D1CADECEC5DCCAC0C05754EBB0AAB848
          41F8F2EFF3E9E3EEE0D9E9D9CFE0CABCDCC2B4D8BBABD8BBABB84841A1555152
          2A1BFFFFFFA48B7AEEE6E2EBE3DEEAE0DAE9DDD7E6D9D3E3D5CEE1D1CADECEC5
          C05754EBB0AAB84841FFFFFFFBF6F4F6EDE9F0E3DEE6D5CAE2CEC1DEC6B8D9BF
          AFB84841AA5E5A522A1BFFFFFFA48B7AF0EAE6EEE6E2EBE3DEEAE0DA030303E6
          D9D3E3D5CEE1D1CAC05754EBB0AAB84841FFFFFFFFFFFFFBF6F4F6EDE9EBDCD4
          E6D5CAE2CEC1DEC6B8B84841B16864522A1BFFFFFFA48B7AF3EEEAF0EAE6EEE6
          E2EBE3DE030303030303E6D9D3E3D5CEC05754EBB0AAB84841FFFFFFFFFFFFFF
          FFFFFFFFFFF6EDE9F0E3DEEBDCD4E6D5CAB84841C47F79522A1BFFFFFFA48B7A
          F6F0EEF3EEEA030303030303030303030303030303E6D9D3C05754EBB0AAB848
          41FFFFFFFFFFFFFFFFFFFFFFFFFBF6F4F6EDE9F0E3DEEBDCD4B8484103030352
          2A1BFFFFFFA48B7AF7F4F2030303C7AD9EF0EAE6030303030303EAE0DAE9DDD7
          C05754EBB0AAB84841FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF6F4F6EDE9F0E3
          DEB84841B8706C522A1BFFFFFFA48B7AFAF8F7030303F6F0EEF3EEEA030303EE
          E6E2EBE3DEEAE0DAC05754C05754C05754C05754C05754C05754C05754C05754
          C05754C05754C05754C05754C05754C05754FFFFFFA48B7AFCFBFB030303F7F4
          F2F6F0EEF3EEEAF0EAE6EEE6E2EBE3DEEAE0DAE9DDD7E6D9D3C7AD9E4E2E1CFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA48B7A
          FFFFFF030303FAF8F7F7F4F2F6F0EEF3EEEAF0EAE6EEE6E2EBE3DEEAE0DAE9DD
          D7C7AD9E4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFA48B7AFFFFFFFFFFFFFCFBFBFAF8F7F7F4F2F6F0EEF3EEEAF0EAE6
          EEE6E2EBE3DECCB7AAC7AD9E4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFA48B7AFFFFFFFFFFFFFFFFFFFCFBFBFAF8F7F7
          F4F2F6F0EEF3EEEAF0EAE6A48B7A4E2E1C4E2E1C4E2E1CFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA48B7AFFFFFFFFFFFFFFFF
          FFFFFFFFFCFBFBFAF8F7F7F4F2F6F0EEF3EEEAA48B7AEFE5DED0BAAD4E2E1CFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA48B7A
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFBFBFAF8F7F7F4F2F6F0EEA48B7AD0BA
          AD4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFA48B7AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFBFBFAF8F7
          F7F4F2A48B7A4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFA48B7AA48B7AA48B7AA48B7AA48B7AA48B7AA4
          8B7AA48B7AA48B7AA48B7AA48B7AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = SpeedButton56Click
      end
      object SpeedButtonSupprimerMatieres: TSpeedButton
        Left = 8
        Top = 144
        Width = 344
        Height = 26
        Caption = 'S&upprimer toutes les matières de la liste'
        Flat = True
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000011170000111700000000000000000000FFFFFFFFFFFF
          FFFFFFB89F8E4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E
          1C4E2E1C0000804E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1CFFFFFF00
          0080FFFFFFFFFFFFFFFFFFB89F8EE7DDD7A48B7AA48B7AA48B7AA48B7AA48B7A
          A48B7AA48B7AA48B7AA48B7A0D2FFA000080A48B7AA48B7AA48B7AA48B7AA48B
          7A4E2E1C0000800D2FFAFFFFFFFFFFFFFFFFFFB89F8EEAE1DAE7DDD7E6D9D4E5
          D7D0E2D3CBE0CFC7DDCBC4DCCAC1D9C6BDD7C4B80D2FFA001ADCD0BAADD0BAAD
          D0BAADD0BAADA48B7A0000800D2FFA0D2FFAFFFFFFFFFFFFFFFFFFB89F8EEEE6
          E1EBE2DDE9DED9E7DCD5E5D8D1E3D4CEE1D0CADECEC5DCCAC1D9C6BDD7C4B80D
          2FFA000080D0BAADD0BAADD0BAAD0000800D2FFA0D2FFAFFFFFFFFFFFFFFFFFF
          FFFFFFB89F8EF0E9E64E2E1CA48B7AA48B7AA48B7AA48B7AA48B7AA48B7AA48B
          7AA48B7AA48B7AA48B7A0D2FFA000080A48B7A0000800D2FFA0D2FFAFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFB89F8EF3EDEA4E2E1CD0BAADD0BAADD5C1B7DECEC5
          E6D9D3EBE3DEF3EEEAFAF8F7FFFFFFFFFFFF1C3CFB0D2FFA0D2FFA0D2FFA0D2F
          FA4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB89F8EF6F0EE4E2E1CD0BAADD0
          BAADD0BAADD5C1B7DECEC5E6D9D3EBE3DEF3EEEAFAF8F7FFFFFFFFFFFF0D2FFA
          0D2FFA0D2FFAA48B7A4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB89F8EF8F3
          F34E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E
          2E1C0000800D2FFA0D2FFA0D2FFA0000804E2E1CFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFB89F8EFBF7F7F8F3F3F6F0EEF3EDEAF0E9E6EEE6E1EBE2DDE9DED9E7DC
          D5E5D8D1E3D4CE000080657FFC0D2FFA1C3CFB657FFC0D2FFA000080FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFB89F8EFCFBFBCC8028CC8028CC8028CC8028CC8028
          CC8028CC8028CC8028CC8028000080657FFC001ADCE0CFC7DDCBC41C3CFB657F
          FC0D2FFA000080FFFFFFFFFFFFFFFFFFFFFFFFB89F8EFFFFFFFCFBFBFBF7F7F8
          F3F3F7F2F0F4EEEDF2EBE7EFE7E3EDE3E0000080657FFC001ADCE5D7D0E2D3CB
          E0CFC7DDCBC41C3CFB657FFC0D2FFA000080FFFFFFFFFFFFFFFFFFB89F8EFFFF
          FF4E2E1CA48B7AA48B7AA48B7AA48B7AA48B7AA48B7AA48B7A001ADC001ADCA4
          8B7AA48B7AA48B7AA48B7AE0CFC7A48B7A1C3CFB0D2FFA0D2FFAFFFFFFFFFFFF
          FFFFFFB89F8EFFFFFF4E2E1CD0BAADD0BAADD5C1B7DECEC5E6D9D3EBE3DEF3EE
          EAFAF8F7FFFFFFFFFFFFFFFFFFFFFFFFA48B7AE2D3CBA48B7A4E2E1CFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFB89F8EFFFFFF4E2E1CD0BAADD0BAADD0BAADD5C1B7
          DECEC5E6D9D3EBE3DEF3EEEAFAF8F7FFFFFFFFFFFFFFFFFFA48B7AE5D7D0A48B
          7A4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB89F8EFFFFFF4E2E1C4E2E1C4E
          2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C4E2E1C
          4E2E1CE6D9D4A48B7A4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB89F8EFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFEFCFAFAFAF6F4F7F2F0F4EEEDF2
          EBE7EFE7E3EDE3E0EAE1DAE7DDD7A48B7A4E2E1CFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFB89F8EFFFFFFCC8028CC8028CC8028CC8028CC8028CC8028CC8028CC80
          28CC8028CC8028F4EEEDF2EBE7C9AD9DBBA190A48B7AA48B7A4E2E1CFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFB89F8EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFCFEFCFAFAFAF6F4F8F3F3B89F8E4E2E1C4E2E1C4E2E1C4E2E
          1C4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB89F8EFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFBFBFBF7F7B89F8EEFE5DE
          EADED7E1D1C7D0BAAD4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB89F8EFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC
          FBFBB89F8EEADED7E1D1C7D0BAAD4E2E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFB89F8EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFB89F8EE1D1C7D0BAAD4E2E1CFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFB89F8EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB89F8ED0BAAD4E2E1CFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB89F8EB89F8EB89F8EB89F8EB8
          9F8EB89F8EB89F8EB89F8EB89F8EB89F8EB89F8EB89F8EB89F8EB89F8E4E2E1C
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = SpeedButtonSupprimerMatieresClick
      end
      object SpeedButtonCollerListeMatieres: TSpeedButton
        Left = 468
        Top = 140
        Width = 30
        Height = 26
        Hint = 
          'Ajouter la liste contenue dans le Presse-Papiers aux matières ex' +
          'istantes'
        Flat = True
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000011170000111700000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD79372782C08782C
          08782C08782C08782C08782C08782C08782C08782C08782C08782C08782C0878
          2C08FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          D79372F4E0D0B19786B19786B19786B19786B19786B19786B19786B19786B197
          86B19786B19786782C08FFFFFFFFFFFFB8DAEC0077B800458000458000458000
          4580004580004580D79372F6E5D8F4E0D0F3DAC9F0D5C1EFCFB8EDCAB1EBC5AA
          EABFA1E7BA9AE7B797E7B797B19786782C08FFFFFFFFFFFF0077B836ACDA0077
          BA0077BA0077BA0077BA0077BA0077BAD79372F8EAE0F6E5D8F4E0D0F3DAC9F0
          D5C1EFCFB8EDCAB1EBC5AAEABFA1E7BA9AE7B797B19786782C08FFFFFFFFFFFF
          0077B859C7E754C4E64FC0E34ABCE245B8E041B5DE3CB1DCD79372FAEFE7F8EA
          E0C6693DC6693DC6693DC6693DC6693DC6693DC6693DEABFA1E7BA9AB1978678
          2C08FFFFFFFFFFFF0077B862CEEB5BC9E956C5E751C1E54CBDE248BBE143B7E0
          D79372FCF4EFFAEFE7F8EAE0F6E5D8F4E0D0F3DAC9F0D5C1EFCFB8EDCAB1EBC5
          AAEABFA1B19786782C08FFFFFFFFFFFF0077B867D1ED62CEEB5BC9E956C5E751
          C1E54CBDE248BBE1D79372FFFCFBFCF4EFFAEFE7F8EAE0F6E5D8F4E0D0F3DAC9
          F0D5C1EFCFB8EDCAB1EBC5AAB19786782C08FFFFFFFFFFFF0077B86CD5EF67D1
          ED62CEEB5BC9E956C5E751C1E54CBDE2D79372FFFFFFFFFCFBC6693DC6693DC6
          693DC6693DC6693DC6693DC6693DF0D3BDEDCAB1B19786782C08FFFFFFFFFFFF
          0077B872D9F26CD5EF67D1ED62CEEB5BC9E956C5E751C1E5D79372FFFFFFFFFF
          FFFFFCFBFEF7F3FBF2EBFAEDE3F7E7DCF6E2D4F3DDCCF2D8C5F0D3BDB1978678
          2C08FFFFFFFFFFFF0077B877DDF372D9F26CD5EF67D1ED62CEEB5BC9E956C5E7
          D79372FFFFFFFFFFFFFFFFFFFFFCFBFEF7F3FBF2EBFAEDE3F7E7DCF6E2D4F3DD
          CCF2D8C5B19786782C08FFFFFFFFFFFF0077B87DE1F677DDF372D9F26CD5EF67
          D1ED62CEEB5BC9E9D79372FFFFFFFFFFFFC6693DC6693DC6693DC6693DC6693D
          C6693DC6693DF6E2D4F3DDCCB19786782C08FFFFFFFFFFFF0077B87DE1F67DE1
          F677DDF372D9F26CD5EF67D1ED62CEEBD79372FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFCFBFEF7F3FBF2EBFAEDE3F7E7DCB19786B19786782C08FFFFFFFFFFFF
          0077B87DE1F67DE1F67DE1F677DDF375DCF36ED7F069D3EED79372FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFBFEF7F3FBF2EBD79372782C08782C0878
          2C08FFFFFFFFFFFF0077B87DE1F67DE1F67DE1F67DE1F67AE0F475DCF36ED7F0
          D79372FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAF7D793
          72EFE5DED0BAAD782C08FFFFFFFFFFFF0077B87DE1F67DE1F67DE1F67DE1F67D
          E1F67AE0F475DCF3D79372FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFD79372D0BAAD782C08FFFFFFFFFFFFFFFFFF0077B87DE1F67DE1
          F67DE1F67DE1F67DE1F67DE1F67AE0F4D79372FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFD79372782C08FFFFFFFFFFFFFFFFFFFFFFFF
          0077B87DE1F67DE1F67DE1F67DE1F67DE1F67DE1F67DE1F6D79372D79372D793
          72D79372D79372D79372D79372D79372D79372D79372D79372FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0077B87DE1F67DE1F67DE1F62099D02099D02099D02099D0
          2099D02099D02099D02099D02099D064CFED5ECBEA59C7E70077BA004580FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0077B87DE1F67DE1F62099D000457700
          45770045770045770045770045770045770045770045772099D064CFED5ECBEA
          0077BA004580FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0077B87DE1F67DE1
          F60045777DE1F635ABDA35ABDA35ABDA35ABDA35ABDA35ABDA35ABDA0077BA00
          2B536CD5EF67D1ED0077BA004580FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0077B866B4E17DE1F67DE1F60045777DE1F653C2E6002B53002B53002B5353C2
          E60077BA002B5377DDF372D9F26CD5EF66B4E1004580FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFB8DAEC0077B80077B80077B80077B80045777DE1F67DE1F6
          7DE1F67DE1F60077BA002B530077BA0077BA0077BA0077BA0077BAB8DAECFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF004580004580004580004580004580FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = SpeedButtonCollerListeMatieresClick
      end
      object ListBoxMatieres: TListBox
        Left = 6
        Top = 3
        Width = 349
        Height = 139
        Hint = 'Liste des matières'
        Columns = 2
        ItemHeight = 18
        Sorted = True
        Style = lbOwnerDrawFixed
        TabOrder = 0
        OnClick = ListBoxMatieresClick
        OnDrawItem = ListBoxMatieresDrawItem
      end
      object Edit9: TEdit
        Left = 362
        Top = 24
        Width = 137
        Height = 21
        Hint = 'Champ pour ajouter un nouvel utilisateur'
        MaxLength = 100
        TabOrder = 1
        OnChange = Edit9Change
        OnEnter = Edit9Enter
      end
    end
  end
  object ColorDialog1: TColorDialog
    Ctl3D = True
    Left = 562
    Top = 227
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Fichiers texte (*.txt)|*.txt|Tous les fichiers (*.*)|*.*'
    Options = [ofHideReadOnly, ofPathMustExist, ofEnableSizing]
    Left = 528
    Top = 227
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'txt'
    Filter = 'Fichiers texte (*.txt)|*.txt|Tous les fichiers (*.*)|*.*'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofPathMustExist, ofEnableSizing]
    Left = 494
    Top = 226
  end
end
