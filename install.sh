#TODO: passwords as variables; shell scripting with prompts

# development tools
#sudo zypper install 

# nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

#Git config
git config --global push.default current

# Joplin (source: https://github.com/taw00/joplin-rpm)
#sudo wget https://copr.fedorainfracloud.org/coprs/taw/joplin/repo/opensuse-tumbleweed/taw-joplin-opensuse-tumbleweed.repo -O /etc/zypp/repos.d/taw-joplin-opensuse-tumbleweed.repo
#sudo zypper refresh
#sudo zypper install joplin

# Yandex Disk (source: https://nkonev.name/post/90)
sudo zypper install davfs2
sudo usermod -aG davfs2 turb
sudo mkdir -p /run/media/turb/yandex.ivnaidanov
sudo chown -R turb:turb /run/media/turb/yandex.ivnaidanov
chmod 777 /run/media/turb/yandex.ivnaidanov
echo "https://webdav.yandex.ru /run/media/turb/yandex.ivnaidanov davfs noauto,user 0 0" | sudo tee -a /etc/fstab

# Davfs2 secrets:
mkdir ~/.davfs2
echo "/run/media/turb/yandex.ivnaidanov ivnaidanov@hse.ru zwmfoqaiyyzhufeg" | sudo tee -a ~/.davfs2/secrets
chmod 600 ~/.davfs2/secrets


# Russian Root certificates:
# Download: https://www.gosuslugi.ru/crt
sudo cp russian_trusted_sub_ca_pem.crt /usr/share/pki/trust/anchors
sudo cp russian_trusted_root_ca_pem.crt /usr/share/pki/trust/anchors
sudo update-ca-certificates

#lazydocker
go install github.com/jesseduffield/lazydocker@latest
echo "alias lzd='lazydocker'" >> ~/.bashrc #lzd alias
