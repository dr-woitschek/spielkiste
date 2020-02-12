# Modify-Registry

## Meine New-ItemProperty-V2 Funktion

`.\New-ItemProperty-V2.ps1 [<CommonParameters>]`

`Get-Help New-ItemProperty-V2 -Detailed`

#### NAME
    New-ItemProperty-V2

#### ÜBERSICHT
    Spass mit der PowerShell

#### BESCHREIBUNG
	Neue Werte in die Registry schreiben.
	Mit dem Parameter -Force wird auch der entsprechende Schlüssel\Unterschlüssel angelegt.

#### PARAMETER
    -Path <String>
	Path definiert den Hive\Schlüsselname\Unterschlüsselname
        
    -Name <String>
	Name definiert den Namen des Eintrags
        
    -Type <String>
	Folgende Registry Typen können erstellt werden:
	 Binary, DWord, ExpandString, MultiString, QWord und String
        
    -Value <Object>
        
    -Force [<SwitchParameter>]
	Bei der Macht von Grayskull!
        
    -WhatIf [<SwitchParameter>]
        
    -Confirm [<SwitchParameter>]

#### -------------------------- BEISPIEL 1 --------------------------

	```
    [String]$meinPath  = $('HKLM:\SOFTWARE');
    [String]$meinName  = $('IchBinEinTest');
    [String]$meinType  = $('Binary');
    [Char[]]$meinValue = $('Binary Value');

	New-ItemProperty-V2 -Path $meinPath -Name $meinName -Type $meinType -Value $meinValue;
	```

---
