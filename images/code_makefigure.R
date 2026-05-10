library(tidyverse)

c1 <- "#C8DCF0"
c2 <- "#FAE8C8"
c3 <- "#D4EDD4"
c4 <- "#F5D4D4"
c5 <- "#E8E0F0"
ct <- "#E0EBF5"

ggplot() +

  # support layer background
  geom_rect(aes(xmin = 0.2, xmax = 9.8, ymin = 6.8, ymax = 8.3),
    fill = "#F7F9FC", color = "grey70", linewidth = 0.4,
    linetype = "dashed", inherit.aes = FALSE
  ) +
  geom_text(aes(x = 0.58, y = 7.55, label = "支撑"),
    size = 2.7, color = "grey55", family = "sans", angle = 90, inherit.aes = FALSE
  ) +

  # support boxes
  geom_rect(aes(xmin = 1.0, xmax = 3.2, ymin = 6.92, ymax = 8.18),
    fill = c1, color = "grey55", linewidth = 0.45, inherit.aes = FALSE
  ) +
  geom_text(aes(x = 2.1, y = 7.55, label = "开放科学\n提供资源"),
    size = 3.2, fontface = "bold", color = "#1a4a7a",
    family = "sans", lineheight = 1.3, inherit.aes = FALSE
  ) +
  geom_rect(aes(xmin = 3.9, xmax = 6.1, ymin = 6.92, ymax = 8.18),
    fill = c1, color = "grey55", linewidth = 0.45, inherit.aes = FALSE
  ) +
  geom_text(aes(x = 5.0, y = 7.55, label = "统计建模\n核心能力"),
    size = 3.2, fontface = "bold", color = "#1a4a7a",
    family = "sans", lineheight = 1.3, inherit.aes = FALSE
  ) +
  geom_rect(aes(xmin = 6.8, xmax = 9.0, ymin = 6.92, ymax = 8.18),
    fill = c1, color = "grey55", linewidth = 0.45, inherit.aes = FALSE
  ) +
  geom_text(aes(x = 7.9, y = 7.55, label = "人工智能\n提升效率"),
    size = 3.2, fontface = "bold", color = "#1a4a7a",
    family = "sans", lineheight = 1.3, inherit.aes = FALSE
  ) +

  # arrows: support -> service
  geom_segment(aes(x = 5.0, xend = 5.0, y = 6.92, yend = 6.22),
    arrow = arrow(length = unit(0.17, "cm"), type = "closed"),
    color = "grey55", linewidth = 0.45, inherit.aes = FALSE
  ) +

    # service layer background
  geom_rect(aes(xmin = 0.2, xmax = 9.8, ymin = 4.1, ymax = 6.22),
    fill = "#FAFAFA", color = "grey70", linewidth = 0.4,
    linetype = "dashed", inherit.aes = FALSE
  ) +
  geom_text(aes(x = 0.58, y = 5.25, label = "服务"),
    size = 2.7, color = "grey55", family = "sans", angle = 90, inherit.aes = FALSE
  ) +

  # left wing
  geom_rect(aes(xmin = 0.8, xmax = 3.5, ymin = 4.32, ymax = 6.08),
    fill = c2, color = "grey55", linewidth = 0.5, inherit.aes = FALSE
  ) +
  geom_text(aes(x = 2.15, y = 5.72, label = "《左翼》顶刊论文复现"),
    size = 3.0, fontface = "bold", color = "#7a4a00",
    family = "sans", inherit.aes = FALSE
  ) +
  geom_text(
    aes(
      x = 2.15, y = 5.15,
      label = " Nature/Science 开放论文\n 课程化复现分析全流程\n 四季训练营体系"
    ),
    size = 2.65, color = "grey25", family = "sans",
    lineheight = 1.38, inherit.aes = FALSE
  ) +

  # core
  geom_rect(aes(xmin = 3.7, xmax = 6.3, ymin = 4.32, ymax = 6.08),
    fill = c3, color = "grey50", linewidth = 0.55, inherit.aes = FALSE
  ) +
  geom_text(aes(x = 5.0, y = 5.72, label = "《一体》可重复研究工作流"),
    size = 3.0, fontface = "bold", color = "#1a5c1a",
    family = "sans", inherit.aes = FALSE
  ) +
  geom_text(
    aes(
      x = 5.0, y = 5.15,
      label = "R / Quarto / Git\n 数据清理、建模、图表、论文\n 知识沉淀与模板复用"
    ),
    size = 2.65, color = "grey20", family = "sans",
    lineheight = 1.38, inherit.aes = FALSE
  ) +

  # right wing
  geom_rect(aes(xmin = 6.5, xmax = 9.2, ymin = 4.32, ymax = 6.08),
    fill = c4, color = "grey55", linewidth = 0.5, inherit.aes = FALSE
  ) +
  geom_text(aes(x = 7.85, y = 5.72, label = "《右翼》科研数据会诊"),
    size = 3.0, fontface = "bold", color = "#7a1a1a",
    family = "sans", inherit.aes = FALSE
  ) +
  geom_text(
    aes(
      x = 7.85, y = 5.15,
      label = "初诊—复诊—伴走—沉淀\n 从“人话问题”到“统计建模”\n 嵌入课题/论文/团队/ "
    ),
    size = 2.65, color = "grey25", family = "sans",
    lineheight = 1.38, inherit.aes = FALSE
  ) +

  # note bar
  geom_rect(aes(xmin = 1.8, xmax = 8.2, ymin = 4.08, ymax = 4.35),
    fill = "#FFF9E6", color = "grey65", linewidth = 0.35, inherit.aes = FALSE
  ) +
  geom_text(
    aes(
      x = 5.0, y = 4.215,
      label = "核心：将科研问题转译为可执行、可解释、可复现的统计模型"
    ),
    size = 2.7, fontface = "italic", color = "grey30",
    family = "sans", inherit.aes = FALSE
  ) +

  # arrow: service -> output
  geom_segment(aes(x = 5.0, xend = 5.0, y = 4.08, yend = 3.48),
    arrow = arrow(length = unit(0.17, "cm"), type = "closed"),
    color = "grey55", linewidth = 0.45, inherit.aes = FALSE
  ) +

  # output layer
  geom_rect(aes(xmin = 0.2, xmax = 9.8, ymin = 2.3, ymax = 3.48),
    fill = "#F5F2FA", color = "grey70", linewidth = 0.4,
    linetype = "dashed", inherit.aes = FALSE
  ) +
  geom_text(aes(x = 0.58, y = 2.89, label = "成效"),
    size = 2.7, color = "grey55", family = "sans", angle = 90, inherit.aes = FALSE
  ) +
  geom_rect(aes(xmin = 0.9, xmax = 3.2, ymin = 2.42, ymax = 3.38),
    fill = c5, color = "grey60", linewidth = 0.45, inherit.aes = FALSE
  ) +
  geom_text(aes(x = 2.05, y = 2.9, label = "能力建设\n 培训 120+ 场"),
    size = 2.9, color = "grey20", family = "sans",
    lineheight = 1.3, inherit.aes = FALSE
  ) +
  geom_rect(aes(xmin = 3.7, xmax = 6.3, ymin = 2.42, ymax = 3.38),
    fill = c5, color = "grey60", linewidth = 0.45, inherit.aes = FALSE
  ) +
  geom_text(aes(x = 5.0, y = 2.9, label = "科研支持\n会诊 30+ 项目 11"),
    size = 2.9, color = "grey20", family = "sans",
    lineheight = 1.3, inherit.aes = FALSE
  ) +
  geom_rect(aes(xmin = 6.8, xmax = 9.1, ymin = 2.42, ymax = 3.38),
    fill = c5, color = "grey60", linewidth = 0.45, inherit.aes = FALSE
  ) +
  geom_text(aes(x = 7.95, y = 2.9, label = "知识资产沉淀\n案例库，代码模板"),
    size = 2.9, color = "grey20", family = "sans",
    lineheight = 1.3, inherit.aes = FALSE
  ) +

  # arrow: output -> goal
  geom_segment(aes(x = 5.0, xend = 5.0, y = 2.42, yend = 1.85),
    arrow = arrow(length = unit(0.17, "cm"), type = "closed"),
    color = "grey55", linewidth = 0.45, inherit.aes = FALSE
  ) +

  # goal layer
  geom_rect(aes(xmin = 1.5, xmax = 8.5, ymin = 1.25, ymax = 1.85),
    fill = "#D4E8D4", color = "#2a7a2a", linewidth = 0.6, inherit.aes = FALSE
  ) +
  geom_text(
    aes(
      x = 5.0, y = 1.55,
      label = "从“帮助研究者找到知识”走向“帮助研究者生产可信知识”"
    ),
    size = 3.8, fontface = "bold", color = "#1a5c1a",
    family = "sans", inherit.aes = FALSE
  ) +

  coord_cartesian(xlim = c(0, 10), ylim = c(0.35, 9.5)) +
  theme_void()
