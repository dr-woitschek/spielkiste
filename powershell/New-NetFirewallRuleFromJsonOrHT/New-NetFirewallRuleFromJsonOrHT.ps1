Clear-Host;
#
#Requires -RunAsAdministrator
#Requires -Version 5.0
#
function New-NetFirewallRuleFromJsonOrHT
 {
  #
 <#
  .Synopsis
     Neue Firewall Regeln anhand eines Json Files oder eines Hashtables
  .DESCRIPTION
     Die Firewall Regeln werden anhand eines Json Files oder Hastable erzeugt.
     Beispiele sind über Get-Help <Function> -Examples zu sehen.
  .EXAMPLE
     #
     New-NetFirewallRuleFromJsonOrHT -HT $FirewallRegel -Group 'Beispiel';
  .EXAMPLE
     #
     New-NetFirewallRuleFromJsonOrHT -HT $FirewallRegel -Group 'Beispiel' -Remove;
  .EXAMPLE
     #
     New-NetFirewallRuleFromJsonOrHT -Json .\FirewallRegel.json -Group 'Beispiel';
  .PARAMETER Group
     Definiert den Firewall Gruppennamen der verwendet werden soll
  .PARAMETER Json
     Definiert die Json-Datei die verarbeitet werden soll
  .PARAMETER HT
     Definiert das Hashtable das verarbeitet wird
  .PARAMETER Remove
     Definiert ob Firewall-Regeln anhand des Gruppennamens vorher gelöscht werden sollen
  .INPUTS
     Group:  [String]$Group

     Json:   [String]$Json
             Beispiel-Json-Datei:
              [
                  {
                      "Key":  "ICMP1",
                      "Value":  {
                                    "Description":  "Ping-Freigabe",
                                    "Action":  "Allow",
                                    "IcmpType":  "8",
                                    "Profile":  "Any",
                                    "Direction":  "Inbound",
                                    "LocalAddress":  "10.0.0.0/8 172.16.0.0/12 192.168.0.0/16",
                                    "RemoteAddress":  "10.0.0.0/8 172.16.0.0/12 192.168.0.0/16",
                                    "Protocol":  "ICMPv4",
                                    "Displayname":  "ICMP (Eingehend)"
                                },
                      "Name":  "ICMP1"
                  },
                  {
                      "Key":  "ICMP2",
                      "Value":  {
                                    "Description":  "Ping-Freigabe",
                                    "Action":  "Allow",
                                    "IcmpType":  "8",
                                    "Profile":  "Any",
                                    "Direction":  "Outbound",
                                    "LocalAddress":  "10.0.0.0/8 172.16.0.0/12 192.168.0.0/16",
                                    "RemoteAddress":  "10.0.0.0/8 172.16.0.0/12 192.168.0.0/16",
                                    "Protocol":  "ICMPv4",
                                    "Displayname":  "ICMP (Ausgehend)"
                                },
                      "Name":  "ICMP2"
                  }
              ]

     HT:     [Hashtable]$HT
             Beispiel-Hastable:
              [Hashtable]$FirewallRegel = @{
                 ICMP1   = @{
                             Displayname   = 'ICMP (Eingehend)';
                             Description   = 'Ping-Freigabe';
                             Protocol      = 'ICMPv4';
                             IcmpType      = '8';
                             LocalAddress  = @( '10.0.0.0/8'; '172.16.0.0/12'; '192.168.0.0/16'; );
                             RemoteAddress = @( '10.0.0.0/8'; '172.16.0.0/12'; '192.168.0.0/16'; );
                             Direction     = 'Inbound';
                             Action        = 'Allow';
                             Profile       = 'Any';
                            };
                 ICMP2   = @{
                             Displayname   = 'ICMP (Ausgehend)';
                             Description   = 'Ping-Freigabe';
                             Protocol      = 'ICMPv4';
                             IcmpType      = '8';
                             LocalAddress  = @( '10.0.0.0/8'; '172.16.0.0/12'; '192.168.0.0/16'; );
                             RemoteAddress = @( '10.0.0.0/8'; '172.16.0.0/12'; '192.168.0.0/16'; );
                             Direction     = 'Outbound';
                             Action        = 'Allow';
                             Profile       = 'Any';
                            };
                };

     Remove: [Switch]$Remove
  .OUTPUTS
     Firewall-Regel Ausgabe
      Beispiel:
       Name                  : {00000000-0000-0000-0000-000000000000}
       DisplayName           : Name
       Description           : Beschreibung
       DisplayGroup          : Gruppennamen
       Group                 : Gruppennamen
       Enabled               : True
       Profile               : Any
       Platform              : {}
       Direction             : Inbound
       Action                : Allow
       EdgeTraversalPolicy   : Block
       LooseSourceMapping    : False
       LocalOnlyMapping      : False
       Owner                 : 
       PrimaryStatus         : OK
       Status                : Die Regel wurde erfolgreich vom Speicher aus analysiert. (65536)
       EnforcementStatus     : NotApplicable
       PolicyStoreSource     : PersistentStore
       PolicyStoreSourceType : Local
  .NOTES
     Version:        0.1
     Creation Date:  18.02.2020
     Author:         Phillip und Robert
  .LINK
     1. https://github.com/dr-woitschek/spielkiste/tree/master/powershell/New-NetFirewallRuleFromJsonOrHT
  #>
  #
  [CmdletBinding(SupportsShouldProcess = $True,
                 HelpUri               = 'https://github.com/dr-woitschek/spielkiste/tree/master/powershell/New-NetFirewallRuleFromJsonOrHT',
                 ConfirmImpact         = 'High')]
  Param(
   [Parameter(Mandatory         = $True,
              ValueFromPipeline = $True,
              HelpMessage       = '$Group definiert den Firewall Gruppennamen der verwendet werden soll, oder Get-Help <Funktion> -Example')]
   [ValidateNotNullOrEmpty()]
   [ValidateNotNull()]
   [String]$Group,
   #
   [Parameter(Mandatory         = $True,
              ValueFromPipeline = $True,
              ParameterSetName  = 'Json',
              HelpMessage       = '$Json definiert die Json-Datei die verarbeitet werden soll, oder Get-Help <Funktion> -Example')]
   [ValidateNotNullOrEmpty()]
   [ValidateNotNull()]
   [ValidateScript({ Get-Content $_ -Raw | ConvertFrom-Json -ErrorAction Stop; })]
   [String]$Json,
   #
   [Parameter(Mandatory         = $True,
              ValueFromPipeline = $True,
              ParameterSetName  = 'Hashtable',
              HelpMessage       = '$HT definiert das Hashtable das verarbeitet wird, oder Get-Help <Funktion> -Example')]
   [ValidateNotNullOrEmpty()]
   [ValidateNotNull()]
   [Hashtable]$HT,
   #
   [Parameter(Mandatory         = $False,
              ValueFromPipeline = $True,
              HelpMessage       = '$Remove definiert ob Firewall-Regeln anhand des Gruppennamens vorher gelöscht werden sollen, oder Get-Help <Funktion> -Example')]
   [ValidateNotNullOrEmpty()]
   [ValidateNotNull()]
   [Switch]$Remove
   #
  );
  #
  Begin
   {
    #
    if($Json)
     {
      #
      $Import = 'Json';
     }
    elseif($HT)
     {
      #
      $Import = 'Hashtable';
      #
     }
    else
     {
      #
      Write-Host -Object $('Interner Fehler!') -ForegroundColor Red;
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
    if($Remove)
     {
      #
      Remove-NetFirewallRule -Group $Group -ErrorAction Continue;
      #
     };
    #
    switch($Import)
     {
      #
      'Json'      { Get-Content $Json -Raw -ErrorAction Stop |
                     ConvertFrom-Json -ErrorAction Stop; };
      #
      'Hashtable' { $FW = $HT; };
      #
     };
    #
    $FW.Values |
     foreach `
      {
       #
       try
        {
         #
         New-NetFirewallRule -Group $Group @_ -ErrorAction Stop;
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
   };
  End
   {
    #
    $Alle_Variablen = @(
                        #
                        'AddOn'             ,
                        #
                        'Group'             ,
                        'Json'              ,
                        'HT'                ,
                        'FW'                ,
                        'Remove'            ,
                        'Import'            ,
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
Get-Help New-NetFirewallRuleFromJsonOrHT -Full;
#
