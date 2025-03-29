# Practice: Loops and Control Flow

# --- WHILE LOOP ---
counter <- 1
while (counter <= 5) {
  print(paste("Counter is", counter))
  counter <- counter + 1
}

# --- WHILE + BREAK ---
x <- 1
while (TRUE) {
  if (x > 3) {
    break
  }
  print(paste("Breaking at", x))
  x <- x + 1
}

# --- FOR LOOP OVER VECTOR ---
names <- c("Alice", "Bob", "Carol")
for (name in names) {
  print(paste("Hello,", name))
}

# --- FOR LOOP OVER LIST ---
info <- list(name = "Sam", age = 30, active = TRUE)
for (item in info) {
  print(item)
}

# --- FOR LOOP OVER MATRIX ---
m <- matrix(1:9, nrow = 3)
for (i in 1:nrow(m)) {
  for (j in 1:ncol(m)) {
    print(paste("Element at [", i, ",", j, "] is", m[i, j]))
  }
}

# --- NEXT AND BREAK ---
for (i in 1:5) {
  if (i == 3) {
    next  # Skip 3
  }
  if (i == 5) {
    break  # Stop at 5
  }
  print(i)
}
