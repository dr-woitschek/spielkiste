#Requires -RunAsAdministrator
#Requires -version 5.0
#
[CmdletBinding(SupportsShouldProcess = $False , HelpUri = 'http://www.gidf.de/' , ConfirmImpact = 'None')]
Param(
 [Parameter(Mandatory = $True,
            ValueFromPipeline = $True,
            Position = 0,
            HelpMessage = 'Gib eine Versionsnummer an')]
 [ValidateNotNullOrEmpty()]
 [String]$Version,
 #
 [Parameter(Mandatory = $True,
            ValueFromPipeline = $True,
            Position = 1,
            HelpMessage = 'Gib eine Developernamen an')]
 [ValidateNotNullOrEmpty()]
 [String]$Developer,
 #
 [Parameter(Mandatory = $True,
            ValueFromPipeline = $True,
            Position = 2,
            HelpMessage = 'Gib den Kurznamen des Behavior Packs an')]
 [ValidateNotNullOrEmpty()]
 [String]$BehaviorPackRenameStr,
 #
 [Parameter(Mandatory = $True,
            ValueFromPipeline = $True,
            Position = 3,
            HelpMessage = 'Gib den Kurznamen des Resource Packs an')]
 [ValidateNotNullOrEmpty()]
 [String]$ResourcePackRenameStr
 #
 )
#
<#
.Synopsis
   Erstellt eine '.mcaddon' und '.mcworld' Datei für Minecraft Bedrock Edition
.DESCRIPTION
   Der Funktionsaufruf müssen die Variablen gesetzt werden.
.EXAMPLE
   .\Zusammenbauen.ps1
.PARAMETER
   [String]$Version
   [String]$Developer
   [String]$BehaviorPackRenameStr
   [String]$ResourcePackRenameStr
.INPUTS
   siehe .PARAMETER
.OUTPUTS
   <Dateiname>.mcaddon-Datei
   <Dateiname>.mcworld-Datei
   #
   Errorlevel:
    -  0: Script erfolgreich ausgefuehrt
    -  1: Allgemeiner Script Fehler
    -  2: Variable nicht gesetzt
    -  3: Fehler in der Ordnerstruktur
    -  4: Fehler beim bereinigen des Ordners
    -  5: Fehler beim löschen der Datei
    -  6: Fehler beim erstellen der ZIP Datei
    -  7: Fehler beim laden von System.IO.Compression
    -  8: Fehler beim erstellen der AddOn Datei
    -  9: Fehler beim kopieren der World Ordner
    - 10: Fehler beim erstellen der World-Datei
    - 11: Fehler beim bereinigen der Datei/Ordner
.NOTES
   Version:        0.1
   Creation Date:  09.02.2020
   Author:         Robert
.LINK
   1. http://www.gidf.de/
#>
#
Clear-Host;
#
#[String]$Version                 = $('0.0.1');
#[String]$Developer               = $('Dr Woitschek');
#[String]$BehaviorPackRenameStr   = $('Dr');
#[String]$ResourcePackRenameStr   = $('Dr');
#                               
[String]$ScriptPath              = Split-Path -Parent $MyInvocation.MyCommand.Definition;
[String]$WorkingDir              = $($ScriptPath);
[String]$TMP                     = $($WorkingDir+'\TMP');
#
[String]$AddOn_WorkingDir        = $($WorkingDir+'\AddOn');
[String]$AddOn_Behavior_Pack     = $($AddOn_WorkingDir+'\Behavior Pack');
[String]$AddOn_Resource_Pack     = $($AddOn_WorkingDir+'\Resources Pack');
#                        
[String]$AddOn_Behavior_Pack_ZIP = $($TMP+'\Behavior Pack.zip');
[String]$AddOn_Resource_Pack_ZIP = $($TMP+'\Resources Pack.zip');
#                        
[String]$AddOn_File              = $($WorkingDir+'\'+$Developer+'.'+$Version+'.mcaddon');
[String]$AddOn_File_TMP          = $($AddOn_File.Replace('.mcaddon','.zip'));
#                        
[String]$World_WorkingDir        = $($WorkingDir+'\World');
[String]$World_Behavior_Pack     = $($World_WorkingDir+'\behavior_packs');
[String]$World_Resource_Pack     = $($World_WorkingDir+'\resource_packs');
#                        
[String]$World_File              = $($WorkingDir+'\'+$Developer+'.'+$Version+'.mcworld');
[String]$World_File_TMP          = $($World_File.Replace('.mcworld','.zip'));
#
if(!($Version))
 {
  Write-Host -Object $('Variable '''+$Version+''' nicht gesetzt');
  Write-Host -Object $('Exit 2');
  Break;
 };
#
if(!($Developer))
 {
  Write-Host -Object $('Variable '''+$Developer+''' nicht gesetzt');
  Exit 2;
 };
#
if(!($BehaviorPackRenameStr))
 {
  Write-Host -Object $('Variable '''+$BehaviorPackRenameStr+''' nicht gesetzt');
  Exit 2;
 };
#
if(!($ResourcePackRenameStr))
 {
  Write-Host -Object $('Variable '''+$ResourcePackRenameStr+''' nicht gesetzt');
  Exit 2;
 };
#
# Ordner die vorhanden sein müssen
[Array]$FolderExistArray = @(
                             #
                             $TMP                  ,
                             #
                             $AddOn_WorkingDir     ,
                             $AddOn_Behavior_Pack  ,
                             $AddOn_Resource_Pack  ,
                             #
                             $World_WorkingDir     ,
                             $World_Behavior_Pack  ,
                             $World_Resource_Pack
                             #
                            );
#
# Ordner die bereinigt werden
[Array]$CleanUpFoldersArray = @(
                                #
                                $World_Behavior_Pack  ,
                                $World_Resource_Pack  ,
                                $TMP
                                #
                               );
#
# Dateien die gelöscht werden
[Array]$CleanUpFilesArray   = @(
                                #
                                $AddOn_Behavior_Pack_ZIP  ,
                                $AddOn_Resource_Pack_ZIP  ,
                                $AddOn_File               ,
                                $AddOn_File_TMP           ,
                                $World_File               ,
                                $World_File_TMP
                                #
                               );
#
# ZIP Dateien für die AddOn-Datei
[Array]$AddOnsZIPArray = @(
                           #
                           (  $AddOn_Behavior_Pack  ,  $AddOn_Behavior_Pack_ZIP  )  ,
                           (  $AddOn_Resource_Pack  ,  $AddOn_Resource_Pack_ZIP  )  ,
                           (  $TMP                  ,  $AddOn_File_TMP           )
                           #
                          );
#
[Array]$WorldCopyArray = @(
                           #  Quelle                |  Ziel                  |  Text-String      |  Rename-String
                           (  $AddOn_Behavior_Pack  ,  $World_Behavior_Pack  ,  'Behavior Pack'  ,  $BehaviorPackRenameStr  )  ,
                           (  $AddOn_Resource_Pack  ,  $World_Resource_Pack  ,  'Resource Pack'  ,  $ResourcePackRenameStr  )
                           #
                          );
#
Write-Host -Object $('');
Write-Host -Object $('Minecraft Bedrock Edition');
Write-Host -Object $(' -> .mcaddon');
Write-Host -Object $(' -> .mcworld');
Write-Host -Object $('');
Write-Host -Object $('');
#
Write-Host -Object $('Informationen:');
Write-Host -Object $(' * Entwickler:             '''+$Developer+'''');
Write-Host -Object $(' * Version:                '''+$Version+'''');
Write-Host -Object $('');
Write-Host -Object $(' * Arbeitsverzeichnis:     '''+$WorkingDir+'''');
Write-Host -Object $(' * Temporäres Verzeichnis: '''+$TMP.Replace($WorkingDir,'...')+'''');
Write-Host -Object $('');
Write-Host -Object $(' * AddOn-Verzeichnis:      '''+$AddOn_WorkingDir.Replace($WorkingDir,'...')+'''');
Write-Host -Object $('   * Behavior Pack:        '''+$AddOn_Behavior_Pack.Replace($WorkingDir,'...')+'''');
Write-Host -Object $('   * Resource Pack:        '''+$AddOn_Resource_Pack.Replace($WorkingDir,'...')+'''');
Write-Host -Object $('   * Datei:                '''+$AddOn_File.Replace($WorkingDir,'...')+'''');
Write-Host -Object $('');
Write-Host -Object $(' * World-Verzeichnis:      '''+$World_WorkingDir.Replace($WorkingDir,'...')+'''');
Write-Host -Object $('   * Behavior Pack:        '''+$World_Behavior_Pack.Replace($WorkingDir,'...')+'''');
Write-Host -Object $('   * Resource Pack:        '''+$World_Resource_Pack.Replace($WorkingDir,'...')+'''');
Write-Host -Object $('   * Datei:                '''+$World_File.Replace($WorkingDir,'...')+'''');
Write-Host -Object $('');
#
Write-Host -Object $('');
#
Write-Host -Object $('Überprüfe Ordnerstruktur');
#
foreach($FolderExist in $FolderExistArray)
 {
  #
  Write-Host -Object $(' -> Prüfe '''+$FolderExist.Replace($WorkingDir,'...')+'''');
  #
  if(Test-Path $FolderExist)
   {
    #
    Write-Host -Object $('    -> Vorhanden!');
    #
   }
    else
   {
    #
    Write-Host -Object $('    -> Fehler in der Ordnerstruktur!');
    Exit 3;
    #
   };
  #
  Write-Host -Object ('');
  #
 };
#
Write-Host -Object ('');
#
Write-Host -Object $('Bereinige Ordner');
#
foreach($CleanUpFolder in $CleanUpFoldersArray)
 {
  #
  Write-Host -Object $(' -> Prüfe '''+$CleanUpFolder.Replace($WorkingDir,'...')+'''');
  #
  try
   {
    #
    Remove-Item -Path $($CleanUpFolder+'\*') -ErrorAction Stop -Recurse -Force;
    #
    Write-Host -Object $('    -> Bereinigt!');
    #
   }
  catch
   {
    #
    Write-Host -Object $('    -> Fehler beim bereinigen des Ordners!');
    Exit 4;
    #
   };
  #
  Write-Host -Object ('');
  #
 };
#
Write-Host -Object ('');
#
Write-Host -Object $('Bereinige Dateien');
#
foreach($CleanUpFile in $CleanUpFilesArray)
 {
  #
  Write-Host -Object $(' -> Prüfe '''+$CleanUpFile.Replace($WorkingDir,'...')+'''');
  #
  if(Test-Path $CleanUpFile)
   {
    #
    try
     {
      #
      Remove-Item -Path $($CleanUpFile) -ErrorAction Stop -Force;
      #
      Write-Host -Object $('    -> Bereinigt!');
      #
     }
    catch
     {
      #
      Write-Host -Object $('    -> Fehler beim bereinigen der Datei!');
      Exit 5;
      #
     };
    #
   }
    else
   {
    #
    Write-Host -Object $('    -> nicht Vorhanden!');
    #
   };
  #
  Write-Host -Object $('');
  #
 };
#
Write-Host -Object $('');
#
Write-Host -Object $('Lade System.IO.Compression');
#
try
 {
  #
  Add-Type -Assembly System.IO.Compression;
  Add-Type -Assembly System.IO.Compression.FileSystem;
  #
 }
catch
 {
  #
  Write-Host -Object $('  -> Fehler beim laden von System.IO.Compression!');
  Exit 7;
  #
 };
#
Write-Host -Object $('');
#
Write-Host -Object $('');
#
foreach($AddOnZIP in $AddOnsZIPArray)
 {
  #
  $Folder = $AddOnZIP[0];
  $File   = $AddOnZIP[1];
  #
  Write-Host -Object $('Erstelle '''+$File.Replace($WorkingDir,'...')+'''');
  #
  try
   {
    #
    [System.IO.Compression.ZipFile]::CreateFromDirectory($Folder, $File);
    #
    Write-Host -Object $(' -> Erstellt!');
    #
   }
  catch
   {
    #
    Write-Host -Object $(' -> Fehler beim erstellen der ZIP Datei!');
    Exit 7;
    #
   };
  #
  Write-Host -Object $('');
  #
 };
#
Write-Host -Object $('');
#
Write-Host -Object $('AddOn: '''+$AddOn_File.Replace($WorkingDir,'...')+'''');
#
try
 {
  #
  Rename-Item $($AddOn_File_TMP) $($AddOn_File) -ErrorAction Stop;
  #
  Write-Host -Object $(' -> Erstellt!');
  #
 }
catch
 {
  #
  Write-Host -Object $(' -> Fehler beim erstellen der AddOn Datei!');
  Exit 8;
  #
 };
#
Write-Host -Object $('');
#
Write-Host -Object $('');
#
Write-Host -Object $('World');
#
foreach($copy in $WorldCopyArray)
 {
  #
  Write-Host -Object $(' -> kopiere '''+$copy[2]+'''');
  #
  try
   {
    #
    Copy-Item $($copy[0]) -Destination $($copy[1]) -ErrorAction Stop -Force -Recurse;
    #
   }
  catch
   {
    #
    Write-Host -Object $('    -> Fehler beim kopieren des '''+$copy[2]+'''-Ordners!');
    Exit 9;
    #
   };
  #
  try
   {
    #
    Rename-Item -Path $($copy[1]+'\'+$($copy[0] -split '\\')[-1]) -NewName $($copy[3]) -ErrorAction Stop -Force;
    #
    Write-Host -Object $(' -> unbenannt zu '''+$copy[3]+'''');
    #
   }
  catch
   {
    #
    Write-Host -Object $('    -> Fehler beim umbennenen des '''+$copy[2]+'''-Ordners!');
    Exit 9;
    #
   };
  #
  Write-Host -Object $('');
  #
 };
#
try
 {
  #
  [System.IO.Compression.ZipFile]::CreateFromDirectory($World_WorkingDir, $World_File_TMP);
  #
  Rename-Item $($World_File_TMP) $($World_File) -ErrorAction Stop;
  #
  Write-Host -Object $(' -> Erstellt!');
  #
 }
catch
 {
  #
  Write-Host -Object $('    -> Fehler beim erstellen der World-Datei!');
  Exit 10;
  #
 };
#
Write-Host -Object $('');
#
Write-Host -Object $('');
#
Write-Host -Object $('Aufräumen');
#
foreach($CleanUpFolder in $CleanUpFoldersArray)
 {
  #
  Write-Host -Object $('Prüfe '''+$CleanUpFolder.Replace($WorkingDir,'...')+'''');
  #
  try
   {
    #
    Remove-Item -Path $($CleanUpFolder+'\*') -ErrorAction Stop -Recurse -Force;
    #
    Write-Host -Object $(' -> Bereinigt!');
    #
   }
  catch
   {
    #
    Write-Host -Object $(' -> Fehler beim bereinigen des Ordners!');
    Exit 11;
    #
   };
  #
  Write-Host -Object $('');
  #
 };
#
$Alle_Variablen = @(
                    #
                    'Version'                  ,
                    'Developer'                ,
                    'BehaviorPackRenameStr'    ,
                    'ResourcePackRenameStr'    ,
                    'ScriptPath'               ,
                    'WorkingDir'               ,
                    'TMP'                      ,
                    'AddOn_WorkingDir'         ,
                    'AddOn_Behavior_Pack'      ,
                    'AddOn_Resource_Pack'      ,
                    'AddOn_Behavior_Pack_ZIP'  ,
                    'AddOn_Resource_Pack_ZIP'  ,
                    'AddOn_File'               ,
                    'AddOn_File_TMP'           ,
                    'World_WorkingDir'         ,
                    'World_Behavior_Pack'      ,
                    'World_Resource_Pack'      ,
                    'World_File'               ,
                    'World_File_TMP'           ,
                    'FolderExistArray'         ,
                    'CleanUpFoldersArray'      ,
                    'CleanUpFilesArray'        ,
                    'AddOnsZIPArray'           ,
                    'WorldCopyArray'           ,
                    'FolderExist'              ,
                    'CleanUpFolder'            ,
                    'CleanUpFile'              ,
                    'AddOnZIP'                 ,
                    'FolderExist'              ,
                    'AddOnZIP'                 ,
                    'Folder'                   ,
                    'File'                     ,
                    'copy'                     ,
                    'WorldCopyArray'           ,
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
Write-Host -Object $('');
#
Write-Host -Object $('Abgeschlossen!');