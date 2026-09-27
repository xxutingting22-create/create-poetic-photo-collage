---
name: create-poetic-photo-collage
description: Turn one to five uploaded photos into a finished 16:9 poetic film-photography collage, choosing one of six reference-led East Asian indie photobook layouts with handwritten or typewriter typography, scene-aware English, scanned paper texture, and photo-count-aware layout selection. Layouts 1–2 use one selected source photo; layouts 3–6 use every uploaded photo. Use when the user asks for the poetic photo collage skill, a film diary collage, a Korean-drama title-card layout, an indie zine spread, or this fixed collage style. Generate the image directly rather than merely returning a prompt.
---

# Create Poetic Photo Collage

Create one finished 16:9 image from the user's uploaded photos. Preserve the actual subjects, identity, objects, clothing, setting, and emotional tone. Translate only the presentation into a poetic experimental photobook composition.

## Required workflow

1. Read [references/style-spec.md](references/style-spec.md) fully.
2. Inspect every uploaded photo. Accept one to five photos. If any source cannot be viewed, ask the user to attach it again. If more than five photos are uploaded, ask the user to reduce or select five; never discard extras silently.
3. Count the usable source photos and create a numbered source inventory. For layouts `1` and `2`, select exactly one source as the hero and do not place the other uploads in that output. For layouts `3`–`6`, every source number must appear at least once; do not treat extra photos as palette-only context or silently omit one.
4. Randomly select one eligible layout:
   - 1–2 photos: choose from layouts `1`, `2`, `3`, `5`.
   - 3 or more photos: choose from layouts `3`, `4`, `5`, `6`.
   - When shell execution is available, use `printf '%s\n' <eligible numbers> | shuf -n 1` for a real random choice. Otherwise make one unbiased random choice. Do not repeatedly default to the same layout and do not ask the user to choose unless requested.
   - If the user explicitly asks to render all six templates from one source set, make layouts `1` and `2` single-photo outputs and use every uploaded photo in each of layouts `3`–`6`. When possible, choose different suitable hero sources for layouts `1` and `2` to increase variety.
5. For layouts `3`, `4`, and `5`, visually sample two or three dominant colors from the source photos and use softened, slightly desaturated versions for paper panels, labels, stitching, and pen accents. Keep skin, fur, products, and photographic content natural.
6. Write two to four short English lines grounded only in visible scene details. Prefer concise parallelism, internal rhyme, or end rhyme. Preserve user-supplied wording verbatim.
7. Use only handwriting or typewriter lettering. Never use clean modern sans-serif or corporate display fonts. Handwriting should resemble loose blue or dark-ink ballpoint; typewriter text should look small, imperfect, and lightly printed.
8. Use the image-generation tool to compose the source photos into one finished landscape 16:9 image. Include the selected `assets/layout-0N.jpeg` as the layout/style reference. Treat it as composition, material, color-behavior, and typographic-style guidance only; never copy its people, wording, watermark, UI, or scene.
   - For layouts `1` and `2`, pass only the selected hero source plus the style asset.
   - For layouts `3`–`6`, when all source paths plus the style asset fit the tool's image-input limit, pass them separately.
   - For layouts `3`–`6`, when they exceed the limit, run `scripts/build_source_board.sh OUTPUT SOURCE...` to combine all source photos into one numbered temporary source board, then pass that board plus the selected style asset. State that every numbered source on the board must appear in the final collage.
9. Audit the generated result against the applicable source rule and the master-frame scale rule. Layouts `1` and `2` must contain exactly one photo rectangle based on the selected hero source. Layouts `3`–`6` must visibly include every numbered source. If the source rule fails, or if the main collage is visibly outside the required size range, regenerate once and put the failed invariant first in the correction prompt.
10. Return the generated image, not merely the internal prompt.

## Non-negotiable constraints

- Use a landscape 16:9 outer canvas and place every layout inside the same centered **master composition frame**. The perceived outer bounds of the complete collage must occupy `88–92%` of the canvas width and `76–82%` of the canvas height. This leaves approximately `4–6%` outer margin on each side and `9–12%` above and below. Do not arbitrarily zoom the page in or out between generations.
- Keep the page panels, photo rectangles, main labels, stitching, and headline inside this master frame. Only tiny corner microtext or a very small pen mark may extend slightly beyond it, and such marks must not change the perceived collage size.
- Interpret every layout instruction such as “full width,” “full page,” or “edge to edge” as filling the applicable area **inside the master frame**, never the outer 16:9 canvas itself.
- Preserve the source-photo identity and factual scene. Use clean rectangular photos or the limited card treatment required by the chosen layout.
- Layouts `1` and `2` use exactly one selected source photo. Layouts `3`–`6` include every uploaded photo at least once; never demote a source to palette-only guidance or omit it because another image is stronger.
- Keep the scanned look gentle: mild blur, fine paper grain, soft contrast, and restrained fading; no sepia or heavy aging.
- Keep text secondary and off faces or key objects. If exact rendering is unreliable, make the text intentionally faint or partly illegible as a designed visual element.
- Use only handwritten or typewriter typography. No geometric sans-serif, serif editorial headlines, neon lettering, or glossy advertising fonts.
- Follow the selected layout exactly. Allow a date card and one oval note only in layout 2; allow overlapping photo cards, one clip, cross-stitch binding, and one speech label only in layout 4. Do not spread those devices into other layouts.
- Keep layouts 1 and 2 structurally distinct. Layout 1 uses a panoramic image band spanning the full width of the master frame; it begins about one-sixth down that frame and is about one-third of the frame high. Crop or uniformly scale sources to fill that band without distortion. Layout 2 keeps the centered framed-photo geometry with its date card and oval note.
- Exclude watermarks, app interfaces, player controls, QR codes, logos, timestamps, and copied text or people from the style reference.
- Avoid unrelated craft clutter: torn edges, dried flowers, botanical stamps, tickets, postal marks, ribbons, excessive stickers, thick frames, prominent shadows, and 3D book mockups.

## Prompt construction

State the role and required placement of every numbered source image. Name the selected layout number, its exact reference asset, the source-photo count, and any extracted palette. Explicitly request:

- one landscape 16:9 poetic film-photography collage;
- one centered master composition frame occupying `88–92%` of canvas width and `76–82%` of canvas height, with all major layout elements constrained inside it;
- the exact layout geometry from the selected reference;
- exactly one selected hero source used in layouts `1` and `2`, or every numbered source used visibly at least once in layouts `3`–`6`, with subject identity preserved;
- two to four scene-aware English lines in handwriting or typewriter lettering only;
- gentle scanner haze, fine paper texture, quiet fading, and ample whitespace;
- the selected layout's allowed decorations and all applicable negative constraints.

For layout 1, explicitly request a full-width aspect-filled image band beginning near the top one-sixth guide of the master frame and measuring about one-third of the master-frame height. Permit natural cropping and uniform resizing of uploaded photos, but never stretch people or objects. Keep the remaining paper field open for handwriting and microtext.

Do not use the broad phrase “scrapbook collage” unless layout 4 is selected, and even then say “restrained editorial scrapbook page” to prevent random ephemera. Prefer “minimal experimental photobook spread,” “film diary contact page,” or “clean scanned editorial layout.”

Before accepting the result, estimate the bounding box of the main collage. It must remain within the `88–92%` width and `76–82%` height range on the 16:9 canvas. If it looks noticeably smaller or larger, regenerate once with the exact master-frame percentages as the first instruction. Also regenerate once if the result is not landscape 16:9, uses a forbidden font, changes subject identity, or drifts away from the selected layout.

## Response behavior

Generate immediately when at least one usable photo is present. Keep the accompanying message brief. Mention the selected layout number. Mention text fallback only when it affects user-supplied exact wording.
