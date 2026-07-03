
# Copilot 自定义 Agent

本目录存放面向 RISC-V 远程开发场景的 Copilot 自定义 Agent，可安装到 `~/.copilot/agents` 后在 VS Code 中直接调用，也可以作为项目级 `AGENTS.md` 的协作参考。

## 安装

在仓库根目录执行：

```bash
./install_for_copilot.sh
```

脚本会复制本目录下除 `README.md` 之外的 Agent 文件到 `~/.copilot/agents`。

## 使用前提

- 远程主机建议配置 SSH 免密登录。
- 需要 `sudo` 的远程构建或验证任务，建议提前配置 sudo 免密。
- 如果源码目录来自 sshfs 挂载，不要在本机执行构建、编译、测试、基准测试或环境检查；验证应通过 SSH 在远端 riscv64 主机上执行。
- Agent 文件中的默认远程地址仅为示例，使用前请按实际环境修改。

## Agent 清单

### `riscv64_python_whl远程构建.agent.md`

用于在 Spacemit / Bianbu riscv64 开发板上下载源码、修改源码并构建 Python `.whl` 包。默认远程主机为 `bianbu@10.0.90.13`，建议替换为实际的 k1 / k3 开发板地址。

适合场景：

- 构建指定 Python 包和版本的 wheel。
- 验证已有 wheel 的可安装性、正确性或基础性能。
- 对比不同构建条件下的 wheel 行为或性能。
- 排查 Python 包在 riscv64 上的构建失败原因。

示例提示：

- 在远程帮我构建 numpy 2.4.5。
- 对 `/home/bianbu/numpy-2.4.5-cp312-cp312-linux_riscv64.whl` 做基本性能测试，结果保存在 `/home/bianbu` 下。
- 构建 numpy 2.4.5，要求使用 `openblas-spacemit` 包提供的 BLAS，而不是系统 BLAS；构建完成后确认实际使用了哪个 BLAS。
- 总结一下，需要怎样设置才能让 numpy 用到 `openblas-spacemit`。

### `riscv64远程代码协作编写.agent.md`

适用于通过 sshfs 挂载远程 riscv64 源码目录后，在本地编辑、搜索和分析代码，并通过 SSH 在远端执行验证命令的场景。默认映射为：

- 本地挂载根目录：`/home/chenzhaoqi/mnt`
- 远程项目根目录：`/home/bianbu26/eigen_rvv`
- SSH 目标：`bianbu26@10.0.91.143`

适合场景：

- 分析 sshfs 挂载的远程源码。
- 修改源码并在远端 riscv64 环境验证。
- 交互式调试 bug。
- 避免误用本机 x86_64 环境替代 riscv64 验证。

示例提示：

- 帮我分析这个 sshfs 工作区里的编译错误，并在远端验证修复。
- 修改这个函数以支持 riscv64 RVV 路径

### `spacemit-riscv-skill-builder.agent.md`

用于创建、修改或评审适用于 Spacemit RISC-V 开发场景的 `SKILL.md`。它面向 k1 / X60、k3 / X100、Bianbu、嵌入式 Linux、交叉编译、远程开发板调试和系统环境排查等场景。

适合场景：

- 为某类 Spacemit RISC-V 开发任务沉淀可复用 Skill。
- 将板卡调试、构建、移植或性能分析流程整理成 `SKILL.md`。
- 评审已有 Skill 是否覆盖触发词、板卡环境要求和输出格式。

示例提示：

- 把/home/chenzhaoqi/mnt/eigen_custom_test/base_perf/eigen_operator_benchmark.cpp里面的测试框架的写法变成skill
- 参考/home/chenzhaoqi/mnt/eigen_custom_test/eigen_bench，创建使用到eigen的程序如何正确编译使用系统eigen库或者eigen-spacemit rvv加速库的skill