#! /bin/sh
GAMEDIR="$HOME/Games/Minecraft"
GAMEBIN="Minecraft Launcher.jar"
EXECPATH="$(which java)"
EXECTYPE="Java runtime application"
if [ -d "$GAMEDIR" ] && [ -f "$GAMEDIR"/"$GAMEBIN" ] && [ -f "$EXECPATH" ]; then
    echo "Found game directory: $GAMEDIR"
    echo "Found launcher executable: $GAMEBIN"
    echo "Executing $EXECTYPE: $EXECPATH -jar $GAMEBIN"
    cd "$GAMEDIR" && "$EXECPATH" -jar "$GAMEBIN" &> /dev/null
else
    if [ ! -d "$GAMEDIR" ]; then
        echo "Directory: $GAMEDIR Is missing"
    fi
    if [ ! -f "$GAMEDIR"/"$GAMEBIN" ]; then
        echo "File: $GAMEBIN Is missing"
    fi
    if [ ! -f "$EXECPATH" ]; then
        echo "File: $EXECPATH Is missing"
    fi
fi
