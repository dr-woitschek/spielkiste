# Powershell Script Sammlung

## Debug

`.\Debug-Info.ps1 [<CommonParameters>]`
#### ![Screenshot PowerShell Ausgabe](https://github.com/dr-woitschek/spielkiste/blob/master/powershell/Debug-Info_PowerShell-Output.jpg)
---
### PowerShell Debug Varianten:

> Set-PSDebug -Trace <int>;

Aktiviert bzw. deaktiviert Skript-Debuggingfunktionen, legt die Ablaufverfolgungsebene fest und schaltet den Strict-Modus um.
* Gibt die Ablaufverfolgungsebene an:
  * 0 - Skriptablaufverfolgung deaktivieren
  * 1 - Skriptzeilen beim Ausführen verfolgen
  * 2 - Skriptzeilen, Variablenzuweisungen, Funktionsaufrufe und Skripts verfolgen

> $DebugPreference;

* Write-Debug wird ignoriert (Normalfall).
  * `$DebugPreference = 'SilentlyContinue';`

* Write-Debug bricht das Skript ab (nicht sinnvoll).
  * `$DebugPreference = 'Stop';`

* Write-Debug-Meldungen werden sichtbar.
  * `$DebugPreference = 'Continue';`

* Write-Debug wird zu einem Haltepunkt.
  * `$DebugPreference = 'Inquire';`
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