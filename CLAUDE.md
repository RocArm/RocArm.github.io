# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Personal academic website for **Roc Armenter** — Executive Vice President and Economist at the Federal Reserve Bank of Philadelphia, and Visiting Scholar at the Wharton School of Finance. Hosted on GitHub Pages at [rocarm.github.io](https://rocarm.github.io/).

## Tech Stack

- **Static HTML5** — single-page site (`index.html`, ~570 lines)
- **Tailwind CSS v4** via CDN (`<script src="https://cdn.tailwindcss.com">`) — no build step
- **Vanilla JavaScript** — minimal, only mobile menu toggle
- **No package manager, no build system, no framework**

## File Structure

```
index.html                  # Main (and only) page
README.md                   # Public-facing readme (see caveat under Deployment)
assets/css/custom.css       # CSS custom properties (Academic Slate theme)
assets/images/profile.jpg   # Profile photo
files/                      # Research paper PDFs and CV (see files/ list below)
docs/PLAN.md                # Archived redesign plan (completed)
docs/REVIEW.md              # Archived review notes
docs/REVIEW_FINDINGS.md     # Archived review findings
docs/bio_text.txt           # Source bio copy
docs/backups/               # Old versions of index.html
docs/scripts/               # Maintenance PowerShell scripts (e.g. reorganize.ps1)
```

`oracle.py` and `__pycache__/` in the repo root are an unrelated personal
scratch script, not part of the website — leave them out of any site changes.

## Local Development

No build required. Open `index.html` directly or serve with:

```bash
python -m http.server 8000
# or
npx http-server
```

## Deployment

Push to `master` branch — GitHub Pages auto-deploys from the repository `rocarm/rocarm.github.io`.

```bash
git push origin master
```

## Color Scheme: Academic Slate

Defined in `assets/css/custom.css` via CSS custom properties:

| Token              | Value     | Usage                |
|--------------------|-----------|----------------------|
| `--primary-color`  | `#334155` | Charcoal (headings)  |
| `--accent-color`   | `#14b8a6` | Teal (links, badges) |
| `--text-primary`   | `#1e293b` | Body text            |
| `--bg-secondary`   | `#f8fafc` | Alternating sections |

Tailwind classes used inline: `text-teal-600`, `bg-teal-50`, `hover:text-teal-600`, `border-gray-200`.

## Code Conventions

- **Tailwind utility classes** for all styling — no custom component CSS
- **Sections** follow this pattern:
  ```html
  <section id="section-id" class="py-16 bg-[color]">
    <div class="max-w-5xl mx-auto px-4 sm:px-6 lg:px-8">
      <!-- Content -->
    </div>
  </section>
  ```
- **Cards** (publications): `bg-white border border-gray-200 rounded-lg shadow-sm p-6 hover:shadow-md transition`
- **Responsive**: mobile-first with `md:` breakpoints
- **Links**: teal accent color with hover transitions
- **Journal names**: italicized
- **Co-authors**: hyperlinked to their institutional profiles
- **UTF-8 encoding** — important for names with diacritics (e.g., "Miklós")

## Site Sections (in order)

The page has only **four** top-level `<section id="...">` blocks. `Nav` and
`Footer` are outside them, and "Other Publications" / "Short Notes" are `<h3>`
subsections nested *inside* the section listed beside them — not standalone
sections. Update nav anchors and headings together when adding/renaming.

- **Nav** — sticky header, hamburger menu on mobile. Anchors: Home,
  Publications, Working Papers, CV (`files/CV.pdf`), Links
- `#home` — profile photo, titles, expertise badges, bio
- `#publications` — published research (cards) + **Other Publications** `<h3>`
  (business review articles)
- `#working-papers` — in-progress research + **Short Notes** `<h3>`
- `#links` — external links (Fed website)
- **Footer** — copyright

## Important Notes

- No status badges on individual papers — section headings indicate status
- Expertise badges: Monetary Policy, Macroeconomics, Finance, Machine Learning
- Contact email: rocarm@wharton.upenn.edu
- Paper PDFs live in `files/` directory — do not reorganize without updating all `href` paths in `index.html`
