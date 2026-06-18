# Changelog

## [0.1.0]

### Features

- *(package.json)* Add documentation linting and proofreading tools

  - `cspell` と `markdownlint-cli2` を devDependencies に追加
  - `textlint` および日本語校正・リントルールパッケージを追加
  - `pnpm-lock.yaml`: cspell / markdownlint-cli2 / textlint エコシステムの推移的依存関係を追加

- *(bin/\*)* Add wrapper scripts for cspell, markdownlint, and textlint

  - `bin/cspell` / `bin/cspell.cmd` — `node_modules/.bin/cspell` へのラッパー
  - `bin/markdownlint` / `bin/markdownlint.cmd` — `node_modules/.bin/markdownlint-cli2` へのラッパー
  - `bin/textlint` / `bin/textlint.cmd` — `node_modules/.bin/textlint` へのラッパー

### Miscellaneous Tasks

- *(doc-tools)* Replace install script with pnpm-managed lint tools

  PowerShell 製のインストールスクリプト (`templates/scripts/install-doc-tools.ps1`, 281行) を廃止し、
  pnpm の devDependencies でドキュメントツールを管理する構成に移行。
  `pnpm install` 一発でセットアップが完了するようになった。
  廃止済みの PowerShell インストールスクリプトを削除

- *(changelog)* Add git-cliff configuration for changelog generation

  `configs/cliff.toml` を新規追加:
  - Conventional Commits に基づくコミットパース設定
  - GitHub squash-merge プレフィックス (`merge (#xx):`) の除去ルール
  - feat / fix / docs / refactor / chore などをグループに割り当て

### Dependencies

- *(package)* Add `js-yaml@^4.2.0` and `markdown-it@^14.2.0` for vulnerability fixes (#3, #4)
