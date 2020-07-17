library(shiny)
library(bs4Dash)
source('package.R')
source('data_source.R')

bs4DashPage(
    navbar = bs4DashNavbar(),
    sidebar = bs4DashSidebar(title = "Covid 19 tracker",skin = "light",
        bs4SidebarMenu(
            id = "sidebarMenu",
            bs4SidebarMenuItem(
                text = "Home",
                tabName = "home"
            ),
            bs4SidebarMenuItem(
                text = "Analytics",
                tabName = "analytics"
            )
        )),
    body = bs4DashBody(bs4TabItems(
        
        # Home Tab
        bs4TabItem(tabName = "home",fluidRow(
                
                bs4ValueBoxOutput("global_totalcase"),
                bs4ValueBoxOutput("global_recovered"),
                bs4ValueBoxOutput("global_death")),
            fluidRow(
                bs4TabCard(width = 12,
                    id = "global_map",
                    bs4TabPanel(
                        tabName = "Global Total Case",
                        active = TRUE,
                        "global_totalcase_map"
                    ),
                    bs4TabPanel(
                        tabName = "Global Recovered Case",
                        active = FALSE,
                        "global_recoveredcase_map"
                    ),
                    bs4TabPanel(
                        tabName = "Global Death Case",
                        active = FALSE,
                        "global_deathcase_map"
                    )
                )
            ),
            fluidRow(bs4Card(title = "",
                             closable = FALSE,
                             collapsible = FALSE,
                             dataTableOutput("global_case_table")))),
        
        # Analytics Tab
        
        bs4TabItem(tabName = "analytics",
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
