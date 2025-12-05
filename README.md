# 🖥️ Yay GUI Manager – Rebuilt  
A modern, fast, and user-friendly graphical interface for **yay** on Arch-based systems (Arch, CachyOS, EndeavourOS, Manjaro with yay installed, etc.).

This GUI removes the need to run long terminal commands and gives you a clean 3-tab interface for:

- 🔎 **Searching & installing packages**
- 📦 **Managing installed packages (remove, filter, inspect)**
- 🔄 **Checking & updating system + AUR packages**

Designed with a dark KDE-friendly theme and built using **Python + PyQt5**.

---

## ✨ Features

### 🔍 Search & Install
- Search packages using `yay -Ss`
- View name, version, repo/AUR source
- Click a package to see detailed info
- Select multiple packages with checkboxes
- Install selected packages (`yay -S`)
- Optional: keep Konsole open after finish

**GIF Demo Placeholder:**  
_Add your GIF here after upload_

---

### 📦 Installed Packages Manager
- Load installed packages using `yay -Qe`
- Fast filtering field
- Select packages to remove
- Uninstall with `yay -Rns`
- Shows version & package source

**Screenshot Placeholder**

---

### 🔄 Updates View
- Scan for updates (`yay -Qu`)
- Separates repo + AUR updates
- Shows current vs new versions
- Update selected packages (`yay -S`)
- Update everything (`yay -Syu`)

**Screenshot Placeholder**

---

## 📥 Installation

### 1. Install required dependencies  
```bash
sudo pacman -Syu --needed python python-pip python-pyqt5 git base-devel
```

### 2. Install yay (if not installed)
```bash
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

### 3. Clone and run the GUI
```bash
git clone https://github.com/ahmoodio/yay-gui-manager.git
cd yay-gui-manager
pip install --user -r python/requirements
chmod +x python/yay_gui.py
./python/yay_gui.py
```

---

## 🚀 Usage

- **Search Tab:**  
  Type a package → view details → install.

- **Installed Packages Tab:**  
  View what’s installed → select → uninstall.

- **Update Tab:**  
  Check updates → update selected or update all.

---

## 🛠️ Development

```bash
git clone https://github.com/ahmoodio/yay-gui-manager.git
cd yay-gui-manager
pip install --user -r python/requirements
./python/yay_gui.py
```

---

## ⚠️ Disclaimer  
This is a GUI wrapper around `yay`. Always review package actions and AUR build scripts before installing.

---

## 📄 License  
This project is licensed under the **MIT License** — see the `LICENSE` file.

---

## ⭐ Support  
If you find this useful, please ⭐ the repo!
