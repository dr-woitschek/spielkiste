Clear-Host;
#
#Requires -RunAsAdministrator
#Requires -Version 5.0
#
function New-ItemProperty-V2
 {
  #
 <#
  .Synopsis
     Spass mit der PowerShell
  .DESCRIPTION
     Neue Werte in die Registry schreiben.
     Mit dem Parameter -Force wird auch der entsprechende Schlüssel\Unterschlüssel angelegt.
  .EXAMPLE
     #
     Binary
      [String]$meinPath  = $('HKLM:\SOFTWARE');
      [String]$meinName  = $('IchBinEinTest');
      [String]$meinType  = $('Binary');
      [Char[]]$meinValue = $('Binary Value');

      New-ItemProperty-V2 -Path $meinPath -Name $meinName -Type $meinType -Value $meinValue;
  .EXAMPLE
     #
     Binary
      [String]$meinPath  = $('HKLM:\SOFTWARE\Schlüssel\Unterschlüssel\und\Force');
      [String]$meinName  = $('IchBinEinTest');
      [String]$meinType  = $('Binary');
      [Char[]]$meinValue = $('Binary Value');

      New-ItemProperty-V2 -Path $meinPath -Name $meinName -Type $meinType -Value $meinValue -Force;
  .EXAMPLE
     #
     DWord
      [String]$meinPath  = $('HKLM:\SOFTWARE');
      [String]$meinName  = $('IchBinEinTest');
      [String]$meinType  = $('DWord');
      [String]$meinValue = $('1234567890'); # Dezimal-Wert
       # oder
      [String]$meinValue = $('0xffffffff'); # Hex-Wert

      New-ItemProperty-V2 -Path $meinPath -Name $meinName -Type $meinType -Value $meinValue;
  .EXAMPLE
     #
     ExpandString
      [String]$meinPath  = $('HKLM:\SOFTWARE');
      [String]$meinName  = $('IchBinEinTest');
      [String]$meinType  = $('ExpandString');
      [String]$meinValue = $('AAAABBBBCCCC');
       # oder
      [Array]$meinValue  = @('A' , 'B', 'C');

      New-ItemProperty-V2 -Path $meinPath -Name $meinName -Type $meinType -Value $meinValue;
  .EXAMPLE
     #
     MultiString
      [String]$meinPath  = $('HKLM:\SOFTWARE');
      [String]$meinName  = $('IchBinEinTest');
      [String]$meinType  = $('MultiString');
      [String]$meinValue = $('AAAABBBBCCCC');
       # oder
      [Array]$meinValue  = @('A' , 'B', 'C');

      New-ItemProperty-V2 -Path $meinPath -Name $meinName -Type $meinType -Value $meinValue;
  .EXAMPLE
     #
     QWord
      [String]$meinPath  = $('HKLM:\SOFTWARE');
      [String]$meinName  = $('IchBinEinTest');
      [String]$meinType  = $('MultiString');
      [String]$meinValue = $('1234567890'); # Dezimal-Wert
       # oder
      [String]$meinValue = $('0xffffffff'); # Hex-Wert

      New-ItemProperty-V2 -Path $meinPath -Name $meinName -Type $meinType -Value $meinValue;
  .PARAMETER Path
     Path definiert den Hive\Schlüsselname\Unterschlüsselname
  .PARAMETER Name
     Name definiert den Namen des Eintrags
  .PARAMETER Type
     Folgende Registry Typen können erstellt werden:
      Binary, DWord, ExpandString, MultiString, QWord und String
  .PARAMETER Force
     Bei der Macht von Grayskull!
  .PARAMETER Debug
     Debug Informationen ausgeben
  .PARAMETER Verbose
     Ausführliche Script Informationen anzeigen
  .INPUTS
     Path:  [String]<Hive>\<Schlüsselname\Unterschlüsselname>
     Name:  [String]<Name>
     Type:  <Binary|DWord|ExpandString|MultiString|QWord|String>
     Value: *.*
  .OUTPUTS
     Return <$True> / <$False>
  .NOTES
     Version:        0.3
     Creation Date:  10.02.2020
     Author:         Phillip und Robert
  .LINK
     1. https://github.com/dr-woitschek/spielkiste/tree/master/powershell/Modify-Registry
  #>
  #
  [CmdletBinding(SupportsShouldProcess = $True,
                 HelpUri               = 'https://github.com/dr-woitschek/spielkiste/tree/master/powershell/Modify-Registry',
                 ConfirmImpact         = 'High')]
  Param(
   [Parameter(Mandatory         = $True,
              ValueFromPipeline = $True,
              Position          = 1,
              HelpMessage       = 'Path definiert den Hive\Schlüsselname\Unterschlüsselname, oder Get-Help <Funktion> -Example')]
   [ValidateNotNullOrEmpty()]
   [ValidateNotNull()]
   [String]$Path,
   #
   [Parameter(Mandatory         = $True,
              ValueFromPipeline = $True,
              Position          = 2,
              HelpMessage       = 'Name definiert den Name xD, oder Get-Help <Funktion> -Example')]
   [ValidateNotNullOrEmpty()]
   [ValidateNotNull()]
   [String]$Name,
   #
   [Parameter(Mandatory         = $True,
              ValueFromPipeline = $True,
              Position          = 3,
              HelpMessage       = 'Wähle den Type <Binary|DWord|ExpandString|MultiString|QWord|String>, oder Get-Help <Funktion> -Example')]
   [ValidateNotNullOrEmpty()]
   [ValidateNotNull()]
   [ValidateSet('Binary' , 'DWord' , 'ExpandString' , 'MultiString' , 'QWord' , 'String')]
   [String]$Type,
   #
   [Parameter(Mandatory         = $True,
              ValueFromPipeline = $True,
              Position          = 4,
              HelpMessage       = 'Setze den Inhalt des Registry-Keys, oder Get-Help <Funktion> -Example')]
   [ValidateNotNullOrEmpty()]
   [ValidateNotNull()]
   $Value,
   #
   [Parameter(Mandatory         = $False ,
              ValueFromPipeline = $True  ,
              Position          = 5      ,
              HelpMessage       = 'Bei der Macht von Grayskull!')]
   [Switch]$Force
   #
  );
  #
  Begin
   {
    #
    # Hashtable mit den Optionen Debug und Verbose erstellen
    $AddOn = @{
               #
               Verbose = if($PSBoundParameters.Verbose -eq $True)
                          {
                           $True;
                          }
                           else
                          {
                           $False;
                          };
               #
               Debug   = if($PSBoundParameters.Debug -eq $True)
                          {
                           $True;
                          }
                           else
                          {
                           $False;
                          };
               #
              };
   #
   #if($PSBoundParameters.Verbose)
    if($PSBoundParameters.Debug)
     {
      #
      Write-Host -Object $('Variablen:');
      $PSBoundParameters.GetEnumerator();
      #
     };
    #
   }
  Process
   {
    #
    try
     {
      #
      if($Force)
       {
        #
        try
         {
          #
          New-Item -Confirm:$False      `
                   -Path $Path          `
                   -ErrorAction Stop    `
                   -Force               `
                   @AddOn               | Out-Null;
          #
         }
        catch
         {
          #
          if($_.InvocationInfo.ScriptLineNumber)
           {
            #
            [String]$ScriptLineNumber = $('[Line: '+$_.InvocationInfo.ScriptLineNumber+']');
            #
           };
          #
          if($_.CategoryInfo.Category)
           {
            #
            [String]$Category = $(' '+$_.CategoryInfo.Category);
            #
           };
          #
          if($_.Exception.Message)
           {
            #
            [String]$Message = $("`n"+' - Message: '+$_.Exception.Message);
            #
           };
          #
          if($_.TargetObject)
           {
            #
            [String]$TargetObject = $("`n"+' - TargetObject: '+$_.TargetObject);
            #
           };
          #
          Write-Host -ForegroundColor Red -Object $($ScriptLineNumber+$Category+$Message+$TargetObject+"`n");
          #
          Return $False;
          #
         };
        #
        New-ItemProperty -Confirm:$False      `
                         -Path $Path          `
                         -Name $Name          `
                         -Value $Value        `
                         -PropertyType $Type  `
                         -ErrorAction Stop    `
                         -Force               `
                         @AddOn               | Out-Null;
        #
       }
        else
       {
        #
        New-ItemProperty -Confirm:$False      `
                         -Path $Path          `
                         -Name $Name          `
                         -Value $Value        `
                         -PropertyType $Type  `
                         -ErrorAction Stop    `
                         @AddOn               | Out-Null;
        #
       };
      #
      Return $True;
      #
     }
    catch
     {
      #
      if($_.InvocationInfo.ScriptLineNumber)
       {
        #
        [String]$ScriptLineNumber = $('[Line: '+$_.InvocationInfo.ScriptLineNumber+']');
        #
       };
      #
      if($_.CategoryInfo.Category)
       {
        #
        [String]$Category = $(' '+$_.CategoryInfo.Category);
        #
       };
      #
      if($_.Exception.Message)
       {
        #
        [String]$Message = $("`n"+' - Message: '+$_.Exception.Message);
        #
       };
      #
      if($_.TargetObject)
       {
        #
        [String]$TargetObject = $("`n"+' - TargetObject: '+$_.TargetObject);
        #
       };
      #
      Write-Host -ForegroundColor Red -Object $($ScriptLineNumber+$Category+$Message+$TargetObject+"`n");
      #
      Return $False;
      #
     }
    finally
     {
      #
      $Error.Clear();
      #
     };
    #
   }
  End
   {
    #
    $Alle_Variablen = @(
                        #
                        'Path'              ,
                        'Name'              ,
                        'Type'              ,
                        'Value'             ,
                        #
                        'AddOn'             ,
                        #
                        'ScriptLineNumber'  ,
                        'Category'          ,
                        'Message'           ,
                        'TargetObject'      ,
                        #
                        'Alle_Variablen'
                        #
                       );
    #
    $Alle_Variablen |
     foreach `
      {
       #
       Remove-Variable -Name $_ -ErrorAction SilentlyContinue -Confirm:$False;
       #
      };
    #
    $Error.Clear();
    #
   };
  #
 };
#
Get-Help New-ItemProperty-V2 -Full;
#
