# Review Findings

Review of `index.html` against `docs/cv.tex` (source of truth), with secondary verification via Google Scholar, RePEc, and co-author websites.

---

## CRITICAL: Wrong Paper Titles (2 items)

### 1. "Excess Reserves and Monetary Policy Implementation" has wrong title
- **Location:** `index.html` line ~192 (Publication 5)
- **Website says:** "Time Consistent Fiscal Policy in a Debt Crisis"
- **CV says:** "Excess Reserves and Monetary Policy Implementation"
- **Verified via:** IDEAS/RePEc, ScienceDirect — the correct title is "Excess Reserves and Monetary Policy Implementation" (with Ben Lester, RED vol. 23, pp. 212-235, 2017)
- **Also:** The linked PDF `files/ACH.pdf` does not exist in the `files/` directory. It should be linked to `files/AL/pdf` instead.

### 2. "Sustainable Monetary Policy and Inflation Expectations" has wrong title
- **Location:** `index.html` line ~221 (Publication 7)
- **Website says:** "Sovereign Default: The Role of Expectations"
- **CV says:** "Sustainable Monetary Policy and Inflation Expectations"
- **Verified via:** De Gruyter (the publisher) — the correct title is "Sustainable Monetary Policy and Inflation Expectations" (BEJM vol. 16(2), pp. 301-334, 2016)
- **Also:** The linked PDF `files/AH_SD.pdf` does not exist in the `files/` directory. It should be linked to `files/A_eqselect.pdf` instead.

---

## CRITICAL: Wrong Page Numbers (2 items)

### 3. "A Model of the Federal Funds Market" — wrong starting page
- **Location:** `index.html` line ~150
- **Website says:** pp. 133-204
- **CV says:** pp. 177-204
- **Verified via:** IDEAS/RePEc, ScienceDirect, Ben Lester's CV — correct is **pp. 177-204**

### 4. "A General Theory of Expectation Traps" — wrong ending page
- **Location:** `index.html` line ~382
- **Website says:** pp. 867-896
- **CV says:** pp. 867-895
- **Verified via:** IDEAS/RePEc, Wiley (publisher) — correct is **pp. 867-895**

---

## Broken Local PDF Links (2 items)

### 5. `files/ACH.pdf` does not exist
- **Referenced by:** Publication 5 ("Excess Reserves..." / currently titled "Time Consistent Fiscal Policy...")
- **Action:** No need to fix

### 6. `files/AH_SD.pdf` does not exist
- **Referenced by:** Publication 7 ("Sustainable Monetary Policy..." / currently titled "Sovereign Default...")
- **Action:** No need to fix

---

## Broken Co-Author Links (5 items)

### 7. Ben Lester — old Google Sites URL broken
- **Current URL:** `https://sites.google.com/site/benjaminrlester/` (redirects to Google login)
- **Suggested replacement:** `https://www.benjaminrlester.com/`

### 8. Viktoria Hnatkovska — old UBC URL broken
- **Current URL:** `http://faculty.arts.ubc.ca/vhnatkovska/` (404)
- **Suggested replacement:** `https://economics.ubc.ca/profile/viktoriya-hnatkovska/`

### 9. Miklós Koren — old domain unreachable
- **Current URL:** `http://miklos.koren.hu/` (connection fails)
- **Suggested replacement:** `https://koren.mk/`

### 10. Amartya Lahiri — old UBC URL broken
- **Current URL:** `http://faculty.arts.ubc.ca/alahiri/` (404)
- **Suggested replacement:** `https://economics.ubc.ca/profile/amartya-lahiri/`

### 11. Francesc Ortega — old CUNY URL broken
- **Current URL:** `http://qcpages.qc.cuny.edu/%7Efortega/QC/Welcome.html` (unreachable)
- **Suggested replacement:** `https://sites.google.com/view/francescortega`

### 12. David Krisztián Nagy — old Google Sites URL broken
- **Current URL:** `https://sites.google.com/site/davidknagy/` (redirects to Google login)
- **Suggested replacement:** `https://sites.google.com/view/davidknagy`

---

## Broken External Links (5 items — all Philly Fed URLs needing `/-/media/` prefix)

### 13. "Does the U.S. Trade More Widely Than It Appears?" PDF
- **Broken:** `https://www.philadelphiafed.org/research-and-data/publications/business-review/2014/q1/brq114_does_the_us_trade.pdf`
- **Fix:** `https://www.philadelphiafed.org/-/media/research-and-data/publications/business-review/2014/q1/brq114_does_the_us_trade.pdf`

### 14. "The Rise of Corporate Savings" PDF
- **Broken:** `https://www.philadelphiafed.org/research-and-data/publications/business-review/2012/q3/brq312_rise-of-corporate-savings.pdf`
- **Fix:** `https://www.philadelphiafed.org/-/media/research-and-data/publications/business-review/2012/q3/brq312_rise-of-corporate-savings.pdf`

### 15. "Output Gaps: Uses and Limitations" PDF
- **Broken:** `https://www.philadelphiafed.org/research-and-data/publications/business-review/2011/q1/brq111_output-gaps-uses-and-limitations.pdf`
- **Fix:** `https://www.philadelphiafed.org/-/media/research-and-data/publications/business-review/2011/q1/brq111_output-gaps-uses-and-limitations.pdf`

### 16. "The Perils of Nominal Targets" older WP version
- **Broken:** `http://www.philadelphiafed.org/research-and-data/publications/working-papers/2014/wp14-2R.pdf`
- **Fix:** `https://www.philadelphiafed.org/-/media/research-and-data/publications/working-papers/2014/wp14-2R.pdf`

### 17. "On the Timing of Monetary Policy Reform" WP
- **Broken:** `https://www.philadelphiafed.org/research-and-data/publications/working-papers/2013/wp13-4.pdf`
- **Fix:** `https://www.philadelphiafed.org/-/media/research-and-data/publications/working-papers/2013/wp13-4.pdf`

---

## Questionable External Link (1 item)

### 18. "Understanding Capital Taxation in Ramsey Models" — Google Docs viewer
- **URL:** `https://docs.google.com/viewer?a=v&pid=sites&srcid=...`
- **Issue:** Uses deprecated Google Sites Classic viewer. May show empty or require login. Should be tested manually and possibly replaced with a direct PDF link.

---

## Minor Title Discrepancy (2 items)

### 19. "A Balls-and-Bins Model of Trade: A Reply" — extra word
- **Location:** `index.html` line ~208
- **Website says:** "A Balls-and-Bins Model of Trade: **A** Reply"
- **CV / AEA official says:** "A Balls-and-Bins Model of Trade: Reply"
- **Action:** Remove the extra "A" before "Reply"

### 20. "Time-Consistent Fiscal Policy and Heterogeneous Agents" — extra hyphen
- **Location:** `index.html` line ~405
- **Website says:** "Time**-**Consistent Fiscal Policy and Heterogeneous Agents"
- **CV says:** "Time Consistent Fiscal Policy and Heterogeneous Agents"
- **Action:** Remove the hyphen

---

## Name/Diacritics Issues (2 items)

### 21. "Dávid" misspelled as "David" (missing accent)
- **Location:** `index.html` line ~505 (Working Papers, "Bridges")
- **CV says:** Dávid Krisztián Nagy (accent on the á)
- **Website says:** David Krisztián Nagy
- **Action:** Change "David" to "Dávid"

### 22. "Michèle" accent missing
- **Location:** `index.html` lines ~130, ~488
- **CV says:** Michèle Müller-Itten (accent on the è)
- **Website says:** Michele Müller-Itten
- **Action:** Change "Michele" to "Michèle" (2 occurrences)

---

## Journal Name Issues (2 items)

### 23. "Journal of Money, Credit, and Banking" — extra Oxford comma
- **Location:** `index.html` line ~382
- **Website says:** "Journal of Money, Credit**,** and Banking"
- **Official journal name:** "Journal of Money, Credit and Banking" (no Oxford comma)
- **Action:** Remove the comma before "and"

### 24. "B.E. Journal of Macroeconomics" — missing "The"
- **Location:** `index.html` line ~362 (Of Nutters and Doves)
- **CV says:** "The B.E. Journal of Macroeconomics"
- **Website says:** "B.E. Journal of Macroeconomics"
- **Note:** Minor; both forms are used in practice

---

## Inconsistent Status Badges

### 25. Some publications have "Published" badges, others don't
- Publications 8-14, 15, 18, and 20 have green "Published" badges
- Publications 1-7, 16-17, 19 do not
- Per CLAUDE.md convention: "No status badges on individual papers — section headings indicate status"
- **Action:** Remove all "Published" badges from the Publications section for consistency

### 26. Working Papers section has inconsistent badges
- WP1 has "Working Paper" badge, WP2 has "Very Preliminary" badge, WP3 has "Working Paper" badge, WP4 has no badge
- **Action:** Remove all badges

---

## Unreferenced PDF Files in `files/`

Please ignore.

The following files exist in `files/` but are not linked from `index.html`:

| File | Likely Paper |
|------|-------------|
| `RI_via_IE.pdf` | "Rational Inattention via Ignorance Equivalence" (currently links to Philly Fed URL) |
| `AL.pdf` | "Accounting for Development through Investment Prices" (currently links to ScienceDirect) |
| `A_eqselect.pdf` | "Equilibrium Selection through Incomplete Information" (currently has no PDF link) |
| `A_markprob.pdf` | "On the Use of Market-Based Probabilities" (currently links to Philly Fed WP) |
| `AH_2015.pdf` | Possibly an older version of Armenter & Hnatkovska paper |

---

## Summary

| Priority | Count | Description |
|----------|-------|-------------|
| CRITICAL | 4 | Wrong titles (2) and wrong page numbers (2) |
| HIGH | 12 | Broken links: local PDFs (2), co-author URLs (5), external URLs (5) |
| MEDIUM | 5 | Title/name discrepancies (4), questionable link (1) |
| LOW | 5 | Journal name formatting (2), inconsistent badges (2), unreferenced files |
