Clear-Host;
#
#Requires -RunAsAdministrator
#Requires -Version 5.0
#
function Write-LogFile
 {
  #
 <#
  .Synopsis
     So will man Logfiles schreiben xD
  .DESCRIPTION
     Mit Farbe, Blockquotes, Vorzeichen usw.
     Beispiele sind über Get-Help <Function> -Examples zu sehen.
  .EXAMPLE
     #
     Write-LogFile -Object $('Hallo Welt xD')                  `
                   -Indent 0                                   `
                   -Color Magenta                              `
                   -Prefix Star                                `
                   -Filepath C:\PowerShell-Logfile.log         `
                   -TimeStampFormat 'yyyy-MM-dd HH:mm:ss.fff'  `
                   -Append;
  .EXAMPLE
     #
     Write-LogFile -Object $('Hallo Welt xD')                  `
                   -Indent 0                                   `
                   -Color Green                                `
                   -Prefix Null                                `
                   -Filepath C:\PowerShell-Logfile.log         `
                   -TimeStampFormat 'HH:mm:ss.fff';
  .PARAMETER Filepath
     Filepath definiert den Speicherort und Dateinamen des Logfiles
  .PARAMETER Color
     Color definiert die Farbe des Textes in der Konsole
  .PARAMETER Indent
     Indent definiert wieviel Zeichen der Text nach rechts wandert soll
  .PARAMETER Prefix
     Prefix definiert das Vorzeichen des Textes
  .PARAMETER Object
     Object definiert den Meldungstext
  .PARAMETER Append
     Meldungstexte an vorhandene Datei anhängen oder überschreiben
  .PARAMETER TimeStampFormat
     TimeStampFormat definiert den Zeitstempel im Logfile
     Mögliche Formate können der System.Globalization.DateTimeFormatInfo entnommen werden
      ([System.Globalization.DateTimeFormatInfo]::CurrentInfo).GetAllDateTimePatterns();
  .INPUTS
     $Filepath:        Mandatory = $False
     $Color:           Mandatory = $False
      <White> <Black> <DarkBlue> <DarkCyan> <DarkGray> <DarkGreen> <DarkMagenta> <DarkRed> <DarkYellow> <Blue> <Cyan> <Gray> <Green> <Magenta> <Red> <Yellow>
     $Indent:          Mandatory = $True
     $Prefix:          Mandatory = $True
      <Null>   Meldungstext
      <Arrow1> -> Meldungstext
      <Arrow2> --> Meldungstext
      <Star>   * Meldungstext
      <Dot>    . Meldungstext
      <Line>   - Meldungstext
     $Object:          Mandatory = $True
     $Append:          Mandatory = $False
     $TimeStampFormat: Mandatory = $False
      'yyyy-MM-dd HH:mm:ss.fff'
      'HH:mm:ss.fff'
       mehr Möglichkeiten -> ([System.Globalization.DateTimeFormatInfo]::CurrentInfo).GetAllDateTimePatterns();

  .OUTPUTS
     Formatierten Text, evtl. mit Farbe
  .NOTES
     Version:        0.3
     Creation Date:  16.02.2020
     Author:         Phillip und Robert
  .LINK
     1. https://github.com/dr-woitschek/spielkiste/tree/master/powershell/Write-LogFile
  #>
  #
  [CmdletBinding(SupportsShouldProcess = $True,
                 HelpUri               = 'https://github.com/dr-woitschek/spielkiste/tree/master/powershell/Write-LogFile',
                 ConfirmImpact         = 'High')]
  Param(
   [Parameter(Mandatory         = $False,
              ValueFromPipeline = $True,
              Position          = 1,
              HelpMessage       = '$Filepath definiert den Speicherort und Dateinamen des Logfiles, oder Get-Help <Funktion> -Example')]
   [ValidateNotNullOrEmpty()]
   [ValidateNotNull()]
   [String]$Filepath,
   #
   [Parameter(Mandatory         = $False,
              ValueFromPipeline = $True,
              Position          = 2,
              HelpMessage       = '$Color definiert die Farbe des Textes in der Konsole, oder Get-Help <Funktion> -Example')]
   [ValidateNotNullOrEmpty()]
   [ValidateNotNull()]
   [ValidateSet('White','Black','DarkBlue','DarkCyan','DarkGray','DarkGreen','DarkMagenta','DarkRed','DarkYellow','Blue','Cyan','Gray','Green','Magenta','Red','Yellow')]
   [String]$Color,
   #
   [Parameter(Mandatory         = $True,
              ValueFromPipeline = $True,
              Position          = 3,
              HelpMessage       = '$Indent definiert wieviel Zeichen der Text nach rechts wandert soll, oder Get-Help <Funktion> -Example')]
   [ValidateNotNullOrEmpty()]
   [ValidateNotNull()]
   [Int32]$Indent,
   #
   [Parameter(Mandatory         = $False,
              ValueFromPipeline = $True,
              Position          = 4,
              HelpMessage       = '$Prefix definiert das Vorzeichen des Textes, oder Get-Help <Funktion> -Example')]
   [ValidateNotNullOrEmpty()]
   [ValidateNotNull()]
   [ValidateSet('Null','Arrow1','Arrow2','Star','Dot','Line')]
   [String]$Prefix,
   #
   [Parameter(Mandatory         = $True,
              ValueFromPipeline = $True,
              Position          = 5,
              HelpMessage       = '$Object definiert den Meldungstext, oder Get-Help <Funktion> -Example')]
   [ValidateNotNullOrEmpty()]
   [ValidateNotNull()]
   [String]$Object,
   #
   [Parameter(Mandatory         = $False,
              ValueFromPipeline = $True,
              Position          = 6,
              HelpMessage       = 'Meldungstexte an vorhandene Datei anhängen, oder Get-Help <Funktion> -Example')]
   [Switch]$Append,
   #
   [Parameter(Mandatory         = $False,
              ValueFromPipeline = $True,
              Position          = 5,
              HelpMessage       = '$TimeStampFormat definiert den Zeitstempel im Logfile, oder Get-Help <Funktion> -Example')]
   [ValidateNotNullOrEmpty()]
   [ValidateNotNull()]
   [ValidateScript({ [DateTime]::Parse((Get-Date -Format $_)); try { $True; } catch { throw 'keine gültige Zeichenkette, z.B. HH:mm:ss.fff'; $False; }; })]
   [String]$TimeStampFormat
   #
  );
  #
  Begin
   {
    #
    if(!(Test-Path $Filepath))
     {
      #
      try
       {
        #
        New-Item $Filepath -ErrorAction Stop -Force | Out-Null;
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
        Break;
        #
       }
      finally
       {
        #
        $Error.Clear();
        #
       };
      #
     };
    #
    if(!$Color)
     {
      #
      [String]$Color = $('White');
      #
     };
    #
    if(!($TimeStampFormat))
     {
      #
      $TimeStampFormat = 'HH:mm:ss.fff';
      #
     };
    #
    # Hashtable mit den Optionen Debug, Verbose und Append erstellen
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
               Append  = if($PSBoundParameters.Append -eq $True)
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
   };
  Process
   {
    #
    $durchzaehlen  = 0;
    $Indent_Object = $Null;
    #
    While($durchzaehlen -lt $Indent)
     {
      #
      $Indent_Object = $($Indent_Object+' ');
      #
      $durchzaehlen++;
      #
     };
    #
    Switch($Prefix)
     {
      #
      'Null'   { $Prefix_Object = $('');     };
      'Line'   { $Prefix_Object = $('- ');   };
      'Arrow1' { $Prefix_Object = $('-> ');  };
      'Arrow2' { $Prefix_Object = $('--> '); };
      'Star'   { $Prefix_Object = $('* ');   };
      'Dot'    { $Prefix_Object = $('. ');   };
      #
     };
    #
    if($Object.Length -gt '100')
     {
      #
      Write-Host -ForegroundColor $Color `
                 -Object $($Indent_Object+$Prefix_Object+$Object.Substring(0,80)+'...');
      #
     }
      else
     {
      #
      Write-Host -ForegroundColor $Color `
                 -Object $($Indent_Object+$Prefix_Object+$Object);
      #
     };
    #
    if($Filepath)
     {
      #
      try
       {
        #
        Out-File -FilePath $($Filepath) `
                 -InputObject $($(Get-Date -Format $TimeStampFormat)+' | '+$Indent_Object+$Prefix_Object+$Object) `
                 @AddOn;
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
        Break;
        #
       };
      #
     };
    #
   };
  End
   {
    #
    $Alle_Variablen = @(
                        #
                        'AddOn'             ,
                        #
                        'Filepath'          ,
                        'Color'             ,
                        'Indent'            ,
                        'Indent_Object'     ,
                        'Prefix'            ,
                        'Prefix_Object'     ,
                        'Object'            ,
                        'durchzaehlen'      ,
                        'TimeStampFormat'   ,
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
Get-Help Write-LogFile -Full;
#
