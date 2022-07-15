export LANG='en_US.UTF-8'
export LANGUAGE='en_US:en'
export LC_ALL='en_US.UTF-8'
export TERM=xterm

##### Zsh/Oh-my-Zsh Configuration
export ZSH="/root/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=()


CASE_SENSITIVE="true"
source $ZSH/oh-my-zsh.sh
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_to_last"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(user dir vcs status)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
POWERLEVEL9K_STATUS_OK=false
POWERLEVEL9K_STATUS_CROSS=true

echo "\t"
echo "\t"
echo "\t███╗   ███╗███████╗████████╗ ██████╗  ██████╗ ██╗     ███████╗███████╗████████╗"
echo "\t████╗ ████║██╔════╝╚══██╔══╝██╔═══██╗██╔═══██╗██║     ██╔════╝██╔════╝╚══██╔══╝"
echo "\t██╔████╔██║███████╗   ██║   ██║   ██║██║   ██║██║     ███████╗█████╗     ██║"
echo "\t██║╚██╔╝██║╚════██║   ██║   ██║   ██║██║   ██║██║     ╚════██║██╔══╝     ██║"
echo "\t██║ ╚═╝ ██║███████║   ██║   ╚██████╔╝╚██████╔╝███████╗███████║███████╗   ██║"
echo "\t╚═╝     ╚═╝╚══════╝   ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝╚══════╝╚══════╝   ╚═╝"
echo "\t                                 v1.0.0                                      "
echo "\t  Threader3000, Oh365UserFinder, MSDNSScan, MSDorkDump, GeeMailUserFinder"
echo "\t                               By The Mayor"

export PATH=$PATH:/opt/msToolSet-Docker
