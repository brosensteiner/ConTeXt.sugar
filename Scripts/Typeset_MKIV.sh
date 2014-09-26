#!/bin/bash

#export PATH=$PATH:/Applications/ConTeXt/tex/texmf-osx-64/bin
export OSFONTDIR=/Applications/ConTeXt/tex/texmf-local/tex/fonts:/Library/Fonts

export path=$EDITOR_PATH
export linenumber=$EDITOR_LINE_NUMBER
export projectPath=$EDITOR_DIRECTORY_PATH
export pdf=${path%tex}
export pdfer=${pdf}pdf
export OSFONTDIR="$OSFONTDIR;/Applications/ConTeXt/tex/texmf-local/tex/fonts;"
export BSTINPUTS=/Applications/ConTeXt/tex/texmf-context/bibtex/bst/context
export TEXMFCACHE=/Applications/ConTeXt/tex/texmf-cache
export pathToSkim=/Applications/Skim.app/Contents/SharedSupport/displayline

# cd $projectPath
# context $path
# $pathToSkim -r -b $linenumber $pdfer $path


exec osascript <<EOF
 
tell application "Terminal"
	activate
	set index of window 1 to 1
	activate
	do script "cd $projectPath;context $path;$pathToSkim -r -b $linenumber $pdfer $path" in window 1
end tell
 
EOF


