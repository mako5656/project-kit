#!/usr/bin/env bash
# AGENTS.md の「Issue」に書いたラベルを、カレントディレクトリのGitHubリポジトリに作る。
# 既にあるラベルは色と説明を上書きする。使い方：対象リポジトリで `path/to/create-labels.sh`
set -euo pipefail

labels=(
  "種類:実装|コードの変更|1d76db"
  "種類:仕様|論点の整理と決定|5319e7"
  "種類:不具合|動作の誤り|d73a4a"
  "種類:調査|現状の把握・方式の比較|0e8a16"
  "状態:要判断|ユーザーの決定待ち|d93f0b"
  "状態:着手可|決定済みで作業を始められる|0e8a16"
  "状態:作業中|作業中|fbca04"
  "状態:レビュー待ち|作業が終わり確認待ち|c5def5"
  "担当:Claude|Claudeが作業する|f9d0c4"
  "担当:Codex|Codexが作業する|bfdadc"
  "担当:ユーザー|ユーザーが作業・判断する|d4c5f9"
  "P1|公開に必須|b60205"
  "P2|公開後すぐ|e99695"
  "P3|余裕があるとき|f4c6c6"
)

for label in "${labels[@]}"; do
  IFS="|" read -r name description color <<< "$label"
  gh label create "$name" --description "$description" --color "$color" --force
done
