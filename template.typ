// Font Settings, change it if you need
#let song = "FZShuSong-Z01"
#let hei = "FZHei-B01"
#let kai = "FZKai-Z03"
#let xbsong = "FZXiaoBiaoSong-B05"
#let code = "Monaspace Neon Var"

#let report(
  title: "本科生实习报告书",
  banner: none + "",
  school: "摸鱼学院摸鱼专业",
  grade: "xxxx 级 x 班",
  name: "张三",
  stu_id: "22223333",
  company: "某某公司",
  start_time: "2077 年 7 月 1 日",
  end_time: "2077 年 8 月 31 日",
  teacher: "李四",
  year: "2077",
  month: "12",
  day: "25",
  body,
) = {
  // set document(title: title)
  set page(paper: "a4")

  show raw.where(block: true): block.with(
    fill: rgb(248, 248, 248),
    inset: (x: 1.25em, y: 1em),
    width: 100%,
    radius: 4pt,
  )

  show raw.where(block: true): par.with(first-line-indent: 0em, justify: true, leading: 8pt)

  show raw.where(block: false): box.with(
    fill: rgb(248, 248, 248),
    inset: (x: 5pt, y: 0pt),
    outset: (y: 4pt),
    radius: 3pt,
  )

  show raw: text.with(font: code, size: 1em)

  show heading: it => [
    // Cancel indentation for headings of level 2 or above
    #set par(first-line-indent: 0em)

    #let sized_heading(it, size, weight, mt, mb) = [
      #set text(size, weight: weight)
      #v(mt)
      #if it.numbering != none {
        counter(heading).display()
        h(0.1em)
      }
      #text(size, weight: weight, it.body)
      #v(mb)
    ]

    #if it.level == 1 {
      sized_heading(it, 20pt, "semibold", 1em, 0.3em)
    } else if it.level == 2 {
      sized_heading(it, 16pt, "semibold", 0.7em, 0.2em)
    } else if it.level == 3 {
      sized_heading(it, 14pt, "medium", 0.5em, 0.2em)
    } else {
      sized_heading(it, 12pt, "medium", 0.3em, 0.1em)
    }
  ]

  show link: underline

  let fieldname(name, font) = [
    #set align(right + top)
    #text(name, font: font)
    #h(0.25em)
  ]

  let fieldvalue(value, font) = [
    #set align(center + horizon)
    #set text(font: font)
    #grid(
      rows: (auto, auto),
      row-gutter: 0.2em,
      value,
      line(length: 100%)
    )
  ]

  align(center)[
    \
    \
    #if banner != none {
      image(banner, width: 64%)
    }
    \
    \
    \
    #set text(font: xbsong, lang: "zh", size: 25pt)
    #title
    \
    \
    \
    \
    #set text(font: xbsong, lang: "zh", size: 16pt)
    #grid(
      columns: (80pt, 280pt),
      row-gutter: 1em,
      fieldname("院系专业", song),
      fieldvalue(school, song),
      fieldname("年级班级", song),
      fieldvalue(grade, song),
      fieldname(text("姓") + h(2em) + text("名"), song),
      fieldvalue(name, song),
      fieldname(text("学") + h(2em) + text("号"), song),
      fieldvalue(stu_id, song),
      fieldname("实习单位", song),
      fieldvalue(company, song),
      fieldname("实习时间", song),
      fieldvalue(start_time + "至" + end_time, song),
      fieldname("指导教师", song),
      fieldvalue(teacher, song),
    )

    #set text(font: xbsong, lang: "zh", size: 12pt)

    #v(140pt)

    #text(year)年 #h(2em) #(month)月 #h(2em) #(day)日 
  ]

  body
}

#let personal_report(body) = {
  pagebreak(weak: true)
  table(
  columns: (2fr, 19fr),
  [
    #set align(center + horizon)
    #set text(font: xbsong, lang: "zh", size: 16pt)
    实习\
    报告
  ],
  [
    #set text(font: song, lang: "zh", size: 11pt)
    #body
  ]
)
}

#let judging_report(body) = {
  pagebreak(weak: true)
  table(
  columns: (2fr, 19fr),
  [
    #set align(center + horizon)
    #set text(font: xbsong, lang: "zh", size: 16pt)
    实习\
    单位\
    意见
  ],
  [
    #set text(font: song, lang: "zh", size: 14pt)
    
    #v(250pt)
    #align(right)[
      （盖章） #h(5em)

      #h(2em)
      年
      #h(2em)
      月
      #h(2em)
      日
    ]
    #v(15pt)
  ],
  [
    #set align(center + horizon)
    #set text(font: xbsong, lang: "zh", size: 16pt)
    指导\
    老师\
    评语
  ],
  [
    #set text(font: song, lang: "zh", size: 14pt)
    
    #v(100pt)
    #align(right)[
      成绩评定： #h(70pt)
      
      \

      指导老师（签名）： #h(5em)
      \

      #h(2em)
      年
      #h(2em)
      月
      #h(2em)
      日
    ]
    #v(15pt)
  ],
  [
    #set align(center + horizon)
    #set text(font: xbsong, lang: "zh", size: 16pt)
    院系\
    意见
  ],
  [
    #set text(font: song, lang: "zh", size: 14pt)
    
    #v(100pt)
    #align(right)[
      主管教学领导签名（盖章）： #h(5em)
      \

      #h(2em)
      年
      #h(2em)
      月
      #h(2em)
      日
    ]
    #v(15pt)
  ],
)
}