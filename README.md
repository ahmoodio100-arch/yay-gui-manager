# 🖥️ Yay GUI Manager – Rebuilt  
A modern, fast, and user-friendly graphical interface for **yay** on Arch-based systems (Arch, CachyOS, EndeavourOS, Manjaro with yay installed, etc.).

This GUI removes the need to run long terminal commands and gives you a clean 3-tab interface for:

- 🔎 **Searching & installing packages**
- 📦 **Managing installed packages (remove, filter, inspect)**
- 🔄 **Checking & updating system + AUR packages**

Designed with a dark KDE-friendly theme and built using **Python + PyQt5**.

---

## 🎥 Demo GIFs  

### 🔍 Search & Install  
Shows how to search for a package and view its description:

![Search & Install](https://s6.ezgif.com/tmp/ezgif-65dc73a013a38c94.gif)

---

### 📦 Installed Packages Tab  
Shows loading installed packages, filtering, and uninstalling:

![Installed Packages](https://s6.ezgif.com/tmp/ezgif-6731420813f92e67.gif)

---

### 🔄 Update Apps Tab  
Shows checking for repo + AUR updates and updating apps:

![Update Apps](https://s6.ezgif.com/tmp/ezgif-6d68827d82fa3940.gif)

---

## ✨ Features

- Dark, KDE-friendly interface  
- 3 main tabs:
  - **Search / Install** (uses `yay -Ss` and `yay -S`)
  - **Installed Packages** (uses `yay -Qe` / `yay -Rns`)
  - **Update** (uses `yay -Qu` / `yay -S` / `yay -Syu`)
- Checkboxes for multiple selection  
- Detail panel for descriptions  
- Option to keep Konsole open after finish  

---

## 📥 Installation

### 1. Install dependencies
```bash
sudo pacman -Syu --needed python python-pip python-pyqt5 git base-devel
```

### 2. Install yay (if not already installed)
```bash
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

### 3. Clone and run Yay GUI Manager
```bash
git clone https://github.com/ahmoodio/yay-gui-manager.git
cd yay-gui-manager
pip install --user -r python/requirements
chmod +x python/yay_gui.py
./python/yay_gui.py
```

---

## 🚀 Usage

- **Search / Install tab**
  - Type a package name or keyword
  - Click a result to see details
  - Tick the checkbox(es)
  - Click **Install Selected** (runs `yay -S`)

- **Installed Packages tab**
  - Click **Refresh** to load installed packages (`yay -Qe`)
  - Filter using the search box
  - Select packages and click **Uninstall Selected** (`yay -Rns`)

- **Update tab**
  - Click **Refresh Updates** to check for new versions (`yay -Qu`)
  - Select some packages and click **Update Selected**
  - Or click **Update All** to run `yay -Syu`

---

## 🛠️ Optional: Desktop Launcher  

Create a file:

`~/.local/share/applications/yay-gui.desktop`

with:

```ini
[Desktop Entry]
Name=Yay GUI Manager
Comment=Graphical interface for yay package manager
Exec=/usr/bin/python3 /path/to/yay-gui-manager/python/yay_gui.py
Icon=yay-gui
Terminal=false
Type=Application
Categories=System;Utility;
```

Replace `/path/to/yay-gui-manager` with the real path on your system.

Add an icon (optional):

- Place `yay-gui.png` in `/usr/share/icons/hicolor/256x256/apps/`  
- Or in `~/.local/share/icons/hicolor/256x256/apps/`

---

## 🛠️ Development

```bash
git clone https://github.com/ahmoodio/yay-gui-manager.git
cd yay-gui-manager
pip install --user -r python/requirements
./python/yay_gui.py
```

Feel free to open issues or PRs for:

- New views or filters  
- Better error handling and logging  
- Translations / localization  
- AppImage / Flatpak / PKGBUILD packaging  

---

## ⚠️ Disclaimer  

This is a GUI wrapper around `yay`. Always check what will be installed or removed, and review AUR PKGBUILDs as you normally would in the terminal.

---

## 📄 License  

This project is licensed under the **MIT License** — see the `LICENSE` file.

---

## ⭐ Support  

If you find this useful, please ⭐ the repo!
