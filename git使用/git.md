# Git 常用命令大全

## 一、仓库初始化与克隆

| 命令 | 说明 | 示例 |
|------|------|------|
| `git init` | 初始化一个新的本地Git仓库 | `git init my_project` |
| `git clone <仓库地址>` | 克隆远程仓库到本地 | `git clone https://github.com/example/repo.git` |
| `git remote add origin <仓库地址>` | 将本地仓库与远程仓库关联 | `git remote add origin https://github.com/example/repo.git` |
| `git remote -v` | 查看远程仓库信息 | `git remote -v` |

## 二、文件操作与提交

| 命令 | 说明 | 示例 |
|------|------|------|
| `git add <文件名>` | 将指定文件添加到暂存区 | `git add index.html` |
| `git add .` | 将当前目录所有修改添加到暂存区（不包括删除的文件） | `git add .` |
| `git add -A` | 将所有修改（包括新增、修改、删除）添加到暂存区 | `git add -A` |
| `git add -u` | 将已跟踪文件的修改和删除添加到暂存区（不包括新增文件） | `git add -u` |
| `git commit -m "提交信息"` | 将暂存区的文件提交到本地仓库 | `git commit -m "修复登录bug"` |
| `git commit -am "提交信息"` | 跳过暂存区，直接提交已跟踪文件的修改 | `git commit -am "更新README"` |
| `git status` | 查看工作区和暂存区的状态 | `git status` |
| `git diff` | 查看工作区与暂存区的差异 | `git diff` |
| `git diff --staged` | 查看暂存区与本地仓库的差异 | `git diff --staged` |

## 三、历史记录查看

| 命令 | 说明 | 示例 |
|------|------|------|
| `git log` | 查看提交历史记录 | `git log` |
| `git log --stat` | 查看提交历史及每次提交修改的文件统计 | `git log --stat` |
| `git log -p` | 查看提交历史及每次提交的详细修改内容 | `git log -p` |
| `git log --oneline` | 以简洁格式显示提交历史 | `git log --oneline` |
| `git log -n <数字>` | 查看最近n次提交 | `git log -n 5` |
| `git reflog` | 查看所有操作记录（包括已被删除的提交） | `git reflog` |

## 四、版本回滚与撤销

| 命令 | 说明 | 示例 |
|------|------|------|
| `git checkout <文件名>` | 放弃工作区对文件的修改 | `git checkout index.html` |
| `git reset HEAD <文件名>` | 将暂存区的修改撤销到工作区 | `git reset HEAD index.html` |
| `git reset --soft HEAD^` | 撤销最后一次提交，保留暂存区和工作区 | `git reset --soft HEAD^` |
| `git reset --mixed HEAD^` | 撤销最后一次提交，保留工作区，清空暂存区（默认） | `git reset HEAD^` |
| `git reset --hard HEAD^` | 撤销最后一次提交，同时清空暂存区和工作区（谨慎使用） | `git reset --hard HEAD^` |
| `git reset --hard <提交ID>` | 回滚到指定提交版本 | `git reset --hard a1b2c3d` |
| `git revert <提交ID>` | 创建一个新的提交来撤销指定提交的修改 | `git revert a1b2c3d` |

## 五、分支管理

| 命令 | 说明 | 示例 |
|------|------|------|
| `git branch` | 列出所有本地分支（当前分支前有*标记） | `git branch` |
| `git branch -r` | 列出所有远程分支 | `git branch -r` |
| `git branch -a` | 列出所有本地和远程分支 | `git branch -a` |
| `git branch <分支名>` | 创建新分支 | `git branch feature/login` |
| `git checkout -b <分支名>` | 创建并切换到新分支 | `git checkout -b feature/payment` |
| `git checkout <分支名>` | 切换到指定分支 | `git checkout develop` |
| `git switch <分支名>` | 切换到指定分支（Git 2.23+ 新增，更直观） | `git switch main` |
| `git switch -c <分支名>` | 创建并切换到新分支（Git 2.23+ 新增） | `git switch -c bugfix/issue123` |
| `git branch -d <分支名>` | 删除已合并到当前分支的分支 | `git branch -d feature/login` |
| `git branch -D <分支名>` | 强制删除分支（即使未合并） | `git branch -D feature/old` |
| `git merge <分支名>` | 将指定分支合并到当前分支 | `git merge feature/payment` |
| `git merge --abort` | 放弃当前合并过程，恢复到合并前状态 | `git merge --abort` |
| `git rebase <目标分支>` | 将当前分支基于目标分支重新应用提交 | `git rebase main` |
| `git rebase --abort` | 放弃当前rebase操作 | `git rebase --abort` |

## 六、远程仓库操作

| 命令 | 说明 | 示例 |
|------|------|------|
| `git push` | 推送当前分支到远程仓库对应分支 | `git push` |
| `git push origin <分支名>` | 推送指定分支到远程仓库 | `git push origin feature/login` |
| `git push -u origin <分支名>` | 推送分支并设置 upstream 关联 | `git push -u origin main` |
| `git push origin --delete <分支名>` | 删除远程分支 | `git push origin --delete feature/old` |
| `git pull` | 拉取远程仓库当前分支的更新并合并 | `git pull` |
| `git pull origin <分支名>` | 拉取远程指定分支的更新并合并到当前分支 | `git pull origin main` |
| `git fetch` | 拉取远程仓库的所有更新，但不合并 | `git fetch` |
| `git fetch origin <分支名>` | 拉取远程指定分支的更新，但不合并 | `git fetch origin develop` |

## 七、其他常用命令

| 命令 | 说明 | 示例 |
|------|------|------|
| `git stash` | 将工作区和暂存区的修改暂存起来 | `git stash` |
| `git stash save "描述信息"` | 暂存修改并添加描述 | `git stash save "完成一半的登录功能"` |
| `git stash list` | 查看所有暂存的修改 | `git stash list` |
| `git stash apply` | 应用最近一次暂存的修改，但不删除暂存记录 | `git stash apply` |
| `git stash pop` | 应用最近一次暂存的修改，并删除暂存记录 | `git stash pop` |
| `git stash drop` | 删除最近一次暂存的修改 | `git stash drop` |
| `git stash clear` | 清除所有暂存的修改 | `git stash clear` |
| `git tag` | 列出所有标签 | `git tag` |
| `git tag <标签名>` | 创建轻量标签 | `git tag v1.0.0` |
| `git tag -a <标签名> -m "标签说明"` | 创建带注释的标签 | `git tag -a v1.0.0 -m "正式发布1.0版本"` |
| `git push origin <标签名>` | 推送标签到远程仓库 | `git push origin v1.0.0` |
| `git push origin --tags` | 推送所有标签到远程仓库 | `git push origin --tags` |
| `git config --global user.name "用户名"` | 配置全局用户名 | `git config --global user.name "John Doe"` |
| `git config --global user.email "邮箱"` | 配置全局邮箱 | `git config --global user.email "john@example.com"` |
| `git config --list` | 查看Git配置信息 | `git config --list` |

## 八、Git 工作流建议

1. 保持主分支（main/master）随时可部署
2. 开发新功能使用 feature 分支
3. 修复bug使用 bugfix 分支
4. 发布版本使用 release 分支
5. 紧急修复生产环境问题使用 hotfix 分支
6. 提交信息应清晰描述修改内容，遵循规范（如Conventional Commits）
7. 定期从主分支同步更新到开发分支，减少合并冲突
8. 代码提交前进行自我审查，确保代码质量

## 九、其他使用git小技巧

1. `git branch -M main`  将当前分支重命名为main分支
