#!/usr/bin/env bash
# install-desktop.sh
# Install Yay GUI Manager launcher + icon into the current user's environment.

set -e

APP_ID="yay-gui"
DESKTOP_SOURCE="desktop/yay-gui.desktop"
ICON_SOURCE="desktop/yay-gui.png"

DESKTOP_TARGET="${HOME}/.local/share/applications/${APP_ID}.desktop"
ICON_TARGET="${HOME}/.local/share/icons/hicolor/256x256/apps/${APP_ID}.png"

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"

echo "Using project directory: ${SCRIPT_DIR}"

if [[ ! -f "${SCRIPT_DIR}/${DESKTOP_SOURCE}" ]]; then
  echo "Error: ${DESKTOP_SOURCE} not found in project directory."
  exit 1
fi

mkdir -p "$(dirname "${DESKTOP_TARGET}")"
mkdir -p "$(dirname "${ICON_TARGET}")"

cp "${SCRIPT_DIR}/${DESKTOP_SOURCE}" "${DESKTOP_TARGET}"
echo "Copied ${DESKTOP_SOURCE} -> ${DESKTOP_TARGET}"

# Icon is optional; only install if present
if [[ -f "${SCRIPT_DIR}/${ICON_SOURCE}" ]]; then
  cp "${SCRIPT_DIR}/${ICON_SOURCE}" "${ICON_TARGET}"
  echo "Copied ${ICON_SOURCE} -> ${ICON_TARGET}"
else
  echo "Note: ${ICON_SOURCE} not found, skipping icon install."
fi

# Decide Exec=
if command -v yay-gui-manager >/dev/null 2>&1; then
  EXEC_CMD="yay-gui-manager"
else
  EXEC_CMD="/usr/bin/python3 ${SCRIPT_DIR}/yay_gui.py"
fi

sed -i "s|^Exec=.*$|Exec=${EXEC_CMD}|" "${DESKTOP_TARGET}"
echo "Set Exec= to: ${EXEC_CMD}"

# Refresh desktop + icon caches (best effort)
if command -v update-desktop-database >/dev/null 2>&1; then
  update-desktop-database "${HOME}/.local/share/applications" || true
fi

if command -v gtk-update-icon-cache >/dev/null 2>&1; then
  gtk-update-icon-cache -q -t -f "${HOME}/.local/share/icons/hicolor" || true
fi

echo
echo "✅ Yay GUI Manager launcher installed."
echo "   It should now appear in your application menu."
