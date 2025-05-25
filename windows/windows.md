## Set up Windows machine

** Windows Backup is active (Settings -> Accounts -> Windows Backup) but dont know if it works as expected (install apps, remember settings preferences)

<br>

## Checklist for general settings
1. Monitor: adjust resolution, hz and brightness (software or monitor buttons)
2. Turn of notifications
3. Batery: turn on energy saver, timeout for screen and sleep
4. Set a black background
5. Turn off dymamic lighting 
6. Set current time zone and add Russian language
7. Remove garbage from taskbar

<br>

## Apps
1. Chrome (configured)
2. VSCode (configured)
3. GHUB -> Logitech devices software (mouse: 800 dpi ; keyboard: color wave, rate 10000)
4. Docker
5. Excel + Power BI -> log in to account
* Linux installation instruction in another file

<br>

## Power Toys
1. Tabs grid -> Fancy Zones -> grid 2 tabs, 30/70. Plus enable option "Enable quick layout switch"
2. Remap Escape to Caps Lock -> Keyboard Manager -> Remap key -> first Caps lock then Escape 
3. Get rid of weird animations: Settings -> Adjust the appearance and performance of windows -> uncheck "Animate windows when minimizing and maximizing" + "Show shadows udner windows" 

<br>

## AutoHotkey
1. Disable `Win + L` . Press `Start`, type `regedit.exe`, and press **Enter** to open the Registry Editor. Navigate to the following key (create it if it doesn't exist): "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System".  On the right-hand side, create a new **DWORD (32-bit) Value** named `DisableLockWorkstation` and select "1"
2. Add shortcuts and run script at startup
   - Run `script.ahk` at startup: `Win + R` -> `shell:startup` -> add the file to the folder

<br>

## Keyboard Shortcuts

| Shortcut         | Action / Description                       |
|------------------|--------------------------------------------|
| `Win`            | Open Start Menu                            |
| `Win + I`        | Close active tab                           |
| `Win + D`        | Show Desktop / Hide all tabs               |
| `Win + H / L`    | Move tab left or right                     |
| `Win + J`        | Hide current tab                           |
| `Win + K`        | Expand tab to full screen                  |
| `Win + ,`        | Open last hidden tab                       |
| `Alt + Tab`      | Open tab selection panel                   |
| `Alt + H / L`    | Move left/right in tab panel               |
