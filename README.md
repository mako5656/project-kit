# project-kit

新しいプロジェクトを始めるときに、リポジトリ直下へコピーするひな形です。CoWorkers・BeautyMirror で使っている決まりごとから、共通部分だけ取り出しています。

## 中身

| ファイル | 内容 |
| --- | --- |
| `template/AGENTS.md` | AIへの指示。技術構成・開発ルール・検証・Issue・ブランチとプルリクエスト |
| `template/docs/開発ルール/コミットメッセージの書き方.md` | プレフィックス（種類）の一覧と、コミット・ブランチ名・PRタイトルの形式。種類はここだけで管理する |
| `template/.claude/CLAUDE.md` | `@../AGENTS.md`だけ |
| `template/.editorconfig`・`.gitignore` | 共通の設定 |
| `template/.github/pull_request_template.md` | 目的・内容・確認したこと・関連する Issue |
| `template/docs/仕様/` | 仕様の索引とテンプレート |
| `template/docs/ADR/` | ADRの索引とテンプレート |
| `scripts/create-labels.sh` | Issue のラベル（種類・状態・担当・P1〜P3）を作る |

## 使い方

AIに任せる場合は、新しいリポジトリで「`~/Desktop/project-kit/INDEX.md`を読んで配置して」と依頼します。

手動の場合：

```bash
cp -Rn ~/Desktop/project-kit/template/. <新しいリポジトリ>/   # 既存のファイルは上書きしない
grep -rn '【要入力' <新しいリポジトリ>                          # 埋める箇所
```

## 更新ルール

- プロジェクト固有の情報は入れない。
- 必要になって何度も作るものだけを追加する。
