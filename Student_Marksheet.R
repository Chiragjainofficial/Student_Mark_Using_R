# Install package (run only once)
install.packages("readxl")

# Import library
library(readxl)

# Import dataset
data <- read_excel("Student_Marksheet.xlsx", skip = 3)

# Convert Gender into factor
data$Gender <- as.factor(data$Gender)

# Calculate minimum marks
min_marks <- aggregate(Marks ~ Gender, data, min)

# Calculate maximum marks
max_marks <- aggregate(Marks ~ Gender, data, max)

# Calculate average marks
avg_marks <- aggregate(Marks ~ Gender, data, mean)

# Display results
print("Minimum Marks:")
print(min_marks)

print("Maximum Marks:")
print(max_marks)

print("Average Marks:")
print(avg_marks)
