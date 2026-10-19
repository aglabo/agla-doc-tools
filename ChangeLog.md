# Changelog

## [0.3.0] - 2026-10-19

### Features

- *(runners)* Add workflow lint runners and update dev scripts

  - `run-actionlint.sh` / `run-ghalint.sh` を追加 (`~/.config` 下のグローバル設定を読み込む)
  - `run-shellcheck.sh` / `run-shellspec.sh` / `run-shfmt.sh` を削除
  - `runners/libs/`: 設定ファイル解決 (`utils.lib.sh`)、WSL 判定 (`wsl.lib.sh`) を追加
  - `runners/libs/`: `PROJECT_ROOT` の解決を改善
  - `scripts/setup-dev-env.sh` を拡張、greeting スクリプトを削除
  - `prepare-commit-msg.sh` を Git hook 対応 (fable モデル対応含む)

- *(runners)* Add config file fallback to lint runners

  - `run-markdownlint.sh` / `run-textlint.sh` が `resolve_config_file` で
    XDG 設定 → `configs/` の順に設定を解決
  - textlint にキャッシュ (`.cache/textlint`) を追加
  - `init-vars.lib.sh`: `PROJECT_ROOT` を `SCRIPT_ROOT` から導出

### Refactor

- *(bin)* Delegate lint tool wrappers to shared node runner

  - `bin/libs/run-node-bin` / `run-node-bin.cmd` を共通ランナーとして追加
  - cspell / markdownlint / remark / textlint の各ラッパーを共通ランナーへ委譲
  - シェル版ラッパーに実行権限を付与

### Configuration

- *(configs)* Update tool configs for agla-doc-tools

  - `.editorconfig` / `.gitignore` を整理 (gitignore はデフォルト除外 + 許可リスト方式)
  - `dprint.jsonc`: npm プラグイン参照に変更し TOML フォーマットを追加
  - commitlint 設定を `commitlint.config.mjs` (ESM) に変更
  - `cliff.toml`: scope ごとのグループ化と分類ルールを追加
  - markdownlint / textlint / shellcheck / ShellSpec / actionlint / ghalint の同梱設定を削除
  - `package.json`: リポジトリ URL と description を agla-doc-tools 用に設定

### Miscellaneous Tasks

- *(ci)* Update reusable workflow version

  - Betterleaks / actionlint / ghalint の再利用 workflow を v0.4.0 に更新、concurrency 設定を追加

### Dependencies

- *(package)* Update dependencies and pnpm

  - cspell / textlint / markdown-it / @hono/node-server などを更新
  - `packageManager` を `pnpm@12.14.0` に更新

### Release

- Set project version to 0.3.0

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
