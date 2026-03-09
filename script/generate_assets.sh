#!/usr/bin/env bash
set -euo pipefail

SRC_DIR="course-materials"
DEST_BASE="notes/assets"

# Check required tools
if ! command -v pdftoppm &> /dev/null || ! command -v pdfinfo &> /dev/null; then
    echo "Error: pdftoppm or pdfinfo not found. Please install poppler (e.g., paru -S poppler)." >&2
    exit 1
fi

echo "Starting PDF-to-image conversion and page count check..."

for pdf_path in "$SRC_DIR"/*.pdf; do
    [ -e "$pdf_path" ] || continue

    filename=$(basename "$pdf_path" .pdf)
    target_dir="$DEST_BASE/$filename"

    # Get total pages of the PDF (find the 'Pages:' line and print the following number)
    page_count=$(pdfinfo "$pdf_path" | awk '/^Pages:/ {print $2}')

    # Check existing PNG count in the target directory
    if [ -d "$target_dir" ]; then
        img_count=$(find "$target_dir" -maxdepth 1 -name "*.png" | wc -l)
    else
        img_count=0
    fi

    # Compare counts
    if [ "$img_count" -eq "$page_count" ]; then
        echo "-> [Skip] $filename (already has $img_count/$page_count pages)"
        continue
    fi

    echo "-> [Process] $filename (current progress: $img_count/$page_count) ..."
    mkdir -p "$target_dir"

    # Perform conversion
    pdftoppm -png -r 300 "$pdf_path" "$target_dir/slide"
done

echo "✅ PDF conversion and checks complete!"
