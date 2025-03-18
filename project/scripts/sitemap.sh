#! /bin/sh

set -e
set -x

BASE_URL='https://www.merenbach.com'

accumulate() {
    WORK_DIR="${1}"
    find "${WORK_DIR}" -name '*.html' | sed "s!^${WORK_DIR}!${BASE_URL}!" > "${WORK_DIR}/sitemap.txt"
}

accumulate './build'

# --defaults=
#
# reader: markdown
# writer: html
# standalone: true
# template: template.html
#
#rsync -avz build/ merenbach_merenbach@ssh.phx.nearlyfreespeech.net:/home/public
