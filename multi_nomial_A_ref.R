
d1$Species1 <- relevel(d1$Species, ref = "A")

test_A<- multinom( Species1 ~ humidity_month + temperature_month, data = d1)

z_A<- summary(test_A)$coefficients/summary(test_A)$standard.errors

p_value_A<-pnorm(abs(z_A), lower.tail = F)*2

summary(test_A)
p_value_A
exp(coef(test_A))