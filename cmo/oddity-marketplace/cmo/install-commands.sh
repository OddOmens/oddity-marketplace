#!/bin/bash

# CMO Plugin - Command Installation Script
# This script sets up all CMO commands for Claude Code

echo "🎯 Installing CMO Plugin Commands..."
echo ""

# Get the directory where this script is located
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
COMMANDS_DIR="$SCRIPT_DIR/commands"

# Check if commands directory exists
if [ ! -d "$COMMANDS_DIR" ]; then
    echo "❌ Error: Commands directory not found at $COMMANDS_DIR"
    exit 1
fi

# List of all CMO commands
commands=(
    "analyze-competitors"
    "analyze-features"
    "generate-audience-persona"
    "generate-blog-content"
    "generate-threads-content"
    "persona-reset"
    "persona-update"
)

echo "Installing ${#commands[@]} commands:"
echo ""

# Check each command file
for cmd in "${commands[@]}"; do
    cmd_file="$COMMANDS_DIR/${cmd}.md"
    if [ -f "$cmd_file" ]; then
        echo "✅ /cmo-${cmd//-/}"
    else
        echo "⚠️  Missing: ${cmd}.md"
    fi
done

echo ""
echo "📚 Command Reference:"
echo ""
echo "Content Generation:"
echo "  /cmo-blog              - Generate blog posts and articles"
echo "  /cmo-threads           - Create engaging Twitter/X threads"
echo ""
echo "Strategy & Analysis:"
echo "  /cmo-persona           - Build detailed audience personas"
echo "  /cmo-compete           - Analyze competitors and market position"
echo "  /cmo-features          - Analyze product features for marketing"
echo ""
echo "Persona Management:"
echo "  /cmo-persona-update    - Update brand persona and voice"
echo "  /cmo-persona-reset     - Reset persona to defaults"
echo ""
echo "✨ Installation complete!"
echo ""
echo "To use the CMO plugin, simply type any command above in Claude Code."
echo "For detailed help on any command, type the command followed by --help"
echo ""
