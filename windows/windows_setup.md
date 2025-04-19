# Windows Productivity Configuration

## Keyboard Shortcuts

| Shortcut         | Action / Description                       |
|------------------|--------------------------------------------|
| `Win`            | Open Start Menu                            |
| `Win + I`        | Close active tab                           |
| `Win + P`        | Open Settings                              |
| `Win + O`        | Open File Explorer                         |
| `Win + D`        | Show Desktop / Hide all tabs               |
| `Ctrl + 1`       | Open workspace (Clock, Chrome, VSCode)     |
| `Ctrl + 2`       | Open Chrome                                |
| `Ctrl + 3`       | Open VSCode                                |
| `Win + H / L`    | Move tab left or right                     |
| `Win + J`        | Hide current tab                           |
| `Win + K`        | Expand tab to full screen                  |
| `Win + ,`        | Open last hidden tab                       |
| `Alt + Tab`      | Open tab selection panel                   |
| `Alt + H / L`    | Move left/right in tab panel               |

- To use `H`, `J`, `K`, `L` for window management, need to **disable `Win + L`** (lock screen) in Windows and add an **AutoHotkey** script. 
- `Ctrl + 1` opens a custom workspace when configured via **PowerToys** using **FancyZones** and **Workspace**.

---

## Disable `Win + L` for Vim-style Motions

1. Press `Start`, type `regedit.exe`, and press **Enter** to open the Registry Editor.
2. Navigate to the following key (create it if it doesn't exist): "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System".
3. On the right-hand side, create a new **DWORD (32-bit) Value** named `DisableLockWorkstation` and give it one of these values:
    - `1` to disable the lock workstation.
    - `0` to enable the lock workstation.
4. Click **OK**, then restart or log out to apply changes.

[View the original instruction on Microsoft Answers](https://answers.microsoft.com/en-us/windows/forum/all/how-i-can-disable-the-function-window-key-l-used/fdb6696e-eb2f-4115-a79d-771b7e0bb496)

---

## PowerToys Setup

PowerToys enhances your productivity by allowing you to remap keys, split windows the way you want, and manage multiple tasks with keyboard shortcuts.

1. Install PowerToys from the [Microsoft Store](https://apps.microsoft.com/store/detail/powertoys/XP89DCGQ3K6VLD)
2. **Keyboard Manager** – Remap `Escape` to `Caps Lock`  
   ![Remap Caps Lock to Escape](img/remap_escape.png)
3. **FancyZones** – Create a 2-zone layout with 30/70 split and margin  
4. **Workspaces** – Auto-launch apps (VSCode, Chrome, Clock) with `Ctrl + 1`

---

## AutoHotkey Setup

AutoHotkey lets you remap Vim-style shortcuts, enabling navigation with `H`, `J`, `K`, `L` for easier window management.

1. Download AutoHotkey, [autohotkey.com](https://www.autohotkey.com/)
2. Run `script.ahk` at startup: `Win + R` -> `shell:startup` -> add file to folder

---

## Appearance Settings

1. Disable animations when minimizing and maximizing windows: setting -> adjust the appearance and performance of windows  
    ![Disable animations](img/disable_animations.png)
2. Black background, blue accent color
3. Get rid of unnecessary apps/functions from the taskbar and main screen
