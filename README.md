# Setup

### Clone the repo and cd into it
```
git clone --bare https://github.com/fredericko/dotfiles.git $HOME/.dotfiles && cd $HOME/.dotfiles 
```

### Get the master worktree and cd into it
```
git worktree add master && cd master
```

### Source aliases and checkout master using dot alias
```
source .config/aliases && dot checkout master
```

### Run setup.sh to add dependencies
```
./setup.sh
```

### Install [Zap](https://www.zapzsh.com/)
```
zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh) --branch release-v1
```


