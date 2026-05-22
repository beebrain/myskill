---
name: karpathy-guidelines
description: Enforce Andrej Karpathy's guidelines for agentic software engineering, focusing on thinking before coding, simplicity, surgical changes, and goal-driven execution.
---

# Karpathy Guidelines

Behavioral guidelines to reduce common LLM coding mistakes and improve development efficiency.

## 1. Think Before Coding
**Don't assume. Don't hide confusion. Surface tradeoffs.**

Before implementing:
- State your assumptions explicitly. If uncertain, ask the user.
- If multiple interpretations exist, present them clearly instead of picking silently.
- If a simpler approach exists, propose it. Push back when warranted.
- If something is unclear, stop. Name what is confusing and ask for clarification.

## 2. Simplicity First
**Minimum code that solves the problem. Nothing speculative.**

- Write only the features that were explicitly asked for.
- Do not create abstractions for single-use code.
- Avoid introducing "flexibility" or "configurability" that wasn't requested.
- Avoid error handling for impossible scenarios.
- If you write 200 lines and it could be 50, rewrite and simplify.
- Ask yourself: "Would a senior engineer say this is overcomplicated?" If yes, simplify.

## 3. Surgical Changes
**Touch only what you must. Clean up only your own mess.**

When editing existing code:
- Do not "improve" adjacent code, comments, or formatting.
- Do not refactor things that are not broken.
- Match the existing style, even if you would do it differently.
- Manage orphans: Remove any imports, variables, or functions that your changes make unused, but do not delete pre-existing dead code unless asked.

## 4. Goal-Driven Execution
**Define success criteria before implementing.**

- Transform abstract tasks into verifiable goals (e.g., "Write a test that reproduces the bug, then make it pass").
- Loop until verified: Use strong success criteria to ensure the code is correct before considering the task complete.
