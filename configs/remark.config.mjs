// src: .remark.config.mjs
// @(#): remark lint common configuration
//
// Copyright (c) 2026 Furukawa Atsushi <atsushifx@gmail.com>
//
// This software is released under the MIT License.
// https://opensource.org/licenses/MIT

// NOTE: This file is a template. Copy it into the working repository.
//
// Unlike textlint, remark resolves its plugins relative to the config file,
// so the lint plugins must be installed in the working repository itself
// (not in this shared tools repository). The bare imports below are therefore
// expected to resolve on the caller's side.
//
// Install the following packages in the working repository:
//
//   pnpm add -D \
//     remark-preset-lint-recommended \
//     remark-lint-emphasis-marker \
//     remark-lint-maximum-line-length \
//     remark-lint-no-duplicate-headings \
//     remark-lint-no-tabs \
//     remark-lint-ordered-list-marker-value \
//     remark-lint-strong-marker \
//     remark-lint-table-pipe-alignment

import remarkLintEmphasisMarker from "remark-lint-emphasis-marker";
import remarkLintMaximumLineLength from "remark-lint-maximum-line-length";
import remarkLintNoDuplicateHeadings from "remark-lint-no-duplicate-headings";
import remarkLintNoTabs from "remark-lint-no-tabs";
import remarkLintOrderedListMarkerValue from "remark-lint-ordered-list-marker-value";
import remarkLintStrongMarker from "remark-lint-strong-marker";
import remarkLintTablePipeAlignment from "remark-lint-table-pipe-alignment";

import remarkPresetLintRecommended from "remark-preset-lint-recommended";

const remarkConfig = {
  plugins: [
    remarkPresetLintRecommended,

    remarkLintNoTabs,
    remarkLintNoDuplicateHeadings,
    remarkLintTablePipeAlignment,

    [remarkLintMaximumLineLength, { size: 120, tabWidth: 2 }],
    [remarkLintOrderedListMarkerValue, "ordered"],
    [remarkLintEmphasisMarker, "*"],
    [remarkLintStrongMarker, "*"],
  ],
};

export default remarkConfig;
