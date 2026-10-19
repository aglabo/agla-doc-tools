# Changelog

## [0.3.0] - 2026-10-19

### Features

- Add actionlint and ghalint runners with support for global configuration files.
- Improve runner configuration lookup, project root detection, and WSL support.
- Add fallback configuration lookup and caching for Markdown and text linting.
- Update development setup and Git commit hooks, including fable model support.
- Remove obsolete shell lint runners and greeting scripts.

### Refactor

- Use a shared Node.js runner for cspell, markdownlint, remark, and textlint wrappers.

### Configuration

- Simplify editor and Git ignore settings, and update project metadata.
- Add TOML formatting support and switch commitlint to ESM.
- Improve git-cliff changelog grouping and classification.
- Remove bundled lint configurations in favor of external configuration.

### CI

- Update reusable Betterleaks, actionlint, and ghalint workflows to v0.4.0.

### Dependencies

- Update documentation tools and other dependencies.
- Upgrade the package manager to pnpm 12.14.0.

### Release

- Bump the project version to 0.3.0.

## [0.1.0]

### Features

- Add cspell, markdownlint, and textlint with Japanese proofreading rules.
- Add cross-platform wrappers for documentation linting tools.

### Maintenance

- Replace the PowerShell installer with dependency management through pnpm.
- Add git-cliff configuration for Conventional Commits and changelog generation.

### Dependencies

- Update js-yaml and markdown-it to address security vulnerabilities.
