# Agent Operating Guidelines

This document outlines the essential guidelines for agents operating within this repository.

## Build/Lint/Test Commands
- Verification: Ensure markdown structure, link validity, and naming conventions are consistent.
- No Traditional Builds: This project does not have traditional code build/lint/test commands.

## Code Style Guidelines
- Markdown Formatting: Adhere to GitHub Flavored Markdown. Use consistent headers, lists, and code blocks.
- Naming Conventions: Follow `notes/XX-topic.md` and `notes/resources/detailed-resource.md` patterns.
- Link Management: All URLs must be clickable markdown links with descriptive text.
- Error Handling: Clearly document any conversion errors, broken links, or inconsistencies.
- **Diagrams & Charts (Crucial)**:
  - **Use Mermaid** ONLY for logic, architecture, and flow representation (`flowchart LR`, `timing`, `stateDiagram-v2`, `mindmap`).
  - **DO NOT** use Mermaid for physical electrical schematics or continuous mathematical functions (e.g., Diode I-V curves).
  - For electrical circuits, provide text-based step-by-step analysis or leave an image placeholder.

## Project Structure Guidelines
- Course Materials: Original course PDF files are located in the `course-materials/` directory.
- Notes: Organized markdown notes are located in the `notes/` directory.
- Slide Assets: Auto-generated PNG images of presentation slides are stored in `notes/assets/`.
- Resources: Detailed resource files are located in `notes/resources/`.
- Root Files: `AGENTS.md` and `README.md` are located in the project root.
- Link Management: Ensure the `README.md` file has links to all notes.

## Workflow & Script Guidelines
- **Automated Slide Processing**:
  - Do NOT attempt to read electrical engineering PDFs purely as raw text, as circuits and formulas will be lost.
  - Rely on the repository's shell scripts:
    1. `generate_assets.sh`: Converts PDFs in `course-materials/` to PNG images using `poppler` (`pdftoppm`).
    2. `generate_skeletons.sh`: Creates markdown skeletons in `notes/` with embedded slide images.
  - **Agent Task**: When asked to summarize or process course materials, locate the embedded slide images (`![Slide X](...)`) in the markdown skeleton, analyze the visual content, and populate the `💡 重點註釋與解析` section underneath with structured notes, OCR content, and circuit behavior explanations.

## Tool Use Guidelines
### convert_to_markdown
- Purpose: Use this tool to convert documents like text-heavy PDF files and web pages into structured markdown.
- Usage:
  - For web pages: Provide the full URL (e.g., `https://example.com/resource`).
  - For slides/diagram-heavy PDFs: Refer to the **Automated Slide Processing** workflow instead of relying solely on text conversion.
- Best Practices:
  - Always review the converted markdown for formatting issues or missing content.
  - Extract and preserve all links, images, and headings.
  - If conversion fails or content is missing, clearly document the issue in the notes.
