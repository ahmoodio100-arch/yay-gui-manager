#!/usr/bin/env bash
# install-desktop.sh
# Install Yay GUI Manager launcher + icon into the current user's environment.

set -euo pipefail

APP_ID="yay-gui"

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
DESKTOP_SOURCE="${SCRIPT_DIR}/desktop/yay-gui.desktop"
ICON_SOURCE="${SCRIPT_DIR}/desktop/yay-gui.png"

DESKTOP_TARGET="${HOME}/.local/share/applications/${APP_ID}.desktop"
ICON_BASE="${HOME}/.local/share/icons/hicolor"

echo "== Yay GUI Manager desktop installer =="
echo "Project directory: ${SCRIPT_DIR}"
echo

# 1) Check .desktop file
if [[ ! -f "${DESKTOP_SOURCE}" ]]; then
  echo "ERROR: ${DESKTOP_SOURCE} not found."
  echo "Make sure you have desktop/yay-gui.desktop in the repo."
  exit 1
fi

mkdir -p "$(dirname "${DESKTOP_TARGET}")"
cp "${DESKTOP_SOURCE}" "${DESKTOP_TARGET}"
echo "✓ Installed desktop file -> ${DESKTOP_TARGET}"

# 2) Install icon (all sizes if possible)
if [[ -f "${ICON_SOURCE}" ]]; then
  echo "Found icon at ${ICON_SOURCE}"
  echo "Installing icon(s)..."

  # If ImageMagick is available, generate proper sizes
  if command -v convert >/dev/null 2>&1; then
    echo "ImageMagick detected – generating multiple icon sizes."

    for size in 16 32 48 64 128 256; do
      target_dir="${ICON_BASE}/${size}x${size}/apps"
      mkdir -p "${target_dir}"
      convert "${ICON_SOURCE}" -resize "${size}x${size}" \
        "${target_dir}/${APP_ID}.png"
      echo "  - ${size}x${size} -> ${target_dir}/${APP_ID}.png"
    done
  else
    echo "ImageMagick not found – installing original icon as 256x256 only."
    target_dir="${ICON_BASE}/256x256/apps"
    mkdir -p "${target_dir}"
    cp "${ICON_SOURCE}" "${target_dir}/${APP_ID}.png"
    echo "  - 256x256 -> ${target_dir}/${APP_ID}.png"
    echo "Tip: install 'imagemagick' if you want auto-resized icon sizes."
  fi
else
  echo "⚠ No icon found at ${ICON_SOURCE}"
  echo "   Place your logo as desktop/yay-gui.png and re-run this script"
fi

# 3) Decide Exec= command in .desktop
if command -v yay-gui-manager >/dev/null 2>&1; then
  EXEC_CMD="yay-gui-manager"
else
  EXEC_CMD="/usr/bin/python3 ${SCRIPT_DIR}/yay_gui.py"
fi

sed -i "s|^Exec=.*$|Exec=${EXEC_CMD}|" "${DESKTOP_TARGET}"
echo "✓ Updated Exec= in desktop file to: ${EXEC_CMD}"

# 4) Refresh desktop & icon caches (best effort)
if command -v update-desktop-database >/dev/null 2>&1; then
  update-desktop-database "${HOME}/.local/share/applications" || true
fi

if command -v gtk-update-icon-cache >/dev/null 2>&1; then
  gtk-update-icon-cache -q -t -f "${ICON_BASE}" || true
fi

echo
echo "✅ Done! 'Yay GUI Manager' should now appear in your app menu with the new icon."
