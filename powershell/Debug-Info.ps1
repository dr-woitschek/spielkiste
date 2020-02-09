Clear-Host;
#
#Requires -RunAsAdministrator
#Requires -version 5.0
#
function Debug-Info
 {
  #
 <#
  .Synopsis
     Debug Ausgabe des aktuellen Scriptes
  .DESCRIPTION
     Der Funktionsaufruf muss mit dem Parameter -Info aufgerufen werden.
     Hierfür gibt es mehrere Varianten:
      Debug-Info -Info 'ScriptLineNumber' gibt als Rückgabewert die Zeilennummer als <Int> zurück.
      Debug-Info -Info 'ScriptName' gibt als Rückgabewert den Scriptnamen als <String> zurück.
      Debug-Info -Info 'InvocationName' gibt als Rückgabewert den Funktionsnamen als <String> zurück.
  .EXAMPLE
     Debug-Info -Info ScriptLineNumber
     Return <Zeilennummer>
  .EXAMPLE
     Debug-Info -Info ScriptName
     Return <Dateiname>
  .EXAMPLE
     Debug-Info -Info InvocationName
     Return <Funktionsname>
  .EXAMPLE
     In Script-Beispiel:
      Write-Debug -Message ("`n Debug Information aus Zeile "+$(Debug-Info -Info ScriptLineNumber));
  .PARAMETER Info
     Option 1: ScriptLineNumber
     Option 2: ScriptName
     Option 3: InvocationName
  .INPUTS
     Parameter -Info <ScriptLineNumber|ScriptName|InvocationName>
  .OUTPUTS
     Parameter -Info ScriptLineNumber
      Return der Zeilennummer

     Parameter -Info ScriptName
      Return des Dateinamens

     Parameter -Info InvocationName
      Return des Funktionsnames
  .NOTES
     Version:        0.1
     Creation Date:  30.01.2020
     Author:         Robert
  .LINK
     1. http://www.gidf.de/
     2. https://yourpart.eu/p/spielhaus
  #>
  #
  [CmdletBinding(SupportsShouldProcess = $False , HelpUri = 'http://www.gidf.de/' , ConfirmImpact = 'None')]
  Param(
   [Parameter(Mandatory = $True,
              ValueFromPipeline = $True,
              Position = 0,
              HelpMessage = 'Wähle die Art der Debug-Information <ScriptLineNumber|ScriptName|InvocationName>! ... oder Get-Help Debug-Info -Full;')]
   [ValidateNotNullOrEmpty()]
   [ValidateSet('ScriptLineNumber','ScriptName','InvocationName')]
   [String]$Info
  )
  #
  Begin
   {
    #
   }
  Process
   {
    #
    switch($Info)
     {
      #
      'ScriptLineNumber' { Return [Int]$MyInvocation.ScriptLineNumber;  };
      'ScriptName'       { Return [String]$MyInvocation.ScriptName;     };
      'InvocationName'   { Return [String]$MyInvocation.InvocationName; };
      Default            { Return $False;                               };
      #
     };
    #
    Remove-Variable -Name 'Info' -ErrorAction SilentlyContinue;
    #
   }
  End
   {
    #
   };
  #
 };
#
Get-Help Debug-Info -Full;
#
Write-Host -Object $('');
Write-Host -Object $('ScriptLineNumber: '''+$(Debug-Info -Info ScriptLineNumber;)+'''';);
Write-Host -Object $('Scriptname:       '''+$(Debug-Info -Info ScriptName;)+'''';);
Write-Host -Object $('InvocationName:   '''+$(Debug-Info -Info InvocationName;)+'''';);
#
