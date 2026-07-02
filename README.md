# kxx-riscv64-agents

这是一个面向 RISC-V 远程开发场景的 Copilot 自定义 Agent 集合，主要用于在 SpacemiT / Bianbu 等 riscv64 开发环境中进行远程构建、代码协作和问题调试。

## 目录结构

```text
.
├── agents/                 # 可安装到 ~/.copilot/agents 的自定义 Agent
├── for_project/            # 可放入具体项目中的 AGENTS.md 示例或项目级说明
├── install_for_copilot.sh  # 安装脚本
└── LICENSE
```

## 安装到 Copilot

执行：

```bash
./install_for_copilot.sh
```

脚本会将 `agents/` 目录下除 `README.md` 之外的文件复制到：

```text
~/.copilot/agents
```

如果脚本没有执行权限，可先运行：

```bash
chmod +x install_for_copilot.sh
```
