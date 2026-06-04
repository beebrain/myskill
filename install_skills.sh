#!/usr/bin/env bash

# Script for installing skills globally on macOS/Linux
# Designed for AI Agent Training Course

# Color codes for output formatting
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}==================================================${NC}"
echo -e "${BLUE}       Global Skill Installer (macOS/Linux)        ${NC}"
echo -e "${BLUE}==================================================${NC}"

# Target directory for global skills
TARGET_DIR="$HOME/.gemini/config/skills"
SOURCE_DIR="./.gemini/skills"

# Check if run from the repository root
if [ ! -d "$SOURCE_DIR" ]; then
    echo -e "${RED}Error: .gemini/skills folder not found in current directory.${NC}"
    echo -e "Please run this script from the root of the 'myskill' repository."
    exit 1
fi

echo -e "Target Directory: ${BLUE}$TARGET_DIR${NC}"

# Create target directory if it doesn't exist
if [ ! -d "$TARGET_DIR" ]; then
    echo -e "Creating directory structure..."
    mkdir -p "$TARGET_DIR"
fi

# Copy all folders
echo -e "Copying skills to global location..."
cp -R "$SOURCE_DIR"/* "$TARGET_DIR"/

echo -e "\n${GREEN}✓ All skills have been installed globally successfully!${NC}"
echo -e "Installed Skills:"
ls -1 "$TARGET_DIR" | sed 's/^/  - /'
echo -e "${BLUE}==================================================${NC}"
