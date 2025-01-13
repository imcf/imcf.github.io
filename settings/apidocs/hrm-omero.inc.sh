#!/bin/bash

# shellcheck disable=SC2034  # (unused variables)

##### MANDATORY #####

# the name of the repo (~the folder it will be cloned into):
REPO_NAME="hrm-omero"

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
EXCLUDE_VERSIONS='^(.*-dev[0-9]+)$'

# check for 'pdoc: skip' pragmas in the code and disable those lines before
# actually calling pdoc for the versions specified here:
# PREPROC_VERSIONS='^(1.0.0|1.1.0|1.2.0|1.3.0|1.4.0)$'

# specify a Python command to use for creating the venv:
# PYTHON_CMD="/usr/bin/python3.10"

# venv to use for running pdoc:
USE_VENV=$HOME/.virtualenvs/hrm-omero-pdoc

# extra wheels to download and cache locally:
# NOTE: this wheel is known to work with Ubuntu 22.04, newer releases will
# require this to be adapted!
CACHE_WHEELS="https://github.com/glencoesoftware/zeroc-ice-py-linux-x86_64/releases/download/20240202/zeroc_ice-3.6.5-cp310-cp310-manylinux_2_28_x86_64.whl"

# extra packages that need to be present in the venv:
PIP_PKGS_EXTRA="loguru beautifulsoup4 omero-py zeroc-ice==3.6.5"

# directory with pdoc templates:
# PDOC_TEMPLATES

# base directory where the output will be placed:
# DOCS_BASEDIR
