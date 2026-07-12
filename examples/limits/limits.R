library(tidyverse)

# Create a scatterplot of miles per gallon (mpg) vs.
# displacement (disp) in mtcars, and overlay the regression
# line for predicting mpg from disp.

ggplot(mtcars, aes(x = disp, y = mpg)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE)

# Now limit to cars with displacement below 200.

mtcars |>
  filter(disp < 200) |>
  ggplot(aes(x = disp, y = mpg)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE)

#

ggplot(mtcars, aes(x = disp, y = mpg)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  coord_cartesian(xlim = c(60, 200))

ggplot(mtcars, aes(x = disp, y = mpg)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  xlim(60, 200)

ggplot(mtcars, aes(x = disp, y = mpg)) +
  geom_point() +
  geom_point(data = mtcars |> filter(disp < 200), color = "#FE8042") +
  geom_smooth(method = "lm", se = FALSE) +
  geom_smooth(
    data = mtcars |> filter(disp < 200),
    method = "lm",
    se = FALSE,
    color = "#D9418C"
  )
