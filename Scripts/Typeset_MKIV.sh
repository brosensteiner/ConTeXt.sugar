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
set index of window 1 to 1
do script "cd $E_DIRECTORY;context $path" in window 1

end tell

tell application "Terminal"
activate
do script "/Applications/Skim.app/Contents/SharedSupport/displayline $E_LINENUMBER ${pdfer} ${path}" in window 1

end tell

EOF
