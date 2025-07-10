**Windows set up for Dev**

1. Settings
- Display: select monitor, adjust hz
- Battery: set timeouts to "never" + turn on energy saver
- Appearance: dark mode, black background, turn off dynamic lighting
- Profile: log in to Microsoft
- Language and region: Poland time zone + add Russian language
- Taskbar: remove garbage, turn off notifications, leave only chrome, vscode, excel

At the end update Windows

<br>

2. Power Toys
- Disable animations: `adjust the appearance and performance of Windows` -> turn off second option
- Fancy Zones: Override Windows Snap (Zone index)
- Keyboard Manager: Remap Escape to Caps Lock + Alt F4 to Win O

<br>

3. Linux
- Windows Features: activate `Virtual Machine Platform` and `Windows Subsystem for Linux`
- Install WSL + Ubuntu with troubleshooting: https://www.youtube.com/watch?v=CcwNTmOxOdI&t=544s
- Update system and install Python:
    - `sudo apt update && sudo apt upgrade -y`
    - `sudo apt install -y python3 python3-pip python3-venv`
- Install zsh:
    - `sudo apt install zsh`
    - `chsh -s $(which zsh)`
- Plugins for zsh (syntax highlighting, auto-suggestions, dbt completion):
    - `mkdir .zsh-plugins`
    - `git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh-plugins/zsh-autosuggestions`
    - `git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh-plugins/zsh-syntax-highlighting`
    - `curl https://raw.githubusercontent.com/fishtown-analytics/dbt-completion.bash/master/dbt-completion.bash > ~/.zsh-plugins/.dbt-completion.bash`
    - Copy `.zshrc` file from repo 
- Git:
    - `git config --global user.email "gnoevoyandrey044@gmail.com"`
    - `git config --global user.name "bars1k"`

<br>

4. VSCode
- Install extensions: Python, Docker, Jupyter, WSL, Copilot, Git History, DBT, Rainbow CSV
- Copy settings.json and keybindings.json from repo
- Copy github repos 

<br>

5. Programs
- Install: Chrome, Logitech Hub, Telegram, Docker, Excel
- Remove: Antivirus
- Startapps: Docker, Logitech Hub
