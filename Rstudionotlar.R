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

%>% #istall yaptık sildik paketi
library(magrittr)


#comman+ shift+ m = %>%     pipe işareti solundaki


df %>% filter(country == "Turkey" & year == 2007) %>% select(pop)
library(dplyr)



#week 3

library(car)
View(Prestige)

df <- Prestige

df <-  na.omit(Prestige)
df %>% 
  ggplot(aes(x=education, y=income)) +
  geom_point()+
  labs(x = "education", y= "income")
df %>% 
  group_by(type) %>% 
  summarise(women_perc= mean(women)) %>% 
  arrange(women_perc)

ceren <- lm(df)

kerem <- lm(income ~ education, data = df)


#4. hafta...........

mtcars
View(mtcars)
?mtcars

mtcars %>% 
  group_by(cyl) %>% 
  summarize(mean(mpg))

model <- lm(mpg ~ cyl + wt, data = mtcars)
model


library(rtweet)
library(stringr)    # for str_replace_all function (cleaning tweets)
library(dplyr)      # for data frame manipulation functions like anti_join, inner_join, count, ungroup
library(magrittr)   # for pipe operator %>%
library(ggplot2)    # for data visualization
library(readr)      # for reading data frames
library(rtweet)     # for fetching tweets
library(wordcloud)  # for creating word clouds
library(stopwords)  # for a package of stop words
#library(syuzhet)    # for sentiment analysis in English
library(xlsx)       # for Excel
library(tidyverse)



my_tweets <- read_csv("http://kelesonur.github.io/compec-r/tweets_ince.csv")
View(df)

clean_tweets <- function(x) {
  x %>%
    str_remove_all(" ?(f|ht)(tp)(s?)(://)(.*)[.|/](.*)") %>%
    str_replace_all("&amp;", "and") %>%
    str_replace("RT @[a-z,A-Z]*: ","") %>%
    str_remove_all("[[:punct:]]") %>%
    str_replace_all("@[a-z,A-Z]*","") %>%
    str_replace_all("#[a-z,A-Z]*","") %>%
    str_remove_all("^RT:? ") %>%
    str_remove_all("@[[:alnum:]]+") %>%
    str_remove_all("#[[:alnum:]]+") %>%
    str_replace_all("\\\n", " ") %>%
    str_to_lower() %>%
    str_trim("both")
}

clean_tweet = gsub("&amp", "", my_tweets$text)
clean_tweet = gsub("(RT|via)((?:\\b\\W*@\\w+)+)", "", clean_tweet)
clean_tweet = gsub("@\\w+", "", clean_tweet)
clean_tweet = gsub("[[:punct:]]", "", clean_tweet)
clean_tweet = gsub("[[:digit:]]", "", clean_tweet)
clean_tweet = gsub("http\\w+", "", clean_tweet)
clean_tweet = gsub("[ \t]{2,}", "", clean_tweet)
clean_tweet = gsub("^\\s+|\\s+$", "", clean_tweet)



my_tweets$text_clean <- clean_tweet %>% clean_tweets
my_tweets

clean_tweet


library("stopwords")

clean_tweet <- data.frame(word = stopwords::stopwords("tr", source = "stopwords-iso"), stringsAsFactors = FALSE)

head(clean_tweet)
View(clean_tweet)

library(tidytext)
library()
stop_turkish <- data.frame(word = stopwords::stopwords("tr", source = "stopwords-iso"), stringsAsFactors = FALSE)

head(stop_turkish)

tweets_clean <- my_tweets %>% 
  select(text_clean) %>% 
  unnest_tokens(word, text_clean) %>% 
  anti_join(stop_words) %>% 
  anti_join(stop_turkish)

tweets_clean %<>% rename(Word = word)

View(tweets_clean)
stop_words # hazır dataset ingilizcedeki gereksiz kelimeler

words <- tweets_clean %>%
  count(Word, sort = TRUE) %>%
  ungroup()

head(words)
View(words
     )


library(wordcloud) 
library(RColorBrewer)

wordcloud(words = words$Word, freq = words$n, min.freq = 1, max.words = 200, random.order = FALSE, rot.per = 0.35, colors = brewer.pal(8, "Dark2"))

library(readr)
http://kelesonur.github.io/compec-r/Turkish-tr-NRC-VAD-Lexicon.txt
Lexicon <- read_delim(file = "Turkish-tr-NRC-VAD-Lexicon.txt", "\t", 
                      locale = locale(date_names = "tr", encoding = "UTF-8"))

p_boxplot <- boxplot(words$Arousal, words$Valence, words$Dominance,
                     main = "Sentiment Analysis",
                     names = c("Arousal", "Valence", "Dominance"))
View(p_boxplot)





