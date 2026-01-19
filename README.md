# Roc Armenter - Personal Website

Professional academic website for Roc Armenter, Executive Vice President and Economist at the Federal Reserve Bank of Philadelphia, and Visiting Scholar at Wharton School.

## About

This website showcases research publications, working papers, and professional information. The site features a modern, responsive design built with Tailwind CSS.

## Structure

- `index.html` - Main website page
- `assets/images/` - Profile photos and images
- `assets/css/custom.css` - Custom CSS variables for color scheme
- `files/` - Research papers and PDFs

## Customization

### Changing Color Scheme

Edit `assets/css/custom.css` to modify the color scheme. The file uses CSS variables for easy customization:

```css
:root {
  --primary-color: #1e3a8a;      /* Navy blue */
  --primary-light: #3b82f6;      /* Light blue */
  --accent-color: #2563eb;       /* Blue accent */
  /* ... more variables */
}
```

### Color Scheme Options

The site currently uses a professional navy/blue theme. Other suggested palettes:

1. **Academic Slate**: Charcoal (#334155) with teal accents (#14b8a6)
2. **Modern Emerald**: Deep green (#065f46) with emerald (#10b981)
3. **Professional Indigo**: Indigo (#4f46e5) with purple (#8b5cf6)
4. **Classic Burgundy**: Deep red (#991b1b) with gold (#f59e0b)

## Features

- 📱 Fully responsive design (mobile-first)
- 🎨 Tailwind CSS via CDN
- 🎯 Sticky navigation with smooth scrolling
- 📄 Card-based publication layouts
- 🏷️ Status badges (Published, Working Paper, etc.)
- ♿ Semantic HTML5 with accessibility features
- 🎨 Easily customizable color scheme

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

This site is hosted via GitHub Pages at [https://rocarm.github.io/](https://rocarm.github.io/)

To deploy changes:

```bash
git add .
git commit -m "Update website"
git push origin main
```

## License

© 2026 Roc Armenter. All rights reserved.
