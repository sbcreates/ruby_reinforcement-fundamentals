project = {
  committee: ["Stella", "Salma", "Kai"],
  title: "Very Important Project",
  due_date: "December 1, 2019",
  id: "3284",
  steps: [
    {description: "conduct interviews",
     due_date: "August 1, 2018"
    },
    {description: "code of conduct",
     due_date: "January 1, 2018"
    },
    {description: "compile results",
     due_date: "November 10, 2018"
    },
    {description: "version 1",
     due_date: "January 15, 2019"
    },
    {description: "revisions",
     due_date: "March 30, 2019"
    },
    {description: "version 2",
     due_date: "July 12, 2019"
    },
    {description: "final edit",
     due_date: "October 1, 2019"
    },
    {description: "final version",
     due_date: "November 20, 2019"
    }
  ]
}

project[:steps][0][:person] = "Stella"
p project[:steps][0]
p "*==========*"
project[:steps][1][:person] = "Salma"
p project[:steps][1]
p "*==========*"
project[:steps][2][:person] = "Kai"
p project[:steps][2]
p "*==========*"
project[:steps][3][:person] = "Stella"
p project[:steps][3]
p "*==========*"
project[:steps][4][:person] = "Salma"
p project[:steps][4]
p "*==========*"
project[:steps][5][:person] = "Kai"
p project[:steps][5]
p "*==========*"
project[:steps][6][:person] = "Stella"
p project[:steps][6]
p "*==========*"
project[:steps][7][:person] = "Kai", "Salma"
p project[:steps][7]
p "*==========*"
p project[:steps]
