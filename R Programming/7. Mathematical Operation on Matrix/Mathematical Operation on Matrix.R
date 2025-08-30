
create_matrix <- function() {
  matrix(sample(1:10, 16, replace=TRUE), nrow=4, ncol=4)
}

matrix_addition <- function(A, B) {
  return(A + B)
}

matrix_subtraction <- function(A, B) {
  return(A - B)
}

matrix_multiplication <- function(A, B) {
  return(A %*% B) 
}

matrix_division <- function(A, B) {
  return(A / B) 
}

matrix1 <- create_matrix()
matrix2 <- create_matrix()

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
