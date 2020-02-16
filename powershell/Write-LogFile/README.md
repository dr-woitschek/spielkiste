# Modify-Registry

## Meine Write-LogFile Funktion

`Write-LogFile [<CommonParameters>]`

---

`Get-Help Write-LogFile -Full`

#### NAME
    Write-LogFile

#### ÜBERSICHT
    So will man Logfiles schreiben xD

#### BESCHREIBUNG
    Mit Farbe, Blockquotes, Vorzeichen usw.
    Beispiele sind über Get-Help <Function> -Examples zu sehen.

#### PARAMETER
    -Filepath <String>
        Filepath definiert den Speicherort und Dateinamen des Logfiles
        
        Erforderlich?                false
        Position?                    2
        Standardwert                 
        Pipelineeingaben akzeptieren?true (ByValue)
        Platzhalterzeichen akzeptieren?false
        
    -Color <String>
        Color definiert die Farbe des Textes in der Konsole
        
        Erforderlich?                false
        Position?                    3
        Standardwert                 
        Pipelineeingaben akzeptieren?true (ByValue)
        Platzhalterzeichen akzeptieren?false
        
    -Indent <Int32>
        Indent definiert wieviel Zeichen der Text nach rechts wandert soll
        
        Erforderlich?                true
        Position?                    4
        Standardwert                 0
        Pipelineeingaben akzeptieren?true (ByValue)
        Platzhalterzeichen akzeptieren?false
        
    -Prefix <String>
        Prefix definiert das Vorzeichen des Textes
        
        Erforderlich?                false
        Position?                    5
        Standardwert                 
        Pipelineeingaben akzeptieren?true (ByValue)
        Platzhalterzeichen akzeptieren?false
        
    -Object <String>
        Object definiert den Meldungstext
        
        Erforderlich?                true
        Position?                    6
        Standardwert                 
        Pipelineeingaben akzeptieren?true (ByValue)
        Platzhalterzeichen akzeptieren?false

    -Append [<SwitchParameter>]
        Meldungstexte an vorhandene Datei anhängen
        
        Erforderlich?                false
        Position?                    7
        Standardwert                 False
        Pipelineeingaben akzeptieren?true (ByValue)
        Platzhalterzeichen akzeptieren?false
        
    -TimeStampFormat <String>
        TimeStampFormat definiert den Zeitstempel im Logfile
        Mögliche Formate können der System.Globalization.DateTimeFormatInfo entnommen werden
         ([System.Globalization.DateTimeFormatInfo]::CurrentInfo).GetAllDateTimePatterns();
        
        Erforderlich?                false
        Position?                    6
        Standardwert                 
        Pipelineeingaben akzeptieren?true (ByValue)
        Platzhalterzeichen akzeptieren?false
        
    -WhatIf [<SwitchParameter>]
        
        Erforderlich?                false
        Position?                    named
        Standardwert                 
        Pipelineeingaben akzeptieren?false
        Platzhalterzeichen akzeptieren?false
        
    -Confirm [<SwitchParameter>]
        
        Erforderlich?                false
        Position?                    named
        Standardwert                 
        Pipelineeingaben akzeptieren?false
        Platzhalterzeichen akzeptieren?false

#### -------------------------- BEISPIEL 1 --------------------------

    Write-LogFile -Object $('Hallo Welt xD') -Indent 0 -Color Magenta -Prefix Star -Filepath C:\PowerShell-Logfile.log -TimeStampFormat 'yyyy-MM-dd HH:mm:ss.fff' -Append;

#### -------------------------- BEISPIEL 2 --------------------------

    Write-LogFile -Object $('Hallo Welt xD') -Indent 0 -Color Green -Prefix Null -Filepath C:\PowerShell-Logfile.log -TimeStampFormat 'HH:mm:ss.fff';

---
