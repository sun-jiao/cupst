// ----------------------------------------------------------------------
// cupst.typ
// Email: sunjiao19@mails.ucas.ac.cn
//
// Released under the LaTeX Project Public License v1.3c or later
// See http://www.latex-project.org/lppl.txt
// ----------------------------------------------------------------------

#import "@preview/orchid:0.1.0"

// ============================================================
// Multi-language support
// ============================================================

#let lang-data = (
  en: (
    received: "Received",
    revised: "Revised",
    accepted: "Accepted",
    published: "Published",
    editor: "Editor",
    reviewers: "Reviewers",
    abstract: "Abstract",
    keywords: "Keywords",
    corresponding-author: [*\*Corresponding author:*],
    et-al: [~_et al._],
    acknowledgement: "Acknowledgements",
    reproducibility: "Reproducibility statement",
    opendata: "Open data statement",
    funding: "Funding statement",
    credit: "Author contributions",
    appendix: "Appendix",
    appendices: "Appendices",
    the-author-s: "The Author(s)",
    open-access-statement: "This is an Open Access article, distributed under the terms of the Creative Commons Attribution 4.0 International (CC BY 4.0) licence",
    which-permits: "which permits unrestricted re-use, distribution and reproduction, provided the original article is properly cited.",
    cite-article: [*Cite this article:*],
    preprint: "Preprint",
    vol: "Vol.",
    and0: "and",
  ),
  zh: (
    received: "收稿",
    revised: "修订",
    accepted: "接收",
    published: "发表",
    editor: "责任编辑",
    reviewers: "审稿人",
    abstract: "摘要",
    keywords: "关键词",
    corresponding-author: [*\*通讯作者：*],
    et-al: [~等],
    acknowledgement: "致谢",
    reproducibility: "可重复性声明",
    opendata: "开放数据声明",
    funding: "资助声明",
    credit: "作者贡献",
    appendix: "附录",
    appendices: "附录",
    the-author-s: "作者",
    open-access-statement: "这是一篇开放获取文章，根据知识共享署名 4.0 国际 (CC BY 4.0) 许可协议的条款分发",
    which-permits: "允许不受限制地重复使用、分发和复制，前提是原文章被正确引用。",
    cite-article: [*引用本文：*],
    preprint: "预印本",
    vol: "卷",
    and0: "和",
  ),
  fr: (
    received: "Reçu",
    revised: "Révisé",
    accepted: "Accepté",
    published: "Publié",
    editor: "Éditeur",
    reviewers: "Examinateurs",
    abstract: "Résumé",
    keywords: "Mots-clés",
    corresponding-author: [*\*Auteur correspondant :*],
    et-al: [~_et al._],
    acknowledgement: "Remerciements",
    reproducibility: "Déclaration de reproductibilité",
    opendata: "Déclaration de données ouvertes",
    funding: "Déclaration de financement",
    credit: "Contributions des auteurs",
    appendix: "Annexe",
    appendices: "Annexes",
    the-author-s: "L'auteur / Les auteurs",
    open-access-statement: "Ceci est un article en libre accès, distribué selon les termes de la licence Creative Commons Attribution 4.0 International (CC BY 4.0)",
    which-permits: "qui permet une réutilisation, une distribution et une reproduction sans restriction, à condition que l'article original soit correctement cité.",
    cite-article: [*Citer cet article :*],
    preprint: "Prétirage",
    vol: "Vol.",
    and0: "et",
  ),
  de: (
    received: "Eingegangen",
    revised: "Überarbeitet",
    accepted: "Akzeptiert",
    published: "Veröffentlicht",
    editor: "Redakteur",
    reviewers: "Gutachter",
    abstract: "Zusammenfassung",
    keywords: "Schlüsselwörter",
    corresponding-author: [*\*Korrespondierender Autor:*],
    et-al: [~_et al._],
    acknowledgement: "Danksagung",
    reproducibility: "Reproduzierbarkeitserklärung",
    opendata: "Open-Data-Erklärung",
    funding: "Förderungserklärung",
    credit: "Autorenbeiträge",
    appendix: "Anhang",
    appendices: "Anhänge",
    the-author-s: "Der Autor / Die Autoren",
    open-access-statement: "Dies ist ein Open-Access-Artikel, der unter den Bedingungen der Creative Commons Attribution 4.0 International (CC BY 4.0) Lizenz verbreitet wird",
    which-permits: "die uneingeschränkte Weiterverwendung, Verbreitung und Vervielfältigung gestattet, sofern der Originalartikel ordnungsgemäß zitiert wird.",
    cite-article: [*Diesen Artikel zitieren:*],
    preprint: "Vorabdruck",
    vol: "Bd.",
    and0: "und",
  ),
  es: (
    received: "Recibido",
    revised: "Revisado",
    accepted: "Aceptado",
    published: "Publicado",
    editor: "Editor",
    reviewers: "Revisores",
    abstract: "Resumen",
    keywords: "Palabras clave",
    corresponding-author: [*\*Autor de correspondencia:*],
    et-al: [~_et al._],
    acknowledgement: "Agradecimientos",
    reproducibility: "Declaración de reproducibilidad",
    opendata: "Declaración de datos abiertos",
    funding: "Declaración de financiación",
    credit: "Contribuciones de los autores",
    appendix: "Apéndice",
    appendices: "Apéndices",
    the-author-s: "El autor / Los autores",
    open-access-statement: "Este es un artículo de acceso abierto, distribuido bajo los términos de la licencia Creative Commons Attribution 4.0 International (CC BY 4.0)",
    which-permits: "que permite la reutilización, distribución y reproducción sin restricciones, siempre que se cite correctamente el artículo original.",
    cite-article: [*Citar este artículo:*],
    preprint: "Preimpresión",
    vol: "Vol.",
    and0: "y",
  ),
  ja: (
    received: "受領",
    revised: "改訂",
    accepted: "受理",
    published: "出版",
    editor: "編集者",
    reviewers: "査読者",
    abstract: "要旨",
    keywords: "キーワード",
    corresponding-author: [*\*責任著者：*],
    et-al: [~他],
    acknowledgement: "謝辞",
    reproducibility: "再現性声明",
    opendata: "オープンデータ声明",
    funding: "資金提供声明",
    credit: "著者の貢献",
    appendix: "付録",
    appendices: "付録",
    the-author-s: "著者",
    open-access-statement: "これはクリエイティブ・コモンズ 表示 4.0 国際 (CC BY 4.0) ライセンスの条件に従って配布されるオープンアクセス記事です",
    which-permits: "元の記事が適切に引用されている限り、無制限の再利用、配布、複製が許可されます。",
    cite-article: [*この記事を引用：*],
    preprint: "プレプリント",
    vol: "巻",
    and0: "および",
  ),
  ru: (
    received: "Получено",
    revised: "Переработано",
    accepted: "Принято",
    published: "Опубликовано",
    editor: "Редактор",
    reviewers: "Рецензенты",
    abstract: "Аннотация",
    keywords: "Ключевые слова",
    corresponding-author: [*\*Ответственный автор:*],
    et-al: [~_и др._],
    acknowledgement: "Благодарности",
    reproducibility: "Заявление о воспроизводимости",
    opendata: "Заявление об открытых данных",
    funding: "Заявление о финансировании",
    credit: "Вклад авторов",
    appendix: "Приложение",
    appendices: "Приложения",
    the-author-s: "Автор(ы)",
    open-access-statement: "Это статья в открытом доступе, распространяемая на условиях лицензии Creative Commons Attribution 4.0 International (CC BY 4.0)",
    which-permits: "которая разрешает неограниченное повторное использование, распространение и воспроизведение при условии надлежащего цитирования оригинальной статьи.",
    cite-article: [*Цитировать эту статью:*],
    preprint: "Препринт",
    vol: "Т.",
    and0: "и",
  ),
)

#let lang-state = state("cupst-lang", "en")

// ============================================================
// Main document template
// ============================================================

#let cupst(
  // Metadata
  title: none,
  short-title: none,
  authors: (),
  affiliations: (),
  abstract: none,
  keywords: (),
  structure-color: rgb(0, 0, 0),
  link-color: rgb(0, 0, 255),
  
  // Article metadata
  manuscript: "article", // article, rescience, data, software, editorial, proceedings, poster
  layout: "preprint", // preprint, publish
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
  
  // Multi-language
  lang: "en",
  
  // Content
  body
) = {
  // ============================================================
  // Language setup
  // ============================================================
  
  let current-lang = lang
  if lang not in lang-data {
    // Fallback to English and log error visually
    block[
      #set text(fill: red)
      *ERROR: Unsupported language '#lang', falling back to English.*
    ]
    current-lang = "en"
  }
  lang-state.update(current-lang)
  let dict = lang-data.at(current-lang)
  let tr(key) = dict.at(key)

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
            if authors.len() > 1 [ #tr("et-al") ]
          }
          h(1fr)
        }
      } else {
        // Journal name and DOI
        set text(size: 8pt)
        block[
          #text(style: "italic")[#journal]
          #if layout == "publish" and year != none and volume != none [
            (#year), #tr("vol")#text(weight: "semibold")[#volume]
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
    lang: current-lang,
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

  show <paragraph-title>: set text(
    fill: structure-color, 
    font: sans-fonts,
    weight: "semibold"
  )
  
  // ============================================================
  // Link and reference styling
  // ============================================================  
  show link: it => text(fill: link-color)[#underline(it)]
  show ref: it => text(fill: link-color)[#it]
  show cite: set text(fill: link-color)
  
  // ============================================================
  // Cambridge-core-like footnote
  // ============================================================
  show footnote.entry: it => {
    let loc = it.note.location()
    let number = numbering("1", ..counter(footnote).at(loc))
    [
      #text(
        fill: structure-color, 
        font: sans-fonts, 
        weight: "semibold"
      )[#number.]
      #it.note.body
    ]
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
          (_#tr("preprint")_)
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
      
      // Join authors with commas and translated "and"
      #if author-parts.len() == 1 {
        author-parts.first()
      } else if author-parts.len() == 2 {
        [#author-parts.at(0) #tr("and0") #author-parts.at(1)]
      } else {
        for (i, part) in author-parts.enumerate() {
          if i == author-parts.len() - 1 {
            [, #tr("and0") #part]
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
          #tr("corresponding-author") #corresponding.map(a => {
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
        (#tr("received"): #received\; #tr("revised"): #revised\; #tr("accepted"): #accepted\; #tr("published"): #published) \
        (#tr("editor"): #editor\; #tr("reviewers"): #reviewers)
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
              © #tr("the-author-s"), #year.
              #tr("open-access-statement")
              (#link("https://creativecommons.org/licenses/by/4.0/")), 
              #tr("which-permits")
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
      )[#tr("abstract")]
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
      *#tr("keywords"):* #keywords.join(", ")
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
        
        #tr("cite-article") #{
          if authors.len() > 0 {
            authors.at(0).name
            if authors.len() > 1 [ #tr("et-al") ]
          }
        } (#year). #title. #emph(journal) *#volume*, #link("https://doi.org/" + doi)
      ]
    )
  }
}

// ============================================================
// Paragraph 
// ============================================================
#let paragraph(title, body) = {
  place(hide(heading(level: 1, numbering: none)[#title]))
  set par(first-line-indent: 0pt)
  v(1em)
  [#title<paragraph-title>] 
  " "
  body
}

// ============================================================
// Special sections (unnumbered)
// ============================================================

#let acknowledgement(body) = context {
  let dict = lang-data.at(lang-state.get(), default: lang-data.en)
  paragraph(dict.acknowledgement)[#body]
}

#let reproduce(body) = context {
  let dict = lang-data.at(lang-state.get(), default: lang-data.en)
  paragraph(dict.reproducibility)[#body]
}

#let opendata(body) = context {
  let dict = lang-data.at(lang-state.get(), default: lang-data.en)
  paragraph(dict.opendata)[#body]
}

#let funding(body) = context {
  let dict = lang-data.at(lang-state.get(), default: lang-data.en)
  paragraph(dict.funding)[#body]
}

#let credit(body) = context {
  let dict = lang-data.at(lang-state.get(), default: lang-data.en)
  paragraph(dict.credit)[#body]
}

// ============================================================
// citation
// ============================================================

#let posscite(..labels) = {
    show regex("\s\("): [#{sym.quote.single.r}s (]
    let args = labels.pos()
    args.map(l => {
      cite(l, form: "prose")
    }).join(", ", last: " & ")
}

#let textcite(..labels) = {
    let args = labels.pos()
    args.map(l => {
      cite(l, form: "prose")
    }).join(", ", last: " & ")
}

#let plaincite(..labels) = {
    show regex("[\(\)]"): ""
    let args = labels.pos()
    args.map(l => {
      cite(l, form: "prose")
    }).join(", ", last: " & ")
}


#let appendix(body) = context {
  let dict = lang-data.at(lang-state.get(), default: lang-data.en)
  
  set heading(numbering: (..nums) => {
    let parts = nums.pos()
    let first = numbering("A.", parts.at(0))

    if parts.len() == 1 {
      return first
    }
    
    let rest = parts.slice(1).map(n => numbering("1.", n))
    return first + " " + rest.join(" ")
  }, supplement: dict.appendix)

  heading(dict.appendices, numbering: none)

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