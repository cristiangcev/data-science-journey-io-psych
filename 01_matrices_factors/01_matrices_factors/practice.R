# Practice: Matrices & Factors in R

# --- Matrices ---
# Create a numeric matrix
scores <- matrix(c(85, 90, 88, 92, 76, 84), nrow = 2, byrow = TRUE)
colnames(scores) <- c("Test1", "Test2", "Test3")
rownames(scores) <- c("Student1", "Student2")
print(scores)

# Access specific values
scores[1, 2]   # Test2 score for Student1
scores[, 3]    # All scores for Test3

# --- Factors ---
# Survey responses: "Agree", "Neutral", "Disagree"
responses <- c("Agree", "Disagree", "Neutral", "Agree", "Neutral")
responses_factor <- factor(responses, levels = c("Disagree", "Neutral", "Agree"), ordered = TRUE)
print(responses_factor)

# Summary of factor levels
summary(responses_factor)

# Convert factor to numeric
as.numeric(responses_factor)
