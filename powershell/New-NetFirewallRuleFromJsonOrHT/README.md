# Windows Firewall Regeln

## Meine New-NetFirewallRuleFromJsonOrHT Funktion

`New-NetFirewallRuleFromJsonOrHT -Group <String> -Json <String> [-Remove] [-WhatIf] [-Confirm] [<CommonParameters>]`

`New-NetFirewallRuleFromJsonOrHT -Group <String> -HT <Hashtable> [-Remove] [-WhatIf] [-Confirm] [<CommonParameters>]`

---

`Get-Help New-NetFirewallRuleFromJsonOrHT -Full`

#### NAME
    New-NetFirewallRuleFromJsonOrHT

#### ÜBERSICHT
    Neue Firewall Regeln anhand eines Json Files oder eines Hashtables

#### BESCHREIBUNG
    Die Firewall Regeln werden anhand eines Json Files oder Hastable erzeugt.
    Beispiele sind über Get-Help <Function> -Examples zu sehen.

#### PARAMETER
    -Group <String>
        Definiert den Firewall Gruppennamen der verwendet werden soll
        
        Erforderlich?                true
        Position?                    named
        Standardwert                 
        Pipelineeingaben akzeptieren?true (ByValue)
        Platzhalterzeichen akzeptieren?false
        
    -Json <String>
        Definiert die Json-Datei die verarbeitet werden soll
        
        Erforderlich?                true
        Position?                    named
        Standardwert                 
        Pipelineeingaben akzeptieren?true (ByValue)
        Platzhalterzeichen akzeptieren?false
        
    -HT <Hashtable>
        Definiert das Hashtable das verarbeitet wird
        
        Erforderlich?                true
        Position?                    named
        Standardwert                 
        Pipelineeingaben akzeptieren?true (ByValue)
        Platzhalterzeichen akzeptieren?false
        
    -Remove [<SwitchParameter>]
        Definiert ob Firewall-Regeln anhand des Gruppennamens vorher gelöscht werden sollen
        
        Erforderlich?                false
        Position?                    named
        Standardwert                 False
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

    New-NetFirewallRuleFromJsonOrHT -HT $FirewallRegel -Group 'Beispiel';

#### -------------------------- BEISPIEL 2 --------------------------

    New-NetFirewallRuleFromJsonOrHT -HT $FirewallRegel -Group 'Beispiel' -Remove;

#### -------------------------- BEISPIEL 3 --------------------------

    New-NetFirewallRuleFromJsonOrHT -Json .\FirewallRegel.json -Group 'Beispiel';

---

## Beispiel Json-Datei:

```
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
```

---

## Beispiel Hashtable:

```
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
```
