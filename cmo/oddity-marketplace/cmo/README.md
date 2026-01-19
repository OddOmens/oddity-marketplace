# CMO Plugin

An AI-powered Chief Marketing Officer plugin for Claude Code that analyzes your codebase to generate compelling marketing content, strategic insights, and campaign ideas.

## Overview

This plugin transforms your code into marketing gold by analyzing features, benefits, and capabilities to create professional marketing materials. Perfect for product teams, marketers, and founders who want to leverage AI to understand and communicate their product's value.

## Features

The plugin provides six powerful slash commands:

### 1. `/cmo:analyze-features`
**Analyzes your codebase to extract key features and benefits**

- Scans components, utilities, and APIs to identify capabilities
- Translates technical features into user benefits
- Identifies competitive advantages
- Groups features into marketing-friendly categories
- Provides differentiation points

**Usage**:
```bash
/cmo:analyze-features
/cmo:analyze-features collaboration features
/cmo:analyze-features real-time sync
```

### 2. `/cmo:generate-copy`
**Creates marketing copy for various channels and formats**

Generates copy for:
- Landing pages (headlines, CTAs, feature descriptions)
- Social media (Twitter, LinkedIn, Instagram, Facebook)
- Email campaigns (subject lines, body copy, CTAs)
- Ad copy (Google Ads, Facebook Ads, LinkedIn Ads)
- Product descriptions (short, medium, long)
- Press releases

**Usage**:
```bash
/cmo:generate-copy
/cmo:generate-copy landing page hero
/cmo:generate-copy twitter thread
/cmo:generate-copy email campaign
```

### 3. `/cmo:campaign-ideas`
**Develops comprehensive marketing campaign strategies**

Creates:
- Multi-channel campaign concepts
- Campaign objectives and KPIs
- Creative concepts and messaging
- Content calendars
- Activation ideas and tactics
- Implementation timelines

**Usage**:
```bash
/cmo:campaign-ideas
/cmo:campaign-ideas product launch
/cmo:campaign-ideas seasonal campaign
/cmo:campaign-ideas awareness
```

### 4. `/cmo:competitive-analysis`
**Analyzes competitors and develops positioning strategies**

Provides:
- Competitive feature matrices
- SWOT analysis
- Positioning statements
- Messaging frameworks
- Battle cards for sales
- Market positioning maps

**Usage**:
```bash
/cmo:competitive-analysis
/cmo:competitive-analysis vs [Competitor]
/cmo:competitive-analysis positioning
```

### 5. `/cmo:content-ideas`
**Generates strategic content ideas across all channels**

Creates:
- 30-day content calendars
- Blog post ideas (20+ titles)
- Social media content (50+ posts)
- Video content concepts
- Lead magnet ideas
- SEO strategy and keywords
- Content repurposing plans

**Usage**:
```bash
/cmo:content-ideas
/cmo:content-ideas blog posts
/cmo:content-ideas social media
/cmo:content-ideas video
```

### 6. `/cmo:persona-journey`
**Creates detailed user personas and customer journey maps**

Develops:
- Comprehensive user personas
- Customer journey maps (7 stages)
- Empathy maps
- Marketing channel strategies
- Persona-specific content recommendations

**Usage**:
```bash
/cmo:persona-journey
/cmo:persona-journey [target audience]
/cmo:persona-journey product managers
```

## Installation

### Option 1: Local Testing (Recommended for Development)

1. Navigate to your project directory
2. Run Claude Code with the plugin directory:

```bash
cd /path/to/your-project
claude --plugin-dir /Users/kadynwishcop/.claude/plugins/cmo
```

### Option 2: Global Installation

1. Copy the plugin to a permanent location:

```bash
mkdir -p ~/.claude/plugins
cp -r /Users/kadynwishcop/.claude/plugins/cmo ~/.claude/plugins/
```

2. Run Claude Code with the plugin:

```bash
claude --plugin-dir ~/.claude/plugins/cmo
```

## Usage Examples

### Example 1: Quick Feature Analysis
```bash
# Start Claude Code with the plugin
claude --plugin-dir ~/.claude/plugins/cmo

# In the chat, run:
/cmo:analyze-features
```

Claude will analyze your codebase and provide:
- List of core features with user benefits
- Competitive differentiation points
- Feature categories for marketing
- Unique selling propositions

### Example 2: Generate Landing Page Copy
```bash
/cmo:generate-copy landing page
```

Outputs:
- Multiple headline variations
- Subheadlines
- CTA text options
- Feature section copy
- Social proof suggestions

### Example 3: Plan a Product Launch Campaign
```bash
/cmo:campaign-ideas product launch
```

Provides:
- Complete campaign concept
- Multi-channel strategy
- Creative direction
- 4-week implementation plan
- Success metrics

### Example 4: Create Content for a Month
```bash
/cmo:content-ideas
```

Generates:
- 30-day content calendar
- Blog post titles and outlines
- Social media posts for all platforms
- Video content ideas
- Lead magnet concepts

## How It Works

The plugin uses Claude's code analysis capabilities combined with marketing expertise to:

1. **Analyze**: Scans your codebase (components, APIs, utilities, docs)
2. **Extract**: Identifies features, capabilities, and technical advantages
3. **Translate**: Converts technical details into user benefits
4. **Create**: Generates marketing materials based on insights
5. **Strategize**: Develops comprehensive marketing strategies

## Best Practices

### 1. Start with Feature Analysis
Always begin with `/cmo:analyze-features` to understand what you're working with.

### 2. Be Specific with Arguments
The more specific your request, the better the output:
- ❌ `/cmo:generate-copy`
- ✅ `/cmo:generate-copy Twitter thread about collaboration features`

### 3. Iterate and Refine
Use the output as a starting point and ask follow-up questions:
```
/cmo:generate-copy email subject lines
# Then follow up with:
Can you make these more urgent?
Can you create variations for different personas?
```

### 4. Combine Commands
Use multiple commands together for comprehensive campaigns:
```
1. /cmo:analyze-features
2. /cmo:persona-journey
3. /cmo:campaign-ideas
4. /cmo:content-ideas
5. /cmo:generate-copy
```

### 5. Keep Context
Reference previous analyses in follow-up requests:
```
Based on the feature analysis, can you create a comparison table vs [Competitor]?
```

## Tips for Best Results

1. **Keep your codebase documented**: The plugin works better with good comments and documentation
2. **Update regularly**: Re-run analyses after major feature additions
3. **Provide context**: Use arguments to guide the analysis
4. **Review and refine**: Use the output as a starting point, not final copy
5. **Combine with human insight**: AI is powerful, but your product knowledge is irreplaceable

## Troubleshooting

### Plugin not showing up?
- Ensure you're using Claude Code version 1.0.33 or later: `claude --version`
- Check that the plugin directory structure is correct
- Verify `plugin.json` is valid JSON

### Commands not working?
- Make sure you're using the full command: `/cmo:command-name`
- Check that `.md` files have proper YAML frontmatter
- Ensure you're in the correct project directory

### Poor quality output?
- Provide more specific arguments
- Ensure your codebase has good documentation
- Try breaking down requests into smaller, focused queries

## Roadmap

Future enhancements planned:
- [ ] Integration with marketing analytics tools
- [ ] A/B testing copy generation
- [ ] Multi-language support
- [ ] Industry-specific templates
- [ ] Automated competitive monitoring
- [ ] SEO optimization suggestions
- [ ] Social media scheduling integration

## Support

For issues, questions, or suggestions:
- Email: hello@medusast.one
- Website: https://cache.app

## License

MIT License - Feel free to use and modify for your needs.

---

**Made with ❤️ by Odd Omens**

Transform your code into compelling marketing with the power of AI.
