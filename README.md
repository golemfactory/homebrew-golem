homebrew-golem
=================

Homebrew and Caskroom Tap for Golem.

## Requirements
- __A public IP address or forwarded TCP ports: 40102, 40103 and 3282__ (see [installation notes](https://github.com/golemfactory/golem/wiki/Installation)).

- Mac OS X 10.10 (Yosemite) or later.

- [Homebrew](https://brew.sh/) - The missing package manager for Mac OS.

## Installation
Type in terminal:
```
brew tap caskroom/cask
brew tap golemfactory/golem
brew cask install golem

# docker-machine-driver-xhyve package needs root owner and a suid bit

sudo chown root:wheel $(brew --prefix)/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve
sudo chmod u+s $(brew --prefix)/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve
```
Please keep in mind that Golem depends on many packages. Therefore, the installation varies on the computer. Some of the packages may already be installed on your computer and the others have to be linked. A typical example is the `docker-machine` package, which provides `brew link docker-machine`. After linking, you must restart Golem installation.

`docker-machine-driver-xhyve` package needs root owner and uid, therfore you will be asked for root password during installation.

## Running Golem
Type `golem` into Spotlight or select `golem` from Applications.

__Golem is still under development and is not signed with a valid signature.
The first time you run Golem, your Mac OS X system will surely shout out that it cannot be opened because the software is from an undefined developer. To work around the problem please double click the application from Applications folder in Finder together with `control` key. Subsequently, click `open`.__


## Reinstalling
```
brew tap golemfactory/golem
brew reinstall golem
brew cask reinstall golem
```


## Upgrading
```
brew update && brew upgrade
```

## Removing
```
brew cask uninstall golem
brew uninstall golem
```

## Info and Versions
Print information about installed Golem (including dependencies) with:
```
brew info golem
```

List available versions with:
```
ls -l /usr/local/Cellar/golem
```

If you have other versions installed, you can switch with:
```
brew switch golem <version>
```


## Troubleshooting

* Use `--verbose` to get more info while installing.
* Remove cached Homebrew files `sudo rm -rd ~/Library/Caches/Homebrew/*`
* Run `brew update && brew upgrade`.
* Fix what the `brew doctor` says.
* Remove docker images `rm -rd /Users/<user>/.docker/machine/machines/golem/*`.
* Remove LOCK file `rm /Users/<user>/Library/Application\ Support/golem/default/LOCK`.
