#define AppVersion "0.2.3"
#define AppBranch "master"

[Setup]
AllowNetworkDrive=no
AllowUNCPath=no
AppContact=support@spikespaz.com
AppCopyright=Copyright (c) 2018 Jacob Birkett
AppId=spikespaz-search-deflector
AppName=Search Deflector
AppPublisher=spikespaz
AppPublisherURL=https://spikespaz.com
AppReadmeFile=https://github.com/spikespaz/search-deflector/blob/master/README.md
AppSupportURL=https://github.com/spikespaz/search-deflector/issues
AppUpdatesURL=https://github.com/spikespaz/search-deflector/releases
AppVerName=Search Deflector {#AppVersion}
AppVersion={#AppVersion}-{#AppBranch}
AppModifyPath="{app}\{#AppVersion}\setup.exe"
ChangesEnvironment=yes
Compression=lzma
DefaultDirName={pf32}\Search Deflector
DefaultGroupName="Search Deflector"
InfoBeforeFile=installer.txt
LicenseFile="build\LICENSE"
MinVersion=10.0.10240
OutputBaseFilename=SearchDeflector-Installer
SetupIconFile=icons\icon.ico
Uninstallable=yes
UninstallDisplayName=Search Deflector
UninstallDisplayIcon={app}\{#AppVersion}\launcher.exe
VersionInfoVersion={#AppVersion}
WizardSmallImageFile=icons\icon.bmp
OutputDir=build

[Files]
Source: "build\{#AppVersion}-{#AppBranch}\*"; Excludes: "LICENSE"; \
    DestDir: "{app}\{#AppVersion}"; Flags: recursesubdirs
Source: "build\LICENSE"; DestDir: "{app}"

[Icons]
Name: "{group}\Configure"; Filename: "{app}\{#AppVersion}\launcher.exe"; \
    Parameters: "--setup"; Flags: excludefromshowinnewinstall preventpinning
Name: "{group}\Force Update"; Filename: "{app}\{#AppVersion}\launcher.exe"; \
    Parameters: "--update"; Flags: excludefromshowinnewinstall preventpinning
Name: "{group}\Visit Website"; FileName: "https://github.com/spikespaz/search-deflector"

[Run]
Filename: "{app}\{#AppVersion}\updater.exe"; Flags: hidewizard

[Registry]
Root: HKCU; Subkey: "Software\Clients\SearchDeflector"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Clients\SearchDeflector"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\RegisteredApplications"; ValueName: "SearchDeflector"; Flags: uninsdeletevalue
Root: HKCR; Subkey: "SearchDeflector"; Flags: uninsdeletekey
