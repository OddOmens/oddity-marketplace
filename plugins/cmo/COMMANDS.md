# CMO Plugin - Commands Reference

Complete reference for all CMO (Chief Marketing Officer) plugin commands.

## 📝 Content Generation Commands

### `/cmo-blog` - Generate Blog Content
Generate compelling blog posts and articles based on your product features.

**Usage:**
```
/cmo-blog [topic or feature]
```

**What it does:**
- Analyzes your codebase to understand features
- Creates SEO-optimized blog content
- Generates engaging headlines and structure
- Tailored to your brand voice

**Example:**
```
/cmo-blog authentication system
```

---

### `/cmo-threads` - Generate Twitter/X Threads
Create engaging social media threads for Twitter/X.

**Usage:**
```
/cmo-threads [topic or announcement]
```

**What it does:**
- Crafts thread-optimized content
- Breaks down complex topics into digestible tweets
- Includes hooks and CTAs
- Maintains brand voice throughout

**Example:**
```
/cmo-threads new feature launch
```

---

## 🎯 Strategy & Analysis Commands

### `/cmo-persona` - Generate Audience Persona
Build detailed audience personas based on your product.

**Usage:**
```
/cmo-persona [target audience description]
```

**What it does:**
- Creates detailed user personas
- Identifies pain points and motivations
- Maps user journey
- Provides messaging recommendations

**Example:**
```
/cmo-persona SaaS developers
```

---

### `/cmo-compete` - Analyze Competitors
Analyze competitors and identify your unique positioning.

**Usage:**
```
/cmo-compete [competitor name or market segment]
```

**What it does:**
- Analyzes competitive landscape
- Identifies differentiation opportunities
- Suggests positioning strategies
- Highlights your unique value props

**Example:**
```
/cmo-compete project management tools
```

---

### `/cmo-features` - Analyze Product Features
Analyze your product features for marketing opportunities.

**Usage:**
```
/cmo-features [specific feature or "all"]
```

**What it does:**
- Scans codebase for features
- Translates technical features to benefits
- Identifies marketing angles
- Suggests messaging strategies

**Example:**
```
/cmo-features real-time collaboration
```

---

## ⚙️ Persona Management Commands

### `/cmo-persona-update` - Update Brand Persona
Update your brand persona and voice settings.

**Usage:**
```
/cmo-persona-update
```

**What it does:**
- Guides you through persona configuration
- Updates brand voice and tone
- Sets target audience parameters
- Saves to project-specific or global persona file

**Location:**
- Project-specific: `./CMO/cmo-persona.json`
- Global: `~/.claude/plugins/cmo/cmo-persona.json`

---

### `/cmo-persona-reset` - Reset Brand Persona
Reset persona to default settings.

**Usage:**
```
/cmo-persona-reset
```

**What it does:**
- Resets persona to defaults
- Clears custom brand voice settings
- Restores original configuration

---

## 🚀 Quick Start

1. **First Time Setup:**
   ```
   /cmo-persona-update
   ```
   Configure your brand voice and target audience.

2. **Generate Content:**
   ```
   /cmo-blog new feature
   /cmo-threads product launch
   ```

3. **Strategic Analysis:**
   ```
   /cmo-persona startup founders
   /cmo-compete similar products
   ```

## 💡 Tips

- **Use project-specific personas:** Run `/cmo-persona-update` in your project to create custom settings
- **Combine commands:** Use `/cmo-features` first, then `/cmo-blog` to create feature-focused content
- **Iterate:** Commands work better with context - reference specific features or use cases
- **Brand consistency:** Keep your persona updated for consistent messaging

## 🔧 Configuration

All commands respect your persona settings stored in:
- `./CMO/cmo-persona.json` (project-specific, takes priority)
- `~/.claude/plugins/cmo/cmo-persona.json` (global fallback)

## 📖 Examples Workflow

**Launching a new feature:**
```bash
# 1. Analyze the feature
/cmo-features real-time sync

# 2. Create a blog post
/cmo-blog real-time sync benefits

# 3. Generate social content
/cmo-threads announcing real-time sync

# 4. Understand your audience
/cmo-persona developers who need collaboration
```

**Competitive positioning:**
```bash
# 1. Analyze competitors
/cmo-compete notion and airtable

# 2. Identify your audience
/cmo-persona teams frustrated with complex tools

# 3. Create differentiation content
/cmo-blog why simplicity wins
```

## 🆘 Support

- **Plugin Homepage:** https://cache.app
- **Email:** hello@medusast.one
- **Documentation:** See individual command files in `/commands/` directory

---

**Version:** 2.2.0  
**License:** MIT  
**Author:** Odd Omens
