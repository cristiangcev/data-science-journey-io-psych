# Practice: Utilities in R

# --- Inspecting Structures ---
nums <- c(1, 2, 3)
str(nums)
typeof(nums)
summary(nums)

# --- Converting Types ---
char_nums <- as.character(nums)
as.numeric(char_nums)

# --- Regular Expressions ---
responses <- c("Strongly agree", "Agree", "Neutral", "Disagree", "Strongly disagree")

# Find responses with "Strongly"
grepl("Strongly", responses)

# Replace "Strongly " with ""
sub("Strongly ", "", responses)

# Replace all vowels with "-"
gsub("[aeiou]", "-", responses)

# --- Dates and Times ---
today <- Sys.Date()
as.Date("2025-03-01")

# Convert character to date
survey_dates <- c("2025-01-15", "2025-02-03", "2025-02-28")
survey_dates <- as.Date(survey_dates)

# Date arithmetic
survey_dates[2] - survey_dates[1]

# Formatting
format(today, "%B %d, %Y")
