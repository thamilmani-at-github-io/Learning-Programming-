# Creation of DataFrame
emp.data <- data.frame(
  emp_id = c(1,2,3,4,5),
  emp_name = c("Mani","Mukesh","Hari","Dhamo","Diva"),
  emp_Salary = c(10000,10000,10000,10000,10000),
  stringsAsFactors = FALSE
)
print(emp.data)

newemp.data <- data.frame(
  emp_id = c(6,7,8),
  emp_name = c("Kavin","sandhiya","kirthika"),
  emp_Salary = c(10000,10000,10000),
  stringsAsFactors = FALSE
)
print(newemp.data)

c <- rbind(emp.data,newemp.data)
print(c)

c <- cbind(emp.data$emp_id,newemp.data$emp_id)
print(c)

#Extract specific column
result <- data.frame(emp.data$emp_id,emp.data$emp_name,emp.data$emp_Salary)
print(result)

# Extract First Top Rows : 
print(emp.data)
result <- emp.data[1:4,1:3]
print(result)

result <- emp.data[1:3,1:2]
print(result)

result <- emp.data[,1:3]
print(result)

result <- emp.data[1:3,]
print(result)

result <- emp.data[1:4,1:3]
print(result)

# Extract Specific Rows & Columns : 
result <- emp.data[c(1,3,4),c(1,3)]
print(result)

#Insert the Column in the Emp Data Frame 
emp.data$dept = c("IT","HR","Sales","Marketing","Manager")
print(emp.data)
