# LaTeX Dev Container

TeX Live をベースにした、LaTeX 文書作成・ビルド用の Docker イメージです。
GitHub Actions により、マルチプラットフォーム (`linux/amd64`, `linux/arm64`) に対応したイメージが GitHub Container Registry (GHCR) に自動的にプッシュされます。

## 特徴

- **Base Image**: `texlive/texlive:latest`
- **含まれるツール**:
  - `latexmk`, `biber`, `make`, `git`, `curl`
  - `python3`, `python3-pygments` (minted パッケージなどで使用)
  - `uv` (高速な Python パッケージインストーラー)
  - Perl モジュール: `YAML::Tiny`, `File::HomeDir`, `Unicode::GCString`, `Log::Log4perl`

## 使い方

### Docker イメージのプル

```bash
docker pull ghcr.io/tetsugo-2/latex-dev:latest
```

### Dev Container としての使用
`.devcontainer/devcontainer.json` を使用して、VS Code の Dev Container として利用できます。

- [Devcontainer.json](./dev/devcontainer.json)