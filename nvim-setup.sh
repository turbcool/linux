# Kickstart:
mkdir -p ~/.config/nvim
curl https://raw.githubusercontent.com/nvim-lua/kickstart.nvim/master/init.lua -o ~/.config/nvim/init.lua

# nvim [Enter]
# nvim

# :Mason; ember-language-server -> i

# AstroVim:
sudo zypper install ripgrep
mv ~/.config/nvim ~/.config/nvim.bak
git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim

# Install Nerd Fonts:
# https://www.nerdfonts.com/font-downloads

# Go + lazygit:
sudo zypper install go
go install github.com/jesseduffield/lazygit@latest
