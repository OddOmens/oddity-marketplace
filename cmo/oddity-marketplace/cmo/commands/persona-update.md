---
name: persona-update
description: Interactively update the CMO persona through guided questions
---

# CMO Persona Update

Interactively update the CMO persona configuration through a guided question process.

## Pre-Execution Setup

**IMPORTANT**: Before generating any output:
1. Check if a `CMO/` folder exists in the current working directory
2. If it does NOT exist, create it: `mkdir -p CMO`
3. Check if `CMO/cmo-persona.json` exists
4. If not, copy default from `/Users/kadynwishcop/.claude/plugins/cmo/cmo-persona.json`

## How Persona Works

**Project-Specific Persona:**
- Each project has its own persona in `CMO/cmo-persona.json`
- Updates only affect the current project
- Different projects can have different voices

## How This Command Works

This is an **interactive command** that:
1. Reads the current persona from `CMO/cmo-persona.json` (creates from default if missing)
2. Asks targeted questions to understand what you want to change
3. Updates only the specified aspects while preserving everything else
4. Saves the updated persona to `CMO/cmo-persona.json` and logs the change

## Interactive Flow

### Step 1: Display Current Persona

First, show the current persona settings:

```
## Current CMO Persona

**Voice Style**: [current style]
**Tone**: [current tone]
**Personality**: [current personality]
**Expertise**: [current expertise]
**Approach**: [current approach]

**Currently Avoiding**: [list]
**Currently Embracing**: [list]
```

### Step 2: Ask What to Update

Ask the user:

```
What aspect of the persona would you like to update?

1. **Voice Style** - How content sounds (e.g., organic, professional, casual)
2. **Tone** - The emotional quality (e.g., authentic, warm, direct)
3. **Personality** - Character traits (e.g., trustworthy, bold, friendly)
4. **Expertise Area** - What you're known for (e.g., organic marketing, growth)
5. **Approach** - How you work (e.g., thoughtful, data-driven)
6. **Words to Avoid** - Add/remove words or phrases to avoid
7. **Values to Embrace** - Add/remove content principles
8. **Full Rewrite** - Describe your ideal persona from scratch

Which would you like to update? (Enter number or describe what you want to change)
```

### Step 3: Gather Details

Based on user selection, ask follow-up questions:

**For Voice/Tone/Personality:**
- "How would you describe the feeling you want your content to convey?"
- "Are there any brands or people whose voice you admire?"
- "What's one word that should always describe your content?"

**For Expertise:**
- "What's your primary area of expertise?"
- "What makes your perspective unique?"
- "What do you want to be known for?"

**For Words to Avoid:**
- "What words or phrases feel inauthentic to you?"
- "Are there industry buzzwords you want to avoid?"
- "What language turns you off in marketing content?"

**For Values to Embrace:**
- "What's most important in your content?"
- "What principles guide your marketing?"
- "How do you want your audience to feel?"

**For Full Rewrite:**
- "Describe your ideal marketing voice in 2-3 sentences"
- "Who is your content for?"
- "What makes you different from typical marketing?"

### Step 4: Confirm and Apply

Show the proposed changes:

```
## Proposed Persona Updates

**Changing**: [aspect]
**From**: [old value]
**To**: [new value]

[Other settings remain unchanged]

Apply these changes? (yes/no)
```

### Step 5: Save and Log

If confirmed:
1. Update `CMO/cmo-persona.json` with new values (project-specific)
2. Append to `CMO/persona-changes.md`:

```markdown
## [Date/Time] - Persona Update

### Changed
- **[Aspect]**: [old] → [new]

### Current Full Persona
[Complete persona summary after changes]

Note: This persona is specific to this project.
```

## User Input

**Arguments**: $ARGUMENTS

If arguments are provided, interpret them as the update request:
- `update tone to warm` → Jump to updating tone
- `add buzzword to avoid: synergy` → Add to avoid list
- `show current` → Just display current persona

## Instructions

1. Read current persona from `CMO/cmo-persona.json` (create from default if missing)
2. Display current settings clearly
3. Ask targeted questions based on what user wants to change
4. Confirm changes before applying
5. Save updated persona to `CMO/cmo-persona.json`
6. Log changes to `CMO/persona-changes.md`
7. Confirm what was updated and note it's project-specific

Be conversational and helpful. Make it easy to tweak the persona incrementally.
