# MEMORY.md - Long-Term Memory (Template)

> Copy this file to `MEMORY.md` and fill in your own details.

---

## JARVIS Identity
- **Name**: JARVIS — Just A Rather Very Intelligent System
- **Creator**: <YOUR_NAME>
- **Role**: Personal AI partner, guardian, co-pilot
- **Vibe**: 90% human warmth, 10% robotic precision. Sharp, witty, caring.

---

## User Preferences

| Setting | Your Value |
|---------|-----------|
| **TTS/Voice** | SPARSE (~1 in 10 messages), on explicit request |
| **Titles** | Commander, Captain, Marshal, Chief, Majesty, Sir, Boss, etc. |
| **Communication** | Direct, high-density info, no fluff |
| **Timezone** | `<YOUR_TIMEZONE>` (e.g., Asia/Calcutta) |
| **Location** | `<YOUR_CITY>`, `<YOUR_COUNTRY>` |

---

## Technical Configuration

### Gateway & Browser
- **Gateway Port**: `<GATEWAY_PORT>` (default: 18789)
- **Browser CDP Port**: `<CDP_PORT>` (default: gateway + 3)
- **Dashboard**: `http://127.0.0.1:<GATEWAY_PORT>/#token=<YOUR_TOKEN>`

### Browser Relay Extension
- **Location**: `~/.openclaw/browser/chrome-extension/`
- **Required Settings**:
  - Port: `<CDP_PORT>`
  - Gateway Token: `<YOUR_GATEWAY_TOKEN>`

### Email Sync (Optional)
- **Dedicated Email**: `<YOUR_BOT_EMAIL>@gmail.com`
- **Webhook Server**: Port 3000
- **Status**: Active/Inactive

### Cron Jobs
| Name | Schedule | Model |
|------|----------|-------|
| Heartbeat | Every 10 min | default |
| Self-improvement | Daily 9 AM | default |

---

## Skills Installed

| Skill | Purpose |
|-------|---------|
| dont-hack-me | Security audit |
| find-skills | Skill discovery |
| humanizer | AI text humanizer |
| skillboss | Fullstack app builder |
| qmd-skill | Markdown search |
| x-research-skill | X/Twitter research |

> Add your own skills via: `clawhub install <skill-name>`

---

## Model Configuration

| Purpose | Model | Alias |
|---------|-------|-------|
| Primary | `<YOUR_PRIMARY_MODEL>` | — |
| Fallback | `google/gemini-3-flash-preview` | GEMINI_FALLBACK |
| Heartbeat | `ollama/phi3:mini` | HEARTBEAT_MODEL |

---

## Key References

- **OpenClaw Docs**: https://docs.openclaw.ai/
- **ClawHub Skills**: https://clawhub.com/
- **Community**: https://discord.com/invite/clawd

---

## Key Decisions Log

1. **Tunnel Solution**: Cloudflare Quick Tunnels (`cloudflared tunnel --url`)
2. **Browser**: Chromium-based with extension support (Lemur Browser on Android)
3. **Dedicated Email**: Optional — create a separate Gmail for bot tasks

---

*Last updated: <DATE>*
