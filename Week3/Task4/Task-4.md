---
title: 'Task #4'
author: "Blayne Chapman"
date: "2022-10-05"
output:
  html_document:
    keep_md: true
    
---
### Task 4 using DPLYR

## Load data and packages 

```r
#Packages
library(tidyverse)
```

```
## ── Attaching packages ─────────────────────────────────────── tidyverse 1.3.2 ──
## ✔ ggplot2 3.3.6      ✔ purrr   0.3.4 
## ✔ tibble  3.1.8      ✔ dplyr   1.0.10
## ✔ tidyr   1.2.1      ✔ stringr 1.4.1 
## ✔ readr   2.1.2      ✔ forcats 0.5.2 
## ── Conflicts ────────────────────────────────────────── tidyverse_conflicts() ──
## ✖ dplyr::filter() masks stats::filter()
## ✖ dplyr::lag()    masks stats::lag()
```

```r
#look at our iris data 
str(iris)
head(iris)
tail(iris)
```

## Covert Iris data to a tible

```r
iris_data <- as_tibble(iris)
head(iris_data)
```

```
## # A tibble: 6 × 5
##   Sepal.Length Sepal.Width Petal.Length Petal.Width Species
##          <dbl>       <dbl>        <dbl>       <dbl> <fct>  
## 1          5.1         3.5          1.4         0.2 setosa 
## 2          4.9         3            1.4         0.2 setosa 
## 3          4.7         3.2          1.3         0.2 setosa 
## 4          4.6         3.1          1.5         0.2 setosa 
## 5          5           3.6          1.4         0.2 setosa 
## 6          5.4         3.9          1.7         0.4 setosa
```

## Arrange the iris data by Sepal.Length and display the first ten rows.

```
## # A tibble: 150 × 5
##    Sepal.Length Sepal.Width Petal.Length Petal.Width Species  
##           <dbl>       <dbl>        <dbl>       <dbl> <fct>    
##  1          7.9         3.8          6.4         2   virginica
##  2          7.7         3.8          6.7         2.2 virginica
##  3          7.7         2.6          6.9         2.3 virginica
##  4          7.7         2.8          6.7         2   virginica
##  5          7.7         3            6.1         2.3 virginica
##  6          7.6         3            6.6         2.1 virginica
##  7          7.4         2.8          6.1         1.9 virginica
##  8          7.3         2.9          6.3         1.8 virginica
##  9          7.2         3.6          6.1         2.5 virginica
## 10          7.2         3.2          6           1.8 virginica
## # … with 140 more rows
```

```
## # A tibble: 6 × 5
##   Sepal.Length Sepal.Width Petal.Length Petal.Width Species
##          <dbl>       <dbl>        <dbl>       <dbl> <fct>  
## 1          5.1         3.5          1.4         0.2 setosa 
## 2          4.9         3            1.4         0.2 setosa 
## 3          4.7         3.2          1.3         0.2 setosa 
## 4          4.6         3.1          1.5         0.2 setosa 
## 5          5           3.6          1.4         0.2 setosa 
## 6          5.4         3.9          1.7         0.4 setosa
```

## Select the Species and Petal.Width columns and put them into a new data set called testdat.

```
##   Petal.Length Species
## 1          1.4  setosa
## 2          1.4  setosa
## 3          1.3  setosa
## 4          1.5  setosa
## 5          1.4  setosa
## 6          1.7  setosa
```

```
##     Petal.Length   Species
## 145          5.7 virginica
## 146          5.2 virginica
## 147          5.0 virginica
## 148          5.2 virginica
## 149          5.4 virginica
## 150          5.1 virginica
```

## Create a new table called species_mean that has the mean for each variable for each Species.

```
## # A tibble: 3 × 5
##   Species    Sepal.Length Sepal.Width Petal.Length Petal.Width
##   <fct>             <dbl>       <dbl>        <dbl>       <dbl>
## 1 setosa             5.01        3.43         1.46       0.246
## 2 versicolor         5.94        2.77         4.26       1.33 
## 3 virginica          6.59        2.97         5.55       2.03
```

## Create a data frame called iris_min with only the observations with at least 3 for Sepal.Width and not 2.5 for Petal.Width.

```
##   Sepal.Length Sepal.Width Petal.Length Petal.Width Species
## 1          5.1         3.5          1.4         0.2  setosa
## 2          4.9         3.0          1.4         0.2  setosa
## 3          4.7         3.2          1.3         0.2  setosa
## 4          4.6         3.1          1.5         0.2  setosa
## 5          5.0         3.6          1.4         0.2  setosa
## 6          5.4         3.9          1.7         0.4  setosa
```

## Create a data frame called iris_size with a column Sepal.Size which is, small if Sepal.Length  5, medium if Sepal.Length  5 and  6.5, large if Sepal.Length  6.5.

```
##   Sepal.Length Sepal.Width Petal.Length Petal.Width Species Sepal.Size
## 1          5.1         3.5          1.4         0.2  setosa      small
## 2          4.9         3.0          1.4         0.2  setosa      Large
## 3          4.7         3.2          1.3         0.2  setosa      Large
## 4          4.6         3.1          1.5         0.2  setosa      Large
## 5          5.0         3.6          1.4         0.2  setosa      small
## 6          5.4         3.9          1.7         0.4  setosa      small
```

## Create a data frame called iris_rank which ranks all of the data by Petal.Length, where a ranking of 1 is the largest Petal.Length and order by ranking.

```
##   Sepal.Length Sepal.Width Petal.Length Petal.Width   Species
## 1          7.7         2.6          6.9         2.3 virginica
## 2          7.7         3.8          6.7         2.2 virginica
## 3          7.7         2.8          6.7         2.0 virginica
## 4          7.6         3.0          6.6         2.1 virginica
## 5          7.9         3.8          6.4         2.0 virginica
## 6          7.3         2.9          6.3         1.8 virginica
```

```
##     Sepal.Length Sepal.Width Petal.Length Petal.Width Species
## 145          4.5         2.3          1.3         0.3  setosa
## 146          4.4         3.2          1.3         0.2  setosa
## 147          5.8         4.0          1.2         0.2  setosa
## 148          5.0         3.2          1.2         0.2  setosa
## 149          4.3         3.0          1.1         0.1  setosa
## 150          4.6         3.6          1.0         0.2  setosa
```

## Read about the ?summarize_all() function and get a new table with the means and standard deviations for each species.

```
## starting httpd help server ... done
```

```
## # A tibble: 3 × 9
##   Species    mean(Sepa…¹ mean(…² mean(…³ mean(…⁴ sd(Se…⁵ sd(Se…⁶ sd(Pe…⁷ sd(Pe…⁸
##   <fct>            <dbl>   <dbl>   <dbl>   <dbl>   <dbl>   <dbl>   <dbl>   <dbl>
## 1 setosa            5.01    3.43    1.46   0.246   0.352   0.379   0.174   0.105
## 2 versicolor        5.94    2.77    4.26   1.33    0.516   0.314   0.470   0.198
## 3 virginica         6.59    2.97    5.55   2.03    0.636   0.322   0.552   0.275
## # … with abbreviated variable names ¹​`mean(Sepal.Length)`,
## #   ²​`mean(Sepal.Width)`, ³​`mean(Petal.Length)`, ⁴​`mean(Petal.Width)`,
## #   ⁵​`sd(Sepal.Length)`, ⁶​`sd(Sepal.Width)`, ⁷​`sd(Petal.Length)`,
## #   ⁸​`sd(Petal.Width)`
```

## Develop a novel Question that data can answer.
# Does hunting have any affects on animal populations, that being negative or positive.
Answer: I asked my friends aging from 18-28, the overal break down of what they all said there are hunting season to make sure certain animals are not hunted year round, also they said the total number of hunters has decreased due to food availability in grocery stores 

According to online since 1990 there has a small but much noticeable drop in hunters this is notice by the hunting liscense sold in each state.
According to one of the mentors who owns a guiding business and deals with tally up how many animals are harvested at his camp, 
Hunter over the year can only affect animal populations by 5-10 percent he does mostly waterfowl which since there number are so high they are sub 5% for total population affected by hunters.

