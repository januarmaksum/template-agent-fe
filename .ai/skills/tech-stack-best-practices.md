---
name: tech-stack-best-practices
description: Dynamic routing skill that loads framework-specific best practices based on the current repository's tech stack. Triggers when writing, refactoring, or reviewing code.
---

# Tech Stack Best Practices

This skill acts as a dynamic router to ensure you apply the correct best practices for the framework used in the current repository.

## Step 1: Detect the Framework
Before writing, designing, or refactoring code, always check the project's dependency manifest (e.g., `package.json` for frontend/Node projects).

Look for key dependencies to determine the core technology:
- `react`, `next` ➔ **React / Next.js**
- `vue`, `nuxt` ➔ **Vue.js**
- `svelte` ➔ **Svelte**
- `angular` ➔ **Angular**

## Step 2: Load the Framework-Specific Skill
Once you have identified the framework, load the specific best practices skill for that framework.

### Pre-configured Framework Skills:

- **React & Next.js**: 
  - Read `.ai/skills/react-best-practices/SKILL.md` (and refer to its sub-rules when making specific frontend updates).
  - Also consider: `.ai/skills/composition-patterns/SKILL.md` (Component abstractions) and `.ai/skills/react-view-transitions/SKILL.md` (Animations).
  
- **Vue.js**, **Svelte**, etc.: 
  - Look for `.ai/skills/{framework}-best-practices.md` or `.ai/skills/{framework}-best-practices/SKILL.md`.
  - If a specific file does not exist yet, apply general industry best practices for that framework and politely inform the user that they can add a framework-specific skill file to the `.ai/skills` directory, which this dynamic router will automatically find.

## Extensibility
If you decide to migrate or use a new framework in the future (for instance, switching to Vue.js), you only need to drop the equivalent Vue best practice guidelines into `.ai/skills/vue-best-practices.md`. This dynamic router ensures the Agent adjusts its architecture and optimization recommendations automatically based on what `package.json` dictates.
