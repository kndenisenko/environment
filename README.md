# environment
Dev environment: OMZ + powerline10k + other stuff

0. Prepare system
1. Install ZSH
2. Install OMZ
3. Install fonts (need update by manual)
4. Install powerline10k
5. install OMZ plugins
6. fix .zshrc (need update about plugins)

### prepare
apt update
apt upgrade
apt install git vim mc curl wget tmux

### install ZSH
```shell 
sudo apt install zsh
chsh -s /bin/zsh
```

### Install OMZ
```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Install fonts (need update by manual)
whoops

### Install powerline10k
```shell
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```
Exit or logout, then connect again and finist startup settings

### install OMZ plugins
Need to install 2 plugins:
1. zsh-autosuggestions
2. zsh-syntax-highlighting

```shell
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
```
Then open VIM and add zsh-autosuggestions to plugins list. 
Than logout

### FIX .zshrc
vim .zshrc and add:

```
alias c="clear"
alias p="ping"
alias h="host"

bindkey "[D" backward-word
bindkey "[C" forward-word
bindkey "^[a" beginning-of-line
bindkey "^[e" end-of-line

# green on success, red on failure; '#' if root, '$' otherwise
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX=' %F{%(?.76.196)}%(#.#.$)%f '
```

than logout