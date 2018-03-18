#! /bin/sh
GAMEDIR="$HOME/Games/Thirteen And Half Cats"
GAMEBIN="ThirteenAndHalfCats.x86_64"
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
