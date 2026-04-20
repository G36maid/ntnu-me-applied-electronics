# Agent Operating Guidelines

This document outlines the essential guidelines for agents operating within this repository.

## Build/Lint/Test Commands
- **Verification**: Ensure markdown structure, link validity, and naming conventions are consistent.
- **No Traditional Builds**: This project does not have traditional code build/lint/test commands.

## Code Style Guidelines
- **Markdown Formatting**: Adhere to GitHub Flavored Markdown. Use consistent headers, lists, and code blocks.
- **Naming Conventions**: Follow `notes/XX-topic.md` and `notes/resources/detailed-resource.md` patterns.
- **No Spaces in Paths**: All file and directory names must use hyphens (`-`) instead of spaces.
- **Link Management**: All URLs must be clickable markdown links with descriptive text.
- **Error Handling**: Clearly document any conversion errors, broken links, or inconsistencies.
- **Emoji**: Do not use emoji in notes or documentation files.

## Project Structure Guidelines
- **Course Materials**: Original course files are located in the `course-materials/` directory.
- **Notes**: Organized markdown notes are located in the `notes/` directory.
- **Assets**: PDF-to-image slide assets are located in `notes/assets/`.
- **Resources**: Detailed resource files are located in `notes/resources/`.
- **Scripts**: Conversion scripts are located in `script/`.
- **Root Files**: `AGENTS.md` and `README.md` are located in the project root.
- **Link Management**: Ensure the `README.md` file has links to all notes.


### Content Rules
- Every slide must have its image reference preserved in the note.
- Duplicate slides (identical content) still keep their image references.
- Blank/ending slides (e.g., PEARSON branding) keep their image references at the end.
- Place images at the beginning of the section they belong to.
- Use `---` horizontal rules to separate major sections.
- Use LaTeX math notation: inline `$...$` and display `$$...$$`.
- Tables use GFM pipe syntax.
- Use `>` blockquotes for important definitions and laws.

## Tool Use Guidelines

### markitdown (convert_to_markdown)
- **Purpose**: Convert PDF files into raw text for content extraction.
- **Usage**: `file:///absolute/path/to/file.pdf` (must use `file://` scheme with absolute path).
- **Limitations**: Extracts text only; cannot capture diagrams, figures, or visual layouts.
- **Supplement with `look_at`**: Use `look_at` tool on slide PNG images to understand visual content that markitdown cannot capture.

### look_at (image analysis)
- **Purpose**: Analyze slide PNG images to extract visual information (diagrams, figures, charts, formulas in images).
- **Usage**: Provide absolute path to slide PNG in `notes/assets/`.
- **Strategy**: View key slides only (title, section headers, diagrams, formulas). Not every slide needs viewing.

### Scripts
- **`script/generate_assets.sh`**: Converts PDF files in `course-materials/` to 300 DPI PNG images in `notes/assets/`. Skips already-converted files. Requires `poppler` (`pdftoppm`, `pdfinfo`).
- **`script/generate_skeletons.sh`**: Generates markdown skeleton files from asset directories. Creates one `.md` per asset directory with image references. Skips files that already exist (does not overwrite).

## Note Generation Workflow

When generating or regenerating notes from course materials, follow this workflow:

### Step 1: Backup
```bash
mkdir -p notes/backup
cp notes/XX-topic.md notes/backup/  # Only for existing notes
```

### Step 2: Generate Assets (PNG slides from PDF)
```bash
bash script/generate_assets.sh
```
- Converts all PDFs in `course-materials/` (excluding `solution/` subdirectory) to PNG images.
- Runs at 300 DPI for readable quality.
- Skips PDFs that already have the correct number of PNG files.

### Step 3: Remove Spaces from Asset Directory Names
Asset directories generated from PDF filenames may contain spaces. Rename them:
```bash
# Example
mv "notes/assets/ch01 General Principles" "notes/assets/ch01-General-Principles"
```

### Step 4: Generate Skeletons
```bash
bash script/generate_skeletons.sh
```
- Creates markdown files with slide image references.
- Rename output files to standard `XX-topic.md` format:
```bash
mv "notes/ch01 General Principles.md" "notes/01-general-principles.md"
```
- Update image paths in skeleton files to match renamed directories (replace spaces with hyphens).

### Step 5: Convert PDF with markitdown
Use `markitdown_convert_to_markdown` with `file:///absolute/path/to/file.pdf` to extract raw text content.

### Step 6: Analyze Key Slides with look_at
Use `look_at` on 5-15 key slide images to understand:
- Diagrams and figures
- Tables with visual layout
- Formulas rendered as images
- Geometric constructions

### Step 7: Integrate Three Sources
Combine into the final note:
1. **Skeleton**: Provides all slide image references (MUST all be preserved)
2. **Backup notes** (if exists): Provides structured content, section hierarchy, formulas
3. **markitdown text**: Provides raw text to fill gaps or verify content
4. **look_at findings**: Supplements visual content not captured by text extraction

### Step 8: Verify
- Count slide image references matches total slides in PDF
- All asset paths are correct (no spaces, correct directory names)
- LaTeX formulas render correctly
- Source link at end of file points to correct PDF

### Step 9: commit
commit with convensional commit
