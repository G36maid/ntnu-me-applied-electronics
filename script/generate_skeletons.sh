#!/usr/bin/env bash
set -euo pipefail

ASSETS_DIR="notes/assets"
NOTES_DIR="notes"

echo "Starting to create Markdown skeleton..."

# Ensure notes directory exists
mkdir -p "$NOTES_DIR"

for target_dir in "$ASSETS_DIR"/*; do
    [ -d "$target_dir" ] || continue

    dirname=$(basename "$target_dir") # e.g.: Ch1_Introduction

    # Parse chapter number and name, create filename like 01-introduction.md
    # Use Bash native regex to extract number and name
    if [[ "$dirname" =~ ^Ch([0-9]+)_(.*)$ ]]; then
        # Pad number to two digits
        ch_num=$(printf "%02d" "${BASH_REMATCH[1]}")
        # Lowercase and replace underscores with dashes
        ch_name=$(echo "${BASH_REMATCH[2]}" | tr '[:upper:]' '[:lower:]' | tr '_' '-')
        md_filename="${ch_num}-${ch_name}.md"
    else
        md_filename="${dirname}.md"
    fi

    md_filepath="$NOTES_DIR/$md_filename"

    # Avoid overwriting notes that already have content
    if [ -f "$md_filepath" ]; then
        echo "-> [Skip] $md_filename already exists; not overwriting to protect existing notes."
        continue
    fi

    echo "-> [Create] $md_filename ..."

    # Write top-level title (replace underscores with spaces)
    echo "# ${dirname//_/ }" > "$md_filepath"
    echo "" >> "$md_filepath"

    # Read images inside the folder and write the skeleton
    # Use sort -V for version sorting (ensure slide-2 doesn't come after slide-10)
    find "$target_dir" -maxdepth 1 -name "*.png" | sort -V | while read -r img_path; do
        img_name=$(basename "$img_path")

        # Extract page number from filename (e.g., from slide-01.png extract 01)
        page_str=$(echo "$img_name" | sed -E 's/.*-([0-9]+)\.png/\1/')

        # Append to the Markdown file
        # 附加到 Markdown 檔案
                cat <<EOF >> "$md_filepath"
---
**📄 Slide $page_str**

![$dirname Slide $page_str](assets/$dirname/$img_name)



EOF
    done
done

echo "✅ Markdown skeleton creation complete!"
