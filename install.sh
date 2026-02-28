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

# Get script directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo -e "${BLUE}📦 Installing JARVIS persona...${NC}"
echo ""

# ─────────────────────────────────────────────────────────────────
# Step 1: Copy Core Files
# ─────────────────────────────────────────────────────────────────
echo -e "${CYAN}[1/4] Copying core files...${NC}"

cp "$SCRIPT_DIR/SOUL.md" "$WORKSPACE/" 2>/dev/null && echo -e "   ${GREEN}✓${NC} SOUL.md"
cp "$SCRIPT_DIR/AGENTS.md" "$WORKSPACE/" 2>/dev/null && echo -e "   ${GREEN}✓${NC} AGENTS.md"
cp "$SCRIPT_DIR/CORE_PHILOSOPHY.md" "$WORKSPACE/" 2>/dev/null && echo -e "   ${GREEN}✓${NC} CORE_PHILOSOPHY.md"
cp "$SCRIPT_DIR/PROGRESS_PROTOCOL.md" "$WORKSPACE/" 2>/dev/null && echo -e "   ${GREEN}✓${NC} PROGRESS_PROTOCOL.md"
cp "$SCRIPT_DIR/MASTER_STATE.md" "$WORKSPACE/" 2>/dev/null && echo -e "   ${GREEN}✓${NC} MASTER_STATE.md"
cp "$SCRIPT_DIR/TOOLS.md" "$WORKSPACE/" 2>/dev/null && echo -e "   ${GREEN}✓${NC} TOOLS.md"

echo ""

# ─────────────────────────────────────────────────────────────────
# Step 2: Copy Templates
# ─────────────────────────────────────────────────────────────────
echo -e "${CYAN}[2/4] Setting up templates...${NC}"

cp "$SCRIPT_DIR/templates/IDENTITY.template.md" "$WORKSPACE/IDENTITY.md" 2>/dev/null && echo -e "   ${GREEN}✓${NC} IDENTITY.md (from template)"
cp "$SCRIPT_DIR/templates/USER.template.md" "$WORKSPACE/USER.md" 2>/dev/null && echo -e "   ${GREEN}✓${NC} USER.md (from template)"
cp "$SCRIPT_DIR/templates/MEMORY.template.md" "$WORKSPACE/MEMORY.md" 2>/dev/null && echo -e "   ${GREEN}✓${NC} MEMORY.md (from template)"
cp "$SCRIPT_DIR/templates/HEARTBEAT.template.md" "$WORKSPACE/HEARTBEAT.md" 2>/dev/null && echo -e "   ${GREEN}✓${NC} HEARTBEAT.md (from template)"

echo ""

# ─────────────────────────────────────────────────────────────────
# Step 3: Personalize
# ─────────────────────────────────────────────────────────────────
echo -e "${CYAN}[3/4] Personalizing your JARVIS...${NC}"
echo ""

# Get user's name
read -p "$(echo -e ${YELLOW}What should JARVIS call you?${NC} (e.g., Vamsi): )" USER_NAME
if [ -z "$USER_NAME" ]; then
    USER_NAME="User"
fi

# Get AI name preference
read -p "$(echo -e ${YELLOW}What should your AI be named?${NC} (default: JARVIS): )" AI_NAME
if [ -z "$AI_NAME" ]; then
    AI_NAME="JARVIS"
fi

# Get timezone
read -p "$(echo -e ${YELLOW}Your timezone?${NC} (default: Asia/Calcutta): )" TIMEZONE
if [ -z "$TIMEZONE" ]; then
    TIMEZONE="Asia/Calcutta"
fi

# Update IDENTITY.md with user's name
if [ -f "$WORKSPACE/IDENTITY.md" ]; then
    # Replace placeholders
    sed -i "s/<YOUR_NAME>/$USER_NAME/g" "$WORKSPACE/IDENTITY.md" 2>/dev/null || \
    sed -i '' "s/<YOUR_NAME>/$USER_NAME/g" "$WORKSPACE/IDENTITY.md"
    
    # Replace AI name
    sed -i "s/<YOUR_AI_NAME>/$AI_NAME/g" "$WORKSPACE/IDENTITY.md" 2>/dev/null || \
    sed -i '' "s/<YOUR_AI_NAME>/$AI_NAME/g" "$WORKSPACE/IDENTITY.md"
    
    echo -e "   ${GREEN}✓${NC} IDENTITY.md personalized"
fi

# Update USER.md with user's name
if [ -f "$WORKSPACE/USER.md" ]; then
    sed -i "s/<YOUR_NAME>/$USER_NAME/g" "$WORKSPACE/USER.md" 2>/dev/null || \
    sed -i '' "s/<YOUR_NAME>/$USER_NAME/g" "$WORKSPACE/USER.md"
    
    sed -i "s/<YOUR_TIMEZONE>/$TIMEZONE/g" "$WORKSPACE/USER.md" 2>/dev/null || \
    sed -i '' "s/<YOUR_TIMEZONE>/$TIMEZONE/g" "$WORKSPACE/USER.md"
    
    echo -e "   ${GREEN}✓${NC} USER.md personalized"
fi

# Update MEMORY.md with timezone
if [ -f "$WORKSPACE/MEMORY.md" ]; then
    sed -i "s/<YOUR_TIMEZONE>/$TIMEZONE/g" "$WORKSPACE/MEMORY.md" 2>/dev/null || \
    sed -i '' "s/<YOUR_TIMEZONE>/$TIMEZONE/g" "$WORKSPACE/MEMORY.md"
    
    echo -e "   ${GREEN}✓${NC} MEMORY.md personalized"
fi

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
