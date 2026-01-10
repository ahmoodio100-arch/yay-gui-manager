# YAY-GUI-MANAGER

<div align="center">
  <img src="https://files.catbox.moe/kd0wv5.png" alt="Yay GUI Manager logo" width="180"/>
  <p><em>Streamlining Package Management with Effortless Control</em></p>

  [![last-commit](https://img.shields.io/github/last-commit/ahmoodio/yay-gui-manager?style=flat&logo=git&logoColor=white&color=0080ff)](https://github.com/ahmoodio/yay-gui-manager)
  [![repo-top-language](https://img.shields.io/github/languages/top/ahmoodio/yay-gui-manager?style=flat&color=0080ff)](https://github.com/ahmoodio/yay-gui-manager)
  [![license](https://img.shields.io/github/license/ahmoodio/yay-gui-manager?style=flat&color=0080ff)](https://github.com/ahmoodio/yay-gui-manager/blob/main/LICENSE)
  [![Arch Linux](https://img.shields.io/badge/Arch%20Linux-blue?logo=arch-linux&logoColor=white)](https://archlinux.org/)
  [![AUR Helper: yay](https://img.shields.io/badge/AUR%20Helper-yay-success?logo=arch-linux&logoColor=white)](https://github.com/Jguer/yay)
  
  <p><em>Built with:</em></p>
  <img alt="Python" src="https://img.shields.io/badge/Python-3776AB.svg?style=flat&logo=Python&logoColor=white">
  <img alt="GNU Bash" src="https://img.shields.io/badge/GNU%20Bash-4EAA25.svg?style=flat&logo=GNU-Bash&logoColor=white">
  <img alt="Qt" src="https://img.shields.io/badge/Qt-41CD52.svg?style=flat&logo=Qt&logoColor=white">

  <p>
    <a href="#-demo-gifs">Demos</a> •
    <a href="#-features">Features</a> •
    <a href="#-installation-arch--cachyos">Installation</a> •
    <a href="#-desktop-launcher">Desktop Launcher</a> •
    <a href="#-support">Support</a>
  </p>
</div>

---

## 🎥 Demo GIFs

### [🔍 Search & Install](https://files.catbox.moe/2izcwr.gif)
*Search both repo + AUR and view descriptions in a side panel.* ![Search Demo](https://files.catbox.moe/2izcwr.gif)

---

### [📦 Installed Packages](https://files.catbox.moe/w32hbc.gif)
*Explicitly installed packages (pacman -Qe) with filter + batch uninstall.* ![Installed Tab](https://files.catbox.moe/w32hbc.gif)

---

### [🔄 Updates Tab](https://files.catbox.moe/u0i2h2.gif)
*Repo + AUR updates (yay -Qu / -Qua) with batch update tools.* ![Updates Tab](https://files.catbox.moe/u0i2h2.gif)

---

# ✨ Features

- **3 Main Tabs:**
  - [Search & Install](#-search--install) – uses `pacman -Ss` and `yay -Ss --aur`
  - [Installed](#-installed-packages) – uses `pacman -Qe` to list explicitly installed packages
  - [Updates](#-updates-tab) – uses `yay -Qu` and `yay -Qua`
- **Multi-select:** Install / uninstall / update using checkboxes.
- **Package Details:** Side panel with description and URL via `pacman -Si` / `yay -Si`.
- **Terminal Integration:** - Prefers [Konsole](https://apps.kde.org/konsole/)
  - Falls back to kitty / xfce4-terminal / gnome-terminal / tilix / xterm / wezterm / kgx / foot
- **Error Tracking:** Crash logs written to `/tmp/yay_gui_error.log`.

---

# 📥 Installation (Arch / CachyOS)

The easiest way is using [yay](https://github.com/Jguer/yay):
```bash
yay -S yay-gui-manager-git
