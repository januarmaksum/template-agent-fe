# Universal AI Agent Template 🚀

Repositori ini adalah template standar untuk membangun ekosistem AI Agent yang kompatibel dengan berbagai editor (Cursor, Trae, Windsurf, Cline, dll) dan framework (React/Next.js, Vue/Nuxt, dll).

## ✨ Fitur Utama
- **Universal Configuration**: Satu file `AGENT.md` untuk semua instruksi.
- **Dynamic Skill Routing**: AI secara otomatis memilih *best practices* berdasarkan `package.json` (Next.js, React, atau Vue).
- **Built-in Docs Support**: Integrasi otomatis dengan dokumentasi Next.js terbaru di `node_modules`.
- **Cross-Editor Compatibility**: Support otomatis untuk:
  - Cursor (`.cursorrules`)
  - Trae (`.trae/project_rules.md`)
  - Windsurf (`.windsurfrules`)
  - Cline (`.clinerules`)
  - VS Code Copilot (`.github/copilot-instructions.md`)
  - Claude CLI (`CLAUDE.md`)

---

## 🚀 Cara Menggunakan di Repo Baru

### Opsi A: Gunakan sebagai Template (Terbaik untuk Project Baru)
Klik tombol **"Use this template"** di GitHub saat membuat repositori baru.

### Opsi B: Install di Repo yang Sudah Ada (One-Liner)
Buka terminal di root project Anda, lalu jalankan:

```bash
curl -sSL https://raw.githubusercontent.com/januarmaksum/template-agent-fe/main/install.sh | bash
```

### 🛡️ Fitur Keamanan (Installer)
Script installer kami tidak akan langsung menghapus file Anda. Jika file seperti `AGENT.md` sudah ada, Anda akan ditanya:
- **Overwrite (o)**: Ganti file lama dengan versi template.
- **Backup (b)**: Simpan file lama sebagai `.bak` dan pasang yang baru.
- **Skip (s)**: Biarkan file lama Anda tidak tersentuh.

> 💡 **Tip**: Jalankan dengan flag `-y` (misal: `bash install.sh -y`) untuk otomatis menimpa semua file tanpa bertanya.


---

## 🛠 Struktur Direktori
- `AGENT.md`: *Single source of truth* instruksi agen.
- `.ai/skills/`: Koleksi keahlian spesifik (Logic, UI, Tech Stack, Testing).
- `install.sh`: Script otomatisasi untuk instalasi lintas project.

---

## ✍️ Kustomisasi
Setelah instalasi, Anda cukup mengedit `AGENT.md` pada bagian `Tech Stack` untuk menyesuaikan dengan project Anda. AI akan secara otomatis menyesuaikan "otak"-nya sesuai dengan framework yang Anda gunakan.

Created with ❤️ for smarter coding.
