#! /bin/sh
GAMEDIR="$HOME/Documents/Games/Orchids to Dusk"
GAMEBIN="Orchids to Dusk.$(uname -m)"
EXECTYPE="binary"
if [ -d "$GAMEDIR" ] && [ -f "$GAMEDIR"/"$GAMEBIN" ]; then
    echo "Found game directory: $GAMEDIR"
    echo "Found launcher executable: $GAMEBIN"
    echo "Executing $EXECTYPE: $GAMEBIN"
    cd "$GAMEDIR" && ./"$GAMEBIN" &> /dev/null
else
    if [ ! -d "$GAMEDIR" ]; then
        echo "Directory: $GAMEDIR Is missing"
    fi
    if [ ! -f "$GAMEDIR"/"$GAMEBIN" ]; then
        echo "File: $GAMEBIN Is missing"
    fi
fi
