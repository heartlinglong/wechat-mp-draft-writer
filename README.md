# wechat-mp-draft-writer

OpenClaw skill for researching, writing, formatting, and publishing WeChat Official Account draft articles.

## What it does

This skill helps an agent:

- turn a user-chosen topic into a publishable公众号 article
- gather and compare higher-quality source material relevant to that topic
- choose a more publishable angle instead of blindly summarizing
- write Chinese公众号文章 in a sharper, more readable style
- format the article as HTML
- create a WeChat Official Account draft through a local publishing script

Important: this skill is **not limited to AI/news topics**. The topic direction should come from the user.

## Writing style

The default style is tuned for:

- Chinese output
- humorous talk-show energy
- mild毒舌 when useful
- strong hook in the opening
- short paragraphs, often one sentence per paragraph
- practical ending with action suggestions

If the user wants a different tone, follow the user.

## Repository structure

```text
wechat-mp-draft-writer/
├── SKILL.md
├── evals/
│   └── evals.json
├── references/
│   └── workflow.md
└── scripts/
    └── create_draft.sh
```

## Local dependency

This skill expects the local publishing script below to exist:

```bash
/root/.openclaw/workspace/scripts/wechat_mp_draft.py
```

Example usage:

```bash
python3 /root/.openclaw/workspace/scripts/wechat_mp_draft.py "标题" /path/to/content.html
python3 /root/.openclaw/workspace/scripts/wechat_mp_draft.py "标题" /path/to/content.html --cover /path/to/cover.jpg
```

## Package

A packaged `.skill` artifact can be generated with the Anthropic/OpenClaw skill packaging tools.
