# Practice: Apply Family Functions in R

# --- lapply() with built-in functions ---
nums <- list(a = 1:5, b = 6:10, c = 11:15)
lapply(nums, mean)

# --- lapply() with custom function ---
square_elements <- function(x) {
  x^2
}
lapply(nums, square_elements)

# --- lapply() with anonymous function ---
lapply(nums, function(x) sum(x) / length(x))  # same as mean

# --- lapply() with additional arguments ---
multiply_by <- function(x, factor) {
  x * factor
}
lapply(nums, multiply_by, factor = 3)

# --- Handling NULLs in lapply() ---
with_nulls <- list(a = 1:3, b = NULL, c = 4:6)
lapply(with_nulls, function(x) if (!is.null(x)) sum(x))

# --- sapply() and simplification ---
sapply(nums, mean)  # Returns a named numeric vector

# --- sapply() with function that returns vector ---
sapply(nums, function(x) c(min = min(x), max = max(x)))

# --- sapply() when simplification fails ---
messy <- list(a = 1:3, b = matrix(1:4, nrow = 2))
sapply(messy, dim)  # Won't simplify nicely

# --- vapply() with explicit output type ---
vapply(nums, mean, numeric(1))  # Safer than sapply

# --- vapply() with vector return ---
vapply(nums, function(x) c(min = min(x), max = max(x)), numeric(2))
