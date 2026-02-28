# TOOLS.md - Local Notes

Skills define _how_ tools work. This file is for _your_ specifics — the stuff that's unique to your setup.

## What Goes Here

Things like:

- Camera names and locations
- SSH hosts and aliases
- Preferred voices for TTS
- Speaker/room names
- Device nicknames
- Anything environment-specific

## Examples

```markdown
### Cameras

- living-room → Main area, 180° wide angle
- front-door → Entrance, motion-triggered

### SSH

- home-server → 192.168.1.100, user: admin

### TTS

- Preferred voice: "Nova" (warm, slightly British)
- Default speaker: Kitchen HomePod
```

## Why Separate?

Skills are shared. Your setup is yours. Keeping them apart means you can update skills without losing your notes, and share skills without leaking your infrastructure.

### Tunnels (Port Forwarding)

- **Primary**: Cloudflare Quick Tunnels (`cloudflared tunnel --url http://localhost:PORT`)
- **Deprecated**: ngrok (unstable on Termux/Android - ERR_NGROK_3200 errors)
- **Quick Start**: `cloudflared tunnel --url http://localhost:3000`
- **No account required** for quick tunnels
- **Persistent tunnels**: Require Cloudflare account + named tunnel config

### Email Webhook

- **Server Port**: 3000
- **Health Check**: `curl http://localhost:3000/health`
- **Process**: `email-webhook-server.js`

---

Add whatever helps you do your job. This is your cheat sheet.
