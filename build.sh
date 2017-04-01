#!/bin/bash

#Please run with a Linux flavor. macOS makes a lot of dummy files.

# Aliases
basename="io.github.ethanrdoesmc.gafndalf"

# create control file and setup for conflicts
echo "Creating directories and copying files."
controlfile="$basename/DEBIAN/control"
mkdir -p "$basename/DEBIAN/"
cp control $controlfile
mkdir -p "$basename/Applications"
cp gafndalf.app "$basename/Applications"

# package
echo "Creating package."
dpkg-deb -Zgzip -b $basename


# cleanup
echo "Removing temporary folders and files."
rm -r $basename
