## Installing Linux on Windows
Great video (cover troubleshooting) [Installing Linux on Windows 11 (WSL)](https://www.youtube.com/watch?v=CcwNTmOxOdI&t=544s).

**General workflow:**
1. Activate WSL and Virtual Machine Platform in Windows Features. 
2. Install Ubuntu from Microsoft Store.
3. Run as administrator powershell and provide command `wsl --install`
4. Provide username, password and update system

<br>

## Install and configuring ZSH
1. Installation repo [github link](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)
2. Copy data from .zshrc file
3. Create folder .zsh-plugins in home dir and clone such repos into it:
    - auto-suggestions [github link](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md)
    - syntax-highlighting [github link](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md)
    - dbt completion [github link](https://github.com/dbt-labs/dbt-completion.bash)

**features:**
- auto-completion
- syntax highlighting
- colors and styles
- vim mode
- dct completion and python alliases