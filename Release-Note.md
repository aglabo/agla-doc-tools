# Release Notes

## v0.3.0 (2026-10-19)

The first cleanup release as agla-doc-tools.
Lint runners now resolve config files automatically.
Tool wrappers now share a common runner.

### Highlights

- Lint runners resolve config files automatically
  - markdownlint / textlint / actionlint / ghalint read the global config under `${XDG_CONFIG_HOME}` (or `~/.config`)
  - If no global config exists, they fall back to a local config in `configs/`, and exit with an error if neither is found
  - textlint now caches results in `.cache/textlint/`
- New lint runners for GitHub Actions workflows
  - `runners/run-actionlint.sh` and `runners/run-ghalint.sh` (read the global config, not a bundled config)
- Shared runner for `bin/` tool wrappers
  - cspell / markdownlint / remark / textlint run through `bin/libs/run-node-bin` (`.cmd` on Windows)
  - Shell wrappers are now executable

### Changes

- Improved dev environment setup (`scripts/setup-dev-env.sh`)
  - Checks lefthook and fetches aglabo tools
  - Runs all setup steps outside CI
- Updated the commit message hook (`prepare-commit-msg.sh`)
  - Accepts Git hook arguments
  - Restricts Claude to read-only tools
- dprint uses npm plugin references and now formats TOML files
- commitlint config migrated to ESM (`configs/commitlint.config.mjs`)
- git-cliff now groups ChangeLog entries by scope
- CI: reusable workflows (Betterleaks / actionlint / ghalint) updated to v0.4.0

### Removed (Breaking Changes)

- Runners: `run-shellcheck.sh` / `run-shellspec.sh` / `run-shfmt.sh`
- Configs: `.shellspec`, `configs/shellcheckrc`, `configs/actionlint.yaml`, `configs/ghalint.yaml`
- Bundled markdownlint config: `configs/.markdownlint*.yaml`
- Bundled textlint config: `configs/textlintrc.yaml`, `configs/.textlint/`
- The sample `scripts/greeting.sh` and its tests

> [!NOTE]
> No lint configs are bundled. To use these runners, place the following global config files
> (`${XDG_CONFIG_HOME}` defaults to `~/.config`):
>
> - `${XDG_CONFIG_HOME}/linters/markdownlint/.markdownlint-cli2.yaml`
> - `${XDG_CONFIG_HOME}/linters/textlint/textlintrc.yaml`
> - `${XDG_CONFIG_HOME}/jactionlint/jactionlint.yaml`
> - `${XDG_CONFIG_HOME}/linters/ghalint/ghalint.yaml`

### Dependencies and Requirements

- pnpm 12 or later is required (`packageManager: pnpm@12.14.0`)
- Updated dependencies such as cspell, textlint, and markdown-it
- Added `@commitlint/config-conventional`
- Package metadata updated for agla-doc-tools (version 0.3.0, repository URL, description)
