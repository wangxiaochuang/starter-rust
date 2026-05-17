# starter-rust

## 基础环境

### 安装 Rust、使用本模板

```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# 用于拉取指定的项目模板
cargo install cargo-generate
cargo generate wangxiaochuang/starter-rust
```

### pre-commit

pre-commit 是一个代码检查工具，可以在提交(commit)代码前进行代码检查；使用的配置文件为项目目录下的`.pre-commit-config.yaml`

```bash
# 全局安装 pre-commit 一次即可
uv tool install pre-commit
# 配置 pre-commit 为项目钩子，会在项目目录下的 .git/hooks 目录里添加钩子
pre-commit install
```

### Cargo deny

Cargo deny 是一个 Cargo 插件，可以用于检查依赖的安全性（漏洞、授权license）。

```bash
cargo install cargo-deny --locked

# 第一次初始化，生成 deny.toml 文件
cargo deny init

# 获取最新的规则，比如db、index等，未deny的检查提供支持
cargo deny fetch

# 手动执行检查，可选参数[advisories, ban, bans, license, licenses, sources, all]，默认[all]
cargo deny check -d
```

# typos

typos 是一个拼写检查工具。

```bash
cargo install typos-cli

# 执行检查
typos
```

忽略某些特定的名字或某个文件夹下所有拼写问题

```toml
[default.extend-words]
wxc = "wxc"

[files]
extend-exclude = ["CHANGELOG.md", "notebooks/*"]
```

### git cliff

```bash
cargo install git-cliff
# 第一次生成cliff.toml配置文件，并修改postprocessors，换成自己的地址
git-cliff --init
```

### nextest

cargo nextest 是一个 Rust 增强测试工具。

```bash
cargo install cargo-nextest --locked

# 运行测试
cargo nextest run
```

### 编辑器插件（VSCode）

- Dependi: Rust 包管理（会分析Cargo.toml里的依赖）
- Even Better TOML: TOML 文件支持（toml文件的语法高亮、格式化、错误提示等）
- Better Comments: 优化注释显示
- Error Lens: 错误提示优化
- GitLens: Git 增强
- indent-rainbow: 缩进显示优化
- Prettier - Code formatter: 代码格式化
- REST client: REST API 调试
- TODO Highlight: TODO 高亮
- vscode-icons: 图标优化
- YAML: YAML 文件支持
- rust-analyzer: Rust 语言支持
- Rust Test Explorer: Rust 测试概览

## 项目构建

```bash
# 构建release版本
cargo build --release
# 运行测试
cargo nextest run --all-features
```