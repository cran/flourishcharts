## ----setup, message=F---------------------------------------------------------
library(dplyr)
library(tidyr)
library(flourishcharts)

## -----------------------------------------------------------------------------
head(flourish_api_documentation)

## ----scatter, eval = F--------------------------------------------------------
#  scatterplot <- flourish(
#    chart_type = "scatter"
#  ) |>
#    bind_scatter_data(
#      data = gapminder,
#      x = "gdpPercap",
#      y = "lifeExp",
#      slider = "year",
#      size = "pop",
#      color = "continent",
#      metadata = c("country", "year")
#    )
#  scatterplot

## ----eval = F-----------------------------------------------------------------
#  line_data <- gapminder |>
#    filter(country %in% c(
#      "Australia",
#      "New Zealand",
#      "United States",
#      "Rwanda",
#      "Sierra Leone",
#      "Indonesia",
#      "Brazil"
#    )) |>
#    select("country", "year", "lifeExp") |>
#    pivot_wider(id_cols = "year", names_from = "country", values_from = "lifeExp")
#  
#  line_chart <- flourish(
#    chart_type = "line"
#  ) |>
#    bind_line_bar_pie_data(
#      data = line_data,
#      label = "year",
#      value = colnames(line_data[, c(2:8)])
#    ) |>
#    set_line_bar_pie_details(
#      chart_layout_title = "Life expectancy from the 1950s to 2007",
#      chart_layout_subtitle = "Selected countries include Australia, New Zealand, the US, Rwanda, Indonesia, Sierra Leone, and Brazil."
#    )
#  line_chart

## ----eval = F-----------------------------------------------------------------
#  bcr_data <- gapminder |>
#    filter(country %in% c(
#      "Australia",
#      "New Zealand",
#      "United States",
#      "Rwanda",
#      "Sierra Leone",
#      "Indonesia",
#      "Brazil"
#    )) |>
#    select(c("country", "continent", "year", "lifeExp")) |>
#    pivot_wider(id_cols = c("country", "continent"), names_from = "year", values_from = "lifeExp")
#  
#  bcr <- flourish("bar_race") |>
#    bind_bar_chart_race_data(
#      data = bcr_data,
#      label = "country",
#      values = colnames(bcr_data[, c(3:14)]),
#      category = "continent"
#    ) |>
#    set_bar_chart_race_details(
#      chart_layout_title = "Life expectancy from the 1950s to 2007",
#      chart_layout_subtitle = "Selected countries include Australia, New Zealand, the US, Rwanda, Indonesia, Sierra Leone, and Brazil."
#    )
#  bcr

