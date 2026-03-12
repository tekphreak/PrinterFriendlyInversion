# PrinterFriendlyInversion

Inverts PDFs with dark backgrounds into printer-friendly versions, saving ink when printing slides, documentation, or any PDF with white text on a black background.

## The Problem

Many PDFs — especially presentations and technical docs — have dark backgrounds with light text. Printing them as-is wastes a huge amount of ink. This script flips them to black text on white so they print cleanly and cheaply.

## How It Works

Uses ImageMagick to:
1. Convert each PDF page to a high-resolution image (300 DPI)
2. Convert to grayscale
3. Apply a threshold to create high contrast
4. Negate the colors (dark → light, light → dark)
5. Output as high-quality JPGs ready to print

## Requirements

- Linux / macOS
- [ImageMagick](https://imagemagick.org/) (`convert` command)

```bash
# Ubuntu / Pop!_OS / Debian
sudo apt install imagemagick

# macOS
brew install imagemagick
```

## Usage

1. Place your PDF files in `/home/tekphreak/invertpdf/` (or edit the `PDF_DIR` path in the script)
2. Run the script:

```bash
chmod +x convert.sh
./convert.sh
```

Output JPGs will be saved to the same directory as the source PDFs, named `filename_001.jpg`, `filename_002.jpg`, etc. (one per page).

## Example

```
Before: dark_slides.pdf  →  black background, white text
After:  dark_slides_001.jpg, dark_slides_002.jpg  →  white background, black text
```

## License

See [LICENSE](./LICENSE)

---

Built by [Tekphreak](https://github.com/tekphreak)
