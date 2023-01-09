#TODO: passwords as variables; shell scripting with prompts

# development tools
#sudo zypper install 


#Git config
git config --global push.default current


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
