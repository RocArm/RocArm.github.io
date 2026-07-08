# Editing Guide

A plain-English map of where every piece of text lives in `index.html`, plus
copy-paste templates for adding new items. All content is in the single file
`index.html`. After any edit, commit and `git push origin master` — GitHub Pages
redeploys automatically.

> **Tip:** To find a spot fast, use your editor's "Find" (Ctrl+F) with the
> **search string** given for each item — those are more reliable than line
> numbers, which shift as the file changes.

---

## 1. Name, titles, and roles (top of page)

Search for: `<h1` — the block just below it holds your name and two title lines.

```html
<h1 ...>Roc Armenter</h1>
...
<p ...><span class="font-semibold">Executive Vice President and Economist</span>, FRB Philadelphia</p>
<p ...><span class="font-semibold">Visiting Scholar</span>, Wharton School - Finance</p>
```

Edit the text between the tags. Keep the `<span class="font-semibold">…</span>`
wrapper on the part you want bold.

## 2. Areas of Expertise badges

Search for: `Areas of Expertise`. Each badge is one line:

```html
<span class="px-4 py-2 bg-teal-50 text-teal-800 rounded-full text-sm font-medium">Monetary Policy</span>
```

To change a badge, edit the words before `</span>`. To add one, copy a full
line and paste it below the last badge. To remove one, delete its whole line.

## 3. Contact email

Search for: `mailto:`. The email appears **twice** on the same block — once in
`href="mailto:...."` and once as the visible text. Change **both**.

## 4. Bio paragraphs

Search for: `<!-- Bio -->`. Three paragraphs follow, each wrapped in
`<p class="text-lg ...">…</p>`. Edit the text inside each `<p>`. To add a
paragraph, copy one whole `<p>…</p>` block.

## 5. Writing / Substack blurb

Search for: `<!-- Writing Section -->`.
- **Publication name / link:** the text `Works and Days` (and the `href` if the
  URL ever changes).
- **Blurb:** the sentence inside `<p class="text-gray-700 mb-4">…</p>`.
- **Button label:** the text `Read on Substack`.

---

## 6. Adding or editing a Publication

Search for: `<!-- Publications Section -->`. Each paper is a "card" that starts
with a comment like `<!-- Publication 1 -->`. Papers are listed newest-first.

**To edit** a paper, change the text inside the card (title, coauthors, journal
line). **To add** a paper, copy the template below and paste it as a new card at
the top of the list (right after `<div class="space-y-6">`).

```html
<!-- Publication N -->
<div class="bg-white border border-gray-200 rounded-lg shadow-sm p-6 hover:shadow-md transition">
    <h3 class="text-xl font-semibold text-gray-900 mb-3">
        <a href="LINK-OR-files/FILENAME.pdf" class="hover:text-teal-600 transition">
            PAPER TITLE HERE
        </a>
    </h3>
    <p class="text-gray-600 mb-2">
        with <a href="COAUTHOR-URL" class="text-teal-600 hover:underline">Coauthor Name</a>
    </p>
    <p class="text-gray-700 italic">Journal Name, VOL(ISSUE), pp. START-END, YEAR</p>
</div>
```

Rules of thumb:
- **Sole-authored paper:** delete the entire `<p class="text-gray-600 mb-2">…</p>`
  coauthor line.
- **Two coauthors:** inside the coauthor line, write
  `with <a ...>First</a> and <a ...>Second</a>`.
- **Journal name is italicized automatically** by `italic` — just type the name.
- **A PDF you host yourself** goes in the `files/` folder; link it as
  `files/YOURFILE.pdf`. An external link (journal/AEA/RePEc) goes in full.
- **Names with accents** (é, ó, í): type them directly — the page is UTF-8.

## 7. Other Publications / Working Papers / Short Notes

Same idea, different spots:
- Search `<!-- Other Publications -->` (Business Review articles),
- Search `Working Papers` for the working-papers list,
- Search `Short Notes` for the short-notes list.

Copy an existing entry in that list and edit its fields.

---

## 8. Selected Events

This is now a **live section** on the site (`<!-- Selected Events Section -->`
in `index.html`, between Writing and Links, with an "Events" nav link). The list
below is the source of truth — when you change it here, mirror the change in the
HTML (or ask me to). Keep it newest-first; prune older items occasionally so it
stays a highlights list.

**Format per entry:** `**Event**, "Title", Role, Venue, Date.` For a discussion,
the title carries the paper's authors: `"Title" (Authors, Year)`. Drop any field
that doesn't apply. Fields still needed are marked `[…]` below — fill those in.

### Current list

- **9th Short-Term Funding Markets Conference**, "Monetary Policy Transmission with Endogenous Reserve Supply" (Ethan Cohen and coauthors, 2026), Discussant, Board of Governors, May 29, 2026.
- **Miami Macro 2026**, "The Dynamics of Ample Reserves and the Size of the Fed's Balance Sheet," Plenary Speaker, University of Miami – Herbert Business School, April 24, 2026.
- **FRBSF Macroeconomics and Monetary Policy Conference**, "Fluctuations in the TGA and Their Effect on the Fed's Balance Sheet" (Annette Vissing-Jorgensen, 2026), Discussant, Federal Reserve Bank of San Francisco, March 27, 2026.
- **Allied Social Science Associations (ASSA) Annual Meeting**, "Tariffs and Free Trade Agreements," Chair, [Philadelphia, PA], January 3, 2026.
- **National Association for Business Economics (NABE) Annual Meeting**, "Consumer Spending during Inflation 2.0," Chair, [Philadelphia, PA], October 14th, 2026.
- **Wharton Liquidity Conference**, "Bank Balance Sheets and Liquidity," Session Chair, Wharton, 2024.
- **BEAR Conference**, "Managing the Central Bank’s Balance Sheet in a Period of Quantitative Tightening," Panelist, Bank of England, February 24, 2025.
- **Annual State of the Economy**, Panelist, Chamber of Commerce for Greater Philadelphia, 2025.
- **Jackson Hole Economic Policy Symposium**, Participant, Federal Reserve Bank of Kansas City, 2024-2025.

> **How to fill the `[…]` gaps:** replace `[venue?]` with the host institution
> (e.g. "Federal Reserve Bank of Kansas City" for Jackson Hole), or delete the
> `[venue?], ` entirely if there's no venue to list. Replace `[title?]` with the
> session/talk title in quotes, or delete it for a titleless panel. When done,
> tell me and I'll mirror the finished list into the HTML — or edit the cards
> directly per the template below.

### Editing the live section

Search `<!-- Selected Events Section -->` in `index.html`. Each event is one
card. To add one, copy this template to the **top** of the list (newest-first)
and fill it in. The event name is bold; the role is italicized with `<em>`:

```html
<div class="bg-white border border-gray-200 rounded-lg shadow-sm p-6">
    <p class="text-gray-700"><span class="font-semibold text-gray-900">Event</span>, &ldquo;Title,&rdquo; <em>Role</em>, Venue, Date.</p>
</div>
```

Notes:
- Use `&ldquo;` / `&rdquo;` for the curly quotes around a title, `&rsquo;` for an
  apostrophe (e.g. Fed&rsquo;s), and `&ndash;` for an en-dash between names.
- For a discussion, put the paper's authors after the title:
  `&ldquo;Title&rdquo; (Authors, Year)`.
- If an event has no paper title (a panel or symposium), omit the quoted part:
  `<span ...>Event</span>, <em>Panelist</em>, Venue, Date.`

> **Why "Selected Events" and not "Recent":** the evergreen heading means the
> list never looks stale, even between updates.

---

## Quick workflow

```bash
# preview locally before pushing:
python -m http.server 8000
# open http://127.0.0.1:8000/  then Ctrl+C to stop

# publish:
git add index.html
git commit -m "Update <what you changed>"
git push origin master
```
