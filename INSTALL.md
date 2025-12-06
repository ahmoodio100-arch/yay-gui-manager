# 📥 How to Install Yay GUI Manager

Follow these simple steps to install Yay GUI Manager on any Arch-based system.

---

## 🔧 1. Install Required Dependencies

```bash
sudo pacman -Syu --needed python python-pyqt5 yay git base-devel
```

---

## 📦 2. Download Yay GUI Manager

```bash
git clone https://github.com/ahmoodio/yay-gui-manager.git
cd yay-gui-manager
```

---

## ▶️ 3. Run the Application

Run directly:

```bash
python yay_gui.py
```

Or make it executable:

```bash
chmod +x yay_gui.py
./yay_gui.py
```

---

# 🖥️ Optional: Add to Application Menu

## Automatic install (recommended)

```bash
chmod +x install-desktop.sh
./install-desktop.sh
```

This will:

- Install the `.desktop` launcher
- Install the icon (if `desktop/yay-gui.png` exists)
- Add Yay GUI Manager to your menu
- Auto-detect the correct Exec path

---

## Manual install

```bash
cp desktop/yay-gui.desktop ~/.local/share/applications/
cp desktop/yay-gui.png ~/.local/share/icons/hicolor/256x256/apps/
```

---

## 📦 AUR Installation (Coming Soon)

```bash
yay -S yay-gui-manager-git
```

---

End of installation guide.
