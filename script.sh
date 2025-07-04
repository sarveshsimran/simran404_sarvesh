#!/bin/bash

clear

# 🌟 BIODATA HEADER 🌟
echo -e "\e[1;32m┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓"
echo -e "┃              💻 SIMRAN 404 TOOL 💻             ┃"
echo -e "┃           Created by: SARVESH SIMRAN          ┃"
echo -e "┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛\e[0m"

# 🎨 Personal Biodata
echo ""
echo -e "\e[1;35m👤 Name:\e[0m          Sarvesh Bharti"
echo -e "\e[1;35m📍 Address:\e[0m       Dariyapur, Azamgarh, Uttar Pradesh"
echo -e "\e[1;35m👨‍👦 s/o:\e[0m          Om Prakash"
echo -e "\e[1;35m🎓 Role:\e[0m          Ethical Hacker | Tool Developer"
echo -e "\e[1;35m🔧 Skills:\e[0m        Bash, Linux, GitHub"
echo -e "\e[1;35m🌐 GitHub:\e[0m       https://github.com/sarveshsimran"
echo ""

# 🧠 Tool Start
echo "🚨 SIMRAN 404 ACTIVATED 🚨"
echo "🕵️‍♂️ Hacker Online: $(whoami)"
echo "🌐 Your Public IP: $(curl -s ifconfig.me)"
echo "🕓 Time: $(date)"
echo ""
echo "🔎 Select an option:"
echo "1. IP Lookup"
echo "2. Port Scanner"
echo "3. Exit"
read -p "Choose (1-3): " choice

if [ "$choice" == "1" ]; then
    read -p "Enter IP address (or leave blank for your IP): " ip
    if [ -z "$ip" ]; then
        ipinfo=$(curl -s ipinfo.io)
    else
        ipinfo=$(curl -s ipinfo.io/$ip)
    fi
    echo "📍 IP Info:"
    echo "$ipinfo" | jq .

elif [ "$choice" == "2" ]; then
    read -p "Enter IP or domain to scan: " target
    echo "🔍 Scanning common ports for $target ..."
    for port in 21 22 23 25 53 80 110 139 143 443 445 3306
    do
        timeout 1 bash -c "echo > /dev/tcp/$target/$port" 2>/dev/null &&
        echo "✅ Port $port is open" || :
    done

elif [ "$choice" == "3" ]; then
    echo "👋 Exiting SIMRAN 404. Bye!"
else
    echo "❌ Invalid option."
fi
