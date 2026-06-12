# 🚀 Vibe Coding 学习计划

> 这是我学习 Vibe Coding 的一个项目。
>
> 通过实际动手写代码，体验用 AI 辅助工具快速开发、迭代的过程，感受人机协作编程的魅力。

---

## 📋 项目任务

| # | 任务 | GitHub 仓库 | 状态 | 说明 |
|:-:|:----:|:-----------:|:----:|:----|
| 1 | 博客 | [`blog`](https://github.com/zhimaxu/blog) | 🔄 进行中 | 个人博客 |
| 2 | AI 客服 | [`ai customer service`](https://github.com/zhimaxu/ai-customer-service) | ⬜ 待开始 | 智能对话客服系统 |
| 3 | 游戏 Mod | [`oni-mods`](https://github.com/zhimaxu/oni-mods) | ⬜ 待开始 | 游戏模组开发与修改 |

---

## ✨ 目标

- 提升编程能力
- 体验 AI 协作开发的效率
- 产出三个完整的实战项目

---

## ⚙️ 仓库架构

本项目采用 **Git Submodule** 管理三个子仓库：

```
C:\Code\Claude/              ← 主仓库（统一管理）
├── README.md                ← 项目总览
├── blog/                    ← 子仓库 A（独立 .git）
├── ai-customer-service/     ← 子仓库 B（独立 .git）
└── oni-mods/                ← 子仓库 C（独立 .git）
```

### ⚠️ 注意事项

1. **克隆仓库**
   - 首次克隆时需加上 `--recursive` 参数以初始化所有子仓库：
     ```bash
     git clone --recursive https://github.com/yourname/C--Code-Claude.git
     ```
   - 如果忘记加 `--recursive`，进入仓库后执行：
     ```bash
     git submodule update --init --recursive
     ```

2. **在主仓库中操作**
   - 添加/更新子仓库：
     ```bash
     git submodule add <url> <path>
     git add .
     git commit -m "add submodule"
     ```
   - 更新所有子仓库到最新：
     ```bash
     git submodule update --remote
     ```

3. **在子仓库中操作**
   - 进入对应目录后，可以像普通仓库一样正常 commit/push：
     ```bash
     cd blog
     git add .
     git commit -m "update blog"
     git push
     ```

4. **推送顺序**
   - 先推送子仓库的更改，再推送主仓库（因为主仓库记录的是子仓库的 commit 引用）：
     ```bash
     # 1. 推送子仓库
     cd blog && git push && cd ..
     # 2. 推送主仓库
     git add . && git commit -m "update submodule ref" && git push
     ```

5. **常见问题**
   - 如果子仓库状态混乱，可尝试删除后重新添加：
     ```bash
     git submodule deinit -f --all
     rm -rf blog ai-customer-service oni-mods
     git submodule add <url> blog
     ```
