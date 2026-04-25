#define MyAppName "Calc Center"
#define MyAppVersion "1.5"
#define MyAppPublisher "Center Soft, Inc."

[Setup]
AppId={{BA13511C-4C36-418A-A7A8-1E457304583F}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
DefaultDirName={autopf32}\{#MyAppName}
PrivilegesRequired=admin
DisableProgramGroupPage=yes
OutputDir=C:\Users\alcan\OneDrive\Documentos\Inno Setup Output
OutputBaseFilename=Calc_Center_Install
SetupIconFile=C:\MeusProjetos\CalcCenter\icon.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern
DisableFinishedPage=no
UsedUserAreasWarning=no

[Languages]
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\MeusProjetos\CalcCenter\*"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
; Ícone no Menu Iniciar
Name: "{autoprograms}\{#MyAppName}"; \
    Filename: "{commonpf}\Microsoft\Edge\Application\msedge.exe"; \
    Parameters: "--app=""file:///{app}/CENTRO_DE_CALCULO.html"" --start-maximized --user-data-dir=""{localappdata}\{#MyAppName}\Data"""; \
    IconFilename: "{app}\icon.ico"

; Ícone na Área de Trabalho
Name: "{autodesktop}\{#MyAppName}"; \
    Filename: "{commonpf}\Microsoft\Edge\Application\msedge.exe"; \
    Parameters: "--app=""file:///{app}/CENTRO_DE_CALCULO.html"" --start-maximized --user-data-dir=""{localappdata}\{#MyAppName}\Data"""; \
    IconFilename: "{app}\icon.ico"; \
    Tasks: desktopicon

[Run]
Filename: "{commonpf}\Microsoft\Edge\Application\msedge.exe"; \
    Parameters: "--app=""file:///{app}/CENTRO_DE_CALCULO.html"" --start-maximized --user-data-dir=""{localappdata}\{#MyAppName}\Data"""; \
    Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; \
    Flags: nowait postinstall skipifsilent