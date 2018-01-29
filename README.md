# dotfiles

A collection of my dotfiles for development.

## Installation

### On Linux

```sh
bash <(curl -s https://raw.githubusercontent.com/pxgamer/dotfiles/master/install-linux.sh)
```

### On Mac

```sh
bash <(curl -s https://raw.githubusercontent.com/pxgamer/dotfiles/master/install-osx.sh)
```

### On Windows

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/pxgamer/dotfiles/master/install-win.ps1'))
```

### Optional software

- [Git Extras](https://github.com/tj/git-extras)
- [NodeJS](https://nodejs.org)
- [Yarn](https://yarnpkg.org)
	- [Babel](https://yarn.pm/babel)
	- [Lebab](https://yarn.pm/lebab)
	- [Standard JS](https://yarn.pm/standard)
	- [tldr](https://yarn.pm/tldr)
	- [tldr-lint](https://yarn.pm/tldr-lint)
- [Ruby](https://www.ruby-lang.org)
	- [RubyGems](https://rubygems.org)
	- [Travis CLI](https://github.com/travis-ci/travis.rb)
- [Phive](https://github.com/phar-io/phive)
- [Vagrant](https://vagrantup.com)

## Testing

```bash
cd tests
bash ./install.sh
```

### For Linux testing

```bash
bash ./linux-tests.sh
```

### For OSX testing

```bash
bash ./osx-tests.sh
```
