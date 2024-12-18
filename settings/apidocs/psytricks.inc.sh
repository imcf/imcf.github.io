#!/bin/bash

# shellcheck disable=SC2034  # (unused variables)

##### MANDATORY #####

# the name of the repo (~the folder it will be cloned into):
REPO_NAME="psytricks"

# the URI of the repo to clone:
REPO_URI="https://github.com/imcf/${REPO_NAME}.git"

#
#

##### OPTIONAL #####

# a 'grep -E' pattern to filter TAGS to be INCLUDED in docs generation
# INCLUDE_TAGS="^(${REPO_NAME}-|v)[0-9]+"

# the name of the main branch, commonly "main" or (old) "master"
# MAIN_BRANCH="master"

# location of the package source, by default "src/" will be used if emtpy:
# PKG_SRC="src/main/resources"  # for mavenized packages

# a 'grep -E' pattern to filter VERSIONS to be EXCLUDED from docs generation:
EXCLUDE_VERSIONS='^(0.1.0)$'

# check for 'pdoc: skip' pragmas in the code and disable those lines before
# actually calling pdoc for the versions specified here:
# PREPROC_VERSIONS='^(1.0.0|1.1.0|1.2.0|1.3.0|1.4.0)$'

# venv to use for running pdoc:
# USE_VENV=

# extra packages that need to be present in the venv:
PIP_PKGS_EXTRA="loguru"

# directory with pdoc templates:
# PDOC_TEMPLATES

# base directory where the output will be placed:
# DOCS_BASEDIR
