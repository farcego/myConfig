#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"

scripts=(
    01-base.sh
    02-libs.sh
    03-latex.sh
    04-desktop.sh
    05-r.sh
    06-gis.sh
    07-zotero.sh
    08-browsers.sh
    09-external.sh
    10-onedrive.sh
    11-cleanup.sh
)

echo "============================================================"
echo " Ubuntu installation"
echo "============================================================"

for script in "${scripts[@]}"; do
    echo
    echo "==> Running ${script}"
    bash "${SCRIPT_DIR}/${script}"
done

echo
echo "============================================================"
echo " Installation finished"
echo "============================================================"
