
## 用途说明

用于 copilot 的自定义 agent, 也可以作为 AGENTS.md 与现有 agent 协作

## 前置

远程主机建议 sudo 免密

## riscv64_python_whl远程构建.agent.md

用于在 spacemit 开发板上验证性地编译python whl 包，可以对得到的whl包进行正确性校验或者性能测试，你还可以测试不同编译条件下的whl包的性能表现差异

远程主机建议为k1或k3，需要替换文件中的 bianbu@10.0.90.13 为实际地址


实测提示词示例：

- 在远程帮我构建 numpy 2.4.5
- 对/home/bianbu/numpy-2.4.5-cp312-cp312-linux_riscv64.whl进行基本的性能测试，测试结果保存在/home/bianbu下面
- 构建 numpy 2.4.5，要求构建时使用 openblas-spacemit 包提供的blas而非系统的blas，构建完成后，你需要确认使用到了哪个blas
- 总结一下，需要怎样设置才能让 numpy 用到 openblas-spacemit

## riscv64远程代码协作编写.agent.md

适用于 sshfs 挂载远程目录进行编程验证的场景，也可用于交互式的bug调试