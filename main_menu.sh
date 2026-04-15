#!/usr/bin/env bash
# ==========================================
#   🚀 ShadowCraftMC - ALL IN ONE TOOL
# ==========================================

set -u

# --- ANSI COLORS ---
C=$'\033[36m'  # Cyan
G=$'\033[32m'  # Green
R=$'\033[31m'  # Red
B=$'\033[34m'  # Blue
Y=$'\033[33m'  # Yellow
W=$'\033[97m'  # White
N=$'\033[0m'   # Reset

# --- HEADER FUNCTION ---
header() {
    clear
    echo -e "${B}  __  __       _         __  __                  ${N}"
    echo -e "${B} |  \/  | __ _(_)_ __   |  \/  | ___ _ __  _   _ ${N}"
    echo -e "${B} | |\/| |/ _\` | | '_ \  | |\/| |/ _ \ '_ \| | | |${N}"
    echo -e "${B} | |  | | (_| | | | | | | |  | |  __/ | | | |_| |${N}"
    echo -e "${B} |_|  |_|\__,_|_|_| |_| |_|  |_|\___|_| |_|\__,_|${N}"
    echo -e "${B}=====================================================${N}"
    echo -e "${Y}      🚀 powered by ShadowCraftMC      ${N}"
    echo -e "${B}=====================================================${N}"
    echo ""
}

# --- PAUSE FUNCTION ---
pause() {
    echo ""
    read -p "${W}Press [Enter] to return to menu...${N}" dummy
}

# --- MAIN LOOP ---
while true; do
    header
    echo -e "${C} 1) ${W}BOT MAKER ${G}(Create app.js)${N}"
    echo -e "${C} 2) ${W}AUTO RESTARTER SETUP ${G}(Systemd Service)${N}"
    echo -e "${C} 3) ${W}BOT REMOVER ${G}(Manager)${N}"
    echo -e "${C} 4) ${W}IDX VPS MAKER ${G}(IDX VPS)${N}"
    echo -e "${C} 5) ${W}IDX TOOL SETUP ${G}(IDX TOOL SETUP)${N}"
    echo -e "${C} 6) ${W}RDP SETUP ${G}(RDB setup)${N}"
    echo -e "${R} 0) Exit${N}"
    echo ""
    echo -e "${B}=====================================================${N}"
    read -p "${Y}👉 Select an option [1-6]: ${N}" choice

    case $choice in
        1)
            echo ""
            echo -e "${Y}🛠️  Running Bot Maker...${N}"
            curl -fsSL https://raw.githubusercontent.com/shadowcodeofficial/Shadow/refs/heads/main/bot_maker.sh | sed 's/\r$//' | bash
            pause
            ;;
        2)
            echo ""
            echo -e "${Y}⚙️  Setting up AutoRestarter
            curl -fsSL https://raw.githubusercontent.com/shadowcodeofficial/Shadow/refs/heads/main/autorestarter.sh | sed 's/\r$//' | bash
            pause
            ;;
        3)
            echo ""
            echo -e "${Y}🚀 Bot Remover...${N}"
            curl -fsSL https://raw.githubusercontent.com/shadowcodeofficial/Shadow/refs/heads/main/bot_remover.sh | sed 's/\r$//' | bash
            pause
            ;;
        4)
            echo ""
            echo -e "${Y}💻 Installing VM (IDX VPS)...${N}"
            bash <(curl -fsSL https://raw.githubusercontent.com/shadowcodeofficial/vm/refs/heads/main/vps.sh) | sed 's/\r$//' | bash
            pause
            ;;
        5)
            echo ""
            echo -e "${Y}💻 IDX TOOL SETUP (IDX TOOL)...${N}"
            curl -fsSL https://raw.githubusercontent.com/shadowcodeofficial/vps123/refs/heads/main/idx/dev.nix) | sed 's/\r$//' | bash
            pause
            ;;
        6)
            echo ""
            echo -e "${Y}🖥️  Installing RDP...${N}"
            curl -fsSL https://raw.githubusercontent.com/shadowcodeofficial/Shadow/refs/heads/main/rdp_installer.sh | sed 's/\r$//' | bash
            pause
            ;;
        0)
            echo ""
            echo -e "${G}👋 Exiting... Thanks for using!${N}"
            exit 0
            ;;
        *)
            echo ""
            echo -e "${R}❌ Invalid Option! Please select between 1-10.${N}"
            sleep 2
            ;;
    esac
done
EOF
