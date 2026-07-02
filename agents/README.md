
## 用途说明

用于 copilot 的自定义 agent, 也可以作为 AGENTS.md 与现有 agent 协作

## 前置

远程主机建议 sudo 免密

## riscv64_python_whl远程构建.agent.md

用于在 spacemit 开发板上验证性地编译python whl 包，可以对得到的whl包进行正确性校验或者性能测试，你还可以测试不同编译条件下的whl包的性能表现差异

远程主机建议为k1或k3，需要替换文件中的 bianbu@10.0.90.13 为实际地址

## riscv64远程代码协作编写.agent.md

适用于 sshfs 挂载远程目录进行编程验证的场景，也可用于交互式的bug调试