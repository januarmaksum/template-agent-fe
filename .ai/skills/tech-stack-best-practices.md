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

- **React & Next.js** (dependencies: `react`, `react-dom`, `next`):
  - Read `.ai/skills/react-best-practices/SKILL.md` — 70 rules across 8 categories (waterfalls, bundle, server, client, re-render, rendering, JS, advanced)
  - Also load: `.ai/skills/composition-patterns/SKILL.md` (component abstraction patterns)
  - Also load: `.ai/skills/react-view-transitions/SKILL.md` (view transition animations)

- **Vue.js & Nuxt** (dependencies: `vue`, `nuxt`):
  - Read `.ai/skills/vue-best-practices/SKILL.md` — core Composition API + `<script setup>` + TypeScript patterns
  - Also load based on project dependencies:
    - `pinia` in deps → `.ai/skills/vue-pinia-best-practices/SKILL.md` (state management)
    - `vue-router` in deps → `.ai/skills/vue-router-best-practices/SKILL.md` (routing patterns)
    - Testing task → `.ai/skills/vue-testing-best-practices/SKILL.md` (Vitest + Vue Test Utils)
    - Debugging task → `.ai/skills/vue-debug-guides/SKILL.md` (troubleshooting & devtools)
    - Composable design → `.ai/skills/create-adaptable-composable/SKILL.md` (reusable composable patterns)

- **Other Frameworks** (Svelte, Angular, etc.):
  - Look for `.ai/skills/{framework}-best-practices/SKILL.md`
  - If no skill file exists, apply general industry best practices and inform the user they can add one

## Extensibility

To add best practices for a new framework:
1. Create a folder `.ai/skills/{framework}-best-practices/`
2. Add a `SKILL.md` with the framework's rules and patterns
3. This router will automatically detect it from `package.json`

No changes to `AGENT.md` or this file needed — detection is automatic.
