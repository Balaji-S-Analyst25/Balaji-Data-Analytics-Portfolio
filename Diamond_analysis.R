# Diamond Price Prediction using Multiple Linear Regression

# Load dataset (built-in diamonds dataset)
data("diamonds")

# View data
head(diamonds)
str(diamonds)

# -----------------------------
# 1. Basic Linear Regression
# -----------------------------
model <- lm(price ~ carat + depth + table + x + y + z, data = diamonds)

# Model summary
summary(model)

# -----------------------------
# 2. Log Transformation
# -----------------------------
model_log <- lm(log(price) ~ carat + depth + table + x + y + z, data = diamonds)

summary(model_log)

# -----------------------------
# 3. Multicollinearity Check
# -----------------------------
install.packages("car")   # run once
library(car)

vif(model)

# -----------------------------
# 4. Diagnostic Plots
# -----------------------------
par(mfrow = c(2,2))
plot(model_log)

# -----------------------------
# 5. Scatter Plot (Carat vs Price)
# -----------------------------
plot(diamonds$carat, diamonds$price,
     main = "Carat vs Price",
     xlab = "Carat",
     ylab = "Price",
     col = "blue")
