# Makefile for Applied Electronics Course Notes Generation
# This Makefile automates the conversion of PDF course materials to
# markdown notes with embedded slide images.

.PHONY: all help assets skeletons

# Default target
all: assets skeletons

# Show help message
help:
	@echo "Applied Electronics Course Notes - Makefile Help"
	@echo "================================================"
	@echo ""
	@echo "Available targets:"
	@echo "  make all         - Generate assets and skeletons (default)"
	@echo "  make assets      - Convert PDFs to PNG images"
	@echo "  make skeletons   - Create markdown skeleton files"
	@echo "  make help        - Show this help message"
	@echo ""
	@echo "Prerequisites:"
	@echo "  - poppler-utils (provides pdftoppm and pdfinfo)"
	@echo ""
	@echo "Directory structure:"
	@echo "  course-materials/  - Source PDF files"
	@echo "  notes/assets/      - Generated PNG images"
	@echo "  notes/             - Generated markdown notes"

# Generate assets (PNG images from PDFs)
assets:
	@echo "Generating assets from PDF files..."
	@./script/generate_assets.sh

# Generate markdown skeletons (depends on assets)
skeletons: assets
	@echo "Generating markdown skeletons..."
	@./script/generate_skeletons.sh
