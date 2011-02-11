#!/bin/bash

# Get access to commands in non-standard paths.
#PATH=":$PATH"
#export PATH

here=$(dirname "$0")
base=$(dirname "$here")
data="$base/data"
etc="$base/etc"
log="$base/log"
bin="$base/bin"

"$bin/backup_sf"     > "$log/sourceforge.log" 2>&1 "$data/sourceforge" "$etc/backup_sourceforge"
"$bin/backup_fossil" > "$log/fossil.log"      2>&1 "$data/fossil"      "$etc/backup_fossilized"
"$bin/backup_git"    > "$log/git.log"         2>&1 "$data/git"         "$etc/backup_git"
"$bin/backup_svn"    > "$log/svn.log"         2>&1 "$data/svn"         "$etc/backup_svn"
# hg - mercurial
# bzr - bazaar
