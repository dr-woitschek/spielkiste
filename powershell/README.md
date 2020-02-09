# Powershell Script Sammlung

meine PowerShell Spielkiste xD

### Debug Funktion

`.\Debug-Info.ps1 [<CommonParameters>]`
#### ![Screenshot PowerShell Ausgabe](https://github.com/dr-woitschek/spielkiste/blob/master/powershell/Debug-Info_PowerShell-Output.jpg)

---

### PowerShell Debug Varianten:

> [Set-PSDebug -Trace <int>](https://github.com/dr-woitschek/spielkiste/blob/master/powershell/debugging-Set-PSDebug.md)
> [$DebugPreference](https://github.com/dr-woitschek/spielkiste/blob/master/powershell/debugging-DebugPreference.md)

---

### New-Dynamo-Parameter
> [New-Dynamo-Parameter](https://github.com/dr-woitschek/spielkiste/blob/master/powershell/New-Dynamo-Parameter.md)

---

### PowerShell Funktionen
#### CmdletBinding()
> [CmdletBinding Beispiele](https://github.com/dr-woitschek/spielkiste/blob/master/powershell/Function-CmdletBinding.md)

---

#### Param()
> [Param Beispiele](https://github.com/dr-woitschek/spielkiste/blob/master/powershell/Function-Param.md)

---

### PowerShell Variablen
Variable | Beschreibung
-------- | ------------
[int]$var       | 32-bit integer mit Vorzeichen
[long]$var      | 64-bit integer mit Vorzeichen
[string]$var    | string mit unicode characters
[char]$var      | A unicode 16-bit character
[byte]$var      | 8-bit Zahl
[bool]$var      | Boolean True/False
[decimal]$var   | 128-bit Dezimalzahl
[single]$var    | Single-precision 32-bit Fließkommazahl
[double]$var    | Double-precision 64-bit Fließkommazahl
[xml]$var       | Xml object
[array]$var     | Array
[hashtable]$var | Hashtabelle

---

### PowerShell Vergleichsoperatoren
Operator | Beschreibung
-------- | ------------
-eq | gleich
-ne | ungleich
-lt | kleiner
-le | kleiner oder gleich
-gt | größer
-ge | größer oder gleich
