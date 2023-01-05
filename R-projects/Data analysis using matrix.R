#3.1 Vector 

#1: Create the following vector x=(1:2 2:3 0:2 1:1)

x=c(1.2,2.3,0.2,1.1)
x

#2: Check the class of the vector using the class() function.
class(x)

#3: Output the second element of the vector.
x[2]

#4:Output the elements 2 and 3 of the vector 
x[c(2,3)]

#5: Replace the value of the first element of the vector.
x[1]=2
x

#6: Select all elements where the value is greater than 2.
x_updated[x_updated>2]

#7:One very helpful feature of vectors is that if we apply functions they will typically be carried out on all of the vectors. Square each value of x and assign it to a newvariable called x.squared(). 
x.squared <- x_updated ^ 2
x.squared  

#8: Append the value 5.2 to x.
x_updated=append(x,5.2)
x_updated

#9: Compute the mean value of the updated vector x and check its length.
xm = mean(x_updated, trim=0.0)
c(xm)
length(x_updated)

#10: Create a named vector containing the number of days of each month. Further,calculate the number of days in a year.
name=c(31,28,31,30,31,30,31,31,30,31,30,31)
name
total_number_ofdays=sum(c(name))
total_number_ofdays

# 3.2 Matrices

#1: Sum the values in the first row.
P=matrix(c(2,4,3,1,5,7),nrow=2,ncol=3,byrow=TRUE)
P
x=rowSums(P)
first_row_sum=x[1]
first_row_sum

#2: Sum the values in the first column.

y=colSums(P)
y
first_col_sum=y[1]
first_col_sum

#3: Specifiy names for rows (“Row1, Row”) and columns (“Col1”, “Col2”).

colnames(P) = c("Col1","Col2","Col3")
P
rownames(P) = c("Row1","Row2")
P

#4: Select the second row in the matrix p using its name (“Row2”).

row = P["Row2", ]
print(row)

#5: Remove the third column from matrix p.
P=matrix(c(2,4,3,1,5,7),nrow=2,ncol=3,byrow=TRUE)
P_updated=P[-(1),]
P_updated

#6: Add the column back again.
newcolumn=matrix(c(2,4,3),nrow=1,ncol=3)
newcolumn
P_original=cbind(newcolumn,P_updated)
P_original

#7:Create a matrix to represent the medal table

medalmatrix=matrix(c(1,2,1,7,7,4,0,2,0,1,0,1),nrow=4,ncol=3,byrow = TRUE)
medalmatrix
colnames(medalmatrix)=c("Gold","Silver","Bronze")
rownames(medalmatrix)=c("Australia","Austria","Belarus","Belgium")
medalmatrix

# 3.3 List

a =list ("a", 1, c(4 ,5 ,6))
str(a)

# 1: Return the elements 1 and 3 as a list.

b=list(a$One,a$Three)
b

# 2: Provide each element position a name (e.g., “One”, “Two”, “Three”).
names(a)=c("One","Two","Three")
str(a)

#3: Select the first and third element using their name.
print(a$One)
print(a$Three)