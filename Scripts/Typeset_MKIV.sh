#!/bin/bash

export path=$EDITOR_PATH
export projectPath=$EDITOR_DIRECTORY_PATH
export pdf=${path%tex}
export pdfer=${pdf}pdf
export OSFONTDIR="$OSFONTDIR;/Applications/ConTeXt/tex/texmf-local/tex/fonts;"
export BSTINPUTS=/Applications/ConTeXt/tex/texmf-context/bibtex/bst/context
export TEXMFCACHE=/Applications/ConTeXt/tex/texmf-cache
export pathToSkim=/Applications/Skim.app/Contents/SharedSupport/displayline

exec osascript <<EOF

tell application "Terminal"
activate
set index of window 1 to 1
do script "cd $projectPath;context $path;/$pathToSkim -r -b $EDITOR_LINE_NUMBER $pdfer $path" in window 1
end tell

EOF


