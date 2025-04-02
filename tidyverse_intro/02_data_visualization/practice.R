# Practice: Data Visualization with ggplot2 and dplyr

library(gapminder)
library(dplyr)
library(ggplot2)

# Preview the data
glimpse(gapminder)

# --- Scatter plot: Population vs GDP per capita ---
gapminder %>%
  filter(year == 2007) %>%
  ggplot(aes(x = gdpPercap, y = pop)) +
  geom_point() +
  labs(title = "Population vs GDP per Capita (2007)")

# --- Scatter plot: Life Expectancy vs Population ---
gapminder %>%
  filter(year == 2007) %>%
  ggplot(aes(x = pop, y = lifeExp)) +
  geom_point(alpha = 0.6) +
  labs(title = "Life Expectancy vs Population (2007)")

# --- Log Scales on Axes ---
gapminder %>%
  filter(year == 2007) %>%
  ggplot(aes(x = gdpPercap, y = lifeExp)) +
  geom_point(alpha = 0.6) +
  scale_x_log10() +
  labs(title = "Life Expectancy vs GDP per Capita (Log Scale)")

# --- Aesthetics: Add color and size ---
gapminder %>%
  filter(year == 2007) %>%
  ggplot(aes(x = gdpPercap, y = lifeExp, color = continent, size = pop)) +
  geom_point(alpha = 0.7) +
  scale_x_log10() +
  labs(
    title = "Life Expectancy vs GDP per Capita",
    subtitle = "Colored by continent, sized by population (2007)"
  )

# --- Faceting by continent ---
gapminder %>%
  filter(year == 2007) %>%
  ggplot(aes(x = gdpPercap, y = lifeExp)) +
  geom_point(alpha = 0.6) +
  scale_x_log10() +
  facet_wrap(~ continent) +
  labs(title = "Faceted by Continent (2007)")

# --- Faceting by year (smaller subset for demo) ---
gapminder %>%
  filter(country %in% c("China", "United States", "India")) %>%
  ggplot(aes(x = year, y = lifeExp, color = country)) +
  geom_line(size = 1.2) +
  labs(title = "Life Expectancy Over Time", subtitle = "Selected Countries")
