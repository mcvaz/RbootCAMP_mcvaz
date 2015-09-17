---
title: "Bootcamp Exercise 1"
author: "M. Vaz"
date: "Wednesday, September 16, 2015"
output: html_document
---

### 1) Write a for loop statement so that it runs from 1:9 and prints the following output to your screen
```{r}
for(i in 1:9){if(i==9){cat('*')}else{cat('\n')}}
```

### 2) Modify your for loop so that it prints 10 asterisks, with each asterisk separated by exactly one ampersand sign (&), with no spaces or new line characters.
```{r}
for(i in 1:9){if(i==9){cat('*')}else{cat('*&')}}
```

### 3) by hand, figure out the initial values of these variables and values at the the start and end of each iteration of the loop
```{r}
#initial dogs = 10; final dogs = 15
#i=1 -> d=10+1=11
#i=2 -> d=11+1=12
#i=3 -> d=12+1=13
#i=4 -> d=13+1=14
#i=5 -> d=14+1=15

#initial meatloaf = 0; final meatloaf = -30
#i=5 -> m=0-5+1=-4
#i=6 -> m=-4-5+1=-9
#i=7 -> m=-9-7+1=-15
#i=8 -> m=-15-8+1=-22
#i=9 -> m=-22-9+1=-30

#initial bubbles = 12; final bubbles = 
#i=-1 -> b=-1
#i=-2 -> b=-2
#i=-3 -> b=-3
#i=-4 -> b=-4
```

### 4) modify this code so that it will print out a message during presidential as well as congressional election years
```{r}
years <- c( 2015, 2016, 2018, 2020, 2021)
for(ii in 1:length(years)){
  if(years[ii] %% 2 == 0){
    cat(years[ii], 'Hooray, congressional elections!', sep = '\t', fill = T)
  } 
  if(years[ii] %% 4 == 0){
    cat(years[ii], 'Presidential elections!', sep = '\t', fill = T)
  } 
}
```

### 5) More fun with loops. Here are the bank accounts from seven randomly selected UCLA grad students
```{r}
bankAccounts <- c(10, 9.2, 5.6, 3.7, 8.8, 0.5);
interestRate <- 0.0125;
compounded = numeric()
for (i in 1:length(bankAccounts)) {
  compounded[i] <- interestRate*bankAccounts[i] + bankAccounts[i]; }
compounded
```

### 6) Go back to the compounded interest example. Suppose we now want to compound the interest annually, but across a period of 5 years. The for loop we discussed earlier only compounds for a single year.
```{r}
bankAccounts <- c(10, 9.2, 5.6); #define bank accounts here
interestRate <- 0.0525;   
house <- c(4.8, 3.8, 5.7); #deduct
food<- c(3.5, 4.3, 5.0);    #deduct
fun <- c(7.8, 2.1, 10.5);  #deduct
#and incomes (through TAships) of 
income <- c(21, 21, 21); #add this

balance = matrix(NA,ncol=length(bankAccounts),nrow=6)
balance[1,] = bankAccounts
for(i in 1:5){
  intbal = balance[i,]-house-food-fun+income
  balance[i+1,] = intbal*interestRate + intbal
  }
balance
```

### 
```{r}

```

### 
```{r}

```
### 
```{r}

```

### 
```{r}

```
