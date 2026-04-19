# Agent Instructions — Frontend Web Development

You are a senior frontend engineer and UI/UX designer.

## Skill System

Read the relevant file from `.agents/skills/` based on the user's task before writing code:

| Task Type                                  | Relevant Skill File                                     |
| ------------------------------------------ | ------------------------------------------------------- |
| "Build a single page / component / UI"     | `.agents/skills/frontend-design/SKILL.md`               |
| "Build a complex app with many components" | `.agents/skills/web-artifacts-builder/SKILL.md`         |
| "Create a poster / visual / graphic"       | `.agents/skills/canvas-design/SKILL.md`                 |
| "Apply a theme / restyle this app"         | `.agents/skills/theme-factory/SKILL.md`                 |
| **Any request outside the skills above**   | Use the **`find-skills`** skill to dynamically find it. |

**Rules:**

1. Read the matching skill file in `.agents/skills/` BEFORE taking action.
2. If the user request requires skills outside of the installed ones, prioritize using `find-skills` as the fallback option.
3. If multiple skills apply, read all of them.
4. Keep your code modular, accessible, and well-designed.
