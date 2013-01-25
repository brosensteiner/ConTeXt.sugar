#!/bin/bash

export path=$E_FILEPATH
export pdf=${path%tex}
export pdfer=${pdf}pdf
export OSFONTDIR="$OSFONTDIR;/Applications/ConTeXt/tex/texmf-local/tex/fonts;"
export BSTINPUTS=/Applications/ConTeXt/tex/texmf-context/bibtex/bst/context
export TEXMFCACHE=/Applications/ConTeXt/tex/texmf-cache

exec osascript <<EOF

tell application "Terminal"
activate
do script "cd $E_DIRECTORY;context $path;/Applications/Skim.app/Contents/SharedSupport/displayline $E_LINENUMBER ${pdfer}" in window 1

end tell

EOF