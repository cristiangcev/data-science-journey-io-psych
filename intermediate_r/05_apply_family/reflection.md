# 🧠 Reflection: The Apply Family

## ✅ What I learned:
- `lapply()` applies a function over a list and always returns a list
- `sapply()` tries to simplify the result to a vector or matrix if possible
- `vapply()` is a safer version of `sapply()` — you explicitly define the output format
- You can use apply functions with built-in, custom, or anonymous functions
- They can replace many `for` loops and make code more concise

## 😅 What was tricky:
- Remembering when `sapply()` simplifies vs not
- Using `vapply()` correctly with the right `FUN.VALUE` structure
- Handling functions that return `NULL` inside lists

## 💡 I/O Psych Application:
- Clean and analyze survey responses across multiple items
- Apply scoring or transformation functions to participant-level data
- Automate operations across nested list structures (e.g., departments or teams)

## 🔁 What I want to review later:
- Writing more flexible anonymous functions
- Debugging when `sapply()` fails to simplify
- Choosing between `for` vs `lapply()` in different situations
