#!/bin/bash

# Directory containing the PDFs on tekphreak to JPG and invert them for printer friendlyness.
PDF_DIR="/home/tekphreak/invertpdf"

# Convert each PDF to high-contrast, print-ready JPGs (black text on white)
for pdf in "$PDF_DIR"/*.pdf; do
    base=$(basename "$pdf" .pdf)
    convert -density 300 "$pdf" \
        -colorspace Gray \
        -threshold 60% \
        -negate \
        -background white -alpha remove \
        -quality 100 "$PDF_DIR/${base}_%03d.jpg"
done
