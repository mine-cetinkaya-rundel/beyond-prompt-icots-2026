dat <- read.csv("poisson.csv")

fit <- glm(y ~ x1 + factor(x2), family = poisson(link = "log"), data = dat)

summary(fit)
exp(coef(fit))

# plot

poisson <- read.csv("data/poisson.csv")

ggplot(poisson, aes(x = x1, y = y, color = x2)) +
  geom_point() +
  # make background transarent
  theme(plot.background = element_rect(fill = "transparent"))
