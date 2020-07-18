df <- read.csv('hamo.csv', sep = ',')
head(df)
str(df)
summary(df)


any(is.na(df))
df[df$fuel_cost_per_unit_burned==139358.00,]
sd(df$fuel_mmbtu_per_unit)
colnames(df)
summary(df$fuel_cost_per_unit_delivered)

df[df$fuel_cost_per_unit_delivered==7964521,]
library(e1071) 
skewness(df$fuel_qty_burned)
kurtosis(df$fuel_qty_burned)
library(Amelia)


missmap(df)
any(is.na(df))
df[df$fuel_cost_per_unit_burned== -276.08,]

library(corrplot)
num_cols <- df[,is.numeric(df)]
num_cols
cor(df[num_cols],)

colnames(df)
df1 <- df[df$fuel_type_code_pudl=='coal' & df$report_year == 1998,]
df2 <- df[df$fuel_type_code_pudl=='coal' & df$report_year == 1994,]

a1 <- sum(df1$fuel_cost_per_unit_burned)
a2 <- sum(df2$fuel_cost_per_unit_burned)

b2 <- a1 - a2
b2 / a2 * 100

df_change <- df$fuel_cost_per_unit_burned
