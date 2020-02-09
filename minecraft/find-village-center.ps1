#requires -version 5.0
#
<#
.Synopsis
   Minecraft Bedrock Edition - Berechnen des Dorf-Zentrums.
.DESCRIPTION
   Der Funktionsaufruf muss mit den Koordinaten X0, X1, Y0, Y1, Z0 und Z1.
   Die Koordinaten können aus dem NBT Editor ausgelesen werden.
   Als Ergebnis wird der Dorfmittelpunkt zurückgegeben.
.EXAMPLE
   #
   # NBT coordinate X
   [int]$NBT_coordinate_X0 = $('10');
   [int]$NBT_coordinate_X1 = $('130');
   #
   # NBT coordinate Y
   [int]$NBT_coordinate_Y0 = $('77');
   [int]$NBT_coordinate_Y1 = $('101');
   #
   # NBT coordinate Z
   [int]$NBT_coordinate_Z0 = $('-31');
   [int]$NBT_coordinate_Z1 = $('33');
   #
   Script.ps1 -NBT_coordinate_X0 $NBT_coordinate_X0 `
              -NBT_coordinate_X1 $NBT_coordinate_X1 `
              -NBT_coordinate_Y0 $NBT_coordinate_Y0 `
              -NBT_coordinate_Y1 $NBT_coordinate_Y1 `
              -NBT_coordinate_Z0 $NBT_coordinate_Z0 `
              -NBT_coordinate_Z1 $NBT_coordinate_Z1;
   #
.EXAMPLE
   #
   # NBT coordinate X
   [int]$NBT_coordinate_X0 = $('300');
   [int]$NBT_coordinate_X1 = $('364');
   #
   # NBT coordinate Y
   [int]$NBT_coordinate_Y0 = $('60');
   [int]$NBT_coordinate_Y1 = $('88');
   #
   # NBT coordinate Z
   [int]$NBT_coordinate_Z0 = $('-66');
   [int]$NBT_coordinate_Z1 = $('-2');
   #
   Script.ps1 -NBT_coordinate_X0 $NBT_coordinate_X0 `
              -NBT_coordinate_X1 $NBT_coordinate_X1 `
              -NBT_coordinate_Y0 $NBT_coordinate_Y0 `
              -NBT_coordinate_Y1 $NBT_coordinate_Y1 `
              -NBT_coordinate_Z0 $NBT_coordinate_Z0 `
              -NBT_coordinate_Z1 $NBT_coordinate_Z1;
   #
.EXAMPLE
   #
   # NBT coordinate X
   [int]$NBT_coordinate_X0 = $('274');
   [int]$NBT_coordinate_X1 = $('338');
   #
   # NBT coordinate Y
   [int]$NBT_coordinate_Y0 = $('52');
   [int]$NBT_coordinate_Y1 = $('76');
   #
   # NBT coordinate Z
   [int]$NBT_coordinate_Z0 = $('-72');
   [int]$NBT_coordinate_Z1 = $('-8');
   #
   Script.ps1 -NBT_coordinate_X0 $NBT_coordinate_X0 `
              -NBT_coordinate_X1 $NBT_coordinate_X1 `
              -NBT_coordinate_Y0 $NBT_coordinate_Y0 `
              -NBT_coordinate_Y1 $NBT_coordinate_Y1 `
              -NBT_coordinate_Z0 $NBT_coordinate_Z0 `
              -NBT_coordinate_Z1 $NBT_coordinate_Z1;
   #
.PARAMETER NBT_coordinate_X0
   [Int]
.PARAMETER NBT_coordinate_X1
   [Int]
.PARAMETER NBT_coordinate_Y0
   [Int]
.PARAMETER NBT_coordinate_Y1
   [Int]
.PARAMETER NBT_coordinate_Z0
   [Int]
.PARAMETER NBT_coordinate_Z1
   [Int]
.INPUTS
   [int]$NBT_coordinate_X0
   [int]$NBT_coordinate_X1
   
   [int]$NBT_coordinate_Y0
   [int]$NBT_coordinate_Y1
   
   [int]$NBT_coordinate_Z0
   [int]$NBT_coordinate_Z1
.OUTPUTS
   Return /setblock X Y Z Glass
.NOTES
   Version:        0.1
   Creation Date:  09.02.2020
   Author:         Robert
.LINK
   1. http://www.gidf.de/
   2. https://minecraft-de.gamepedia.com/Dorfbewohner
   3. https://minecraft-de.gamepedia.com/Eisengolem
   4. https://technik-de.gamepedia.com/Eisengolemfarm_(Mechanik)
#>
#
[CmdletBinding(SupportsShouldProcess = $False , HelpUri = 'http://www.gidf.de/' , ConfirmImpact = 'None')]
Param(
 [Parameter(Mandatory = $True,
            ValueFromPipeline = $True,
            Position = 0,
            HelpMessage = 'Gib eine die X0 Koordinate ein oder der Get-Help <Funktion> -Full;')]
 [ValidateNotNullOrEmpty()]
 [Int]$NBT_coordinate_X0,
 #
 [Parameter(Mandatory = $True,
            ValueFromPipeline = $True,
            Position = 1,
            HelpMessage = 'Gib eine die X1 Koordinate ein oder der Get-Help <Funktion> -Full;')]
 [ValidateNotNullOrEmpty()]
 [Int]$NBT_coordinate_X1,
 #
 [Parameter(Mandatory = $True,
            ValueFromPipeline = $True,
            Position = 2,
            HelpMessage = 'Gib eine die Y0 Koordinate ein oder der Get-Help <Funktion> -Full;')]
 [ValidateNotNullOrEmpty()]
 [Int]$NBT_coordinate_Y0,
 #
 [Parameter(Mandatory = $True,
            ValueFromPipeline = $True,
            Position = 3,
            HelpMessage = 'Gib eine die Y1 Koordinate ein oder der Get-Help <Funktion> -Full;')]
 [ValidateNotNullOrEmpty()]
 [Int]$NBT_coordinate_Y1,
 #
 [Parameter(Mandatory = $True,
            ValueFromPipeline = $True,
            Position = 4,
            HelpMessage = 'Gib eine die Z0 Koordinate ein oder der Get-Help <Funktion> -Full;')]
 [ValidateNotNullOrEmpty()]
 [Int]$NBT_coordinate_Z0,
 #
 [Parameter(Mandatory = $True,
            ValueFromPipeline = $True,
            Position = 5,
            HelpMessage = 'Gib eine die X0 Koordinate ein oder der Get-Help <Funktion> -Full;')]
 [ValidateNotNullOrEmpty()]
 [Int]$NBT_coordinate_Z1
 #
 )
#
Clear-Host;
#
function New-Subtraction
 {
  #
 <#
  .Synopsis
     Zwei Zahlen subtrahieren
  .DESCRIPTION
     Der Funktionsaufruf muss mit dem Parameter -Zahl1 und -Zahl2 aufgerufen werden.
  .EXAMPLE
     New-Subtraction -Zahl1 $Zahl1 -Zahl2 $Zahl2;
     Return [Int]$Zahl
  .PARAMETER Zahl1
     [Int]
  .PARAMETER Zahl1
     [Int]
  .INPUTS
     [Int]$Zahl1
     [Int]$Zahl2
  .OUTPUTS
     Return [Int]$Zahl
  .NOTES
     Version:        0.1
     Creation Date:  09.02.2020
     Author:         Robert
  .LINK
     1. http://www.gidf.de/
  #>
  #
  [CmdletBinding(SupportsShouldProcess = $False , HelpUri = 'http://www.gidf.de/' , ConfirmImpact = 'None')]
  Param(
   [Parameter(Mandatory = $True,
              ValueFromPipeline = $True,
              Position = 0,
              HelpMessage = 'Gib eine Zahl an oder Get-Help <Funktion> -Full;')]
   [ValidateNotNullOrEmpty()]
   [Int]$Zahl1,
    #
   [Parameter(Mandatory = $True,
              ValueFromPipeline = $True,
              Position = 1,
              HelpMessage = 'Gib eine weitere Zahl an oder Get-Help <Funktion> -Full;')]
   [ValidateNotNullOrEmpty()]
   [Int]$Zahl2
    #
   )
  Process
   {
    #
    $subtrahieren_der_Zahlen = $Zahl1 - $Zahl2;
    #
    if($subtrahieren_der_Zahlen -lt 0)
     {
      #
      $Zahl_kleiner_als = ($Zahl1 - $Zahl2) * -1;
      #
      Return $Zahl_kleiner_als;
      #
     }
      else
     {
      #
      $Zahl_groesser_als = ($Zahl1 - $Zahl2);
      #
      Return $Zahl_groesser_als;
      #
     };
    #
    $Alle_Variablen = @(
                        #
                        'Zahl1'                   ,
                        'Zahl2'                   ,
                        'subtrahieren_der_Zahlen' ,
                        'Zahl_kleiner_als'        , 
                        'Zahl_groesser_als'       ,
                        #
                        'Alle_Variablen'
                        #
                       );
    #
    $Alle_Variablen |
     foreach `
      {
       #
       Remove-Variable -Name $_ -ErrorAction SilentlyContinue;
       #
      };
    #
   };
  End
   {
    #
   };
  #
 };
#
# Get-Help New-Subtraction -Full
#
[int]$NBT_coordinate_X = New-Subtraction -Zahl1 $NBT_coordinate_X0 -Zahl2 $NBT_coordinate_X1;
[int]$NBT_coordinate_Y = New-Subtraction -Zahl1 $NBT_coordinate_Y0 -Zahl2 $NBT_coordinate_Y1;
[int]$NBT_coordinate_Z = New-Subtraction -Zahl1 $NBT_coordinate_Z0 -Zahl2 $NBT_coordinate_Z1;
#
[int]$Zentrum_X = $NBT_coordinate_X0 + ($NBT_coordinate_X / 2);
[int]$Zentrum_Y = $NBT_coordinate_Y0 + ($NBT_coordinate_Y / 2);
[int]$Zentrum_Z = $NBT_coordinate_Z0 + ($NBT_coordinate_Z / 2);
#
Write-Host -Object $('');
Write-Host -Object $('Minecraft Bedrock Edition - Dorfzentrum');
Write-Host -Object $('');
Write-Host -Object $(' - Groesse:  x = '+$NBT_coordinate_X);
Write-Host -Object $('             y = '+$NBT_coordinate_Y);
Write-Host -Object $('             z = '+$NBT_coordinate_Z);
Write-Host -Object $('');
Write-Host -Object $(' - Zentrum:  x = '+$Zentrum_X);
Write-Host -Object $('             y = '+$Zentrum_Y);
Write-Host -Object $('             z = '+$Zentrum_Z);
Write-Host -Object $('');
Write-Host -Object $(' - Befehl:   /setblock '+$Zentrum_X+' '+$Zentrum_Y+' '+$Zentrum_Y+' Glass 0');
Write-Host -Object $('');
#
$Alle_Variablen = @(
                    #
                    'NBT_coordinate_X'   ,
                    'NBT_coordinate_Y'   ,
                    'NBT_coordinate_Z'   ,
                    #
                    'NBT_coordinate_X0'  ,
                    'NBT_coordinate_X1'  ,
                    #
                    'NBT_coordinate_Y0'  ,
                    'NBT_coordinate_Y1'  ,
                    #
                    'NBT_coordinate_Z0'  ,
                    'NBT_coordinate_Z1'  ,
                    #
                    'Zentrum_X'          ,
                    'Zentrum_Y'          ,
                    'Zentrum_Z'          ,
                    #
                    'Alle_Variablen'
                    #
                   );
#
$Alle_Variablen |
 foreach `
  {
   #
   Remove-Variable -Name $_ -ErrorAction SilentlyContinue;
   #
  };
#
