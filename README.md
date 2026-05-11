# 帮助研究者从“找到知识”到“生产可信知识”

## 项目说明

本仓库用于整理和保存本人投稿至 **2026年中国图书馆学会专业图书馆分会学术年会暨专业图书馆发展论坛学术论文及业务案例征集** 的业务案例材料。

案例题目为：

> **帮助研究者从“找到知识”到“生产可信知识”：高校图书馆“科研数据会诊室”的实践路径与能力重塑**


## 仓库内容

```text
.
├── README.md                  # 项目说明文件
├── manuscript.qmd             # 正文稿件
├── images/                    # 图示材料
├── tables/                    # 表格材料
├── references.bib             # 参考文献数据
├── custom-reference-doc.docx  # Word 输出样式文件
└── apa-7th-edition.csl        # APA 第 7 版参考文献格式样式
```


## 软件环境

复现本文档需要安装：

- R
- RStudio
- Quarto

在 R 中安装宏包：

```r
install.packages(c(
  "tidyverse",
  "readxl",
  "flextable",
  "officer",
  "knitr"
))
```


## 复现 Word 文档

用 RStudio 打开 `manuscript.qmd`，然后点击编辑器上方的 **Render** 按钮。

生成完成后，Word 文件会出现在当前工作目录中。

