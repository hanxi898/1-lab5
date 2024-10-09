library(shiny)
library(httr)
library(jsonlite)
library(ggplot2)

# 定义 UI
ui <- fluidPage(
  titlePanel("Kolada KPI Data Analysis"),
  sidebarLayout(
    sidebarPanel(
      selectInput("year", "KPI:", 
                  choices = c(2021,2022,2023)), # 年份选择器
      actionButton("load", "loading") # 加载数据的按钮
    ),
    mainPanel(
      plotOutput("kpiPlot") # 绘图输出
    )
  )
)

# 定义 Server
server <- function(input, output, session) {
  # 获取数据函数
  get_kpi_data <- function() {
    url <- "https://api.kolada.se/v2/data/kpi/N00945/year/2021"
    response <- GET(url)
    data <- fromJSON(content(response, as = "text"), flatten = TRUE)
    return(data)
  }
  
  # 在加载数据后更新年份选择器
  observeEvent(input$load, {
    data <- get_kpi_data()
    # 假设数据中有 "year" 列
    updateSelectInput(session, "year", choices = unique(data$year))
  })
  
  # 生成图表
  output$kpiPlot <- renderPlot({
    req(input$year) # 确保选择了年份
    data <- get_kpi_data()
    filtered_data <- data[data$year == input$year, ]
    
    ggplot(filtered_data, aes(x = municipality, y = value)) +
      geom_bar(stat = "identity") +
      labs(title = paste("KPI Data for Year", input$year),
           x = "Municipality",
           y = "Value") +
      theme(axis.text.x = element_text(angle = 45, hjust = 1))
  })
}

# 运行应用
shinyApp(ui = ui, server = server)
