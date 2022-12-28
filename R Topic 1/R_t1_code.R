#R is a calculator
x <- 40
y <- c(6.2, 4.9, 1.1)
2*x
sum(y)
x^2
x^0.5
sqrt(x)
y[2]
y[1]

#### YOUR TURN 

#$a = \begin{bmatrix} 2 & 4 & 6 &5\end{bmatrix}$ and $b = \begin{bmatrix} 2.2 & 4.5 & 7.2& 4.9 \end{bmatrix}$
a <- c(2,4,6,5)
b <- c(2.2, 4.5, 7.2, 4.9)
sum((a-b)^2)/4
#thus, the mean squared difference between a and b is 0.435. Alternatively,
mean((a-b)^2)


#### ACTIVITY 

#1. Calculate the mean of `a` and save it as `mean_a`
mean_a <-  mean(a)
mean_a
#2. Calculate the mean of `b` and save it as `mean_b`
mean_b <- mean(b)
mean_b
#3. Create a new variable `is_a_bigger` which is TRUE if `a` is bigger than `b`, on average, and FALSE otherwise
is_mean_a_bigger <- mean_a > mean_b
#4. Create a new vector, the same length as `a` and `b`, for which the $i^{th}$ element is TRUE if $a_i > b_i$, and FALSE otherwise. 
is_a_bigger <- a > b


sqrt(x)
sqrt(y)

mean(y)


?seq
#how would I generate a vector containing a sequence
#of 10 evenly spaced numbers ranging from 1 to 200?
seq(from = 1, to = 200, length = 10)
