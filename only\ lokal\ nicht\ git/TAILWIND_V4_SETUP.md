# Tailwind CSS v4 + DaisyUI Setup für Next.js

## Problem
Tailwind CSS v4 mit DaisyUI Styles werden in Next.js nicht geladen. Komponenten erscheinen unstyled.

## Root Cause
Tailwind v4 hat ein anderes Setup als v3. Die PostCSS-Konfiguration und CSS-Imports müssen speziell konfiguriert werden.

## Lösung

### 1. PostCSS Konfiguration (`postcss.config.js`)
```javascript
module.exports = {
  plugins: {
    '@tailwindcss/postcss': {},
  },
};
```

**Wichtig:** Nutze `@tailwindcss/postcss`, nicht das alte `tailwindcss` Plugin!

### 2. Global CSS (`src/app/globals.css`)
```css
@import "tailwindcss";
@plugin "daisyui";

/* Rest der CSS... */
```

**Wichtig:**
- `@import "tailwindcss"` statt `@tailwind base/components/utilities`
- `@plugin "daisyui"` direkt in der CSS (nicht via tailwind.config.js)

### 3. Tailwind Config
**NICHT MEHR NÖTIG!** `tailwind.config.js` kann komplett gelöscht werden bei Tailwind v4.

Falls noch benötigt (z.B. für Content-Scanning), minimal halten:
```javascript
/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    './src/**/*.{js,jsx,ts,tsx}',
  ],
};
```

### 4. Package Versionen
```json
{
  "dependencies": {
    "tailwindcss": "^4.x",
    "@tailwindcss/postcss": "^4.x",
    "daisyui": "^5.x"
  }
}
```

## Unterschied: Tailwind v3 vs v4

| Aspekt | Tailwind v3 | Tailwind v4 |
|--------|-------------|------------|
| PostCSS Plugin | `tailwindcss` | `@tailwindcss/postcss` |
| CSS Imports | `@tailwind base/components/utilities` | `@import "tailwindcss"` |
| Config | Komplexe `tailwind.config.js` | Minimal oder gar nicht nötig |
| Plugins | Via `tailwind.config.js` | Via `@plugin` in CSS |
| DaisyUI | Im `tailwind.config.js` plugins | Via `@plugin "daisyui"` in CSS |

## Debugging Tipps

Falls Styles immer noch nicht laden:

1. **Clear Cache**
   ```bash
   rm -rf .next
   npm run dev
   ```

2. **Prüfe Content Path** in CSS oder Config
   ```javascript
   content: ['./src/**/*.{js,jsx,ts,tsx}']
   ```

3. **Verifiziere PostCSS**
   ```bash
   cat postcss.config.js
   ```

4. **DevTools Check**
   - F12 öffnen
   - Network Tab
   - Nach `.css` Dateien suchen
   - Prüfe ob Tailwind Styles geladen sind

## Referenz
- [Tailwind CSS v4 Docs](https://tailwindcss.com/docs)
- [DaisyUI v5 Docs](https://daisyui.com)
- [Next.js App Router](https://nextjs.org/docs/app)
