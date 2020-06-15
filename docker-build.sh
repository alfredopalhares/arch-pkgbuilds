#!/usr/bin/env zsh

package=$1
if [[ ! -n $package ]]; then
    echo "No Package Given to build, aborting.."
    exit 1
fi

cd  "${package}"

echo "Trying to build: ${package}"
yes | makepkg -sfc