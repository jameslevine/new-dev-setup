# Setting up a new Dev Environment

This is a repo for setting up a new dev environment. Most of the code is written in bash and focused on automating the setup process on a new Mac OS. Useful for when starting a new job and setting up a dev environment according to required tools and best practices.

## Index

- [Setting up a new Dev Environment](#setting-up-a-new-dev-environment)
  - [Index](#index)
  - [Software Update](#software-update)
  - [Brew Install Casks](#brew-install-casks)
  - [VS Code Setup](#vs-code-setup)
  - [Chrome Bookmarks](#chrome-bookmarks)
  - [Useful Links](#useful-links)
  - [Architecture](#architecture)

## Software Update

This folder contains a shell script (software_update.sh) that updates the software on Mac OS to the latest.

To run the script, run (from project root):

```
sudo bash ./software-update/software_update.sh
```

## Brew Install Casks

This folder contains a shell script (brew_install_casks.sh) that installs homebrew and a list of casks, applications and app store applications.

To run the script, run (from project root):

```
sudo bash ./brew-install-casks/brew_install_casks.sh
```

## VS Code Setup

This folder contains a shell script (vscode_extensions_install.sh) that installs extensions for VS Code and contains a settings file for use in a new VS Code.

To run the script, run (from project root):

```
sudo bash ./vscode-extensions-install/vscode_extensions_install.sh
```

## Chrome Bookmarks

This folder contains a chrome bookmarks file that can be imported into Chrome.

To update the file, just export the new one from Chrome and replace `james_bookmarks.html`.

## Useful Links

- [Useful Links Folder](./useful-links/USEFUL_LINKS.md)

## Architecture

I created a tool you can view here which converts an object to a visual folder tree. View the tool here:

[Object to Visual Folder Tree Tool (Code Sandbox)](https://codesandbox.io/s/file-tree-logger-lsbrmv?file=/src/index.js)

The objects and final trees are stored in `./architecture`
