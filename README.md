<h1 align="center">
  <a href="https://worklenz.com" target="_blank" rel="noopener noreferrer">
    <img src="https://app.worklenz.com/assets/icons/icon-144x144.png" alt="Worklenz Logo" width="75">
  </a>
  <br>
  Worklenz    
</h1>

<p align="center">
  <a href="https://worklenz.com/features/task-management/">任务管理</a> |
  <a href="https://worklenz.com/features/time-tracking/">时间跟踪</a> |
  <a href="https://worklenz.com/features/analytics/">分析</a> |
  <a href="https://worklenz.com/features/resource-management/">资源管理</a> |
  <a href="https://worklenz.com/features/templates/">项目模板</a>
</p>

<p align="center">
  <a href="https://worklenz.com" target="_blank">
    <img
    src="https://worklenz.s3.amazonaws.com/assets/screenshots/hero-view.png"
    alt="Worklenz"
    width="1200"
    />
  </a>
</p>

Worklenz 是一个旨在帮助组织提高效率的项目管理工具。它提供了一个全面的解决方案，用于管理项目、任务和团队协作。

## 功能

- **项目规划**：创建和组织项目，分配任务给团队成员。
- **任务管理**：将项目分解为更小的任务，设置截止日期、优先级并跟踪进度。
- **协作**：共享文件、留下评论，并与团队成员无缝沟通。
- **时间跟踪**：监控任务和项目上花费的时间，以便更好地分配资源和计费。
- **报告**：生成有关项目状态、团队工作量和绩效指标的详细报告。

## 技术栈

此存储库包含 Worklenz 的前端和后端代码。

- **前端**：使用 Angular 构建，并使用 [Ant Design of Angular](https://ng.ant.design/docs/introduce/en) 作为 UI 库。
- **后端**：使用自定义的 TypeScript 实现的 ExpressJS 构建，数据库使用 PostgreSQL，提供了一个健壮、可扩展且类型安全的后端。

## 要求

- Node.js 版本 v18 或更新版本
- Postgres 版本 v15.6
- Redis 版本 v4.6.7（尚未使用，仅设置）

## 开始使用 Worklenz
- 容器化安装 - 使用 Docker 在生产或开发环境中部署 Worklenz。
- 手动安装 - 要开始使用 Worklenz，请按照此指南 [worklenz 设置指南](SETUP_THE_PROJECT.md)。

## 截图

<p align="center">
  <a href="https://worklenz.com/features/task-management/" target="_blank">
  <img
    src="https://worklenz.s3.amazonaws.com/assets/screenshots/task-views-view.png"
    alt="Worklenz 任务视图"
    width="1024"
  />
  </a>
</p>
<p align="center">
  <a href="https://worklenz.com/features/time-tracking/" target="_blank">
  <img
    src="https://worklenz.s3.amazonaws.com/assets/screenshots/time-tracking-view.png"
    alt="Worklenz 时间跟踪"
    width="1024"
  />
  </a>
</p>
<p align="center">
  <a href="https://worklenz.com/features/analytics/" target="_blank">
  <img
    src="https://worklenz.s3.amazonaws.com/assets/screenshots/analytics-view.png"
    alt="Worklenz 分析"
    width="1024"
  />
  </a>
</p>
<p align="center">
  <a href="https://worklenz.com/features/resource-management/" target="_blank">
  <img
    src="https://worklenz.s3.amazonaws.com/assets/screenshots/schedule-view.png"
    alt="Worklenz 资源管理"
    width="1024"
  />
  </a>
</p>
<p align="center">
  <a href="https://worklenz.com/features/templates/" target="_blank">
  <img
    src="https://worklenz.s3.amazonaws.com/assets/screenshots/templates-view.png"
    alt="Worklenz 模板"
    width="1024"
  />
  </a>
</p>

### 贡献

我们欢迎社区的贡献！如果您想贡献，请遵循我们的[贡献指南](CONTRIBUTING.md)。

### 安全

如果您认为您在 Worklenz 中发现了安全漏洞，我们鼓励您负责任地披露此漏洞，而不是公开问题。我们将调查所有合法报告。

请通过电子邮件 [info@worklenz.com](mailto:info@worklenz.com) 披露任何安全漏洞。

### 许可证

Worklenz 是开源的，并根据 [GNU Affero 通用公共许可证第 3 版 (AGPLv3)](LICENSE) 发布。

通过为 Worklenz 做出贡献，您同意您的贡献将根据其 AGPL 进行许可。
