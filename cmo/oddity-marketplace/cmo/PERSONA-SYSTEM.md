# CMO Persona System - How It Works

## Project-Specific Personas

The CMO plugin uses **project-specific personas** so each project can have its own unique voice and tone.

## File Locations

### Default Persona (Template)
- **Location**: `/Users/kadynwishcop/.claude/plugins/cmo/cmo-persona.json`
- **Purpose**: Default template used for all new projects
- **When Used**: Fallback if project doesn't have its own persona

### Project Persona (Active)
- **Location**: `./CMO/cmo-persona.json` (in your current project)
- **Purpose**: Custom persona for THIS project only
- **When Used**: All CMO commands check here first

## How Commands Use Personas

All content generation commands follow this pattern:

1. Check for `CMO/cmo-persona.json` in current project
2. If found, use that persona (project-specific)
3. If not found, use default from plugin directory
4. Apply persona voice to all generated content

## Managing Personas

### First Time in a Project

When you run any CMO command in a new project:
- It creates the `CMO/` folder
- Uses the default persona (no file created yet)
- Content uses default voice

### Customizing for a Project

Run `/cmo:persona-update` to customize:
- Creates `CMO/cmo-persona.json` if it doesn't exist
- Asks questions about what to change
- Saves changes to project-specific file
- Only affects THIS project

### Resetting a Project

Run `/cmo:persona-reset` to reset:
- Copies default persona to `CMO/cmo-persona.json`
- Overwrites any custom changes
- Only affects THIS project

## Example Workflow

### Project A (SaaS Product)
```bash
cd ~/projects/saas-app
/cmo:persona-update
# Set tone to "professional and data-driven"
# Saves to ~/projects/saas-app/CMO/cmo-persona.json
```

### Project B (Creative Tool)
```bash
cd ~/projects/creative-tool
/cmo:persona-update
# Set tone to "playful and inspiring"
# Saves to ~/projects/creative-tool/CMO/cmo-persona.json
```

### Result
- Each project has its own voice
- Content generated in Project A is professional
- Content generated in Project B is playful
- They don't affect each other

## Persona Change Log

All persona changes are logged to `CMO/persona-changes.md`:
- Tracks what changed and when
- Shows old → new values
- Project-specific history

## Benefits

✅ **Isolated**: Each project has its own voice  
✅ **Flexible**: Different tone per product  
✅ **Portable**: CMO folder travels with project  
✅ **Safe**: Changes don't affect other projects  
✅ **Tracked**: Full history in persona-changes.md
