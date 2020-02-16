# Powershell Script Sammlung

meine PowerShell Spielkiste xD

### Meine Debug Funktion

`.\Debug-Info.ps1 [<CommonParameters>]`

> [Debugging](https://github.com/dr-woitschek/spielkiste/blob/master/powershell/Debugging/)

---

### PowerShell Debug Varianten:

> [Set-PSDebug -Trace <int>](https://github.com/dr-woitschek/spielkiste/blob/master/powershell/Debugging/debugging-Set-PSDebug.md)

> [$DebugPreference](https://github.com/dr-woitschek/spielkiste/blob/master/powershell/Debugging/debugging-DebugPreference.md)

---

### New-Dynamo-Parameter
> [New-Dynamo-Parameter](https://github.com/dr-woitschek/spielkiste/tree/master/powershell/Dynamische-Parameter)

---

### New-ItemProperty-V2
> [New-ItemProperty-V2](https://github.com/dr-woitschek/spielkiste/tree/master/powershell/Modify-Registry)

---

### Write-LogFile
> [Write-LogFile](https://github.com/dr-woitschek/spielkiste/tree/master/powershell/Write-LogFile)

---

### PowerShell Funktionen

- CmdletBinding()
- Param()

> [Funktionshilfe](https://github.com/dr-woitschek/spielkiste/tree/master/powershell/Funktionshilfe)

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
