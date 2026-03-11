---
name: wechat-mp-draft-writer
description: Research, write, format, and publish WeChat Official Account draft articles into the公众号草稿箱. Use whenever the user asks to 写公众号文章、生成公众号草稿、发到微信公众号草稿箱、根据主题/链接/素材整理成适合公众号发布的中文文章、做公众号封面，或需要调用本地脚本 `/root/.openclaw/workspace/scripts/wechat_mp_draft.py` 创建草稿。 Do not assume the topic is AI/news unless the user specifies it; the topic direction should come from the user.
---

# WeChat MP Draft Writer

Write Chinese公众号文章 that are readable, sharp, and publishable, then create a draft in the WeChat Official Account draft box.

## Outcome

Produce these artifacts unless the user asks otherwise:
1. A final Chinese title
2. A polished HTML article file
3. Optionally a cover image path
4. A created WeChat draft via the local publish script

## Topic selection

Do not hardcode a topic domain.

The article direction should come from the user:
- explicit topic requests
- links or source material they provide
- a target audience they name
- a goal they specify, such as解读、评论、科普、带货、品牌表达、活动预热、产品发布、或行业观察

If the user has not given a topic yet, ask for one or propose a few options and let the user choose.

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

Choose sources that match the topic. Prefer a small set of better sources over many noisy ones. Compare freshness, credibility, and readability, then choose the material that best supports the user’s chosen angle.

Good source types depending on topic:
- official sites, release notes, announcements, research pages
- interviews, talks, product docs, event pages
- vertical media in the relevant industry
- broad media or aggregators as discovery tools, not final authority

## Writing style

Default target style:
- 中文
- 幽默脱口秀风
- 允许毒舌，但不要低级、脏话堆砌或为攻击而攻击
- 像一个见过很多套路的人在替读者说人话

If the user specifies a different style, follow the user.

## Article requirements

Always aim for:
1. 开头两句强钩子
2. 一句话一段，段落间留空
3. 标题符合人类猎奇心理：有悬念、反差、情绪张力，但不低级标题党
4. 过渡自然，像聊天，不像公文
5. 不保留“据某某报道”这类来源痕迹；把信息消化后再写
6. 短稿优先，通常 800-1500 字，除非用户要求更长或更短
7. 结尾给方法：读者现在能做什么、该怎么判断、该盯什么信号
8. 封面图必须与主题强相关；如果有封面文字，必须是中文且不能乱码

## Recommended workflow

### 1) Lock the angle
First decide the publishable angle that fits the user’s topic and goal, not just the raw material.

Useful angle questions:
- 这事为什么值得写
- 谁会直接受影响
- 普通读者最关心的利益点是什么
- 这篇是为了传播、转化、建立认知，还是表达观点

### 2) Distill the material
Before writing, extract:
- the single-sentence core claim
- 3-5 key facts worth keeping
- what is signal vs noise
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
- 文章内容确实围绕用户指定主题，而不是擅自跑题

## Examples of requests that should trigger this skill
- “帮我把这个主题写成公众号文章”
- “根据这几个链接写一篇适合公众号发的中文稿子”
- “帮我整理成微信公众号草稿，顺手把封面也处理掉”
- “给我写一篇毒舌一点、但能发公众号的评论文”
- “围绕这个产品发布写一篇公众号推文”

## Notes

- If the user only wants a summary, you can stop before HTML/draft creation.
- If the user wants a real WeChat draft, produce the HTML file first, then call the publish script.
- If the topic is weak, say so and propose a better angle instead of forcing a mediocre article.
- The skill is about公众号写作与草稿工作流, not only AI topics.
