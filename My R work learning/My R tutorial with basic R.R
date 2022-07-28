#1)Write a R program to take input from the user (name and age) and display the values.
#Also print the version of R installation.
Name <- readline(prompt = "Input your Name :")
Age <- readline(prompt = "Input your Age:")
print(paste("My name is"= "Bhaskar Annapure"))
print(paste("My age is"= 60, "years old"))      
print(R.version.string)
#2)Write a R program to get the details of the objects in memory
name <-  "Python"; 
n1 <-  10; 
n2 <-   0.5
nums <-  c(10, 20, 30, 40, 50, 60)
print(ls())
print("Details of the objects in memory:")
print(ls.str())
#3)Write a R program to create a sequence of numbers from 20 to 50 and 
#find the mean of numbers from 20 to 60
#and sum of numbers from 51 to 91
sequence_of_number <- seq(20:50)
print(sequence_of_number)
Mean_number <- mean(20:60)
print(Mean_number)
Sum_of_Number <- sum(51:91)
print(Sum_of_Number)
#4)Write a R program to create a vector which 
#contains 10 random integer values between -50 and +50.
vector_Random_Number <- sample(-50:50,10,replace = TRUE)
print(vector_Random_Number)
#5)Write R programe to get the first 10 fibonacce numbers.
Fibonacce <- numeric(10)
Fibonacce[1] <- Fibonacce[2] <- 1
for (i in 3:10) Fibonacce[i] <- Fibonacce[i-2]+Fibonacce[i-1]
  print("first 10 Fibonacce numbers:")
print(Fibonacce)

len <- 10
fibonacci <- numeric(10)
fibonacci[1] <- 1
fibonacci[2] <- 2
for(i in 3:len){
  fibonacci[i] <- fibonacci[i-1]+fibonacci[i-2]
}
print(fibonacci)
#6)Write a R program to get all prime numbers up to a given number
#(based on the sieve of Eratosthenes).
prime_numbers <- function(n) {
  if (n >= 2) {
    x = seq(2, n)
    prime_nums = c()
    for (i in seq(2, n)) {
      if (any(x == i)) {
        prime_nums = c(prime_nums, i)
        x = c(x[(x %% i) != 0], i)
      }
    }
    return(prime_nums)
  }
  else 
  {
    stop("Input number should be at least 2.")
  }
} 
prime_numbers(100)
#7)Write a R program to print the numbers from 1 to 100 and print "Fizz" for multiples of 3, 
#print "Buzz" for multiples of 5, 
#and print "FizzBuzz" for multiples of both.
for (n in 1:50) {
  if (n %% 3 == 0 & n %% 5 == 0) {print("not multiples")}
  else if (n %% 3 == 0) {print("Multiple")}
  else if (n %% 5 == 0) {print("Yes Multiples")}
  else print(n)
}
#8)Write a R program to extract first 10 english letter in lower case and 
#last 10 letters in upper case and extract letters between 22nd to 24th 
#letters in upper case
t <- head(letters,10)
print(t)
t <- tail(LETTERS,10)
print(t)
print("Letters between 22nd to 24th letters in upper case:")
e <- tail(LETTERS[22:24])
print(e)
#9)Find the factor of given numbers
print.factor <- function(n){
  print(paste("The factor_numbers",n,"are:"))
  for(i in 1:n){
    if((n%%i==0)){
      print(i)
    }
  }
}
}
print.factor(4)
print.factor(6)
print.factor(100)
#10) Write a R program to find the maximum and the minimum value of a given vector
nums <- c(10,20,30,40,50,60,80,100)
print("Orignal nums Vector:")
print(nums)
print(paste("Maximum Value of the said vector:",max(nums)))
print(paste("Minimum value of the said Vector:",min(nums)))
#11) Write a R program to get the unique elements of a given string 
#and unique numbers of vector.
Name_string <- "The Quick Brwon Fox Jumps On The Lazy Dog"
print("Orignal vector(string)")
print(Name_string)
print("Unique element of the said vector")
print(unique(tolower(Name_string)))
Numbers <- c(2,4,4,4,6,6,5,7,8,8,9,10,11,11,23,24,25,23)
print("Orignal Vector(Numbers)")
print(Numbers)
print("Unique elements of the said vector:")
print(unique(Numbers))
#12 )Write a R program to create three vectors a,b,c with 3 integers. 
#Combine the three vectors to become a 3×3 matrix where each column represents a vector. 
#Print the content of the matrix
a <- c(1,2,3)
b <- c(4,5,6)
c <- c(7,8,9)
convert_matrix <- cbind(a,b,c)
print("content of the said matirx:")
print(convert_matrix)# into column matrix
convert_matrix <- rbind(a,b,c)
print(convert_matrix)
#13)Write a R program to create a list of random numbers in normal distribution and 
#count occurrences of each value
Random_numbers <- floor(rnorm(100,50,25))
print("List of random numbers in normal distribution")
print(Random_numbers)
count_of_each_value_occurance <- table(Random_numbers)
print("count occurances of each value:")
print(count_of_each_value_occurance)
#15)Write a R program to create three vectors numeric data, character data and 
#logical data. Display the content of the vectors and their type.
a = c(1, 2, 5, 3, 4, 0, -1, -3)
b = c("Red", "Green", "White")
c = c(TRUE, TRUE, TRUE, FALSE, TRUE, FALSE)
print(a)
print(typeof(a))
print(b)
print(typeof(b))
print(c)
print(typeof(c))
#16)Write a R program to create a 5 x 4 matrix , 3 x 3 matrix with 
#labels and fill the matrix by rows and 2 × 2 matrix with 
#labels and fill the matrix by columns. 
Matrix_name1 <- matrix(1:20,nrow = 5,ncol = 4)
print("5 by 5 matrix")
print(Matrix_name1)
cells <- c(1,3,5,7,8,9,11,12,14)
rnames <- c("Row1","Row2","Row3")
cnames <- c("col1","col2","col3")
Matrix_name2 <- matrix(cells,nrow = 3,ncol = 3,byrow = TRUE,dimnames = list(rnames,cnames))
print("3 by 3 matrix with lables filed by rows:")
print(Matrix_name2)
Matrix_name3 <- matrix(cells,nrow = 3,ncol = 3,byrow = FALSE,dimnames = list(rnames,cnames))
print("3 by 3 matrix with lables filed by cols:")
print(Matrix_name3)
#17. Write a R program to create an array, passing in a 
#vector of values and a vector of dimensions. 
#Also provide names for each dimension
Array_model <- array(6:30,dim =c(4,3,2),dimnames = list(
  c("Col1", "Col2", "Col3", "Col4"),
  c("Row1", "Row2", "Row3"),
  c("Part1", "Part2")
)
)
print(Array_model)
#  Write a R program to create an array with three columns, three rows, 
# and two "tables", 
# taking two  vectors as input to the array.  Print the array.
vectors1 <- c(1,3,5,7)
vectors2 <- c(2,4,6,8)
Array1 <- array(c(vectors1,vectors2),dim = c(3,3,2))
print(Array1)
# 19. Write a R program to create a list of elements using vectors, 
# matrices and a functions. Print the content of the list.
list_name = list(
  c(1, 2, 2, 5, 7, 12),  
  month.abb,
  matrix(c(3, -8, 1, -3), nrow = 2),
  asin
)
print("Content of the list:")
print(list_name)
# 20. Write a R program to draw an empty plot and an empty plot specify 
# the axes limits of the graphic
plot.new()
plot(1,type='n',xlab="Hours",ylab="Minute",xlim=c(0,20),ylim=c(0,20))
# 21. Write a R program to create a simple bar plot of five subjects marks
Marks <- c(70,80,95,84)
barplot(Marks,main="Comparing marks of four subjects",
  xlab="Marks",ylab="Subject",names=c("English", "Science", "Math.", "Hist."),
  col="darkred")
# 22. Write a R program to create  bell curve of a random normal distribution.
normal_distribution <- floor(rnorm(1000,500,100))
tabel_format <- table(normal_distribution)
barplot(tabel_format,main = "This is normal distributin chart")
# 23. Write a R program to compute sum, mean and product of a given vector elements.
Vector_number <- c(10,20,30)
print(Vector_number)
print(paste("Sum of vector elements:",sum(Vector_number)))
print(paste("Mean of the vector elements:",min(Vector_number)))
print(paste("Product of the vector elements:",prod(Vector_number)))
# 24. Write a R program to create a list of heterogeneous data, which include character, 
# numeric and logical vectors.
my_list <- list(chr="python",nums=1:15,flag=TRUE)
print(my_list)
# 25. Write a R program to create a Dataframes which contain details of 5 employees 
# and display the details.
Employees_Details = data.frame(Name=c("Anastasia S","Dima R","Katherine S", "JAMES A","LAURA MARTIN"),
                       Gender=c("M","M","F","F","M"),
                       Age=c(23,22,25,26,32),
                       Designation=c("Clerk","Manager","Exective","CEO","ASSISTANT"),
                       SSN=c("123-34-2346","123-44-779","556-24-433","123-98-987","679-77-576")
)
print("Details of the employees:")                      
print(Employees_Details)
#Summary of data frames
print(summary(Employees_Details))
# 27. Write a R program to create the system's idea of the 
# current date with and without time,
print("System's idea of the current date with and without time:")
print(Sys.Date())
print(Sys.time())
print(Sys.info())

