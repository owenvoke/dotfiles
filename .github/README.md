# dotfiles

[![Shell][ico-shell]][link-shell]
[![Coding Style][ico-code-style]][link-code-style]
[![IDE][ico-ide]][link-ide]
[![IDE Theme][ico-ide-theme]][link-ide-theme]

A collection of my dotfiles for development.

## Install

```bash
git clone https://github.com/owenvoke/dotfiles && cd dotfiles && ./install
```

## Customising environment and paths

To customise the environment, create a file called `$HOME/.env.local` and fill in any variables using `export`.

To customise the path loading, create a file called `$HOME/.paths.local` and add paths using `PATH="[new_path]:$PATH"`.

To customise the shell aliases list, create a file called `$HOME/.shell-aliases.local` and add aliases to it.

[ico-code-style]: https://img.shields.io/badge/code%20style-laravel-green.svg?style=flat-square
[ico-ide]: https://img.shields.io/badge/ide-phpstorm-775af8.svg?style=flat-square
[ico-ide-theme]: https://img.shields.io/badge/ide%20theme-github-1f88fe.svg?style=flat-square
[ico-shell]: https://img.shields.io/badge/shell-zsh-blue.svg?style=flat-square

[link-code-style]: https://docs.styleci.io/presets#laravel
[link-ide]: https://jetbrains.com/phpstorm
[link-ide-theme]: https://github.com/freekmurze/phpstorm-color-schemes/blob/master/GitHub.icls
[link-shell]: http://zsh.sourceforge.net
