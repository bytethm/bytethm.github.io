# bytethm.github.io

个人文章主站，承载文章、系列和长期项目入口。

这个仓库定位为发布门面，不绑定单一主题。研究过程、原始材料和长线整理仍放在各自项目中；主站只放适合公开阅读的内容，并为后续 books / project sites 提供入口。

## Content Model

- `src/content/articles/`: 普通文章和短系列文章。
- `src/pages/articles/`: 文章列表和详情路由。
- `src/pages/series/`: 按系列聚合文章。
- `src/pages/projects/`: 长期项目和专题站入口。
- `meta/`: 发布边界、写作风格和仓库约定。
- `public/assets/`: 可公开的图片和图示资产。

## Local Development

```sh
npm install
npm run dev
```

Before publishing:

```sh
npm run verify
```

## Publication Boundary

不要发布原始聊天、内部链接、用户输入、工单编号、接口地址、密钥、账号、日志或未经整理的排障细节。文章只讨论公开可描述的工程问题、机制判断和设计取舍。
