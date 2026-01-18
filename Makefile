.PHONY: build deploy clean run

# Build the site
build:
	hugo

# Serve locally for development
run:
	hugo server

# Deploy to GitHub Pages using gh-pages package
deploy: build
	@echo "Deploying to gh-pages branch..."
	npx gh-pages -d public -m "Deploy: $$(date '+%Y-%m-%d %H:%M:%S')"
	@echo "Deployed successfully!"

# Clean build artifacts
clean:
	rm -rf public
