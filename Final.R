install.packages("wooldridge")
library("wooldridge")
library(car)
summary(attend)

scatterplotMatrix (~atndrte + priGPA + ACT,
                   data=attend)

attend.lm <- lm(atndrte ~ priGPA + ACT, data = attend)
summary(attend.lm)

library(dplyr)
library(haven)
beauty <- read_dta("C:/Users/yigit/Downloads/beauty.dta")
View(beauty)

women.b <-
beauty %>%
  filter(beauty == 1, female == 1) %>%
  print(n = 3)

summary(women.b)


men.b <-
  beauty %>%
  filter(beauty == 1, female == 0) %>%
  print(n = 3)

summary(men.b)

ugly <-
  beauty %>%
  filter(beauty < 1) %>%
  print(n = 3)

summary(ugly)

beauty %>% mutate(women.b)


boxplot(wage~woman.b, 
        data = beauty)



data.women <- 
  beauty %>%
  filter(female == 1) %>%
  print(n = 3)

data.men <-
  beauty %>%
  filter(female == 0) %>%
  print(n = 3)

women.lm <- lm(lwage~belavg + abvavg, data = data.women)
summary(women.lm)

men.lm  <- lm(lwage~belavg + abvavg, data = data.men)
summary(men.lm)


women.lm1 <- lm(lwage~belavg + abvavg + educ+exper+expersq, data = data.women)
summary(women.lm1)

men.lm1  <- lm(lwage~belavg + abvavg+ educ+exper+expersq, data = data.men)
summary(men.lm1)




