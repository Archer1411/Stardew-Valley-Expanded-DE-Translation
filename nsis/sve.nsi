!include "MUI2.nsh"
#!include "LangFile.nsh"

Name "Stardew Valley Expanded - German Translation"
OutFile "Stardew Valley Expanded - German Translation.exe"

RequestExecutionLevel admin

# Define the installer sections
!define MUI_PAGE_CUSTOMFUNCTION_PRE prePageFunction
!define MUI_TEXT_DIRECTORY_TITLE "Stardew Valley Mods Verzeichnis"
!define MUI_TEXT_DIRECTORY_SUBTITLE " "
!define MUI_DIRECTORYPAGE_TEXT_TOP "Bitte den Pfad zum Stardew Valley Mods Verzeichnis angeben:"
!define MUI_DIRECTORYPAGE_TEXT_DESTINATION " "
!insertmacro MUI_PAGE_DIRECTORY
!insertmacro MUI_PAGE_INSTFILES
!insertmacro MUI_LANGUAGE "German"

Function prePageFunction
	StrCpy $INSTDIR "C:\Program Files (x86)\Steam\steamapps\common\Stardew Valley\Mods"
FunctionEnd

Section "Stardew Valley Expanded - German Translation files"
	SetOutPath "$INSTDIR\Stardew Valley Expanded"
	File /r "..\Stardew Valley Expanded\*.*"
	SetOutPath "$INSTDIR\Stardew Valley Expanded - German Translation"
	File /r "..\Stardew Valley Expanded - German Translation\*.*"
SectionEnd