#import "cupst.typ": *
#import "@preview/tablex:0.0.9": tablex

#let zh-lorem(words) = {
  let text-base = "滚滚长江东逝水，浪花淘尽英雄。是非成败转头空。青山依旧在，几度夕阳红。白发渔樵江渚上，惯看秋月春风。一壶浊酒喜相逢。古今多少事，都付笑谈中。"
  let result = ""
  while result.len() < words * 3 {
    result += text-base
  }
  let end-idx = calc.min(words * 3, result.len())
  result.slice(0, words * 3)
}

#show: cupst.with(
  title: [滚滚长江东逝水，浪花淘尽英雄。是非成败转头空。青山依旧在，几度夕阳红。],
  short-title: [滚滚长江东逝水],
  
  authors: (
    (
      name: "孙娇",
      affiliation: "affi1",
      email: "j.sun@lorem.ac.uk",
      orcid: "0000-0001-2345-6789",
    ),
    (
      name: "孙娇娇",
      affiliation: ("affi1", "affi2"),
      orcid: "0000-0002-3456-7890",
    ),
    (
      name: "孙骄",
      affiliation: "affi2",
    ),
  ),
  affiliations: (
    (id: "affi1", name: "滚滚学院，长江大学，浪花市，英雄省，中华人民共和国"),
    (id: "affi2", name: "是非系，成败研究所，青山市，夕阳省，中华人民共和国"),
  ),
  
  abstract: [
    #zh-lorem(75)

    #zh-lorem(40)
  ],
  
  keywords: ("滚滚", "长江", "都是水", "浪花", "淘尽", "英雄"),
  
  // Article settings
  manuscript: "研究论文",  // article, rescience, data, software, editorial, proceedings, poster
  layout: "publish",     // preprint, publish
  journal: "临江研究杂志",
  year: 2026,
  volume: 2,
  doi: "10.1000/abcd.2026.xxxx",
  
  // For published articles
  received: "2024年1月15日",
  revised: "2024年3月20日",
  accepted: "2024年4月5日",
  published: "2024年4月30日",
  editor: "杨慎",
  reviewers: "匿名",
  
  // Display options
  show-line-numbers: true,
  section-numbering: true,
  structure-color: rgb(33, 63, 144),
  lang: "zh",

  serif-fonts: ("Linux Libertine", "Libertinus Serif", "Times New Roman", "Noto Serif CJK SC"),
  sans-fonts: ("Source Sans Pro", "Source Sans 3", "Arial", "Noto Sans CJK SC"),
)

= 引言

#zh-lorem(40)@He2016ResNet

#zh-lorem(13)
- #zh-lorem(9)
- #zh-lorem(7)
- #zh-lorem(11)
- #zh-lorem(10)

== 背景

#textcite(<Selvaraju2020Grad>) #zh-lorem(40)#footnote[This is a footnote.]

=== 数据

#posscite(<Huerta2016ETE>)  #zh-lorem(40)

= 方法

#zh-lorem(10)

== 数据处理

我们使用以下管道处理原始ADS-B数据 #plaincite(<Selvaraju2020Grad>)...@tab:params

#figure(
  placement: auto,
  tablex(
    columns: 3,
    auto-vlines: false,
    [*参数*], [*值*], [*单位*],
    [采样率], [1], [Hz],
    [覆盖率], [Global], [—],
    [准确率], [±10], [m],
  ),
  caption: [数据采集参数],
) <tab:params>

== 模型架构

模型架构如 @fig:model 所示。

$ A = pi r^2 $
$ "area" = pi dot "radius"^2 $
$ cal(A) :=
    { x in RR | x "is natural" } $
#let x = 5
$ #x < 17 $

#figure(
  placement: auto,
  rect(width: 50%, height: 3cm, fill: luma(230))[
    #align(center + horizon)[_Model diagram placeholder_]
  ],
  caption: [Proposed model architecture],
) <fig:model>

= 结果

#zh-lorem(10) @Selvaraju2020Grad
1. #zh-lorem(9)
2. #zh-lorem(7)
3. #zh-lorem(11)
4. #zh-lorem(10) (@tab:results).

#figure(
  placement: auto,
  tablex(
    columns: 4,
    auto-vlines: false,
    [*方法*], [*精确率*], [*召回率*], [*F1分数*],
    [基线], [0.75], [0.72], [0.73],
    [本模型], [0.89], [0.87], [0.88],
    [消融实验], [0.82], [0.80], [0.81],
  ),
  caption: [预测性能比较],
) <tab:results>

= 讨论

#zh-lorem(40)

= 结论

#zh-lorem(40)

#acknowledgement[
  我们感谢所有参与本研究的同事和机构的支持与帮助。
]

#funding[
  本研究得到了长江自然科学基金（项目编号：123456）的资助。
]

#credit[
*孙娇*： 概念化，方法学，软件，验证，数据分析，写作-原稿准备。
*孙娇娇*： 数据收集，实验设计，结果分析，写作-审阅与编辑。
*孙骄*： 监督，项目管理，资金获取。
]

#opendata[
  本研究使用的数据集和代码已开放在如下GitHub仓库：
  #link("https://github.com/example/repo")[https://github.com/example/repo].
]

#bibliography("references.bib", style: "apa")
