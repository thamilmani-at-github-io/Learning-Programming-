# Define a function to create a 4x4 matrix
create_matrix <- function() {
  matrix(sample(1:10, 16, replace=FALSE), nrow=4, ncol=4)
}

# Define functions for mathematical operations
matrix_addition <- function(A, B) {
  return(A + B)
}

matrix_subtraction <- function(A, B) {
  return(A - B)
}

matrix_multiplication <- function(A, B) {
  return(A %*% B)  # Matrix multiplication
}

matrix_division <- function(A, B) {
  return(A / B)  # Element-wise division (avoiding zero division)
}

# Create two 4x4 matrices
matrix1 <- create_matrix()
matrix2 <- create_matrix()

# Apply operations
cat("Matrix 1:\n")
print(matrix1)

cat("\nMatrix 2:\n")
print(matrix2)

cat("\nAddition:\n")
print(matrix_addition(matrix1, matrix2))

cat("\nSubtraction:\n")
print(matrix_subtraction(matrix1, matrix2))

cat("\nMultiplication:\n")
print(matrix_multiplication(matrix1, matrix2))

cat("\nDivision:\n")
print(matrix_division(matrix1, matrix2))
