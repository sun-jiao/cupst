// ----------------------------------------------------------------------
// cupst.typ
// Email: sunjiao19@mails.ucas.ac.cn
//
// Released under the LaTeX Project Public License v1.3c or later
// See http://www.latex-project.org/lppl.txt
// ----------------------------------------------------------------------

#import "@preview/orchid:0.1.0"

// ============================================================
// Main document template
// ============================================================
#let DEFAULT_COLOR = rgb(0, 0, 0) // default color 
#let structure-color-state = state("structure_color", DEFAULT_COLOR)

#let LINK_COLOR = rgb(0, 0, 255)
#let link-color-state = state("link_color", LINK_COLOR)

#let SERIF_FONTS = ("Linux Libertine", "Libertinus Serif", "Times New Roman")
#let serif-fonts-state = state("serif_fonts", SERIF_FONTS)

#let SANS_FONTS = ("Source Sans Pro", "Source Sans 3", "Arial")
#let sans-fonts-state = state("sans_fonts", SANS_FONTS)

#let cupst(
  // Metadata
  title: none,
  short-title: none,
  authors: (),
  affiliations: (),
  abstract: none,
  keywords: (),
  structure-color: DEFAULT_COLOR,
  link-color: LINK_COLOR,
  
  // Article metadata
  manuscript: "article", // article, rescience, data, software, editorial, proceedings, poster
  layout: "preprint",    // preprint, publish
  journal: "PREPRINT",
  year: datetime.today().year(),
  volume: none,
  doi: none,
  conference: none,
  
  // Dates
  received: none,
  revised: none,
  accepted: none,
  published: none,
  editor: none,
  reviewers: none,
  
  // Options
  show-dates: true,
  show-copyright: true,
  show-keywords: true,
  show-email: true,
  show-line-numbers: true,
  section-numbering: true,

  serif-fonts: ("Linux Libertine", "Libertinus Serif", "Times New Roman"),
  sans-fonts: ("Source Sans Pro", "Source Sans 3", "Arial"),
  
  // Content
  body
) = {
  structure-color-state.update(structure-color)
  link-color-state.update(link-color)
  serif-fonts-state.update(serif-fonts)
  sans-fonts-state.update(sans-fonts)

  // ============================================================
  // Page setup
  // ============================================================
  
  set page(
    width: 6in,
    height: 9in,
    margin: (
      top: 2.4cm,
      rest: 1.6cm,
    ),
    header: context {
      let page-num = counter(page).get().first()
      if page-num > 1 {
        set text(size: 9pt)
        if calc.odd(page-num) {
          h(1fr)
          text(style: "italic")[#journal]
          h(1em)
          text(size: 10pt)[#page-num]
        } else {
          text(size: 10pt)[#page-num]
          h(1em)
          if authors.len() > 0 {
            authors.at(0).name
            if authors.len() > 1 [~_et al._]
          }
          h(1fr)
        }
      } else {
        // Journal name and DOI
        set text(size: 8pt)
        block[
          #text(style: "italic")[#journal]
          #if layout == "publish" and year != none and volume != none [
            (#year), Vol.#text(weight: "semibold")[#volume]
          ]
          #linebreak()
          #if layout == "publish" and doi != none [
            doi: #link("https://doi.org/" + doi)[#doi]
          ] else [
            ~
          ]
        ]
      }
    },
  )
  
  // ============================================================
  // Text and paragraph settings
  // ============================================================
  
  set text(
    font: serif-fonts,
    size: 10pt,
    lang: "en",
    hyphenate: false,
  )
  
  set par(
    justify: true,
    first-line-indent: 1em,
    spacing: 0.65em,
  )
  
  // ============================================================
  // Heading styles
  // ============================================================
  
  let heading-numbering = if section-numbering { "1." } else { none }
  set heading(numbering: heading-numbering)
  
  show heading: it => {
    set par(first-line-indent: 0pt)
    v(8pt, weak: true)
    text(
      font: sans-fonts,
      weight: "semibold",
      size: 10pt,
      fill: structure-color,
    )[
        #if it.numbering != none {
          counter(heading).display(it.numbering)
          h(0.5em)
        }
        #it.body
      ]
    h(1em)
  }
  
  show heading.where(level: 1): it => {
    set par(first-line-indent: 0pt)
    v(12pt, weak: true)
    block(
      text(
        font: sans-fonts,
        weight: "semibold",
        size: 12pt,
        fill: structure-color,
      )[
        #if it.numbering != none {
          counter(heading).display(it.numbering)
          h(0.5em)
        }
        #it.body
      ]
    )
    v(8pt, weak: true)
  }
  
  show heading.where(level: 2): it => {
    set par(first-line-indent: 0pt)
    v(10pt, weak: true)
    block(
      text(
        font: sans-fonts,
        weight: "semibold",
        size: 10pt,
        fill: structure-color,
      )[
        #if it.numbering != none {
          counter(heading).display(it.numbering)
          h(0.5em)
        }
        #it.body
      ]
    )
    v(7pt, weak: true)
  }
  
  show heading.where(level: 3): it => {
    set par(first-line-indent: 0pt)
    v(8pt, weak: true)
    block(
      text(
        font: sans-fonts,
        weight: "semibold",
        size: 10pt,
        fill: structure-color,
      )[
        #if it.numbering != none {
          counter(heading).display(it.numbering)
          h(0.5em)
        }
        #it.body
      ]
    )
    v(6pt, weak: true)
  }
  
  // ============================================================
  // Link and reference styling
  // ============================================================  
  show link: it => text(fill: link-color)[#underline(it)]
  show ref: it => text(fill: link-color)[#it]
  
  // ============================================================
  // Cambridge-core-like footnote
  // ============================================================
  show footnote.entry: it => {
      let loc = it.note.location()
      let number = numbering("1", ..counter(footnote).at(loc))
      grid(
        columns: (auto, 1fr),
        gutter: 0.5em,
        text(
          fill: structure-color,
          font: sans-fonts,
          weight: "semibold"
        )[#number.],
        it.note.body
      )
  }
  
  // ============================================================
  // Figure and table styling
  // ============================================================
  
  set figure(placement: auto)
  set figure.caption(separator: [. ])
  
  show figure.caption: it => {
    set text(size: 9pt)
    text(
      font: sans-fonts,
    )[
      #text(weight: "semibold", fill: structure-color)[#it.supplement #context it.counter.display(it.numbering)]#it.separator#it.body
    ]
  }
  
  show figure.where(kind: table): set figure.caption(position: top)
  
  // ============================================================
  // List styling
  // ============================================================
  
  set list(indent: 1em, spacing: 0.5em, marker: [•])
  set enum(indent: 1em, spacing: 0.5em)
  
  // ============================================================
  // Helper functions
  // ============================================================
  
  // Get affiliation indices for an author
  let get-author-affil-indices(author) = {
    let indices = ()
    if "affiliation" in author {
      let affils = if type(author.affiliation) == array { 
        author.affiliation 
      } else { 
        (author.affiliation,) 
      }
      for affil in affils {
        let idx = affiliations.position(a => a.id == affil)
        if idx != none {
          indices.push(idx + 1)
        }
      }
    }
    indices
  }
  
  // Check if author is corresponding
  let is-corresponding(author) = {
    "email" in author and author.email != none
  }
  
  // ============================================================
  // Title page content
  // ============================================================
  
  {
    set par(first-line-indent: 0pt)
    
    // Manuscript type badge
    block[
      #text(
        font: sans-fonts,
        weight: "semibold",
        tracking: 1.5pt,
        fill: structure-color,
      )[
        #upper(manuscript.replace("-", " "))
      ] 
      #if layout == "preprint" [
        #text(
          font: sans-fonts,
          weight: "semibold",
          fill: structure-color,
        )[
          (_Preprint_)
        ]
      ]
    ]
    
    v(1em)
    
    // Title
    block[
      #text(
        font: sans-fonts,
        weight: "semibold",
        size: 14pt,
        fill: structure-color,
      )[#title]
    ]
    
    v(1em)
    
    // Authors
    block[
      #let author-parts = authors.enumerate().map(((i, author)) => {
        let indices = get-author-affil-indices(author)
        
        // Build superscript markers
        let markers = ()
        
        // Email marker
        if is-corresponding(author) {
          markers.push("*")
        }
        
        // Affiliation markers (only if multiple affiliations)
        if affiliations.len() > 1 and indices.len() > 0 {
          markers += indices.map(str)
        }
        
        let marker-text = if markers.len() > 0 {
          super(markers.join(","))
        } else { none }
        
        // ORCID
        let orcid = if "orcid" in author and author.orcid != none {
          h(2pt)
          orchid.generate-link(author.orcid)
        }
        
        [#author.name#marker-text#orcid]
      })
      
      // Join authors with commas and "and"
      #if author-parts.len() == 1 {
        author-parts.first()
      } else if author-parts.len() == 2 {
        [#author-parts.at(0) and #author-parts.at(1)]
      } else {
        for (i, part) in author-parts.enumerate() {
          if i == author-parts.len() - 1 {
            [, and #part]
          } else if i == 0 {
            part
          } else {
            [, #part]
          }
        }
      }
    ]
    
    v(0.7em)
    
    // Affiliations
    block[
      #set text(size: 9pt)
      #for (i, affil) in affiliations.enumerate() {
        if affiliations.len() > 1 {
          super[#(i + 1)]
        }
        affil.name
        linebreak()
      }
    ]
    
    v(0.5em)
    
    // Corresponding author email
    if show-email {
      let corresponding = authors.filter(is-corresponding)
      if corresponding.len() > 0 {
        block[
          #set text(size: 9pt)
          *\*Corresponding author:* #corresponding.map(a => {
            link("mailto:" + a.email)[#a.email]
          }).join("; ")
        ]
        v(0.5em)
      }
    }
    
    // Publication dates
    if layout == "publish" and show-dates {
      block[
        #set text(size: 9pt)
        (Received: #received\; Revised: #revised\; Accepted: #accepted\; Published: #published) \
        (Editor: #editor\; Reviewers: #reviewers)
      ]
      v(0.5em)
    }
  
    // Copyright notice
    if layout == "publish" and show-copyright {
      place(
        bottom + left,
        float: true,
        clearance: 1em,
        block(width: 100%, inset: (top: 0.5em))[
              #set text(size: 7pt)
              © The Author(s), #year.
              This is an Open Access article, distributed under the terms of the
              Creative Commons Attribution 4.0 International (CC BY 4.0) licence
              (#link("https://creativecommons.org/licenses/by/4.0/")), 
              which permits unrestricted re-use, distribution and
              reproduction, provided the original article is properly cited.
        ]
      )
    }
  }
  
  // ============================================================
  // Abstract
  // ============================================================
  
  if abstract != none {
    block(
      fill: structure-color.lighten(90%),
      inset: (x: 10pt, top: 8pt, bottom: 10pt),
      width: 100%,
      radius: 0pt,
    )[
      #set par(first-line-indent: 0pt)
      #text(
        font: sans-fonts,
        weight: "semibold",
        size: 10pt
      )[Abstract]
      #v(3pt)
      #text(size: 9pt)[#abstract]
    ]
    v(0.5em)
  }
  
  // Keywords
  if show-keywords and keywords.len() > 0 {
    block[
      #set par(first-line-indent: 0pt)
      #set text(size: 9pt)
      *Keywords:* #keywords.join(", ")
    ]
    v(0.3em)
  }
  
  // ============================================================
  // Line numbers for preprint
  // ============================================================
  
  if layout == "preprint" and show-line-numbers {
    set par.line(numbering: "1", numbering-scope: "page")
    body
  } else {
    body
  }

  if layout == "publish" and show-copyright {
    place(
      bottom + left,
      float: true,
      clearance: 1em,
      block(width: 100%, inset: (top: 0.5em))[
        #line(length: 30%, stroke: 0.5pt)
        
        #set text(size: 7pt)
        #set align(left)
        
        *Cite this article:* #{
          if authors.len() > 0 {
            authors.at(0).name
            if authors.len() > 1 [~_et al._]
          }
        } (#year). #title. #emph(journal) *#volume*, #link("https://doi.org/" + doi)
      ]
    )
  }
}

// ============================================================
// Paragraph 
// ============================================================

#let paragraph(title, body) = context {
  let current-color = structure-color-state.get()
  place(hide(heading(level: 1, numbering: none)[#title]))
  set par(first-line-indent: 0pt)
  v(1em)
  text(
    weight: "semibold",
    font: serif-fonts-state.get(),
    fill: structure-color-state.get()
  )[#title]
  " "
  body
}

// ============================================================
// Special sections (unnumbered)
// ============================================================

#let acknowledgement(body) = paragraph("Acknowledgement")[#body]

#let reproduce(body) = paragraph("Reproducibility statement")[#body]

#let opendata(body) = paragraph("Open data statement")[#body]

#let funding(body) = paragraph("Funding statement")[#body]

#let credit(body) = paragraph("Author contributions")[#body]

// ============================================================
// citation
// ============================================================

#let posscite(..labels) = context {
    show regex("\s\("): [#{sym.quote.single.r}s (]
    let args = labels.pos()
    args.map(l => {
      set text(fill: link-color-state.get())
      cite(l, form: "prose")
    }).join(", ", last: " and ")
}

#let textcite(..labels) = context {
    let args = labels.pos()
    args.map(l => {
      set text(fill: link-color-state.get())
      cite(l, form: "prose")
    }).join(", ", last: " and ")
}

#let plaincite(..labels) = context {
    show regex("[\(\)]"): ""
    let args = labels.pos()
    args.map(l => {
      set text(fill: link-color-state.get())
      cite(l, form: "prose")
    }).join(", ", last: " and ")
}


#let appendix(body) = {
  set heading(numbering: (..nums) => {
    let parts = nums.pos()
    let first = numbering("A.", parts.at(0))
    
    let rest = parts.slice(1).map(n => numbering("1.", n))
    return first + " " + rest.join(" ")
  }, supplement: [Appendix])

  counter(heading).update(0)
  body
}

// ============================================================
// Base on the joas class
//
// Support for submissions to Journal of Open Aviation Science
// Email: j.sun-1@tudelft.nl
// Released under the LaTeX Project Public License v1.3c or later
// See http://www.latex-project.org/lppl.txt
//
// Based on the cup-jounal class
//
// Support for submissions to Cambridge University Press journals
// Email: paul.gessler@overleaf.com
// Released under the LaTeX Project Public License v1.3c or later
// See http://www.latex-project.org/lppl.txt
// 
// Based on the achemso class
// Originally developed by Mats Dahlgren
// Copyright (C) 1996-1998 by Mats Dahlgren
// Copyright (C) 2008-2018 by Joseph Wright <joseph.wright@morningstar2.co.uk>
// Copyright (C) 2019 by Overleaf (WriteLaTeX Limited)
// 
// Part of this bundle is derived from cite.sty, to which the
// following license applies:
//   Copyright (C) 1989-2009 by Donald Arseneau
//   These macros may be freely transmitted, reproduced, or
//   modified provided that this notice is left intact.
// 
// It may be distributed and/or modified under the conditions of
// the LaTeX Project Public License (LPPL), either version 1.3c of
// this license or (at your option) any later version.  The latest
// version of this license is in the file:
// 
//    http://www.latex-project.org/lppl.txt
// 
// This work is "maintained" (as per LPPL maintenance status) by
//   Jiao Sun.
// 
// This work consists of the file cupst.typ.
// 
//
// End of file 'cupst.typ'.