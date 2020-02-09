# Powershell Script Sammlung

## Debug Funktion

`.\Debug-Info.ps1 [<CommonParameters>]`
#### ![Screenshot PowerShell Ausgabe](https://github.com/dr-woitschek/spielkiste/blob/master/powershell/Debug-Info_PowerShell-Output.jpg)
---
### PowerShell Debug Varianten:

> [Set-PSDebug -Trace <int>](https://github.com/dr-woitschek/spielkiste/blob/master/powershell/Set-PSDebug.md)

> [$DebugPreference](https://github.com/dr-woitschek/spielkiste/blob/master/powershell/DebugPreference.md)

---
### PowerShell Funktionen
#### CmdletBinding()

##### Simulationsmodus (-WhatIf) und Sicherheitsabfrage (-Confirm) aktivieren
```
[CmdletBinding()]
SupportsShouldProcess = $True
```
---
##### Get-Help <function> -Online;
```
[CmdletBinding()]
HelpUri = 'https://www.google.de/'
```
---
##### Gefährlichkeit einer Funktion festlegen/Risiko-Level
* High   ... Sehr gefährlich
* Medium ... Durchschnittlich
* Low    ... Ungefährlich
* None   ... keine Informationen angegeben
> Parameter -Confirm:$False bzw. -Confirm:$True in kombination mit $PSCmdlet.ShouldProcess...
```
[CmdletBinding()]
ConfirmImpact = 'High'
```
---
#### Param()