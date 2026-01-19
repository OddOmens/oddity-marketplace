#!/bin/bash

# CMO Plugin - Test Script
# This script helps you test the plugin installation and commands

echo "🚀 CMO Plugin - Test Script"
echo "============================"
echo ""

# Check Claude Code version
echo "📋 Checking Claude Code installation..."
if command -v claude &> /dev/null; then
    CLAUDE_VERSION=$(claude --version 2>&1)
    echo "✅ Claude Code found: $CLAUDE_VERSION"
    echo ""
else
    echo "❌ Claude Code not found. Please install it first."
    echo "   Visit: https://code.claude.com/docs/en/quickstart"
    exit 1
fi

# Check plugin directory
PLUGIN_DIR="$(dirname "$0")"
if [ -d "$PLUGIN_DIR" ]; then
    echo "✅ Plugin directory found: $PLUGIN_DIR"
else
    echo "❌ Plugin directory not found"
    exit 1
fi

# Verify plugin structure
echo ""
echo "📂 Verifying plugin structure..."

if [ -f "$PLUGIN_DIR/.claude-plugin/plugin.json" ]; then
    echo "✅ plugin.json found"
else
    echo "❌ plugin.json missing"
    exit 1
fi

if [ -d "$PLUGIN_DIR/skills" ]; then
    SKILL_COUNT=$(ls -1d "$PLUGIN_DIR/skills"/*/ 2>/dev/null | wc -l)
    echo "✅ Skills directory found ($SKILL_COUNT skills)"
else
    echo "❌ Skills directory missing"
    exit 1
fi

# List available skills
echo ""
echo "📝 Available skills:"
for skill_dir in "$PLUGIN_DIR/skills"/*; do
    if [ -d "$skill_dir" ] && [ -f "$skill_dir/SKILL.md" ]; then
        SKILL_NAME=$(basename "$skill_dir")
        # Extract description from YAML frontmatter
        DESC=$(grep "description:" "$skill_dir/SKILL.md" | head -1 | sed 's/description: //')
        echo "   • /cmo:$SKILL_NAME"
        echo "     $DESC"
    fi
done

echo ""
echo "✅ Plugin structure verified!"
echo ""
echo "🎯 Next Steps:"
echo "==============="
echo ""
echo "1. Start Claude Code with the plugin:"
echo "   claude --plugin-dir ~/.claude/plugins/cmo"
echo ""
echo "2. Try your first command:"
echo "   /cmo:analyze-features"
echo ""
echo "3. Explore other commands:"
echo "   /cmo:generate-copy landing page"
echo "   /cmo:campaign-ideas product launch"
echo "   /cmo:content-ideas"
echo ""
echo "4. Read the documentation:"
echo "   • README.md - Full documentation"
echo "   • QUICKSTART.md - Quick start guide"
echo "   • EXAMPLES.md - Example outputs"
echo ""
echo "📚 Pro Tips:"
echo "============"
echo "• Use specific arguments for better results"
echo "• Chain commands together for comprehensive strategies"
echo "• Save good outputs to a marketing-assets.md file"
echo "• Iterate and refine - ask follow-up questions"
echo ""
echo "Happy marketing! 🎨✨"
