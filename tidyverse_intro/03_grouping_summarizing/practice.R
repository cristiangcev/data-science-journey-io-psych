# Practice: Grouping and Summarizing with dplyr and ggplot2

library(gapminder)
library(dplyr)
library(ggplot2)

# --- Basic summarize ---
gapminder %>%
  summarize(median_lifeExp = median(lifeExp))

# Summarize for 1957
gapminder %>%
  filter(year == 1957) %>%
  summarize(
    median_lifeExp = median(lifeExp),
    median_gdpPercap = median(gdpPercap)
  )

# --- Group by year ---
gapminder %>%
  group_by(year) %>%
  summarize(median_lifeExp = median(lifeExp))

# --- Group by continent ---
gapminder %>%
  group_by(continent) %>%
  summarize(median_gdpPercap = median(gdpPercap))

# --- Group by continent and year ---
gap_summary <- gapminder %>%
  group_by(continent, year) %>%
  summarize(
    median_lifeExp = median(lifeExp),
    median_gdpPercap = median(gdpPercap),
    .groups = "drop"
  )

# --- Visualize median life expectancy over time ---
gap_summary %>%
  ggplot(aes(x = year, y = median_lifeExp, color = continent)) +
  geom_line() +
  labs(title = "Median Life Expectancy Over Time by Continent")

# --- Visualize GDP per capita over time ---
gap_summary %>%
  ggplot(aes(x = year, y = median_gdpPercap, color = continent)) +
  geom_line() +
  scale_y_log10() +
  labs(title = "Median GDP per Capita Over Time by Continent")

# --- 2007 Comparison: GDP vs Life Expectancy ---
gap_summary %>%
  filter(year == 2007) %>%
  ggplot(aes(x = median_gdpPercap, y = median_lifeExp, label = continent)) +
  geom_point(size = 4) +
  geom_text(vjust = -0.5) +
  scale_x_log10() +
  labs(title = "Continent-level Summary (2007)")
