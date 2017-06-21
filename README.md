homebrew-golem
=================

Homebrew Tap for Golem.

## Requirements
System Mac OS X 10.10 (Yosemite) or later.

[Homebrew](https://brew.sh/) - The missing package manager for Mac OS.

Public IP addres or connection via port (see [installation notes](https://github.com/golemfactory/golem/wiki/Installation)).



Due to an incompatibility of recent `Xcode` and `ethereum` we have removed `ethereum` as dependency from `golem` formula.
However, `ethereum` must be installed before `golem`. To install `ethereum` please tap into your system terminal:
```
brew install ethereum/ethereum/ethereum
```

The `ethereum` compiles during installation with Homebrew, and the new `Xcode` produces something that may not start. 
It is dependant on the Xcode you have on your computer. This can easily be checked by putting `geth` in the system terminal. 
If you get `Killed: 9` as a result, you have a problem.

There are few ways to go around the problem. One of these is to install version under development:
```
brew reinstall --devel ethereum/ethereum/ethereum
```
More advanced users can patch `go-ethereum` v1.5.9 (see [link](https://github.com/golang/go/issues/19734)).

Users who installed `golem` before April 6th, 2017 should run:
```
brew untap mfranciszkiewicz/ethereum
```
Depending on the installation, some users may have: `Error: No available tap mfranciszkiewicz/ethereum.` Subsequently:
```
brew uninstall ethereum
sudo rm -rd ~/Library/Caches/Homebrew/*
brew install --devel ethereum/ethereum/ethereum
```

## Installation of Golem
```
brew tap golemfactory/golem
brew install golem
```
Please keep in mind that Golem depends on many packages. Therefore, the installation varies on the computer. Some of the packages may already be installed on your computer and the others have to be linked. A typical example is the `docker-machine` package, which provides `brew link docker-machine`. After linking, you must restart Golem installation.


## Running Golem
```
golemapp
```


## Reinstallation
```
brew tap golemfactory/golem
brew reinstall golem
```


## Upgrading
```
brew update && brew upgrade
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
