#!/bin/bash

# ═══════════════════════════════════════════════════════════════
# 🛡️ JarvisClaw Installer
# Transform OpenClaw into your personal JARVIS
# ═══════════════════════════════════════════════════════════════

set -e

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# Workspace
WORKSPACE="$HOME/.openclaw/workspace"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# ─── Helper Functions ──────────────────────────────────────────

# Function to safely copy files and report status
copy_file() {
    local src="$1"
    local dest="$2"
    local name="$3"

    if [ -f "$src" ]; then
        cp "$src" "$dest"
        echo -e "   ${GREEN}✓${NC} $name"
    else
        echo -e "   ${RED}✗${NC} $name (File not found)"
        return 0
    fi
}

# Function to safely do cross-platform string replacement
# Uses '|' as delimiter to avoid path collision (e.g., Asia/Calcutta)
replace_text() {
    local file="$1"
    local search="$2"
    local replace="$3"

    if [ -f "$file" ]; then
        # Try GNU sed first, fallback to BSD (macOS) sed
        sed -i "s|$search|$replace|g" "$file" 2>/dev/null || \
        sed -i '' "s|$search|$replace|g" "$file"
    fi
}

# ─── Main Script ───────────────────────────────────────────────

echo ""
echo -e "${CYAN}╔═══════════════════════════════════════════════════════════╗${NC}"
echo -e "${CYAN}║                                                           ║${NC}"
echo -e "${CYAN}║   🛡️  JarvisClaw Installer                                ║${NC}"
echo -e "${CYAN}║   Your Personal JARVIS awaits                             ║${NC}"
echo -e "${CYAN}║                                                           ║${NC}"
echo -e "${CYAN}╚═══════════════════════════════════════════════════════════╝${NC}"
echo ""

# Check if OpenClaw workspace exists
if [ ! -d "$WORKSPACE" ]; then
    echo -e "${YELLOW}⚠️  OpenClaw workspace not found at $WORKSPACE${NC}"
    echo -e "${BLUE}   Creating workspace...${NC}"
    mkdir -p "$WORKSPACE"
fi

echo -e "${BLUE}📦 Installing JARVIS persona...${NC}"
echo ""

# ─────────────────────────────────────────────────────────────────
# Step 1: Copy Core Files
# ─────────────────────────────────────────────────────────────────
echo -e "${CYAN}[1/4] Copying core files...${NC}"

copy_file "$SCRIPT_DIR/SOUL.md" "$WORKSPACE/" "SOUL.md"
copy_file "$SCRIPT_DIR/AGENTS.md" "$WORKSPACE/" "AGENTS.md"
copy_file "$SCRIPT_DIR/CORE_PHILOSOPHY.md" "$WORKSPACE/" "CORE_PHILOSOPHY.md"
copy_file "$SCRIPT_DIR/PROGRESS_PROTOCOL.md" "$WORKSPACE/" "PROGRESS_PROTOCOL.md"
copy_file "$SCRIPT_DIR/MASTER_STATE.md" "$WORKSPACE/" "MASTER_STATE.md"
copy_file "$SCRIPT_DIR/TOOLS.md" "$WORKSPACE/" "TOOLS.md"

echo ""

# ─────────────────────────────────────────────────────────────────
# Step 2: Copy Templates
# ─────────────────────────────────────────────────────────────────
echo -e "${CYAN}[2/4] Setting up templates...${NC}"

copy_file "$SCRIPT_DIR/templates/IDENTITY.template.md" "$WORKSPACE/IDENTITY.md" "IDENTITY.md (from template)"
copy_file "$SCRIPT_DIR/templates/USER.template.md" "$WORKSPACE/USER.md" "USER.md (from template)"
copy_file "$SCRIPT_DIR/templates/MEMORY.template.md" "$WORKSPACE/MEMORY.md" "MEMORY.md (from template)"
copy_file "$SCRIPT_DIR/templates/HEARTBEAT.template.md" "$WORKSPACE/HEARTBEAT.md" "HEARTBEAT.md (from template)"

echo ""

# ─────────────────────────────────────────────────────────────────
# Step 3: Personalize
# ─────────────────────────────────────────────────────────────────
echo -e "${CYAN}[3/4] Personalizing your JARVIS...${NC}"
echo ""

# Input handling with fallbacks using bash parameter expansion
read -p "$(echo -e ${YELLOW}What should JARVIS call you?${NC} (e.g., Vamsi): )" USER_NAME
USER_NAME=${USER_NAME:-"User"}

read -p "$(echo -e ${YELLOW}What should your AI be named?${NC} (default: JARVIS): )" AI_NAME
AI_NAME=${AI_NAME:-"JARVIS"}

read -p "$(echo -e ${YELLOW}Your timezone?${NC} (default: Asia/Calcutta): )" TIMEZONE
TIMEZONE=${TIMEZONE:-"Asia/Calcutta"}

# Apply replacements
replace_text "$WORKSPACE/IDENTITY.md" "<YOUR_NAME>" "$USER_NAME"
replace_text "$WORKSPACE/IDENTITY.md" "<YOUR_AI_NAME>" "$AI_NAME"
echo -e "   ${GREEN}✓${NC} IDENTITY.md personalized"

replace_text "$WORKSPACE/USER.md" "<YOUR_NAME>" "$USER_NAME"
replace_text "$WORKSPACE/USER.md" "<YOUR_TIMEZONE>" "$TIMEZONE"
echo -e "   ${GREEN}✓${NC} USER.md personalized"

replace_text "$WORKSPACE/MEMORY.md" "<YOUR_TIMEZONE>" "$TIMEZONE"
echo -e "   ${GREEN}✓${NC} MEMORY.md personalized"

echo ""

# ─────────────────────────────────────────────────────────────────
# Step 4: Done!
# ─────────────────────────────────────────────────────────────────
echo -e "${CYAN}[4/4] Finalizing...${NC}"
echo ""

echo -e "${GREEN}╔═══════════════════════════════════════════════════════════╗${NC}"
echo -e "${GREEN}║                                                           ║${NC}"
echo -e "${GREEN}║   ✅ JARVIS Installed Successfully!                       ║${NC}"
echo -e "${GREEN}║                                                           ║${NC}"
echo -e "${GREEN}╚═══════════════════════════════════════════════════════════╝${NC}"
echo ""

echo -e "${BLUE}📁 Files installed to:${NC}"
echo -e "   $WORKSPACE"
echo ""

echo -e "${BLUE}📝 Next Steps:${NC}"
echo ""
echo -e "   1. Edit ${YELLOW}USER.md${NC} with your full profile"
echo -e "      ${CYAN}nano $WORKSPACE/USER.md${NC}"
echo ""
echo -e "   2. Edit ${YELLOW}MEMORY.md${NC} with your config"
echo -e "      ${CYAN}nano $WORKSPACE/MEMORY.md${NC}"
echo ""
echo -e "   3. Restart OpenClaw gateway"
echo -e "      ${CYAN}openclaw gateway restart${NC}"
echo ""
echo -e "   4. Say hello to your ${YELLOW}$AI_NAME${NC}!"
echo ""

echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${CYAN}\"You are 90% human heart. 10% machine precision. 100% loyal.\"${NC}"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
