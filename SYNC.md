# Syncing the website and the CV

The website (`index.html`, this repo) and the CV (a `.tex` file kept in a
separate professional-materials folder) share some content but are **not**
copies of each other. This doc defines how to keep them consistent without
doing every update twice — and, just as important, without a naive "make the
site match the CV" step clobbering the website's URL layer.

## The three buckets

| Bucket | Lives in | Examples |
|---|---|---|
| **Shared facts** | both | paper title, co-authors, journal name, volume/issue, **page numbers**, year; job titles / affiliations |
| **CV-only** | CV `.tex` | teaching, service, grants, referees/references, anything not on the site |
| **Site-only** | `index.html` | all URLs (hosted PDFs, co-author *profile* links, DOIs, working-paper landing pages, slides, appendices), bios, expertise badges, the Substack/Writing blurb, Selected Events |

Only the **Shared facts** bucket is genuinely duplicated. The URL layer is
website-native — it is not in the CV and must never be stripped by a sync.

## Canonical source

- **Shared facts → the CV `.tex` is canonical.** Facts (final pages, journal,
  co-authors, year) firm up in the CV first; record them there, then propagate
  to the site. This matches the real timeline: a paper's *facts* settle before
  its *URLs* exist.
- **Site-only bucket → `index.html` is canonical.** The CV never needs to know
  these exist.

## The one rule that prevents drift

**Never let the two hold different facts.** Whichever file you happen to edit
first, mirror *only the fact change* to the other in the same session. Don't
batch it "for later" — that's how they diverge.

## How to run a sync (facts: CV → site)

When a publication's facts change in the CV (new paper, now-published status,
finalized page numbers, added co-author):

1. Update the matching card in `index.html` (see `EDITING.md` for exact
   locations and templates).
2. **Preserve the site's URL layer.** Update the citation *text* only — keep
   the existing `href`, hosted PDF link, co-author profile links, slides, and
   appendix links. Add a URL only if the CV change introduces genuinely new
   web content (e.g. a brand-new paper needs its landing page found).
3. Respect the site conventions that are NOT in the CV:
   - Newest-first ordering within each section.
   - **No status badges** — section headings convey status.
   - UTF-8 diacritics (Miklós, Michèle, Dávid) — type them directly.
   - Journal names italicized; co-authors hyperlinked to their profiles.
4. Prefer robust links for any *new* citation: **DOI** (`https://doi.org/...`)
   for journal articles; for Philly Fed items see the URL gotchas below.

## How to run a sync (site → CV)

If a fact lands on the site first (e.g. you post a working paper before
updating the CV), mirror just the bibliographic fact into the `.tex` — leave
the site's URLs behind (the CV doesn't carry them).

## Philly Fed URL gotchas (site side)

The old `philadelphiafed.org/-/media/research-and-data/publications/...` scheme
is dead (returns a soft-404 ~18 KB HTML page — HTTP 200 lies; check the
content type). Current patterns:

- **Working-paper PDF:** `https://www.philadelphiafed.org/-/media/frbp/assets/working-papers/<YYYY>/wp<YY-NN>.pdf`
- **Articles / Business Review:** landing page
  `https://www.philadelphiafed.org/the-economy/<topic>/<title-slug>`
  (`<topic>` is usually `macroeconomics` or `monetary-policy`).

Verify any Philly Fed link with `curl` + a browser User-Agent (WebFetch 403s):
a real PDF is `application/pdf`; a real article page is `text/html` ~25–31 KB;
the error page is `text/html` ~18 KB. Confirm with the page `<title>`.

## Reducing the file-shuffle

To avoid dropping `index.html` between folders, open Claude at a parent
directory containing **both** this repo and the CV folder, or give this
project access to the CV folder — so one session can diff both. Do **not**
keep a copy of `cv.tex` inside this repo; that just re-creates the duplication
(it's why the old `docs/cv.tex` was removed).
