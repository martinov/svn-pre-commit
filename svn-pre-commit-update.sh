#!/bin/bash
## Update pre-commit hook scrip by Martin Martinov
## Created: 25.10.2012

SVN_DIR='/var/svn'

for REPO_NAME in $(ls $SVN_DIR); do
	if [ ${REPO_NAME} != 'conf' ]; then
		sudo ln -sfv /home/martin/shell_scripts/pre-commit "${SVN_DIR}/${REPO_NAME}/hooks/pre-commit"
	fi
done
