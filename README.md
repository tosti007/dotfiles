# Dotfiles

These dotfiles are managed using
[Git](https://git-scm.com/),
[GNU Stow](https://www.gnu.org/software/stow/stow.html) and 
[Yay](https://github.com/Jguer/yay).

## Quick installation

Clone and install:

```shell
$ git clone https://github.com/tosti007/dotfiles.git ~/.dotfiles
$ cd ~/.dotfiles
$ ./install.sh
```

## Directory structure
This repo consists of 4 directories:

 - **assets** additional files, such as the `ask` command and wallpapers.
 - **bin** contains some command line scripts that I tend to use often.
 - **packages** contains `*.pkgs` files that list packages installed with yay.
 - **user** holds folders containing configuration files that should be placed in `$HOME`.
 - **system** holds folders containing configuration files that should be placed in `/`.

### pkgs files
pkgs files are simple text files containing the package names as you would install them with `yay -S`. These packages can be both newline or space seperated. Additionally it comments can be made with `#`, in which case all content up to the newline will be ignored.

### config folders
The `user` and `system` folders hold sub-folder with the actual configuration files. The names of these sub-folders are arbitrary and I grouped the config per-main-package base, i.e. config for module of a package will be in the same group, but packages that operate on their own are split.

## Installation script
The installation script links the configuration files to their correct location. If no arguments are given it will iterate over all files/folders in `packages`, `user`, and `system`. To install only a single configuration group the path relative to the installation script (e.g. `user/i3`) can be passed. There are no other options or commands.

It was origionally written by [Robbert van der Helm](https://github.com/robbert-vdh) (from whom I forked this repo) which I modified to suit my preferences.

## Temporary ignore changes in files
Some files might contain redundant information, such as version number (looking at you Firefox's profile.ini). To have git temporarily igore that file use:
```bash
git update-index --skip-worktree [path-to-file]
```

Then to add track the changes in the file again use:
```bash
git update-index --no-skip-worktree [path-to-file]
```
