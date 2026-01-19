#!/bin/bash

# CMO Plugin - Setup Script
# This script sets up the plugin globally

echo "🎨 CMO Plugin - Global Setup"
echo "============================="
echo ""

# Check if plugin is installed
PLUGIN_DIR="$HOME/.claude/plugins/cmo"
if [ ! -d "$PLUGIN_DIR" ]; then
    echo "❌ Plugin not found at $PLUGIN_DIR"
    echo "   Please install the plugin first."
    exit 1
fi

echo "✅ Plugin found at $PLUGIN_DIR"
echo ""

echo "🎯 Setup Complete!"
echo "=================="
echo ""
echo "📚 Usage:"
echo "========="
echo ""
echo "Start Claude with the plugin:"
echo "  claude --plugin-dir ~/.claude/plugins/cmo"
echo ""
echo "Then try commands like:"
echo "  /cmo:analyze-features"
echo "  /cmo:generate-copy landing page"
echo "  /cmo:campaign-ideas"
echo ""
echo "💡 Pro Tip:"
echo "==========="
echo "The plugin works on ANY project! Just navigate to any directory"
echo "and run the command to analyze that project's features."
echo ""
echo "Happy marketing! 🚀✨"
