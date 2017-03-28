homebrew-golem
=================

Homebrew Tap for Golem

## Installation of Golem
```
brew tap golemfactory/golem
brew install golem
```


## Running Golem
`golemapp`


## Upgrading
```
brew update && brew upgrade
```


## Versions
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
* Run `brew update` and `brew upgrade`.
* Fix what the `brew doctor` says.
* Reinstall dependencies.
* Remove docker images `rm -rd /Users/<user>/.docker/machine/machines/golem/*`.
