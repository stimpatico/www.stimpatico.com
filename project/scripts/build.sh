#! /bin/sh

set -e
set -u
set -x

BUILD_DIR='./build'

# testing() {
# 	INPUT_PATH="${1}"
# 	OUTPUT_DIR="${2}"

# 	SUBDIR=`dirname "$1"`
# 	mkdir -p "${OUTPUT_DIR}/${SUBDIR}"
# 	# OUTFILE="build/${SRCNAME%.markdown}.html"
# 	# pandoc --defaults=defaults.yaml --write=html5 --output="${OUTFILE}" "${INFILE}"
# }

# export -f testing
# testing "hello"
# cd content
# find . -iname '*.markdown' -exec sh -c 'testing "$1" "$2"' _ {} \;

for INFILE in content/*.markdown
do
	SRCNAME=`basename "${INFILE}"`
	OUTFILE="build/${SRCNAME%.markdown}.html"
	pandoc --defaults=defaults.yaml --write=html5 --output="${OUTFILE}" "${INFILE}"
done

# --defaults=
#
# reader: markdown
# writer: html
# standalone: true
# template: template.html
#
#rsync -avz build/ merenbach_merenbach@ssh.phx.nearlyfreespeech.net:/home/public
