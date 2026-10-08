[Setup]
AppName=YouTube
AppVersion=1.0
AppPublisher=moisesdam
DefaultDirName={userappdata}\YouTube
DefaultGroupName=YouTube
UninstallDisplayIcon={app}\icono.ico
Compression=lzma2/ultra64
SolidCompression=yes
OutputDir=userdocs:\YouTube-PC
OutputBaseFilename=YouTube-PC

[Files]
; Copia todos los archivos (Chromium, el .bat y el icono.ico)
Source: "C:\Users\moise\Downloads\youtube-tv-win\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
; Inno Setup genera el acceso directo adaptado automáticamente a la PC donde se instale
Name: "{autodesktop}\YouTube"; Filename: "{app}\YouTube.bat"; IconFilename: "{app}\icono.ico"; Flags: runminimized
Name: "{autoprograms}\YouTube"; Filename: "{app}\YouTube.bat"; IconFilename: "{app}\icono.ico"; Flags: runminimized

[Run]
Description: "Iniciar YouTube"; Flags: postinstall nowait skipifsilent unchecked; Filename: "{app}\YouTube.bat"
