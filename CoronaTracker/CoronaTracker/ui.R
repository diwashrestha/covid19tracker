library(shiny)
library(bs4Dash)


bs4DashPage(
    navbar = bs4DashNavbar(),
    sidebar = bs4DashSidebar(title = "Covid 19 tracker",skin = "light",
        bs4SidebarMenu(
            id = "sidebarMenu",
            bs4SidebarMenuItem(
                text = "Tab 1",
                tabName = "tab1"
            ),
            bs4SidebarMenuItem(
                text = "Tab 2",
                tabName = "tab2"
            )
        )),
    body = bs4DashBody(bs4TabItems(
        bs4TabItem(
            tabName = "tab1",fluidRow(
                
                bs4ValueBox(
                    value = 13788540,
                    subtitle = "Total Case",
                    status = "primary",
                    icon = "shopping-cart"
                ),
                bs4ValueBox(
                    value = "588,820",
                    subtitle = "Deaths",
                    status = "danger",
                    icon = "cogs"
                ),
                bs4ValueBox(
                    value = "8,193,447",
                    subtitle = "Recovered",
                    status = "success",
                    icon = "sliders"
                ))
        ),
        bs4TabItem(tabName = "tab2",
                   fluidRow(
                       bs4Card(closable = FALSE,collapsible = FALSE,title = "Global Map",sliderInput("worldCaseMap","Number of observations:", 1, 100, 50)),
                       
                       bs4Card(closable = FALSE,collapsible = FALSE,
                               title = "List of Virus Infected Country",
                               sliderInput("slider", "Number of observations:", 1, 100, 50)
                       )
                   ))
    )
)
)
