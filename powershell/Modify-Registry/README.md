# Modify-Registry

## Meine New-ItemProperty-V2 Funktion

`New-ItemProperty-V2 [<CommonParameters>]`

---

`Get-Help New-ItemProperty-V2 -Full`

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

    [String]$meinPath  = $('HKLM:\SOFTWARE');
    [String]$meinName  = $('IchBinEinTest');
    [String]$meinType  = $('Binary');
    [Char[]]$meinValue = $('Binary Value');
	New-ItemProperty-V2 -Path $meinPath -Name $meinName -Type $meinType -Value $meinValue;

#### -------------------------- BEISPIEL 2 --------------------------

	[String]$meinPath  = $('HKLM:\SOFTWARE\Schlüssel\Unterschlüssel\und\Force');
	[String]$meinName  = $('IchBinEinTest');
	[String]$meinType  = $('Binary');
	[Char[]]$meinValue = $('Binary Value');
	New-ItemProperty-V2 -Path $meinPath -Name $meinName -Type $meinType -Value $meinValue -Force;

#### -------------------------- BEISPIEL 3 --------------------------

	[String]$meinPath  = $('HKLM:\SOFTWARE');
    [String]$meinName  = $('IchBinEinTest');
    [String]$meinType  = $('DWord');
    [String]$meinValue = $('1234567890'); # Dezimal-Wert
     oder
    [String]$meinValue = $('0xffffffff'); # Hex-Wert
	New-ItemProperty-V2 -Path $meinPath -Name $meinName -Type $meinType -Value $meinValue;

#### -------------------------- BEISPIEL 4 --------------------------

	[String]$meinPath  = $('HKLM:\SOFTWARE');
    [String]$meinName  = $('IchBinEinTest');
    [String]$meinType  = $('ExpandString');
    [String]$meinValue = $('AAAABBBBCCCC');
     oder
    [Array]$meinValue  = @('A' , 'B', 'C');
	New-ItemProperty-V2 -Path $meinPath -Name $meinName -Type $meinType -Value $meinValue;

#### -------------------------- BEISPIEL 5 --------------------------

    [String]$meinPath  = $('HKLM:\SOFTWARE');
    [String]$meinName  = $('IchBinEinTest');
    [String]$meinType  = $('MultiString');
    [String]$meinValue = $('AAAABBBBCCCC');
     oder
    [Array]$meinValue  = @('A' , 'B', 'C');
	New-ItemProperty-V2 -Path $meinPath -Name $meinName -Type $meinType -Value $meinValue;

#### -------------------------- BEISPIEL 6 --------------------------

    [String]$meinPath  = $('HKLM:\SOFTWARE');
    [String]$meinName  = $('IchBinEinTest');
    [String]$meinType  = $('MultiString');
    [String]$meinValue = $('1234567890'); # Dezimal-Wert
     oder
    [String]$meinValue = $('0xffffffff'); # Hex-Wert
	New-ItemProperty-V2 -Path $meinPath -Name $meinName -Type $meinType -Value $meinValue;

---
