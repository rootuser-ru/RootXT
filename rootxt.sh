#!/usr/bin/env bash

SITE_DIR=".sites"
PORT=8080

clear
cat << 'EOF'

██████╗  ██████╗  ██████╗ ████████╗██╗  ██╗████████╗
██╔══██╗██╔═══██╗██╔═══██╗╚══██╔══╝╚██╗██╔╝╚══██╔══╝
██████╔╝██║   ██║██║   ██║   ██║    ╚███╔╝    ██║
██╔══██╗██║   ██║██║   ██║   ██║    ██╔██╗    ██║
██║  ██║╚██████╔╝╚██████╔╝   ██║   ██╔╝ ██╗   ██║
╚═╝  ╚═╝ ╚═════╝  ╚═════╝    ╚═╝   ╚═╝  ╚═╝   ╚═╝

           SECURITY FRAMEWORK  INSTAGRAM @rootuser.ru
EOF

echo
RED='\033[1;31m'
DARK_RED='\033[0;31m'
WHITE='\033[1;37m'
GRAY='\033[0;90m'
RESET='\033[0m'

echo -e "${DARK_RED}╔══════════════════════════════════════════════╗${RESET}"
echo -e "${DARK_RED}║${RESET}              ${RED}R O O T X T${RESET}               ${DARK_RED}║${RESET}"
echo -e "${DARK_RED}║${RESET}        ${GRAY}ADVANCED SECURITY FRAMEWORK${RESET}       ${DARK_RED}║${RESET}"
echo -e "${DARK_RED}╚══════════════════════════════════════════════╝${RESET}"
echo
echo -e "${GRAY}[+]${RESET} Purpose : ${WHITE}Follow Me on Instagram @rootuser.ru${RESET}"
echo -e "${GRAY}[+]${RESET} Host    : ${WHITE}127.0.0.1:${PORT}${RESET}"
echo
echo -e "${RED}⚠ UNDER DEVELOPMENT ⚠${RESET}"
echo -e "${GRAY}Use Cloudflare${RESET}"
echo
echo
echo -e "${DARK_RED}[+]${RESET} Searching sites..."
echo



sites=()

for site in "$SITE_DIR"/*/; do
    [ -d "$site" ] || continue
    sites+=("$site")
done

count=0

for site in "${sites[@]}"; do
    count=$((count + 1))
    site_name=$(basename "$site")
    echo -e "${RED}[$count]${RESET} $site_name"
done

echo
echo -e "${RED}[0]${RESET} Exit"
echo
read -p "ROOTXT > Select site: " choice

if [[ "$choice" == "0" ]]; then
    echo "[+] Exiting..."
    exit 0
fi

if ! [[ "$choice" =~ ^[0-9]+$ ]]; then
    echo "[-] Invalid selection."
    exit 1
fi

if (( choice < 1 || choice > count )); then
    echo "[-] Site does not exist."
    exit 1
fi

selected="${sites[$((choice - 1))]}"
site_name=$(basename "$selected")

echo
echo "[+] Selected: $site_name"
echo "[+] Starting LOCAL training server..."
echo "[+] URL: http://127.0.0.1:$PORT"
echo "[+] Password logging: DISABLED"
echo
echo "[+] Press CTRL+C to stop."
echo

php -S 127.0.0.1:$PORT -t "$selected"
