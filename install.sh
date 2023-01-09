#TODO: passwords as variables; shell scripting with prompts

# development tools
#sudo zypper install 


#Git config
git config --global push.default current


# Yandex Disk
sudo zypper install davfs2
sudo usermod -aG davfs2 turb
sudo mkdir -p /run/media/turb/yandex.ivnaidanov
sudo chown -R turb:turb /run/media/turb/yandex.ivnaidanov
chmod 777 /run/media/turb/yandex.ivnaidanov
echo "/run/media/turb/yandex.ivnaidanov ivnaidanov@hse.ru egqopzpuhkdieybq" | sudo tee -a /etc/davfs2/secrets
echo "https://webdav.yandex.ru /run/media/turb/yandex.ivnaidanov davfs noauto,user 0 0" | sudo tee -a /etc/fstab
chmod 600 ~/.davfs2/secrets
