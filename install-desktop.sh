#!/usr/bin/env bash
# install-desktop.sh
# Install Yay GUI Manager launcher + icon into the current user's environment.

set -e

APP_ID="yay-gui"                       # used for icon & desktop filename
DESKTOP_SOURCE="desktop/yay-gui.desktop"
ICON_SOURCE="desktop/yay-gui.png"

DESKTOP_TARGET="${HOME}/.local/share/applications/${APP_ID}.desktop"
ICON_TARGET="${HOME}/.local/share/icons/hicolor/256x256/apps/${APP_ID}.png"

# ── Find project root (folder where this script lives) ─────────────────────────
SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"

echo "Using project directory: ${SCRIPT_DIR}"

# ── Sanity checks ──────────────────────────────────────────────────────────────
if [[ ! -f "${SCRIPT_DIR}/${DESKTOP_SOURCE}" ]]; then
  echo "Error: ${DESKTOP_SOURCE} not found in project directory."
  exit 1
fi

if [[ ! -f "${SCRIPT_DIR}/${ICON_SOURCE}" ]]; then
  echo "Error: ${ICON_SOURCE} not found in project directory."
  exit 1
fi

# ── Create target directories ──────────────────────────────────────────────────
mkdir -p "$(dirname "${DESKTOP_TARGET}")"
mkdir -p "$(dirname "${ICON_TARGET}")"

# ── Copy desktop file & icon ───────────────────────────────────────────────────
cp "${SCRIPT_DIR}/${DESKTOP_SOURCE}" "${DESKTOP_TARGET}"
cp "${SCRIPT_DIR}/${ICON_SOURCE}" "${ICON_TARGET}"

echo "Copied:"
echo "  ${DESKTOP_SOURCE} -> ${DESKTOP_TARGET}"
echo "  ${ICON_SOURCE}    -> ${ICON_TARGET}"

# ── Decide what Exec= should run ───────────────────────────────────────────────
# If yay-gui-manager is in PATH (installed via PKGBUILD), use that.
# Otherwise, run the local python script from the repo.
if command -v yay-gui-manager >/dev/null 2>&1; then
  EXEC_CMD="yay-gui-manager"
else
  EXEC_CMD="/usr/bin/python3 ${SCRIPT_DIR}/python/yay_gui.py"
fi

# Escape for sed
ESCAPED_EXEC_CMD=$(printf '%s\n' "${EXEC_CMD}" | sed 's/[&/\\]/\\&/g')

# Replace Exec= line in the installed desktop file
sed -i "s|^Exec=.*$|Exec=${ESCAPED_EXEC_CMD}|" "${DESKTOP_TARGET}"

echo "Set Exec= to: ${EXEC_CMD}"

# ── Update desktop & icon caches (best-effort) ─────────────────────────────────
if command -v update-desktop-database >/dev/null 2>&1; then
  update-desktop-database "${HOME}/.local/share/applications" || true
fi

if command -v gtk-update-icon-cache >/dev/null 2>&1; then
  gtk-update-icon-cache -q -t -f "${HOME}/.local/share/icons/hicolor" || true
fi

echo
echo "✅ Yay GUI Manager launcher installed."
echo "   It should now appear in your application menu."
