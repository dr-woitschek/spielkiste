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