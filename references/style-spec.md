# Six-layout poetic photobook specification

## Shared target

Create a quiet early-digital East Asian photo diary: film-like rectangular photographs, warm off-white outer space, flat scanned paper, slightly washed color, sparse marks, and deliberate imperfection. The result is always landscape 16:9 and front-facing. Use the selected asset only as layout and material guidance; never copy its people, wording, watermark, app UI, or scene.

## Shared master-frame scale

Every layout uses the same centered master composition frame so that separate outputs have a consistent perceived size.

- Master-frame width: `88–92%` of the 16:9 canvas.
- Master-frame height: `76–82%` of the 16:9 canvas.
- Approximate outer margins: `4–6%` at left and right; `9–12%` at top and bottom.
- Keep page panels, photographs, principal labels, stitching, and headline lettering inside the frame. Tiny corner microtext or one very small pen mark may extend slightly beyond it, but must not enlarge the perceived composition.
- All internal positions and sizes below are relative to this frame. “Full width,” “full page,” and “edge to edge” mean the relevant boundary inside the master frame, not the outer canvas.
- Do not scale the entire collage up or down merely to accommodate a layout. Resize and naturally crop the uploaded photographs within the fixed frame instead.

## Layout routing

| Source-photo count | Random pool |
|---|---|
| 1–2 | 1, 2, 3, 5 |
| 3–5 | 3, 4, 5, 6 |

Select once per request. Accept no more than five photos. Layouts 1 and 2 are single-photo designs: select exactly one uploaded source as the hero and do not add the others. Layouts 3–6 are multi-photo designs: every uploaded source must appear visibly at least once; vary rectangle size to preserve hierarchy but never omit a source. When rendering all six layouts from one upload set, apply this rule separately to each output.

## Layout 1 — single-image title card

Reference: `assets/layout-01.jpeg`

- Make layout 1 unmistakably different from layout 2: do not use a centered framed-photo card.
- Start a panoramic image band about one-sixth of the master-frame height down from its top. Make the band about one-third of the master-frame height and fill the entire master-frame width with photography, edge to edge within that frame.
- Use exactly one selected source. Crop and uniformly scale it to aspect-fill the entire panoramic band as one uninterrupted photo rectangle.
- Uploaded photos may be resized and naturally cropped to fit the band. Never stretch, squash, or warp people, faces, products, animals, signage, or objects.
- Keep the space above the band modest and leave the lower portion as one large uninterrupted paper field.
- Place a large loose handwritten phrase across the lower paper field, biased toward the lower-right.
- Add sparse tiny typewriter/code-like lines in the upper-right and lower-left outer margins.
- No page crease, cards, stickers, clip, or overlapping photos.

## Layout 2 — diary label frame

Reference: `assets/layout-02.jpeg`

- Center one large landscape photo on warm white paper with ample margins.
- Use exactly one selected source as the centered hero rectangle; do not add a second photograph.
- Add one small pale rectangular handwritten date or diary card near the upper-left margin. If the date is unknown, use an abstract short note rather than inventing a real date.
- Add one soft oval or speech-shaped color field near the lower-right, partially overlapping the photo edge, containing a handwritten phrase.
- Add tiny typewriter microtext in two outer corners.
- Keep the two label shapes simple and flat; add no other stickers or ephemera.

## Layout 3 — airy stitched diary spread

Reference: `assets/layout-03.jpeg`

- Use a pale two-page spread with a quiet central fold and short hand-drawn stitch marks.
- Place the first two rectangular photos toward the lower-left and upper-right. With three to five sources, add the remaining one to three photos as smaller clean rectangles aligned along the outer margins while keeping the center mostly open. One photo may rotate 90 degrees only if its crop remains natural.
- Add a loose handwritten phrase on the left, sparse small stars or dots on the right, and tiny typewriter microtext in an outer margin.
- Extract two or three source-photo colors. Use the lightest as the paper tint and the darkest or most distinctive as pen/stitch accents. Desaturate the palette for readability.

## Layout 4 — asymmetric playful scrapbook spread

Reference: `assets/layout-04.jpeg`

- Build a flat two-page spread: a colored paper left page and a dominant full-page or near-full-page hero photo on the right.
- Use one source as the right-page hero. Arrange every remaining source as two to four clean rectangular photo cards in a compact overlapping cluster on the left. A few cards may use slim patterned borders. The cluster plus hero must account for all three to five uploaded photos.
- Permit exactly one simple clip at the top, one cross-stitch binding line near the center, and one speech-shaped handwritten label on the right page.
- Add sparse handwritten notes and star marks; avoid all extra craft objects.
- Extract two or three source-photo colors. Use a softened dominant color for the left page, a contrasting sampled accent for stitching/label, and a darker sampled color for handwriting.

## Layout 5 — translucent color-panel spread

Reference: `assets/layout-05.jpeg`

- Divide a centered two-page spread into two equal flat color panels.
- Place one primary clean rectangular photo on each page. With three to five sources, distribute the remaining one to three photos as smaller clean rectangles inside the two panels, aligned rather than randomly layered. Every source must remain visible while the two primary photos retain hierarchy.
- Add large and small repeated English fragments in low-opacity typewriter lettering or loose handwriting. Never use clean modern sans-serif.
- Extract two or three source-photo colors. Use two different softened sampled colors for the panels and the palest sampled tone for text. Maintain enough contrast for the photos to remain primary.
- Keep the fold subtle and the decoration minimal.

## Layout 6 — hero image plus coded color panel

Reference: `assets/layout-06.jpeg`

- Use one large photo to fill the left half of the spread.
- Use a deep matte blue or closely related cool ink color on the right half.
- Use one source as the left-page hero. Stack every remaining source as two to four small clean photo rectangles on the right panel. The hero plus stack must account for all three to five uploaded photos.
- Add faint typewriter/code-like lines across the blue panel and one large pale handwritten phrase in its lower half.
- A small handwritten speech bubble may overlap the upper-left edge. Keep all other decoration absent.

## Typography

Use only these two families:

1. **Handwritten:** loose ballpoint or pencil-like strokes, slightly uneven baseline, intimate and imperfect; blue, white, charcoal, or a sampled dark accent.
2. **Typewriter:** monospaced, lightly distressed ink, small scale, modest tracking, occasional faint repeated fragments.

Never use modern sans-serif, corporate grotesk, high-contrast serif, script-calligraphy, brush lettering, or bubble lettering. Use two to four short scene-aware English lines, each two to seven words. Prefer parallelism, alliteration, internal rhyme, or soft end rhyme. Do not invent locations, relationships, dates, or events.

## Photo treatment

- Preserve subject identity and factual content.
- Use soft low contrast, slight cool-neutral fading, mild scan blur, and fine paper grain.
- Keep natural skin, fur, clothing, product, and environmental colors.
- Do not replace the source subject with a synthetic substitute.
- Do not add sepia, deep scratches, dust clouds, stained paper, or distorted faces.

## Prompt template

```text
Use case: style-transfer and compositing.
Output: one landscape 16:9 image.

Scale system:
- Center one master composition frame occupying 88–92% of canvas width and 76–82% of canvas height.
- Keep all major collage elements inside it. Treat “full width” and “full page” as relative to this frame, not the outer canvas.
- Do not arbitrarily zoom the complete composition; resize and naturally crop only the source-photo rectangles as needed.

Input roles:
- Source images or numbered source board: actual photographs to place in the design. For Layout 1 or 2, use exactly one selected hero source. For Layout 3–6, every numbered source must appear visibly at least once. Preserve subject identity and factual content.
- Style image: layout-[N] only; copy its geometry, spacing, typography family, material restraint, and allowed decorations, but never its people, wording, watermark, UI, or scene.

Primary request:
Create a poetic film-photography collage using Layout [N]. Preserve [visible subjects, colors, objects, actions, and setting]. [For Layout 1/2: use exactly selected hero SOURCE X as the only photograph.] [For Layout 3–6: arrange all [count] numbered sources; none may be used only as context or omitted.] [For layouts 3/4/5: use this softened palette sampled from the source photos: ...].

Typography:
Use only handwritten ballpoint lettering or lightly printed typewriter lettering for the scene-aware English lines “[line 1] / [line 2] / ...”. No modern sans-serif. Keep text secondary and away from faces. If exact rendering is unreliable, make it deliberately faint and partly illegible.

Finish:
Warm off-white 16:9 outer canvas, flat front-facing scan, fine paper grain, gentle scanner haze, restrained fading, calm indie-film photo-diary mood.

Hard constraints:
Preserve source identity. Layouts 1 and 2 must contain exactly one selected photo; layouts 3–6 must include every numbered source at least once. Keep the perceived main-collage bounding box within 88–92% of canvas width and 76–82% of canvas height. No copied reference text, people, watermark, app UI, logo, QR code, or timestamp. No random torn edges, tape, dried flowers, botanical stamps, tickets, postal marks, ribbons, thick frames, prominent drop shadows, oblique 3D mockup, sepia, heavy grunge, or unrelated objects. Use only the decorations explicitly allowed by Layout [N].
```
