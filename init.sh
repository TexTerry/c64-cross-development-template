#!/bin/bash
#init.sh  -- Init-Script to start a new and clean git repository out of
#            a c64-cross-develompent-template
#
# This script deletes all examples and template related git configurations
# and initializes a new git repository. Afterwards you'll have a clean and
# nice startin-point for your C64-Project.

BASEDIR=$(dirname $0)

# Delete template-related git configuration
rm -rf $BASEDIR/.git

# Write new Makefile
cat > $BASEDIR/Makefile <<EOF

clean:
	find drive -type f -not -name 'readme.txt' -exec rm {} \;
EOF

# Delete example-files
rm $BASEDIR/basexample.bas
rm $BASEDIR/example.a

# Delete license file
rm $BASEDIR/LICENSE

# Delete readme file
rm $BASEDIR/README.md

# Delete myselfe
rm $BASEDIR/init.sh

# Initialize new git repository
cd $BASEDIR
git init 
git add .
git commit -m "Initial commit"

