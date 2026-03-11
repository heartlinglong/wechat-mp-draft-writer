---
name: wechat-mp-draft-writer
description: Research, write, format, and publish WeChat Official Account draft articles about AI/news into the公众号草稿箱. Use whenever the user asks to 写公众号文章、生成公众号草稿、发到微信公众号草稿箱、整理 AI 资讯成公众号文、做公众号封面、或根据新闻/链接产出适合公众号发布的中文文章。 Also use when the task needs the local script `/root/.openclaw/workspace/scripts/wechat_mp_draft.py` to create a draft with an auto-generated or provided cover.
---

# WeChat MP Draft Writer

Write Chinese公众号文章 that are readable, sharp, and publishable, then create a draft in the WeChat Official Account draft box.

## Outcome

Produce these artifacts unless the user asks otherwise:
1. A final Chinese title
2. A polished HTML article file
3. Optionally a cover image path
4. A created WeChat draft via the local publish script

## Local publishing tool

Use this local script to create the draft:

```bash
python3 /root/.openclaw/workspace/scripts/wechat_mp_draft.py "标题" /path/to/content.html
python3 /root/.openclaw/workspace/scripts/wechat_mp_draft.py "标题" /path/to/content.html --cover /path/to/cover.jpg
```

What the script does:
- uploads the cover image
- auto-generates a default cover if none is provided
- creates the draft in the公众号草稿箱

## Source selection

Do not lock onto a single source.

Prefer a small set of better sources over many noisy ones. Compare freshness, credibility, and readability, then choose the topic that is most worth a normal reader's attention.

Default priority sources:
- company official blogs / release notes / research pages
- major tech media: MIT Technology Review, TechCrunch, The Verge
- Chinese AI/tech outlets: 机器之心, 36氪
- broad aggregators only as discovery tools, not as the final authority

## Writing style

Target style:
- 中文
- 幽默脱口秀风
- 允许毒舌，但不要低级、脏话堆砌或为攻击而攻击
- 像一个见过很多发布会套路的人在替读者说人话

## Article requirements

Always aim for:
1. 开头两句强钩子
2. 一句话一段，段落间留空
3. 标题符合人类猎奇心理：有悬念、反差、情绪张力，但不低级标题党
4. 过渡自然，像聊天，不像公文
5. 不保留“据某某报道”这类来源痕迹；把信息消化后再写
6. 短稿优先，通常 800-1500 字
7. 结尾给方法：读者现在能做什么、该怎么判断、该盯什么信号
8. 封面图必须与主题强相关；如果有封面文字，必须是中文且不能乱码

## Recommended workflow

### 1) Find the angle
First decide the most publishable angle, not just the most new headline.

Useful angles:
- 这事为什么比表面更大
- 谁会直接受影响
- 行业里谁在装，谁在真做事
- 普通读者现在该怎么用、怎么避坑、怎么判断下一步

### 2) Distill the material
Before writing, extract:
- the single-sentence core claim
- 3-5 key facts worth keeping
- what is genuinely new vs what is PR noise
- the practical implication for readers

### 3) Write for scanning
Keep paragraphs short. Every paragraph should either:
- push the story forward
- explain why it matters
- give a concrete example
- deliver the practical takeaway

### 4) Convert to publishable HTML
Create a simple HTML file with clean paragraphs. Avoid heavy inline styling unless needed.

Suggested structure:
```html
<h1>标题</h1>
<p>钩子 1</p>
<p>钩子 2</p>
<p>正文段落……</p>
<p>正文段落……</p>
<p>结尾行动建议……</p>
```

### 5) Publish the draft
When the user wants an actual草稿, run the local script.

## Quality bar

Before publishing, verify:
- 标题够有吸引力但不油腻
- 第一屏就能把人拽住
- 全文没有“媒体搬运腔”
- 没有明显事实错漏或时间线混乱
- 结尾不是空喊，而是有判断框架或行动建议
- HTML 文件是 UTF-8 编码

## Examples of requests that should trigger this skill
- “把今天最值得写的 AI 新闻做成公众号文章”
- “根据这几个链接写一篇适合公众号发的中文稿子”
- “帮我整理成微信公众号草稿，顺手把封面也处理掉”
- “给我写一篇毒舌一点、但能发公众号的 AI 评论文”

## Notes

- If the user only wants a summary, you can stop before HTML/draft creation.
- If the user wants a real WeChat draft, produce the HTML file first, then call the publish script.
- If the topic is weak, say so and propose a better angle instead of forcing a mediocre article.
