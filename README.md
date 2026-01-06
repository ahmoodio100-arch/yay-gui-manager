# YAY-GUI-MANAGER

<div align="center">
  <img src="https://files.catbox.moe/kd0wv5.png" alt="Yay GUI Manager logo" width="180"/>
  <p><em>Streamlining Package Management with Effortless Control</em></p>

  [![last-commit](https://img.shields.io/github/last-commit/ahmoodio/yay-gui-manager?style=flat&logo=git&logoColor=white&color=0080ff)](https://github.com/ahmoodio/yay-gui-manager)
  [![repo-top-language](https://img.shields.io/github/languages/top/ahmoodio/yay-gui-manager?style=flat&color=0080ff)](https://github.com/ahmoodio/yay-gui-manager)
  [![license](https://img.shields.io/github/license/ahmoodio/yay-gui-manager?style=flat&color=0080ff)](https://github.com/ahmoodio/yay-gui-manager/blob/main/LICENSE)

  <p><em>Built with:</em></p>
  <img alt="Python" src="https://img.shields.io/badge/Python-3776AB.svg?style=flat&logo=Python&logoColor=white">
  <img alt="GNU Bash" src="https://img.shields.io/badge/GNU%20Bash-4EAA25.svg?style=flat&logo=GNU-Bash&logoColor=white">
  <img alt="Qt" src="https://img.shields.io/badge/Qt-41CD52.svg?style=flat&logo=Qt&logoColor=white">
</div>

---

## 🎥 Demo Showreel

<div align="center">
  <table style="border: none;">
    <tr>
      <td align="center"><strong>🔍 Search & Install</strong><br><img src="https://files.catbox.moe/2izcwr.gif" width="400px"></td>
      <td align="center"><strong>📦 Installed Packages</strong><br><img src="https://files.catbox.moe/w32hbc.gif" width="400px"></td>
    </tr>
    <tr>
      <td align="center" colspan="2"><strong>🔄 Updates Tab</strong><br><img src="https://files.catbox.moe/u0i2h2.gif" width="400px"></td>
    </tr>
  </table>
</div>

---

## 📖 Overview
**Yay GUI Manager** is a fast, modern, and Konsole-integrated graphical interface for the `yay` AUR helper. Built with Python and PyQt5, it features real-time streaming parsing for searches, installed packages, and system updates.

### ✨ Key Features
* ⚙️ **Multi-Tab Management:** * **Search & Install:** Combined pacman and AUR search with side-panel descriptions.
    * **Installed:** View and filter explicitly installed packages (`pacman -Qe`).
    * **Updates:** Batch update tools for Repo + AUR updates.
* 🎨 **Desktop Integration:** Automatic icon resizing, desktop database updates, and menu entry setup.
* 🖥️ **Terminal Integration:** Prefers **Konsole**, with fallbacks to kitty, xfce4-terminal, gnome-terminal, and more.
* 📦 **AUR Ready:** Built-in support for PKGBUILDs and easy packaging.
* 🛠️ **Error Logging:** Automatic crash reporting to `/tmp/yay_gui_error.log`.

---

## 🚀 Installation (Arch / CachyOS)

### 1. The Easy Way (AUR)
If you already have `yay` installed, simply run:
```bash
yay -S yay-gui-manager-git
