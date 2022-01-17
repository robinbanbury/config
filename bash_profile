# Lives in ~/.bash_profile

if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

# LiquidPrompt:
# - git clone https://github.com/nojhan/liquidprompt.git ~/Applications/liquidprompt
# Only load Liquid Prompt in interactive shells, not from a script or from scp
if [ -f ~/Applications/liquidprompt/liquidprompt ]; then
    [[ $- = *i* ]] && source ~/Applications/liquidprompt/liquidprompt
fi

