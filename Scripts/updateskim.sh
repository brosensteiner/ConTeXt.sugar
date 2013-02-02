#!/bin/bash

#Skim update when file changes not needed, because -r option in displayline already takes care of it:

exec osascript <<EOF

set theFile to POSIX file "${pdfer}" as alias
set thePath to POSIX path of theFile

tell application "Skim"
  activate
  set theDocs to get documents whose path is thePath
  try
    if (count of theDocs) > 0 then revert theDocs
  end try
  open theFile
end tell

EOF

  