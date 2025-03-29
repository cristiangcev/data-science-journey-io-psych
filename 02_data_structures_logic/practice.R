# Practice: Data Frames, Lists, and Conditionals in R

# --- Data Frames ---
employees <- data.frame(
  Name = c("Alice", "Bob", "Carol"),
  Department = c("HR", "Finance", "IT"),
  Satisfaction = c(4, 2, 5)
)
print(employees)

# Access a column
employees$Satisfaction

# Reorder by Satisfaction
employees[order(employees$Satisfaction), ]

# --- Lists ---
employee_summary <- list(
  name = "Alice",
  age = 29,
  scores = c(88, 92, 95),
  isManager = TRUE
)

# Access elements
employee_summary$name
employee_summary[["scores"]]
employee_summary[3]

# --- Conditionals ---
score <- 75

if (score > 80) {
  print("High performance")
} else if (score > 60) {
  print("Satisfactory")
} else {
  print("Needs improvement")
}

# Vectorized conditional
scores <- c(55, 65, 85)
labels <- ifelse(scores > 80, "High", ifelse(scores > 60, "Mid", "Low"))
print(labels)
