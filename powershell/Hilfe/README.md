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

##### Parameter ist NICHT optional ist (=True)
```
[Parameter()]
Mandatory = $True
```
---
##### Legt fest, dass der Parameter Argumente von der Pipeline akzeptiert
```
[Parameter()]
ValueFromPipeline = $True
```
---
##### Definiert, dass Argumente auch ohne Parameternamen übergeben werden können und legt die Nummer der Position für das Argument fest
```
[Parameter()]
Position = 0
```
---
##### kurze Hilfe für den Parameter
```
[Parameter()]
HelpMessage = 'Hilfe Text'
```
---
##### Legt fest, dass das Argument weder Null noch leer sein darf
```
[ValidateNotNullOrEmpty()]
```
---
##### Legt fest, dass der Wert des Argumentes nicht Null sein darf
```
[ValidateNotNull()]
```
---
##### Definiert für einen nicht optionalen Parameter die minimale und die maximale Anzahl von Argumenten, welche an den Parameter gebunden werden können
```
[ValidateCount(0,1)]
```
---
##### Definiert für einen nicht optionalen Parameter die minimale und die maximale Stringlänge
```
[ValidateLength(4,5)]
```
---
##### Legt fest, welche exakten Werte (Case insensitiv) ein Argument annehmen darf
```
[ValidateSet('Vorgabe_A' , 'Vorgabe_B')]
```
---
##### Definiert ein Skriptblock zur Validierung des Argumentes. Es wird ein Fehler generiert, wenn das Ergebnis nicht $True ist oder wenn der Code einen Laufzeitfehler erzeugt. Die automatische Variable $_ steht für das übergebene Argument
```
[ValidateScript( { $_ -lt 4 } )]
```
---
##### Legt die Unter- und Obergrenze für das Argument fest
```
[ValidateRange(0,10)]
```
---
##### Definiert mit Hilfe einer Regular Expression ein Muster, dem das Argument entsprechen muss
```
[ValidatePattern('[0-9][0-9][0-9]')]
```
---
##### Legt einen alternativen Namen für den Parameter fest
```
[Alias('AndererName')]
```
---
##### Parameter-Name
```
[String]$Variabe
```
