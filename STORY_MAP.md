# Resume to Job Platform — User Story Map

Single-user platform: import a resume, tailor it quickly to a given job description section by section, then prep for the interview with voice-only Q&A and a match score.

🦴 marks stories in the walking skeleton — the thinnest end-to-end slice, specced below in Gherkin. Everything else is a plain card for a later pass.

## Journey 1: Build Resume Library

**Import resume**
- 🦴 Upload resume as PDF
- Import resume from Google Drive via MCP
- Re-import to refresh an existing library

**Parse into sections**
- 🦴 Auto-split resume into standard sections (heading, summary, core skills, experience, education, etc.)
- Manually correct a mis-detected section boundary

**Organize & tag content**
- Tag a section item for quick retrieval
- Search library items by tag
- View all stored versions of a section item

**Maintain private history** *(deferred feature)*
- Add a past experience or situation to private history
- History entries are flagged as never included in resumes/PDFs

## Journey 2: Tailor Resume to a Job

**Provide job description**
- 🦴 Paste JD as text
- Provide JD via URL
- URL fetch fails or page is unsupported

**Review each section**
- 🦴 Keep existing section content as-is
- 🦴 Select a previously stored alternate version
- 🦴 Enter new content, replacing what was there
- 🦴 New/edited content is saved to the library for future reuse

**Export tailored resume**
- 🦴 Generate a new versioned resume as PDF
- Browse resume version history

## Journey 3: Prep for the Interview

**Generate smoke questions**
- 🦴 Generate 3 interview questions based on the JD

**Answer via voice**
- 🦴 Hear a question via speech
- 🦴 Respond to a question using voice only (no typing)
- No speech detected / silence from user

**Score the match**
- 🦴 Receive a quality score per answer based on depth and content
- 🦴 Compute a final match score from Q&A performance *(history-weighting added once the private-history feature lands)*
- Insufficient history on file to factor into the score

## Decisions made while mapping

- Private history is tracked (Journey 1) but excluded from the walking skeleton — deferred to a later pass.
- Per-answer and final match scores both use a 0-100 numeric scale.
- "Select a previously stored alternate version" was added to the skeleton after review — the section-review loop (keep / select previous / enter new) is incomplete without it, and it matches the original idea text directly.

## Walking skeleton specs

Gherkin for each 🦴 story lives under `features/`, one file per story:

1. `features/upload-resume-as-pdf.feature`
2. `features/auto-split-resume-into-sections.feature`
3. `features/paste-job-description-as-text.feature`
4. `features/keep-existing-section-content.feature`
5. `features/select-previous-alternate-version.feature`
6. `features/enter-new-section-content.feature`
7. `features/save-edited-content-to-library.feature`
8. `features/generate-versioned-resume-pdf.feature`
9. `features/generate-smoke-questions.feature`
10. `features/hear-question-via-speech.feature`
11. `features/respond-via-voice-only.feature`
12. `features/score-individual-answer.feature`
13. `features/compute-final-match-score.feature`
