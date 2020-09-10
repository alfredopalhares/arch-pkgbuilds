#!/bin/bash

# Prompts for confirmation, returns 1 if Yes
#
# Usage: getConfirmation "Question message"
# You can get anwser value on retcode
# if [[ $? == "1"]]; then
#   echo "You choose yes"
# fi
function getConfirmation {
  value=0
  while true; do
    read -p "${1} [Y/n]" yn

    case $yn in
      [Yy]* ) return 0 ;;
      [Nn]* ) return 1 ;;
      * ) return 0 ;;
    esac

  done
}


echo "This script will cleanup all workfiles"
getConfirmation "Do you want to proccess"
if [[ $1 == "0" ]]; then
  echo "Aborting"
  exit 1
fi

for d in $(find . -maxdepth 1 -type d); do
  if [[ -f $d/PKGBUILD ]]; then
    echo "Cleaning ${d} package"
    rm -r $d/{src,pkg}
    rm $d/{v*.zip,v*.zip.part,*tar.gz,*tar.xz,*.tar.zst}
   fi
done

exit 0
