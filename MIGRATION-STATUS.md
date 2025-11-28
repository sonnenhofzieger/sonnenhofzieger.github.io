# Astro Migration Status

## ✅ Server Running Successfully

Dev server started on `http://localhost:4322/`

## Completed

### Project Setup
- [x] Astro project initialized
- [x] `astro.config.mjs` configured with sitemap integration
- [x] SCSS support added via `sass` package
- [x] Assets copied to `public/` (images, vendor fonts, bootstrap)

### Layouts
- [x] `BaseLayout.astro` - Main layout with head, meta tags, analytics
- [x] `LegalLayout.astro` - Simplified layout for legal pages

### Components
- [x] `Navigation.astro` - Hamburger menu with sidebar
- [x] `Hero.astro` - Full-width background hero section
- [x] `Portfolio.astro` - Product grid container
- [x] `PortfolioItem.astro` - Individual product card with hover effects
- [x] `FAQ.astro` - FAQ section with Q&A items
- [x] `About.astro` - Farm history section
- [x] `Contact.astro` - Contact info with phone, email, address
- [x] `LeafletMap.astro` - Lazy-loaded OpenStreetMap
- [x] `Footer.astro` - Social links, copyright, legal links
- [x] `SchemaOrg.astro` - JSON-LD structured data
- [x] `SmoothScroll.astro` - Smooth scrolling behavior

### Pages
- [x] `index.astro` - Main homepage
- [x] `impressum.astro` - Legal imprint page

### Styles
- [x] All SCSS partials migrated (`_variables`, `_mixins`, `_global`, etc.)
- [x] `icons-minimal.css` for Font Awesome & Simple Line Icons

## Still Missing

### Pages
- [ ] `datenschutz.astro` - Privacy policy page

## How to Complete datenschutz.astro

Create `src/pages/datenschutz.astro` with this structure:

```astro
---
import LegalLayout from '../layouts/LegalLayout.astro';
---

<LegalLayout title="DATENSCHUTZERKLÄRUNG">
  <h2>1. Datenschutz auf einen Blick</h2>
  <h3>Allgemeine Hinweise</h3>
  <p>Die folgenden Hinweise geben einen einfachen Überblick darüber, was mit Ihren
  personenbezogenen Daten passiert...</p>

  <!-- Copy remaining content from original datenschutz.html lines 59-85 -->
</LegalLayout>
```

The content sections to include:
1. Datenschutz auf einen Blick
2. Hosting und Content Delivery Networks (CDN)
3. Allgemeine Hinweise und Pflichtinformationen
4. Datenerfassung auf dieser Website
5. Soziale Medien (Instagram)
6. Plugins und Tools

## Commands

```bash
# Development
pnpm dev

# Build for production
pnpm build

# Preview production build
pnpm preview
```

## File Structure

```
astro-migration/
├── src/
│   ├── components/
│   │   ├── About.astro
│   │   ├── Contact.astro
│   │   ├── FAQ.astro
│   │   ├── Footer.astro
│   │   ├── Hero.astro
│   │   ├── LeafletMap.astro
│   │   ├── Navigation.astro
│   │   ├── Portfolio.astro
│   │   ├── PortfolioItem.astro
│   │   ├── SchemaOrg.astro
│   │   └── SmoothScroll.astro
│   ├── layouts/
│   │   ├── BaseLayout.astro
│   │   └── LegalLayout.astro
│   ├── pages/
│   │   ├── index.astro
│   │   ├── impressum.astro
│   │   └── datenschutz.astro  ← TODO
│   └── styles/
│       ├── main.scss
│       ├── icons-minimal.css
│       └── _*.scss (partials)
└── public/
    ├── img/
    ├── vendor/
    ├── CNAME
    └── robots.txt
```
