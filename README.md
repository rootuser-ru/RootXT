# ROOTXT

Educational cybersecurity framework for Security Testing. Developed by rootuser.ru popularly Known in Instagram 

## ⚠️ UNDER DEVELOPMENT

ROOTXTv1 is an educational project.

- Do not expose login simulations to the public internet

## Requirements

- Kali Linux / Debian
- Bash
- PHP
- Git

## Kali Linux

```bash
cd /home/kali
git clone https://github.com/rootuser-ru/RootXT.git
cd RootXT
chmod +x rootxt.sh
./rootxt.sh

## FOR TERMUX

### Requirements

Install Termux and update packages:

```bash
pkg update
pkg upgrade
pkg install proot-distro
proot-distro install debian
proot-distro login debian
apt update
apt install php -y
php -v
cp -r /data/data/com.termux/files/home/RootXT ~/RootXT
cd ~/RootXT
chmod +x rootxt.sh
./rootxt.sh

##Run again later

##Every time you want to use RootXT:


##FOR Public HOST
##Use CLoudflaared

cloudflared tunnel --url your local host link



## CONNECT WITH ME

Follow me on Instagram for cybersecurity projects, tutorials, tools and updates.

📸 **Instagram:** [@rootuser.ru](https://www.instagram.com/rootuser.ru/)
