library(tidyverse)

par(mfrow=c(2,1))
par(mfrow=c(1,1))

#----

x <- seq(0,1,length = 100)

y <- dbeta(x,2,5)
plot(x,y,type='l',lwd=2,col='blue',main='Beta Distribution (a=2, b=5)',ylab='Density',xlab='x')

tibble::tibble(x,y) |> View()

z <- sin(x)
lines(x,z,col='red',lwd=2)

#----

x <- seq(0,10,length = 1000)
z <- sin(x)

tibble::tibble(x = 1:10, z = 5, dif = x - z) %>% 
  (\(df) with(df, plot(dif ~ x, type = "l", lwd = 2, col = "red")))

lines(x,z,type='l',lwd=2,col='skyblue')

#----

sin_tib <- tibble::tibble(x = seq(0,20,length = 500),
                          sinx = sin(x),
                          diff = x - sin(x))
# sin_tib |> View()

par(mfrow =c(1,1))
# par(mfrow =c(2,1))
plot(sin_tib$x, sin_tib$y, type = "l", lwd = 2, col = "skyblue")
plot(sin_tib$x, sin_tib$diff, type = "l", lwd = 2, col = "red")
lines(sin_tib$x, sin_tib$sinx, type = "l", lwd = 2, col = "blue")
par(mfrow =c(1,1))



#----

sin_tib <- tibble::tibble(x = seq(0,20,length = 500),
                          sinx = sin(x),
                          diff = x - sin(x))

plot(sin_tib$x, sin_tib$diff, type = "l", lwd = 2, col = "red")


