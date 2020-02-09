* Write-Debug wird ignoriert (Normalfall).
  * `$DebugPreference = 'SilentlyContinue';`

* Write-Debug bricht das Skript ab (nicht sinnvoll).
  * `$DebugPreference = 'Stop';`

* Write-Debug-Meldungen werden sichtbar.
  * `$DebugPreference = 'Continue';`

* Write-Debug wird zu einem Haltepunkt.
  * `$DebugPreference = 'Inquire';`