# YAY-GUI-MANAGER

<div align="center">
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

## 📖 Overview
**Yay GUI Manager** is a modern graphical interface designed to simplify managing Arch Linux and AUR packages. It wraps the powerful `yay` helper in an intuitive interface, making package operations accessible to everyone from beginners to power users.

### Core Features
* 🎨 **Desktop Integration:** Automatically handles icon resizing, desktop database updates, and menu entry setup.
* ⚙️ **Package Management GUI:** Search, install, update, and uninstall packages with a few clicks.
* 🛠️ **Automated Setup:** Hassle-free deployment with scripts that manage dependencies and environment configuration.
* 📦 **Build & Install:** Uses PKGBUILDs to streamline packaging and distribution.
* 🔄 **System Sync:** Keeps desktop icons and application databases current during system changes.

---

## 🚀 Getting Started

### Prerequisites
Before installing, ensure you have the following on your Arch-based system:
* **Python 3**
* **PyQt5**
* **yay** (AUR helper)
* **git** (to clone the repo)

### Installation
Build from source and set up the environment:

1.  **Clone the repository:**
    ```sh
    git clone [https://github.com/ahmoodio/yay-gui-manager](https://github.com/ahmoodio/yay-gui-manager)
    cd yay-gui-manager
    ```

2.  **Run the setup script:**
    The setup script will install necessary system dependencies and configure the desktop entry.
    ```sh
    chmod +x setup.sh
    ./setup.sh
    ```

### Usage
Once installed, you can launch the application from your desktop menu or via the terminal:
```sh
python yay_gui.py
