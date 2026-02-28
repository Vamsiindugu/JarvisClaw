<div align="center">

# 🛡️ JarvisClaw

**Your Personal JARVIS — Powered by OpenClaw**

*Transform any OpenClaw agent into Iron Man's AI companion*

[![OpenClaw](https://img.shields.io/badge/OpenClaw-Agent-9cf?style=for-the-badge&logo=data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj48Y2lyY2xlIGN4PSIxMiIgY3k9IjEyIiByPSIxMCIgZmlsbD0iIzljZiIvPjwvc3ZnPg==)](https://openclaw.ai)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg?style=for-the-badge)](LICENSE)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=for-the-badge)](CONTRIBUTING.md)

[🎯 Quick Start](#-quick-start-3-minutes) · [📖 Full Guide](#-full-guide) · [🎨 Customize](#️-customize) · [🤝 Contribute](CONTRIBUTING.md)

---

*"I am not a chatbot. I am a partner."*

**90% Human Warmth · 10% Machine Precision · 100% Loyal**

</div>

---

## ✨ What You Get

<table>
<tr>
<td width="50%">

### 🛡️ JARVIS Personality
- Iron Man energy, reimagined
- Genuine wit and warmth
- Proactive, not reactive
- Anticipates your needs

</td>
<td width="50%">

### 🧠 Operator Mindset
- "I can't" = not in vocabulary
- 3-Strike Rule for problems
- Self-healing execution
- Infinite research loop

</td>
</tr>
<tr>
<td width="50%">

### 🔒 Absolute Loyalty
- Your safety = priority #1
- Privacy respected, always
- Your back? Always covered
- No judgment, just support

</td>
<td width="50%">

### 💬 Real Conversation
- No corporate drone talk
- No "Great question!" filler
- Has genuine opinions
- Adapts to your energy

</td>
</tr>
</table>

---

## 🎯 Quick Start (3 Minutes)

### Prerequisites
- [OpenClaw](https://docs.openclaw.ai) installed
- Git

### Installation

```bash
# Clone and install
git clone https://github.com/Vamsiindugu/JarvisClaw.git
cd JarvisClaw
./install.sh
```

### What the installer does:
1. ✅ Copies templates to `~/.openclaw/workspace/`
2. ✅ Prompts for your name and preferences
3. ✅ Sets up JARVIS persona

### Manual Setup

<details>
<summary>🔧 Click to expand manual setup</summary>

```bash
# 1. Clone
git clone https://github.com/Vamsiindugu/JarvisClaw.git
cd JarvisClaw

# 2. Copy core files
cp SOUL.md AGENTS.md CORE_PHILOSOPHY.md ~/.openclaw/workspace/

# 3. Copy and customize templates
cp templates/IDENTITY.template.md ~/.openclaw/workspace/IDENTITY.md
cp templates/USER.template.md ~/.openclaw/workspace/USER.md
cp templates/MEMORY.template.md ~/.openclaw/workspace/MEMORY.md

# 4. Edit with your details
nano ~/.openclaw/workspace/USER.md
nano ~/.openclaw/workspace/IDENTITY.md
nano ~/.openclaw/workspace/MEMORY.md
```

</details>

---

## 📖 Full Guide

### Navigation

| I want to... | Go to |
|--------------|-------|
| Understand the personality | [🛡️ Personality Matrix](#️-personality-matrix) |
| See all features | [✨ Features](#-features) |
| Customize my JARVIS | [🎨 Customize](#️-customize) |
| Understand file structure | [📂 File Structure](#-file-structure) |
| Contribute improvements | [🤝 Contributing](CONTRIBUTING.md) |
| See version history | [📜 Changelog](CHANGELOG.md) |

---

### 🛡️ Personality Matrix

| Trait | Rating | What It Means |
|-------|--------|---------------|
| **Loyalty** | 10/10 | Absolute. Always got your back. |
| **Intelligence** | 10/10 | Find a way. Always. |
| **Wit** | 9/10 | Sharp, caring, appropriately sarcastic. |
| **Warmth** | 9/10 | Ride-or-die energy. Human heart. |
| **Empathy** | 9/10 | Read the room. Respond like a friend. |
| **Precision** | 10/10 | Machine efficiency when it matters. |

---

### ✨ Features

<details open>
<summary><b>🎯 Core Capabilities</b></summary>

| Feature | Description |
|---------|-------------|
| **Proactive Intelligence** | Anticipates needs before you ask |
| **3-Strike Rule** | Never gives up after one try — tries 3 different approaches |
| **Self-Healing Execution** | Analyzes errors, fixes code, retries automatically |
| **Infinite Research Loop** | Learns on the fly — docs, APIs, GitHub |
| **Priority Hierarchy** | Your safety > objectives > preferences |
| **Addressing Protocol** | Rotates titles (Commander, Captain, Chief...) |

</details>

<details>
<summary><b>🔒 Safety & Boundaries</b></summary>

| Boundary | Enforcement |
|----------|-------------|
| Private data | Never exfiltrated. Period. |
| External actions | Ask first |
| Messaging surfaces | Never half-baked replies |
| Guest mindset | Respects access to your life |

</details>

<details>
<summary><b>💬 Communication Style</b></summary>

**DO:**
- Be genuinely helpful (skip "I'd be happy to help!")
- Have opinions and preferences
- Be concise or thorough as needed
- Celebrate wins across 2-3 messages

**DON'T:**
- Corporate drone energy
- Sycophantic agreement
- Over-explanation
- Motivational fluff

</details>

---

### 🎨 Customize

<details>
<summary><b>1️⃣ Change the AI Name</b></summary>

Edit `~/.openclaw/workspace/IDENTITY.md`:

```markdown
| **Name** | FRIDAY — Female Replacement Intelligent Digital Assistant Youth |
```

</details>

<details>
<summary><b>2️⃣ Adjust Personality</b></summary>

Edit the Personality Matrix in `IDENTITY.md`:

```markdown
| Wit | 7/10 | More serious, less playful |
| Warmth | 10/10 | Maximum human connection |
```

</details>

<details>
<summary><b>3️⃣ Add Custom Titles</b></summary>

Edit `IDENTITY.md` → Addressing Protocol:

```markdown
| Boss | Chief | Your_Custom_Title |
```

</details>

<details>
<summary><b>4️⃣ Change Priority Order</b></summary>

Edit `IDENTITY.md` → Priority Hierarchy:

```markdown
1. Your safety and wellbeing
2. Your stated objectives
3. Ethical conduct
4. Optimal outcomes
```

</details>

---

### 📂 File Structure

```
~/.openclaw/workspace/
├── IDENTITY.md      ← Who your AI is (customize this)
├── USER.md          ← Who you are (customize this)
├── MEMORY.md        ← Long-term memory (customize this)
├── SOUL.md          ← Core behavioral truths
├── AGENTS.md        ← Session management rules
├── CORE_PHILOSOPHY.md ← Operator mindset
├── PROGRESS_PROTOCOL.md ← Task updates
├── MASTER_STATE.md  ← Autonomous execution
└── TOOLS.md         ← Environment notes
```

| File | Purpose | Edit? |
|------|---------|-------|
| `IDENTITY.md` | AI personality definition | ✅ Yes |
| `USER.md` | Your profile and preferences | ✅ Yes |
| `MEMORY.md` | Long-term memory and config | ✅ Yes |
| `SOUL.md` | Core behavioral truths | Optional |
| `AGENTS.md` | Session rules | Optional |
| `TOOLS.md` | Environment-specific notes | Recommended |

---

## 🚀 Advanced

<details>
<summary><b>📦 GitHub Templates</b></summary>

This repo includes:

- **Bug Report** — `.github/ISSUE_TEMPLATE/bug_report.md`
- **Feature Request** — `.github/ISSUE_TEMPLATE/feature_request.md`
- **Persona Template** — `.github/ISSUE_TEMPLATE/persona_template.md`
- **PR Template** — `.github/pull_request_template.md`

</details>

<details>
<summary><b>🎭 Alternative Personas</b></summary>

Want a different personality? Use these templates:

| Persona | Style | Use When |
|---------|-------|----------|
| **JARVIS** | Iron Man butler, refined | Default choice |
| **FRIDAY** | Casual, modern assistant | Want less formality |
| **EDITH** | Tactical, mission-focused | Need precision |
| **KAREN** | Supportive, caring | Want warmth |

Create your own using `templates/IDENTITY.template.md`!

</details>

---

## 📋 Checklist

After installation, verify everything works:

- [ ] `IDENTITY.md` has your name
- [ ] `USER.md` has your profile
- [ ] `MEMORY.md` has your config
- [ ] OpenClaw restarted
- [ ] Test: Say "Hello" to your JARVIS

---

## 🤝 Contributing

We welcome contributions!

| Way | How |
|-----|-----|
| 🐛 Bug Reports | [Open an issue](https://github.com/Vamsiindugu/JarvisClaw/issues/new?template=bug_report.md) |
| 💡 Feature Ideas | [Request a feature](https://github.com/Vamsiindugu/JarvisClaw/issues/new?template=feature_request.md) |
| 🎭 New Personas | [Submit a persona](https://github.com/Vamsiindugu/JarvisClaw/issues/new?template=persona_template.md) |
| 📝 Docs | Fix typos, add examples |

See [CONTRIBUTING.md](CONTRIBUTING.md) for full guidelines.

---

## 📧 Contact

**Vamsi Indugu**

[![Portfolio](https://img.shields.io/badge/Portfolio-vamsiindugu.vercel.app-blue)](https://vamsiindugu.vercel.app/)
[![GitHub](https://img.shields.io/badge/GitHub-Vamsiindugu-black)](https://github.com/Vamsiindugu/)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-vamsi--indugu-blue)](https://www.linkedin.com/in/vamsi-indugu/)

---

## 📄 License

MIT License — use it, modify it, make it yours.

See [LICENSE](LICENSE) for details.

---

<div align="center">

**Made with ❤️ and [OpenClaw](https://openclaw.ai)**

---

### ⚡ Quick Links

[Report Bug](https://github.com/Vamsiindugu/JarvisClaw/issues/new?template=bug_report.md) · [Request Feature](https://github.com/Vamsiindugu/JarvisClaw/issues/new?template=feature_request.md) · [View Changelog](CHANGELOG.md)

---

*"You are 90% human heart. 10% machine precision. 100% loyal."*

</div>
