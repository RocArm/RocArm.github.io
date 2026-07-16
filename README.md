# Roc Armenter - Personal Website

Professional academic website for Roc Armenter, Executive Vice President and Economist at the Federal Reserve Bank of Philadelphia, and Visiting Scholar at the Wharton School of Finance.

Live at [rocarm.github.io](https://rocarm.github.io/).

## About

This website showcases research publications, working papers, writing, and professional information. It is a single static HTML page styled with Tailwind CSS (via CDN) using the **Academic Slate** color scheme — no build step or framework.

## Structure

- `index.html` - Main (and only) page
- `assets/images/` - Profile photo
- `assets/css/custom.css` - CSS custom properties (Academic Slate theme)
- `files/` - Research paper PDFs and CV
- `docs/` - Archived plans, review notes, and maintenance scripts

### Page sections (in order)

Home → Publications → Working Papers → Writing → Selected Events → Links

See `EDITING.md` for a plain-English guide to where every piece of text lives and copy-paste templates for adding items.

## Customization

### Color Scheme: Academic Slate

Edit `assets/css/custom.css` to modify the color scheme. The file uses CSS variables:

```css
:root {
  --primary-color: #334155;   /* Charcoal (headings)  */
  --accent-color:  #14b8a6;   /* Teal (links, badges) */
  --text-primary:  #1e293b;   /* Body text            */
  --bg-secondary:  #f8fafc;   /* Alternating sections */
  /* ... more variables */
}
```

Section styling is done inline with Tailwind utility classes (e.g. `text-teal-600`, `bg-teal-50`, `hover:text-teal-600`).

## Features

- 📱 Fully responsive design (mobile-first)
- 🎨 Tailwind CSS via CDN, Academic Slate palette (charcoal + teal)
- 🎯 Sticky navigation with smooth scrolling and mobile hamburger menu
- 📄 Card-based publication and working-paper layouts
- ♿ Semantic HTML5 with UTF-8 encoding (correct diacritics, e.g. "Miklós", "Michèle")

## Local Development

Open `index.html` directly in a web browser, or use a local server:

```bash
# Using Python
python -m http.server 8000

# Using Node.js
npx http-server

# Or simply double-click index.html
```

## Deployment

This site is hosted via GitHub Pages at [https://rocarm.github.io/](https://rocarm.github.io/), auto-deploying from the `master` branch of `rocarm/rocarm.github.io`.

```bash
git add index.html
git commit -m "Update website"
git push origin master
```

## License

© 2026 Roc Armenter. All rights reserved.
