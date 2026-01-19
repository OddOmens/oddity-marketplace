# Oddity-Market Setup Guide

## Repository Structure

Create a new directory for your marketplace with this structure:

```
oddity-market/
├── .claude-plugin/
│   └── marketplace.json
├── README.md
└── cmo/                    # Your CMO plugin (copied or symlinked)
    ├── .claude-plugin/
    │   └── plugin.json
    ├── skills/
    ├── commands/
    └── ...
```

## Step 1: Create marketplace.json

Create `.claude-plugin/marketplace.json`:

```json
{
  "name": "oddity-market",
  "description": "A curated marketplace of premium Claude Code plugins by Odd Omens",
  "owner": {
    "name": "Odd Omens",
    "email": "hello@medusast.one",
    "url": "https://cache.app"
  },
  "plugins": [
    {
      "name": "cmo",
      "source": "./cmo",
      "description": "AI-powered Chief Marketing Officer that analyzes your codebase to create compelling marketing materials, strategic campaigns, and data-driven content",
      "version": "2.2.0",
      "author": {
        "name": "Odd Omens",
        "email": "hello@medusast.one"
      },
      "homepage": "https://cache.app",
      "license": "MIT"
    }
  ]
}
```

## Step 2: Create README.md

Create a `README.md` for your marketplace:

```markdown
# 🌀 Oddity-Market

A curated marketplace of premium Claude Code plugins by Odd Omens.

## Installation

Add this marketplace to Claude Code:

\`\`\`
/plugin marketplace add odd-omens/oddity-market
\`\`\`

## Available Plugins

### 🎯 CMO - Chief Marketing Officer

AI-powered marketing strategist that analyzes your codebase to create compelling marketing materials.

**Install:**
\`\`\`
/plugin install cmo@oddity-market
\`\`\`

**Features:**
- Generate blog content
- Create social media threads
- Build audience personas
- Analyze competitors
- Strategic campaign planning

**Commands:**
- `/cmo-blog` - Generate blog content
- `/cmo-threads` - Create Twitter/X threads
- `/cmo-persona` - Build audience personas
- `/cmo-compete` - Analyze competitors
- And more...

## Support

- Website: https://cache.app
- Email: hello@medusast.one

## License

MIT License - See individual plugin licenses for details.
\`\`\`

## Step 3: Initialize Git and Push to GitHub

Run these commands in your marketplace directory:

```bash
# Navigate to where you want to create the marketplace
cd ~/Desktop  # or wherever you prefer

# Create the directory structure
mkdir -p oddity-market/.claude-plugin

# Create the marketplace.json file (copy the content above)
# Create the README.md file (copy the content above)

# Copy your CMO plugin into the marketplace
cp -r ~/.claude/plugins/cmo oddity-market/

# Initialize git
cd oddity-market
git init
git add .
git commit -m "Initial commit: Oddity-Market with CMO plugin"

# Add your GitHub remote (replace with your actual repo URL)
git remote add origin https://github.com/YOUR-USERNAME/oddity-market.git

# Push to GitHub
git branch -M main
git push -u origin main
```

## Step 4: Test Your Marketplace

Before sharing, test it locally:

```bash
# Add your marketplace
/plugin marketplace add YOUR-USERNAME/oddity-market

# Install the CMO plugin
/plugin install cmo@oddity-market

# Test a command
/cmo-blog
```

## Step 5: Share with Users

Users can now install from your marketplace:

```bash
/plugin marketplace add odd-omens/oddity-market
/plugin install cmo@oddity-market
```

## Updating Your Marketplace

When you update plugins:

1. Update the version in `plugin.json`
2. Update the version in `marketplace.json`
3. Commit and push changes
4. Users run `/plugin marketplace update` to get updates

## Adding More Plugins

To add more plugins to your marketplace:

1. Add the plugin directory to your repo
2. Add an entry to the `plugins` array in `marketplace.json`
3. Update the README.md
4. Commit and push

Example marketplace.json with multiple plugins:

```json
{
  "name": "oddity-market",
  "owner": { ... },
  "plugins": [
    {
      "name": "cmo",
      "source": "./cmo",
      "description": "...",
      "version": "2.2.0"
    },
    {
      "name": "another-plugin",
      "source": "./another-plugin",
      "description": "...",
      "version": "1.0.0"
    }
  ]
}
```
