# Practice: Filter, Arrange, Mutate with dplyr and gapminder

# Load packages
library(gapminder)
library(dplyr)

# View structure of the data
str(gapminder)

# --- FILTER ---
# Filter for data from the year 2007
gap_2007 <- gapminder %>%
  filter(year == 2007)

# Filter for Rwanda in 2007
rwanda_2007 <- gapminder %>%
  filter(country == "Rwanda", year == 2007)

# --- ARRANGE ---
# Arrange by life expectancy (ascending)
gap_2007 %>%
  arrange(lifeExp)

# Arrange by life expectancy (descending)
gap_2007 %>%
  arrange(desc(lifeExp))

# --- MUTATE ---
# Add a new column: GDP (gdpPercap * pop)
gap_2007 <- gap_2007 %>%
  mutate(gdp = gdpPercap * pop)

# --- COMBINE VERBS ---
# Filter, create new column, and sort
gapminder %>%
  filter(year == 2007) %>%
  mutate(gdp = gdpPercap * pop) %>%
  arrange(desc(gdp))
