numbers <- c(1,2,3,4,5,6,7)
print(numbers)
sort(numbers)
sort(numbers, decreasing = TRUE)
new_vec <- 7:21
 
new_vec[3]
print(new_vec)
new_vec[-2]
new_vec[-c(1,2,3,4,5)]
new_vec[-1:5]
new_vec[-c(1:9)]


vec_2 <- 1:4
vec_2 <=3
vec_2 << 3
vec_2 <3
vec_2 !=5

vec_2[vec_2<3]


character_vec <- c("Ceren", "Kerem","Sabire")
print(character_vec)



df <- data.frame(
  age=c(1,2,3,5),
  height=c(161, 172, 156, 189)
)
print(df)


df['age']
df['height']



data("Income")
data(state.x77)
data()
print(nottem)
print(PlantGrowth)


var <- as.data.frame(state.name)
print(var)
View(state.x77)

head(state.x77)

tail(state.x77)

str(state.center)
str(state.x77
    )

str(state.region)
structure(state.x77)


str(state.x77)

summary(state.x77)
sum(state.x77)


x <- 1:5
y <- x^2

plot(x,y,
  xlab = "x ekseni",
  ylab = "y ekseni"
)



x <- c(0,20,by = 4)

y <- 1:6

plot( x, y, 
      xlab = "yaş",
      ylab = "boy"
      )
print(x)
x <- c(0, 20, by=4)
print(x)


x <- 1:4
y <- 12:15

plot(x,y,
       xlab = "x ekseni",
       ylab = "y ekseni"
       )


x <- c(1,20, by=3)
print(x)
x

y <- x*3

plot(x,y,
     xlab = "x ekseni",
    ylab = "y ekseni")


teams <- c("a","b", "c","d")
scores <- c(100:200, length(teams))
print(scores)

scores <- sample(100:200, length(teams))
print(scores)
scores
scores <- sample(100:200, length(teams))
print(scores)


barplot(scores,
        main = "scores",
        xlab = "teams",
        ylab = "scores",
        col = "pink",
        border = "blue",
        names.arg = "asdfg",
)
        
# exercises.............


#1

days <- c("tuesday","wednesday","thursday","friday","saturday","sunday","monday")
vec <- rep(days, 9000)
vec
vec[c(9, 54, 306,8999)]




#2


vec <- 1:100
vec[ vec %% 3 == 0 | vec %% 5 == 0]



#3

measurement_days <- 1:365
measurement_days[measurement_days %% 5 == 0]


#hw.....


?rnorm()


vec <- rnorm(50, mean = 20, sd = 2)
sample(vec)


?sample()

sample(vec, 10)




?rnorm()
rnorm(10, mean=20, sd=2)
rnorm(10, mean=20, sd=2)
round().  # yuvarlar



#2...........
View(studentdata)

print(studentdata)
var <- studentdata
VAR
var
var_1 <- var$Gender
var_2 <- var_1 == "female"
length(var_2 == TRUE)



#NUMBER OF FEMALES.....
studentdata
column <- studentdata$Gender
column
x <- c(1,2,3)
length(x)
column
var <- column == "female"
var
length(var == TRUE)
length(studentdata)
studentdata
View(studentdata)




#install.packages()    paket yükleme, indirdikten sonra paketi sil
library(LearnBayes)
View(studentdata)

df <- studentdata
dim(df).    # datanın büyüklüğünü gösterir

sum(is.na(df))    # is.na boş gözlemi gösterir, sum sayısını gösterir

df <- na.omit(df).   # boş gözlemleri çıkarrtı
dim(df)

#1......kadın sayısı
gender <- df$Gender
gender

length(gender[ gender == "female"])


#vektörün uzunluğu : length()
# data frame uzunluğu: nrow(). ncol()
dim(df)


plot(df$Gender,df$Height)       #tablo



install.packages("readr")
library(readr)
df_covid <- read_csv("http://kelesonur.github.io/compec-r/covid_sayi.csv")
head(df_covid)

View(df_covid)

daily_death <- df_covid$gunluk_olum
daily_death



#Q1.........

boxplot(df_covid$tarih ~ df_covid$gunluk_olum)
# ~. option + ü

boxplot(df_covid$gunluk_olum ~ df_covid$tarih)


sum(df_covid$toplam_vaka)
df_covid$toplam_vaka

df_covid[df_covid$tarih == "2020-07-20",]



filter(df_covid, tarih == "2020-07-20")
library(dplyr)


yeni_df <- filter(df_covid, tarih > "2020-07-20")

boxplot(yeni_df$gunluk_test ~yeni_df$tarih)



#afganistam.....

install.packages("gapminder")
library(gapminder)
View(gapminder)

gapminder


df <- gapminder


filter(df, country == "Turkey", year == "1952")
filter(df, year > 2002)
select(df, year)
küçük_df <- select(df, country, lifeExp)


nex_df <- rename(df, Country = country)

#mutate()   veriyi değiştirir


df <- mutate(df, pop_million = pop / 1000000)
View(df)

#istall yaptık sildik paketi
library(magrittr)


#comman+ shift+ m = %>%     pipe işareti solundaki


df %>% filter(country == "Turkey" & year == 2007) %>% select(pop)
library(dplyr)


