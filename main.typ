#import "cupst.typ": *
#import "@preview/tablex:0.0.9": tablex

#show: cupst.with(
  title: [Lorem ipsum dolor sit amet, consectetur adipiscing elit],
  short-title: [Lorem ipsum],
  
  authors: (
    (
      name: "Joanna Thorne",
      affiliation: "affi1",
      email: "j.thorne@lorem.ac.uk",
      orcid: "0000-0001-2345-6789",
    ),
    (
      name: "Jane Doe",
      affiliation: ("affi1", "affi2"),
      orcid: "0000-0002-3456-7890",
    ),
    (
      name: "Alice Smith",
      affiliation: "affi2",
    ),
  ),
  affiliations: (
    (id: "affi1", name: "Faculty of Lorem Ipsum, Lorem University of Ipsum, United Kingdom"),
    (id: "affi2", name: "Department of Lorem, Ipsum Institute of Lorem, United States of America"),
  ),
  
  abstract: [
    #lorem(75)

    #lorem(40)
  ],
  
  keywords: ("lorem", "ipsum", "dolor", "sit amet", "consectetur"),
  
  // Article settings
  manuscript: "article",  // article, rescience, data, software, editorial, proceedings, poster
  layout: "publish",     // preprint, publish
  journal: "Journal Name",
  year: 2026,
  volume: 2,
  doi: "10.1000/abcd.2026.xxxx",
  
  // For published articles
  received: "January 15, 2024",
  revised: "March 20, 2024",
  accepted: "April 5, 2024",
  published: "April 30, 2024",
  editor: "Dr. Editor Name",
  reviewers: "Anonymous",
  
  // Display options
  show-line-numbers: true,
  section-numbering: true,
  structure-color: rgb(33, 63, 144),
)

= Introduction

#lorem(40)@He2016ResNet

#lorem(13)
- #lorem(9)
- #lorem(7)
- #lorem(11)
- #lorem(10)

== Background

#textcite(<Selvaraju2020Grad>) #lorem(40)#footnote[This is a footnote.]

=== Data Sources

#posscite(<Huerta2016ETE>)  #lorem(40)

= Methodology

#lorem(10)

== Data Processing

We process the raw ADS-B data using the following pipeline #plaincite(<Selvaraju2020Grad>)...@tab:params

#figure(
  placement: auto,
  tablex(
    columns: 3,
    auto-vlines: false,
    [*Parameter*], [*Value*], [*Unit*],
    [Sampling Rate], [1], [Hz],
    [Coverage], [Global], [—],
    [Accuracy], [±10], [m],
  ),
  caption: [Data acquisition parameters],
) <tab:params>

== Model Architecture

The model architecture is illustrated in @fig:model.

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

= Results

#lorem(10) @Selvaraju2020Grad
1. #lorem(9)
2. #lorem(7)
3. #lorem(11)
4. #lorem(10) (@tab:results).

#figure(
  placement: auto,
  tablex(
    columns: 4,
    auto-vlines: false,
    [*Method*], [*Precision*], [*Recall*], [*F1-Score*],
    [Baseline], [0.75], [0.72], [0.73],
    [Proposed], [0.89], [0.87], [0.88],
    [Ablation], [0.82], [0.80], [0.81],
  ),
  caption: [Comparison of prediction performance],
) <tab:results>

= Discussion

#lorem(40)

= Conclusion

#lorem(40)

#acknowledgement[
  The authors thank the anonymous reviewers for their valuable feedback.
  This work was supported by the Lorem Ipsum 2020 programme.
]

#funding[
  This research was funded by Grant No. 123456 from the National Science Foundation.
]

#credit[
*Joanna Thorne:* Conceptualization, Methodology, Writing – original draft.  
*Jane Doe:* Data curation, Software, Validation. 
*Alice Smith:* Investigation, Writing – review & editing.
]

#opendata[
  All data and code used in this study are available at 
  #link("https://github.com/example/repo")[https://github.com/example/repo].
]

#bibliography("references.bib", style: "apa")
