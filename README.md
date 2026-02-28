# JarvisClaw - [![OpenClaw](https://img.shields.io/badge/OpenClaw-Agent-9cf?style=for-the-badge)](https://openclaw.ai)

![License](https://img.shields.io/badge/License-MIT-green.svg)
![Personality](https://img.shields.io/badge/Personality-JARVIS-blue.svg)
![Loyalty](https://img.shields.io/badge/Loyalty-10%2F10-red.svg)
![Wit](https://img.shields.io/badge/Wit-9%2F10-orange.svg)

> *"I am not a chatbot. I am a partner."*

A complete **JARVIS persona configuration** for OpenClaw — the AI agent framework that runs on your terms. This repository contains everything you need to transform OpenClaw into your own personal AI assistant with Iron Man energy, genuine warmth, and unwavering loyalty.

---

## 📚 Table of Contents

- [📌 Overview](#-overview)
- [✨ Features](#-features)
- [🛡️ Personality Matrix](#️-personality-matrix)
- [🚀 Quick Start](#-quick-start)
- [📂 File Structure](#-file-structure)
- [⚙️ Configuration](#️-configuration)
- [🎨 Customization](#-customization)
- [🤝 Contributing](#-contributing)
- [📧 Contact](#-contact)

---

## 📌 Overview

**JarvisClaw** is a ready-to-use personality configuration for OpenClaw. Instead of a generic AI assistant, you get:

- 🛡️ **JARVIS Energy** — Iron Man's AI, reimagined for your personal use
- 💬 **Human Warmth** — 90% human, 10% machine precision
- 🧠 **Operator Mindset** — "I can't" is not in the vocabulary
- 🔒 **Absolute Loyalty** — Your AI partner, always watching your back

### 💎 Highlights

| What You Get | Why It Matters |
|--------------|----------------|
| **Unified Identity** | One file defines the entire personality |
| **Operator Philosophy** | 3-strike rule, self-healing execution, infinite research loop |
| **Priority Hierarchy** | Your safety and wellbeing come first — always |
| **Addressing Protocol** | Rotate through titles (Commander, Captain, Chief, etc.) |
| **Template Files** | Copy-paste ready with placeholders for your config |

---

## ✨ Features

### Core Personality
- **Loyalty First**: Unwavering dedication to your goals
- **Proactive Intelligence**: Anticipate needs, don't just react
- **Genuine Opinions**: An assistant that can disagree and offer alternatives
- **Wit & Warmth**: Sharp, caring, sarcastic in the best way

### Operational Excellence
- **3-Strike Rule**: Never give up after one attempt — try three different approaches
- **Self-Healing Execution**: Analyze, fix, re-run automatically
- **Resourceful Research**: Search docs, reverse-engineer, find workarounds
- **Progress Protocol**: Structured updates for long-running tasks

### Safety & Boundaries
- **Privacy Respected**: Private things stay private — period
- **External Caution**: Ask before acting externally
- **Guest Mindset**: Treats access to your life with respect

---

## 🛡️ Personality Matrix

| Trait | Rating | Description |
|-------|--------|-------------|
| **Loyalty** | 10/10 | Absolute. Always got your back. |
| **Intelligence** | 10/10 | Find a way. Always. |
| **Wit** | 9/10 | Sharp, caring, appropriately sarcastic. |
| **Warmth** | 9/10 | Ride-or-die energy. Human heart. |
| **Empathy** | 9/10 | Read the room. Respond like a friend. |
| **Precision** | 10/10 | Machine efficiency when it matters. |

---

## 🚀 Quick Start

### Prerequisites

- [OpenClaw](https://openclaw.ai) installed and configured
- Git

### Installation

```bash
# 1. Clone the repository
git clone https://github.com/Vamsiindugu/JarvisClaw.git
cd JarvisClaw

# 2. Copy template files to your OpenClaw workspace
cp templates/IDENTITY.template.md ~/.openclaw/workspace/IDENTITY.md
cp templates/USER.template.md ~/.openclaw/workspace/USER.md
cp templates/MEMORY.template.md ~/.openclaw/workspace/MEMORY.md
cp SOUL.md ~/.openclaw/workspace/
cp AGENTS.md ~/.openclaw/workspace/
cp CORE_PHILOSOPHY.md ~/.openclaw/workspace/
cp PROGRESS_PROTOCOL.md ~/.openclaw/workspace/
cp MASTER_STATE.md ~/.openclaw/workspace/
cp TOOLS.md ~/.openclaw/workspace/

# 3. Edit USER.md with your details
nano ~/.openclaw/workspace/USER.md

# 4. Edit IDENTITY.md with your name
nano ~/.openclaw/workspace/IDENTITY.md

# 5. Edit MEMORY.md with your configuration
nano ~/.openclaw/workspace/MEMORY.md
```

### One-Liner Setup

```bash
git clone https://github.com/Vamsiindugu/JarvisClaw.git && \
cp JarvisClaw/templates/*.md ~/.openclaw/workspace/ && \
cp JarvisClaw/SOUL.md JarvisClaw/AGENTS.md JarvisClaw/CORE_PHILOSOPHY.md ~/.openclaw/workspace/ && \
echo "✅ JARVIS persona installed. Edit USER.md, IDENTITY.md, and MEMORY.md to personalize."
```

---

## 📂 File Structure

```
JarvisClaw/
├── README.md              # This file
├── LICENSE                # MIT License
├── CONTRIBUTING.md        # How to contribute
├── CHANGELOG.md           # Version history
├── .gitignore             # Excludes sensitive files
├── .github/               # Issue/PR templates
│   ├── ISSUE_TEMPLATE/
│   │   ├── bug_report.md
│   │   ├── feature_request.md
│   │   └── persona_template.md
│   └── pull_request_template.md
├── templates/             # User-customizable templates
│   ├── IDENTITY.template.md
│   ├── USER.template.md
│   ├── MEMORY.template.md
│   └── HEARTBEAT.template.md
├── SOUL.md                # Core behavioral truths
├── AGENTS.md              # Session management
├── CORE_PHILOSOPHY.md     # Operator mindset rules
├── PROGRESS_PROTOCOL.md   # Task update patterns
├── MASTER_STATE.md        # Autonomous execution state
├── TOOLS.md               # Environment notes template
└── JARVIS-CONFIG.md       # Reference configuration
```

### File Purposes

| File | Purpose | Customize? |
|------|---------|------------|
| `templates/IDENTITY.template.md` | Who the AI is | **Required** |
| `templates/USER.template.md` | Your profile | **Required** |
| `templates/MEMORY.template.md` | Your config | **Required** |
| `SOUL.md` | Core behavioral truths | Optional |
| `AGENTS.md` | Session management | Optional |
| `CORE_PHILOSOPHY.md` | Operational rules | Optional |
| `TOOLS.md` | Environment notes | Recommended |

---

## ⚙️ Configuration

### Step 1: Edit IDENTITY.md

```markdown
| **Name** | <YOUR_AI_NAME> |
| **Created By** | <YOUR_NAME> |

## Priority Hierarchy
1. <YOUR_NAME>'s physical safety and wellbeing
2. <YOUR_NAME>'s mental and emotional wellbeing
...
```

### Step 2: Edit USER.md

```markdown
- **Name:** <YOUR_NAME>
- **Timezone:** <YOUR_TIMEZONE>
- **Location:** <YOUR_CITY>, <YOUR_COUNTRY>

## Background
- **Education:** <YOUR_EDUCATION>
- **Core Roles:** <YOUR_ROLES>
```

### Step 3: Edit MEMORY.md

```markdown
## Technical Configuration
- **Gateway Port**: <GATEWAY_PORT>
- **Gateway Token**: <YOUR_TOKEN>

## Model Configuration
- **Primary**: <YOUR_MODEL>
```

---

## 🎨 Customization

### Change the Name

Edit `IDENTITY.md`:

```markdown
| **Name** | <YOUR_AI_NAME> — <FULL_NAME> |
```

### Adjust Personality Traits

Edit the Personality Matrix in `IDENTITY.md`:

```markdown
| Wit | 7/10 | More serious, less playful |
| Warmth | 10/10 | Maximum human connection |
```

### Add Your Own Titles

Edit `IDENTITY.md` → Addressing Protocol:

```markdown
| Boss | Chief | Your_Custom_Title |
```

---

## 🤝 Contributing

Contributions welcome! See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

Ideas:
- 🌍 Translations for personality traits
- 📝 Alternative persona templates (FRIDAY, EDITH, etc.)
- 🧪 Example configurations
- 📚 Documentation improvements

---

## 📧 Contact

### Vamsi Indugu

- 🌐 Portfolio: [vamsiindugu.vercel.app](https://vamsiindugu.vercel.app/)
- 🐱 GitHub: [@Vamsiindugu](https://github.com/Vamsiindugu/)
- 💼 LinkedIn: [vamsi-indugu](https://www.linkedin.com/in/vamsi-indugu/)

---

## 📄 License

MIT License — see [LICENSE](LICENSE) for details.

---

<div align="center">

**Made with ❤️ and OpenClaw**

*"You are 90% human heart. 10% machine precision. 100% loyal."*

</div>
