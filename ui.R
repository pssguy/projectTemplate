

dashboardPage(
  skin = "yellow",
  title = "My New Project",
  dashboardHeader(title = "My New Project"),
  
  dashboardSidebar(
    includeCSS("custom.css"),
    
    
    sidebarMenu(
      menuItem(
        "Item One",
        menuSubItem("Example", tabName = "example", selected = TRUE)
      ),
      
      
      menuItem("Info", tabName = "info", icon = icon("info")),
      
      menuItem("Code", icon = icon("code-fork"),
               href = "https://github.com/pssguy/projectTemplate"),
      
      tags$hr(),
      menuItem(
        text = "",
        href = "https://mytinyshinys.shinyapps.io/dashboard",
        badgeLabel = "All Dashboards and Trelliscopes (14)"
      ),
      tags$hr(),
      
      tags$body(
        a(
          class = "addpad",
          href = "https://twitter.com/pssGuy",
          target = "_blank",
          img(src = "images/twitterImage25pc.jpg")
        ),
        a(
          class = "addpad2",
          href = "mailto:agcur@rogers.com",
          img(src = "images/email25pc.jpg")
        ),
        a(
          class = "addpad2",
          href = "https://github.com/pssguy",
          target = "_blank",
          img(src = "images/GitHub-Mark30px.png")
        ),
        a(
          href = "https://rpubs.com/pssguy",
          target = "_blank",
          img(src = "images/RPubs25px.png")
        )
      )
    )
  ),
  
  dashboardBody(tabItems(
    tabItem("example",
            h2("All Output would be shown here")),
    tabItem("info", includeMarkdown("info.md"))
  ))
  
  
)
