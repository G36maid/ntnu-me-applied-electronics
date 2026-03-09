# Agent Operating Guidelines

This document outlines the essential guidelines for agents operating within this repository.

## Git & Commits
- **Conventional Commits**: All commit messages MUST follow the Conventional Commits specification (e.g., `feat:`, `fix:`, `docs:`, `chore:`).
- **Format Rule**: The description after the type/scope MUST start with a lowercase letter.

## Code Style & Formatting
- **Markdown**: Adhere to GitHub Flavored Markdown.
- **Naming Conventions**: Follow `notes/XX-topic.md` and `notes/resources/detailed-resource.md`.
- **Diagrams**: Use Mermaid ONLY for logic, architecture, and flow representation (`flowchart LR`, `timing`, `stateDiagram-v2`, `mindmap`). Do NOT use it for complex electrical schematics or mathematical curves.

## Project Structure
- `course-materials/`: Original course PDF files.
- `notes/`: Organized markdown notes.
- `notes/assets/`: Auto-generated PNG images of presentation slides.

## Workflow & Tool Guidelines
- **PDF Processing**: Converting PDFs to plain text is **REQUIRED** to extract comprehensive content and formulas.
- **Automated Slide Images**: Use `generate_assets.sh` and `generate_skeletons.sh` to extract images and build markdown skeletons. Combine the converted PDF text with the corresponding image placeholders.
- **`convert_to_markdown`**: Use this tool to convert PDFs and URLs into structured markdown. Ensure all links, images, and headings are properly preserved.
