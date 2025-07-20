# Cheese 🧀

Cheese is a **cross-platform package manager** written in Python.  
It allows you to easily install, manage, and remove custom packages from your own repository.

---

## **Features**
- **Cross-platform support** (Linux, macOS, Windows).
- Install packages from a GitHub-based package repository.
- Simple commands:
  - `cheese pull <package>` – Install a package.
  - `cheese del <package>` – Remove a package.
  - `cheese list` – Show installed packages.
  - `cheese --update` – Update the Cheese CLI itself.
  - `cheese --credits` – Show credits.
- Lightweight and easy to set up using `curl` or a Windows batch installer.

---

## **Installation**

### **Linux / macOS**
```bash
curl -fsSL https://raw.githubusercontent.com/LightingDev/cheese/main/install.sh | bash
source ~/.bashrc   # or source ~/.zshrc

### **Windows**
```bash
curl -L https://raw.githubusercontent.com/LightingDev/cheese/main/install.bat -o install.bat
install.bat

