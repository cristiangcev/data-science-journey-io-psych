# Practice: Functions in R

# --- Basic Function ---
greet <- function(name) {
  paste("Hello,", name)
}
greet("Alice")

# --- Function with Default Argument ---
add_numbers <- function(x, y = 10) {
  return(x + y)
}
add_numbers(5)     # Uses default y = 10
add_numbers(5, 3)  # Overrides default

# --- Function Returning a Value ---
square <- function(x) {
  x^2
}
square(4)

# --- Nested Functions ---
outer_function <- function(x) {
  inner_function <- function(y) {
    y * 2
  }
  result <- inner_function(x) + 1
  return(result)
}
outer_function(5)

# --- Scope Example ---
outside_var <- 100
scope_test <- function() {
  inside_var <- 50
  return(outside_var + inside_var)
}
scope_test()
