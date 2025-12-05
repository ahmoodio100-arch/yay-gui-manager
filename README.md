<p align="center">
  <img src="https://i.imgur.com/P2NBMK4.png" alt="Yay GUI Manager logo" width="180"/>
</p>

<h1 align="center">Yay GUI Manager – Rebuilt</h1>

A modern, fast, and user-friendly graphical interface for **yay** on Arch-based systems.

---

## 🎥 Demo GIFs

### 🔍 Search & Install
![Search](https://s6.ezgif.com/tmp/ezgif-65dc73a013a38c94.gif)

### 📦 Installed Packages
![Installed](https://s6.ezgif.com/tmp/ezgif-6731420813f92e67.gif)

### 🔄 Updates
![Updates](https://s6.ezgif.com/tmp/ezgif-6d68827d82fa3940.gif)

## 🛠️ Development

---

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


## 🧩 Desktop Launcher Installation

### Automatic installation (recommended)

Run:

```bash
./install-desktop.sh
```

This script will:

- Copy the `.desktop` launcher into `~/.local/share/applications/`
- Copy the icon into the correct system icon directory
- Auto‑detect the correct `Exec=` path
- Refresh icon & desktop databases  
- Make the app show up in your system menu

---

## ⚠️ Disclaimer  

This is a GUI wrapper around `yay`. Always check what will be installed or removed, and review AUR PKGBUILDs as you normally would in the terminal.

---

## 📄 License

Included in LICENSE file.

---

## ⭐ Support  

If you find this useful, please ⭐ the repo!
