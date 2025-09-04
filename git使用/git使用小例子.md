要保证本地和远程**各个分支**（如 `git`、`cpp`、`main` 等）都同步，需对**每个分支**分别执行「拉取远程更新 + 推送本地更新」的操作（若有分支间合并需求，再额外处理合并）。以下是具体步骤：


### 步骤 1：同步「本地 `git` 分支」与「远程 `origin/git` 分支」
1. 切换到本地 `git` 分支：
   ```bash
   git checkout git
   ```

2. 拉取远程 `origin/git` 的最新更新（自动合并到本地 `git` 分支）：
   ```bash
   git pull origin git
   ```
   - 若出现**冲突**（提示 `CONFLICT`），需手动解决：
     - 打开冲突文件，删除 `<<<<<<<`、`=======`、`>>>>>>>` 等冲突标记，保留需要的内容；
     - 解决后，执行 `git add .`（标记冲突已解决），再 `git commit -m "解决与 origin/git 的冲突"`。

3. 推送本地 `git` 分支到远程 `origin/git`：
   ```bash
   git push origin git
   ```


### 步骤 2：同步「本地 `cpp` 分支」与「远程 `origin/cpp` 分支」
1. 切换到本地 `cpp` 分支：
   ```bash
   git checkout cpp
   ```

2. 拉取远程 `origin/cpp` 的最新更新：
   ```bash
   git pull origin cpp
   ```
   - 若有冲突，按步骤 1 的「冲突解决」流程处理。

3. 推送本地 `cpp` 分支到远程 `origin/cpp`：
   ```bash
   git push origin cpp
   ```


### 步骤 3：同步「`main` 分支」（若涉及）
如果项目依赖 `main` 分支（如远程有 `origin/main`，或本地需维护 `main` 同步），重复类似逻辑：
1. 切换到 `main` 分支：
   ```bash
   git checkout main
   ```

2. 拉取远程 `origin/main` 的更新：
   ```bash
   git pull origin main
   ```

3. 推送本地 `main` 到远程：
   ```bash
   git push origin main
   ```


### 额外：分支间合并（如需同步分支间的内容）
如果需要让 `git`/`cpp` 分支包含 `main` 的最新内容（或反之），需执行**分支合并**：
- 例如，将 `main` 的更新合并到 `cpp` 分支：
  ```bash
  git checkout cpp       # 切换到cpp分支
  git merge main         # 合并main分支的内容
  # （若冲突，解决后提交）
  git push origin cpp    # 推送合并后的cpp到远程
  ```


### 核心逻辑
Git 中「分支同步」的本质是：**让本地分支和对应的远程分支，通过 `pull`（拉取远程更新）和 `push`（推送本地更新），保持提交历史一致**。对每个需要同步的分支，重复「拉取 → 解决冲突（若有）→ 推送」的流程，即可保证所有分支的本地与远程状态一致。