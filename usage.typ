#import "template.typ": *

#show: report.with(
  title: "本科生实习报告书",
  banner: "banner.png",
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
)

#personal_report[
  // Add your content here
  1. 实习目的与任务

  2. 实习步骤与内容
  
  3. 实习心得与体会

  #lorem(2500)
]

#judging_report[]
